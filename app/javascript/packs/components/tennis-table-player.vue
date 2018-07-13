<template>
  <div class="player-card">
    <div class="grid-x align-middle">
      <div class="cell shrink">
        <img :src="player.image_url" />
      </div>
      <div class="cell auto">
        <div class="player-card__info">
          <strong>{{ player.nickname }}</strong>
        </div>
        <div class="player-card__stats">
          <span>Games: {{ player.game_count }}</span>
        </div>
      </div>
      <div class="cell shrink">
        <div class="player-card__actions" v-if="winner">
          <button class="button tiny secondary hollow" @click="removeFromWinners(index)">Remove</button>
        </div>
        <div class="player-card__actions" v-else>
          <button class="button tiny secondary hollow" @click="removeFromLosers(index)">Remove</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { EventBus } from '../buses/event-bus'

export default {
  props: ['player', 'index', 'table', 'winner'],
  methods: {
    removeFromWinners (index) {
      EventBus.$emit('remove-from-winners', index)
    },
    removeFromLosers (index) {
      EventBus.$emit('remove-from-losers', index)
    }
  }
}
</script>