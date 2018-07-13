<template>
  <div>
    <player v-for="(player, index) in players" :player="player" :index="index" :key="player.id"></player>
  </div>
</template>

<script>
import Player from './player.vue'

export default {
  props: ['players'],
  components: {
    Player
  }
}
</script>