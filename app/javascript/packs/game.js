import Vue from 'vue/dist/vue.esm'
import VueResource from 'vue-resource'

import TennisTable from './components/tennis-table.vue'
import Player from './components/player.vue'

Vue.use(VueResource)

document.addEventListener('DOMContentLoaded', () => {
  const element = document.querySelector('.game')

  if (element !== null) {
    new Vue({
      el: element,
      data () {
        return {
          players: [],
          winners: [],
          losers: []
        }
      },
      components: {
        Player,
        TennisTable
      },
      methods: {
        addWinner (player, index) {
          if (this.winners.length < 2) {
            this.winners.push(player)
            this.players.splice(index, 1)
          } else {
            alert('You can only add 2 winners')
          }
        },
        addLoser (player, index) {
          if (this.losers.length < 2) {
            this.losers.push(player)
            this.players.splice(index, 1)
          } else {
            alert('You can only add 2 losers')
          }
        }
      },
      created () {
        this.$http.get('/api/players').then(response => {
          this.players = response.body.data
        }, response => {
          alert(response)
        })
      }
    })
  }
})
