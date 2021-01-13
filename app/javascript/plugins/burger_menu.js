const burgerMenu = () => {
  const burger = document.querySelector('.hamburger')
  const sidebar = document.querySelector('.sidebar-calin')

  burger.addEventListener('click', e => {
    burger.classList.toggle('is-active')
    sidebar.classList.toggle('sidebar-open')
  })
}

export { burgerMenu }
