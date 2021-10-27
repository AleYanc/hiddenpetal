$(document).on("click", '.burger-menu',e => {
  let responsiveMenu = document.querySelector(".responsive-navbar");
  let body = document.querySelector("body");
  let burgerBtn = document.querySelector(".buttonclass");
  let responsiveLinks = document.querySelectorAll(".responsive-menu-links");
  if (e.target.className === "buttonclass" || "buttonclass cross") {
    burgerBtn.classList.toggle("cross");
    responsiveMenu.classList.toggle("menu-open");
    body.classList.toggle("disable-scroll");
  }
});

/* burgerBtn.addEventListener('click', () => {
    console.log('clicked')
    burgerBtn.classList.toggle('cross')
    responsiveMenu.classList.toggle('menu-open');
    body.classList.toggle('disable-scroll');
    responsiveLinks.forEach(link => {
      link.classList.toggle('trigger-anim')
    })
  }) */
