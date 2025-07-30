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
<link rel="stylesheet" type="text/css" href="web.css">
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">

<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/Public/jquery/slick.js"></script>
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
       <%If CDbl(getYmdhmin()) <= CDbl("2024"&"0303"&"1300") Then '재수종합반 게이트 마감 타이머 설정 / sook / 2024-02-29 %>
        <ul class="quick">
            <li>
                <a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=23759" target="_blank">
                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/quick_top.png" alt="재수종합반 설명회">
                </a>
            </li>
            <li>
                <a href="#sectionTitle">
                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/btn_quick_top.png" alt="top으로 이동">
                </a>
            </li>
        </ul>
        <%End If%>
        
        <div id="contents">
            <div class="section_title" id="sectionTitle" style="background-color:#1b558a; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/top_bg.jpg') 50% top no-repeat;">
                <div class="wrap_full">
                    <div class="act_wrap">
                        <img class="txt act01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/top_txt01.png" alt="" />
                        <img class="txt act01_1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/top_txt01_1.png" alt="" />
                        <img class="txt act01_2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/top_txt01_2.png" alt="" />
                        <img class="txt act01_3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/top_txt01_3.png" alt="" />
                        <img class="txt act01_4" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/top_txt01_4.png" alt="" />
                        <img class="txt act02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/top_txt02.png" alt="" />
                        <img class="txt act03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/top_txt03.png" alt="" />
                        <img class="txt act04" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/top_txt04.png" alt="" />

                    </div>
                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area"></div>
                    </div>
                    <div class="video_area">
                        <div class="video_content">
                            <iframe src='https://tv.naver.com/embed/47610639?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='1000' HEIGHT='562' allow='autoplay' allowfullscreen></iframe>
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
            
            <div class="section_map" style="background-color:#2c9ad1;">
                <div class="wrap">
                    <div class="ani_element b_to_t pt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/map_title.png" alt="" /> 
                    </div>

                    <div class="map_box">
                        <div class="academy">
                            <div class="ani_element l_to_r aca_01"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/01.png" alt="" /></div>
                            <div class="ani_element l_to_r aca_02 delay200"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/02.png" alt="" /></div>
                            <div class="ani_element l_to_r aca_03 delay400"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/03.png" alt="" /></div>
                            <div class="ani_element r_to_l aca_04 delay100"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/04.png" alt="" /></div>
                            <div class="ani_element r_to_l aca_05 delay300"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/05.png" alt="" /></div>
                        </div>
                        <div class="arrow">
                            <div class="ani_element b_to_t arrow_01 effect-shrink"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/arrow1.png" alt="" /></div>
                            <div class="ani_element b_to_t arrow_02 effect-shrink"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/arrow2.png" alt="" /></div>
                        </div>
                        <div>
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/map_img1.jpg" alt="" />
                        </div>
                    </div>
                    <div class="ani_element b_to_t delay500">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/map_img2.png" alt="" /> 
                    </div>
                </div>
            </div> 

            <div class="section_service">
                <div class="wrap">
                    <div class="ani_element b_to_t pt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_title.png" alt="" /> 
                    </div>
                    <!-- 1 -->
                    <div class="ani_element b_to_t mt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_01_title.png" alt="" /> 
                    </div>
                    <div class="mt70 pos_rel">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_01_img.png" alt="" />
                        <div class="column_box">
                            <div class="ani_element t_to_b delay100">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_01.png" alt="" /> 
                            </div>
                            <div class="ani_element t_to_b delay200">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_arrow.png" alt="" /> 
                            </div>
                            <div class="ani_element t_to_b delay300">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_02.png" alt="" /> 
                            </div>
                            <div class="ani_element t_to_b delay400">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_arrow.png" alt="" /> 
                            </div>
                            <div class="ani_element t_to_b delay500">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_03.png" alt="" /> 
                            </div>
                        </div>
                    </div>
                    <!-- 2 -->
                    <div class="ani_element b_to_t mt120">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_02_title.png" alt="" /> 
                    </div>
                    <div class="mt80">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_02_img_1.png" alt="" /> 
                    </div>
                    <div class="mt86">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_02_img_2.png" alt="" /> 
                    </div>
                    <div class="mt60">
                        <a href="https://campus.megastudy.net/campus_common/nsu/2019_expert/index.asp" target="_blank">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_02_btn.png" alt="" /> 
                        </a>
                    </div>
                    <!-- 3 -->
                    <div class="ani_element b_to_t mt120">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_03_title.png" alt="" /> 
                    </div>
                    <div class="mt70 pos_rel">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_03_img_1.png" alt="" />
                        <div class="loca_box">
                            <div class="ani_element t_to_b delay200">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_03_img_2.png" alt="" /> 
                            </div>
                            <div class="ani_element t_to_b delay200">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_03_img_3.png" alt="" /> 
                            </div>
                        </div>
                    </div>
                    <!-- 4 -->
                    <div class="ani_element b_to_t mt120">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_04_title.png" alt="" /> 
                    </div>
                    <div class="mt70">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/service_04_img.png" alt="" /> 
                    </div>

                </div>
            </div>

            <div class="section_strategy">
                <div class="wrap">
                    <div class="ani_element b_to_t pt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_title.png" alt="" /> 
                    </div>

                    <div class="ani_element b_to_t mt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_01_title.png" alt="" /> 
                    </div>
                    <div class="mt70">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_01_img.png" alt="" /> 
                    </div>

                    <div style="background-color:#f1f1f1; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_02_bg.jpg') 50% top no-repeat;">
                        <div class="ani_element b_to_t mt120">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_02_title.png" alt="" /> 
                        </div>
                        <div class="row_box">
                            <div class="ani_element b_to_t delay100">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_02_01.png" alt="" /> 
                            </div>
                            <div class="ani_element b_to_t delay200">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_02_02.png" alt="" /> 
                            </div>
                            <div class="ani_element b_to_t delay300">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_02_03.png" alt="" /> 
                            </div>
                        </div>
                    </div>

                    <!-- 3 -->
                    <div class="ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_03_title.png" alt="" /> 
                    </div>
                    <div class="mt70">
                        <div class="strategy_03_box pos_rel">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_03_img_1.png" alt="" />

                            <div class="mentor_check">
                                <div class="ani_element delay200 l_to_r">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/check1.png" alt="" />
                                </div>
                                <div class="ani_element delay250 b_to_t">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/check2.png" alt="" />
                                </div> 
                                <div class="ani_element delay300 r_to_l">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/check3.png" alt="" />
                                </div> 
                            </div>
                            
                            <div class="mentor_arrow ani_element b_to_t delay400">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/mentor_arrow.png" alt="" />
                            </div>

                        </div>
                    </div>
                    <div class="mt60">
                        <a href="https://campus.megastudy.net/campus_common/2023/2023_megamentor/index.asp" target="_blank">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_03_btn.png" alt="" /> 
                        </a>
                    </div>
                    <div class="mt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/strategy_03_img_2.png" alt="" /> 
                    </div>
                </div>
            </div>

            <div class="section_graph">
                <div class="wrap">
                    <div class="ani_element b_to_t pt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/graph_title.png" alt="" /> 
                    </div>
                    <!-- <div class="ani_element b_to_t pt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/graph_img1.png" alt="" /> 
                    </div> -->
                    <div class="ani_element b_to_t mt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/graph_img2.png" alt="" /> 
                    </div>
                    <div class="mt50">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/graph_img3.png" alt="" /> 
                    </div>
                </div>
            </div>

            <div class="section_review">
                <div class="wrap">
                    <div class="ani_element b_to_t pt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/slide_title.png" alt="" /> 
                    </div>
                    <div class="ani_element b_to_t mt70">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/review_img_1.png" alt="" />
                    </div>
                    <div class="ani_element b_to_t mt40">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/review_img_2.png" alt="" />
                    </div>
                    <div class="ani_element b_to_t mt40">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/review_img_3.png" alt="" />
                    </div>
                    <div class="ani_element b_to_t mt40">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/review_img_4.png" alt="" />
                    </div>
                    <!-- 
                    <div class="ani_element b_to_t mt70">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/slide_img1.png" alt="" />
                        <a href="https://tv.naver.com/v/33349024" target="_blank">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/thumb_img1.jpg" alt="" />
                        </a> 
                    </div>
                    <div class="ani_element b_to_t mt30">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/slide_img2.png" alt="" />
                        <a style="top:90px;" href="https://tv.naver.com/v/33704249" target="_blank">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/thumb_img2.jpg" alt="" />
                        </a> 
                    </div>
                    <div class="ani_element b_to_t mt50">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/slide_img3.png" alt="" />
                        <a style="top:90px;" href="https://tv.naver.com/v/33799830" target="_blank">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/thumb_img3.jpg" alt="" />
                        </a> 
                    </div>
                     -->
                </div>
            </div>

            <div class="section_banner" style="background-color:#f1f1f1; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/banner_bg.jpg') 50% top no-repeat;">
                <div class="wrap">
                    <div class="ani_element b_to_t pt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/banner_title.png" alt="" /> 
                    </div>
                </div>
            </div>

            <div class="section_link_list" id="link">
                <div class="wrap">

                    <div class="pt100 link_title ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jaejung_gate/link_title.png" alt="" />
                    </div>

                    <div class="academy_list"> 
                        <ul>   
                            <li id="C01" class="cam_list">
                                <a href="https://yangji.megastudy.net/yangji/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://seochob.megastudy.net/yangjim/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://ansung.megastudy.net/ansung/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">                       
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
                                <a href="https://gangnam.megastudy.net/gangnam/nsu/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://seocho.megastudy.net/seocho/nsu/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://songpa.megastudy.net/songpa/nsu/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://bundang.megastudy.net/bundang/nsu/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2025/2025_jaejung/jaejung_01.asp" target="_blank">
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
                            <!-- <li id="C12" class="cam_list">
                                <a href="javascript:alert('추후 오픈 예정입니다.')">
                                    <p class="title"><span><strong>성북</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                02-927-8001
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li> -->
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
        var motion1 = new TimelineMax({delay:0, repeat:0})
                    .to(".act01", 1, {opacity:1, width:"565px", height:"75px", ease: Power4.easeIn });

        var motion1_1 = new TimelineMax({delay:1.2, repeat:0})
                    .to(".act01_1", 0.3, {opacity:1, ease: Power3.easeIn })
                    .to(".act01_2", 0.25, {opacity:1, ease: Power3.easeIn })
                    .to(".act01_3", 0.25, {opacity:1, ease: Power3.easeIn })
                    .to(".act01_4", 0.25, {opacity:1, ease: Power3.easeIn });

        var motion2 = new TimelineMax({delay:1.8, repeat:0})
                    .to(".act02", 0.3, {opacity:1, left:33, ease: Power3.easeIn})
                    .to(".act03", 0.3, {opacity:1, left:31, ease: Power3.easeIn});

        var motion4 = new TimelineMax({delay:3, repeat:0})
                    .to(".act04", 0.8, {opacity:1,  width:"683px", height:"753px", left:742, top:318, ease: Back.easeOut})
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

        if(scrolled > $(".section_map").offset().top && scrolled < $(".section_link_list").offset().top-500 ) {
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"block"});
        }
        if(scrolled > $(".section_link_list").offset().top-500 || scrolled < $(".section_map").offset().top) {    
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
        }
	}
</script>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>