import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'

// Components
import Player from './components/player.vue'

Vue.use(TurbolinksAdapter)
Vue.use(VueResource)

document.addEventListener('turbolinks:load', () => {
  Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

  const element = document.getElementById('players')

  if (element != null) {
    const players = JSON.parse(element.dataset.players)
    const boostData = 'Hey booster'

    const playersApp = new Vue({
      el: element,
      data: function() {
        return { 
          players: players
        }
      },
      components: {
        Player
      }
    })
  }
});