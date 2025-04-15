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

                <h1>버튼 영역</h1>

                <div class="btn-box">
                    <div>
                        성공 : <b class="num">{{ success.total }}</b>건
                        (업무시간 내 : <b class="num">{{ success.inTime }}</b>건
                        &ensp;/&ensp; 업무시간 외 : <b class="num">{{ success.outOfTime }}</b>건)
                        &ensp;|&ensp; 실패 : <b class="num">{{ failure }}</b>건
                    </div>
                    <div>
                        <button type="button" @click="downloadExcel" class="btn-01">업무시간 외 접속 내역</button>
                    </div>
                </div>


                <div class="btn-box">
                    <div>
                        <button type="button" @click="checkReqDelete" class="btn-01">관리자삭제요청</button>
                    </div>
                    <div>
                        <button type="button" @click="goWrite" class="btn-01">글쓰기</button>
                    </div>
                </div>

                <div class="btn-box center">
                    <div>
                        <button type="button" @click="save" class="btn-01">저장</button>
                    </div>
                    <div>
                        <button type="button" @click="cancel" class="btn-01">취소</button>
                    </div>
                </div>

                <div class="btn-box">
                    <div>
                        <span
                        v-for="tab in tabList"
                        :key="tab.label"
                        class="btn-01"
                        @click="navigate(tab.url)"
                        >
                        <button type="button" :class="{ overed: tab.active }"><b>{{ tab.label }}</b></button>
                        </span>
                    </div>
                    <div>
                        <button type="button" @click="downloadExcel" class="btn-01">
                            <img
                            src="https://campus.megastudy.net/admin/image/icon_excel.png"
                            alt="엑셀 아이콘"
                            style="vertical-align: bottom"
                            height="14"
                            />
                            엑셀 다운로드
                        </button>

                        <button type="button" @click="goNew" class="btn-01">신규등록</button>
                    </div>
                </div>

                <div class="btn-box">
                    <div>
                        <button type="button" @click="moveToWrite" class="btn-01">신규등록</button>
                        <button type="button" @click="saveOrder" class="btn-01">순서저장</button>
                        <button type="button" @click="saveUseNew('Y')" class="btn-01 btnNewIcon">New등록</button>
                        <button type="button" @click="saveUseNew('N')" class="btn-01 btnNewIcon">New해제</button>
                        <button type="button" @click="saveUseView('Y')" class="btn-01 btnExp">메뉴노출</button>
                        <button type="button" @click="saveUseView('N')" class="btn-01 btnExp">메뉴비노출</button>
                        <button type="button" @click="saveDelete" class="btn-01 btnDel">메뉴삭제</button>
                    </div>

                    <div>
                        <select v-model="selectedCampus">
                            <option value="">--캠퍼스선택--</option>
                            <option
                                v-for="campus in campusList2"
                                :key="campus.value"
                                :value="campus.value"
                            >
                                {{ campus.label }}
                            </option>
                        </select>
                        <select v-model="selectedMenu">
                            <option value="">선택</option>
                            <option v-for="menu in menuList" :key="menu" :value="menu">
                                {{ menu }}
                            </option>
                        </select>
                    </div>
                </div>

                <h1>학원리스트 영역</h1>

                <div class="aca-list-area">
                    <div
                        class="aca-list"
                        v-for="(group, groupIndex) in campusList"
                        :key="`group-${groupIndex}`"
                    >
                        <span>&bull;</span>
                        <div>
                            <template v-for="(campus, campusIndex) in group">
                                <a
                                    v-if="campus.isIntro"
                                    :key="`intro-${groupIndex}-${campusIndex}`"
                                    :href="`?campuscodedetail=${campus.detail}&campuscode=${campus.code}`"
                                    class="campus_current introChk"
                                >
                                    {{ campus.name }}
                                </a>

                                <template v-else>
                                    <a
                                        :key="`campus-${groupIndex}-${campusIndex}`"
                                        :href="`?campuscodedetail=${campus.detail}&campuscode=${campus.code}`"
                                    >
                                        {{ campus.name }}
                                    </a>
                                    <span
                                        v-if="campusIndex !== group.length - 1"
                                        class="divider"
                                        :key="`divider-${groupIndex}-${campusIndex}`"
                                    > | </span>
                                </template>
                            </template>
                        </div>
                    </div>
                </div>

                <h1>검색 영역</h1>
                <div class="search-area">
                    <div class="search-area-inner">
                        <div>
                            <div>&bull; 분류</div>
                            <div>
                                <select v-model="form.kind">
                                    <option value="">전체</option>
                                    <option value="3">최종 관리자</option>
                                    <option value="1">권한 관리자</option>
                                    <option value="2">일반 관리자</option>
                                </select>
                            </div>
                        </div>

                        <div>
                            <div>&bull; 소속</div>
                            <div>
                                <select v-model="form.ccode">
                                    <option value="">전체</option>
                                    <option value="B">본사</option>
                                    <option value="CD0001">강남</option>
                                    <option value="CD0004">서초</option>
                                    <option value="CD0005">강북</option>
                                    <option value="CD0006">노량진</option>
                                    <option value="CD0036">신촌</option>
                                    <option value="CD0275">송파</option>
                                    <option value="CD0179">평촌</option>
                                    <option value="CD0098">성북</option>
                                    <option value="CD0039">자연계 전문관</option>
                                    <option value="CD0178">최상위권 전문관</option>
                                    <option value="CD0279">안성기숙</option>
                                    <option value="CD0250">부천</option>
                                    <option value="CD0252">분당</option>
                                    <option value="CD0254">일산</option>
                                    <option value="CD0262">대입컨설팅센터</option>
                                    <option value="CD0281">바른길 입시컨설팅</option>
                                    <option value="CD0277">테스트 학원</option>
                                </select>
                            </div>
                        </div>

                        <div>
                            <div>&bull; 구분</div>
                            <div>
                                <select v-model="form.ccode2">
                                    <option value="">전체</option>
                                    <option value="nsu">재종</option>
                                    <option value="jaehak">연합</option>
                                </select>
                            </div>
                        </div>

                        <div>
                            <div>&bull; 승인상태</div>
                            <div>
                                <select v-model="form.search_mode">
                                    <option value="">전체</option>
                                    <option value="N">대기</option>
                                    <option value="Y">완료</option>
                                </select>
                            </div>
                        </div>

                        <div>
                            <div>&bull; 검색</div>
                            <div>
                                <select v-model="form.keyfield">
                                    <option value="mn_name">이름</option>
                                    <option value="mn_id">아이디</option>
                                </select>
                            </div>
                            <div>
                                <input
                                    v-model="form.keyword"
                                    type="text"
                                    class=""
                                    size="20"
                                    @keypress.enter.prevent="formSubmit('sbtn', 1)"
                                />
                            </div>
                            <div>
                                <button type="button" class="btn-01" @click="formSubmit('sbtn', 1)">검색</button>
                                <button type="button" class="btn-01" @click="resetForm">취소</button>
                            </div>
                        </div>

                        <div>
                            <div>&bull; 기간</div>
                            <div>
                                <button type="button" class="btn-01" @click="setDateRange('ww', -1)">1주일</button>
                                <button type="button" class="btn-01" @click="setDateRange('m', -1)">1달</button>
                                <button type="button" class="btn-01" @click="setDateRange('m', -2)">2달</button>
                                <button type="button" class="btn-01" @click="setDateRange('m', -3)">3달</button>
                                <button type="button" class="btn-01" @click="setDateRange('m', -6)">최근 6개월</button>
                                <input v-model="form.sdate" type="date" class="" />
                                ~
                                <input v-model="form.edate" type="date" class="" />
                            </div>
                        </div>

                    </div>
                </div>


                <h1>레이어 팝업</h1>
                <button type="button" class="btn-01" @click.prevent="showPopup('popup1')">팝업 1 열기</button>
                <button type="button" class="btn-01" @click.prevent="showPopup('popup2')">팝업 2 열기</button>

                <PopupLayer
                    :visible="popups.popup1"
                    title="팝업 제목이 들어가요1"
                    @close="hidePopup('popup1')"
                >
                    <p>팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.
                        팝업 1의 내용입니다.팝업 1의 내용입니다.팝업 1의 내용입니다.
                    </p>
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

                <h1>텍스트 박스 영역</h1>
                <div class="text-box">
                    <strong>텍스트 박스 영역텍스트 박스 영역</strong>
                    <div>① 텍스트 박스 영역 1</div>
                    <div>② 텍스트 박스 영역 2</div>
                    <div>③ 텍스트 박스 영역 3</div>
                </div>


                <h1>테이블 영역</h1>
                <div class="table-area">
                    <form @submit.prevent="">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="type01">
                            <colgroup>
                                <col style="width:4%;" />
                                <col style="width:auto;" span="10" />
                            </colgroup>
                            <tr>
                                <th><input type="checkbox" id="codesAll" onclick="codesAllClicked()" ></th>
                                <th>번호</th>
                                <th>분류</th>
                                <th>소속</th>
                                <th>이름</th>
                                <th>아이디</th>
                                <th>
                                <select id="req_reason" name="req_reason">
                                    <option value="" selected>전체</option>
                                    <option value="N" >신규등록</option>
                                    <option value="M" >부서이동</option>
                                    <option value="D" >관리자삭제</option>                                                    
                                </select>
                                </th>
                                <th>요청일</th>
                                <th>승인일</th>
                                <th>
                                    <select id="" name="">
                                        <option value="" selected>전체</option>
                                        <option value="" >대기</option>
                                        <option value="" >정상</option>
                                        <option value="" >차단</option>                                                 
                                        <option value="" >삭제</option>                                                 
                                    </select>
                                </th>
                                <th>최종접속(성공)</th>
                            </tr>
                            
                            <tr>
                                <td>
                                
                                    <input type="hidden" name="hdAppState" value="N">
                                </td>
                                <td>64</td>
                                <td><b class="f_blue">일반 관리자</b></td>
                                <td>본사</td>
                                <td><a href="admin_write.asp?flag=modify&code=753&refer=%2Fadmin%2Fsystem%2Fadmin%5Flist%2Easp%3F"><b class="f_orange"><u>권**</u></b></a></td>
                                <td><b>sck*****</b></td>
                                <td>신규등록<input type="hidden" name="hdAppDInfo" value=""></td>
                                <td>2024-10-29</td>
                                <td>대기</td>
                                <td>정상</td>
                                <td></td>
                            </tr>
                            
                            <tr class="useview">
                                <td>
                                
                                    <input type="hidden" name="hdAppState" value="Y">
                                </td>
                                <td>63</td>
                                <td><b class="f_blue">권한 관리자</b></td>
                                <td>본사</td>
                                <td><a href="admin_write.asp?flag=modify&code=752&refer=%2Fadmin%2Fsystem%2Fadmin%5Flist%2Easp%3F"><b class="f_orange"><u>박**</u></b></a></td>
                                <td><b>eyp*****</b></td>
                                <td>신규등록<input type="hidden" name="hdAppDInfo" value=""></td>
                                <td>2024-10-11</td>
                                <td>2024-10-11</td>
                                <td>정상</td>
                                <td><a href='/admin/system/admin_log.asp?keyfield=mn_id&keyword=eypark73' class='f_blue'><font color=blue>2024-11-20</font></a></td>
                            </tr>
                            
                        
                        </table>
                    </form>
                </div>

                <h1>페이징 영역</h1>

                <template>
                <BasePagination
                    :current-page="currentPage"
                    :page-numbers="visiblePages"
                    :has-previous-page-set="hasPrev"
                    :has-next-page-set="hasNext"
                    :previous-page-set-end="prevSetEnd"
                    :next-page-set-start="nextSetStart"
                    @page-changed="handlePageChange"
                />
                </template>


            </div>
        </div>

    </div>
