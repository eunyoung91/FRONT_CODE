<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="메가스터디학원, 재수학원, 입시, 재수기숙학원, 메가스터디러셀, 러셀학원, 러셀기숙학원, 메가스터디, 대입, N수, 모의고사, 6월모평, 9월모평, 수능, 오메가, 더프, 퀄, 서바이벌, 2026대입, 대입전략, 고3, 수험생, 전국" />
    <meta name="description" content="전국 러셀/메가스터디학원 동시 시행, 미리 경험하는 실전 수능 전국 대단위 실전 모의고사!"/>
    <meta property="og:type" content="website">
    <meta property="og:title" content="메가스터디학원">
    <meta property="og:description" content="전국 러셀/메가스터디학원 동시 시행, 미리 경험하는 실전 수능 전국 대단위 실전 모의고사!">
    <meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_jdsm/index.asp">
    <%
        pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2025/2025_jdsm/thumb.jpg'>"
        response.write pageOgMeta
    %>
    <!-- #Include Virtual = "/library/include/reload/favicon.asp" -->
    <title><%=gMGC_Campus_Title%></title>
    <!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
    <!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
    <link rel="stylesheet" type="text/css" href="/library/css/style.css" />
    <link rel="stylesheet" type="text/css" href="/library/css/amazingslider.css">
    <link rel="stylesheet" type="text/css" href="https://mcampus.megastudy.net/asset/css/slick.css">

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!-- #include virtual="/public/jquery.asp" -->
    <!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
    <link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
    <link rel="stylesheet" type="text/css" href="web.css?v=3"><!-- 2025 exam advisor -->

    <script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/public/js/intro.js"></script>
    <script src="/public/js/TweenMax.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script language="JavaScript" src="/public/jquery/slick.js"></script>
    <!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
    <script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
    <script src="/public/js/amazingslider/amazingslider.js"></script>
