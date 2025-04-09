import Vue from 'vue'
import App from './App.vue'

import './assets/styles/main.scss'; // 여기에 SCSS 진입점을 연결

import router from './router'
import store from './store'

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
