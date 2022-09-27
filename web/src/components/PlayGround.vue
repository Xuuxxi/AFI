<template>
    <div class="playground">
        <div v-if="role === 'A'">A</div>
        <div v-else>B</div>
        <GameMap></GameMap>
    </div>
</template>
  
<script>
import GameMap from './GameMap.vue';
import { useStore } from 'vuex';
import { ref } from 'vue';

export default {
    components: { GameMap },

    setup() {
        const store = useStore();

        let role = ref('');
        if (store.state.pk.a_id == store.state.user.id) role.value = "A";
        else role.value = "B";

        return {
            role
        }
    }
}
</script>
  
<style scoped>
div.playground {
    width: 60vw;
    height: 70vh;
    margin: 40px auto;
}
</style>