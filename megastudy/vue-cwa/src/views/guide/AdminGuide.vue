<!-- 🔸 AdminGuide.vue: 가이드 페이지 전체를 구성하는 메인 뷰 컴포넌트 -->
<template>
    <div class="admin-container">
        <AdminSidebar :menu-data="menuData" />

        <div class="admin-content">
            <AdminHeader
            :userName="userName"
            :userRole="userRole"
            :loginTime="loginTime"
            />

            <div class="main-content">

                <h1>레이어 팝업</h1>
                <button type="button" class="btn-01" @click.prevent="showPopup('popup1')">팝업 1 열기</button>
                <button type="button" class="btn-01" @click.prevent="showPopup('popup2')">팝업 2 열기</button>

                <PopupLayer
                    :visible="popups.popup1"
                    title="팝업 제목이 들어가요1"
                    @close="hidePopup('popup1')"
                >
                    <p>팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.</p>
                    <p>팝업 1의 내용입니다.</p>
                    <p>팝업 1의 내용입니다.</p>
                    <p>팝업 1의 내용입니다.</p>
                    <p>팝업 1의 내용입니다.</p>
                    <p>
                        min-width:500px;
                        max-width:800px;
                    </p>
                </PopupLayer>

                <PopupLayer
                    :visible="popups.popup2"
                    title="팝업 제목이 들어가요2"
                    @close="hidePopup('popup2')"
                >
                    <p>이곳은 두 번째 팝업 내용입니다.</p>
                </PopupLayer>

                <h1>타이틀 영역</h1>

                <div class="title-menu">
                    <div class="title-main">
                        <img src="https://campus.megastudy.net/admin/image/dot_icon03.png" alt="아이콘">
                        <span>해당 메뉴명이 들어가요</span>
                    </div>
                    <div>
                        <button class="btn-01 overed">버튼overed</button>
                        <button class="btn-01 ">버튼normal</button>
                    </div>
                </div>
                <div class="title-sub">
                    <img src="https://campus.megastudy.net/admin/image/dot_icon04.png" alt="아이콘">
                    <span>해당 서브 메뉴명이 들어가요</span>
                </div>





            </div>
        </div>

    </div>
</template>

<script>
import AdminSidebar from './AdminSidebar.vue'
import AdminHeader from './AdminHeader.vue'

import PopupLayer from '@/components/guide/PopupLayer.vue';

export default {
    name: "AdminGuide",
    components: {
        AdminSidebar,
        AdminHeader,
        PopupLayer
    },
    props: {
        userName: {
            type: String,
            required: true
        },
        userRole: {
            type: String,
            default: '관리자'
        },
        loginTime: {
            type: String,
            required: true
        }
    },
    data() {
        return {
            isFixed: false,
            menuData: [],
            popups: {
                popup1: false,
                popup2: false
            }
        };
    },
    created() {
        const menus = [
            { seqGroup: 1, menuName1: "메뉴명이 들어가요", menuName2: "서브메뉴명이 들어가요", link: "/admin/menu1_1" },
            { seqGroup: 1, menuName1: "회원정보", menuName2: "탈퇴리스트", link: "/admin/menu1_2" },
            { seqGroup: 2, menuName1: "강사정보", menuName2: "강사정보 관리", link: "/admin/menu2_1" },
            { seqGroup: 2, menuName1: "강사정보", menuName2: "강사진 관리", link: "/admin/menu2_2" },
        ];
        this.menuData = this.convertMenuData(menus);
    },
    methods: {

        showPopup(popupKey) {
            this.popups[popupKey] = true;
            document.body.style.overflow = 'hidden';
        },
        hidePopup(popupKey) {
            this.popups[popupKey] = false;
            if (!Object.values(this.popups).includes(true)) {
            document.body.style.overflow = '';
            }
        },

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
        }
    }
};

</script>

<style lang="scss" scoped>
h1{
    font-size:14px;
    color:#333;
    margin:30px 0 20px;
    padding:10px;
    background:rgba(82, 82, 82, 0.1);
}
.btn-01 + .btn-01 {
    margin-left: 5px;
}
</style>