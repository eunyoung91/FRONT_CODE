import Vue from 'vue'
import VueRouter from 'vue-router'
import Adminguide from '@/views/guide/AdminGuide.vue'

import UserLogin from "@/views/UserLogin.vue";

Vue.use(VueRouter)

const routes = [
  { path: '/guide', component: Adminguide }, // ← 가이드 라우트

  {
    path: '/',
    name: 'Login',
    component: UserLogin
  },
  
  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
