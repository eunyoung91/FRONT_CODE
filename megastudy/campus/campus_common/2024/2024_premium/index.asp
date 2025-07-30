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
<style type="text/css">
@import url(/public/stylesheets/NotoSansKR-Hestia.css);

#div_cont {
	position: relative;
	width:100%;
	text-align:center;
	clear:both;
	overflow: hidden;
}
#div_cont .con {
	position:relative;
	width:1000px;
	margin:0 auto;
	padding:100px 0;
}
.top_wrap {
	position:relative;
	height:841px;
	overflow:hidden;
	background:#0B1931 url('<%=Application("img_path")%>/library/campus_common/2024/2024_premium/top_bg.jpg') center top no-repeat;
}
.top_wrap .act_wrap {
	position: relative;
	width:1000px;
	margin: 0 auto;
}
.top_wrap .act_wrap img {position:absolute; opacity:0;}
.top_wrap .act_wrap .act01 {top:119px; left:0;}
.top_wrap .act_wrap .act02 {top:204px; left:100px;}
.top_wrap .act_wrap .act03 {top:327px; left:0;} /*top:327px*/
.top_wrap .act_wrap .act04 {top:465px; left:0;} /*top:465px*/
.top_wrap .act_wrap .act05 {top:652px; left:0;} /*top:652px*/
.top_wrap .act_wrap .act06 {top:332px; right:-108px;}
.top_wrap .act_wrap .act06_1 {top:255px; right:98px;}
.top_wrap .act_wrap .act07_1 {top:-120px; right:-303px;}
.top_wrap .act_wrap .act07_2 {top:90px; right:-356px;}

.mt130 {margin-top:130px;}

.div_con2 {min-height:706px; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_premium/bg_con02.jpg') no-repeat center top / cover;}

.schedule_area {position:relative;}
.round_img {position:absolute; top:0; left:0; right:0; bottom:0;}
.round_img img {position:absolute;}
.round_img img:nth-child(n+1):nth-child(-n+4) {top:15px;}
.round_img img:nth-child(n+5):nth-child(-n+7) {bottom:-23px;}
.round_img img:nth-child(1) {left:65px;}
.round_img img:nth-child(2) {left:265px;}
.round_img img:nth-child(3) {left:465px;}
.round_img img:nth-child(4) {left:665px;}
.round_img img:nth-child(5) {left:692px;}
.round_img img:nth-child(6) {left:482px;}
.round_img img:nth-child(7) {left:272px;}



.div_con3 {background:#F5F2EB;}
.review_area {font-size:0;}
.review_area .flipper {display:inline-block; position:relative; width:320px; margin-left:20px; opacity:0; transform:rotateY(180deg); transition:all 0.6s linear;}
.review_area .flipper.fp01 {margin-left:0; transition-delay:0.5s;}
.review_area .flipper.fp02 {transition-delay:1s;}
.review_area .flipper.fp03 {transition-delay:1.5s;}
.review_area .flipper.on {opacity:1; transform:rotateY(0deg);}
</style>
<script type="text/javascript">	
	/* motion scroll */
	function motion_scr() {
		var winH = $(window).height();
		var scrT = $(window).scrollTop();
		var view_pos = winH + scrT
	
		$(".animation_element").each(function () {
			var elementH = $(this).outerHeight();
			var elementT = $(this).offset().top;
			var elementP = (elementT + elementH - 150);
	
			if ((elementP <= view_pos)) {
				$(this).addClass("animation_set");
			}
		});
	};

	/* Scroll */
	function parallaxScroll(){
		var scrolled = $(window).scrollTop();
        
		if(scrolled > $(".div_con3").offset().top - 600) {
            var motion_fp = new TimelineMax({delay:0, repeat:0})
            	motion_fp.to(".flipper", 1, {className:"+=on"});
        }
	}
	
	$(window).on({
	"load":function(){
		
	},
	"resize":function(){
		
	},
	"scroll":function(){
		motion_scr();
		parallaxScroll();
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
					<div class="act_wrap">
						<img class="act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/top_txt01.png" alt="" />
						<img class="act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/top_txt02.png" alt="메가x대성" />
						<img class="act03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/top_txt03.png" alt="프리미엄" />
						<img class="act04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/top_txt04.png" alt="모의고사" />
						<img class="act05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/top_txt05.png" alt="" />
						<img class="act06" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/top_crown.png" alt="" />
						<img class="act06_1" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/top_crown_light.png" alt="" />
						<img class="act07_1" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/top_light1.png" alt="" />
						<img class="act07_2" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/top_light2.png" alt="" />
					</div>
                </div>
                <div class="div_con1">
                    <div class="con">
                        <div class="animation_element b_to_t">
							<img class="" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con01_tit01.png" alt="" />
						</div>
						<div class="mt70 animation_element b_to_t delay400">
							<img class="" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con01_img01.png" alt="" />
						</div>
                    </div>
                </div>
                <div class="div_con2">
                    <div class="con">
						<div class="animation_element b_to_t delay100">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con02_tit01.png" alt="" />
						</div>
                        <div class="schedule_area mt130">
							<img class="animation_element delay400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con02_img01.png" alt="" />
							<div class="round_img">
								<img class="animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con02_img01_1.png" alt="" />
								<img class="animation_element delay600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con02_img01_2.png" alt="" />
								<img class="animation_element delay750" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con02_img01_3.png" alt="" />
								<img class="animation_element delay900" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con02_img01_4.png" alt="" />
								<img class="animation_element delay1050" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con02_img01_5.png" alt="" />
								<img class="animation_element delay1200" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con02_img01_6.png" alt="" />
								<img class="animation_element delay1300" src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con02_img01_7.png" alt="" />
							</div>
						</div>
                    </div> 
                </div>
                <div class="div_con3">
                    <div class="con">
                        <div class="animation_element b_to_t delay300">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con03_tit01.png" alt="" />
						</div>
                        <div class="mt70 review_area">
                            <div class="flipper fp01">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con03_img01.png" alt="" />
                            </div>
							<div class="flipper fp02">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con03_img02.png" alt="" />
                            </div>
							<div class="flipper fp03">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con03_img03.png" alt="" />
                            </div>
						</div>
						<div class="mt30 animation_element taC delay500">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_premium/con03_txt01.png" alt="" />
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
<script src="/public/js/TweenMax.min.js"></script> 
<script type="text/javascript">
	var motion1 = new TimelineMax({delay:0.6,repeat:0})
    	motion1.to(".act01", 0.5, {opacity:1})	
		
	var motion1_1 = new TimelineMax({delay:0.6,repeat:0})
		motion1_1.to(".act02", 0.6, {opacity:1, left:0})
		motion1_1.to(".act03", 1.2, {opacity:1})
		
	var motion1_2 = new TimelineMax({delay:1.5,repeat:0})
		motion1_2.to(".act04", 1, {opacity:1})				  
		motion1_2.to(".act05", 0.5, {opacity:1})
	
	var motion2 = new TimelineMax({delay:0.2, repeat:0})
    	motion2.to(".act06", 1, {opacity:1})
		motion2.to(".act06_1", 1, {opacity:1, repeat:-1, yoyo:true})

	var motion3_1 = new TimelineMax({delay:0.5, repeat:0})
		motion3_1.to(".act07_1", 2.5, {opacity:1, top:45})

	var motion3_2 = new TimelineMax({delay:0.5, repeat:0})
		motion3_2.to(".act07_2", 2, {opacity:1, top:15})
</script>
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
