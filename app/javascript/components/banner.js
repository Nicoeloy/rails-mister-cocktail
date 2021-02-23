import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Awesome beverages", "during though days"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
