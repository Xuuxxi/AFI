<template>
    <PlayGround v-if="$store.state.pk.status === 'playing'" />
    <MatchGround v-if="$store.state.pk.status === 'matching'"></MatchGround>
    <ResultGround v-if="$store.state.pk.loser != 'none'"></ResultGround>
</template>
  
<script>
import PlayGround from '../../components/PlayGround.vue'
import { onMounted, onUnmounted } from 'vue'
import MatchGround from '@/components/MatchGround.vue';
import { useStore } from 'vuex';
import ResultGround from '@/components/ResultGround.vue';

export default {
    components: {
        PlayGround,
        MatchGround,
        ResultGround
    },
    setup() {
        const store = useStore();
        const socketUrl = `ws://localhost:3000/websocket/${store.state.user.token}`

        let socket = null;

        onMounted(() => {
            store.commit("updateLoser", 'none');
            // 初始化
            store.commit("updateOpponent", {
                username: '待匹配',
                photo: "https://cdn.acwing.com/media/article/image/2022/08/09/1_1db2488f17-anonymous.png",
            })

            socket = new WebSocket(socketUrl);

            socket.onopen = () => {
                console.log('connected!');
                store.commit("updateSocket", socket)
            }

            socket.onmessage = msg => {
                const data = JSON.parse(msg.data);
                if (data.event === "match_success") {
                    store.commit("updateOpponent", {
                        username: data.opponent_username,
                        photo: data.opponent_photo
                    }),

                    setTimeout(() => {
                        store.commit("updateStatus", "playing")
                    }, 1000);

                    store.commit("updateGame", data.game);

                    console.log('match!')
                
                } else if (data.event === 'result' && store.state.pk.status === 'playing') store.commit("updateRes", data);
                else if(data.event === 'roll') store.commit("updateRoll", data);
                else if(data.event === 'curMap') store.commit("updateCurMap",data);

                socket.onclose = () => {
                    console.log("disconnected!")
                }
            }
        })

        onUnmounted(() => {
            socket.close();
            store.commit("updateStatus", "matching");
            store.commit("updateLoser", 'none');
        })
    }
}
</script>
  
<style scoped>

</style>