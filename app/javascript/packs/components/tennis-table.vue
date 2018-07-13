<template>
  <div class="tennis-table">
    <div class="grid-x">
      <div class="cell medium-6">
        <div class="tennis-table__side tennis-table__side--winners">
          <h4>Winners</h4>
          <div v-for="(winner, index) in winners">
            <player :index="index" :player="winner" :table="true"></player>
          </div>
        </div>
      </div>
      <div class="cell medium-6">
        <div class="tennis-table__side tennis-table__side--losers">
          <h4>Losers</h4>
          <div v-for="(loser, index) in losers">
            <player :index="index" :player="loser" :table="true"></player>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Player from './player.vue'

export default {
  props: ['winners', 'losers'],
  components: {
    Player
  },
  methods: {
    removeFromTable (index) {
      console.log('hey')

      this.$parent.removeFromTable(index)
    }
  }
}
</script>