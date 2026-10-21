'use strict';
(() => {
  if (document.querySelector('.lk-float-dock')) return;
  const dock = document.createElement('aside');
  dock.className = 'lk-float-dock';
  dock.setAttribute('aria-label', 'Lost Kingsland quick navigation');
  dock.innerHTML = `
    <button class="lk-dock-orb" type="button" aria-label="Mở menu nhanh" aria-expanded="true"><span>✦</span></button>
    <div class="lk-dock-items">
      <a class="lk-dock-btn" href="/" data-tip="Trang chủ"><span>⌂</span></a>
      <a class="lk-dock-btn" href="/catalog.html" data-tip="Codex"><span>◇</span></a>
      <a class="lk-dock-btn" href="/portal.html" data-tip="Player Portal"><span>◈</span></a>
      <a class="lk-dock-btn" href="/wheel.html" data-tip="Thiên Mệnh"><span>✺</span></a>
      <a class="lk-dock-btn" href="/ops.html" data-tip="Operations Hub"><span>⚙</span></a>
      <span class="lk-dock-divider"></span>
      <a class="lk-dock-btn lk-admin-link" href="#" data-tip="Admin" hidden><span>⌘</span></a>
      <a class="lk-dock-btn lk-bot-link" href="#" data-tip="Bot / Discord" hidden><span>◉</span></a>
    </div>`;
  document.body.appendChild(dock);

  const toggle = dock.querySelector('.lk-dock-orb');
  toggle.addEventListener('click', () => {
    const collapsed = dock.classList.toggle('collapsed');
    toggle.setAttribute('aria-expanded', String(!collapsed));
  });

  const path = location.pathname;
  dock.querySelectorAll('a[href]').forEach(a => {
    const href = new URL(a.href, location.origin).pathname;
    if (href === path || (href === '/' && path === '/index.html')) a.classList.add('active');
  });

  fetch('/api/integrations/status', {credentials: 'same-origin'})
    .then(r => r.ok ? r.json() : null)
    .then(data => {
      if (!data?.links) return;
      const admin = dock.querySelector('.lk-admin-link');
      const bot = dock.querySelector('.lk-bot-link');
      if (data.links.admin) { admin.href = data.links.admin; admin.target = '_blank'; admin.rel = 'noopener'; admin.hidden = false; }
      if (data.links.bot) { bot.href = data.links.bot; bot.target = '_blank'; bot.rel = 'noopener'; bot.hidden = false; }
    }).catch(() => {});
})();
