import { createRouter, createWebHistory } from 'vue-router'
import NotFound from '../views/error/NotFound.vue'
import PkIndexView from '../views/pk/PkIndexView.vue'
import RankListIndexView from '../views/ranklist/RankListIndexView.vue'
import RecordIndexView from '../views/record/RecordIndexView.vue'
import UserBotIndexView from '../views/user/bot/UserBotIndexView.vue'
import UserAccountLoginView from '../views/user/account/UserAccountLoginView.vue'
import UserAccountRegisterView from '../views/user/account/UserAccountRegister.vue'
import store from '@/store/index'

const routes = [
  {
    path: '/',
    name: 'home',
    redirect: '/pk/',
    meta: {
      requestAuth: true,
    }
  },
  {
    path: '/pk/',
    name: 'pk_index',
    component: PkIndexView,
    meta: {
      requestAuth: true,
    }
  },
  {
    path: '/ranklist/',
    name: 'ranklist_index',
    component: RankListIndexView,
    meta: {
      requestAuth: true,
    }
  },
  {
    path: '/record/',
    name: 'record_index',
    component: RecordIndexView,
    meta: {
      requestAuth: true,
    }
  },
  {
    path: '/404/',
    name: '404',
    component: NotFound,
    meta: {
      requestAuth: false,
    }
  },
  {
    path: '/user/bot/',
    name: 'user_bot_index',
    component: UserBotIndexView,
    meta: {
      requestAuth: true,
    }
  },
  {
    path: '/user/account/login/',
    name: 'user_account_login',
    component: UserAccountLoginView,
    meta: {
      requestAuthL: true
    }
  },
  {
    path: '/user/account/register/',
    name: 'user_account_register',
    component: UserAccountRegisterView,
    meta: {
      requestAuthL: true
    }
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

router.beforeEach((to, from, next) => {
  if(!to.meta.requestAuth) next();
  else{
    const jwt_token = localStorage.getItem("jwt_token");

    if (jwt_token) {
      store.commit("updateToken", jwt_token);
      store.dispatch("getInfo", {
        success() {
          next()
        },
        error() {
          alert("登录信息无效，请重新登录！");
          router.push({ name: 'user_account_login' });
        }
      })
    } else {
      next({name: "user_account_login"});
    }
  }
})

export default router
