<template>
  <div class="player-card">
    <div class="grid-x align-middle">
      <div class="cell shrink">
        <img :src="player.attributes.image_url" />
      </div>
      <div class="cell auto">
        <div class="player-card__info">
          <strong>{{ player.attributes.nickname }}</strong>
        </div>
        <div class="player-card__stats">
          <span>Games: {{ player.attributes.game_count }}</span>
        </div>
      </div>
      <div class="cell shrink">
        <div class="player-card__actions" v-if="!table">
          <button class="button tiny secondary hollow" @click="$parent.addWinner(player, index)">Add as winner</button>
          <button class="button tiny secondary hollow" @click="$parent.addLoser(player, index)">Add as loser</button>
        </div>
        <div class="player-card__actions" v-else>
          <button class="button tiny secondary hollow">Remove</button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['player', 'index', 'table']
}
</script>