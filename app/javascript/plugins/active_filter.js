const activeFilterButton = () => {
  const buttons = document.querySelectorAll('.filter-button')
  if (buttons !== []) {
    buttons.forEach(button => button.classList.remove('filter-active'))
    buttons.forEach(button => {
      if (location.search) {
        if (button.dataset.filter === location.search) {
          button.classList.add('filter-active')
        }
      } else if (!button.dataset.filter) {
        button.classList.add('filter-active')
      }
    })
  }
}

export { activeFilterButton };
