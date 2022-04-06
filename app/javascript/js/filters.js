document.addEventListener('turbolinks:load', () => { 
  filterBtn = document.querySelector('.filter-title')
  filterBar = document.querySelector('.filter-form-container')

  filterBtn.addEventListener('click', () => {
    filterBar.classList.toggle('filter-open')
  })
})