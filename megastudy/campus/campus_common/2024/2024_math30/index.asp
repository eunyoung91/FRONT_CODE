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
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>

<script type="text/javascript" src="/public/js/waypoints.min.js"></script>
<script type="text/javascript" src="/public/js/jquery.counterup.min.js"></script>
<script type="text/javascript">

    $(document).ready(function() {
        $('.bxslider_stu').bxSlider({
            auto: true,
            mode: 'horizontal',
            //autoControls: true,
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


</script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<!--[if !IE]>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<!--<![endif]-->
<!--[if IE]>
   <link href="font.css">
<![endif]-->

<style type="text/css">

#div_cont .con {
    width: 960px;
    margin: 0 auto;
    position: relative;
    
}
.top_wrap {
    position: relative;
    height: 875px;  
    background: url('<%=Application("img_path")%>/library/campus_common/2024/2024_math30/top_bg.jpg') center top no-repeat, linear-gradient(to bottom, #d3e5ff, #cfe2ff, #b2d1ff);
    text-align: center;
    
}
.top_wrap .con {
    width: 960px;
    margin: 0 auto;
    position: relative;
}
.top_wrap .con .act_wrap {
    position: absolute;
    top: 0;
    width: 100%;
    height: 875px;
}
.top_wrap .con .act_wrap .count_wrap {
    position: absolute;
    width: 399px;
    height: 74px;
    left: 300px;
    top: 125px;
}
.top_wrap .con img {
    opacity: 0;
    position: relative;    
    z-index: 2;
}
.top_wrap .con .img_wrap {
    width: 612px;
    height: 275px;
    overflow: hidden;
    position: absolute;
    top: 220px;
    left: 177px;
    z-index: 1;
}
.top_wrap .con img.act01 {
}
.top_wrap .con img.act02 {
    margin-top: 270px;
}
.top_wrap .con img.act03 {
    margin-top: 30px; 
    margin-left: -15px;
    z-index: 1 !important; 
}
.top_wrap .con img.act04 {
    margin-top: -100px;
    margin-left: -18px;
    z-index: 0 !important;
}

.top_wrap .con img.act05 {
    position:absolute;
    top:105px;
    left:-117px;
}
.top_wrap .con img.act06 {
    position:absolute;
    top:590px;
    left:-270px;
}
.top_wrap .con img.act07 {
    position:absolute;
    top:115px;
    right:-387px;
}
.top_wrap .con img.act08 {
    position:absolute;
    top:350px;
    right:-225px;
}
    .div_con {z-index: 2; position:relative;}
.div_con1 {
    position: relative;
    overflow: hidden;
    padding-bottom: 100px;
    background: #fff;
    /* width: 1000px; */
    margin: 0 auto;
    z-index:1;
}
.div_con1 .border_box_wrap {
    /* overflow: hidden; */
}
.div_con1 .border_box {
    width: calc(100% - 2px);  
    display: block; 
    position: relative;
    padding:65px 0;
    margin-bottom:70px;
    border: 1px solid #ddd;
    
}
.div_con1 .border_box img{
    text-align: center;
}
/* .div_con1 .border_box + .border_box {
    margin-left: 20px;
} */
.border_box .bx-has-pager {position:absolute; bottom:-70px; width:100%;height:15px;} 
.bx-controls-direction {display:none;}
.bx-pager-item {display:inline-block; width:11px; height:11px;}
.bx-pager-item a {display:inline-block; width:11px; height:11px; border:1px solid #686868; border-radius:10px; text-indent:-111px; overflow:hidden;}
.bx-pager-item + .bx-pager-item {margin-left:8px;}
.bx-pager-item a.active {background:#686868;}
.div_con1 .img_wrap {
    position: relative;
    background: #fff;
    width: 960px;
    margin: 0 auto;
}
.div_con2 {
    position: relative;
    overflow: hidden;
    padding: 0px 0 75px;
    background: #ddeaff url('<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con02_bg.jpg') center 0 no-repeat;
}
.div_con2 .con {
    position: relative;
}
.div_con2 .img_wrap {position:relative;}    
.div_con2 .img_wrap .posi {position:absolute;}
.div_con2 .img_wrap .posi.posi01 {top:48px; left:0px;}    
.div_con2 .img_wrap .posi.posi02 {top:105px; left:610px;}    
.div_con2 .img_wrap .posi.posi03 {top:267px; left:54px;}    

.menu_wrap {
    overflow: hidden;
    width: 1000px;
    margin: 0 auto;
}
.menu_wrap li {
    float: left;
    width: 500px;
    display: inline-block;
    cursor: pointer;
}
.menu_contents {
    display: none;
}
.menu_contents.on {
    display: block;
}
.div_con3 {
    overflow: hidden;
    background: #fff;
    padding-bottom: 100px;
}
.div_con5 {
    position: relative;
    overflow: hidden;
    height: 323px;
    background: #0e214d url('<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con04_img01.jpg') center 0 no-repeat;
}
.div_con5 img {
    margin-top: 100px;
}
.div_con4 {
    position: relative;
    overflow: hidden;
    padding: 100px 0;
    margin:0 auto;
    background: #ddeaff;
}
#div_cont {
    width: 100%;
    text-align: center;
    clear: both;
    position: relative;
    overflow: hidden;
}
    
.count_wrap {position:relative; color:#ff7800; font-size:38px; font-weight:700; font-family: 'Montserrat'; z-index:0;}
.count_wrap .counter {position:absolute;  text-align:right;} 
.count_wrap .counter.counter01 {top:-7px; left:-5px; width:70px;}
.count_wrap .counter.counter02 {top:-7px; left:95px; width:53px; text-align:left;}
.count_wrap .counter.counter03 {top:-7px; left:171px; width:116px; letter-spacing: -2px;}

/* animation */
.animation_element {
	transition: all 700ms;
	opacity: 0;
}
.animation_element.delay150 {
	transition-delay: 150ms;
}
.animation_element.delay200 {
	transition-delay: 200ms;
}
.animation_element.delay250 {
	transition-delay: 250ms;
}
.animation_element.delay300 {
	transition-delay: 300ms;
}
.animation_element.delay450 {
	transition-delay: 450ms;
}
.animation_element.delay550 {
	transition-delay: 550ms;
}
.animation_element.delay650 {
	transition-delay: 650ms;
}
.animation_element.delay750 {
	transition-delay: 750ms;
}
.animation_element.delay850 {
	transition-delay: 850ms;
}
.animation_element.delay950 {
	transition-delay: 950ms;
}
.animation_element.delay1050 {
	transition-delay: 1050ms;
}
.animation_element.delay1150 {
	transition-delay: 1150ms;
}
.animation_element.delay1250 {
	transition-delay: 1250ms;
}
.animation_element.delay1350 {
	transition-delay: 1350ms;
}
.animation_element.delay1450 {
	transition-delay: 1450ms;
}
.animation_element.delay1550 {
	transition-delay: 1550ms;
}
.animation_element.delay1650 {
	transition-delay: 1650ms;
}
.animation_element.delay1750 {
	transition-delay: 1750ms;
}
.animation_element.delay1850 {
	transition-delay: 1850ms;
}
.animation_element.delay1950 {
	transition-delay: 1950ms;
}
.animation_element.delay2050 {
	transition-delay: 2050ms;
}
.animation_element.delay2150 {
	transition-delay: 2150ms;
}
.animation_element.delay2250 {
	transition-delay: 2250ms;
}
.animation_element.delay2350 {
	transition-delay: 2350ms;
}
.animation_element.b_to_t {
	transform: translate(0px, 70px);
}
.animation_element.l_to_r {
	transform: translate(-100px, 0px) !important;
}
.animation_element.animation_set {
	opacity: 1 !important;
}
.animation_element.l_to_r.animation_set {
	transform: translate(-7px, 0px) !important;
}



/* rolling_slide */
.slide_area {
	position: relative;
	height: 247px;
	margin-top: 70px;
	padding-bottom:0px;
}
.slide_wrap {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 4800px;
    height:247px;
	margin-left: -100px;
	overflow: hidden;
}
.slide_wrap li {
	float: left;
	width: 342px;
	height: 247px;
	margin-right:8px;
}
.slide_wrap:after {
	clear: both;
	display: block;
	content: '';
}
</style>
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
                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_math30/con01_img01.png" alt="" />
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
                        <img class="mt60" src="<%=Application("img_path")%>/library/campus_common/2023/2023_math30/con03_img02_241203.png" alt="플래너" />
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
    
    <script src="/public/js/TweenMax.min.js"></script> 
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




    </script> 
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
