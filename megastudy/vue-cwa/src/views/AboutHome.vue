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

                <div class="title-menu">
                    <div class="title-main">
                        <img src="https://campus.megastudy.net/admin/image/dot_icon03.png" alt="아이콘">
                        <span>회원 현황 (금일 : <b>2025-04-07</b> 기준)</span>
                    </div>
                    <div>
                        <a href="" class="btn-01 ">바로가기</a>
                    </div>
                </div>
                <div class="table-area">
                    <form @submit.prevent="">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="type01">
                            <tbody><tr>
                              <th colspan="3">금일 신규 회원수</th>
                              <th rowspan="2">금일 탈퇴<br> 회원수</th>
                              <th rowspan="2">전체 가입<br> 회원수</th>
                              <th rowspan="2">전체 탈퇴<br> 회원수</th>
                              <th rowspan="2">전체 휴면<br> 회원수</th>
                              <th colspan="4" class="brn">회원별 학년 구분</th>
                              </tr>
                            <tr>
                              <td class="blue">총원</td>
                              <td class="blue">동시가입<br>
                                (회원사이트)</td>
                              <td class="blue">동시가입<br>
                                (고등사이트)</td>
                              <td class="blue">중1~3</td>
                              <td class="blue">고1~3</td>
                              <td class="blue">재수</td>
                              <td class="blue brn">재수이상</td>
                              </tr>
                            <tr>
                              <td><b>197명</b></td>
                              <td><b>0명</b></td>
                              <td><b>0명</b></td>
        
                              <td><b>18명</b></td>
                              <td><b>693,522명</b></td>
                              <td><b>3,097명</b></td>
                              <td><b>0명</b></td>
        
                              <td><b>820명</b></td>
                              <td><b>16,340명</b></td>
                              <td><b>8,910명</b></td>
                              <td class="brn"><b>10명</b></td>
                            </tr>
                            </tbody>
                        </table>
                    </form>
                </div>

                <div class="column-area">
                    <div class="column-2">
                        <div class="title-menu">
                            <div class="title-main">
                                <img src="https://campus.megastudy.net/admin/image/dot_icon03.png" alt="아이콘">
                                <span>최근 등록 공지사항</span>
                            </div>
                            <div>
                                <a href="" class="btn-01 ">바로가기</a>
                            </div>
                        </div>
                        <div class="table-area">
                            <div class="table-wrapper">
                                <form @submit.prevent="">
                                    <table width="455" border="0" cellspacing="0" cellpadding="0" class="type01">
                                        <colgroup>
                                            <col style="width:25%;">
                                            <col style="width:55%;">
                                            <col style="width:20%;">
                                        </colgroup>            
                                        <tbody><tr>
                                        <th width="100">구분</th>
                                        <th>내용</th>
                                        <th width="70" class="brn">날짜</th>
                                        </tr>
                                        <tr><td width="100">송파 재수학원</td><td><a href="/admin/campus/campus_notice_write.asp?flag=modify&amp;code=26471">★ N수 반수반 모집요강 알림 신청 ★</a></td><td width="70" class="brn">2025-04-04</td></tr><tr><td width="100">서초 재수학원</td><td><a href="/admin/campus/campus_notice_write.asp?flag=modify&amp;code=26469">2026 pre N수 반수반 설명회</a></td><td width="70" class="brn">2025-04-04</td></tr><tr><td width="100">일산 재수학원</td><td><a href="/admin/campus/campus_notice_write.asp?flag=modify&amp;code=26466">2026 육군사관학교 입학 설명회</a></td><td width="70" class="brn">2025-04-03</td></tr><tr><td width="100">신촌 재수학원</td><td><a href="/admin/campus/campus_notice_write.asp?flag=modify&amp;code=26464">[윈터스쿨&amp;퍼플(재학) 졸업생] 4월 메가x대...</a></td><td width="70" class="brn">2025-04-02</td></tr><tr><td width="100">분당 재수학원</td><td><a href="/admin/campus/campus_notice_write.asp?flag=modify&amp;code=26463">2026 해군/육군사관학교 입학설명회</a></td><td width="70" class="brn">2025-04-02</td></tr>
                                    </tbody></table>
                                </form>
                            </div>
                        </div>
                    </div>
            
                    <div class="column-2">
                        <div class="title-menu">
                            <div class="title-main">
                                <img src="https://campus.megastudy.net/admin/image/dot_icon03.png" alt="아이콘">
                                <span>관리자 최근 로그인 현황</span>
                            </div>
                            <div>
                                <a href="" class="btn-01 ">바로가기</a>
                            </div>
                        </div>
                        <div class="table-area">
                            <div class="table-wrapper">
                                <form @submit.prevent="">
                                    <table width="455" border="0" cellspacing="0" cellpadding="0" class="type01">
                                        <colgroup>
                                            <col style="width:25%;">
                                            <col style="width:55%;">
                                            <col style="width:20%;">
                                        </colgroup>    
                                        <tbody><tr>
                                            <th width="100">구분</th>
                                            <th>이름(아이디)</th>
                                            <th class="brn">날짜</th>
                                        </tr>
                                        <tr><td class="blue">본사</td><td>박*영(eyp*****)</td><td class="brn">2025-04-07</td></tr><tr><td class="blue">송파</td><td>이*영(y08*****)</td><td class="brn">2025-04-07</td></tr><tr><td class="blue">송파</td><td>윤*혜(yoo*****)</td><td class="brn">2025-04-07</td></tr><tr><td class="blue">본사</td><td>조*영(hak*****)</td><td class="brn">2025-04-07</td></tr><tr><td class="blue">본사</td><td>김*빈(kat*****)</td><td class="brn">2025-04-07</td></tr>
                                        </tbody></table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="column-area">
                    <div class="column-2">
                        <div class="title-menu">
                            <div class="title-main">
                                <img src="https://campus.megastudy.net/admin/image/dot_icon03.png" alt="아이콘">
                                <span>최근 등록 Q&A</span>
                            </div>
                            <div>
                                <a href="" class="btn-01 ">바로가기</a>
                            </div>
                        </div>
                        <div class="table-area">
                            <div class="table-wrapper">
                                <form @submit.prevent="">
                                    <table width="455" border="0" cellspacing="0" cellpadding="0" class="type01">
                                        <colgroup>
                                            <col style="width:25%;">
                                            <col style="width:55%;">
                                            <col style="width:20%;">
                                        </colgroup>   
                                        <tbody><tr>
                                          <th width="100">구분</th>
                                          <th>내용</th>
                                          <th width="70" class="brn">날짜</th>
                                        </tr>
                                       <tr><td class="blue">노량진 재수학원</td><td><a href="/admin/campus/campus_online_view.asp?code=88805&amp;refer=%2Fadmin%2Fcampus%2Fcampus%5Fonline%2Easp">재원증명서 발급 받고 싶습니다</a></td><td class="brn">2025-04-06</td></tr><tr><td class="blue">송파 재수학원</td><td><a href="/admin/campus/campus_online_view.asp?code=88804&amp;refer=%2Fadmin%2Fcampus%2Fcampus%5Fonline%2Easp">검정고시</a></td><td class="brn">2025-04-05</td></tr><tr><td class="blue">신촌 재수학원</td><td><a href="/admin/campus/campus_online_view.asp?code=88803&amp;refer=%2Fadmin%2Fcampus%2Fcampus%5Fonline%2Easp">6모 신청</a></td><td class="brn">2025-04-04</td></tr><tr><td class="blue">신촌 재수학원</td><td><a href="/admin/campus/campus_online_view.asp?code=88802&amp;refer=%2Fadmin%2Fcampus%2Fcampus%5Fonline%2Easp">6모 신청</a></td><td class="brn">2025-04-04</td></tr><tr><td class="blue">신촌 재수학원</td><td><a href="/admin/campus/campus_online_view.asp?code=88801&amp;refer=%2Fadmin%2Fcampus%2Fcampus%5Fonline%2Easp">6모 신청</a></td><td class="brn">2025-04-04</td></tr>
                                      </tbody></table>
                                </form>
                            </div>
                        </div>
                    </div>
            
                    <div class="column-2">
                        <div class="title-menu">
                            <div class="title-main">
                                <img src="https://campus.megastudy.net/admin/image/dot_icon03.png" alt="아이콘">
                                <span>학원별 Q&A 현황</span>
                            </div>
                            <div>
                                <a href="" class="btn-01 ">바로가기</a>
                            </div>
                        </div>
                        <div class="table-area">
                            <div class="table-wrapper">
                                <form @submit.prevent="">
                                    <table width="455" border="0" cellspacing="0" cellpadding="0" class="type01">
                                        <tbody><tr>
                                          <th width="100">학원</th>
                                          <th>건수</th>
                                          <th width="100">학원</th>
                                          <th>건수</th>
                                          <th width="100">기숙학원</th>
                                          <th class="brn">건수</th>
                                        </tr>				
                                          
                                        <tr>
                                          <td class="blue">전체</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N">33건</a></td>
                                          <!--송파재수-->
                                          <td class="blue">송파 재수학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0276">0건</a></td>
                                          <!--양지기숙-->
                                          <td class="blue">최상위권 전문관</td>
                                          <td class="brn"><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0220">3건</a></td>
                                        </tr>
                                        <tr>				
                                          <!--강남재수-->
                                          <td class="blue">강남 재수학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0206">9건</a></td>
                                          <!--부천재수-->
                                          <td class="blue">부천 재수학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0251">0건</a></td>
                                          <!--서초기숙-->
                                          <td class="blue">자연계 전문관</td>
                                          <td class="brn"><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0243">0건</a></td>
                                        </tr>
                                        <tr>				
                                          <!--서초재수-->
                                          <td class="blue">서초 재수학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0208">4건</a></td>
                                          <!--분당재수-->
                                          <td class="blue">분당 재수학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0253">0건</a></td>
                                          <td class="blue"></td><td class="brn"></td>
                                        </tr>
                                        <tr>				
                                          <!--강북재수-->
                                          <td class="blue">강북 재수학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0210">1건</a></td>
                                          <!--일산재수-->
                                          <td class="blue">일산 재수학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0255">1건</a></td>
                                          <td class="blue"></td><td class="brn"></td>
                                        </tr> 
                                        <tr>				
                                          <!--노량진재수-->
                                          <td class="blue">노량진 재수학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0211">0건</a></td>
                                          <!--평촌재수-->
                                          <td class="blue">평촌 재수학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0217">0건</a></td>
                                          <td class="blue"></td><td class="brn"></td>
                                        </tr> 
                                        <tr>				
                                          <!--신촌재수-->
                                          <td class="blue">신촌 재수학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0213">0건</a></td>
                                          <!--성북재학-->
                                          <td class="blue">성북 재학학원</td>
                                          <td><a href="/admin/campus/campus_online.asp?sdate=&amp;edate=&amp;keyfield=1&amp;keyword=&amp;GCode=&amp;reState=1&amp;siteGb=&amp;delYn=N&amp;campuscodedetail=CD0214">6건</a></td>
                                          <td class="blue"></td><td class="brn"></td>
                                        </tr> 
                                      </tbody></table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="column-area">
                    <div class="column-2">
                        <div class="title-menu">
                            <div class="title-main">
                                <img src="https://campus.megastudy.net/admin/image/dot_icon03.png" alt="아이콘">
                                <span>최근 삭제된 Q&A</span>
                            </div>
                            <div>
                                <a href="" class="btn-01 ">바로가기</a>
                            </div>
                        </div>
                        <div class="table-area">
                            <div class="table-wrapper">
                                <form @submit.prevent="">
                                    <table width="455" border="0" cellspacing="0" cellpadding="0" class="type01">
                                        <colgroup>
                                            <col style="width:25%;">
                                            <col style="width:55%;">
                                            <col style="width:20%;">
                                        </colgroup> 
                                        <tbody><tr>
                                        <th width="100">구분</th>
                                        <th>내용</th>
                                        <th width="70" class="brn">날짜</th>
                                        </tr>
                                    <tr><td class="blue">신촌 재수학원</td><td><a href="/admin/campus/campus_online_view.asp?code=88802&amp;refer=%2Fadmin%2Fcampus%2Fcampus%5Fonline%2Easp">6모 신청</a></td><td class="brn">2025-04-04</td></tr><tr><td class="blue">신촌 재수학원</td><td><a href="/admin/campus/campus_online_view.asp?code=88801&amp;refer=%2Fadmin%2Fcampus%2Fcampus%5Fonline%2Easp">6모 신청</a></td><td class="brn">2025-04-04</td></tr><tr><td class="blue">신촌 재수학원</td><td><a href="/admin/campus/campus_online_view.asp?code=88797&amp;refer=%2Fadmin%2Fcampus%2Fcampus%5Fonline%2Easp">학원 입학 관련 문의</a></td><td class="brn">2025-04-03</td></tr><tr><td class="blue">신촌 재수학원</td><td><a href="/admin/campus/campus_online_view.asp?code=88787&amp;refer=%2Fadmin%2Fcampus%2Fcampus%5Fonline%2Easp">6모 신청</a></td><td class="brn">2025-03-31</td></tr><tr><td class="blue">서초 재수학원</td><td><a href="/admin/campus/campus_online_view.asp?code=88780&amp;refer=%2Fadmin%2Fcampus%2Fcampus%5Fonline%2Easp">자기주도반 문의드려요</a></td><td class="brn">2025-03-31</td></tr>
                                    </tbody></table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</template>

<script>
import AdminSidebar from '@/views/guide/AdminSidebar.vue'
import AdminHeader from '@/views/guide/AdminHeader.vue'

export default {
    name: "AdminGuide",
    components: {
        AdminSidebar,
        AdminHeader,
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
    }
};
</script>