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
<link rel="stylesheet" type="text/css" href="web.css?ver231024">
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

        <div id="contents">
            <div class="section_title" id="sectionTitle" style="background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_bg.jpg') 50% top no-repeat;background-size:cover;">
                <div class="wrap_full">
                    <div class="act_wrap">                        
                        <em class="star star1"></em>
                        <em class="star star2"></em>
                        <em class="star star3"></em>
                        <em class="star star4"></em>
                        <em class="star star5"></em>
                        <img class="txt act01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_txt01.png" alt="" />
                        <img class="txt act01_01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_txt01_01.png" alt="" />
                        <img class="txt act02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_txt02.png" alt="메가스터디학원이 만든" />
                        <img class="txt act02_01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_txt02_01.png" alt="자기 주도 학습과정" />
                        <img class="txt act02_02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_txt02_02.png" alt="Per" />
                        <img class="txt act02_03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_txt02_03.png" alt="Pl" />
                        <img class="txt act02_02_2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_txt02_02_2.png" alt="sonal" />
                        <img class="txt act02_03_2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_txt02_03_2.png" alt="ay" />
                        <img class="txt act03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_txt03.png" alt="2025" />
                        <img class="txt act04" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/top_txt04.png" alt="퍼플반" />
                        <img class="txt act04_01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/light1.png" alt="빛"/>
                        <img class="txt act04_02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/light2.png" alt="빛"/>
                        <img class="txt act04_03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/light3.png" alt="빛"/>
                    </div>
                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area"></div>
                        <p class="notice">
                            ※ 학원별 모집 과정과 운영 프로그램은 상이할 수 있습니다.
                        </p>
                    </div>
                    <div class="video_area">
                        <div class="video_content">
                            <iframe src='https://tv.naver.com/embed/42757940?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='1000' HEIGHT='562' allow='autoplay' allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>

            <div class="fix_bottom_wrap scroll">
                <div class="fix_bottom_area">
                    <ul class="large">
                        <li><a class="fix_C01" href="" target=""><em>강남 팀플전문관</em></a></li>
                        <li><a class="fix_C02" href="" target=""><em>신촌</em></a></li>
                        <li><a class="fix_C03" href="" target=""><em>송파</em></a></li>
                        <li><a class="fix_C04" href="" target=""><em>부천</em></a></li>
                        <li><a class="fix_C05" href="" target=""><em>일산</em></a></li>
                        <li><a class="fix_C06" href="" target=""><em>평촌</em></a></li>
                    </ul>
                </div>
                <p class="notice">
                    ※ 학원별 모집 과정과 운영 프로그램은 상이할 수 있습니다.
                </p>
            </div>

            <div class="section_control" style="background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/bg_control.jpg') 50% top no-repeat;background-size:cover;">            
                <div class="wrap">
                    <div class="control_title ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/control_title.png" alt="빈틈없는 관리는 필수!" />
                    </div>
                    <div class="mt70 ani_element b_to_t delay100">
                        <div class="control_circle">
                            <div class="control_arrow">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/control_arrow.png" alt="자기 주도 학습" />
                            </div>
                            <div class="control_center">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/control_center.png" alt="자기 주도 학습" />
                            </div>
                            <div class="control_element">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/control_element.png" alt="자기 주도 학습" />
                            </div>
                        </div>
                    </div>
                    <div class="mt40 control_sub_title  ani_element b_to_t delay150">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/control_sub_title.png" alt="전문가의 종합 관리가 꼭!" />
                    </div>
                </div>
            </div>

            <div class="section_diagram">            
                <div class="wrap">
                    <div class="diagram_title ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/diagram_title.png" alt="메가스터디학원 퍼플반" />
                    </div>
                    <div class="mt70 ani_element b_to_t delay100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/diagram_sub_title.png" alt="대입성공" />
                    </div>
                    <div class="diagram_rect">
                        <div class="ani_element b_to_t delay150">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/graph1.jpg" alt="대입성공" />
                        </div>
                        <div class="diagram_line ani_element t_to_b delay400">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/line.png" alt="라인" />
                        </div>
                        <div>
                            <div class="rect_list">
                                <div data-aos="zoom" data-aos-easing="ease-in-cubic" data-aos-delay="0">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/graph2_1.png" alt="" />
                                </div>
                                <div data-aos="zoom" data-aos-easing="ease-in-cubic" data-aos-delay="100">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/graph2_2.png" alt="" />
                                </div>
                                <div data-aos="zoom" data-aos-easing="ease-in-cubic" data-aos-delay="200">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/graph2_3.png" alt="" />
                                </div>
                                <div data-aos="zoom" data-aos-easing="ease-in-cubic" data-aos-delay="300">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/graph2_4.png" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mt120 ani_element b_to_t delay500">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/diagram_sub_title2.png" alt="" />
                    </div>
                    <div class="mt70">
                        <div class="diagram_circle">
                            <div data-aos="zoom" data-aos-easing="ease-in-cubic" data-aos-anchor=".diagram_circle" data-aos-delay="200">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/circle0.png" alt="" />
                            </div>
                            <div class="circle circle1" data-aos="zoom" data-aos-easing="ease-in-cubic" data-aos-anchor=".diagram_circle" data-aos-delay="400">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/circle1.png" alt="" />
                            </div>
                            <div class="circle circle2" data-aos="zoom" data-aos-easing="ease-in-cubic" data-aos-anchor=".diagram_circle" data-aos-delay="500">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/circle2.png" alt="" />
                            </div>
                            <div class="circle circle3" data-aos="zoom" data-aos-easing="ease-in-cubic" data-aos-anchor=".diagram_circle" data-aos-delay="600">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/circle3.png" alt="" />
                            </div>
                            <div class="circle circle4" data-aos="zoom" data-aos-easing="ease-in-cubic" data-aos-anchor=".diagram_circle" data-aos-delay="700">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/circle4.png" alt="" />
                            </div>
                            <div class="circle circle5" data-aos="zoom" data-aos-easing="ease-in-cubic" data-aos-anchor=".diagram_circle" data-aos-delay="800">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/circle5.png" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="section_report">            
                <div class="wrap">
                    <div class="report_title ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/report_title.png" alt="메가멘토 메가 스마트 리포트" />
                    </div>
                    <div class="mt80 report_sub_title ani_element b_to_t delay100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/report_sub_title.png" alt="메가멘토" />
                    </div>
                    <div class="mt70 ani_element b_to_t delay150">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/img_report.png" alt="다양한 학습 콘텐츠 & 서비스" />
                    </div>
                    <div class="mt40 ani_element b_to_t delay200">
                        <a class="btn_report" href="https://campus.megastudy.net/campus_common/2023/2023_megamentor/index.asp" target="_blank">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/btn_report.png" alt="메가멘토 자세히 보기" />
                        </a>
                    </div>
                    <div class="mt100 report_sub_title2 ani_element b_to_t delay250">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/report_sub_title2.png" alt="메가 스마트 리포트" />
                    </div>
                    <div class="mt70 ani_element b_to_t delay300">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/img_report2.png" alt="메가 스마트 리포트" />
                    </div>
                </div>
            </div>

            <!-- <div class="section_map">
                <div class="wrap">
                    <div class="map_title ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/map_title.png" alt="실전 모의고사" /> 
                    </div>
                    <div class="map_box ani_element b_to_t delay100">
                        <img class="map" src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/img_map.png" alt="" />
                        <a class="btn_map" href="https://campus.megastudy.net/campus_common/2023/2023_map/index.asp" target="_blank">
                            <span class="hidden">실전 모의고사 MAP 자세히보기</span>
                        </a>
                    </div>
                </div>
            </div> -->
 
            <div class="section_contents" style="background-color: #f6f6f6;">            
                <div class="wrap">
                    <div class="contents_title ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/contents_title.png" alt="다양한 학습 콘텐츠 & 서비스" />
                    </div>
                    <div class="mt70 ani_element b_to_t delay100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/img_contents.png" alt="다양한 학습 콘텐츠 & 서비스" />
                    </div>
                </div>
            </div>
            
            <div class="section_review">            
                <div class="wrap">
                    <div class="review_title ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/review_title.png" alt="선배들의 리얼 후기" />
                    </div>
                    <div class="mt70  ani_element b_to_t delay100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/img_review.png" alt="선배들의 리얼 후기" />
                    </div>
                </div>
            </div>

            <div class="section_link_list" id="link">
                <div class="wrap">
                    <div class="link_title ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_perpl_gate/link_title.png" alt="2025 퍼플반 학원별 모집안내" />
                    </div>
                    <div class="academy_list mt70 ani_element b_to_t delay100"> 
                        <ul>
                            <li id="C01" class="cam_list">
                                <a href="https://gangnam.megastudy.net/gangnam/nsu/nsu/2025/2025_perpl/perpl_01.asp" target="_blank">
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
                            
                            <li id="C02" class="cam_list">
                                <a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2025/2025_perpl/perpl_01.asp" target="_blank">
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
                            <li id="C03" class="cam_list">
                                <a href="https://songpa.megastudy.net/songpa/nsu/nsu/2025/2025_perpl/perpl_01.asp" target="_blank">
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
                            <li id="C04" class="cam_list">
                                <a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2025/2025_perpl/perpl_01.asp" target="_blank">
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
                            <li id="C05" class="cam_list">
                                <a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2025/2025_purple/purple_01.asp" target="_blank">
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
                            <li id="C06" class="cam_list">
                                <a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2025/2025_purpl/purpl_01.asp" target="_blank">
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

