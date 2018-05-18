<template>
    <a href="#" class="player-thumbnail">
        <img :src="player.image_url" />
        {{ player.nickname }}
    </a>
</template>

<script>
    export default {
      props: [
        'player'
      ]
    }
</script>