<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="" />

<meta name="keywords" content="메가스터디학원, 러셀학원, 재수학원, 입시, 재수기숙학원, 메가스터디러셀, 메가스터디, N수, 대입, 수능, 모의고사, 실전 모의고사" />
<meta name="description" content="검증된 메가스터디학원 입시 전문 담임! 맞춤형 대입성공 로드맵 완성!"/>
<meta property="og:type" content="website">
<meta property="og:title" content="메가스터디학원">
<meta property="og:description" content="검증된 메가스터디학원 입시 전문 담임! 맞춤형 대입성공 로드맵 완성!">
<meta property="og:site_name" content="메가스터디학원">
<meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_exam_advisor/index.asp">
<%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2025/2025_exam_advisor/thumb.jpg'>"
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
<link rel="stylesheet" type="text/css" href="web.css?v=1"><!-- 2025 exam advisor -->

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
        <div id="advisorWrap" class="advisor_wrap">
            <!-- visual title  -->
            <div class="visual_title">
                <div class="tit_container">
                    <div class="inner">
                        <img class="motion m01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_txt1.png" alt="메가스터디학원의 특별함">
                        <img class="motion m02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_txt2.png" alt="입시 전문 담임">
                        <img class="motion m03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_txt3.png" alt="성적 상승을 위한 핵심 공식! 검증된 관리">

                        <img class="motion m07 light1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_star1.png" alt="">
                        <img class="motion m07 light2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_star2.png" alt="">
                    </div>
                </div>

                <div class="cube_container motion m04">
                    <div class="cubeAll">
                        <div class="cube_block_wrap">
                            <div class="cube active" id="first">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_cube1.png" alt="맞춤형">
                                <img class="icon_img" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_icon1.png" alt="">
                            </div>
                            <div class="cube next" id="second">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_cube2.png" alt="전략적">
                                <img class="icon_img" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_icon2.png" alt="">
                            </div>
                            <div class="cube prev" id="third">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_cube3.png" alt="세심함">
                                <img class="icon_img" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_icon3.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="light">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_light.png" alt="">
                    </div>   
                </div>

                <div class="bg_wrap">
                    <img class="motion m05" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_bg1.jpg" alt="">
                    <img class="motion m06" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_bg2.png" alt="">
                </div>
            </div>
            <!-- //visual title  -->

            <!-- contents -->
            <div class="advisor_contents">
                <!-- navi -->
                <nav class="nav_menu">
                    <ul>
                        <li><a class="on" href="jvavascript:void(0);" data-target="#cont_advisor">입시 전문 담임</a></li>
                        <li><a href="jvavascript:void(0);" data-target="#cont_system">시스템</a></li>
                        <li><a href="jvavascript:void(0);" data-target="#cont_contents">콘텐츠</a></li>
                    </ul>
                </nav>
                <!-- //navi -->
                <div id="cont_advisor">
                    <div class="cont1">
                        <div class="tit_wrap" data-aos="fade-up">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con01_tit.png" alt="입시 전문 담임" />
                        </div>
                        <div class="ct_wrap" data-aos="fade-up">
                        <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0208" Then '서초 %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img02.png" alt="고정석" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img03.png" alt="박진아" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img04.png" alt="이수열" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img05.png" alt="이연재" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img06.png" alt="임성규" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img07.png" alt="허유진" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0210" Then '강북재종 %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img01.png" alt="이원기" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img02.png" alt="김만수" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img03.png" alt="김영빈" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img04.png" alt="김정훈" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img05.png" alt="김훈" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img06.png" alt="이영주" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img07.png" alt="정선구" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img08.png" alt="진희언" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img09.png" alt="차주철" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img10.png" alt="한민수" />
                                </div>
                                <!-- <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img11.png" alt="허지은" />
                                </div> -->
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img12.png" alt="신진복" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0211" Then '노량진 %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img01.png" alt="강성철" />
                                </div>
                                <!-- <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img02.png" alt="강은수" />
                                </div> -->
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img03.png" alt="유아현" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img04.png" alt="이세현" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img05.png" alt="전상배" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img06.png" alt="정석진" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '신촌 %>
                            <div class="advisor_slider center">
                                <!-- <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img01.png" alt="이지하" />
                                </div> -->
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img02.png" alt="반현종" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img03.png" alt="성지훈" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img04.png" alt="유경철" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img05.png" alt="이예진" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img06.png" alt="이해송" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img07.png" alt="전승혜" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img08.png" alt="최성일" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img09.png" alt="허윤호" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img10.png" alt="황서준" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0276" Then '송파 %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img02.png" alt="김용기" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img03.png" alt="유단비" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img0407.png" alt="허지은" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img04.png" alt="이동원" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img05.png" alt="이은영" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img06.png" alt="최민기" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0251" Then '부천 %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img01.png" alt="이한상" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img02.png" alt="강지후" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img03.png" alt="김수영" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img04.png" alt="김주영" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img05.png" alt="박범성" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img06.png" alt="이상빈" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0253" Then '분당 %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img01.png" alt="정용욱" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img02.png" alt="김인빈" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img03.png" alt="유정원" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img04.png" alt="이승윤" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img05.png" alt="신승현" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img06.png" alt="조유림" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0255" Then '일산 %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/is/slide01_img01.png" alt="김택희" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/is/slide01_img02.png" alt="김다연" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/is/slide01_img03.png" alt="김동환" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/is/slide01_img04.png" alt="진민수" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/is/slide01_img05.png" alt="황성현" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0217" Then '평촌 %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img01.png" alt="최영곤" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img02.png" alt="정동근" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img03.png" alt="홍연수" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img01.png" alt="최영곤" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img02.png" alt="정동근" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img03.png" alt="홍연수" />
                                </div>
                            </div>
                        <% Else %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img02.png" alt="고정석" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img03.png" alt="박진아" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img04.png" alt="이수열" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img05.png" alt="이연재" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img06.png" alt="임성규" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img07.png" alt="허유진" />
                                </div>
                            </div>
                        <% End If %>
                            <script>
                        $(function(){
                                var $slider = $(".advisor_slider");

                                $slider.slick({
                                    centerMode: true,
                                    centerPadding: 0,
                                    slidesToShow: 3,
                                    slidesToScroll: 1,
                                    autoplay: true,
                                    autoplaySpeed: 3000,
                                    speed: 100,
                                    cssEase: 'linear',
                                    useTransform: false
                                });

                                $slider.on("afterChange", function() {
                                    $slider.slick("slickPlay");
                                });
                            });
                            </script>
                        </div>
                    </div>
                    <div class="cont2">
                        <div class="inner">
                            <div class="tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con02_tit.png" alt="입시 전문 담임 교육 과정" />
                            </div>
                            <div class="ct_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con02_img01.png" alt="" />
                            </div>
                        </div>
                    </div>
                </div>    
                
                <div id="cont_system">
                    <div class="cont3">
                        <div class="inner">
                            <div class="tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con03_tit.png" alt="입시 전문 담임 시스템" />
                            </div>
                            <div class="ct_wrap">
                                <ul data-aos="fade-up" class="system_accd">
                                    <li class="active">
                                        <div class="item_tt">
                                            <span>학습계획</span>
                                        </div>
                                        <div class="item_ct">
                                            <h4>학습 계획</h4>
                                            <p>
                                                · 주기적인 학습 플래너 확인 및 피드백<br>
                                                · 주기적인 일일수학 30제 확인<br>
                                                · 영단어/영어 듣기 TEST 및 피드백<br>
                                                · 모의고사 콘텐츠 풀이 및 피드백<br>
                                                · 문항 분석 통한 취약점 분석<br>
                                                · 성적 상승 위한 필요 수업 및 학습 방향 제시
                                            </p>
                                            <div class="img_area">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con03_img01.png" alt="" />
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_tt">
                                            <span>성적관리</span>
                                        </div>
                                        <div class="item_ct">
                                            <h4>성적 관리</h4>
                                            <p>
                                                · 모든 콘텐츠 성적 누적 데이터 관리<br>
                                                · 학생부 확인 통한 내신 성적 분석<br>
                                                · 상담을 통해 목표 설정 및 모의고사 상세 분석<br>
                                                · 매월 내 위치 확인<br>
                                                · 문항 분석 통해 취약점 확인 및 학습 방향 설계
                                            </p>
                                            <div class="img_area">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con03_img02.png" alt="" />
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_tt">
                                            <span>입시전략</span>
                                        </div>
                                        <div class="item_ct">
                                            <h4>입시 전략</h4>
                                            <p>
                                                · 입시 전문 담임의 체계적인 입시 전략<br>
                                                · 매월 성적 누적 데이터로 내 위치 예상 및 체계적인 입시 상담 진행<br>
                                                · 최신 입시 정보 확인 및 빅데이터 기반 입시 전략 수립<br>
                                                · 정기적인 입시 가이드/설명회 진행<br>
                                                · 수시/정시 배치 상담 진행
                                            </p>
                                            <div class="img_area">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con03_img03.png" alt="" />
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <script>
                                $(function(){
                                    /* Accordion menu */
                                    $('.system_accd li .item_tt').click(function() {
                                        var parent_li = $(this).parent('li');
                                        
                                        if (!parent_li.hasClass('active')) {
                                            $('.system_accd li').removeClass('active');
                                            parent_li.addClass('active');
                                        }
                                    });
                                });
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="cont4">
                        <div class="inner">
                            <div class="tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con04_tit.png" alt="오직 학생에게 맞춰진 커리큘럼 학습계획" />
                            </div>
                            <div class="sub_tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con04_sub_tit01.png" alt="학생별 세부 분석" />
                            </div>
                            <div class="ct_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con04_img01.png" alt="" />
                            </div>
                            <div class="sub_tit_wrap" style="margin-top:-60px;">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con04_sub_tit02.png" alt="학습 계획 및 수업 설계" />
                            </div>
                            <div class="ct_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con04_img02.png" alt="" />
                            </div>
                        </div> 
                    </div>
                    <div class="cont5">
                        <div class="inner">
                            <div class="tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con05_tit.png" alt="성적 상승 위한 1:1 맞춤형 성적 관리" />
                            </div>
                            <div class="sub_tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con05_sub_tit01.png" alt="학생별 세부 분석" />
                            </div>
                            <div class="ct_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con05_img01.png" alt="" />
                            </div>
                            <div class="sub_tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con05_sub_tit02.png" alt="대입성공 연간 플랜" />
                            </div>
                            <div class="ct_wrap">
                                <table data-aos="fade-up" cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4">
                                    <caption>대입성공 연간 플랜</caption>
                                    <colgroup>
                                        <col width="12.5%" span="8">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>구분</th>
                                            <th>2월</th>
                                            <th>3~4월</th>
                                            <th>5~6월</th>
                                            <th>7~8월</th>
                                            <th>9월</th>
                                            <th>10~11월</th>
                                            <th>12월</th>
                                        </tr>
                                        <tr>
                                            <th>학습 지도</th>
                                            <td>
                                                · 진단 TEST를 통한 분석 및 학습 설계 상담<br>
                                                · 플래너 작성법 교육
                                            </td>
                                            <td>
                                                · 모의고사 성적 확인 및 문항 분석 상담을 통한 학습 설계
                                            </td>
                                            <td>
                                                · 모의고사 성적 확인 및 문항 분석 상담을 통한 학습 설계<br>
                                                · 6월 모평 세부 분석
                                            </td>
                                            <td>
                                                · 모의고사 성적 확인 및 문항 분석 상담을 통한 학습 설계<br>
                                                · D-100 학습 전략 제시
                                            </td>
                                            <td>
                                                · 모의고사 성적 확인 및 문항 분석 상담을 통한 학습 설계<br>
                                                · 9월 모평 세부 분석
                                            </td>
                                            <td>
                                                · 모의고사 성적 확인 및 문항 분석 상담을 통한 학습 설계
                                            </td>
                                            <td rowspan="3">
                                                · 1차 정시 합격 전략 상담<br><br>
                                                · 최종 정시 합격 전략 상담
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>1:1 상담</th>
                                            <td>
                                                · 학원 생활 적응 개별 상담
                                            </td>
                                            <td>
                                                · 과목별 학습 계획 상담<br>
                                                · 내 위치 파악 및 동기부여를 위한 성적 상담
                                            </td>
                                            <td>
                                                · 6월 모평 성적 분석 및 향후 학습 전략 상담
                                            </td>
                                            <td>
                                                · 1차 수시 합격 전략 상담
                                            </td>
                                            <td>
                                                · 최종 수시 합격 전략 상담<br>
                                                · 9월 모평 성적 분석 및 향후 학습 전략 상담
                                            </td>
                                            <td>
                                                · 파이널 학습 전략 상담
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>입시 교육</th>
                                            <td>
                                                · 입시 기초 용어 설명
                                            </td>
                                            <td>
                                                · 대학별 입시 결과 및 전형 계획안 기준 입시 설명
                                            </td>
                                            <td>
                                                · 6월 모평 성적 기준 위치 파악 및 학교생활 기록부 세부 분석
                                            </td>
                                            <td>
                                                · 수시 합격 전략 설명회
                                            </td>
                                            <td>
                                                · 9월 모평 성적 기준 위치 파악
                                            </td>
                                            <td>
                                                · 정시 합격 전략 설명회
                                            </td>
                                        </tr>
                                    </tbody>
                                </table> 
                            </div>
                        </div>
                    </div>
                    <div class="cont6">
                        <div class="inner">
                            <div class="tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_tit.png" alt="1:1 맞춤형 대입성공 로드맵 입시 전략" />
                            </div>
                            <div class="sub_tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_ct_tit01.png" alt="수시 컨설팅" />
                            </div>
                            <div class="ct_box">
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit01.png" alt="특징" />
                                </div>
                                <div class="ct_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img01.png" alt="" />
                                </div>
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit02.png" alt="프로세스" />
                                </div>
                                <div class="ct_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img02.png" alt="" />
                                </div>
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit03.png" alt="REPORT" />
                                </div>
                                <div class="ct_wrap">
                                    <div class="ct_flex" data-aos="fade-up">
                                        <div class="report_wrap">
                                            <div class="rolling_container">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img01.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img02.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img03.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img04.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img05.png" alt="">
                                                
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img01.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img02.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img03.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img04.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img05.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="img_wrap">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img03.png" alt="" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="sub_tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_ct_tit02.png" alt="정시 컨설팅" />
                            </div>
                            <div class="ct_box">
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit04.png" alt="특징" />
                                </div>
                                <div class="ct_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img04.png" alt="" />
                                </div>
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit05.png" alt="프로세스" />
                                </div>
                                <div class="ct_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img05.png" alt="" />
                                </div>
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit06.png" alt="REPORT" />
                                </div>
                                <div class="ct_wrap">
                                    <div class="ct_flex" data-aos="fade-up">
                                        <div class="report_wrap">
                                            <div class="rolling_container">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img01.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img02.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img03.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img04.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img05.png" alt="">
                                                
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img01.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img02.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img03.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img04.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img05.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="img_wrap">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img06.png" alt="" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="cont_contents">
                    <div class="cont7">
                        <div class="inner">
                            <div class="tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_tit.png" alt="효율적인 성적 향상 학습 콘텐츠" />
                            </div>
                            <div class="sub_tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_sub_tit01.png" alt="주간완전학습 플래너" />
                            </div>
                            <div class="ct_wrap link_area" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_img01.png" alt="" />
                                <a class="link_btn" href="/campus_common/2025/2025_weekplanner/index.asp" target="_blank">자세히 보기</a>
                            </div>

                            <div class="sub_tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_sub_tit02.png" alt="와플 플래너" />
                            </div>
                            <div class="ct_wrap link_area" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_img02.png" alt="" />
                                <a class="link_btn" href="/campus_common/2025/2025_waffle/index.asp" target="_blank">자세히 보기</a>
                            </div>

                            <div class="sub_tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_sub_tit03.png" alt="일일수학 30제" />
                            </div>
                            <div class="ct_wrap link_area" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_img03.png" alt="" />
                                <a class="link_btn" href="/campus_common/2024/2024_math30/index.asp" target="_blank">자세히 보기</a>
                            </div>

                            <div class="sub_tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_sub_tit04.png" alt="메가 스마트 리포트" />
                            </div>
                            <div class="ct_wrap link_area" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_img04.png" alt="" />
                                <a class="link_btn" href="/campus_common/2024/2024_smart_report/index.asp" target="_blank">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bottom_bnr">
                    <div class="inner">
                        <img data-aos="fade" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bottom_bnr_txt.png" alt="메가스터디학원이 제공하는 확실한 합격 솔루션! 더 성공적인 결과를 만듭니다" />
                    </div>
                </div>
            </div>
            <!-- //contents -->
        </div>
    </div>

    <!-- container End --> 
</div>
<script src="./ui.js"></script>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
