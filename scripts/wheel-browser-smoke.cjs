// Isolated UI simulation. No real login, database, Gem debit, or bot process.
const http=require('node:http'),fs=require('node:fs'),path=require('node:path'),{spawn}=require('node:child_process'),assert=require('node:assert/strict');
const root=path.resolve(__dirname,'../src/main/resources/static'),out=path.resolve(__dirname,'../target/wheel-ui-smoke');
fs.mkdirSync(out,{recursive:true});
let game=null,received=0;
const image='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=';
const server=http.createServer(async(req,res)=>{
  const url=new URL(req.url,'http://localhost');res.setHeader('Cache-Control','no-store');
  if(url.pathname==='/api/wheel/session'){res.setHeader('Content-Type','application/json');res.end(JSON.stringify({csrf:'test',playerId:'test-player'}));return;}
  if(url.pathname.startsWith('/api/wheel/')){
    let raw='';for await(const chunk of req)raw+=chunk;const body=JSON.parse(raw||'{}'),action=url.pathname.split('/').pop();
    let result;
    if(action==='home')result={wallet:{gems:1000},games:game?[game.transactionId]:[]};
    else {
      if(action==='start'){game={transactionId:'00000000-0000-0000-0000-000000000001',mode:body.count===10?'TEN_CARDS':'SINGLE_MINES',status:'ACTIVE',gems:900,openedSafeCount:0,maximumSafeOpens:body.count===10?10:4,cells:Array.from({length:body.count===10?10:9},(_,i)=>({index:i+1,revealed:false,bomb:false,outcome:null}))};}
      if(action==='open'){const c=game.cells[body.cell-1];c.revealed=true;if(game.mode==='SINGLE_MINES'&&body.cell===4){c.bomb=true;game.status='BUST';}else{game.openedSafeCount++;c.outcome={category:'EQUIPMENT',displayName:'Thanh Phong Chiến Giáp',rarity:'COMMON',amount:1,newCharacter:false};if(game.openedSafeCount===game.maximumSafeOpens)game.status='COMPLETED';}}
      if(action==='cash')game.status='CASHED_OUT';result={game,images:{}};received++;
    }
    res.setHeader('Content-Type','application/json');res.end(JSON.stringify(result));return;
  }
  const file=path.resolve(root,'.'+url.pathname);if(!file.startsWith(root+path.sep)||!fs.existsSync(file)){res.writeHead(404);res.end();return;}
  res.setHeader('Content-Type',file.endsWith('.js')?'application/javascript':file.endsWith('.css')?'text/css':'text/html');res.end(fs.readFileSync(file));
});
let browser,socket;
(async()=>{
  await new Promise(resolve=>server.listen(0,'127.0.0.1',resolve));const origin=`http://127.0.0.1:${server.address().port}`;
  browser=spawn('C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe',['--headless=new','--disable-gpu','--no-first-run','--remote-debugging-port=0',`--user-data-dir=${path.join(out,'profile')}`,'about:blank'],{windowsHide:true,stdio:['ignore','ignore','pipe']});
  const websocket=await new Promise((resolve,reject)=>{let text='';const timer=setTimeout(()=>reject(Error('Browser startup timeout')),15000);browser.stderr.on('data',chunk=>{text+=chunk;const match=text.match(/DevTools listening on (ws:\/\/[^\s]+)/);if(match){clearTimeout(timer);resolve(match[1]);}});browser.on('error',reject);});
  socket=new WebSocket(websocket);await new Promise((resolve,reject)=>{socket.onopen=resolve;socket.onerror=reject;});let serial=0;const waiting=new Map();socket.onmessage=event=>{const message=JSON.parse(event.data);if(message.id&&waiting.has(message.id)){const done=waiting.get(message.id);waiting.delete(message.id);message.error?done.reject(Error(message.error.message)):done.resolve(message.result);}};
  function send(method,params={},sessionId){return new Promise((resolve,reject)=>{const id=++serial;waiting.set(id,{resolve,reject});socket.send(JSON.stringify({id,method,params,sessionId}));});}
  const {targetId}=await send('Target.createTarget',{url:origin+'/wheel.html'}),{sessionId}=await send('Target.attachToTarget',{targetId,flatten:true});
  const evaluate=async expression=>{const value=await send('Runtime.evaluate',{expression,awaitPromise:true,returnByValue:true},sessionId);if(value.exceptionDetails)throw Error(JSON.stringify(value.exceptionDetails));return value.result.value;};
  const until=async expression=>{for(let i=0;i<100;i++){if(await evaluate(expression))return;await new Promise(resolve=>setTimeout(resolve,50));}throw Error('UI timeout: '+expression);};
  await send('Emulation.setDeviceMetricsOverride',{width:760,height:1000,deviceScaleFactor:1,mobile:false},sessionId);
  await until("document.getElementById('single')&&!document.getElementById('controls').hidden");
  await evaluate("document.getElementById('single').click()");await until("document.querySelectorAll('#board button').length===9");
  assert.equal(await evaluate("document.querySelector('#board').textContent.includes('Phổ thông')"),false);
  for(let cell=1;cell<=3;cell++){await until(`!document.querySelectorAll('#board button')[${cell-1}].disabled`);await evaluate(`document.querySelectorAll('#board button')[${cell-1}].click()`);await until(`document.querySelectorAll('#board button:disabled').length>=${cell}`);}
  await until("!document.querySelectorAll('#board button')[3].disabled");await evaluate("document.querySelectorAll('#board button')[3].click()");await until("document.querySelector('#board .bomb')!==null");
  assert.equal(await evaluate("document.querySelectorAll('#board .lost').length"),3);
  await send('Page.captureScreenshot',{format:'png'},sessionId).then(result=>fs.writeFileSync(path.join(out,'single-bomb.png'),Buffer.from(result.data,'base64')));
  await until("!document.getElementById('ten').disabled");await evaluate("document.getElementById('ten').click()");await until("document.querySelectorAll('#board button').length===10");
  await evaluate("document.querySelectorAll('#board button')[6].click()");await until("document.querySelectorAll('#board button:disabled').length===10&&![...document.querySelectorAll('#board button')].some(card=>card.textContent.includes('Thẻ'))");
  assert.equal(await evaluate("[...document.querySelectorAll('#board button')].every(card=>card.textContent.includes('Thanh Phong'))"),true);
  await send('Page.captureScreenshot',{format:'png'},sessionId).then(result=>fs.writeFileSync(path.join(out,'ten-card.png'),Buffer.from(result.data,'base64')));
  console.log('Wheel browser simulation PASS: hidden cards, direct card click, three-reward bomb state, one click reveals all ten cards; screenshots in target/wheel-ui-smoke');
})().catch(error=>{console.error(error);process.exitCode=1;}).finally(async()=>{if(socket?.readyState===1){socket.send(JSON.stringify({id:999999,method:'Browser.close'}));await new Promise(resolve=>setTimeout(resolve,250));}socket?.close();browser?.kill();server.close();});
