require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// External imports
import "bootstrap";
import "controllers"

// Internal imports, e.g:
import { initMapbox } from '../plugins/init_mapbox';
import { activeFilterButton } from '../plugins/active_filter';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  activeFilterButton();
})

