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

document.addEventListener('click', (e) => {
  let responsiveMenu = document.querySelector(".navbar-menu");
  let burgerBtn = document.querySelector(".burger-menu");

  if(document.getElementById("navbar-menu").contains(e.target) || document.getElementById("burger-menu").contains(e.target)) {
    // do nothing
  } else {
    responsiveMenu.classList.remove('open-navbar')
    burgerBtn.classList.remove("close");
  }
})

/* burgerBtn.addEventListener('click', () => {
    console.log('clicked')
    burgerBtn.classList.toggle('cross')
    responsiveMenu.classList.toggle('menu-open');
    body.classList.toggle('disable-scroll');
    responsiveLinks.forEach(link => {
      link.classList.toggle('trigger-anim')
    })
  }) */
