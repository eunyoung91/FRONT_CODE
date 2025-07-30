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
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
<script src="/public/js/amazingslider/amazingslider.js"></script>
<script src="/public/js/amazingslider/initslider_01.js"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,600,700" rel="stylesheet">
<!-- <link href="https://tmcc.megastudy.net/css/slick.css" rel="stylesheet">
<link href="https://tmcc.megastudy.net/css/layout.css" rel="stylesheet"> -->
<!--[if !IE]>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<!--<![endif]-->
<!--[if IE]>
   <link href="font.css">
<![endif]-->
<style type="text/css">
@import url(../public/stylesheets/NotoSansKR-Hestia.css);
/* 슬라이더 기본 css 시작 */
.slick-slider{position: relative;display: block;box-sizing: border-box;-webkit-user-select: none;-moz-user-select: none;-ms-user-select: none;user-select: none;-webkit-touch-callout: none;-khtml-user-select: none;-ms-touch-action: pan-y;touch-action: pan-y;-webkit-tap-highlight-color: transparent;}
.slick-list{position: relative;display: block;overflow: hidden;margin: 0;padding: 0;}
.slick-list:focus{outline: none;}
.slick-list.dragging{cursor: pointer;cursor: hand;}
.slick-slider .slick-track,
.slick-slider .slick-list{-webkit-transform: translate3d(0, 0, 0);-moz-transform: translate3d(0, 0, 0);-ms-transform: translate3d(0, 0, 0);-o-transform: translate3d(0, 0, 0);transform: translate3d(0, 0, 0);}