<!-- AOS -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script type="text/javascript">
    $(document).ready(function ($) {
	});

    $(function(){
        rightQuickBanner();
        titleTweenEvent();
        AosMotionEvent();
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
        var topObj = jQuery("#contents .section_title");
        var topMotion = new TimelineMax({repeat:0});
        topMotion.to(topObj.find(".act01"), 0, {delay:0, opacity:1, marginLeft:"-300px"})
        topMotion.to(topObj.find(".act01_01"), 0, {delay:0, opacity:1, marginLeft:"300px"})
        topMotion.to(topObj.find(".act02"), 0, {delay:0, opacity:0})
        topMotion.to(topObj.find(".act02_01"), 0, {delay:0, opacity:0})
        topMotion.to(topObj.find(".act02_02"), 0, {delay:0, opacity:0}) //per
        topMotion.to(topObj.find(".act02_03"), 0, {delay:0, opacity:0}) //Pl 
        topMotion.to(topObj.find(".act02_02_2"), 0, {delay:0, opacity:0, marginLeft:"73px"}) //sonal
        topMotion.to(topObj.find(".act02_03_2"), 0, {delay:0, opacity:0, marginLeft:"197px"}) //ay
        topMotion.to(topObj.find(".act03"), 0, {delay:0, opacity:0, scale:0.4})
        topMotion.to(topObj.find(".act04"), 0, {delay:0, opacity:0, scale:0.4})

        .to(topObj.find(".act01"), 0.3, {delay:0, opacity:1, ease:Power1.easeIn, marginLeft:"-162px"})
        .to(topObj.find(".act01_01"), 0.3, {delay:-0.3, opacity:1, ease:Power1.easeIn, marginLeft:"171px"})

        .to(topObj.find(".act02"), 0.3, {delay:0.1, opacity:1, ease:Power1.easeIn, transformOrigin:"center center"})
        .to(topObj.find(".act02_01"), 0.3, {delay:0, opacity:1, ease:Power1.easeIn, marginLeft:"-116px", transformOrigin:"center center"}) //자기 주도 학습과정
        .to(topObj.find(".act02_02"), 0.3, {delay:-0.3, opacity:1, ease:Power1.easeIn, marginLeft:"60px"}) //per
        .to(topObj.find(".act02_03"), 0.3, {delay:-0.3, opacity:1, ease:Power1.easeIn, marginLeft:"104px"}) //Pl

        .to(topObj.find(".act02_03"), 0.3, {delay:0.2, opacity:1, ease:Power0.easeInOut, marginLeft:"195px"}) //Pl
        .to(topObj.find(".act02_02_2"), 0.3, {delay:0, opacity:1, ease:Power0.easeInOut, marginLeft:"126px"}) //sonal
        .to(topObj.find(".act02_03_2"), 0.3, {delay:-0.3, opacity:1, ease:Power0.easeInOut, marginLeft:"226px"}) //ay

        .to(topObj.find(".act03"), 0.4, {delay:0, opacity:1, scale:1, ease:Power0.easeIn, transformOrigin:"center top"})
        .to(topObj.find(".act04"), 0.4, {delay:0, opacity:1, scale:1, ease:Power0.easeIn, transformOrigin:"center top",
            onComplete: function () { 
                TweenMax.fromTo($('.act04_01'), 1, { opacity: 1 }, { opacity: 0.4, delay: 0.1, repeat: -1, yoyo:true, ease: Power3.easeIn });
                TweenMax.fromTo($('.act04_02'), 1, { opacity: 1 }, { opacity: 0.4, delay: 0.1, repeat: -1, yoyo:true, ease: Power3.easeIn });
                TweenMax.fromTo($('.act04_03'), 1, { opacity: 1 }, { opacity: 0.4, delay: 0.1, repeat: -1, yoyo:true, ease: Power3.easeIn });
            }
        })
    }

    function AosMotionEvent(){
        AOS.init({
            duration: 500,
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
			var elementP = (elementT + elementH - 200);
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

        if(scrolled > $(".section_diagram").offset().top && scrolled < $(".section_link_list").offset().top-500 ) {
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"block"});
        }
        if(scrolled > $(".section_link_list").offset().top-500 || scrolled < $(".section_diagram").offset().top) {    
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
        }
	}
</script>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>