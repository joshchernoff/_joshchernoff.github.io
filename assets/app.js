import { themeChange } from 'theme-change'
// import * as LocalStorage from "daisyui/dist/utils/localstorage";

themeChange()

// const storage = new LocalStorage();

window.onload = () => {
  var themes = document.querySelectorAll('.theme-change__option');
  
  let themeEvent = (e, i) => {
    document.body.setAttribute('data-theme', e.target.dataset.theme)
  }
  themes.forEach((item) => {
      item.addEventListener('click', themeEvent)
  });

  // Array.prototype.slice.call(buttons).forEach(function (b) {
  //   console.debug(
  //     b.addEventListener('click', function () {
  //       document.body.setAttribute('data-theme', this.dataset.theme);
  //     }, false);
  // });

  // let currentTheme = storage.getItem('currentTheme');
  // if (!!currentTheme && !!document.getElementById(`${currentTheme}-selector`)) {
  //     document.querySelectorAll('#theme-selectors > button').forEach((btn) => {
  //         btn.classList.remove('active')
  //     });
  //     document.getElementById(`${currentTheme}-selector`).classList.add('active');
  // } else {
  //    console.log('No theme found or no matching selector available...');
  // }
};

