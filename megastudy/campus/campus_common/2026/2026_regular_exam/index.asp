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
<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
<link rel="stylesheet" type="text/css" href="/library/css/amazingslider.css">
<link rel="stylesheet" type="text/css" href="https://mcampus.megastudy.net/asset/css/slick.css">
<!-- AOS -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
<link rel="stylesheet" type="text/css" href="web.css">
<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
<script src="/public/js/amazingslider/amazingslider.js"></script>

<style>
.visual_top { 
position: relative; overflow: hidden; height: 840px;
background:#132236 url('<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/top_bg.jpg') 50% top no-repeat;
}
.con05 {
    padding-top:95px;
    background:#153155 url('<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con05_bg.jpg') 50% 0 no-repeat;
    height: 360px;background-size: cover; box-sizing: border-box; 
} 
</style>
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
        <div id="div_cont">
            <div id="div_full" class="div_con">

                <div id="visualTop" class="visual_top">
                    <div class="visual_top_wrap"> 
                        <div class="inner">                            
                            <span class="visual posi"><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/right_bg.png" alt=""></span>  
                            <div class="paper">
                                <span class="paper01"><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/paper01.png" alt="국어"></span> 
                                <span class="paper02"><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/paper02.png" alt="수학"></span> 
                                <span class="paper03"><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/paper03.png" alt="영어"></span> 
                            </div>
                            
                            <span class="visual01_bg posi"><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/txt01_bg.png" alt=""></span>
                            <span class="visual01 posi"><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/txt01.png" alt="mega study, mega change!"></span>

                            <span class="visual02_1 posi"><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/txt02_1.png" alt="2026 N수 정규반" ></span>
                            <span class="visual02_2 posi"><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/txt02_2.png" alt="학력진단평가" ></span>

                            <span class="visual03 posi"><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/txt03.png" alt="진짜 수준별 맞춤 학습!"></span>
 
                             
                        </div>
                    </div>
                </div>

                <div class="con01">
                    <div class="inner"> 
                        <div class="title_box pt100">
                            <img data-aos="fade-in" data-aos-easing="ease-in-out" data-aos-delay="250" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con_title01.png" alt="1. 이것이 진짜 수준별 맞춤 학습" />
                        </div>

                        <div class="con_box mt80">
                            <img data-aos="fade-up"  data-aos-easing="ease-in-out" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con01_img01.png" alt="" />
                            <img data-aos="fade-up"  data-aos-easing="ease-in-out" data-aos-delay="300" class="mt20" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con01_img02.png" alt="" />
                            <img data-aos="fade-up"  data-aos-easing="ease-in-out" data-aos-delay="300" class="mt20" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con01_img03.png" alt="" />
                            <img data-aos="fade-up"  data-aos-easing="ease-in-out" data-aos-delay="300" class="mt20" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con01_img04.png" alt="" />
                        </div> 
                    </div>
                </div>

                <div class="con02">
                    <div class="inner"> 
                        <div class="title_box pt100">
                            <img data-aos="fade-in" data-aos-easing="ease-in-out" data-aos-delay="250" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con_title02.png" alt="2. 2026 N수 정규반 학력진단평가" />
                        </div>

                        <div class="con_box mt80">
                            <img data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_img01.png" alt="일시&과목" />
                            <img data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-delay="300" class="mt100" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_img02.png" alt="국어" />
                            <img data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-delay="300" class="mt60" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_img03.png" alt="수학" />
                            <img data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-delay="300" class="mt60" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_img04.png" alt="영어" />
                        </div>  
                    </div>
                    <div class="inner_full">
                        <div class="slide_area">
                            <ul class="slide_wrap">
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider01.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider02.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider03.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider04.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider05.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider06.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider07.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider08.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider01.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider02.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider03.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider04.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider05.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider06.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider07.png" alt=""></li> 
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con02_slider08.png" alt=""></li> 
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="con03">
                    <div class="inner"> 
                        <div class="title_box pt100">
                            <img data-aos="fade-in" data-aos-easing="ease-in-out" data-aos-delay="250" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con_title03.png" alt="3. 개인별 맞춤 학습 설계" />
                        </div>

                        <div class="con_box mt80">
                            <img data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con03_img01.png" alt="개인별 Level 선택" /> 
                        </div>  
                    </div>
                </div>

                <div class="con04">
                    <div class="inner"> 
                        <div class="title_box pt100">
                            <img data-aos="fade-in" data-aos-easing="ease-in-out" data-aos-delay="250" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con_title04.png" alt="4. 자유로운 선택" />
                        </div>

                        <div class="con_box mt80">
                            <img data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con04_img01.png" alt="선택 가능" /> 
                            <img data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-delay="300" class="mt50" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con04_img02.png" alt="화살표" /> 
                            <img data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-delay="300" class="mt50" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con04_img03.png" alt="테이블" /> 
                        </div>  
                    </div>
                </div>
  
                <div class="con05">
                    <div class="inner">
                        <div class="title_box">
                            <img data-aos="fade-in" data-aos-easing="ease-in-out" data-aos-delay="250" src="<%=Application("img_path")%>/library/campus_common/2026/2026_regular_exam/con05_txt01.png" alt="메가가 '더' 메가해지다!" />
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- container End --> 
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="/public/js/TweenMax.min.js"></script>
    <script language="JavaScript" src="/public/jquery/slick.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {            
        });
        
        $(function(){
            titleTweenEvent();
            aosEvent();

            $(window).on('load', function () {
                pageLoadEvent();
            });

            $('.con02 .slide_wrap').slick({
                autoplay: true,
                autoplaySpeed: 0,
                speed: 7000,
                infinite: true,
                arrows: false,
                dots: false,
                slidesToScroll: 1,
                variableWidth: true,
                pauseOnHover: false,
                pauseOnFocus: false,
                cssEase: 'linear',
			});
        });

        function pageLoadEvent(){
            var temp_s = $("#visualTop").offset().top;
            $('html, body').animate({ scrollTop: temp_s}, 500);
        }

        function titleTweenEvent(){
            var topObj = jQuery("#container .visual_top");
            var topMotion = new TimelineMax({ delay: 0, repeat: 0, opacity:0, duration:3 });

            topMotion.to(topObj.find(".visual"), 0, { y:-300 })  

            topMotion.to(topObj.find(".paper01"), 0, { y:-200 }) 
            topMotion.to(topObj.find(".paper02"), 0, { y:-200 }) 
            topMotion.to(topObj.find(".paper03"), 0, { y:-200 }) 

            topMotion.to(topObj.find(".visual01_bg"), 0, {})
            topMotion.to(topObj.find(".visual01"), 0, {})

            topMotion.to(topObj.find(".visual02_1"), 0, { x:-100 })
            topMotion.to(topObj.find(".visual02_2"), 0, { x:-100 })

            topMotion.to(topObj.find(".visual03"), 0, { x:-100 }) 
 

            .to(topObj.find(".visual"), 1.2, { delay:0, y:0, opacity:1, ease: "power4.out"}) 

            .to(topObj.find(".paper01"), 0.5, { delay:-0.5, y:0, opacity:1, ease: "power4.out"})
            .to(topObj.find(".paper02"), 0.6, { delay:-0.3, y:0, opacity:1, ease: "power4.out"})
            .to(topObj.find(".paper03"), 0.7, { delay:-0.2, y:0, opacity:1, ease: "power4.out"})
 
            .to(topObj.find(".visual01_bg"), 0.8, { delay: -1, opacity: 1, width:"629px", height:"50px", ease: "power4.in"})
            .to(topObj.find(".visual01"), 1.0, { delay: -0.7, opacity: 1, width:"547px", height:"27px", ease: "power4.in" }) 

            .to(topObj.find(".visual02_1"), 0.5, { delay: -0.5, x:0, opacity: 1, ease: "power4.in" })
            .to(topObj.find(".visual02_2"), 0.5, { delay: -0.2, x:0, opacity: 1, ease: "power4.in" })


            .to(topObj.find(".visual03"), 0.5, { delay: -0.2, x:0, opacity: 1, ease: "power4.in" }) 
 
        }

        function aosEvent(){
            AOS.init({
                duration: 600,
                easing: 'ease-in',
                once: true,
                animatedClassName: 'aos-animate',
            });
        }
    </script> 
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
