document.addEventListener('turbolinks:load', () => {
  if(!($('.categories-filter-title').length > 0)) {
    return;
  }

  categoriesFiltersTitle = document.querySelector('.categories-filter-title');
  filtersOptions = document.querySelector('.filter-select-box-options');

  categoriesFilterTitleResponsive = document.querySelector('.categories-filter-title-responsive');
  filtersOptionsOffcanvas = document.querySelector('.filter-select-box-options-offcanvas');
  closeBtn = document.querySelector('.fa-circle-xmark');
  let body = document.querySelector("body");

  categoriesFiltersTitle.addEventListener('click', () => {
    filtersOptions.classList.toggle('filter-open');
  })

  categoriesFilterTitleResponsive.addEventListener('click', () => {
    filtersOptionsOffcanvas.classList.add('offcanvas-open');
    body.classList.add('disable-scroll')
  })

  closeBtn.addEventListener('click', () => {
    filtersOptionsOffcanvas.classList.remove('offcanvas-open');
    body.classList.remove('disable-scroll')
  })
})

document.addEventListener('click', e => {
  if(!($('.categories-filter-title').length > 0)) {
    return;
  }
  
  filtersOptionsOffcanvas = document.querySelector('.filter-select-box-options-offcanvas');
  closeBtn = document.querySelector('.fa-circle-xmark');
  let body = document.querySelector("body");

  if(document.getElementById('filter-select-box-options-offcanvas').contains(e.target) || document.getElementById('filter-select-box-title-responsive').contains(e.target))   {
    // do nothing
  } else {
    filtersOptionsOffcanvas.classList.remove('offcanvas-open');
    body.classList.remove('disable-scroll')
  }
})