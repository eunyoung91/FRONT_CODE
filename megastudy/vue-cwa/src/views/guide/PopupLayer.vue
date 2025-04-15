<!-- 🔹 PopupLayer.vue: 관리자 페이지에서 사용되는 공통 팝업 레이어 컴포넌트 -->
<template>
  <div v-if="visible" class="popup-overlay" @click.self="close">
    <div class="popup-inner">
      <a href="#" class="close-btn" @click.prevent="close">&#10005;</a>
      <div class="popup-header">
        <img class="bullet" src="https://campus.megastudy.net/admin/image/icon_pop_dot.png" alt="">
        <span>{{ title }}</span>
      </div>
      <div class="popup-content">
        <slot />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'PopupLayer',
  props: {
    visible: {
      type: Boolean,
      default: false
    },
    title: {
      type: String,
      required: true
    }
  },
  methods: {
    close() {
      this.$emit('close');
    }
  }
};
</script>
