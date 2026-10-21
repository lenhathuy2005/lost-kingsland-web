(async function(){
  const rarityStrip=document.getElementById('rarityStrip');
  try{
    const summary=await fetch('/api/public/summary').then(r=>r.json());
    const set=(id,v)=>{const e=document.getElementById(id);if(e&&v!==undefined)e.textContent=v};
    set('heroItems',summary.productionItems);set('sItems',summary.productionItems);set('sRarity',summary.rarityCount);set('sSets',summary.equipmentSets);set('sBonuses',summary.setBonuses);
    const rarities=await fetch('/api/public/rarities').then(r=>r.json());
    rarityStrip.innerHTML=rarities.map(r=>`<span class="rarity-chip rarity ${r.code}">${r.ordinal}. ${r.code}</span>`).join('');
  }catch(e){
    if(rarityStrip) rarityStrip.innerHTML='<span class="small">Không tải được dữ liệu catalog.</span>';
  }
})();
