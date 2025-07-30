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
<link rel="stylesheet" type="text/css" href="/library/css/slick.css">
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
<script src="/public/jquery/slick.js"></script>
<style type="text/css">
@import url(/library/css/stylesheets/NotoSansKR-Hestia.css);

.top_wrap {
	position: relative;
	height:1270px;
	overflow: hidden;
}
.top_wrap .bg {width:100%; height:1270px; background: #171612 url('<%=Application("img_path")%>/library/campus_common/2021_su/top_bg.jpg') center top no-repeat; position:absolute; bottom:0; left:0;}
.top_wrap .con {width:1020px; margin:0 auto;}
.top_wrap .con:after {clear:both; display:block; content:'';}
.top_wrap .con img {position: absolute;	left:0; opacity:0;}

.top_wrap .con .act_wrap {position:absolute; width:100%;}
.top_wrap .con .act_wrap .img_wrap {position:absolute; top:0px; left:430px; }
.top_wrap .con .act_wrap .img_wrap img {opacity:0;}
.top_wrap .con .act_wrap .act01 {top:120px; left:158px;}
.top_wrap .con .act_wrap .act02 {top:746px; left:138px; z-index:1;}
.top_wrap .con .act_wrap .act03 {top:207px; left:182px;}
.top_wrap .con .act_wrap .act04 {top:245px; left:194px;}

.div_con{padding-bottom:100px;}
.div_con .con{width:1000px; margin: 0 auto;}
.div_con.bg_gray{background: #ededed;padding:100px 0;}

.div_con01{position: relative;}
    
#div_cont {
	width: 100%;
	text-align: center;
	clear: both;
	position: relative;
	overflow: hidden;
	color: #333;
	font-size: 13px;
	font-family: "MalGun Gothic";
	font-size: 16px;
	line-height: 1.2;
	letter-spacing: -1.5px;
}   

.quick {
	width: 100px;
	position: fixed;
	top: 310px;
	left: 50%;
	margin-left: 523px;
	z-index: 999;
}

.con {
    position: relative;
}

.con04_bg{
	background:#ececec url('<%=Application("img_path")%>/library/campus_common/2023/2023_su/con04_bg.png') 50% 50% no-repeat;
	background-size:cover;
	padding-top:100px;
}

/* .box_act {position:relative; width:1000px; z-index:5; margin-top:70px; overflow:hidden;}
.box_act li {position:relative;-webkit-transition:all 0.5s ease-in-out;transition:all 0.5s ease-in-out;opacity:1; display:inline-block; float:left;}
.box_act li + li {margin-left:30px;}
.box_act li img {opacity:1 !important; left:0;}
.box_act li img.back{position:absolute;left:0px;top:0px;}

.box_act li .flipper{width:313px;height:294px;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;position:relative;}
.box_act .front, .box_act .back{backface-visibility:hidden;-webkit-backface-visibility:hidden;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;text-indent:-1000em;}
.box_act .back{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);}
.box_act .front{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.box_act li.on .back, .box_act li.on .back{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.box_act li.on .front, .box_act li.on .front{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);display:none\9;} */
    
    
.flag {position:absolute; top:240px; right:105px;}
.flag_act {position:relative; z-index:5; margin-top:0px; overflow:hidden;}
.flag_act li {position:relative;-webkit-transition:all 0.5s ease-in-out;transition:all 0.5s ease-in-out;opacity:1; display:inline-block; float:left;}
.flag_act li + li {margin-left:30px;}
.flag_act li img {opacity:1 !important; left:0;}
.flag_act li img.back{position:absolute;left:0px;top:0px;}

.flag_act li .flipper{width:95px;height:116px;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;position:relative;}
.flag_act .front, .flag_act .back{backface-visibility:hidden;-webkit-backface-visibility:hidden;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;text-indent:-1000em;}
.flag_act .back{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);}
.flag_act .front{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.flag_act li.on .back, .flag_act li.on .back{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.flag_act li.on .front, .flag_act li.on .front{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);display:none\9;}

.test_slide .slick-prev, .slick-next {width:30px;height:52px;margin-top:-26px;background:url('<%=Application("img_path")%>/library/campus_common/2022_su/slide_arrow.png') no-repeat;}
.test_slide .slick-prev {left:30px;background-position:0 0;}
.test_slide .slick-next {right:30px;background-position:-43px 0;}
 
</style>
<script type="text/javascript">
	$(document).ready(function(){
        $(".linkA, .linkB").on('click', function(e){
            var _top = $($(this).attr('href')),
                $target = _top.offset().top;

            e.preventDefault();
            $('html, body').animate({
                scrollTop: $target
            }, 500);
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
			var elementP = (elementT + elementH - 200);
			var elementP2 = (elementT + elementH);
	
			if ((elementP <= view_pos)) {
				$(this).addClass("animation_set");
			}
		});
	};
	
    $(window).on({
	"load":function(){
		
	},
	"resize":function(){
		
	},
	"scroll":function(){
		parallaxScroll();
		motion_scr();
		
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
            <!--
			<div class="quick">
				<div class="pro"> <img src="<%=Application("img_path")%>/library/campus_common/2021_su/quick_top.png" alt="" usemap="#181114" border="0" />
					<map name="181114">
						<area class="linkA" shape="rect" coords="0,0,100,107" href="#link" onfocus="this.blur()">
						<area class="linkB" shape="rect" coords="0,107,100,130" href="#div_full" onfocus="this.blur()">
					</map>
				</div>
			</div>
            -->

            <div id="div_full" class="div_con taL" style="padding-bottom: 0;">
                <div class="top_wrap">
                     
                    <div class="bg"></div>
                    <div class="con"> 
                        <div class="act_wrap">

							<!-- -->
                            <img class="act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/top_txt01.png" alt="">
                            <img class="act02" src="<%=Application("img_path")%>/library/campus_common/2021_su/top_txt02.png" alt="">
                            <img class="act04" src="<%=Application("img_path")%>/library/campus_common/2021_su/top_img01.jpg" alt="">
                            <img class="act03" src="<%=Application("img_path")%>/library/campus_common/2021_su/top_img02.png" alt="">
                            <!-- -->
                        </div>
                    </div>
                </div>
                
                <div class="div_con01 div_con">                    
                    <div class="con">
                        <div class="bg_area" style="width:1200px; height:220px; position:absolute; top:-220px; left:-105px; background:url('<%=Application("img_path")%>/library/campus_common/2021_su/con01_bg.png') center top no-repeat;"></div>
                        
                	    <div class="taC animation_element b_to_t" style=""><img style="margin-top:-130px; z-index:1; position:relative;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/con01_title01.png" alt="" /></div>
                        <div class="taC mt70 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/con01_img01.png" alt="" /></div>
                    </div>
                    
                </div>
                
                <div id="div_con02" class="div_con" style="background:#f0f0f0; overflow:hidden;">
					<div class="con taC">
						<div class="mt100 animation_element b_to_t">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/con01_title02.png" alt="" />
						</div>
						<div class="mt80 animation_element b_to_t">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/con01_sub_title02.png" alt="" />
						</div>
						<ul class="test_slide mt50">
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_01.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_02.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_03.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_04.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_05.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_06_1.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_06_2.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_07.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_08.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_09.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_10.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_11.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_12.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_13.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_14.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_15.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_16.png"></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_17.png"></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_18.png"></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_19.png"></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_20.png"></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_21.png"></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_22.png"></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_23.png"></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_24.png"></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_25.png"></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_26_1.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_26_2.png"></li>
							<li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/s_img_27.png"></li>
						</ul>
						<script>
						$('.test_slide').slick({
							dots: false,
							infinite: true,
							speed: 500,
							autoplay: true,
							autoplaySpeed: 3000,
							slidesToShow: 1,
							adaptiveHeight: true
						});
						</script>
						<div class="mt100 animation_element b_to_t">
							<img src="<%=Application("img_path")%>/library/campus_common/2023/2023_su/con01_img02_tit.png" alt="" />
						</div>
						<div class="mt50 animation_element b_to_t">
							<img src="<%=Application("img_path")%>/library/campus_common/2023/2023_su/con01_img02.png" alt="" />
						</div>

					</div>
				</div>
                
                <div class="div_con">
					<div class="con taC">
						<div class="mt100 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2022_su/con01_title03.png" alt="" /></div>       
                        
						<div class="img_wrap mt70 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/con01_img03.png" alt="" /></div>
					</div>
				</div>

				<div id="div_con04" class="div_con con04_bg" style="padding-bottom:75px;">
					<div class="con taC">
						<div class="animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/con01_title04.png" alt="" /></div>
                        
						<div class="mt60 animation_element b_to_t" style="position:relative;">
                            <div class="flag">
                                <ul class="flag_act">
                                    <li class="flag_act01">
                                        <div class="flipper">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_su/con01_img04_02.png" alt="" class="front">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_su/con01_img04_02.png" alt="" class="back">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_su/con01_img04.png" alt="" />
                        </div>
					</div>
				</div>
            </div>
        </div>
    </div>
    <!-- container End --> 
    
	
    
    <!-- container End --> 
    <script src="/public/js/TweenMax.min.js"></script> 

    <script type="text/javascript">
        
    var motion1 = new TimelineMax({delay:0,repeat:0})
        motion1.to(".act01", 1, {opacity:1, top:120})
               .to(".act04", 1, {opacity:1, top:245})
               .to(".act02", 1, {opacity:1, top:746})
               .to(".act03", 0.3, {opacity:1});
        
        
        
	var motion3 = new TimelineMax({delay:3,repeat:-1})
        motion3.to(".act03", 6, {rotation:360, ease:Linear.easeNone});
        
        
        
        
	/* Scroll */
	function parallaxScroll(){
        
		var scrolled = $(window).scrollTop();
		if(scrolled > $("#div_con02").offset().top - 200) {
            
            var motion6 = new TimelineMax({delay:0,repeat:0})
            motion6.to(".box_act01", 1, {className:"+=on"})
                   .to(".box_act02", 1, {className:"+=on"})
                   .to(".box_act03", 1, {className:"+=on"});
        }if(scrolled > $("#div_con04").offset().top - 200) {
            
            var motion7 = new TimelineMax({delay:0,repeat:0})
            motion7.to(".flag_act01", 1, {className:"+=on"});
        }
        
	}
        
        
        
	</script>
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
