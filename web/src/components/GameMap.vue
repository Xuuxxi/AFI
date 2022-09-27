<template>
  <div class="row">
    <div class="col-5">
      <div class="group_but">
        <div class="role">A GROUND</div>
        <button v-for="(item,index) in $store.state.pk.aMap" :key="index" :value="index"
          @click="putNum(0,index)">{{item}}</button>
      </div>
    </div>
    <div class="col-2">
      <div class="dice">
        <button @click="roll">
          <div v-if="$store.state.pk.dice_num === 0">投掷</div>
          <div v-else>{{$store.state.pk.dice_num}}</div>
        </button>
      </div>
      <div class="badge bg-primary text-wrap" style="width: 100%;margin: 0 auto;">
        <div v-if="$store.state.pk.step === 0">现在是A回合</div>
        <div v-else>现在是B回合</div>
      </div>
    </div>
    <div class="col-5">
      <div class="group_but">
        <div class="role">B GROUND</div>
        <button v-for="(item,index) in $store.state.pk.bMap" :key="index" :value="index"
          @click="putNum(1,index)">{{item}}</button>
      </div>
    </div>
  </div>
</template>

<script>
import { useStore } from 'vuex';

export default {
  setup() {
    const store = useStore();
    const socket = store.state.pk.socket;

    const roll = () => {
      if (((store.state.user.id == store.state.pk.a_id) && (store.state.pk.step == 0)) || ((store.state.user.id == store.state.pk.b_id) && (store.state.pk.step == 1))) {
        if (store.state.pk.dice_num === 0) {
          socket.send(JSON.stringify({
            event: "roll"
          }));
        }
      }else{
        alert("还没到你的回合！");
      }
    }

    const check_valid = (f, pos) => {
      let msg = 'success';
      if (store.state.pk.step === 0 && f === 0) {
        if (store.state.pk.aMap[pos] === 0) {
          return msg;
        } else msg = '只能在数字 0 区域放置';
      } else if (store.state.pk.step === 0 && f === 1) msg = "请操作左侧九宫格";

      if (store.state.pk.step === 1 && f === 1) {
        if (store.state.pk.bMap[pos] != 0) msg = '只能在数字 0 区域放置';
      } else if (store.state.pk.step === 1 && f === 0) msg = "请操作右侧侧九宫格";

      return msg;
    }

    const putNum = (f, pos) => {
      if (store.state.pk.dice_num === 0) {
        alert('请先投掷骰子');
        return;
      }
      let res = check_valid(f, pos)
      if (res != 'success') alert(res);
      else {
        socket.send(JSON.stringify({
          event: "move",
          direction: pos
        }));
      }
    }

    return {
      putNum,
      roll
    }
  }
}
</script>

<style scoped>
button {
  width: 100px;
  height: 100px;
  border-radius: 15%;
  margin: 5px 5px 5px 5px;
}

div.group_but {
  width: 330px;
  height: 330px;
  margin: 10vh auto;
}

div.dice {
  width: 110px;
  height: 110px;
  margin: 2vh auto;
}

div.role {
  text-align: center;
  color: dimgrey;
  font-size: 50px;
  font-weight: 600;
}
</style>