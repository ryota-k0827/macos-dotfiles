document.addEventListener('DOMContentLoaded', function () {
  function waitForElement(selector, callback) {
    const element = document.querySelector(selector);
    if (element) {
      callback(element);
    } else {
      setTimeout(() => waitForElement(selector, callback), 100);
    }
  }

  waitForElement('.gettingStartedCategoriesContainer', (container) => {
    const uwu = document.createElement('div');
    uwu.className = 'uwu';

    const logo = document.createElement('img');
    logo.src = 'https://raw.githubusercontent.com/Aikoyori/ProgrammingVTuberLogos/main/VSCode/VSCode.png';
    logo.alt = 'uwu?';
    logo.className = 'logo';

    uwu.appendChild(logo);

    container.insertBefore(uwu, container.firstChild);
  });
});
