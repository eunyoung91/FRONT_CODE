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
<script type="text/javascript" src="/Public/jquery/slick.js"></script>
<style type="text/css">
@import url(/library/css/stylesheets/NotoSansKR-Hestia.css);
@import url('/library/css/stylesheets/gotham.css');
@import url(/library/css/stylesheets/urwdin.css);
@import url(/library/css/animate.min.css);

#div_cont {position:relative; width:100%; text-align:center; clear:both; overflow:hidden; font-family:"MalGun Gothic"; font-size:16px; letter-spacing:-0.5px; line-height:20px; color:#333;}
#div_cont .con {width:1000px; margin:0 auto; position:relative;	z-index:1;}

#div_full {background:#230a44;}

.top_wrap {position:absolute; top:0; width:100%; /*height:1070px;*/ height:1700px; margin:0 auto; z-index:3; text-align:center; background:#211817 url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/top_bg.jpg') center top no-repeat; overflow:hidden;}
.top_wrap .act_wrap {position:relative; width:1000px; /*height:740px;*/ margin:0 auto;}
.top_wrap .act_wrap .txt {position:absolute; z-index:1; opacity:0;}
.top_wrap .act_wrap .act01 {padding-top:96px; opacity:0;}
.top_wrap .act_wrap .act02 {opacity:0; padding-top:70px;}
.top_wrap .act_wrap .act03 {opacity:0; padding-top:10px;}

/* .top_wrap .act_wrap .act01 {top:96px; left:170px;}
.top_wrap .act_wrap .act02 {top:280px; left:280px;}
.top_wrap .act_wrap .act03 {top:440px; left:70px;} */

.top_wrap .act_wrap img[class^=act04] {position:absolute; z-index:2; opacity:0;}
.top_wrap .act_wrap .act04_1 {left:155px; bottom:95px;}
.top_wrap .act_wrap .act04_2 {left:465px; bottom:195px;}
.top_wrap .act_wrap .act04_3 {right:145px; bottom:39px;}
.top_wrap .act_wrap .act04_4 {left:93px; bottom:183px;}

@keyframes bounce-from-top {
  0% {
    transform: translateY(-200px);
    animation-timing-function: ease-in;
    opacity: 0;
  }
  38% {
    transform: translateY(0);
    animation-timing-function: ease-out;
    opacity: 1;
  }
  55% {
    transform: translateY(-18px);
    animation-timing-function: ease-in;
  }
  72% {
    transform: translateY(0);
    animation-timing-function: ease-out;
  }
  81% {
    transform: translateY(-5px);
    animation-timing-function: ease-in;
  }
  100% {
    transform: translateY(0);
    animation-timing-function: ease-out;
  }
}

@keyframes bounce-from-bottom {
  0% {
    transform: translateY(250px);
    animation-timing-function: ease-in;
    opacity: 0;
  }
  38% {
    transform: translateY(0);
    animation-timing-function: ease-out;
    opacity: 1;
  }
  55% {
    transform: translateY(18px);
    animation-timing-function: ease-in;
  }
  72% {
    transform: translateY(0);
    animation-timing-function: ease-out;
  }
  81% {
    transform: translateY(5px);
    animation-timing-function: ease-in;
  }
  100% {
    transform: translateY(0);
    animation-timing-function: ease-out;
  }
}
.bounce-from-top {animation: bounce-from-top 1.1s .5s both;}
.bounce-from-bottom {animation: bounce-from-bottom 1.1s .5s both;}

/* .quick {position:fixed; top:230px; left:50%; width:110px; margin-left:510px; z-index:999;} */

div[class^="div_con"] {padding-top:100px; text-align:center; box-sizing:border-box;}

.div_con1 {width:100%; height:1195px; background:#100A0B url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con01_bg.jpg') center top no-repeat;
}

.div_con2 .con {
    position:relative;
    background: url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con02_img01_1.png') center top no-repeat;
}

.div_con3 {position:relative; padding-bottom:100px;}
.div_con3::after {position:absolute; left:0; right:0; bottom:0; height:300px; content:''; background:#D0B391;}
.div_con3 .pscore {position:relative;}
.div_con3 .pscore .pscore_img {position:absolute; top:23px; left:24px;}


.div_con5 {
	position: relative;
	overflow: hidden;
	padding: 0px 0 80px;
    background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con05_bg.jpg'), #31271E;
    background-position:center top;
}

.div_con5 ul {
    overflow: hidden;
    margin: 0 auto;
    position: relative;
    padding:15px 0 15px 0;
	text-align:center;
}
.div_con5 ul li {
    display:inline-block;
	width:230px;
    height:150px;
	margin:0 8px;
    background:#fff;
    font-family: 'Noto Sans KR';
    letter-spacing: -0.5px;
    border-radius: 2px;
	text-align: center;

}
.div_con5 ul.wide_li li{width:470px;height:160px;}
.div_con5 ul li a {
    display: block;
    width:100%;
    float:left;
    position:relative;
}

.div_con5 ul li a {
    position:relative;
}

.div_con5 ul li .title {
    /* background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2022_winter/dot_line.png') center bottom repeat-x; */
    margin-top:10px;
}

.div_con5 ul li .title::after {
    display:block;
    content:'';
    width:81%;
    margin:0 auto;
    border-bottom:1px dashed #C6C6C6;
}
.div_con5 ul li .title strong {
    font-weight:700;
}
.div_con5 ul li .title span {
    font-size:25px;
	line-height:52px;
    font-weight:400;
    padding-right:20px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2020_half/bullet_arrow.png') right 50% no-repeat;
	letter-spacing:-2px;
}
.div_con5 ul li .flag {
    position:absolute;
    top:-10px;
    left:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/open_flag.png') 0 0 no-repeat;
    width:76px;
    height:37px;
    display:inline-block;
    vertical-align:middle;
}
.div_con5 ul li .flag.new {
    position:absolute;
    top:-10px;
    left:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/open_flag.png') center top no-repeat;
    width:76px;
    height:37px;
    display:inline-block;
    vertical-align:middle;
}
.div_con5 ul li .flag span {
	color:#fff;
	font-size:15px;
	font-weight:700;
	margin-top:3px;
	display:block;
    line-height:19px;
}
.div_con5 ul li .flag.ver01 {
    position:absolute;
    top:-10px;
    left:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/open_flag.png') 0 0 no-repeat;
    width:76px;
    height:37px;
    display:inline-block;
    vertical-align:middle;
}
.div_con5 ul li .flag.ver01 span {
    margin-top:3px;
}

.div_con5 ul li .flag.ver02 {
    position:absolute;
    top:-10px;
    left:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/open_flag.png') 0 0 no-repeat;
    width:76px;
    height:37px;
    display:inline-block;
    vertical-align:middle;
	line-height:1.3em;
	font-size:14px;
}
.div_con5 ul li .flag.ver02 span {
    margin-top:3px;
}

.div_con5 ul li .info_wrap {
	display:table;
	width:100%;
	height:85px;
}
.div_con5 ul.wide_li li .info_wrap{height:85px;}
.div_con5 ul li .info_wrap .info {
	display:table-cell;
	vertical-align:middle;
}
.div_con5 ul.wide_li li .info_wrap .info{padding-left:0;}
.div_con5 ul li .info_wrap p {
	font-size:22px;
	color:#755531;
	font-weight:700;
	font-family:"MalGun Gothic";
    letter-spacing:-0.3px;
}
.div_con5 ul.wide_li li .info_wrap p{display:inline-block;margin-bottom:0;font-size:21px;}
.div_con5 ul.wide_li li .info_wrap p + p{margin-left:30px;}
.div_con5 ul li .info_wrap .sub_txt {
	margin-right:5px;
	width:45px;
	height:19px;
	line-height:17px;
	border-radius:11px;
	font-size:13px;
	color:#fff;
	display:inline-block;
	text-align:center;
	background:#755531;
	font-family: 'Noto Sans KR';
	font-weight:400;
    vertical-align:middle;
    margin-top:-4px;
}
.div_con5 ul.wide_li li .info_wrap .sub_txt{width:56px;height:23px;font-size:15px;line-height:23px;border-radius:12px;}
.div_con5 ul li.off a {cursor:default;}
.div_con5 .tit_sub{padding-top:70px;text-align:center;}
    

.fix_bottom_wrap {background:#000; position:fixed; bottom:0; left:0; width:100%; height:125px; z-index:10; }
.fix_bottom_area {width:1000px; margin:0 auto; overflow:hidden; padding-top:20px;}
.fix_bottom_area ul {display:inline-block; overflow:hidden;}
.fix_bottom_area ul li {display:inline-block; float:left; width:95px; text-align:center; border:1px solid #555;}
.fix_bottom_area ul li a {font-size:16px; color:#fff; font-weight:500; line-height:50px; position:relative; display:block;}

.fix_bottom_area ul li:hover {border-color:#C7B072;}
.fix_bottom_area ul li:hover a em {color:#E6CB84; word-break:keep-all; font-weight:bold;}

.fix_bottom_area ul li + li {margin-left:10px;}
.fix_bottom_area ul + ul {margin-left:68px;}
.fix_bottom_area ul.large {}
.fix_bottom_area ul li:nth-child(1),
.fix_bottom_area ul li:nth-child(2) {width:175px;}
.fix_bottom_area ul.small {width:175px;}
.fix_bottom_area ul.small li {display:block; width:100%;}
.fix_bottom_area ul p.title {width:100%; height:40px; line-height:37px; color:#fff; background:linear-gradient(135deg, #72592a, #4e3a25); font-weight:bold; font-size:19px; text-align:center; margin-bottom:15px;}

.fix_bottom_wrap.inner {position:absolute; top:740px; z-index:1; width:1000px;max-width:1000px;height:210px;left:50%; margin-left:-500px;box-sizing:border-box;z-index:10;}
.fix_bottom_wrap.inner .fix_bottom_area {padding:20px 30px;box-sizing: border-box;}
.fix_bottom_wrap.inner .fix_bottom_area ul + ul {margin-left:20px;}
.fix_bottom_wrap.inner .fix_bottom_area ul.large {width:576px; float:left;}
.fix_bottom_wrap.inner .fix_bottom_area ul li {width:107px;margin-top:10px;box-sizing:border-box; height:50px;}
.fix_bottom_wrap.inner .fix_bottom_area ul.large li:nth-child(2) {width:107px !important; margin-left:0 !important; height:50px;}
.fix_bottom_wrap.inner .fix_bottom_area ul.large li:nth-child(7) { margin-left:0 !important;}

.fix_bottom_wrap.inner .fix_bottom_area ul.small {width:340px; float:left;}
.fix_bottom_wrap.inner .fix_bottom_area ul.small + ul.small {width:110px; }
.fix_bottom_wrap.inner .fix_bottom_area ul.small li {display:inline-block; width:107px;margin-top:10px;}
.fix_bottom_wrap.inner .fix_bottom_area ul.small li + li {margin-left:9px;}
.fix_bottom_wrap.inner .fix_bottom_area ul.small li + li + li {margin-left:10px;}
.fix_bottom_wrap.inner .fix_bottom_area ul p.title {width:100%;max-width:100%; height:45px; line-height:45px; color:#fff; background:linear-gradient(90deg, #916E33, #755531); font-weight:bold; font-size:18px; text-align:center;margin-bottom:0;}
.fix_bottom_wrap.inner .fix_bottom_area ul p.title span {font-size:18px; }


.fix_bottom_wrap.scroll {display:none; height:74px;}

.fix_bottom_wrap.scroll .fix_bottom_area  {max-width:100%;padding:17px 0;margin:auto; width:100%; margin:0 auto; min-width:1000px;}
.fix_bottom_wrap.scroll ul {text-align:left; display:contents; display:-ms-inline-flexbox;}
.fix_bottom_wrap.scroll ul + ul {margin-left:0;}
.fix_bottom_wrap.scroll ul.large { width:auto;}
.fix_bottom_wrap.scroll ul.small {text-align:right; width:auto;}
.fix_bottom_wrap.scroll ul p.title {display:inline-block; width:calc(7.5% - 33px);height:40px; line-height:37px;padding:0 8px;margin:0 1px;font-size:16px;border-radius:0;vertical-align: middle;box-sizing:border-box; width:75px;word-break: keep-all;}
.fix_bottom_wrap.scroll ul.small p.title {margin-left:30px;}
.fix_bottom_wrap.scroll ul p.title span {display:none;}
.fix_bottom_wrap.scroll ul p.title.v2 {margin:0 8px 0 35px;}
.fix_bottom_wrap.scroll ul li {float:none;display:inline-block;height:38px; line-height:38px;margin:0 2px;padding:0 10px;vertical-align: middle;width:58px; word-break:break-all; letter-spacing:-1px;}
.fix_bottom_wrap.inner .fix_bottom_area ul.large li:nth-child(2) {width:107px; margin-left:0; }
.fix_bottom_wrap.inner .fix_bottom_area ul.large li:nth-child(2) a,
.fix_bottom_wrap.inner .fix_bottom_area ul.large li:nth-child(3) a {line-height:1.2; height:50px; box-sizing:border-box; padding-top:4px;}

.fix_bottom_wrap.scroll ul li:nth-child(3) {}
.fix_bottom_wrap.scroll ul.large li:nth-child(2),
.fix_bottom_wrap.scroll ul.large li:nth-child(3) {width:128px; padding:0 5px;}

.fix_bottom_wrap.scroll ul.small li:nth-child(2),
.fix_bottom_wrap.scroll ul.small li:nth-child(3), 
.fix_bottom_wrap.scroll ul.small li:nth-child(4) {width:118px;}
.fix_bottom_wrap.scroll ul.small + ul.small li:nth-child(2) {width:65px;}
.fix_bottom_wrap.scroll ul li.v2 {width:calc(9% - 33px);}
.fix_bottom_wrap.scroll ul li a {line-height:37px; font-size:15px;}
.fix_bottom_wrap.scroll ul li a br {display:none;}

@media screen and (max-width: 2000px) {
    .fix_bottom_wrap.scroll ul li {margin:0 3px;}
    .fix_bottom_wrap.scroll ul.small p.title {margin-left:10px; margin-right:0;}
    .fix_bottom_wrap.scroll ul.large li:nth-child(2) {min-width:40px; margin-left:1px;}
}
@media screen and (max-width: 1720px) {
	.fix_bottom_wrap.scroll ul li,
	.fix_bottom_wrap.scroll ul li.v2 { margin:0 1px;}
	.fix_bottom_wrap.scroll ul li.v2 {}
    
    .fix_bottom_wrap.scroll ul li:nth-child(2),
    .fix_bottom_wrap.scroll ul li:nth-child(3) {width:128px; padding:0 5px;}

    .fix_bottom_wrap.scroll ul.small li:nth-child(2),
    .fix_bottom_wrap.scroll ul.small li:nth-child(3),
    .fix_bottom_wrap.scroll ul.small li:nth-child(4) {width:108px;}
    .fix_bottom_wrap.scroll ul li {width:44px;}
    .fix_bottom_wrap.scroll ul li {padding:0 2px;}
}

@media screen and (max-width: 1300px) { 
    .fix_bottom_wrap.scroll .fix_bottom_area  {min-width:1000px;}
    
	.fix_bottom_wrap.scroll ul li, 
    .fix_bottom_wrap.scroll ul li.v2 {margin:0; padding:0 7px; width:42px;}
    .fix_bottom_wrap.scroll ul li a {}
    .fix_bottom_wrap.scroll .fix_bottom_area  {max-width:100%;padding:17px 0;margin:auto;}
    .fix_bottom_wrap.scroll ul.large {width:calc(100% - 247px); width:auto}
    .fix_bottom_wrap.scroll ul.large li:nth-child(2), .fix_bottom_wrap.scroll ul.large li:nth-child(3) {padding:0 2px;}
    .fix_bottom_wrap.scroll ul.small {width:247px; text-align:right;}
    .fix_bottom_wrap.scroll ul p.title {display:inline-block; width:calc(7.5% - 33px);height:40px; line-height:37px;padding:0 8px;margin:0 1px;font-size:16px;border-radius:0;vertical-align: middle;box-sizing:border-box; width:auto;}
    .fix_bottom_wrap.scroll ul.small p.title {margin-left:2px; margin-right:1px;}
    .fix_bottom_wrap.scroll ul li {float:none;display:inline-block;height:38px; line-height:48px;margin:0;padding:0 3px;vertical-align: middle;}
    .fix_bottom_wrap.scroll ul li:nth-child(5) {}
    .fix_bottom_wrap.scroll ul li:nth-child(2),
    .fix_bottom_wrap.scroll ul li:nth-child(3),
    .fix_bottom_wrap.scroll ul li:nth-child(4) {min-width:40px; width:auto !important; margin:0;}
}

@media screen and (max-width: 1000px) { 
    .fix_bottom_wrap.scroll .fix_bottom_area  {min-width:1000px;}
    .fix_bottom_wrap.scroll ul li {padding:0 5px;}
}


.animation_element.animation_set {
    opacity: 1 !important;
}

.graph_box_wrap01 {position:relative; overflow:hidden; height:580px;}
.graph {position:absolute; bottom:61px;}

.graph.graph01_1 {left:110px; bottom:41px;}
.graph.graph01_2 {left:293px; bottom:81px;}

.graph.graph02_1 {left:625px; bottom:81px;}
.graph.graph02_2 {left:808px; bottom:81px;}

.graph.txt01 {left:156px; bottom:157px; z-index:2;}
.graph.txt01_1 {left:59px; bottom:110px; z-index:2;}
.graph.txt01_2 {left:59px; bottom:110px; z-index:2;}

.graph.txt02 {right:184px; bottom:157px; z-index:2;}
.graph.txt02_1 {left:657px; bottom:183px; z-index:2;}
.graph.txt02_2 {left:797px; bottom:237px; z-index:2;}  

.graph.arrow01 {left:177px; bottom:143px; z-index:4;}
.graph.arrow02 {right:166px; bottom:143px; z-index:4;}

.hidden_box {width:337px; height:80px; background:#fff; border-top:1px solid #9C9C9C; overflow:hidden; position:absolute; bottom:1px; background:#fff url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/cover01.png') center top no-repeat; z-index:5;}
.hidden_box.posi01 {left:74px;}
.hidden_box.posi02 {left:589px;}
</style>

<script type="text/javascript">
    $(window).ready(function(){
		
        $(".example div").each(function() {
            var idx = $(this).index()+1;
            $(this).find("div").addClass("box0"+idx);
			$(this).addClass("box_wrap0"+idx);
        });

        $('.tab_lists > li').on('click', function () {
            var index = $(this).index(),
                $this = $(this),
                slide = $this.data('slide');
                //innerHeight = $(slide).innerHeight();

            if( $this.hasClass('on') ) {
                
            } else {
                $('.tab_lists > li').removeClass('on');
                $('.slide_area').removeClass('on');
                $this.addClass('on');
                $(slide).addClass('on');
                //$('.slide_wrap').css('min-height', innerHeight + 80);
            }
        });
    });

	
	
    $(window).on({
        "load":function(){
            ani_scr();
            //cam_list_act()

            //var temp_s = 0;
            var temp_s = $("#div_full").offset().top;

            $('html, body').animate({
                scrollTop: temp_s
            }, 500);

            ad_link();


            
        },
        "resize":function(){
            
        },
        "scroll":function(){
            

            ani_scr();

            parallaxScroll();  
            
            
        }        

        
    });


</script>
<script src="/public/js/waypoints.min.js"></script>
<script src="/public/js/jquery.counterup.min.js"></script>

    
<script src="/public/js/TweenMax.min.js"></script> 
<script type="text/javascript">
    function ad_link() {
        $('#link li').each(function() {
            
            var l_id = $(this).attr("id");
            var l_link = $(this).find("a").attr("href");
            var l_target = $(this).find("a").attr("target");

            $(".fix_" + l_id).attr("href", l_link);
            $(".fix_" + l_id).attr("target", l_target);
        });

        var fix_txt = $('.inner .fix_bottom_area').html();
        $('.scroll .fix_bottom_area').html(fix_txt);
        
    }
    /* motion scroll */
    function ani_scr() {
		var winH = $(window).height();
		var scrT = $(window).scrollTop();
		var view_pos = winH + scrT
	
		$(".animation_element").each(function () {
			var elementH = $(this).outerHeight();
			var elementT = $(this).offset().top;
			var elementP = (elementT + elementH + 50);
	
			if ((elementP <= view_pos)) {
				$(this).addClass("animation_set");
			}
		});
    }

    /* Scroll */
	function parallaxScroll(){
        
		var scrolled = $(window).scrollTop();

        if(scrolled > $(".div_con1").offset().top && scrolled < $(".div_con5").offset().top-800 ) {
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"block"});
        }
        
        else if(scrolled > $(".div_con5").offset().top-800 || scrolled < $(".div_con2").offset().top) {
            
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
        }

       
	}
        
    function cam_list_act() {

        $(".cam_list").each(function () {
            
            var idx = $(this).attr("id");
            
            $(".fix_"+ idx).attr("href", $("#"+idx).find("a").attr("href"))
            alert($("#"+idx).find("a").attr("href"))
        });
    }   
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
    <div id="container" style="padding-bottom:0px !important;">
        
    	<!-- <ul class="quick">
			<li><a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=23831" target="_blank"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/quick_link.png" alt="2025 *팀플반"></a></li>
			<li><a href="#div_full"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/quick_top.png" alt="top으로 이동"></a></li>
		</ul> -->

        <div id="div_cont">
            <div id="div_full" style="height:1700px;">
                <div class="top_wrap">
                    <div class="act_wrap">
                        <img class="act01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/top_txt01.png" alt="" />
                        
                        <img class="act02 bounce-from-top" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/top_title01.png" alt="2025" />
                        <img class="act03 bounce-from-bottom" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/top_title02.png" alt="팀플반" />
                        
                        <img class="act04_1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/light_01.png" alt="" />
                        <img class="act04_2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/light_02.png" alt="" />
                        <img class="act04_3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/light_03.png" alt="" />
                        <img class="act04_4" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/light_04.png" alt="" />
                    </div>
                    
                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area">
                            <ul class="large">
                                <p class="title"><span>재수</span> 통학</p>
                                <li><a class="fix_C03" href="" target=""><em>강남 <br>팀플전문관</em></a></li>
                                <li><a class="fix_C13" href="" target=""><em>서초 <br>의약학전문관</em></a></li>
                                <li><a class="fix_C05" href="" target=""><em>강북</em></a></li>
                                <li><a class="fix_C04" href="" target=""><em>노량진</em></a></li>
                                <li><a class="fix_C11" href="" target=""><em>신촌</em></a></li>
                                <li><a class="fix_C06" href="" target=""><em>송파</em></a></li>
                                <li><a class="fix_C07" href="" target=""><em>부천</em></a></li>
                                <li><a class="fix_C08" href="" target=""><em>분당</em></a></li>
                                <li><a class="fix_C09" href="" target=""><em>일산</em></a></li>
                                <li><a class="fix_C10" href="" target=""><em>평촌</em></a></li>
                            </ul>
        
                            <ul class="small">
                                <p class="title"><span>재수</span> 기숙</p>
                                <li><a class="fix_C01" href="" target=""><em>양지 기숙</em></a></li>
                                <li><a class="fix_C02" href="" target=""><em>서초 기숙</em></a></li>
                                <li><a class="fix_C14" href="" target=""><em>안성 기숙</em></a></li>
                            </ul>
                        </div>
                    </div>

                    <iframe src='https://tv.naver.com/embed/46299302?autoPlay=true' style="padding-top:365px;" frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='1000' HEIGHT='563' allow='autoplay' allowfullscreen></iframe>
                </div>
            </div>

            <div class="fix_bottom_wrap scroll">
                <div class="fix_bottom_area">
                    
                </div>
            </div>

            <div class="">
                <div class="div_con1">
                    <div class="animation_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con01_img01.png" alt="" />
                    </div>
                    <div class="animation_element dealy500 mt60">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con01_img02.png" alt="" />
                    </div>
                    <div class="animation_element dealy1000 b_to_t" style="margin-top:-88px;">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con01_img03.png" alt="" />
                        <!-- <img class="animation_element l_to_r" style="position:absolute; top:53px; left:0px;" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con01_img01_02.png" alt=""> -->
                    </div>
                </div>

                <div class="div_con2">
                    <div class="animation_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con02_title01.png" alt="" />
                    </div>
                    <div class="con mt70">
                    	<div class="graph_box_wrap01">
                            <img class="graph graph01_1 animation_element b_to_t delay100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/graph_img01.png" alt="" />
                            <img class="graph graph01_2 animation_element b_to_t delay200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/graph_img02.png" alt="" />
                            <img class="graph txt01 animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/up_txt05.png" alt="" />                            
                            <img class="graph arrow01 animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/arrow_img01.png" alt="" />
                             
                            <img class="graph graph02_1 animation_element b_to_t delay100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/graph_img01.png" alt="" />
                            <img class="graph graph02_2 animation_element b_to_t delay200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/graph_img02.png" alt="" />
                            <img class="graph txt02 animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/up_txt06.png" alt="" />                            
                            <img class="graph arrow02 animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/arrow_img01.png" alt="" />

                            <div class="hidden_box posi01"></div>
                            <div class="hidden_box posi02"></div>
                        </div>
                        
                        <p class="mt40" style="color:#999; font-size:15px; line-height:28px;">
                            ※ 메가스터디학원 2024학년도 재원생 중, 2023/2024 수능 성적 확인이 가능한 4,039명 분석 결과
                        </p>
                    </div>
                </div>
                

                <div class="div_con3">
                    <div class="animation_element b_to_t delay200">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con03_title01.png" alt="" />
                    </div>
                    <div class="con mt70 pscore">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con03_img02.png" alt="">
                        <img class="animation_element l_to_r pscore_img" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con03_img01.png" alt="">
                    </div>
                </div>
                
                <div class="div_con4" style="padding-bottom:100px;">
                    <div class="animation_element b_to_t"> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con04_title01.png" alt="차별화된 성공법칙" border="0" />
                    </div>
                    <div class="animation_element mt100 delay500"> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con04_sub_title01.png" alt="우수 학생으로 구성된 반 편성 " border="0" />
                    </div>
                    <div class="animation_element mt70"> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con04_img01.png" alt="" border="0" />
                    </div>

                    <div class="animation_element mt60">
                        <style>
                            .swiper {
                            width:1000px;
                            height:315px;
                            margin: 0 auto;
                            overflow:hidden;
                            }
                            .swiper.no4{height:280px;}
                            .swiper-slide {
                            display: flex;
                            justify-content: center;
                            align-items:flex-start;
                            }
                            .swiper-slide img {vertical-align:top;}
                        </style>
                        <!-- Swiper 01 -->
                        <div class="swiper reviewSwiper no1 mt60">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/slide01_img01.png" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/slide01_img02.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="animation_element b_to_t delay500 mt100"> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con04_sub_title02.png" alt="충분한 자습시간 확보! 개인 맞춤 시간표 " border="0" />
                    </div>
                    <div class="animation_element mt70"> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con04_img02.png" alt="" border="0" />
                    </div>
                    <p class="mt30" style="color:#999; font-size:15px;">
                        ※ 표준시간표 예시(학원에 따라 상이할 수 있음)
                    </p>

                    <div class="animation_element mt60">
                        <!-- Swiper 02 -->
                        <div class="swiper reviewSwiper no2">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/slide02_img01.png" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/slide02_img02.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="animation_element b_to_t delay500 mt100"> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con04_sub_title03.png" alt="목표를 향한 동기부쳐, *팀플장학제도" border="0" />
                    </div>
                    <div class="animation_element delay500 mt70"> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con04_img03.png" alt="" border="0" />
                    </div>

                    <div class="animation_element delay500 mt60">
                        <!-- Swiper 03 -->
                        <div class="swiper reviewSwiper no3">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/slide03_img01.png" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/slide03_img02.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>	
                    
                    <div class="animation_element b_to_t delay500 mt100"> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con04_sub_title04.png" alt="합격을 위한 검증된 관리력" border="0" />
                    </div>

                    <style>
                        .tab_menu, .tab_content{width:1000px; margin:0 auto;}

                        .tab_menu {display:table;table-layout:fixed}
                        .tab_menu li{display:table-cell;cursor:pointer}

                        .tab_content li {display:none; height:804px}
                        .tab_content li.on{display:block}
                    </style>
                    <div class="animation_element mt70">
                        <ul class="tab_menu">
                            <li data-tab="tab-1" class="on">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/tab_btn01_on.png" alt="">
                            </li>
                            <li data-tab="tab-2">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/tab_btn02_off.png" alt="">
                            </li>
                        </ul>
                        <ul class="tab_content">
                            <li id="tab-1" class="on">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/tab_img01.png" alt="">
                            </li>
                            <li id="tab-2">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/tab_img02.png" alt="">
                            </li>
                        </ul>
                    </div>
                    <script>
                        $(document).ready(function () {
                            $(".tab_menu li").click(function () {
                                var $this = $(this),
                                    tabId = $this.data("tab"),
                                    tabIndex = $this.index();

                                $(".tab_menu li, .tab_content li").removeClass("on");

                                $this.addClass("on");
                                $("#"+tabId).addClass("on");

                                $(".tab_menu li").each(function (content) {
                                    $(this).find("img").attr("src", $(this).find("img").attr("src").replace("_off","_on"));
                                    
                                    if (tabIndex != content) {
                                        $(this).find("img").attr("src", $(this).find("img").attr("src").replace("_on","_off"));
                                    }
                                });
                            });
                        })
                    </script>

                    <div class="animation_element mt60">
                        <!-- Swiper 04 -->
                        <div class="swiper reviewSwiper no4">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/slide04_img01.png" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/slide04_img02.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>	
                </div>				

				<div class="div_con5" id="link">
                    <div class="animation_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_gate/con05_title01.png" alt="" />
                    </div>
                    <div class="con taC mt55"> 
                        <ul>   
                            <li id="C01" class="cam_list"><a href="https://yangji.megastudy.net/" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>마감<br>임박</span> 
                                </div> -->
								
                                <p class="title"><span><strong>양지 기숙</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
										<p>
                                            <span class="sub_txt">문의</span>031-326-5000
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li id="C02" class="cam_list"><a href="https://seochob.megastudy.net/" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div> -->
                                
								<p class="title"><span><strong>서초 기숙</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>031-797-9332
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            
                            <li id="C14" class="cam_list"><a href="https://ansung.megastudy.net/" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>신규 개원</span>
                                </div> -->
                                
								<p class="title"><span><strong>안성 기숙</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>031-8004-1010
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                        </ul>
						<ul>
                            <li id="C03" class="cam_list"><a href="https://gangnam.megastudy.net/" target="_blank">
                                <!-- <div class="flag">
                                    <span>확장 이전</span>
                                </div> -->
                                
								<p class="title"><span><strong>강남</strong> 팀플전문관</span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        
                                        <p>
                                            <span class="sub_txt">문의</span>02-568-3800
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li id="C13" class="cam_list"><a href="https://seocho.megastudy.net/" target="_blank">
                                <!-- <div class="flag">
                                    <span>확장 이전</span>
                                </div> -->
                                
								<p class="title"><span><strong>서초</strong> 의약학전문관</span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        
                                        <p>
                                            <span class="sub_txt">문의</span>02-535-5678
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li id="C05" class="cam_list"><a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2025/2025_teamplay_medical/teamplay_01.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div> -->
                                <p class="title"><span><strong>강북</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>02-935-3378
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            
							<li id="C04" class="cam_list"><a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2025/2025_teamplay/teamplay_01.asp" target="_blank">
                                <!--
                                <div class="flag ver01">
                                    <span>마감임박</span>
                                </div>-->
                                <p class="title"><span><strong>노량진</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        
                                        <p>
                                            <span class="sub_txt">문의</span>02-826-1555
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                        </ul>
						<ul>
                            <li id="C11" class="cam_list"><a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2025/2025_teamplay/teamplay_01.asp" target="_blank">
                                <!--
                                <div class="flag ver01">
                                    <span>마감<br>임박</span>
                                </div>-->
                                <p class="title"><span><strong>신촌</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>02-3144-1010
                                        </p>
                                    </div>
                                </div>
                            </a></li>
							<li id="C06" class="cam_list"><a href="https://songpa.megastudy.net/songpa/nsu/nsu/2025/2025_teamplay/teamplay_01.asp" target="_blank">
                                <!--<div class="flag ver02">
                                    <span>마감<br>임박</span>
                                </div>-->
                                <p class="title"><span><strong>송파</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        
                                        <p>
                                            <span class="sub_txt">문의</span>02-428-8181                                        
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li id="C07" class="cam_list"><a href="https://bucheon.megastudy.net/" target="_blank">
                                <!--
                                <div class="flag ver01">
                                    <span>마감임박</span>
                                </div>-->
                                <p class="title"><span><strong>부천</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        
                                        <p>
                                            <span class="sub_txt">문의</span>032-326-9900
                                        </p>
                                    </div>
                                </div>
                                </a>
                            </li>
                            <li id="C08" class="cam_list"><a href="https://bundang.megastudy.net/bundang/nsu/nsu/2025/2025_teamplay/teamplay_01.asp" target="_blank">
                                <!--
                                <div class="flag ver01">
                                    <span>마감임박</span>
                                </div>-->
								<p class="title"><span><strong>분당</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>                                            
                                            <span class="sub_txt">문의</span>031-781-3100
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                        </ul>
						<ul>
							<li id="C09" class="cam_list"><a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2025/2025_teamplay/teamplay_01.asp" target="_blank">
									<!--
									<div class="flag ver01">
										<span>마감</span>
									</div>-->
									<p class="title"><span><strong>일산</strong></span></p>
									<div class="info_wrap">
										<div class="info">
											
                                            <p>
                                                <span class="sub_txt">문의</span>031-8073-9600
											</p>
										</div>
									</div>
								</a>
							</li>
							<li id="C10" class="cam_list"><a href="https://pyeongchon.megastudy.net/" target="_blank">
									<!-- <div class="flag ver01">
										<span>전반마감</span>
									</div> -->
									<p class="title"><span><strong>평촌</strong></span></p>
									<div class="info_wrap">
										<div class="info">
											
                                            <p>
                                                <span class="sub_txt">문의</span>031-388-3141
											</p>
										</div>
									</div>
								</a>
							</li>
                        </ul>
                    </div>
                </div>
				<!-- // -->

            </div>
        </div>
    </div>

    
    <!-- container End --> 
    
    <script type="text/javascript">
	var motion1 = new TimelineMax({delay:0.5,repeat:0})
		motion1.to(".act01", 1.6, {opacity:1});

    var motion2 = new TimelineMax({delay:0.5,repeat:0})
        motion2.to(".act02", 0.2, {opacity:1});	
    var motion3 = new TimelineMax({delay:1,repeat:0})
        motion3.to(".act03", 0.2, {opacity:1});

    var motion4_1 = new TimelineMax({delay:1.5,repeat:0})
        motion4_1.to(".act04_1", 0.9, {opacity:1, repeat:-1, yoyo:true});        
    var motion4_2 = new TimelineMax({delay:1.5,repeat:0})
        motion4_2.to(".act04_2", 0.9, {opacity:1, repeat:-1, yoyo:true});
    var motion4_3 = new TimelineMax({delay:1.5,repeat:0})
        motion4_3.to(".act04_3", 0.9, {opacity:1, repeat:-1, yoyo:true});
    var motion4_4 = new TimelineMax({delay:1.5,repeat:0})
        motion4_4.to(".act04_4", 0.9, {opacity:1, repeat:-1, yoyo:true});
	</script>

    <!-- <script>
    $(document).ready(function ($) {
        $(".quick li a").on('click', function(e){

            var _top = $($(this).attr('href')),
                $target = _top.offset().top;

            e.preventDefault();
            $('html, body').animate({
                scrollTop: $target
            }, 100);
        });
        
    });
    </script> -->

    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script>
    $(document).ready(function() {
        $('.reviewSwiper').each(function(index){
            var swiper = new Swiper(`.reviewSwiper.no${index+1}`, {
                direction: "vertical",
                loop: true,
                autoplay: {
                    delay: 3000,
                    disableOnInteraction: false,
                },
            });
        })
    });
    </script>
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>