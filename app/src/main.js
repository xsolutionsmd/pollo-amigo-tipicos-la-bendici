const dialog = document.querySelector('#navigation');
const trigger = document.querySelector('.menu-toggle');
const close = document.querySelector('.menu-close');

if (dialog && typeof dialog.showModal === 'function') {
  trigger.hidden = false;
  trigger.addEventListener('click', () => {
    dialog.showModal();
    trigger.setAttribute('aria-expanded', 'true');
    document.body.classList.add('nav-open');
  });
  close.addEventListener('click', () => dialog.close());
  dialog.addEventListener('click', event => {
    if (event.target.closest('a')) dialog.close();
  });
  dialog.addEventListener('keydown', event => {
    if (event.key !== 'Tab') return;
    const controls = [...dialog.querySelectorAll('a[href], button:not([disabled])')];
    const first = controls[0];
    const last = controls.at(-1);
    if (event.shiftKey && document.activeElement === first) {
      event.preventDefault();
      last.focus();
    } else if (!event.shiftKey && document.activeElement === last) {
      event.preventDefault();
      first.focus();
    }
  });
  dialog.addEventListener('close', () => {
    trigger.setAttribute('aria-expanded', 'false');
    document.body.classList.remove('nav-open');
    trigger.focus({ preventScroll: true });
  });
}

const header = document.querySelector('.site-header');
let scheduled = false;
const updateHeader = () => {
  header.classList.toggle('scrolled', window.scrollY > 40);
  scheduled = false;
};
window.addEventListener('scroll', () => {
  if (!scheduled) {
    scheduled = true;
    window.requestAnimationFrame(updateHeader);
  }
}, { passive: true });
updateHeader();
