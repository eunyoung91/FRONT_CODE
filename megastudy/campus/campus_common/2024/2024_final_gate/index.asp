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
@import url('https://fonts.cdnfonts.com/css/gotham');


/* top */
#div_full {background:#001548;}
#div_cont {width:100%; text-align:center; clear:both; position:relative; overflow:hidden; font-family:"MalGun Gothic"; font-size:16px; letter-spacing:-0.5px; line-height:20px; color:#333;}    
/* #div_cont .con {width:1000px; margin:0 auto; position:relative;	z-index:1;} */

.top_wrap {width:100%; height:1143px; margin:0 auto; position:absolute; z-index:3; top:0; text-align:center; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/top_bg.png') 50% top no-repeat;}  

.top_wrap .act_wrap {position:absolute; width:1000px;}
.top_wrap .act_wrap {position:relative; width:1000px; margin:0 auto;}

.top_wrap .act_wrap .txt {position:absolute; opacity:0; z-index:2;}
.top_wrap .act_wrap .act01 {left:0; top:-45px;}
.top_wrap .act_wrap .act02 {left:0; top:80px;}
.top_wrap .act_wrap .act03 {left:-100%; top:300px;}
.top_wrap .act_wrap .act04 {left:-100%; top:620px;}
.top_wrap .act_wrap .act05_01 {right:-425px; top:78px;}
.top_wrap .act_wrap .act05_02 {animation:arrow-fire .2s ease-in 1.7s forwards;}
@keyframes arrow-fire {
	0%	{right:-700px; top:0;}
    10% {opacity:1;}
	100% {right:-368px; top:175px; opacity:1;}
}

.fix_bottom_wrap {background:#000; position:fixed; bottom:0; left:0; width:100%; height:125px; z-index:10; }
.fix_bottom_area {width:1000px; margin:0 auto; overflow:hidden; padding-top:20px;}
.fix_bottom_area ul {display:inline-block; overflow:hidden;}
.fix_bottom_area ul li {display:table; float:left; width:95px; height:50px; text-align:center; border:1px solid #555;}
.fix_bottom_area ul li a {position:relative; font-size:16px; color:#fff; font-weight:500; word-break:keep-all; word-wrap:break-word;}

.fix_bottom_area ul li:hover {border-color:#f3c58f;}
.fix_bottom_area ul li:hover a em {color:#f3c58f; font-weight:bold;}

.fix_bottom_area ul li + li {margin-left:10px;}
.fix_bottom_area ul + ul {margin-left:68px;}
.fix_bottom_area ul.large {}
.fix_bottom_area ul li:nth-child(1),
.fix_bottom_area ul li:nth-child(2) {width:175px;}
.fix_bottom_area ul.small {width:175px;}
.fix_bottom_area ul.small li {width:100%;}
.fix_bottom_area ul p.title {width:100%; height:40px; line-height:37px; color:#fff; background:#0036a4; font-weight:bold; font-size:19px; text-align:center; margin-bottom:15px;}
  
    
.fix_bottom_wrap.inner {position:absolute; bottom:165px; z-index:1; width:1000px;max-width:1000px;height:auto;left:50%; margin-left:-500px;box-sizing:border-box;z-index:10;}
.fix_bottom_wrap.inner .fix_bottom_area {padding:20px 30px;box-sizing: border-box;}
.fix_bottom_wrap.inner .fix_bottom_area ul + ul {margin-left:20px;}
.fix_bottom_wrap.inner .fix_bottom_area ul.large {width:575px; float:left;}
.fix_bottom_wrap.inner .fix_bottom_area ul li {width:107px; margin-top:10px;box-sizing:border-box;}
.fix_bottom_wrap.inner .fix_bottom_area ul.large li:nth-child(7) {margin-left:0;}

.fix_bottom_wrap.inner .fix_bottom_area ul.medium {width:222px; float:left;}
.fix_bottom_wrap.inner .fix_bottom_area ul.medium li {width:106px; margin-left:0;}
.fix_bottom_wrap.inner .fix_bottom_area ul.medium li:nth-child(3) {margin-left:10px;}

.fix_bottom_wrap.inner .fix_bottom_area ul.small {width:103px; float:left;}
.fix_bottom_wrap.inner .fix_bottom_area ul.small li {width:100%; margin-top:10px;}
.fix_bottom_wrap.inner .fix_bottom_area ul.small li + li {margin-left:0;}
.fix_bottom_wrap.inner .fix_bottom_area ul p.title {width:100%;max-width:100%; height:45px; line-height:45px; color:#fff; background:#0036a4; font-weight:bold; font-size:18px; text-align:center;margin-bottom:0;}
.fix_bottom_wrap.inner .fix_bottom_area ul p.title span {font-size:18px; }
.fix_bottom_wrap.inner .fix_bottom_area ul li a {display:table-cell; vertical-align:middle;}

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
.fix_bottom_wrap.scroll ul li {float:none;display:inline-block;height:38px; line-height:38px;margin:0 2px;padding:0 10px;vertical-align: middle;width:65px; word-break:break-all; }
.fix_bottom_wrap.scroll ul.large li:nth-child(2) {width:140px;}
.fix_bottom_wrap.scroll ul.large li:nth-child(3) {width:140px;}

/* .fix_bottom_wrap.scroll ul.small li:nth-child(2) {width:123px;}
.fix_bottom_wrap.scroll ul.small li:nth-child(3) {width:123px;} */
.fix_bottom_wrap.scroll ul.small + ul.small li:nth-child(2) {width:65px;}
.fix_bottom_wrap.scroll ul li.v2 {width:calc(9% - 33px);}
.fix_bottom_wrap.scroll ul li a {display:block; width:100%; height:100%; line-height:37px; font-size:15px;}


@media screen and (max-width: 2000px) { 
    .fix_bottom_wrap.scroll ul li {margin:0 3px;}
    .fix_bottom_wrap.scroll ul.small p.title {margin-left:10px; margin-right:0;}
    .fix_bottom_wrap.scroll ul.large li:nth-child(2) {min-width:40px; margin-left:1px;}
}
@media screen and (max-width: 1720px) { 
    
	.fix_bottom_wrap.scroll ul li,
	.fix_bottom_wrap.scroll ul li.v2 { margin:0 1px;}
	.fix_bottom_wrap.scroll ul li.v2 {}
    
    .fix_bottom_wrap.scroll ul.large li:nth-child(2) {width:123px;}
    .fix_bottom_wrap.scroll ul.large li:nth-child(3) {width:123px;}

    .fix_bottom_wrap.scroll ul.medium li {width:80px;}
    .fix_bottom_wrap.scroll ul li {width:44px;}
    .fix_bottom_wrap.scroll ul li {padding:0 2px;}
}

@media screen and (max-width: 1300px) { 
    .fix_bottom_wrap.scroll .fix_bottom_area  {min-width:1200px;}
	.fix_bottom_wrap.scroll ul li, 
    .fix_bottom_wrap.scroll ul li.v2 {margin:0; padding:0 7px;}
    
    .fix_bottom_wrap.scroll .fix_bottom_area  {max-width:100%;padding:17px 0;margin:auto;}
    .fix_bottom_wrap.scroll ul.large {width:calc(100% - 247px); width:auto}
    .fix_bottom_wrap.scroll ul.small {width:247px; text-align:right;}
    .fix_bottom_wrap.scroll ul p.title {display:inline-block; width:calc(7.5% - 33px);height:40px; line-height:37px;padding:0 8px;margin:0 1px;font-size:16px;border-radius:0;vertical-align: middle;box-sizing:border-box; width:auto;}
    .fix_bottom_wrap.scroll ul.small p.title {margin-left:7px; margin-right:1px;}
    .fix_bottom_wrap.scroll ul li {float:none;display:inline-block;height:38px; line-height:48px;margin:0;padding:0 3px;vertical-align: middle;}
    .fix_bottom_wrap.scroll ul li:nth-child(5) {}
    .fix_bottom_wrap.scroll ul li:nth-child(2) {min-width:40px; width:auto !important;}
    .fix_bottom_wrap.scroll ul li:nth-child(3) {min-width:40px; width:auto !important;}
}

@media screen and (max-width: 1000px) { 
    .fix_bottom_wrap.scroll .fix_bottom_area  {min-width:1000px;}
    .fix_bottom_wrap.scroll ul li {padding:0 5px;}
}

.text_area {position:absolute; left:50%; bottom:120px; width:1000px; margin-left:-500px; text-align:center;}
.text_area p {font-size:15px; color:#42578a;}

.book_posi.posi02 {margin-left:20px;}
.book_posi.posi03 {margin-left:20px;}

.top_txt_wrap {position:relative; padding:70px 0; background:#EEC695; z-index:1;}
.top_txt_wrap::after {position:absolute; top:-40px; left:50%; width:1px; height:80px; background:url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2024/2024_final_gate/con_img_line.png') no-repeat; z-index:2; content:'';}

.div_con5 {
	background:#144094;
	position: relative;
	overflow: hidden;
	padding: 0px 0 80px;
}
.div_con5 .title_wrap {text-align:center; padding-bottom:30px;}
.div_con5 .con {width:1030px !important;  margin:0 auto; position:relative;}

.div_con5 ul {
    overflow: hidden;
    margin: 0 auto;
    position: relative;
    padding:20px 0;
	text-align:center;
}
.div_con5 ul + ul {margin-top:0px;}
.div_con5 ul li {
    display:inline-block;
	width:230px;
    height:150px;
	margin:0 10px;
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
    width: 90%;
    margin:0 auto;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2024/2024_final_gate/dashed_line.png') center bottom no-repeat;
    border-bottom:none;
    margin-top:10px;
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
	letter-spacing:-1.5px;
}
.div_con5 ul li .flag {
    position:absolute;
    top:0px;
    right:0px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/new_flag.png') 0 0 no-repeat;
    width:69px;
    height:36px;
    display:inline-block;
    vertical-align:middle;
}
.div_con5 ul li .flag.new {
    position:absolute;
    top:0px;
    right:0px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_nsufirst/new_flag.png') center top no-repeat;
    width:69px;
    height:36px;
    display:inline-block;
    vertical-align:middle;
}
.div_con5 ul li .flag span {
	color:#fff;
	font-size:15px;
	font-weight:700;
	margin-top:6px;
	display:block;

}
.div_con5 ul li .flag.ver01 {
    position:absolute;
    top:10px;
    right:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/end_flag.png') 0 0 no-repeat;
    width:46px;
    height:54px;
    display:inline-block;
    vertical-align:middle;
}
.div_con5 ul li .flag.ver01 span {
    margin-top:3px;
}

.div_con5 ul li .flag.ver02 {
    position:absolute;
    top:10px;
    right:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/end_flag.png') 0 0 no-repeat;
    width:46px;
    height:54px;
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
	font-size:21px;
	color:#0D48A8;
	font-weight:bold;
	font-family:'Noto Sans KR', 'Montserrat';
}
.div_con5 ul.wide_li li .info_wrap p{display:inline-block;margin-bottom:0;font-size:21px;}
.div_con5 ul.wide_li li .info_wrap p + p{margin-left:30px;}
.div_con5 ul li .info_wrap .sub_txt {
	margin-right:3px;
	width:45px;
	height:19px;
	line-height:17px;
	border-radius:11px;
	font-size:13px;
	color:#fff;
	display:inline-block;
	text-align:center;
	background:#0D48A8;    
	font-family: 'Noto Sans KR';
	font-weight:400;
    vertical-align:middle;
    margin-top:-4px;
}
.div_con5 ul.wide_li li .info_wrap .sub_txt{width:56px;height:23px;font-size:15px;line-height:23px;border-radius:12px;}
.div_con5 ul li.off a {cursor:default;}
.div_con5 .tit_sub{padding-top:70px;text-align:center;}

.animation_element.animation_set {opacity: 1 !important;}
</style>
<script type="text/javascript">
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
            //cam_list_act();

            var fix_txt = $('.scroll .fix_bottom_area').html();
            $('.inner .fix_bottom_area').html(fix_txt);
        },
        "resize":function(){
        },
        "scroll":function(){
            parallaxScroll();
            ani_scr();
        }
    });
    
    function ad_link() {

        $('#link li').each(function() {
            var l_id = $(this).attr("id");
            var l_link = $(this).find("a").attr("href");
            var l_target = $(this).find("a").attr("target");

            // console.log(l_id, l_link)

            $(".fix_" + l_id).attr("href", l_link);
            $(".fix_" + l_id).attr("target", l_target);            
        });
    }

    function cam_list_act() {
        $(".cam_list").each(function () {
            var idx = $(this).attr("id");
            $(".fix_"+ idx).attr("href", $("#"+idx).find("a").attr("href"))
        });
    }
</script>    
<script src="/public/js/TweenMax.min.js"></script> 
<script type="text/javascript">
    /* motion scroll */
    function ani_scr() {
		var winH = $(window).height();
		var scrT = $(window).scrollTop();
		var view_pos = winH + scrT
	
		$(".animation_element").each(function () {
			var elementH = $(this).outerHeight();
			var elementT = $(this).offset().top;
			var elementP = (elementT + elementH + -200);
	
			if ((elementP <= view_pos)) {
				$(this).addClass("animation_set");
			}
		});
    }

	/* Scroll */
	function parallaxScroll(){
		var scrolled = $(window).scrollTop();
        
        if(scrolled > $(".div_con1").offset().top && scrolled < $(".div_con5").offset().top-200 ) {
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"block"});
        }
        
        if(scrolled > $(".div_con5").offset().top-200 || scrolled < $(".div_con1").offset().top) {
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
        }
	}
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
            <div id="div_full" class="div_con" style="height:1143px; position:relative; z-index:1;">
                <div class="top_wrap">
                    <div class="act_wrap">
                        <img class="txt act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/top_txt01.png" alt="" />

                        <img class="txt act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/top_txt02.png" alt="" />

                        <img class="txt act03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/top_txt03.png" alt="" />

                        <img class="txt act04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/top_txt04.png" alt="" />

                        <img class="txt act05_01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/img_arrow_target.png" alt="" />

                        <img class="txt act05_02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/img_arrow.png" alt="" />
                    </div>

                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area">
                            
                        </div>
                    </div>

                    <!-- text_area -->
                    <div class="text_area">
                        <p>
                            ※ 일부 학원의 경우, 재수종합반 마감으로 인해 별도의 수능 파이널 문제풀이반이 개설되지 않을 수 있습니다.
                        </p>
                    </div>
                </div>
            </div>
            <div class="fix_bottom_wrap scroll">
                <div class="fix_bottom_area">
                    <ul class="large">
                        <p class="title"><span>재수</span> 통학</p>
                        <li><a class="fix_C03" href="" target=""><em>강남 팀플전문관</em></a></li>
                        <li><a class="fix_C13" href="" target=""><em>서초 의약학전문관</em></a></li>
                        <li><a class="fix_C05" href="" target=""><em>강북</em></a></li>
                        <li><a class="fix_C04" href="" target=""><em>노량진</em></a></li>
                        <li><a class="fix_C11" href="" target=""><em>신촌</em></a></li>
                        <li><a class="fix_C06" href="" target=""><em>송파</em></a></li>
                        <li><a class="fix_C07" href="" target=""><em>부천</em></a></li>
                        <li><a class="fix_C08" href="" target=""><em>분당</em></a></li>
                        <li><a class="fix_C09" href="" target=""><em>일산</em></a></li>
                        <li><a class="fix_C10" href="" target=""><em>평촌</em></a></li>
                    </ul>

                    <ul class="medium">
                        <p class="title"><span>재수</span> 기숙</p>
                        <li><a class="fix_C01" href="" target=""><em>양지 기숙</em></a></li>
                        <li><a class="fix_C02" href="" target=""><em>서초 기숙</em></a></li>
                        <li><a class="fix_C14" href="" target=""><em>안성 기숙</em></a></li>
                    </ul>

                    <ul class="small">
                        <p class="title"><span></span>초중고</p>
                        <li><a class="fix_C12" href="" target=""><em>성북</em></a></li>
                    </ul>
                </div>
            </div>
            
            <div class="div_con top_txt_wrap">
                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/con_txt01.png" alt="" />
            </div>
            

            <div class="div_con" style="position:relative;">
                <div class="div_con1">
                    <div class="mt120">
                        <img class="title01 animation_element b_to_t" src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/con01_title01.png" alt="" /> 
                    </div>
                    
                    <div class="taC animation_element b_to_t mt70">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/con01_img01.png" alt="" />
                    </div>
                </div>
                
                <div class="div_con02">
                    <div class="taC animation_element b_to_t con mt100" style="position:relative;">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/con02_title01.png" alt="" />
                    </div>
                    
                    <div class="taC mt70" style="position:relative; margin:0 auto; font-size:0;">
                        <img class="book_posi animation_element l_to_r posi01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/con02_img01.png" alt="" />
                        <img class="book_posi animation_element posi02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/con02_img02.png" alt="" />
                        <img class="book_posi animation_element r_to_l posi03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/con02_img03.png" alt="" />
                    </div>
                </div>
                
                <div class="div_con3" style="padding-bottom:110px;">                                      
                    <div class="taC animation_element mt120"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/con03_title01.png" alt="" /></div>

                    <div class="taC animation_element mt5">
                        <a href="https://campus.megastudy.net/campus_common/2023/2023_map/index.asp" target="_blank" style="display:block; width:484px; height:310px; position:absolute; left:50%; top:246px; margin-left:-227px;"></a> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/con03_img01.png" alt="" />
                    </div>
                </div>

				<div class="div_con5" id="link">
                    <div class="taC mt30"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_final_gate/con04_title01.png" alt="" /></div>

                    <div class="con taC mt70"> 
                        <ul>   
                            <li id="C01" class="cam_list">
                                <a href="https://yangji.megastudy.net/yangji/nsu/2024/2024_final/final_01.asp" target="_blank">
                                <!-- <a href="https://yangji.megastudy.net/yangji/nsu/2023/2024_final/final_01.asp" target="_blank"> -->
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
                                </a>
                            </li>
                            <li id="C02" class="cam_list">
                                <!-- <a href="javascript:alert('추후 오픈 예정입니다.')"> -->
                                <a href="https://seochob.megastudy.net/yangjim/nsu/2024/2024_final/final_01.asp" target="_blank">
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
                                </a>
                            </li>
                            <li id="C14" class="cam_list">
                                <!-- <a href="javascript:alert('8. 25(금) 오픈 예정입니다.')"> -->
                                <a href="https://ansung.megastudy.net/ansung/nsu/2024/2024_final/final_01.asp" target="_blank">
                                    <p class="title"><span><strong>안성 기숙</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">문의</span>031-8004-1010
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
						
						<ul>
                            <li id="C03" class="cam_list">
                                <!-- <a href="javascript:alert('추후 오픈 예정입니다.')"> -->
                                <a href="https://gangnam.megastudy.net/gangnam/nsu/nsu/2024/2024_final/final_01.asp" target="_blank">
                                <!-- <div class="flag">
                                    <span>확장 이전</span>
                                </div> -->
                                    <p class="title"><span><strong>강남</strong> 팀플전문관</span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                02-568-3800
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            
                            <li id="C13" class="cam_list">
                                <a href="https://seocho.megastudy.net/seocho/nsu/nsu/2024/2024_final/final_01.asp" target="_blank" >
                                    <p class="title"><span><strong>서초</strong> 의약학전문관</span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                02-535-5678
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>

                            <li id="C05" class="cam_list">
                                <a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2024/2024_final/final_01.asp" target="_blank" >
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
                                </a>
                            </li>
                            
							<li id="C04" class="cam_list">
                                <!-- <a href="javascript:alert('추후 오픈 예정입니다.')"> -->
                                <a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2024/2024_final/final_01.asp" target="_blank">
                                <!--
                                <div class="flag ver01">
                                    <span>마감임박</span>
                                </div>-->
                                    <p class="title"><span><strong>노량진</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                02-826-1555
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
						
						<ul>
                            <li id="C11" class="cam_list">
                                <!-- <a href="javascript:alert('추후 오픈 예정입니다.')"> -->
                                <a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2024/2024_final/final_01.asp" target="_blank">
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
                                </a>
                            </li>
							<li id="C06" class="cam_list">
                                <!-- <a href="javascript:alert('8. 28(월) 오픈 예정입니다.')"> -->
								<a href="https://songpa.megastudy.net/songpa/nsu/nsu/2024/2024_final/final_01.asp" target="_blank">
                                <!--
                                <div class="flag ver01">
                                    <span>대기<br>접수</span>
                                </div>
                                -->
                                    <p class="title"><span><strong>송파</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                02-428-8181                                        
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C07" class="cam_list">
                                <a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2024/2024_final/final_01.asp" target="_blank">
                                <!--
                                <div class="flag ver01">
                                    <span>마감임박</span>
                                </div>-->
                                    <p class="title"><span><strong>부천</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                032-326-9900
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C08" class="cam_list">
                                <a href="https://bundang.megastudy.net/bundang/nsu/nsu/2024/2024_final/final_01.asp" target="_blank" >
                                    <p class="title"><span><strong>분당</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">문의</span>
                                                031-781-3100
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <ul>
							<li id="C09" class="cam_list">
                                <!-- <a href="javascript:alert('9. 1(금) 오픈 예정입니다.')"> -->
								<a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2024/2024_final/final_01.asp" target="_blank">
									<!--
									<div class="flag ver01">
										<span>마감</span>
									</div>-->
									<p class="title"><span><strong>일산</strong></span></p>
									<div class="info_wrap">
										<div class="info">
											
                                            <p>
                                                <span class="sub_txt">문의</span>
												031-8073-9600
											</p>
										</div>
									</div>
								</a>
							</li>
							<li id="C10" class="cam_list">
								<a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2024/2024_final/final_01.asp" target="_blank" >
									<!-- <div class="flag ver01">
										<span>전반마감</span>
									</div> -->
									<p class="title"><span><strong>평촌</strong></span></p>
									<div class="info_wrap">
										<div class="info">
											
                                            <p>
                                                <span class="sub_txt">문의</span>
												031-388-3141
											</p>
										</div>
									</div>
								</a>
							</li>
							<li id="C12" class="cam_list">
								<a href="https://seongbuks.megastudy.net/seongbuk/jaehak/jaehak/2024/2024_final/final_01.asp" target="_blank" >
									<!-- <div class="flag ver01">
										<span>전반마감</span>
									</div> -->
									<p class="title"><span><strong>성북</strong></span></p>
									<div class="info_wrap">
										<div class="info">
											
                                            <p>
                                                <span class="sub_txt">문의</span>
												02-927-8001
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
    <script type="text/javascript">
	var motion1 = new TimelineMax({delay:0.2,repeat:0})
        motion1.to(".act01", 0.3, {opacity:1, top:130});
        
	var motion2 = new TimelineMax({delay:0.5,repeat:0})
        motion2.to(".act02", 0.5, {opacity:1, top:188});
        
    var motion3 = new TimelineMax({delay:1,repeat:0})
        motion3.to(".act03", 0.4, {opacity:1, left:0});
        
    var motion4 = new TimelineMax({delay:1.4,repeat:0})
        motion4.to(".act04", 0.3, {opacity:1, left:0 });

    var motion5_1 = new TimelineMax({delay:1,repeat:0})
        motion5_1.to(".act05_01", 0.8, {opacity:1});
    
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
	</script>
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
