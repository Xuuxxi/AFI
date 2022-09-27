<template>
    <div class="result-board">
        <div class="result-board-text" v-if="$store.state.pk.loser === 'all'">
            平局
        </div>
        <div class="result-board-text" v-else>
            玩家{{$store.state.pk.loser}}胜利
        </div>
        <div class="score_text">
            玩家A分数: {{$store.state.pk.a_score}}
        </div>
        <div class="score_text">
            玩家B分数: {{$store.state.pk.b_score}}
        </div>
        <div class="result-board-btn">
            <button @click="restart" type="button" class="btn btn-warning btn-lg">
                再来!
            </button>
        </div>
    </div>
</template>

<script>
import { useStore } from 'vuex';

export default {
    setup() {
        const store = useStore();

        const restart = () => {
            store.commit("updateStatus", "matching");
            store.commit("updateLoser", "none");
            store.commit("updateOpponent", {
                username: "待匹配",
                photo: "https://cdn.acwing.com/media/article/image/2022/08/09/1_1db2488f17-anonymous.png",
            })
        }

        return {
            restart
        };
    }
}
</script>

<style scoped>
div.result-board {
    height: 30vh;
    width: 30vw;
    background-color: rgba(50, 50, 50, 0.5);
    position: absolute;
    top: 30vh;
    left: 35vw;
}

div.result-board-text {
    text-align: center;
    color: white;
    font-size: 50px;
    font-weight: 600;
    font-style: italic;
    padding-top: 2.5vh;
    padding-bottom: 1vh;
}

div.result-board-btn {
    padding-top: 3vh;
    text-align: center;
}

div.score_text {
    text-align: center;
    color: white;
    font-size: 30px;
    font-weight: 600;
}
</style>