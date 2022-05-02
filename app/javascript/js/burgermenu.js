$(document).on("click", '.burger-menu',e => {
  let responsiveMenu = document.querySelector(".navbar-menu");
  let body = document.querySelector("body");
  let burgerBtn = document.querySelector(".burger-menu");
  let responsiveLinks = document.querySelectorAll(".responsive-menu-links");
  if (e.target.className === "burger-menu" || "burger-menu close") {
    burgerBtn.classList.toggle("close");
    responsiveMenu.classList.toggle("open-navbar");
    // body.classList.toggle("disable-scroll");
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
