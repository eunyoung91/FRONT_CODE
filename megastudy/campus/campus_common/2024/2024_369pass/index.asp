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
<link rel="stylesheet" type="text/css" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
<link rel="stylesheet" type="text/css" href="web.css">
<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/waypoints.min.js"></script>
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

        <div id="topWrap" class="top_wrap">
            <div class="img_wrap">
                <img class="act act01" src="<%=Application("img_path")%>/library/campus_common/2024_369pass/txt01.png" alt="방법이 옳으니 성적이 오른다" />
                <img class="act act02" src="<%=Application("img_path")%>/library/campus_common/2024_369pass/txt02.png" alt="369" />
                <img class="act act03" src="<%=Application("img_path")%>/library/campus_common/2024_369pass/txt03.png" alt="맞춤합격 시스템" />
                <img class="act act03_1" src="<%=Application("img_path")%>/library/campus_common/2024_369pass/txt03_2.png" alt="맞춤합격 시스템" />
                <img class="act act04" src="<%=Application("img_path")%>/library/campus_common/2024_369pass/txt04.png" alt="진짜 성적이 오르는 공부 진짜 합격을 위한 공부" />
            </div> 
            <div class="top_bg_area">
                <ul class="slide_area">
                    <li class="slide_img1" style="background:url('<%=Application("img_path")%>/library/campus_common/2024_369pass/top_bg01.jpg') 50% 0 no-repeat;background-size:cover;"></li>
                    <li class="slide_img2" style="background:url('<%=Application("img_path")%>/library/campus_common/2024_369pass/top_bg02.jpg') 50% 0 no-repeat;background-size:cover;"></li>
                    <li class="slide_img3" style="background:url('<%=Application("img_path")%>/library/campus_common/2024_369pass/top_bg03.jpg') 50% 0 no-repeat;background-size:cover;"></li>
                </ul>
            </div>
        </div>

        <div class="pass_content">
            <div class="inner">
                <div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="0">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024_369pass/con01_title.png" alt="더 강력한 동기부여! 팀플장학" />
                </div>
                <div class="mt50" data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024_369pass/con01_img01_1.png" alt="" />
                </div>
            </div>
        </div>

        <div class="pass_content" style="background-color:#f6efec;">
            <div class="inner">
                <div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="0">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024_369pass/con02_title.png" alt="더 완벽한 커리큘럼! 6단계 커리큘럼" />
                </div>
                <div class="mt50"  data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024_369pass/con01_img02_1.png" alt="" />
                </div>
            </div>
        </div>

        <div class="pass_content">
            <div class="inner">
                <div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="0">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024_369pass/con03_title.png" alt="더 확실한 실전대비! 실전 모의수능" />
                </div>
                <div class="mt50"  data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024_369pass/con01_img03_1.png" alt="" />
                </div>
            </div>
        </div>

        <div class="banner_area">
            <a href="/campus_common/2025/2025_final_gate/index.asp" target="_blank" class="btn_banner" data-aos="fade" data-aos-easing="ease-in-sine" data-aos-delay="0">
                <img src="<%=Application("img_path")%>/library/campus_common/2024_369pass/btn_banner_240812.png" alt="2025 수능 파이널 문제풀이반" />
            </a>
        </div>

    </div>
    <!-- // container -->
</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="/public/js/TweenMax.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){

    });

    $(function(){
        titleSlideEvent();
        titleTweenEvent();
        AosMotionEvent();
        $(window).on('load', function () {
            pageLoadEvent();
		});
    });

    function titleSlideEvent(){
        $('.slide_area').bxSlider({
            mode: 'fade',
            auto:true,
            speed:1500,
            pager:false,
            controls:false
        }); 
    }

    function titleTweenEvent(){
        var titleEvent = $('.top_wrap');
        TweenMax.fromTo( titleEvent.find('.act01'), 1, {opacity:0, y:50}, {opacity:1, y:0, delay:0.1, ease: Power2.easeOut});
        TweenMax.fromTo( titleEvent.find('.act02'), 1, {opacity:0}, {opacity:1, delay:0.3, ease: Power2.easeOut});
        TweenMax.fromTo( titleEvent.find('.act03'), 1, {opacity:0, y:50}, {opacity:1, y:0, delay:0.5, ease: Power2.easeOut});
        TweenMax.fromTo( titleEvent.find('.act03_1'), 1.2, {opacity:0}, {opacity:1, width:"851px", height:"23px", delay:-0.2, transformOrigin: 'center center', ease: Back.easeIn});
        TweenMax.fromTo( titleEvent.find('.act04'), 1, {opacity:0, y:50}, {opacity:1, y:0, delay:0.7, ease: Power2.easeOut});
    }

    function AosMotionEvent(){
        AOS.init({
            duration: 500,
            once: true,
            animatedClassName: 'aos-animate',
            offset: 300,
        });
    }

    function pageLoadEvent(){
        var temp_s = $("#topWrap").offset().top;
        $('html, body').animate({ scrollTop: temp_s}, 500);
    }
</script>

<!-- wrapper End -->
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
