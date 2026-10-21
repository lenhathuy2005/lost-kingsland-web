'use strict';
(() => {
  const $=id=>document.getElementById(id),format=n=>Number(n||0).toLocaleString('vi-VN');
  const rarity={COMMON:'Phổ thông',UNCOMMON:'Tinh luyện',RARE:'Quý hiếm',EPIC:'Sử thi',LEGENDARY:'Huyền thoại',MYTHIC:'Thần thoại',ANCIENT:'Thái cổ',DIVINE:'Thiên đạo',RELIC:'Di vật',GOD:'Chí tôn'};
  let csrf='',player='',game=null,busy=false,pending=null;
  const key=()=>`lk-wheel-pending:${player}`;
  function status(text){$('status').textContent=text;}
  function locked(value){busy=value;document.querySelectorAll('#controls button,#board button,#cash,#games').forEach(node=>node.disabled=value||node.dataset.locked==='true');}
  async function api(action,payload={}){
    const response=await fetch(`/api/wheel/${action}`,{method:'POST',credentials:'same-origin',headers:{'Content-Type':'application/json','X-Wheel-CSRF':csrf},body:JSON.stringify(payload)});
    if(!response.ok){const error=new Error(response.status===401?'Phiên đăng nhập đã hết hạn. Đăng nhập lại Discord.':response.status===503?'Cổng game chưa sẵn sàng. Liên hệ quản trị viên.':'Chưa thực hiện được. Kiểm tra Gem hoặc tải lại ván.');error.status=response.status;throw error;}
    return response.json();
  }
  async function home(){const data=await api('home');$('wallet').textContent=`Đang có ${format(data.wallet.gems)} Gem`;$('games').replaceChildren(new Option('Chọn ván gần đây',''));data.games.forEach((id,i)=>$('games').add(new Option(`Ván #${i+1}${id===game?.transactionId?' · đang xem':''}`,id)));if(game)$('games').value=game.transactionId;return data;}
  function draw(data){
    game=data.game;const images=data.images||{},board=$('board');board.replaceChildren();board.classList.toggle('ten',game.mode==='TEN_CARDS');
    $('wallet').textContent=`Đang có ${format(game.gems)} Gem`;
    const pendingRewards=game.mode==='SINGLE_MINES'&&game.status==='ACTIVE',lost=game.status==='BUST';
    status(game.message||(lost?'Trúng bom. Toàn bộ thưởng của ván đã mất.':pendingRewards?`Đã mở ${game.openedSafeCount}/4 ô. Thưởng đang giữ tạm; nhận quà để cất vào túi.`:game.status==='ACTIVE'?'Bấm trực tiếp thẻ muốn mở.':'Ván đã kết thúc.'));
    for(const cell of game.cells){
      const card=document.createElement('button');card.className='card';card.type='button';card.dataset.locked=String(cell.revealed||game.status!=='ACTIVE');card.disabled=card.dataset.locked==='true';
      card.setAttribute('aria-label',cell.revealed?`Ô ${cell.index} đã mở`:`Mở thẻ ${cell.index}`);
      if(!cell.revealed){const back=document.createElement('span');back.className='back';back.textContent='✦';card.append(back);const text=document.createElement('strong');text.textContent=`Thẻ ${cell.index}`;card.append(text);}
      else if(cell.bomb){card.classList.add('bomb');card.textContent='💣 Trúng bom';}
      else if(cell.outcome){const reward=cell.outcome;if(lost)card.classList.add('lost');if(images[cell.index]){const image=document.createElement('img');image.src=images[cell.index];image.alt=reward.displayName;card.append(image);}else{const icon=document.createElement('span');icon.className='back';icon.textContent=reward.category==='CHARACTER'?'👤':reward.category==='EQUIPMENT'?'⚔️':'🎁';card.append(icon);}const name=document.createElement('strong');name.textContent=reward.displayName;const detail=document.createElement('small');detail.textContent=`${rarity[reward.rarity]||'Phần thưởng'} ×${format(reward.amount)}`;const state=document.createElement('small');state.textContent=lost?'Đã mất':pendingRewards?'Chưa nhận':'Đã nhận';card.append(name,detail,state);}
      card.onclick=()=>game.mode==='TEN_CARDS'?openTenCards(cell.index):mutate('open',{transactionId:game.transactionId,cell:cell.index});board.append(card);
    }
    $('cash').hidden=game.mode!=='SINGLE_MINES'||game.status!=='ACTIVE';
    locked(busy);
    if(!pendingRewards&&!lost){
      const fresh=game.cells.filter(cell=>cell.revealed&&cell.outcome?.newCharacter&&!sessionStorage.getItem(`lk-celebrate:${player}:${game.transactionId}:${cell.index}`));
      if(fresh.length){$('newCharacters').replaceChildren();for(const cell of fresh){sessionStorage.setItem(`lk-celebrate:${player}:${game.transactionId}:${cell.index}`,'1');if(images[cell.index]){const image=document.createElement('img');image.src=images[cell.index];image.alt=cell.outcome.displayName;$('newCharacters').append(image);}const name=document.createElement('p');name.textContent=cell.outcome.displayName;$('newCharacters').append(name);}if(!$('congratulations').open)$('congratulations').showModal();}
    }
  }
  async function mutate(action,payload,replay=false){
    if(busy)return false;
    if(pending&&!replay){status('Còn thao tác chưa xác nhận. Bấm Thử lại để khôi phục trước.');return false;}
    if(!replay){pending={action,payload:{...payload,requestKey:crypto.randomUUID()}};localStorage.setItem(key(),JSON.stringify(pending));}
    locked(true);$('retry').hidden=true;
    try{const result=await api(pending.action,pending.payload);pending=null;localStorage.removeItem(key());draw(result);await home();return true;}
    catch(error){if(error.status&&error.status<500){pending=null;localStorage.removeItem(key());}status(error.message);$('retry').hidden=!pending;}
    finally{locked(false);}
    return false;
  }
  async function openTenCards(firstCell){
    if(busy||game?.mode!=='TEN_CARDS'||game.status!=='ACTIVE')return;
    const transactionId=game.transactionId;
    const hidden=game.cells.filter(cell=>!cell.revealed).map(cell=>cell.index);
    const order=[firstCell,...hidden.filter(index=>index!==firstCell)];
    for(const cell of order){
      const opened=await mutate('open',{transactionId,cell});
      if(!opened)return;
      await new Promise(resolve=>setTimeout(resolve,140));
    }
  }
  $('single').onclick=()=>mutate('start',{count:1});$('ten').onclick=()=>mutate('start',{count:10});$('cash').onclick=()=>mutate('cash',{transactionId:game.transactionId});
  $('retry').onclick=()=>{if(pending)mutate(pending.action,pending.payload,true);};
  $('refresh').onclick=async()=>{if(busy)return;locked(true);try{const recent=await home();const id=game?.transactionId||recent.games[0];if(id)draw(await api('game',{transactionId:id}));}catch(error){status(error.message);}finally{locked(false);}};
  $('games').onchange=async()=>{if(!$('games').value||busy)return;locked(true);try{draw(await api('game',{transactionId:$('games').value}));}catch(error){status(error.message);}finally{locked(false);}};
  $('closePopup').onclick=()=>$('congratulations').close();
  (async()=>{try{const response=await fetch('/api/wheel/session',{credentials:'same-origin'});if(!response.ok){$('login').hidden=false;$('wallet').textContent='Chưa đăng nhập';return;}const session=await response.json();csrf=session.csrf;player=session.playerId;$('controls').hidden=false;try{pending=JSON.parse(localStorage.getItem(key())||'null');}catch{pending=null;localStorage.removeItem(key());}const recent=await home();if(recent.games[0])draw(await api('game',{transactionId:recent.games[0]}));if(pending){$('retry').hidden=false;status('Có thao tác chưa xác nhận. Bấm Thử lại để khôi phục; không trừ thêm Gem.');}}catch(error){status(error.message);}})();
})();
