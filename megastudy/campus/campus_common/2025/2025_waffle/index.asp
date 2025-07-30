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

<!-- intro���� css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>

<style>
#container{padding-bottom:0 !important;}
#container .inner {position:relative;width:1000px;margin:0 auto;padding-bottom:100px;text-align:center;}

.waf_visual{background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/tit_bg.jpg') center top no-repeat; background-size:cover; overflow:hidden;}
.waf_visual .inner{height:1274px;padding-bottom:0 !important;}
.waf_visual .inner .motion{ position:absolute;left:0;right:0;margin:0 auto;opacity:0;z-index:5;}
.waf_visual .inner .motion._01{top:417px; left:50%; margin-left:-454px;}
.waf_visual .inner .motion._02{top:100px;}
.waf_visual .inner .motion._03{top:173px;}
.waf_visual .inner .motion._04{top:240px;}
.waf_visual .inner .motion._05{top:1098px;}
.waf_visual .inner .motion._06{top:-2px; left:50%; margin-left:-1041px; z-index:1;}

.waf_point{display:flex;flex-wrap:wrap;gap:60px 0;justify-content:space-between;margin-top:60px;}
.waf_point > div:nth-child(odd){width:510px; text-align:left;}
.waf_point > div:nth-child(even){width:490px; text-align:left;}

.waf_review{position:relative;}
.waf_review::before{content:"";position:absolute;top:0;left:0;right:0;height:505px;background:#182537 url('<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/review_bg.jpg') center top no-repeat;background-size:cover;}

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
</style>
</head>
<body>
<div id="wrapper"> 

    <!--  �ֻ�ܸ޴�//--> 
    <!--#include virtual="/library/include/common/top.asp" --> 
    <!--  //�ֻ�ܸ޴�-->
    
    <div id="header" class="<%=GetCampusColorType()%>"> 
        
        <!--��� �п��ΰ� �� ���� ��//  --> 
        <!--#include virtual="/library/include/common/top_campus_tab.asp" --> 
        <!-- //��� �п��ΰ� �� ���� �� --> 
        
        <!--  ��� ��޴�//--> 
        <!--#include virtual="/library/include/common/top_campus_detail_menu.asp" --> 
        <!-- //��� ��޴� --> 
        
    </div>
    <!-- // header -->
    <div id="container">
        <div id="div_cont">
            <div id="div_full" class="div_con">

				<div class="waf_visual">
					<div class="inner">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/tit_txt1.png" alt="���ǰ�� ���ۺ��� ������, ���� ���� ���� ����!" class="motion _02">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/tit_txt2.png" alt="������ ����� ��������" class="motion _03">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/tit_txt3.png" alt="���� �÷���" class="motion _04">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/tit_planner.png" alt="�÷��� �̹���" class="motion _01">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/tit_txt4.png" alt="���� �÷��ʶ�?" class="motion _05">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/tit_bg_object.png" alt="" class="motion _06">
					</div>
				</div>

				<div class="waf_con1">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con01_title.png" alt="���� �÷��ʸ��� �ŷ� ����Ʈ">
						</div>
						<div class="waf_point">
							<div data-aos="zoom-in" data-aos-delay="200">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con01_img01.png" alt="���ǰ�翡 Ưȭ�� ����">
							</div>
							<div data-aos="zoom-in" data-aos-delay="300">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con01_img02.png" alt="�� ���� ���� ������ȭ">
							</div>
							<div data-aos="zoom-in" data-aos-delay="400">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con01_img03.png" alt="��ȹ-��õ-�ǵ��">
							</div>
							<div data-aos="zoom-in" data-aos-delay="500">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con01_img04.png" alt="������� ���� Ư�� ����">
							</div>
						</div>
					</div>
				</div>

				<div class="waf_con2" style="background-color:#fdf7e6;">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con02_title.png" alt="���� �÷����� �Ϻ��� ����">
						</div>
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="200">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con02_planner_tit.png" alt="���� �÷��� ����">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="300">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con02_planner_img.png" alt="�÷��� �̹���">
						</div>
					</div>
				</div>
				<div class="waf_con3">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con03_planner_tit.png" alt="����&���� ����">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="200">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con03_planner_img.png" alt="�÷��� �̹���">
						</div>
					</div>
				</div>
				<div class="waf_con4" style="background-color:#e5eff7;">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con04_planner_tit.png" alt="���ǰ�� �غ�&��ǥ">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="200">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con04_planner_img.png" alt="�÷��� �̹���">
						</div>
					</div>
				</div>
				<div class="waf_con5">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con05_planner_tit.png" alt="���ǰ�� �÷�">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="200">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con05_planner_img.png" alt="�÷��� �̹���">
						</div>
					</div>
				</div>
				<div class="waf_con6" style="background-color:#fdf7e6;"> 
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con06_planner_tit.png" alt="�ڱ� ��&�ǵ��">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="200">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con06_planner_img.png" alt="�÷��� �̹���">
						</div>
					</div>
				</div>
				<div class="waf_con7">
					<div class="inner">
						<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con07_planner_tit.png" alt="���� ����">
						</div>
						<div class="mt60" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="200">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con07_planner_img.png" alt="�÷��� �̹���">
						</div>
					</div>
				</div>
				<div class="waf_con8 waf_review">
					<div class="pt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="100">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con08_title.png" alt="���� �÷��� ��� �ı�">
					</div>
					<div class="slide_area mt60" data-aos="fade" data-aos-easing="ease-in-cubic" data-aos-delay="200">
						<ul class="slide_wrap">
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/slide_img01.png" alt="�ı� �̹���" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/slide_img02.png" alt="�ı� �̹���" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/slide_img03.png" alt="�ı� �̹���" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/slide_img04.png" alt="�ı� �̹���" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/slide_img05.png" alt="�ı� �̹���" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/slide_img06.png" alt="�ı� �̹���" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/slide_img07.png" alt="�ı� �̹���" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/slide_img08.png" alt="�ı� �̹���" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/slide_img09.png" alt="�ı� �̹���" /></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/slide_img10.png" alt="�ı� �̹���" /></li>
						</ul>
					</div>
					<div class="inner">
						<div class="mt40" data-aos="fade" data-aos-easing="ease-in-cubic" data-aos-delay="200">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con08_txt.png" alt="�� �ް����͵��п� ������� ���� �ۼ��� ���� �÷��� �̹����Դϴ�.">
						</div>
						<div class="mt100" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="400">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con08_review.png" alt="�ֿ� �ı�">
						</div>
						<div class="mt70" data-aos="fade-up" data-aos-easing="ease-in-cubic" data-aos-delay="400">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_waffle/con08_img.png" alt="�� ȸ�� ä������ ���� �÷����� ����! ������ ����� ����� �� �������� �����մϴ�.">
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
            var temp_s = $(".waf_visual").offset().top;
            $('html, body').animate({ scrollTop: temp_s}, 500);
        }
		function titleTweenEvent(){
			var $visual = $('.waf_visual');
			TweenMax.fromTo( $visual.find('.motion._02'), .5, { opacity: 0, }, { opacity: 1, delay: .3, ease: Sine.easeInOut });
			TweenMax.fromTo( $visual.find('.motion._03'), .5, { opacity: 0, }, { opacity: 1, delay: .6, ease: Sine.easeInOut });
			TweenMax.fromTo( $visual.find('.motion._04'), .4, { opacity: 0, scale:1.3 }, { opacity: 1, delay: .9, scale:1, ease: Sine.easeOut });
			TweenMax.fromTo( $visual.find('.motion._01'), 1.2, { opacity: 0, scale: 0, x:50 }, { opacity: 1, scale: 1, x:0, delay: 1, ease: Back.easeInOut.config(1), transformOrigin:"45% bottom"});
			TweenMax.fromTo( $visual.find('.motion._05'), .4, { opacity: 0, }, { opacity: 1, delay:1.8, ease: Sine.easeInOut });
			TweenMax.fromTo( $visual.find('.motion._06'), .5, { opacity: 0, }, { opacity: 1, delay:1.4, ease: Sine.easeInOut });
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
