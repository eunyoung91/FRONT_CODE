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

                <h1>🟪 폼 요소<br>@import "base/form"</h1>
                <div>
                    <h2>🟣 input</h2>
                    <!-- ✅ 일반 input -->
                    <div class="form-group">
                        <label for="username" class="sr-only">이름</label>
                        <input
                        type="text"
                        id="username"
                        v-model="form.username"
                        class="input-basic"
                        placeholder="이름을 입력하세요"
                        />
                    </div>
                    <!-- ✅ disabled input -->
                    <div class="form-group">
                        <label for="email" class="sr-only">이메일 (비활성화)</label>
                        <input
                        type="email"
                        id="email"
                        class="input-basic"
                        value="user@example.com"
                        disabled
                        />
                    </div>
                    <!-- ✅ readonly input -->
                    <div class="form-group">
                        <label for="id" class="sr-only">아이디 (읽기 전용)</label>
                        <input
                        type="text"
                        id="id"
                        class="input-basic"
                        value="readonly_user"
                        readonly
                        />
                    </div>


                    <h2>🟣 Checkbox & Radio</h2>

                    <!-- ✅ 일반 Checkbox -->
                    <div class="form-check">
                        <input type="checkbox" id="agree" v-model="form.agree" />
                        <label for="agree">약관에 동의합니다</label>
                    </div>
                    <!-- ✅ disabled Checkbox -->
                    <div class="form-check">
                        <input type="checkbox" id="agree-disabled" checked disabled />
                        <label for="agree-disabled">동의 불가 (disabled)</label>
                    </div>

                    <hr class="hr"/>
                    
                    <!-- ✅ 일반 Radio -->
                    <div class="form-check">
                        <input type="radio" id="gender-m" value="male" v-model="form.gender" />
                        <label for="gender-m">남성</label>
                    </div>
                    
                    <div class="form-check">
                        <input type="radio" id="gender-f" value="female" v-model="form.gender" />
                        <label for="gender-f">여성</label>
                    </div>

                    <!-- ✅ readonly Radio (유사 동작) -->
                    <!-- HTML 자체는 readonly 지원 안 하므로 disabled로 대체 -->
                    <div class="form-check">
                        <input type="radio" id="gender-readonly" value="male" checked disabled />
                        <label for="gender-readonly">남성 (읽기 전용)</label>
                    </div>

                    <h2>🟣 File Input</h2>

                    <!-- ✅ 일반 파일 선택 -->
                    <div class="file-basic">
                        <label for="resume" class="sr-only">이력서 업로드</label>
                        <input type="file" id="resume" />
                    </div>

                    <!-- ✅ disabled 상태 -->
                    <div class="file-basic">
                        <label for="file-disabled" class="sr-only">파일 업로드 (비활성화)</label>
                        <input type="file" id="file-disabled" disabled />
                    </div>

                    <!-- ✅ readonly 유사 처리 (비활성화로 대체) -->
                    <!-- 파일 선택은 readonly 미지원, disabled로 처리 -->
                    <div class="file-basic">
                        <input type="file" id="resume" @change="handleFileChange" />
                        <label for="resume">파일 선택</label>
                        <span class="file-name">{{ fileName || '선택된 파일 없음' }}</span>
                    </div>


                    <h2>🟣 textarea</h2>
                    <!-- ✅ 일반 textarea -->
                    <div class="form-group">
                        <label for="bio" class="sr-only">자기소개</label>
                        <textarea
                        id="bio"
                        v-model="form.bio"
                        class="textarea-basic"
                        placeholder="자기소개를 입력하세요"
                        ></textarea>
                    </div>
                    <!-- ✅ readonly textarea -->
                    <div class="form-group">
                        <label for="intro" class="sr-only">소개 내용 (읽기 전용)</label>
                        <textarea
                        id="intro"
                        class="textarea-basic"
                        readonly
                        >Vue를 이용해 관리자 페이지를 개발 중입니다.</textarea>
                    </div>
                    <h2>🟣 select</h2>
                    <!-- ✅ 일반 select -->
                    <div class="form-group">
                        <label for="job" class="sr-only">직업</label>
                        <div class="select-wrap">
                        <select
                            id="job"
                            v-model="form.job"
                            class="select-basic"
                        >
                            <option value="">선택하세요</option>
                            <option value="developer">개발자</option>
                            <option value="designer">디자이너</option>
                            <option value="pm">PM</option>
                        </select>
                        </div>
                    </div>

                    <!-- ✅ disabled select -->
                    <div class="form-group">
                        <label for="country" class="sr-only">국가 (비활성화)</label>
                        <div class="select-wrap">
                        <select
                            id="country"
                            class="select-basic"
                            disabled
                        >
                            <option>대한민국</option>
                        </select>
                        </div>
                    </div>

                    <!-- ✅ readonly select (사용자 선택 불가하도록 흉내) -->
                    <div class="form-group">
                        <label for="grade" class="sr-only">등급 (읽기 전용)</label>
                        <div class="select-wrap">
                        <select
                            id="grade"
                            class="select-basic"
                            :value="form.grade"
                            readonly
                        >
                            <option value="admin">관리자</option>
                            <option value="user">사용자</option>
                        </select>
                        </div>
                    </div>
             
                </div>


