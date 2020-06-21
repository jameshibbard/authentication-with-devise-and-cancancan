document.addEventListener('DOMContentLoaded', () => {
  const flashMessage = document.querySelector('div[id^="flash_"]');

  if (flashMessage) {
    setTimeout(() => {
      flashMessage.classList.add('hide');
      flashMessage.classList.remove('show');

      setTimeout(() => {
        flashMessage.parentElement.removeChild(flashMessage);
      }, 1500);
    }, 3500);
  }
});
