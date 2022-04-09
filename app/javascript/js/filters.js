document.addEventListener('turbolinks:load', () => { 
  filterBtn = document.querySelector('.filter-title')
  filterBar = document.querySelector('.filter-form-container')
  orderBtn = document.querySelector('.filter-title.order')
  orderBar = document.querySelector('.order-form-container')

  filterBtn.addEventListener('click', () => {
    filterBar.classList.toggle('filter-open')
  })

  orderBtn.addEventListener('click', () => {
    orderBar.classList.toggle('filter-open')
  })
})