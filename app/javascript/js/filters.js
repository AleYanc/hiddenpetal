document.addEventListener('turbolinks:load', () => { 
  categoriesFiltersTitle = document.querySelector('.categories-filter-title');
  filtersOptions = document.querySelector('.filter-select-box-options');

  categoriesFiltersTitle.addEventListener('click', () => {
    filtersOptions.classList.toggle('filter-open')
  })
})