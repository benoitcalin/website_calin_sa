import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "item" ]

  connect() {
    console.log(this.itemTargets[0].children[0].pathname, location.pathname)
    this.itemTargets.forEach(item => {
      if (item.children[0].pathname === location.pathname) {
        item.style.fontWeight = '600'
      }
    })
  }
}
