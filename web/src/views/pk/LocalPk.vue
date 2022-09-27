<template>
    <LocalPlayGround v-if="$store.state.pk.status === 'playing'" />
    <LocalResult v-if="$store.state.pk.loser != 'none'"></LocalResult>
</template>

<script>
import LocalPlayGround from '@/components/LocalPlayGround.vue';
import { onMounted, onUnmounted } from 'vue'
import { useStore } from 'vuex';
import LocalResult from '@/components/LocalResult.vue';

export default {
  components: {
    LocalPlayGround,
    LocalResult
},
  setup() {
    const store = useStore();

    onMounted(() => {
      // 初始化
      store.commit("updateStatus", "playing");
    })

    onUnmounted(() => {
      store.commit("updateStatus", "matching");
      store.commit("updateLoser", 'none');
    })
  }
}
</script>

<style>

</style>