.slick-track{position: relative;top: 0;left: 0;display: block;margin-left: auto;margin-right: auto;}
.slick-track:before,
.slick-track:after{display: table;content: '';}
.slick-track:after{clear: both;}
.slick-loading .slick-track{visibility: hidden;}
.slick-slide{display: none;float: left;height: 100%;min-height: 1px;}
[dir='rtl'] .slick-slide
{float: right;}
.slick-slide img{display: block;}
.slick-slide.slick-loading img
{display: none;}
.slick-slide.dragging img{pointer-events: none;}
.slick-initialized .slick-slide{display: block;}
.slick-loading .slick-slide{visibility: hidden;}
.slick-vertical .slick-slide{display: block;height: auto;border: 1px solid transparent;}
.slick-arrow.slick-hidden{display: none;}
.slick-arrow:focus{outline:none;}
/* 슬라이더 기본 css 끝 */
#div_cont{position:relative;background-color:#fff;}
#div_cont .cnt{position:relative;width:1000px;margin:0 auto;}
/*추가*/
#div_cont .cnt_ect{
	width: 1500px;margin:0 auto;
}
/*//추가*/
.seg_visual{overflow:hidden;background:#d6ecee url("<%=Application("img_path")%>/library/campus_common/2019_weekplanner/main_bg.png") center top no-repeat;}
.seg_visual .cnt{height:884px;}
.seg_visual .motion{position:absolute;opacity:0;}
.seg_visual .motion._01{top:200px;left:407px;}
.seg_visual .motion._02{bottom:-440px;left:49.5%; transform: translateX(-50%);margin-left:20px;}
.seg_cnt1{background:#1c1d18 url("<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt1_bg.jpg") center top no-repeat;}
.seg_cnt2{padding:100px 0;}
.seg_cnt2 .cnt{left:32px;}
.seg_cnt3{background-color:#eee;padding:100px 0;}
.seg_cnt3 .btn{position:absolute;top:460px;}
.seg_cnt3 .btn._01{left:45px;}
.seg_cnt3 .btn._02{left:390px;top:471px;}
.seg_cnt3 .btn._03{left:721px;}
.seg_cnt3 .btn::after{content:"";position:absolute;top:88px;left:93px;width:54px;height:54px;border-radius:27px;background:#666 url("<%=Application("img_path")%>/library/campus_common/2019_weekplanner/btn_plus.png") 50% no-repeat;transform:rotate(90deg);transition:0.2s linear;box-shadow:2px 0 3px 0 rgba(0,0,0,0.3);}
.seg_cnt3 .btn._02::after{content:"";position:absolute;top:78px;left:93px;width:54px;height:54px;border-radius:27px;background:#666 url("<%=Application("img_path")%>/library/campus_common/2019_weekplanner/btn_plus.png") 50% no-repeat;transform:rotate(90deg);transition:0.2s linear;box-shadow:2px 0 3px 0 rgba(0,0,0,0.3);}
.seg_cnt3 .btn:hover::after{background:#ff8343 url("<%=Application("img_path")%>/library/campus_common/2019_weekplanner/btn_plus.png") 50% no-repeat;transform:rotate(0deg);}
.seg_cnt3 .wrap_pop{position:fixed;top:0;left:0;z-index:-1;overflow:hidden;width:0;height:0;background-color:rgba(0,0,0,0.5);}
.seg_cnt3 .wrap_pop.open{z-index:1010;width:100%;height:100%;}
.seg_cnt3 .wrap_pop .inner_pop{position:absolute;top:50%;left:50%;z-index:-1;width:707px;height:566px;margin:-283px 0 0 -353px;}
.seg_cnt3 .wrap_pop .inner_pop.on{z-index:1;}
.seg_cnt3 .wrap_pop .slick-list{width:550px;margin:0 auto;}
.seg_cnt3 .wrap_pop .slick-arrow{position:absolute;top:240px;z-index:10;width:32px;height:54px;font-size:1px;text-indent:-9999px;color:transparent;background:url("<%=Application("img_path")%>/library/campus_common/2019_weekplanner/btn_arrow2.png") no-repeat;background-position-y:top;}
.seg_cnt3 .wrap_pop .slick-arrow.slick-prev{left:0;background-position-x:left;}
.seg_cnt3 .wrap_pop .slick-arrow.slick-next{right:0;background-position-x:right;}
.seg_cnt3 .wrap_pop .slick-dots{padding-top:20px;text-align:center;}
.seg_cnt3 .wrap_pop .slick-dots li{overflow:hidden;display:inline-block;width:16px;margin:0 7px;border-radius:8px;}
.seg_cnt3 .wrap_pop .slick-dots li button{display:block;width:16px;height:16px;font-size:1px;text-indent:-9999px;background-color:#ccc;}
.seg_cnt3 .wrap_pop .slick-dots li.slick-active button{background-color:#ff8343;}
.seg_cnt3 .wrap_pop .btn_close{position:absolute;top:0;right:50%;width:48px;height:48px;margin-right:-323px;background:url("<%=Application("img_path")%>/library/campus_common/2019_weekplanner/btn_close.png") right top no-repeat;}
.seg_cnt5{background-color:#eee;padding:100px 0;}
.seg_cnt6{padding-bottom:100px;background:#035761 url("<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_bg.jpg") left top repeat-x;}
.seg_cnt6 .inner_slider{position:relative;overflow:hidden;width:1400px;margin:0 auto;}
.seg_cnt6 .inner_slider .slick-list{height:510px;padding-top:40px !important;}
.seg_cnt6 .inner_slider .slick-slide{overflow:hidden;width:467px !important;border:1px solid #efefef;background-color: #efefef;border-radius:10px;font-size:0;transform:scale(0.8);transition:0.5s;box-sizing:border-box;}
.seg_cnt6 .inner_slider .slick-slide.slick-current{border:3px solid #033;transform:scale(1.15)}
.seg_cnt6 .inner_slider .slick-slide img{width:100%}
.seg_cnt6 .inner_slider .progress{position:relative;overflow:hidden;width:800px;height:15px;margin:65px auto 75px;border:4px solid #033;background:none;background-color:#033;border-radius:8px;box-sizing:border-box;}
.seg_cnt6 .inner_slider .slider__label{position:absolute;height:7px;left:0;background-color:#1fc1cf;border-radius:4px;box-sizing:border-box;transition:0.5s linear;}
.seg_cnt6 .inner_slider .slick-arrow{position:absolute;top:230px;z-index:10;width:80px;height:80px;font-size:1px;text-indent:-9999px;color:transparent;background:url("<%=Application("img_path")%>/library/campus_common/2019_weekplanner/btn_arrow.png") no-repeat;background-position-y:top;}
.seg_cnt6 .inner_slider .slick-arrow.slick-prev{left:275px;background-position-x:left;}
.seg_cnt6 .inner_slider .slick-arrow.slick-next{right:275px;background-position-x:right;}

</style>
<script type="text/javascript">
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
    }
});

</script>
</head>

<body>
<div id="wrapper"> 
    
    <!--  최상단메뉴//--> 
    
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
						<img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/main_txt.png" alt="" class="motion _01">
						<img src="<%=Application("img_path")%>/library/campus_common/2023/2023_weekplanner/main_planner_231218.png" alt="" class="motion _02">
					</div>
				</div> 
				<div class="seg_cnt1">
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt1.png" alt="">
					</div>
				</div>
				<div class="seg_cnt2">
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2023/2023_weekplanner/cnt2_231218.png" alt="">
					</div>
				</div>
				<div class="seg_cnt3">
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2023/2023_weekplanner/cnt3.png" alt="" >
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
								<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt3_slider03_slide02.jpg" alt="" /></div>
								<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt3_slider03_slide03.jpg" alt="" /></div>
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
						<img src="<%=Application("img_path")%>/library/campus_common/2023/2023_weekplanner/cnt5_01.png" alt="">
						<img class="mt10" src="<%=Application("img_path")%>/library/campus_common/2023/2023_weekplanner/cnt5_02.png" alt="">
					</div>
				</div>
				<div class="seg_cnt6">
					<div class="cnt">
						<img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_tit.jpg" alt="">
						<!-- //슬라이더 시작 -->
					</div>
<!-- 
					<div class="inner_slider">
						<div class="slider center">
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide01.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide02.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide03.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide04.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide05.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide06.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide07.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide08.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide09.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide10.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2019_weekplanner/cnt6_slide11.jpg" alt="" /></div>
						</div>
						<div class="progress" role="progressbar" aria-valuemin="0" aria-valuemax="100">
							<span class="slider__label sr-only"></span>
						</div>
					</div>
 -->
 					<div class="inner_slider">
						<div class="slider center">
							<div><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_weekplanner/cnt6_slide01_01.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_weekplanner/cnt6_slide01_02.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_weekplanner/cnt6_slide01_03.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2023/2023_weekplanner/cnt6_slide01_01.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2023/2023_weekplanner/cnt6_slide01_02.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2023/2023_weekplanner/cnt6_slide01_03.png" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2020_weekplanner/cnt6_slide01.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2020_weekplanner/cnt6_slide02.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2020_weekplanner/cnt6_slide03.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2020_weekplanner/cnt6_slide04.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2020_weekplanner/cnt6_slide05.jpg" alt="" /></div>
							<div><img src="<%=Application("img_path")%>/library/campus_common/2020_weekplanner/cnt6_slide06.jpg" alt="" /></div>


						</div>
						<div class="progress" role="progressbar" aria-valuemin="0" aria-valuemax="100">
							<span class="slider__label sr-only"></span>
						</div>
					</div>
					<div class="cnt">
						<!-- 슬라이더 시작// -->
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
    motion.to(".motion._02", 1, {delay:0.5, opacity:1, bottom:-2, ease: Expo.easeOut}).to(".motion._01", 1, {delay:-0.5, opacity:1, top:100, ease: Expo.easeOut})

	//cnt3 버튼 이벤트
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
	//cnt3 슬라이더
	$('.pop_slide').slick({
		dots:true
	});

	//cnt6 슬라이더
	var $slider = $('.slider.center');
	var $progressBar = $('.progress span');

	$slider.on('init', function(event, slick, currentSlide, nextSlide){
	  	var calc = ( (nextSlide) / (slick.slideCount) ) * 100;
		var span_w = 800 / slick.slideCount;

		$progressBar
			.css('left', calc+'%')
			.css('width', span_w)

	});

	$slider.on('beforeChange', function(event, slick, currentSlide, nextSlide) {
		var calc = ( (nextSlide) / (slick.slideCount) ) * 100;
		var span_w = 800 / slick.slideCount;

		$progressBar
		  .css('left', calc+'%')
		  .css('width', span_w)

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
