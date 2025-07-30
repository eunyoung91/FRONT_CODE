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
	<link rel="stylesheet" type="text/css" href="/library/css/report_2015.css" />
	<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
	<link rel="stylesheet" type="text/css" href="/library/css/amazingslider.css">
	<!-- #include virtual="/public/jquery.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
	<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
	<!-- intro전용 css -->
	<link rel="stylesheet" href="web.css">
	<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
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
    <div id="container" style="padding-bottom:0;">
        <div id="div_cont">
            <div id="div_full" class="div_con">
				<div class="seg_visual">
					<div class="cnt cnt_ect">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/main_txt.png" alt="" class="motion _01">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/main_planner.png" alt="" class="motion _02">
					</div>
				</div> 
				<div class="seg_cnt1">
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/cnt1.png" alt="">
					</div>
				</div>
				<div class="seg_cnt2">
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/cnt2.png" alt="">
					</div>
				</div>
				<div class="seg_cnt3">
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/cnt3.png" alt="" >
						<a href="#_01" class="btn _01"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_weekplanner/cnt3_btn01.png" alt="" ></a>
						<a href="#_02" class="btn _02"><img src="<%=Application("img_path")%>/library/campus_common/2023/2023_weekplanner/cnt3_btn02.png" alt="" ></a>
						<a href="#_03" class="btn _03"><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt3_btn02.jpg" alt="" ></a>
					</div>
					<!-- 레이어팝업영역 -->
					<div class="wrap_pop">
						<div class="inner_pop _01" id="_01">
							<div class="pop_slide">
								<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt3_slider01_slide01.jpg" alt="" /></div>
								<div><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_weekplanner/cnt3_slider01_slide02.png" alt="" /></div>
								<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt3_slider01_slide03.jpg" alt="" /></div>
							</div>
							<button type="button" class="btn_close">팝업닫기</button>
						</div>
						<div class="inner_pop _02" id="_02">
							<div class="pop_slide">
								<div><img src="<%=Application("img_path")%>/library/campus_common/2023/2023_weekplanner/cnt3_slider02_slide01.png" alt="" /></div>
								<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt3_slider02_slide02.jpg" alt="" /></div>
								<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt3_slider02_slide03.jpg" alt="" /></div>
							</div>
							<button type="button" class="btn_close">팝업닫기</button>
						</div>
						<div class="inner_pop _03" id="_03">
							<div class="pop_slide">
								<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt3_slider02_slide01.jpg" alt="" /></div>
								<div><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_weekplanner_2/cnt3_slider03_slide02.png" alt="" /></div>
								<div><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_weekplanner_2/cnt3_slider03_slide03.png" alt="" /></div>
							</div>
							<button type="button" class="btn_close">팝업닫기</button>
						</div>
					</div>
				</div>
				<div class="seg_cnt4">
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt4.jpg" alt="">
					</div>
				</div>
				<div class="seg_cnt5">
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_weekplanner_2/cnt5_01.png" alt="리얼 후기">
						<img class="mt70" src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/cnt5_02.png" alt="">
					</div>
				</div>
				<div class="seg_cnt6">
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_tit.jpg" alt="">
					</div>
 					<div class="inner_slider">
						<div class="slider center">
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide01.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide02.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide03.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide04.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide05.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide06.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide07.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide08.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide09.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide10.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide11.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_weekplanner_2/slide12.png" alt="" /></div>
						</div>
						<div class="progress" role="progressbar" aria-valuemin="0" aria-valuemax="100">
							<span class="slider__label"></span>
						</div>
					</div>
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_txt.png" alt="">
					</div>
				</div>
            </div>
        </div>
    </div>
    
    <!-- container End --> 
    <script src="/public/js/TweenMax.min.js"></script> 
	<script type="text/javascript" src="/public/jquery/slick.js"></script>
    <script type="text/javascript">

		var motion = new TimelineMax({repeat:0})
		motion.to(".motion._02", 1, {delay:0.5, opacity:1, bottom:-180, ease: Expo.easeOut}).to(".motion._01", 1, {delay:-0.5, opacity:1, top:100, ease: Expo.easeOut})

		$(window).on({
			"load":function(){
				var temp_s = $("#div_full").offset().top;
				$("html, body").animate({ scrollTop: temp_s }, 500); 
			},
		});

		var tarId;
		$('.seg_cnt3 .btn').on("click", function(){
			tarId = $(this).attr("href");
			$('.seg_cnt3 .wrap_pop').addClass("open");
			$(tarId).addClass("on");
		});
		$('.seg_cnt3 .btn_close').on("click", function(){
			$('.seg_cnt3 .wrap_pop').removeClass("open");
			$(this).parents(".inner_pop").removeClass("on");
		});

		$('.pop_slide').slick({
			dots:true
		});

		var $slider = $('.slider.center');
		var $progressBar = $('.progress span');

		$slider.on('init', function(event, slick, currentSlide, nextSlide){
			var calc = ( (nextSlide) / (slick.slideCount) ) * 100;
			var span_w = 800 / slick.slideCount;

			$progressBar.css('left', calc+'%').css('width', span_w)
		});

		$slider.on('beforeChange', function(event, slick, currentSlide, nextSlide) {
			var calc = ( (nextSlide) / (slick.slideCount) ) * 100;
			var span_w = 800 / slick.slideCount;

			$progressBar.css('left', calc+'%').css('width', span_w)
		});

		$('.center').slick({
			autoplay:true,
			infinite: true,
			centerMode: true,
			centerPadding:'0',
			slidesToShow: 3,
			slidesToScroll: 1 
		});

    </script> 
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
