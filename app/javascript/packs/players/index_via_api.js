import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'

Vue.use(TurbolinksAdapter)
Vue.use(VueResource)

document.addEventListener('turbolinks:load', () => {
  Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

  const element = document.getElementById('players_from_api')

  if (element != null) {
    const app = new Vue({
      el: element,
      data() {
        return { players: [] }
      },
      beforeCreate() {
        this.$http.get('/api/players').then(response => {
          this.players = response.body.data
        }, response => {
          console.log(response)
        })
      }
    })
  }
});