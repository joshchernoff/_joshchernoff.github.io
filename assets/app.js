import { themeChange } from 'theme-change'

themeChange()

window.onload = () => {
  var themes = document.querySelectorAll('.theme-change__option');
  let currentTheme = localStorage.getItem('theme');
  
  document.body.setAttribute('data-theme', currentTheme)
  console.debug(["WTF", currentTheme])

  let themeEvent = (e, i) => {
    localStorage.setItem('theme', e.target.dataset.theme);
    document.body.setAttribute('data-theme', e.target.dataset.theme)
  }
  themes.forEach((item) => {
      item.addEventListener('click', themeEvent)
  });

  window.addEventListener('click', function(e) {
    document.querySelectorAll('.dropdown').forEach(function(dropdown) {
      if (!dropdown.contains(e.target)) {
        // Click was outside the dropdown, close it
        dropdown.open = false;
      }
    });
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

