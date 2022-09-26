<template>
  <div class="playground">
    <GameMap></GameMap>
  </div>
</template>

<script>
import GameMap from './GameMap.vue';

export default {
    components: { GameMap }
}
</script>

<style scoped>
div.playground {
  width: 70vw;
  height: 75vh;
  margin: 60px auto;
}
</style>