</head>
<body>
<div id="wrapper"> 
    <!--  최상단메뉴//--> 
    <!--#include virtual="/library/include/common/top.asp" --> 
    <!--  //최상단메뉴-->
    
    <div id="header" class="<%=GetCampusColorType()%>">     
        <!--상단 학원로고 및 선택 탭//  --> 
        <!--#include virtual="/library/include/common/top_campus_tab.asp" --> 
        <!-- //상단 학원로고 및 선택 탭 --> 
        
        <!--  상단 대메뉴//--> 
        <!--#include virtual="/library/include/common/top_campus_detail_menu.asp" --> 
        <!-- //상단 대메뉴 --> 
    </div>
    <!-- // header -->

    <div id="container">
        <div id="jdsmWrap" class="jdsm_wrap">

            <!-- visual title  -->
            <div class="visual_title">
                <div class="visual_wrap">
                    <div class="tit_container">
                        <img class="txt1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/visual_txt1.png" alt="미리 경험하는 실전 수능">
                        <img class="txt2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/visual_txt2.png" alt="전대실모">
                        <img class="txt3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/visual_txt3.png" alt="메가스터디 전국 대단위 실전 모의고사">
                    </div>
                    <div class="bg_container">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/visual_bg.jpg" alt="">
                    </div>
                </div>
            </div>
            <!-- //visual title  -->

            <!-- fixed btn -->
            <div class="fix_btn">
                <a href="#schol_info">
                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/ss_banner.jpg" alt="전대실모 성적 우수자 장학금 안내">
                </a>
            </div>
            <!-- //fixed btn -->

            <!-- contents -->
            <div class="jdsm_contents">
                <div class="cont1">
                    <div class="typing txt1">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con01_txt01.png" alt="‘실전’ 준비는 단순히 문제를 푸는데 그치지 않습니다.">
                    </div>
                    <div class="typing txt2">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con01_txt02.png" alt="수능과 같은 ‘실전 모의고사’">
                    </div>
                    <div class="typing logo">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con01_img01.png" alt="전대실모">
                    </div>
                </div>
                <div class="cont2">
                    <div class="inner">
                        <div class="tit_wrap" data-aos="fade">
                            <p class="sub_txt">진정한 실전 연습, 완벽한 수능 대비</p>
                            <h2 class="tit_txt">전국 수험생과 경쟁하는<br>실전 모의고사</h2>
                        </div>
                        <div class="ct_wrap">
                            <ul class="ct_flex">
                                <li>
                                    <img data-aos="fade-down" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con02_img01.png" alt="수능 실전 시뮬레이션" />
                                </li>
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con02_img02.png" alt="고퀄리티 문항" />
                                </li>
                                <li>
                                    <img data-aos="fade-down" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con02_img03.png" alt="수능 실전 강화 콘텐츠 제공" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="cont3">
                    <div class="inner">
                        <div class="tit_wrap" data-aos="fade">
                            <p class="sub_txt">전국 러셀X메가스터디학원 재원생과<br>같은 날짜, 같은 시간 응시</p>
                            <h2 class="tit_txt">전국 경쟁자와 함께하는<br>수능 실전 시뮬레이션</h2>
                        </div>
                        <div class="sub_tit_wrap">
                            <h3 class="sub_tit" data-aos="fade-up">
                                총 2회 시행
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con03_sub_tit.png" alt="" />
                            </h3>
                        </div>
                        <div class="ct_wrap">
                            <ul class="ct_flex">
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con03_img01.png" alt="6월 모평 대비 - 5.14(수)" />
                                </li>
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con03_img02.png" alt="대학수학능력시험 대비 - 9.18(목)" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="cont4">
                    <div class="inner">
                        <div class="tit_wrap" data-aos="fade">
                            <p class="sub_txt">내부&외부 석/박사 전문 연구진과<br>메가스터디 선생님의</p>
                            <h2 class="tit_txt">7단계 정밀 출제&middot;검수 시스템으로<br>고퀄리티 문항 출제</h2>
                        </div>
                        <div class="ct_wrap">
                            <div class="step_wrap">
                                <ul class="step_box v1">
                                    <li>
                                        <img data-aos="fade-down" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step01.png" alt="step1 최신 출제 경향 분석
                                        및 출제 방향 기획" />
                                    </li>
                                    <li>
                                        <img data-aos="fade-down" data-aos-delay="200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step03.png" alt="step3 문항 선별 및 수정 보완" />
                                    </li>
                                    <li>
                                        <img data-aos="fade-down" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step05.png" alt="step5 외부 교육 전문 연구진 검토" />
                                    </li>
                                    <li>
                                        <img data-aos="fade-down" data-aos-delay="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step07.png" alt="step7 메가스터디 선생님들의 파이널 검토" />
                                    </li>
                                </ul>
                                <div class="img_area">
                                    <img data-aos="fade" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_img01.png" alt="" />
                                </div>
                                <ul class="step_box v2">
                                    <li>
                                        <img data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step02.png" alt="step2 내부&외부 연구진의 문항 개발" />
                                    </li>
                                    <li>
                                        <img data-aos="fade-up" data-aos-delay="200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step04.png" alt="step4 내부 연구진 검토" />
                                    </li>
                                    <li>
                                        <img data-aos="fade-up" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step06.png" alt="step6 수험생/대학생 대상 파일럿 테스트" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div> 
                </div>
                <div class="cont5">
                    <div class="inner">
                        <div class="tit_wrap" data-aos="fade">
                            <p class="sub_txt">해설강의와 성적 분석 리포트,<br>부가 복습 자료까지!</p>
                            <h2 class="tit_txt">완벽한 실력 완성을 위한<br>수능 실전 강화 콘텐츠 제공</h2>
                        </div>
                        <div class="ct_wrap slide_wrap" data-aos="fade-up">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con05_img01.png" alt="성적분석 / 해설강의 / 부가 콘텐츠 제공" />

                            <div class="report_slider">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con05_slide01.png" alt="01 종합 분석" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con05_slide02.png" alt="02 과목별 상세 분석" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con05_slide03.png" alt="03 진학 가능 대학 분석" />
                                </div>
                            </div>
                            <script>
                                $(function(){
                                    var $slider = $(".report_slider");
    
                                    $slider.slick({
                                        dots: true,
                                        arrows: false,
                                        slidesToScroll: 1,
                                        autoplay: true,
                                        autoplaySpeed: 3000,
                                        speed: 500
                                    });
    
                                    $(".report_slider").on("afterChange", function() {
                                        $slider.slick("slickPlay");
                                    });
                                });
                            </script>
                        </div>
                    </div>
                </div>
                <div class="cont6" id="schol_info">
                    <div class="inner">
                        <div class="tit_wrap" data-aos="fade">
                            <p class="sub_txt">전국 최상위권을 위한 특별 혜택,</p>
                            <h2 class="tit_txt">전대실모 성적 우수자 장학금 안내</h2>
                            <p class="info_txt">
                                쌓아온 노력은 반드시 성과로 이어집니다.<br>
                                전국 대단위 실전 모의고사에서 우수한 성적을 거둔<br>
                                수험생들의 성과를 인정하고 격려하기 위해 장학금을 지급합니다.
                            </p>
                        </div>
                        <div class="sub_tit_wrap">
                            <h3 class="sub_tit" data-aos="fade-up">
                                장학금 금액
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_sub_tit01.png" alt="" />
                            </h3>
                        </div>
                        <div class="ct_wrap">
                            <ul class="ct_flex">
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_img01.png" alt="전국 1등 100만원" />
                                </li>
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_img02.png" alt="전국 2등 - 50만원" />
                                </li>
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_img03.png" alt="전국 3등 - 30만원" />
                                </li>
                            </ul>
                        </div>
                        <div class="sub_tit_wrap">
                            <h3 class="sub_tit" data-aos="fade-up">
                                선정 기준
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_sub_tit02.png" alt="" />
                            </h3>
                        </div>
                        <div class="img_area">
                            <img data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_img04.png" alt="선정 기준" />
                        </div>
                    </div>
                </div>
                <div class="bottom_bnr">
                    <div class="inner">
                        <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/bottom_bnr_txt.png" alt="메가스터디학원이 제공하는 확실한 합격 솔루션! 더 성공적인 결과를 만듭니다" />
                    </div>
                </div>
            </div>
            <!-- //contents -->
        </div>
    </div>

    <!-- container End --> 
</div>
<script src="./ui.js?v=2"></script>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
