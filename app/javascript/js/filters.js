document.addEventListener('turbolinks:load', () => { 
  categoriesFiltersTitle = document.querySelector('.categories-filter-title');
  filtersOptions = document.querySelector('.filter-select-box-options');

  categoriesFilterTitleResponsive = document.querySelector('.categories-filter-title-responsive');
  filtersOptionsOffcanvas = document.querySelector('.filter-select-box-options-offcanvas');
  closeBtn = document.querySelector('.fa-circle-xmark');

  categoriesFiltersTitle.addEventListener('click', () => {
    filtersOptions.classList.toggle('filter-open');
  })

  categoriesFilterTitleResponsive.addEventListener('click', () => {
    filtersOptionsOffcanvas.classList.add('offcanvas-open');
  })

  closeBtn.addEventListener('click', () => {
    filtersOptionsOffcanvas.classList.remove('offcanvas-open');
  })
})