</template>

<script>

import AdminSidebar from './AdminSidebar.vue'
import AdminHeader from './AdminHeader.vue'
import PopupLayer from '@/components/guide/PopupLayer.vue';
import BasePagination from "@/components/guide/BasePagination.vue";

export default {
    name: "AdminGuide",
    components: {
        AdminSidebar,
        AdminHeader,
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
        }
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
                kind: '',
                ccode: '',
                ccode2: '',
                search_mode: '',
                keyfield: 'mn_name',
                keyword: '',
                sdate: '',
                edate: ''
            },
            success: {
                total: 1740,
                inTime: 1739,
                outOfTime: 1
            },
            failure: 196,
            tabList: [
                { label: '전체(46)', url: 'admin_list.asp', active: true },
                { label: '대기(3)', url: 'admin_list.asp?mode=N', active: false },
                { label: '완료(43)', url: 'admin_list.asp?mode=Y', active: false }
            ],
            selectedCampus: '',
            selectedMenu: '',
            campusList2: [
                { value: 'INTRO', label: '인트로페이지' },
                { value: 'CD0206', label: '강남 재수학원' },
                { value: 'CD0210', label: '강북 재수학원' },
                // ...생략
            ],
            menuList: ['메뉴1', '메뉴2', '메뉴3'], // 필요 시 API 연동 또는 수동입력

            currentPage: 1,
            pageSize: 10,

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
        // totalPages() {
        //     return Math.ceil(this.teachers.length / this.pageSize);
        // },
        // visiblePages() {
        //     const groupSize = 5;
        //     const start = Math.floor((this.currentPage - 1) / groupSize) * groupSize + 1;
        //     return Array.from({ length: groupSize }, (_, i) => start + i).filter(
        //     (page) => page <= this.totalPages
        //     );
        // },
        // hasPrev() {
        //     return this.visiblePages[0] > 1;
        // },
        // hasNext() {
        //     return this.visiblePages[this.visiblePages.length - 1] < this.totalPages;
        // },
        // prevSetEnd() {
        //     return this.visiblePages[0] - 1;
        // },
        // nextSetStart() {
        //     return this.visiblePages[this.visiblePages.length - 1] + 1;
        // },
    },

    methods: {
        downloadExcel() {
            // 엑셀 다운로드 로직
            alert('엑셀 다운로드');
        },
        checkReqDelete() {
            // 삭제 요청 처리
        },
        goWrite() {
            // 글쓰기 이동
        },
        save() {
            // 저장 처리
        },
        cancel() {
            // 취소 처리
        },
        navigate(url) {
            window.location.href = url;
        },
        goNew() {
            // window.location.href = 'admin_write.asp?flag=new&refer=%2Fadmin%2Fsystem%2Fadmin%5Flist%2Easp%3F';
        },
        moveToWrite() {
        // 신규등록 이동
        },
        saveOrder() {
        // 순서 저장 처리
        },
        // saveUseNew(flag) {
            // // New 등록/해제 처리
        // },
        // saveUseView(flag) {
            // // 메뉴 노출/비노출 처리
        // },
        saveDelete() {
        // 메뉴 삭제 처리
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

        // 🔍 SearchArea에서 가져온 메서드들 추가
        // formSubmit: function (btnId, pageNo) {
        //     console.log('🔍 검색 실행:', this.form);
        // },
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

        handlePageChange(newPage) {
            this.currentPage = newPage;
            window.scrollTo({ top: 0, behavior: "smooth" });
        },



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
</style>