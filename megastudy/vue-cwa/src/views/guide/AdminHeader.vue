<!-- 🔹 AdminHeader.vue: 관리자 상단 헤더 컴포넌트 (알림 및 로그인 정보 표시) -->

<template>
  <div class="main-header">
    <div class="header-noti" :class="{ fixed: isFixed }">
      <p><strong>DEV-ADMIN 개발 서버 입니다.</strong></p>
    </div>
    <div class="header-login">
      <div>
        <img src="https://campus.megastudy.net/admin/image/icon01.png">
        <b>{{ userName }}({{ userRole }})님 |</b> {{ loginTime }} 로그인 하셨습니다.
      </div>
      <div>
        <button class="btn-logout"><span>로그아웃</span></button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'AdminHeader',
  props: {
    userName: String,
    userRole: String,
    loginTime: String
  },
  data() {
    return {
      isFixed: false
    }
  },
  mounted() {
    window.addEventListener("scroll", this.handleScroll);
  },
  beforeDestroy() {
    window.removeEventListener("scroll", this.handleScroll);
  },
  methods: {
    handleScroll() {
      const notiTop = this.$el.querySelector(".header-noti").offsetTop;
      this.isFixed = window.scrollY > notiTop;
    }
  }
}
</script>
