import Vue from 'vue'
import VueRouter from 'vue-router'
import Adminguide from '@/views/guide/AdminGuide.vue'

import UserLogin from "@/views/UserLogin.vue";
import AboutHome from "@/views/AboutHome.vue";

Vue.use(VueRouter)

const routes = [
  { path: '/guide', component: Adminguide }, // ← 가이드 라우트

  {
    path: '/',
    name: 'Login',
    component: UserLogin,
  },
  {
    path: '/home',
    name: 'home',
    component: AboutHome
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router

