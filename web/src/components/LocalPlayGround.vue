<template>
  <div class="playground">
    <LocalGameMap></LocalGameMap>
  </div>
</template>

<script>
import LocalGameMap from './LocalGameMap.vue';

export default {
    components: { LocalGameMap }
}
</script>

<style scoped>
div.playground {
  width: 70vw;
  height: 75vh;
  margin: 60px auto;
}
</style>