document.addEventListener('DOMContentLoaded', function () {
  function waitForElement(selector, callback) {
    const element = document.querySelector(selector);
    if (element) {
      callback(element);
    } else {
      setTimeout(() => waitForElement(selector, callback), 100);
    }
  }

  function addCustomElement(container) {
    container.style.gridTemplateAreas = `
    ". uwu uwu uwu ."
    ". header header header ."
    ". left-column . right-column ."
    ". footer footer footer ."
  `;
    container.style.gridTemplateRows = 'auto auto 1fr auto';

    const uwu = document.createElement('div');
    uwu.className = 'uwu';
    uwu.style.gridArea = 'uwu';
    uwu.style.display = 'flex';
    uwu.style.justifyContent = 'center';
    uwu.style.alignSelf = 'end';
    uwu.style.paddingTop = '48px';
    uwu.style.paddingBottom = '24px';

    const logo = document.createElement('img');
    logo.src = 'https://raw.githubusercontent.com/Aikoyori/ProgrammingVTuberLogos/main/VSCode/VSCode.png';
    logo.alt = 'uwu?';
    logo.className = 'logo';
    logo.style.width = '400px';

    uwu.appendChild(logo);

    if (!document.querySelector('.uwu')) {
      container.insertBefore(uwu, container.firstChild);
    }
  }

  waitForElement('.gettingStartedCategoriesContainer', (container) => {
    addCustomElement(container);

    const observer = new MutationObserver(() => {
      if (!document.querySelector('.uwu')) {
        addCustomElement(container);
      }
    });

    observer.observe(container, { childList: true, subtree: true });
  });
});
