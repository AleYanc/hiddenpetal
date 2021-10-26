
document.addEventListener('DOMContentLoaded', () => {
  let responsiveMenu = document.querySelector('.responsive-navbar');
  let body = document.querySelector('body');
  let burgerBtn = document.querySelector('.burger-menu');
  let responsiveLinks = document.querySelectorAll('.responsive-menu-links')
  burgerBtn.addEventListener('click', () => {
    burgerBtn.classList.toggle('cross')
    responsiveMenu.classList.toggle('menu-open');
    body.classList.toggle('disable-scroll');
    responsiveLinks.forEach(link => {
      link.classList.toggle('trigger-anim')
    })
  })
})