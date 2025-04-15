<!-- 🔹 AdminSidebar.vue: 관리자 페이지 사이드 메뉴 컴포넌트 -->
<template>
  <aside class="admin-sidebar">
    <ul class="main-menu">
      <li class="menu-logo">
        <a href="/admin/">
          <img class="logo" src="https://campus.megastudy.net/admin/image/admin_logo.png" alt="logo" />
        </a>
      </li>
      <li v-for="menu in menuData" :key="menu.id" class="menu-item">
        <a :href="menu.link">{{ menu.title }}</a>
        <ul class="sub-menu">
          <li v-for="sub in menu.subMenu" :key="sub.id">
            <a :href="sub.link" :code="sub.code">{{ sub.title }}</a>
          </li>
        </ul>
      </li>
    </ul>
  </aside>
</template>

<script>
export default {
  name: 'AdminSidebar',
  props: {
    menuData: { type: Array, required: true }
  }
}
</script>