<h1>🟪 타이틀 영역</h1>

<div class="title-menu">
    <!-- 왼쪽 영역 -->
    <div class="title-main">
        <img src="https://campus.megastudy.net/admin/image/dot_icon03.png" alt="아이콘">
        <span>해당 메뉴명이 들어가요</span>
    </div>
    <!-- 오른쪽 영역 -->

</div>

<div class="title-sub">
    <img src="https://campus.megastudy.net/admin/image/dot_icon04.png" alt="아이콘">
    <span>해당 서브 메뉴명이 들어가요</span>
</div>


                <h1>🟪 버튼 영역<br> @/components/guide/CommonButton.vue <br> @import "base/button"</h1>
                <div>
                    <h2>🟣 기본 / active</h2>
                
                    <div class="btn-box">
                        <CommonButton size="large">버튼 (Primary, large)</CommonButton>
                        <CommonButton variant="secondary" size="large">버튼 (secondary, large)</CommonButton>
                        <CommonButton variant="danger" size="large">버튼 (danger, large)</CommonButton>
                        <CommonButton variant="outline" size="large">버튼 (outline, large)</CommonButton>
                    </div>
                    <div class="btn-box">
                        <CommonButton>버튼 (Primary, Medium)</CommonButton>
                        <CommonButton variant="secondary">버튼 (secondary, Medium)</CommonButton>
                        <CommonButton variant="danger">버튼 (danger, Medium)</CommonButton>
                        <CommonButton variant="outline">버튼 (outline, Medium)</CommonButton>
                    </div>
                    <div class="btn-box">
                        <CommonButton size="small">버튼 (Primary, small)</CommonButton>
                        <CommonButton variant="secondary" size="small">버튼 (secondary, small)</CommonButton>
                        <CommonButton variant="danger" size="small">버튼 (danger, small)</CommonButton>
                        <CommonButton variant="outline" size="small">버튼 (outline, small)</CommonButton>
                    </div>

                    <h2>🟣 disabled</h2>
                    <div class="btn-box">
                        <CommonButton :disabled="true">버튼 (Primary, Medium, disabled)</CommonButton>
                        <CommonButton variant="secondary" :disabled="true">버튼 (secondary, Medium, disabled)</CommonButton>
                        <CommonButton variant="danger" :disabled="true">버튼 (danger, Medium, disabled)</CommonButton>
                        <CommonButton variant="outline" :disabled="true">버튼 (outline, Medium, disabled)</CommonButton>
                    </div>

                    <h2>🟣 icon</h2>
                    <div class="btn-box">
                        <CommonButton variant="secondary" size="small" iconPosition="right">
                            다운로드
                            <template #icon>
                                <i class="fas fa-file"></i>
                            </template>
                        </CommonButton>

                        <CommonButton variant="secondary" size="small" iconPosition="right">
                            엑셀 다운로드
                            <template #icon>
                                <i class="fas fa-file-excel"></i>
                            </template>
                        </CommonButton>

                        <CommonButton variant="danger" size="medium">
                            <template #icon>
                                <i class="fas fa-trash-alt"></i>
                            </template>
                            삭제하기
                        </CommonButton>

                        <CommonButton variant="danger" iconPosition="right">
                            경고 메시지
                            <template #icon>
                                <i class="fas fa-exclamation-triangle"></i>
                            </template>
                        </CommonButton>

                        <CommonButton variant="outline" iconPosition="right">
                            다음 단계
                            <template #icon>
                                <i class="fas fa-arrow-right"></i>
                            </template>
                        </CommonButton>

                        <CommonButton variant="secondary" size="small">
                            <template #icon>
                                <i class="fas fa-cog"></i>
                            </template>
                        </CommonButton>
                    </div>

                    <h2>🟣 ex</h2>
                    <div class="btn-box">
                    </div>
                </div>

                <h1>레이어 팝업</h1>
                <div class="btn-box">
                    <CommonButton variant="secondary" @click.prevent="showPopup('popup1')">
                        팝업 1 열기
                    </CommonButton>
                    
                    <CommonButton variant="secondary" @click.prevent="showPopup('popup2')">
                        팝업 2 열기
                    </CommonButton>
                </div> 

                <PopupLayer
                    :visible="popups.popup1"
                    title="팝업 제목이 들어가요1"
                    @close="hidePopup('popup1')"
                >
                    <p>팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.
                        팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.
                    </p>
                </PopupLayer>

                <PopupLayer
                    :visible="popups.popup2"
                    title="팝업 제목이 들어가요2"
                    @close="hidePopup('popup2')"
                >
                    <p>이곳은 두 번째 팝업 내용입니다.</p>
                </PopupLayer>

                <h1>페이징 영역</h1>
                <BasePagination
                    :current-page="currentPage"
                    :page-numbers="visiblePages"
                    :has-previous-page-set="hasPrev"
                    :has-next-page-set="hasNext"
                    :previous-page-set-end="prevSetEnd"
                    :next-page-set-start="nextSetStart"
                    @page-changed="handlePageChange"
                />
            </div>
        </div>
    </div>
