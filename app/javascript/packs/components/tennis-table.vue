<template>
  <div class="tennis-table">
    <div class="grid-x">
      <div class="cell medium-6">
        <div class="tennis-table__side tennis-table__side--winners">
          <h4>Winners</h4>
          <div v-for="(winner, index) in winners">
            <tennis-table-player :index="index" :player="winner" :winner="true"></tennis-table-player>
          </div>
        </div>
      </div>
      <div class="cell medium-6">
        <div class="tennis-table__side tennis-table__side--losers">
          <h4>Losers</h4>
          <div v-for="(loser, index) in losers">
            <tennis-table-player :index="index" :player="loser"></tennis-table-player>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Player from './player.vue'
import TennisTablePlayer from './tennis-table-player.vue'

export default {
  props: ['winners', 'losers'],
  components: {
    Player,
    TennisTablePlayer
  },
  methods: {
    removeFromTable (index) {
      this.$parent.removeFromTable(index)
    }
  }
}
</script>