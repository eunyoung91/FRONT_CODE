<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->
	<title><%=gMGC_Campus_Title%></title>

	<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
	<!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
	<!-- <link rel="stylesheet" type="text/css" href="/library/css/report_2015.css" /> -->
	<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
	<link rel="stylesheet" type="text/css" href="/library/css/amazingslider.css">
    
	<!-- #include virtual="/public/jquery.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
	<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link rel="stylesheet" href="web.css">
	<!-- intro전용 css -->
	<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="/public/js/intro.js"></script>
	<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
	<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
    <script src="/public/js/TweenMax.min.js"></script> 
    <script type="text/javascript" src="/public/jquery/slick.js"></script>
    
	<script src="/public/js/waypoints.min.js"></script>
	<script src="/public/js/jquery.counterup.min.js"></script>
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
    <div id="container" style="padding-bottom:0px !important;">
        <div id="div_cont">
            <div id="div_full" class="div_con taL">
                <div class="top_wrap">
                    
                    <div class="con">
                        <div class="act_wrap">
                            <div class="count_wrap">
                                <span class="counter counter01">365</span> <span class="counter counter02">30</span> <span class="counter counter03">10,950</span>

                                <img class="act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/top_txt01.png" alt="카운팅" />
                            </div>
                            <img class="act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/top_txt02.png" alt="일일수학" />
                            <img class="act03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/top_txt03.png" alt="30제" />
                            <img class="act04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/top_img01.png" alt="책" />
                            
                            <img class="act05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/top_img02.png" alt="수학공식" />
                            <img class="act06" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/top_img03.png" alt="수학공식" />
                            <img class="act07" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/top_img04.png" alt="수학공식" />
                            <img class="act08" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/top_img05.png" alt="수학공식" />
                        </div>
                    </div>
                </div>
            </div>
            <div id="con1" class="div_con1">
                <div class="taC" style="margin-top:230px;">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con01_title.png" alt="선배들이 경험한 확실한 효과" />
                </div>
                <div class="mt80">
                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_math30/con01_img01.png" alt="" />
                </div>
            </div>
            <div id="con2" class="div_con2">
                <div class="con taC">
                    <img class="mt100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con02_title.png" alt="수능수학에 최적화된 문제풀이" />
                    <div class="img_wrap mt70">
                        <img class="animation_element posi posi01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con02_txt01.png" alt="10,950" />
                        <img class="animation_element posi posi02 delay150" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con02_txt02.png" alt="1~" />
                        <img class="animation_element posi posi03 delay250" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con02_txt03.png" alt="11x11.5" />
                        
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con02_img01.png" alt="책" />
                    </div>
                </div>
            </div>
            <div id="con3" class="div_con3">
                <div class="con taC">
                    <img class="mt100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con03_title.png" alt="알고쓰면 더 효과적인 TIP!" />
                    <ul class="menu_wrap mt60">
                        <li class="on">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/menu01_on.png" alt="" />
                        </li>
                        <li>
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/menu02_off.png" alt="" />
                        </li>
                    </ul>
                    <div class="menu_contents contents01 on">
                        <img class="mt60" src="<%=Application("img_path")%>/library/campus_common/2021_math30_1/con03_img01.jpg" alt="" />
                    </div>
                    <div class="menu_contents contents02">
                        <img class="mt60" src="<%=Application("img_path")%>/library/campus_common/2025/2025_math30/con03_img02_241203.png" alt="플래너" />
                    </div>
                </div>
            </div>
            <div id="con4" class="div_con4">
                <div class="taC">
                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con05_txt01.png" alt="일일수학 30제의 생생한 활용법" />
                
                    <!-- slide_rolling -->
                    <div class="slide_area mt80">
                        <ul class="slide_wrap">
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_slide_01.png" alt="" /></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_slide_02.png" alt="" /></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_slide_03.png" alt="" /></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_slide_04.png" alt="" /></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_slide_05.png" alt="" /></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_slide_06.png" alt="" /></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_slide_07.png" alt="" /></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_slide_08.png" alt="" /></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_slide_09.png" alt="" /></li>   
                        </ul>
                    </div>
                
                    <img class="mt50" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con05_txt02.png" alt="" />

                </div>
            </div>
            <div id="con5" class="div_con5">
                <div class="taC">
                    <img class="animation_element" src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_txt01.png" alt="" />
                </div>
            </div>
        </div>
    </div>
    
    <!-- container End --> 

    <script type="text/javascript">
        var motion1 = new TimelineMax({delay:0.5,repeat:0})
        motion1.to(".act02", 0.5, {opacity:1, left:0})
        var motion3 = new TimelineMax({delay:0,repeat:0})
        motion3.to(".act04", 0, {opacity:1})

        var motion = new TimelineMax({delay:0,repeat:0})
        motion.to(".act01", 0, {opacity:1})
        var motion2 = new TimelineMax({delay:1,repeat:0})
        motion2.to(".act03", 0.5, {opacity:1})

        var motion5 = new TimelineMax({delay:0,repeat:-1,yoyo:true})
        motion5.to(".act05", 2, {opacity:1})
        var motion6 = new TimelineMax({delay:1,repeat:-1,yoyo:true})
        motion6.to(".act06", 2, {opacity:1})
        var motion7 = new TimelineMax({delay:2,repeat:-1,yoyo:true})
        motion7.to(".act07", 2, {opacity:1})
        var motion8 = new TimelineMax({delay:3,repeat:-1,yoyo:true})
        motion8.to(".act08", 2, {opacity:1})

        $(document).ready(function() {
            $('.bxslider_stu').bxSlider({
                auto: true,
                mode: 'horizontal',
                stopAutoOnClick: true,
                speed: 500,
                pager: true,
                hideControlOnEnd: true
            });
            $(".menu_wrap li").click(function(){
                $(".menu_wrap li").removeClass("on")
                $(".menu_contents").removeClass("on")

                var idx = $(this).index()+1;
                $(this).addClass("on")
                $(".contents0"+ idx).addClass("on")
                
                $(this).siblings("li").find('img').attr("src", $(this).siblings("li").find('img').attr("src").replace('on.png', 'off.png')); 
                
                if($(this).hasClass("on")) {
                    
                    $(this).find('img').attr("src",$(this).find('img').attr("src").replace('off.png', 'on.png')); 
                }
                else {
                $(this).find('img').attr("src",$(this).find('img').attr("src").replace('on.png', 'off.png'));
                }
            })
            
            $('.counter01').counterUp({
                delay: 10,
                time: 1000
            });
            $('.counter02').counterUp({
                delay: 10,
                time: 500
            });
            $('.counter03').counterUp({
                delay: 10,
                time: 1000
            });
        });
                
        $(window).on({
            "load":function(){
                var temp_s = $("#div_full").offset().top;
                $("html, body").animate({
                    scrollTop: temp_s
                }, 500);
            },
            "resize":function(){
            },
            "scroll":function(){
                motion_scr();
            }
        });

        /* motion scroll */
        function motion_scr() {
            var winH = $(window).height();
            var scrT = $(window).scrollTop();
            var view_pos = winH + scrT

            $(".animation_element").each(function () {
                var elementH = $(this).outerHeight();
                var elementT = $(this).offset().top;
                var elementP = (elementT + elementH - 30);

                if ((elementP <= view_pos)) {
                    $(this).addClass("animation_set");
                }
            });
        };

    </script>

    <script type="text/javascript">
        $(window).load(function() {
            var rSlide = $('.slide_wrap');
            var rItemw = $('.slide_wrap li').outerWidth(true);
            var rNum = $('.slide_wrap li').length;
        
            var rSlidew = rItemw * rNum;
            var rSpeed = 6000;
            var rPause = false;
        
            //$('.slide_wrap').width(rSlidew);
            
            autoPlay();
        
            
            //mouse in
            $('.slide_wrap').on("mouseenter", function(){
                rPause = true;
            });
            //mouse out
            $('.slide_wrap').on("mouseleave", function(){
                rPause = false;
                autoPlay();
            });
        
            function autoPlay(){
                var rPosition = rSlide.css('left').replace(/[^-\d\.]/g, '');
                rSlide.css('left', rPosition);
                
                rSlide.animate(
                    {left : -rItemw}, 
                    {
                        duration : rSpeed,
                        easing : "linear",
                        step : function(){
                            if(rPause == true){
                                rSlide.stop();
                                var position = rSlide.css('left').replace(/[^-\d\.]/g, '');
                                position = 1 - (-position / rItemw);
                                rSpeed = 6000 * position;
                            };
                        },
                        complete : function(){
                            $('.slide_wrap li').eq(0).appendTo(rSlide);
                            rSlide.css('left', 0);
                            rSpeed = 6000;
                            autoPlay();
                        }
                    }
                );
            }
        });
    </script>
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