</template>

<script>
import AdminSidebar from '@/views/guide/AdminSidebar.vue'
import AdminHeader from '@/views/guide/AdminHeader.vue'

import CommonButton from '@/components/guide/CommonButton.vue';
import PopupLayer from '@/components/guide/PopupLayer.vue';
import BasePagination from "@/components/guide/BasePagination.vue";

export default {
    name: "AdminGuide",
    components: {
        AdminSidebar,
        AdminHeader,
        CommonButton,
        PopupLayer,
        BasePagination 
    },
    props: {
        userName: {
            type: String,
            // required: true,
            default: '박은영'
        },
        userRole: {
            type: String,
            default: '관리자'
        },
        loginTime: {
            type: String,
            // required: true,
            default: function () {
                const now = new Date();
                const year = now.getFullYear();
                const month = String(now.getMonth() + 1).padStart(2, '0');
                const day = String(now.getDate()).padStart(2, '0');
                const hours = String(now.getHours()).padStart(2, '0');
                const minutes = String(now.getMinutes()).padStart(2, '0');
                return `${year}-${month}-${day} ${hours}:${minutes}`;
            }
        },

        type: {
            type: String,
            default: 'button'
        },
        variant: {
            type: String,
            default: 'primary' // primary, secondary, danger, outline
        },
        size: {
            type: String,
            default: 'medium' // small, medium, large
        },
        customClass: {
            type: String,
            default: ''
        },
        disabled: {
            type: Boolean,
            default: false
        },
        iconPosition: {
            type: String,
            default: 'left',
            validator: value => ['left', 'right'].includes(value)
        },
    },
    data() {
        return {
            isFixed: false,
            menuData: [],
            popups: {
                popup1: false,
                popup2: false
            },
            campusList: [
                [
                    {
                        name: 'INTRO',
                        code: 'INTRO',
                        detail: 'INTRO',
                        isCurrent: true,
                        isIntro: true
                    }
                ],
                [
                    { name: '강남 재수학원', code: 'CD0001', detail: 'CD0206' },
                    { name: '서초 재수학원', code: 'CD0004', detail: 'CD0208' },
                    { name: '강북 재수학원', code: 'CD0005', detail: 'CD0210' },
                    { name: '노량진 재수학원', code: 'CD0006', detail: 'CD0211' },
                    { name: '신촌 재수학원', code: 'CD0036', detail: 'CD0213' },
                    { name: '송파 재수학원', code: 'CD0275', detail: 'CD0276' },
                    { name: '부천 재수학원', code: 'CD0250', detail: 'CD0251' },
                    { name: '분당 재수학원', code: 'CD0252', detail: 'CD0253' },
                    { name: '일산 재수학원', code: 'CD0254', detail: 'CD0255' },
                    { name: '평촌 재수학원', code: 'CD0179', detail: 'CD0217' },
                    { name: '최상위권 전문관', code: 'CD0178', detail: 'CD0220' },
                    { name: '자연계 전문관', code: 'CD0039', detail: 'CD0243' },
                    { name: '안성 기숙학원', code: 'CD0279', detail: 'CD0280' }
                ],
                [
                    { name: '성북 재학학원', code: 'CD0098', detail: 'CD0214' },
                    { name: '테스트 학원', code: 'CD0277', detail: 'CD0278' }
                ]
            ],
            // 🔍 SearchArea용 폼 데이터 추가
            form: {
                username: '',
                bio: '',
                job: '',
                grade: 'admin',

                agree: false,
                gender: '',

                fileName: '',





                
                kind: '',
                ccode: '',
                ccode2: '',
                search_mode: '',
                keyfield: 'mn_name',
                keyword: '',
                sdate: '',
                edate: ''
            },
            // success: {
            //     total: 1740,
            //     inTime: 1739,
            //     outOfTime: 1
            // },
            // failure: 196,
            // tabList: [
            //     { label: '전체(46)', url: 'admin_list.asp', active: true },
            //     { label: '대기(3)', url: 'admin_list.asp?mode=N', active: false },
            //     { label: '완료(43)', url: 'admin_list.asp?mode=Y', active: false }
            // ],
            // selectedCampus: '',
            // selectedMenu: '',

            // menuList: ['메뉴1', '메뉴2', '메뉴3'], // 필요 시 API 연동 또는 수동입력

            // paging
            currentPage: 1,
            allPages: Array.from({ length: 100 }, (_, i) => i + 1),
            pageSize: 10,

            //button

        };
    },
    created() {
        const menus = [
            { seqGroup: 1, menuName1: "메뉴명1", menuName2: "서브메뉴명1-1", link: "/admin/menu1_1" },
            { seqGroup: 1, menuName1: "메뉴명1-2", menuName2: "서브메뉴명1-2", link: "/admin/menu1_2" },
            { seqGroup: 2, menuName1: "메뉴명2", menuName2: "서브메뉴명2-1", link: "/admin/menu2_1" },
            { seqGroup: 2, menuName1: "메뉴명2-2", menuName2: "서브메뉴명2-2", link: "/admin/menu2_2" },
        ];
        this.menuData = this.convertMenuData(menus);
    },

    computed: {

        // button
        variantClass() {
            return `btn-${this.variant}`;
        },
        sizeClass() {
            return `btn-size-${this.size}`;
        },

		activeClass() {
			return {
				'is-active': this.isActive
			};
		},

        // paging
        visiblePages() {
            const start = Math.floor((this.currentPage - 1) / this.pageSize) * this.pageSize;
            return this.allPages.slice(start, start + this.pageSize);
        },
        hasPrev() {
            return this.currentPage > this.pageSize;
        },
        hasNext() {
            return this.currentPage <= this.allPages.length - this.pageSize;
        },
        prevSetEnd() {
            return Math.max(this.currentPage - this.pageSize, 1);
        },
        nextSetStart() {
            return this.currentPage + this.pageSize;
        },


    },

    methods: {
        handleFileChange(event) {
            const file = event.target.files[0];
            this.fileName = file ? file.name : '';
        },


        // button
		toggleActive() {
			this.isActive = !this.isActive;
		},

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
        },

        // 🔍 SearchArea
        resetForm: function () {
            this.form = {
                kind: '',
                ccode: '',
                ccode2: '',
                search_mode: '',
                keyfield: 'mn_name',
                keyword: '',
                sdate: '',
                edate: ''
            };
        },
        setDateRange: function (type, offset) {
            const today = new Date();
            let start = new Date();

            if (type === 'ww') start.setDate(today.getDate() + 7 * offset);
            else if (type === 'm') start.setMonth(today.getMonth() + offset);

            const formatDate = (date) =>
                date.toISOString().split('T')[0];

            this.form.sdate = formatDate(start);
            this.form.edate = formatDate(today);
        },

        handlePageChange(page) {
            this.currentPage = page;
        },
    }
};
</script>

<style lang="scss" scoped>
    h1{
        font-size:14px;
        color:#333;
        margin:30px 0 10px;
        padding:10px;
        background:rgba(82, 82, 82, 0.1);
    }
    h2{
        font-size:12px;
        color:#444;
        margin:15px 0 10px;
        padding:5px;
        background:rgba(145, 10, 255, 0.1);
    }
    .form-group{
        margin-bottom:10px;
    }
    .hr{
        margin:0;padding:0;border:0;
        width:100%;
        height:1px;
        margin:10px 0;
        background:#ccc;
    }
</style>