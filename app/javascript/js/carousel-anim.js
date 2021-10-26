document.addEventListener('DOMContentLoaded', () => {
  let slideContent = document.querySelectorAll('div.slide-content');
  slideContent.forEach(slide => {
    slide.addEventListener('click', () => {
      console.log(slide)
      slide.classList.toggle('item-anim')
    })
  });
})