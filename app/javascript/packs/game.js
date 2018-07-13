import Vue from 'vue/dist/vue.esm'
import VueResource from 'vue-resource'

import { EventBus } from './buses/event-bus'

import Players from './components/players.vue'
import TennisTable from './components/tennis-table.vue'

Vue.use(VueResource)

document.addEventListener('DOMContentLoaded', () => {
  const element = document.querySelector('.game')

  if (element !== null) {
    let players = JSON.parse(element.dataset.players)

    if (players !== undefined) {
      players.forEach(function (player) {
        player.show = true
      })
    }

    new Vue({
      el: element,
      data () {
        return {
          players: players,
          winners: [],
          losers: []
        }
      },
      components: {
        Players,
        TennisTable
      },
      methods: {
        addToWinners (player) {
          if (this.winners.length < 2) {
            this.winners.push(player)
            player.show = false
          } else {
            alert('Only 2 players can win')
          }
        },
        addToLosers (player) {
          if (this.losers.length < 2) {
            this.losers.push(player)
            player.show = false
          } else {
            alert('Only 2 players can lose')
          }
        },
        removeFromWinners (index) {
          this.winners[index].show = true
          this.winners.splice(index, 1)
        },
        removeFromLosers (index) {
          this.losers[index].show = true
          this.losers.splice(index, 1)
        }
      },
      mounted () {
        EventBus.$on('add-to-winners', this.addToWinners)
        EventBus.$on('add-to-losers', this.addToLosers)
        EventBus.$on('remove-from-winners', this.removeFromWinners)
        EventBus.$on('remove-from-losers', this.removeFromLosers)
      }
    })
  }
})
