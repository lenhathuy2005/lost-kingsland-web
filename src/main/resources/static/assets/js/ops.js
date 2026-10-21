'use strict';
(() => {
  const $ = id => document.getElementById(id);
  const esc = value => String(value ?? '').replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));

  function stateBadge(target, service) {
    const state = service?.state || 'UNKNOWN';
    target.className = `service-state state-${state.toLowerCase()}`;
    target.textContent = state;
  }

  async function copy(text, button) {
    try {
      await navigator.clipboard.writeText(text);
      const old = button.textContent;
      button.textContent = 'Đã sao chép';
      setTimeout(() => button.textContent = old, 1200);
    } catch {
      window.prompt('Copy URL:', text);
    }
  }

  async function load() {
    const r = await fetch('/api/integrations/status', {credentials:'same-origin'});
    if (!r.ok) throw new Error(`HTTP ${r.status}`);
    const data = await r.json();

    stateBadge($('webState'), data.web);
    stateBadge($('adminState'), data.admin);
    stateBadge($('botState'), data.bot);
    $('dbMode').textContent = data.web?.dataMode || '-';
    $('gameplayConfig').textContent = data.web?.gameplayConfig || '-';
    $('adminHttp').textContent = data.admin?.httpStatus || '—';
    $('botHttp').textContent = data.bot?.httpStatus || '—';
    $('relayState').textContent = data.payment?.relayConfigured ? 'READY' : 'CHỜ BOT WEBHOOK';
    $('relayState').className = `service-state ${data.payment?.relayConfigured ? 'state-online' : 'state-not_configured'}`;

    const rows = [
      ['returnUrl', data.payment?.returnUrl],
      ['cancelUrl', data.payment?.cancelUrl],
      ['webhookUrl', data.payment?.webhookUrl]
    ];
    for (const [id, value] of rows) {
      const input = $(id); input.value = value || '';
      input.parentElement.querySelector('button').onclick = () => copy(input.value, input.parentElement.querySelector('button'));
    }

    const admin = $('openAdmin');
    if (data.links?.admin) { admin.href = data.links.admin; admin.classList.remove('disabled'); }
    else { admin.removeAttribute('href'); admin.classList.add('disabled'); admin.title = 'Thiết lập ADMIN_PUBLIC_URL'; }
    const bot = $('openBot');
    if (data.links?.bot) { bot.href = data.links.bot; bot.classList.remove('disabled'); }
    else { bot.removeAttribute('href'); bot.classList.add('disabled'); bot.title = 'Thiết lập BOT_PUBLIC_URL'; }
  }

  $('refreshServices').onclick = async () => {
    $('refreshServices').disabled = true;
    try { await load(); } finally { $('refreshServices').disabled = false; }
  };

  load().catch(error => {
    $('opsError').hidden = false;
    $('opsError').textContent = `Không đọc được Integration Hub: ${esc(error.message)}`;
  });
})();
