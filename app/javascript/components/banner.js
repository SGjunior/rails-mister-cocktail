import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Have a great drink", "Search our database", "Fresh everytime"],
    typeSpeed: 40,
    loop: true
  });
}

export { loadDynamicBannerText };
