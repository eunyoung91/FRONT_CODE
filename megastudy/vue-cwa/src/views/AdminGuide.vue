<template>
    <div class="admin-container">
        <!-- 사이드바 -->
        <aside class="admin-sidebar">
            <ul class="main-menu">
            <li class="menu-logo">
                <a href="/admin/">
                <img
                    src="https://campus.megastudy.net/admin/image/admin_logo.png"
                    width="167"
                    height="45"
                    alt="logo"
                />
                </a>
            </li>
            <li
                v-for="menu in menuData"
                :key="menu.id"
                class="menu-item"
            >
                <a :href="menu.link">{{ menu.title }}</a>
                <ul class="sub-menu">
                <li
                    v-for="sub in menu.subMenu"
                    :key="sub.id"
                >
                    <a :href="sub.link" :code="sub.code">{{ sub.title }}</a>
                </li>
                </ul>
            </li>
            </ul>
        </aside>

        <!-- 컨텐츠 -->
        <div class="admin-content">
            <!-- 헤더 영역 -->
            <div class="main-header">
                <div class="header-noti"><p><strong>DEV-ADMIN 개발 서버 입니다.</strong></p></div>
                <!-- <script type="text/javascript">
                    $(function() {
                        var jbOffset = $( '.header-noti' ).offset();
                        $( window ).scroll( function() {
                            if ( $( document ).scrollTop() > jbOffset.top ) {
                                $( '.header-noti' ).addClass( 'fixed' );
                            } else {
                                $( '.header-noti' ).removeClass( 'fixed' );
                            }
                        });
                        $(document).attr("title", "DEV-ADMIN");
                    });
                    $(document).attr("title", "DEV-ADMIN");
                </script> -->
                <div class="header-login">
                    <div><img src="https://campus.megastudy.net/admin/image/icon01.png"> <b>박은영(권한 관리자)님|</b> 2024.11.20 9:17 로그인 하셨습니다.</div>
                    <div>
                        <a href="/admin/logout.asp" class="btn-logout">
                            <span>로그아웃</span>
                        </a>
                    </div>
                </div>
            </div>
            <!-- // 헤더 영역 -->
        </div>
    </div>
</template>

<script>
    export default {
        name: "AdminGuide", // vue/multi-word-component-name 규칙 충족
        data() {
            return {
                menuData: [],
            };
        },
        created() {
            const menus = [
                { seqGroup: 1, menuName1: "대메뉴 1", menuName2: "소메뉴 1-1", link: "/admin/menu1_1" },
                { seqGroup: 1, menuName1: "대메뉴 1", menuName2: "소메뉴 1-2", link: "/admin/menu1_2" },
                { seqGroup: 2, menuName1: "대메뉴 2", menuName2: "소메뉴 2-1", link: "/admin/menu2_1" },
                { seqGroup: 2, menuName1: "대메뉴 2", menuName2: "소메뉴 2-2", link: "/admin/menu2_2" },
                { seqGroup: 3, menuName1: "대메뉴 3", menuName2: "소메뉴 3-1", link: "/admin/menu3_1" },
            ];
            this.menuData = this.convertMenuData(menus);
        },
        methods: {
            convertMenuData(menus) {
                const groupedMenus = {};
                menus.forEach((menu) => {
                if (!groupedMenus[menu.seqGroup]) {
                    groupedMenus[menu.seqGroup] = {
                    id: menu.seqGroup,
                    title: menu.menuName1,
                    link: menu.link,
                    subMenu: [],
                    };
                }
                groupedMenus[menu.seqGroup].subMenu.push({
                    id: `${menu.seqGroup}-${menu.menuName2}`,
                    title: menu.menuName2,
                    link: menu.link,
                    code: `code-${menu.menuName2}`,
                });
                });
                return Object.values(groupedMenus);
            },
        },
    };
</script>
