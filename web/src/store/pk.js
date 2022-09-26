export default {
  state: {
    status: "matching",  // matching表示匹配界面，playing表示对战界面
    socket: null,
    opponent_username: "",
    opponent_photo: "",
    loser: "none",  // none、all、A、B
  },
  getters: {
  },
  //同步函数放这边
  mutations: {
    updateSocket(state, socket) {
      state.socket = socket;
    },
    updateOpponent(state, opponent) {
      state.opponent_username = opponent.username;
      state.opponent_photo = opponent.photo;
    },
    updateStatus(state, status) {
      state.status = status;
    },
    updateLoser(state, loser) {
      state.loser = loser;
    }
  },
  //异步函数放这里
  actions: {
  },
  modules: {
  }
}
