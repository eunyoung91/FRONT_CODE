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
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<!-- AOS -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">

<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>

<style>
@import url('https://fonts.googleapis.com/earlyaccess/notosanskr.css');
#container{padding-bottom:0 !important;}
#container .inner{position:relative;width:1000px;margin:0 auto;padding-bottom:100px;}
.seg_visual{ background:#cce0ef url('<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/bg_visual.jpg') center top no-repeat; background-size:cover;}
.seg_visual .inner{height:1274px;padding-bottom:0 !important;}
.seg_visual .inner .motion{ position:absolute;left:0;right:0;margin:0 auto;opacity:0;}
.seg_visual .inner .motion._02{top:100px;}
.seg_visual .inner .motion._03{top:173px;}
.seg_visual .inner .motion._04{top:240px;}
.seg_visual .inner .motion._01{ top:417px; left:50%; margin-left:-454px;}
.seg_visual .inner .motion._05{top:1098px;}
.seg_point .point_circle{margin-top:60px;display: flex;flex-wrap: wrap;gap:60px 0;justify-content:space-between;}
.seg_point .point_circle > div:nth-child(odd){width:510px; text-align: left;}
.seg_point .point_circle > div:nth-child(even){width:490px; text-align: left;}
.seg_review{position:relative;}
.seg_review::before{
	content:"";position:absolute;top:0;left:0;right:0;height:505px;
	background:#182537 url('<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/bg_review.jpg') center top no-repeat;
	background-size:cover;
}

/* rolling_slide */
.slide_area {
	position: relative;
	height: 343px;
}
.slide_wrap {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 5040px;
    height:343px;
	margin-left: -100px;
	overflow: hidden;
}
.slide_wrap li {
	float: left;
	width: 495px;
	height: 343px;
	margin-right:10px;
}
.slide_wrap:after {
	clear: both;
	display: block;
	content: '';
}
/* // rolling_slide */
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

				<div class="seg_visual">
					<div class="inner">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/txt1.png" alt="" class="motion _02">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/txt2.png" alt="" class="motion _03">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/txt3.png" alt="" class="motion _04">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner.png" alt="플래너이미지" class="motion _01">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/txt4.png" alt="" class="motion _05">
					</div>
				</div>

				<div class="seg_point">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="0">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/point_main_title.png" alt="">
						</div>
						<div class="point_circle">
							<div data-aos="zoom-in" data-aos-delay="100">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/point_1.png" alt="">
							</div>
							<div data-aos="zoom-in" data-aos-delay="200">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/point_2.png" alt="">
							</div>
							<div data-aos="zoom-in" data-aos-delay="300">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/point_3.png" alt="">
							</div>
							<div data-aos="zoom-in" data-aos-delay="400">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/point_4.png" alt="">
							</div>
						</div>
					</div>
				</div>

				<div class="seg_planner" style="background-color:#fdf7e6;">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="0">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_main_title.png" alt="">
						</div>
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_title.png" alt="">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="200">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_content.png" alt="">
						</div>
					</div>
				</div>
				<div class="seg_planner_1">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="0">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_1_title.png" alt="">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_1_content.png" alt="">
						</div>
					</div>
				</div>
				<div class="seg_planner_2" style="background-color:#e5eff7;">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="0">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_2_title.png" alt="">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_2_content.png" alt="">
						</div>
					</div>
				</div>
				<div class="seg_planner_3">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="0">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_3_title.png" alt="">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_3_content.png" alt="">
						</div>
					</div>
				</div>
				<div class="seg_planner_4" style="background-color:#fdf7e6;"> 
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="0">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_4_title.png" alt="">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_4_content.png" alt="">
						</div>
					</div>
				</div>
				<div class="seg_planner_5">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="0">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_5_title.png" alt="">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/planner_5_content.png" alt="">
						</div>
					</div>
				</div>
				<div class="seg_review">
					<div data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="0">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/img_review_main.png" alt="">
					</div>
					<div class="slide_area" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
						<ul class="slide_wrap">
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/1.png" alt="" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/2.png" alt="" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/3.png" alt="" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/4.png" alt="" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/5.png" alt="" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/6.png" alt="" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/7.png" alt="" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/8.png" alt="" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/9.png" alt="" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/10.png" alt="" /></li>
						</ul>
					</div>
					<div class="inner">
						<div class="mt40" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="200">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/img_review_noti.png" alt="">
						</div>
						<div class="mt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="300">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/img_review_1.png" alt="">
						</div>
						<div class="mt70" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="400">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_waffle/img_review_2.png" alt="">
						</div>
					</div>	
				</div>
            </div>
        </div>
    </div>
    
    <!-- container End --> 
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>	<!-- AOS -->
    <script src="/public/js/TweenMax.min.js"></script> 
	<script language="JavaScript" src="/public/jquery/jquery.bxslider.min.js"></script>

	<script type="text/javascript">
		$(window).load(function() {
			var rSlide = $('.slide_wrap');
			var rItemw = $('.slide_wrap li').outerWidth(true);
			var rNum = $('.slide_wrap li').length;
		
			var rSlidew = rItemw * rNum;
			var rSpeed = 8000;
			var rPause = false;
			
			autoPlay();

			//mouse in
			$('.slide_wrap').on("mouseenter", function(){
				rPause = false;
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
								rSpeed = 8000 * position;
							};
						},
						complete : function(){
							$('.slide_wrap li').eq(0).appendTo(rSlide);
							rSlide.css('left', 0);
							rSpeed = 8000;
							autoPlay();
						}
					}
				);
			}
		});
	</script>

    <script type="text/javascript">
        $(function(){
            titleTweenEvent();
			AosMotionEvent();
            $(window).on('load', function () {
                pageLoadEvent()                
            });
        });
        function pageLoadEvent(){
            var temp_s = $(".seg_visual").offset().top;
            $('html, body').animate({ scrollTop: temp_s}, 500);
        }
		function titleTweenEvent(){
			var $visual = $('.seg_visual');
			TweenMax.fromTo( $visual.find('.motion._02'), .5, { opacity: 0, }, { opacity: 1, delay: .2, ease: Sine.easeInOut });
			TweenMax.fromTo( $visual.find('.motion._03'), .5, { opacity: 0, }, { opacity: 1, delay: .4, ease: Sine.easeInOut });
			TweenMax.fromTo( $visual.find('.motion._04'), .4, { opacity: 0, scale:1.2 }, { opacity: 1, delay: .8, scale:1, ease: Sine.easeInOut });
			TweenMax.fromTo( $visual.find('.motion._01'), 1.4, { opacity: 0, scale: 0, x:50 }, { opacity: 1, scale: 1, x:0, delay: .8, ease: Back.easeInOut.config(1), transformOrigin:"90% bottom"});
			TweenMax.fromTo( $visual.find('.motion._05'), .4, { opacity: 0, }, { opacity: 1, delay:1.8, ease: Sine.easeInOut });
		}
		function AosMotionEvent(){
			AOS.init({
				duration: 500,
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
