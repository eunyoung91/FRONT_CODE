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
<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->

<title><%=gMGC_Campus_Title%></title>

<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
<!-- #Include Virtual = "/library/include/reload/css_table.asp" -->

<link rel="stylesheet" type="text/css" href="/library/css/report_2015.css" />
<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
<link rel="stylesheet" type="text/css" href="/library/css/amazingslider.css">
<!-- AOS -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="web.css">
<!-- #include virtual="/public/jquery.asp" -->
<% Response.Write "현재 캠퍼스 코드: " & GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") %>


<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">

<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/Public/jquery/slick.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://campus.megastudy.net/public/js/TweenMax.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
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
        
        <!-- <ul class="quick">
            <li>
                <a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=24550" target="_blank">
                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/quick_top.png" alt="반수시작반 설명회">
                </a>
            </li>
            <li>
                <a href="#sectionTitle">
                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/btn_quick_top.png" alt="top으로 이동">
                </a>
            </li>
        </ul> -->
        
        <div id="contents">
        
            <div class="section_title" id="sectionTitle" style="background-color:#325E9D; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_bg.jpg') 50% top no-repeat; background-size: 4000px 1620px;">
                <div class="wrap_full">
                    <div class="act_wrap">
                        <img class="act act01_1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt01_1.png" alt="" />
                        <img class="act act01_2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt01_2.png" alt="" />
                        <img class="act act01_3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt01_3.png" alt="" />
                        <img class="act act01_4" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt01_4.png" alt="" />
                        <img class="act act02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt02.png" alt="2025" />
                        <img class="act act03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt03.png" alt="반수시작반" />

                        <img class="act act04" data-aos="zoom-up" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="1000" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt04.png" alt="주요역" />
                        <img class="act act04_1" data-aos="zoom-in" data-aos-easing="ease-in-sine" data-aos-delay="800" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt04_1.png" alt="주요역" />
                        
                        <img class="act act04_2" data-aos="fade-down-right" data-aos-easing="ease-in-sine" data-aos-delay="1300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt04_2_1.png" alt="주요역" />
                        <img class="act act04_2" data-aos="fade-down-right" data-aos-easing="ease-in-sine" data-aos-delay="1400" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt04_2_2.png" alt="주요역" />
                        <img class="act act04_2" data-aos="fade-down-right" data-aos-easing="ease-in-sine" data-aos-delay="1500" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt04_2_3.png" alt="주요역" />
                        <img class="act act04_2" data-aos="fade-down-right" data-aos-easing="ease-in-sine" data-aos-delay="1600" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/top_txt04_2_4.png" alt="주요역" />
                        
                        <img class="act act05_1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/path.png" alt="path" />
                        <img class="act act05_2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/path_arrow.png" alt="path" />
                    </div>
                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area"></div>
                    </div>
                    <div class="video_area">
                        <div class="video_content">
                            <iframe src='https://tv.naver.com/embed/49239647?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='1000' HEIGHT='562' allow='autoplay' allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
                
            <div class="fix_bottom_wrap scroll">
                <div class="fix_bottom_area">
                    <ul class="large">
                        <p class="title"><span>재수</span> 통학</p>
                        <li><a class="fix_C03" href="" target=""><em>강남 <br>팀플전문관</em></a></li>
                        <li><a class="fix_C13" href="" target=""><em>서초 <br>의약학전문관</em></a></li>
                        <li><a class="fix_C05" href="" target=""><em>강북</em></a></li>
                        <li><a class="fix_C04" href="" target=""><em>노량진</em></a></li>
                        <li><a class="fix_C11" href="" target=""><em>신촌</em></a></li>
                        <li><a class="fix_C06" href="" target=""><em>송파</em></a></li>
                        <li><a class="fix_C07" href="" target=""><em>부천</em></a></li>
                        <li><a class="fix_C08" href="" target=""><em>분당</em></a></li>
                        <li><a class="fix_C09" href="" target=""><em>일산</em></a></li>
                        <li><a class="fix_C10" href="" target=""><em>평촌</em></a></li>
                    </ul>

                    <ul class="small">
                        <p class="title"><span>재수</span> 기숙</p>
                        <li><a class="fix_C01" href="" target=""><em>양지 기숙</em></a></li>
                        <li><a class="fix_C02" href="" target=""><em>서초 기숙</em></a></li>
                        <li><a class="fix_C14" href="" target=""><em>안성 기숙</em></a></li>
                    </ul>
                </div>
            </div>
            
            <div class="section_review">
                <div class="wrap">
                    <div>
                        <img data-aos="zoom-in" data-aos-easing="ease-in-sine" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/review_title.png" alt="" /> 
                    </div>
                    <div>
                        <img data-aos="fade-in" data-aos-easing="ease-in" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/review_sub_title.jpg" alt="" /> 
                    </div>
                    <div>
                        <img data-aos="fade-up" data-aos-easing="ease-in" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/review_img_1.png" alt="" />
                    </div>
                    <div class="mt30">
                        <img data-aos="fade-up" data-aos-easing="ease-in" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/review_img_2.png" alt="" />
                    </div>
                    <div class="mt30">
                        <img data-aos="fade-up" data-aos-easing="ease-in" data-aos-delay="400" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/review_img_3.png" alt="" />
                    </div>
                </div>
            </div>

            <div class="section_process">
                <div class="wrap">
                    <div class="pt100">
                        <img data-aos="zoom-in" data-aos-easing="ease-in-sine" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/process_title.png" alt="" /> 
                    </div>
                    <div class="pos_rel">
                        <div class="process_bg">
                            <img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/progess.png" alt="" /> 
                        </div>
                        <div class="row_box">
                            <div>
                                <img data-aos="fade-down" data-aos-easing="ease-in-out" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/process_01.png" alt="" /> 
                            </div>
                            <div class="gap">
                                <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="300" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/process_arrow.png" alt="" /> 
                            </div>
                            <div>
                                <img data-aos="fade-down" data-aos-easing="ease-in-out" data-aos-delay="400" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/process_02.png" alt="" /> 
                            </div>
                            <div class="gap">
                                <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="500" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/process_arrow.png" alt="" /> 
                            </div>
                            <div>
                                <img data-aos="fade-down" data-aos-easing="ease-in-out" data-aos-delay="600" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/process_03.png" alt="" /> 
                            </div>
                            <div class="gap">
                                <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="700" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/process_arrow.png" alt="" /> 
                            </div>
                            <div>
                                <img data-aos="fade-down" data-aos-easing="ease-in-out" data-aos-delay="800" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/process_04.png" alt="" /> 
                            </div>
                            <div class="gap">
                                <img data-aos="fade-right" data-aos-easing="ease-in-out-back" data-aos-delay="900" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/process_arrow.png" alt="" /> 
                            </div>
                        </div>
                        <div class="final_box">
                            <div class="final">
                                <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="1200" data-aos-duration="600"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/process_final.png" alt="" />
                            </div>
                            <div class="bubble">
                                <img data-aos="fade-down" data-aos-easing="ease-in-out" data-aos-delay="1300" data-aos-duration="600"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/bubble.png" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="section_contents">
                <div class="wrap">
                    <div>
                        <h3 class="icon_title">
                            <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="0" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/contents_icon.png" alt="" /> 
                            <img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="300"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/contents_text.png" alt="" /> 
                        </h3>
                        <div class="main_title">
                            <img data-aos="zoom-in" data-aos-easing="ease-in-sine" data-aos-delay="500" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/contents_title.png" alt="" /> 
                        </div>
                    </div>
                    <div class="pt80">
                        <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="600" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/contents_img01.png" alt="" /> 
                    </div>
                    <div class="pt110">
                        <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="600" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/contents_img02.png" alt="" /> 
                    </div>
                </div>
            </div>

            <div class="section_system">
                <div class="wrap">
                    <div>
                        <h3 class="icon_title">
                            <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="0" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/system_icon.png" alt="" /> 
                            <img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="300"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/system_text.png" alt="" /> 
                        </h3>
                        <div class="main_title">
                            <img data-aos="zoom-in" data-aos-easing="ease-in-sine" data-aos-delay="500" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/system_title.png" alt="" /> 
                        </div>
                    </div>

                    <div class="pt80">
                        <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="600" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/system_img01.png" alt="" /> 
                    </div>
                </div>
            </div>

            <div class="section_care">
                <div class="wrap">
                    <div>
                        <h3 class="icon_title">
                            <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="0" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_icon.png" alt="" /> 
                            <img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="300"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_text.png" alt="" /> 
                        </h3>
                        <div class="main_title">
                            <img data-aos="zoom-in" data-aos-easing="ease-in-sine" data-aos-delay="500" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_title.png" alt="" /> 
                        </div>
                    </div>

                    <div class="mt80"> 
                        <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="600" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_img01_title.png" alt="메가 스마트 리포트" />
                        <div class="care_graph" style="background-color:#325E9D; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/graph_bg.jpg') 50% top no-repeat;">
                            <div>
                                <img class="pentagon" data-aos="zoom-in" data-aos-easing="ease-in-sine" data-aos-delay="600" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/pentagon.png" alt="" />
                                <img class="vertex" data-aos="zoom-in" data-aos-delay="700" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/vertex1.png" alt="" />
                                <img class="vertex" data-aos="zoom-in" data-aos-delay="800" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/vertex2.png" alt="" />
                                <img class="vertex" data-aos="zoom-in" data-aos-delay="900" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/vertex3.png" alt="" />
                                <img class="vertex" data-aos="zoom-in" data-aos-delay="1000" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/vertex4.png" alt="" />
                                <img class="vertex" data-aos="zoom-in" data-aos-delay="1100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/vertex5.png" alt="" />
                                <img class="logo" data-aos="zoom-in" data-aos-delay="1100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/logo.png" alt="" />
                            </div>
                        </div>
                        <div class="pt80">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="1400" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_img01_01.png" alt="" /> 
                        </div>
                        <div class="pt60">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="1500" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_img01_02.png" alt="" /> 
                        </div>
                        <div class="mt70">
                            <a href="https://campus.megastudy.net/campus_common/2024/2024_smart_report/index.asp" target="_blank">
                                <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="1500" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_img01_btn.png" alt="메가 스마트 리포트 자세히 보기" />
                            </a>
                        </div>
                    </div>


                </div>
            </div>
            
            <div class="section_care">
                <div class="wrap">
                    <div> 
                        <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="0" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_img02_title.png" alt="메가멘토" />
                        <div class="pt60">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_img02_01.png" alt="" /> 
                        </div>
                        <div class="pt80">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_img02_02.png" alt="" /> 
                        </div>
                        <div class="pt60">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="300" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_img02_03.png" alt="" /> 
                        </div>
                        <div class="mt70">
                            <a href="https://campus.megastudy.net/campus_common/nsu/2024/2024_sp_megamentor/index.asp" target="_blank">
                                <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="300" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/care_img02_btn.png" alt="메가멘토자세히 보기" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="section_benefit" style="background:#d9e6ee url('<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/benefit_bg.jpg') 50% top no-repeat;">
                <div class="wrap">
                    <div>
                        <h3 class="icon_title">
                            <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="0" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/benefit_icon.png" alt="" /> 
                            <img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="300"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/benefit_text.png" alt="" /> 
                        </h3>
                        <div class="main_title">
                            <img data-aos="zoom-in" data-aos-easing="ease-in-sine" data-aos-delay="500" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/benefit_title.png" alt="" /> 
                        </div>
                    </div>
                    <div class="pt80">
                        <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="600" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/benefit_img01.png" alt="" /> 
                    </div>
                    <div class="mt120">
                        <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="700" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/benefit_img02.png" alt="" /> 
                    </div>
                </div>
            </div>

            <div class="section_banner" style="background-color:#335e9d; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/banner_bg.jpg') 50% top no-repeat; background-size:cover;">
                <div class="wrap">
                    <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="0" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/banner_img01.png" alt="" /> 
                </div>
            </div>

            <div class="section_link_list" id="link">
                <div class="wrap">
                    <div class="pt100 link_title">
                        <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="0" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_gate/link_list_title.png" alt="" />
                    </div>

                    <div class="academy_list"> 
                        <ul>   
                            <li id="C01" class="cam_list">
                                <a href="https://yangji.megastudy.net/yangji/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>양지 기숙</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>031-326-5000
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C02" class="cam_list">
                                <a href="https://seochob.megastudy.net/yangjim/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>서초 기숙</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>031-797-9332
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C14" class="cam_list">
                                <a href="https://ansung.megastudy.net/ansung/nsu/2025/2025_half/half_01.asp" target="_blank">                  
                                    <p class="title"><span><strong>안성 기숙</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>031-8004-1010
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <ul>
                            <li id="C03" class="cam_list">
                                <a href="https://gangnam.megastudy.net/gangnam/nsu/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>강남</strong> 팀플전문관</span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                02-568-3800
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C13" class="cam_list">
                                <a href="https://seocho.megastudy.net/seocho/nsu/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>서초</strong> 의약학전문관</span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                02-535-5678
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C05" class="cam_list">
                                <a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>강북</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>02-935-3378
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C04" class="cam_list">
                                <a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>노량진</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                02-826-1555
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <ul>
                            <li id="C11" class="cam_list">
                                <a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>신촌</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>02-3144-1010
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C06" class="cam_list">
                                <a href="https://songpa.megastudy.net/songpa/nsu/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>송파</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                02-428-8181                                        
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C07" class="cam_list">
                                <a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>부천</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                032-326-9900
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C08" class="cam_list">
                                <a href="https://bundang.megastudy.net/bundang/nsu/nsu/2025/2025_teamplay_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>분당</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                031-781-3100
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>                            
                        </ul>
                        <ul>
                            <li id="C09" class="cam_list">
                                <a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>일산</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                031-8073-9600
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C10" class="cam_list">
                                <a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2025/2025_half/half_01.asp" target="_blank">
                                    <p class="title"><span><strong>평촌</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                031-388-3141
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>

            </div>
            
        </div><!-- // contents -->
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function ($) {
	});

    $(function(){
        rightQuickBanner();
        titleTweenEvent();

        $(window).on('load', function () {
            pageLoadEvent();
            ad_link();
            aosEvent();
            var fix_txt = $('.scroll .fix_bottom_area').html(); 
            $('.inner .fix_bottom_area').html(fix_txt);

			$(window).on('scroll', function(){
                parallaxScroll();
                ani_scr();
			});
			
		});
    });

    function pageLoadEvent(){
        var temp_s = $("#sectionTitle").offset().top;
        $('html, body').animate({ scrollTop: temp_s}, 500);
    }

    function titleTweenEvent(){
        var motion1_1 = new TimelineMax({delay:0.2, repeat:0})
                    .to(".act01_1", 0.3, {opacity:1, ease: Power2.easeIn, top:120, marginLeft:0 })
                    .to(".act01_2", 0.3, {opacity:1, ease: Power2.easeIn, top:120, marginLeft:123 })
                    .to(".act01_3", 0.3, {opacity:1, ease: Power2.easeIn, top:120, marginLeft:284 })
                    .to(".act01_4", 0.3, {opacity:1, ease: Power2.easeIn, top:120, marginLeft:367 });

        var motion2 = new TimelineMax({delay:1.2, repeat:0})
                    .to(".act02", 0.35, {opacity:1, left:0, ease: Power0.easeIn, marginLeft:0})
                    .to(".act03", 0.35, {opacity:1, left:0, ease: Power0.easeIn, marginLeft:0});
    }

    function aosEvent(){
        AOS.init({
            duration: 4000,
            easing: 'ease-in',
            once: true,
            animatedClassName: 'aos-animate',
        });
    }

    function ani_scr() {
		var winH = $(window).height();
		var scrT = $(window).scrollTop();
		var view_pos = winH + scrT
	
		$(".ani_element").each(function () {
			var elementH = $(this).outerHeight();
			var elementT = $(this).offset().top;
			var elementP = (elementT + elementH - 150);
			if ((elementP <= view_pos)) {
				$(this).addClass("ani_set");
			}
		});
    }

    function rightQuickBanner(){
        $(".quick li a").on('click', function(e){
            var _top = $($(this).attr('href')),
                $target = _top.offset().top;
            e.preventDefault();
            $('html, body').animate({
                scrollTop: $target
            }, 250);
        });
    }
    
    function ad_link() {
        $('#link li').each(function() {
            var l_id = $(this).attr("id");
            var l_link = $(this).find("a").attr("href");
            var l_target = $(this).find("a").attr("target");

            $(".fix_" + l_id).attr("href", l_link);
            $(".fix_" + l_id).attr("target", l_target);            
        });
    }

	function parallaxScroll(){ 
		var scrolled = $(window).scrollTop();

        if(scrolled > $(".section_review").offset().top && scrolled < $(".section_link_list").offset().top-500 ) {
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"block"});
        }
        if(scrolled > $(".section_link_list").offset().top-500 || scrolled < $(".section_review").offset().top) {    
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
        }
	}
</script>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>