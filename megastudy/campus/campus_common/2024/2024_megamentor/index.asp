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
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
    
<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.10.3/jquery-ui.min.js"></script>
<style type="text/css">
@import url(/library/css/stylesheets/NotoSansKR-Hestia.css);

.top_wrap {
	position: relative;
	height:920px;
	overflow: hidden;
}
.top_wrap .bg {width:100%; height:920px; background: #090b16 url('<%=Application("img_path")%>/library/campus_common/2020_megamentor/top_bg.jpg') center top no-repeat; position:absolute; bottom:0; left:0;}

.top_wrap .top_visual {
    position: relative;
	height: 920px;
	overflow:hidden;
}
.top_wrap .top_visual .inner {
    position: relative;
    padding: 0;
    width:1000px; 
    margin:0 auto;
}
.top_wrap .top_visual .ribbon {
    position: absolute;
    top: 110px;
    left: 30%;
    opacity: 0;
    margin-left: -1247.5px;
	z-index:3;
}
    .top_wrap .top_visual .img_cover {
        position:absolute;
        width:100%;
        height:920px;
        top:0;
        left:0;
        text-align:center;
        background: url('<%=Application("img_path")%>/library/campus_common/2020_megamentor/bg_cover.png') no-repeat center top;z-index:3;opacity:0;
    }
    .top_wrap .top_visual .gradi {position:absolute; left:-1142px; z-index:2; opacity: 0;}
.top_wrap .top_visual .img_visual {
    opacity: 0;
	position: absolute;
    top: 63px;
    left: 428px;
    opacity: 0;
    z-index:5;
}
.top_wrap .top_visual .sub_txt {
    position: absolute;
    top: 278px;
    opacity: 0;
    left: 173px;
    z-index:5;
}


.top_wrap .top_visual .sub_bottom_txt {
    position: absolute;
    top: 338px;
    opacity: 0;
    left: 173px;
    z-index:1;
}



.div_con1{position: relative;padding:0 0 100px;}
        
.div_con2 {z-index:1; position:relative;background: #f7f5ee;padding: 0px 0 100px; overflow:hidden;}
.div_con2 .con {position:relative; width:1000px; margin:0px auto;}

.div_con4{padding: 100px 0;background: #ededed;}
.div_con4 .title_wrap {text-align:center;}
.div_con4 .con {width:1030px !important;  margin:0 auto; position:relative;}
    
#div_cont {
	color: #333;
	font-size: 13px;
	font-family: "MalGun Gothic";
	font-size: 16px;
	line-height: 1.2;
	letter-spacing: -1.5px;
}
#div_cont {
	width: 100%;
	text-align: center;
	clear: both;
	position: relative;
	overflow: hidden;
}   

.quick {
	width: 100px;
	position: fixed;
	top: 310px;
	left: 50%;
	margin-left: 523px;
	z-index: 999;
}

.div_con4 ul {
    overflow: hidden;
    margin: 0 auto;
    position: relative;
    padding:20px 0;
	text-align:center;
}
.div_con4 ul li {
    display:inline-block;
	width:238px;
    height:150px;
	margin:0 8px;
    -webkit-box-shadow: 2px 11px 17px -5px #d0d0d0; -moz-box-shadow: 2px 11px 17px -5px #d0d0d0; box-shadow: 2px 11px 17px -5px #d0d0d0;
    -moz-border-radius: 0px;
    -webkit-border-radius: 0px;
    border-radius: 0px;
    background:#fff;
    font-family: 'Noto Sans KR';
    letter-spacing: -0.5px;

}
.div_con4 ul.wide_li li{width:470px;height:160px;}
.div_con4 ul li a {
    display: block;
    width:100%;
    float:left;
    position:relative;
}

.div_con4 ul li a {
    position:relative;
}

.div_con4 ul li .title {
    width: 85%;
    margin:0 auto;
/*     background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2020_half/dot_line.png') center bottom repeat-x; */
    border-bottom:none;
    margin-top:7px;
}
.div_con4 ul li .title strong {
    font-weight:700;
}
.div_con4 ul li .title span {
    font-size:25px;
	line-height:68px;
    font-weight:400;
    padding-right:20px;
    background: url('<%=Application("img_path")%>/library/campus_common/2020_megamentor/bullet_arrow.png') right 50% no-repeat;
	letter-spacing:-1px;
}
.div_con4 ul li .flag {
    position:absolute;
    top:10px;
    right:-7px;
    background: url('<%=Application("img_path")%>/library/campus_common/2020_megamentor/end_flag.png') 0 0 no-repeat;
    width:46px;
    height:54px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 ul li .flag.new {
    position:absolute;
    top:0px;
    right:0px;
    background: url('<%=Application("img_path")%>/library/campus_common/2020_megamentor/new_flag.png') center top no-repeat;
    width:70px;
    height:40px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 ul li .flag span {
	color:#fff;
	font-size:15px;
	font-weight:700;
	margin-top:3px;
	display:block;

}
.div_con4 ul li .info_wrap {
	display:table;
	width:100%;
	height:66px;
}
.div_con4 ul.wide_li li .info_wrap{height:85px;}
.div_con4 ul li .info_wrap .info {
	display:table-cell;
	vertical-align:middle;	
	position: relative;
}
.div_con4 ul li .info_wrap .info:before{content:"";border-top: 1px dashed #c6c6c6;position: absolute;left: 20px;right: 20px;top: 0;}

.div_con4 ul.wide_li li .info_wrap .info{padding-left:0;}
.div_con4 ul li .info_wrap p {
	font-size:19px;
	color:#3054a6;
	font-weight:bold;
	font-family:'Noto Sans KR', 'Montserrat';
}
.div_con4 ul.wide_li li .info_wrap p{display:inline-block;margin-bottom:0;font-size:21px;}
.div_con4 ul.wide_li li .info_wrap p + p{margin-left:30px;}
.div_con4 ul li .info_wrap .sub_txt {
	margin-right:5px;
	width:45px;
	height:21px;
	line-height:20px;
	border-radius:11px;
	font-size:13px;
	color:#fff;
	display:inline-block;
	text-align:center;
	background-color:#3054a6;
	font-family: 'Noto Sans KR';
	font-weight:400;
	vertical-align: middle;
}
.div_con4 ul.wide_li li .info_wrap .sub_txt{width:56px;height:23px;font-size:15px;line-height:23px;border-radius:12px;}
.div_con4 ul li.off a {cursor:default;}
.div_con4 .tit_sub{padding-top:70px;text-align:center;}

.div_con4 .flag.ver01 {
    position:absolute;
    top:-10px;
    left:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/open_flag.png') 0 0 no-repeat;
    width:76px;
    height:37px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 .flag.ver01 span {
    margin-top:3px;
}

.div_con3 {position:relative;padding: 100px 0;}
.div_con3 .con {position:relative; width:1000px; margin:0 auto;}


    
.box_act {position:absolute; top:570px; width:948px; left:30px; opacity:0; z-index:5;}
.box_act li {position:relative;-webkit-transition:all 0.5s ease-in-out;transition:all 0.5s ease-in-out;opacity:1; display:inline-block; float:left;}
.box_act li + li {margin-left:12px;}
.box_act li img {opacity:1 !important; left:0;}
.box_act li img.back{position:absolute;left:0px;top:0px;}

.box_act li .flipper{width:308px;height:276px;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;position:relative;}
.box_act .front, .box_act .back{backface-visibility:hidden;-webkit-backface-visibility:hidden;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;text-indent:-1000em;}
.box_act .back{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);}
.box_act .front{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.box_act li.on .back, .box_act li.on .back{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.box_act li.on .front, .box_act li.on .front{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);display:none\9;}
.motion .box_act li{opacity:1;}
.motion .box_act li:nth-child(1){left:0px;top:0px;-webkit-transition-delay:1.4s;transition-delay:1.4s;}
.motion .box_act li:nth-child(2){left:0px;top:0px;-webkit-transition-delay:1.5s;transition-delay:1.5s;}
.motion .box_act li:nth-child(3){left:0px;top:0px;-webkit-transition-delay:1.6s;transition-delay:1.6s;}

    
    
.slide_area {position:relative; height:272px; margin:1.5rem 0 0; overflow:hidden;}
.slide_wrap {position:absolute; width:2380px; top:0px; left:0px; overflow:hidden; padding-bottom:5px; }
.slide_wrap li {float:left; width:171px; height:272px; margin-right:0; background: url('<%=Application("img_path")%>/library/campus_common/2024/2024_megamentor/megamentor_bg.jpg') 0 0 no-repeat;}
.slide_wrap li.list01 {background-position:0 0;}
.slide_wrap li.list02 {background-position:-171px 0;}
.slide_wrap li.list03 {background-position:-342px 0;}
.slide_wrap li.list04 {background-position:-513px 0;}
.slide_wrap li.list05 {background-position:-684px 0;}
.slide_wrap li.list06 {background-position:-855px 0;}
.slide_wrap li.list07 {background-position:-1026px 0;}
.slide_wrap li.list08 {background-position:-1197px 0;}
.slide_wrap li.list09 {background-position:-1368px 0;}
.slide_wrap li.list10 {background-position:-1539px 0;}
.slide_wrap li.list11 {background-position:-1710px 0;}
.slide_wrap li.list12 {background-position:-1881px 0;}
.slide_wrap li.list13 {background-position:-2052px 0;}
.slide_wrap li.list14 {background-position:-2223px 0;}
.slide_wrap li.list15 {background-position:-2394px 0;}
.slide_wrap li.list16 {background-position:-2565px 0;}
.slide_wrap li.list17 {background-position:-2736px 0;}
.slide_wrap li.list18 {background-position:-2907px 0;}
.slide_wrap li.list19 {background-position:-3078px 0;}
.slide_wrap li.list20 {background-position:-3249px 0;}
.slide_wrap li.list21 {background-position:-3420px 0;}
    
.rolling_slide_wrap {overflow:hidden; text-align:left; width:1000px; margin:0 auto;}
.rolling_slide_wrap * {font-family:'Noto Sans KR', Apple Gothic, "돋움", Dotum, Verdana, sans-serif; box-sizing:border-box;}
.rolling_left {border-bottom:2px solid #c7c7c7; }
.rolling_left:after {content:''; display:block; clear:both;}
.rolling_left .title_t_txt {font-size:22px; color:#000; font-weight:300; padding-left:40px; letter-spacing:-1px; line-height:1.3; margin-top:45px;}
.rolling_left .title {padding-left:40px; font-size:45px; color:#008186; font-weight:bold;}
.rolling_left .ver3 {}
.ver2 .rolling_left .title {color:#5a4cb1;}
.ver3 .rolling_left .title {color:#346bca;}
.rolling_left .left_menu {padding-bottom:30px; margin-top:25px;}
.rolling_left .left_menu li {padding:15px 0; position:relative; cursor:pointer; font-size:24px; font-weight:bold; color:#999; text-align:center; line-height:1; display:inline-block; float:left; background:#fff;}
.div_con2 .left_menu li {background:#f7f5ee;}

.rolling_left .left_menu li{width:20%;}
/* .rolling_left .left_menu li:nth-child(1) {width:197px;}
.rolling_left .left_menu li:nth-child(2) {width:190px;}
.rolling_left .left_menu li:nth-child(3) {width:204px;}
.rolling_left .left_menu li:nth-child(4) {width:192px;}
.rolling_left .left_menu li:nth-child(5) {width:197px;} */
    
.ver2 .rolling_left .left_menu li:nth-child(1) {width:400px;}
.ver2 .rolling_left .left_menu li:nth-child(2) {width:170px;}
.ver2 .rolling_left .left_menu li:nth-child(3) {width:250px;}
.ver2 .rolling_left .left_menu li:nth-child(4) {width:180px;}

.ver3 .rolling_left .left_menu li:nth-child(1) {width:284px;margin-left:6.5%;}
.ver3 .rolling_left .left_menu li:nth-child(2) {width:224px;}
.ver3 .rolling_left .left_menu li:nth-child(3) {width:228px;}
.ver3 .rolling_left .left_menu li:nth-child(4) {width:126px;}
.ver3 .rolling_left .left_menu li:nth-child(5) {width:137px;}
    
.rolling_left .left_menu li:before {content:''; display:none;; width:10px; height:10px; background:#cb8d42; -webkit-transform:rotate(-135deg); transform:rotate(-135deg); position:absolute; right:50%; bottom:-5px; margin-left:-5px; z-index:-1;}
.rolling_left .left_menu li.active:after {content:''; display:block; width:80%; height:4px; background:#cb8d42; position:absolute; left:10%; bottom:-3px; z-index:2;} 
.rolling_left .left_menu li.active {color:#cb8d42;}
.rolling_left .left_menu li.active:before {display:block;}

.rolling_right .right_contents {display:none;}
.rolling_right .right_contents.active {display:block;}
.rolling_right .dot_list {margin-top:55px;}
.rolling_right .dot_list li {position:relative; padding-left:10px; font-size:18px; color:#000; font-weight:350; line-height:1.5;}    
.rolling_right strong.s_bold {font-size:28px; display:block; color:#cb8d42; line-height:1.5;}
.rolling_right .dot_list li:after {content:''; display:block; background:#656565; width:2px; height:2px; border-radius:100%; position:absolute; left:0; top:12px; margin-top:-1px;}
.rolling_right .dot_list li + li {margin-top:10px;}
.star {font-family: 'Montserrat'; vertical-align:bottom; font-size:19px; font-weight:400; display:inline-block; text-indent:0; }
    

.scholarship_banner_wrap .slick-list {position:relative; overflow:hidden;}
.scholarship_banner_wrap .slick-arrow {display:none !important;}


.scholarship_banner_wrap .slick-dots
{
    position: absolute;
    right:40px; top:55px;

    display: block;

    padding: 0;
    margin: 0;

    list-style: none;

    text-align: center;
    min-width:105px;
    text-align:right;
}
.scholarship_banner_wrap .slick-dots li
{
    position: relative;

    display: inline-block;

    width: 12px;
    height: 12px;
    
    font-size:0;
    text-indent:-9999px;
    text-align: center;
    background:#bfbfbf;
    border-radius:10px;
    cursor: pointer;
    
    overflow:hidden;
}
.scholarship_banner_wrap .slick-dots li.slick-active 
{
    background:#cb8d42;
    width:32px;
}
.scholarship_banner_wrap .slick-dots li + li {margin-left:5px; text-indent:-9999px !important; overflow:hidden !important; }
.scholarship_banner_wrap .slick-dots li button { text-indent:-9999px !important; overflow:hidden !important; }
.scholarship_banner_wrap .slick-dots li.slick-active { text-indent:-9999px !important; overflow:hidden !important; }
.scholarship_banner_wrap {margin-top:30px;}
.scholarship_banner_wrap .slick-list {transition:all 0.2s; box-sizing: border-box; }
.scholarship_banner_wrap .scholarship_banner * {outline:none;}
.scholarship_banner_wrap .slick-slide li {height:190px !important;}
.bray_bg_wrap {background:#f6f6f6; padding:45px 40px 50px; width:1000px; margin:50px auto 0; box-sizing:border-box; position:relative; transition:all 0.2s;}
.bray_bg_wrap p {width:100%; text-align:left;}
.bray_bg_wrap .title {font-size:26px; font-weight:bold; color:#000; padding-left:50px; width:100%; box-sizing:border-box;}
.bray_bg_wrap .title:after {position:absolute; top:40px; left:40px; width:41px; height:36px; display:block; clear:both; content:''; background:url("<%=Application("img_path")%>/library/campus_common/2020_megamentor/icon_bal.png") 0 0 no-repeat;}
.bray_bg_wrap .ver_r_sub_txt {font-size:17px; line-height:30px; color:#555; font-weight:400;}
.bray_bg_wrap .ver_r_sub_txt strong {color:#cb8d42;}
.bray_bg_wrap .stu_name {color:#999; font-size:17px; margin-top:20px;}
    

p.under_title {}
p.under_title .bg_under_line {font-size:28px; font-weight:bold; position:relative; z-index:4;}
p.under_title .bg_under_line:after {background-color:#f4e4b8; z-index:-1;}

.teamplay_star{bottom:26px;left:37px;position:absolute;font-size:25px;}
</style>

<script type="text/javascript" src="/public/jquery/slick.js"></script>
<script type="text/javascript">
    $(function(){
        
        
        
        
        const mySlider = $('.scholarship_banner').on('init', function(slick) {

          // on init run our multi slide adaptive height function
          //multiSlideAdaptiveHeight(this);

        }).on('afterChange', function(slick, currentSlide, nextSlide) {

          // on beforeChange run our multi slide adaptive height function
          //multiSlideAdaptiveHeight(this);

        }).slick({
            dots: true,
            vertical: true,
            infinite: true,
            autoplay: true,
            autoplaySpeed: 3000,
            adaptiveHeight: true
        });

        
        
        /*
        
        let tallestSlide = 0;
        // our multi slide adaptive height function passing slider object
        function multiSlideAdaptiveHeight(slider) {

          // set our vars
          let activeSlides = [];
          

          // very short delay in order for us get the correct active slides
            <
          setTimeout(function() {

            // loop through each active slide for our current slider
            $('.slick-track .slick-active', slider).each(function(item) {

              // add current active slide height to our active slides array
              activeSlides[item] = $(this).outerHeight();

            });

            // for each of the active slides heights
            activeSlides.forEach(function(item) {
                console.log($(this).outerHeight())
              // if current active slide height is greater than tallest slide height
              if (item > tallestSlide) {

                // override tallest slide height to current active slide height
                tallestSlide = item;
                
              }else {
                  //$('.slick-list', slider).height(item);
              }
                $('.slick-list', slider).height(tallestSlide);
            });
              var tem_h = $('.slick-list .slick-active .list_wrap', slider).height() + 155;
              $('.slick-list', slider).parents('.bray_bg_wrap').css('height', tem_h)
            // set the current slider slick list height to current active tallest slide height
            //$('.slick-list', slider).height(tallestSlide);

          }, 0);

        }
        */


        
       
        var rSlide = $('.slide_wrap');
        var rItemw = $('.slide_wrap li').outerWidth(true);
        var rNum = $('.slide_wrap li').length;

        var rSlidew = rItemw * rNum;
        var rSpeed = 5000;

        var rItemw = $('.slide_wrap li').outerWidth(true);
        var rNum = $('.slide_wrap li').length;

        var rSlidew = rItemw * rNum;
        var rPause = false;

        $('.slide_wrap').width(rSlidew);


        autoPlay();


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
                            rSpeed = 7500 * position;
                        };
                    },
                    complete : function(){
                        $('.slide_wrap li').eq(0).appendTo(rSlide);
                        rSlide.css('left', 0);
                        rSpeed = 7500;
                        autoPlay();
                    }
                }
            );
        }

        
        $(".left_menu li").click(function(){
            $(this).parents(".left_menu").find("li").removeClass("active");
            var r_idx = $(this).attr("value");
            console.log($(this).attr("value"))

            $(this).addClass("active");

            $(this).parents(".rolling_left").next(".rolling_right").find(".right_contents").removeClass("active");
            $("." +r_idx).addClass("active");
        });
    });
	
    

    $(window).on({
        "load":function(){
            
            
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
			<div class="quick">
				<div class="pro"> <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/quick_top.png" alt="mega" usemap="#181114" border="0" />
					<map name="181114">
						<area class="linkA" shape="rect" coords="0,0,100,107" href="#link" onfocus="this.blur()">
						<area class="linkB" shape="rect" coords="0,107,100,130" href="#div_full" onfocus="this.blur()">
					</map>  
				</div>
			</div>

            <div id="div_full" class="div_con taL">
                <div class="top_wrap">
                    <div class="top_visual">
                        <div class="inner">
                            <img class="img_visual" src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/top_txt01.png" alt="" />
                            <img class="sub_txt" src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/top_txt02_01.png" alt="" />
                            <img class="sub_bottom_txt" src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/top_txt02_02.png" alt="" />
                            <img class="gradi" src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/top_light.png" alt="" />
                            
                            <ul class="box_act">
                                <li class="box_act01">
                                    <div class="flipper">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/top_txt03.png" alt="" class="front">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/top_txt03.png" alt="" class="back">
                                    </div>
                                </li>
                                <li class="box_act02">
                                    <div class="flipper">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_megamentor/top_txt04.png" alt="" class="front">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_megamentor/top_txt04.png" alt="" class="back">
                                    </div>
                                </li>
                                <li class="box_act03">
                                    <div class="flipper">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/top_txt05.png" alt="" class="front">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/top_txt05.png" alt="" class="back">
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="img_cover">

                        </div>
                    </div>
                    
                    <div class="bg"></div>
               
                </div>
				<div class="div_con1">
                    <div class="con taC">
                                                  

                        <div class="img_wrap mt100">
                            <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/con01_title01.png" alt="" border="0" />                   
                        </div>
                        
                        <div class="rolling_slide_wrap mt60">
                            
                            <div class="rolling_left">
                                <ul class="left_menu">
                                    <li class="active" value="con01_01">면학/학습 관리</li>
                                    <li value="con01_02">우수 강사진</li>
                                    <li value="con01_03">6단계 커리큘럼</li>
                                    <li value="con01_04">학습 콘텐츠</li>
                                    <li value="con01_05">모의고사 콘텐츠</li>
                                </ul>
                            </div>



                            <div class="rolling_right">
                                <div class="right_contents con01_01 active">
                                    <ul class="dot_list">
                                        <li>오롯이 공부에만 집중할 수 있도록, 학생들이 스스로 공부할 수 있는 면학 분위기 조성</li>
                                        <li>쉬는 시간에도 자기주도학습, 질의응답 등의 시간을 확보하여 빈틈없는 공부 진행</li>
                                        <li>강점은 더 완벽하게 취약점은 극복할 수 있도록 꼭 확인해야 하는 복습 내용은 물론, 추가 학습자료까지 제공</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide01_img01.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con01_02">
                                    <ul class="dot_list">
                                        <li>연 3회 재원생을 대상으로 다각적인 강의 만족도 평가를 실시하여 양질의 강의 제공</li>
                                        <li>밀도 높은 수업 계획과 열정적인 강의를 통해 학생들의 성적 향상</li>
                                        <li>생활담임/입시담임/학과담임의 분야별 전문 담임이 재원생의 상황에 맞는 학습전략과 학습환경 제공</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide01_img02.jpg" alt="" border="0" />
                                    </div>
                                </div>

                                <div class="right_contents con01_03">
                                    <ul class="dot_list">
                                        <li>재수생 학습 패턴에 최적화된 6단계 학습 커리큘럼</li>
                                        <li>단순히 개념정리에서 그치는 것이 아니라 6/9월 모평, 수능까지 실전 대비를 위한 학습 단계를 추가 편성하여 실전감각을 완벽하게 익힐 수 있습니다.</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_megamentor/rolling_slide01_img03.png" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con01_04">
                                    <ul class="dot_list">
                                        <li>효율적인 공부 습관을 위한 학습 콘텐츠 제공</li>
                                        <li>작성한 플래너를 기반으로 선생님께 직접 받는 맞춤 피드백, 학습 상태 등에 대한 상담 진행</li>
                                    </ul>                             

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_megamentor/rolling_slide01_img04.png" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con01_05">
                                    <ul class="dot_list">
                                        <li>전영역, 전유형 실제 수능과 유사한 모의 테스트로 실전 감각 극대화</li>
                                        <li>개념학습부터 실전 문제까지 단 한 문제도 놓치지 않도록 꼭 필요한 모의고사만 진행</li>
                                        <li>영역별 전문 강사진이 최신 경향까지 철저히 분석 후 집필</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_megamentor/rolling_slide01_img05.png" alt="" border="0" />                   
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="bray_bg_wrap">
                                        
                            
                            <p class="title">학습멘토 학생 후기</p>
                            
                            <!-- 합격자 롤링 -->
                            <div class="scholarship_banner_wrap">
                            <ul class="scholarship_banner">                            
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            오랜만에 다시 하는 공부라서 막막했는데 선생님 수업을 들으면서 
                                            <strong>예전에는 그냥 외우고 넘어갔을 내용도 이해하고 깨닫게 되어<br>수학에 자신감이 생겼습니다.</strong>
                                            6월 모의고사 성적이 평소보다 떨어져서 속상했을 때도 남은 기간 동안 어떤 것을 해야 할지 조언해<br> 주셔서 방향을 잡을 수 있었습니다.
                                        </p>
                                        <p class="stu_name">- 서초 이OO 학생</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            선생님은 학생들이 조급하지 않고 학업에 몰입할 수 있도록 도와주시면서, 
                                            <strong>학업적으로 올바른 방향성을 제시하여 기존의 문제점을<br>명확하게 깨닫게 해주십니다.</strong>
                                            저는 9월 평가원을 망친 후 조급함에 쫓겨 왔는데, 선생님의 긍정적인 영향으로 인해 건강하고<br>바람직하게 보낼 수 있게 되었습니다. 감사합니다 선생님!
                                        </p>
                                        <p class="stu_name">- 송파 남OO 학생</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            9월 모의평가 전 지구과학 개념 학습을 끝낸 후 공부의 방향성을 찾지 못한 제게, 
                                            <strong>개인 상담을 통해 공부 방법과 효율적인 시간 분배</strong><br>등을 알려주셔서 타 과목을 공부할 때도 큰 도움이 되었습니다. 
                                            또한 매주 네이버 밴드에 좋은 문제나 자료들을 올려 주셔서<br> <strong>성적 향상</strong>에 도움이 되었고, 투표로 수업방식을 정하는 등 
                                            <strong>학생들의 의견을 반영</strong>해 주셔서 좋았습니다.
                                        </p>
                                        <p class="stu_name">- 노량진 소OO 학생</p>
                                    </div>
                                </li>                                
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            처음 학원에 들어와서 자습 시간에 어떤 공부를 해야 할지 고민할 때 선생님께서 그 방향성을 잡아 주셨습니다. 또한 
                                            <strong>언제나 수업에<br>열정적으로 임하시며 적절한 예로 학생들의 이해를 도와주십니다.</strong> 
                                            마지막으로 언제나 공부할 거리를 제공해 주시고 학생들의 고민을<br>해결해 주시는 모습이 좋아서 선생님을 추천합니다.
                                        </p>
                                        <p class="stu_name">- 분당 박OO 학생</p>
                                    </div>
                                </li>                                
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            5월 모의고사에서 정체된 성적에 절망했던 저는 담임 선생님께 상담 신청을 하였고, 
                                            담임 선생님께서는 단 하나의 틀린 문제도<br>허술하게 대하지 않으셨습니다. 제 약점을 짚어주시면서 
                                            <strong>학원의 풍부한 자료와 1대1 시스템</strong>을 통해 약점을 극복하기 위한 방법도<br>알려주셨습니다. 이렇듯 자신감과 확신이 부족하던 제게 
                                            <strong>격려의 말씀과 구체적인 공부 방법</strong>을 알려주신 덕분에, 6월 모의평가에서<br>목표 점수에 가까운 성적을 얻을 수 있었습니다.
                                        </p>
                                        <p class="stu_name">- 자연계 전문관 김OO 학생</p>
                                    </div>
                                </li>
                            </ul>
                            <!-- //합격자 롤링 -->
                            </div>
                        </div>
                    </div>
                </div>
                
				<div class="div_con2 bg">
                    <div class="con taC">
                        
                        <div class="img_wrap mt100">
                            <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/con02_title01.png" alt="" border="0" />                   
                        </div>
                        

                        <div class="rolling_slide_wrap mt20 ver2">
                            <div class="rolling_left">
                                <ul class="left_menu">
                                    <li class="active" value="con02_01">메가스터디 입시전략연구소</li>
                                    <li value="con02_02">입시 설명회</li>
                                    <li value="con02_03">입시 서비스</li>
                                    <li value="con02_04"><span class="teamplay_star">&#8727;</span> 팀플장학</li>
                                </ul>
                            </div>

                            <div class="rolling_right">
                                <div class="right_contents con02_01 active">
                                    <ul class="dot_list">
                                        <li>학습부터 합격까지 시기별 맞춤 전략 제시!</li>
                                        <li>대학 입시의 모든 평가 요소를 결합한 메가스터디학원만의 혁신적인 컨설팅</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_megamentor/rolling_slide02_img01.png" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con02_02">
                                    <ul class="dot_list">
                                        <li>수시, 정시, 6/9월 모평 분석 등 시기별, 입시 트렌드에 맞춘 설명회 진행</li>
                                        <li>메가스터디학원의 입시 노하우와 재원생의 데이터를 기반으로 한 분석으로 정확한 방향 제시 및 수험생들의 입시에 대한 고민 해결</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide02_img02.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con02_03">
                                    <ul class="dot_list">
                                        <li>다년간 축적된 데이터와 체계적인 분석으로 신뢰 높은 합격 가능성 예측</li>
                                        <li>학생들의 성적향상과 목표 대학의 합격을 위해 주요 시기별 개인별 맞춤 학습 상담 진행</li>
                                        <li>재원생의 성적 추이, 상담 내역, 목표 대학 등을 철저하게 관리하여, 개인에게 최적화된 전략 제시</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide02_img03.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con02_04">
                                    <ul class="dot_list">
                                        <li>재원생들의 노력과 성공의 결과를 응원하기 위해 2010년부터 시행되어 온 메가스터디학원만의 장학 시스템</li>
                                        <li>대입 성공의 목표를 달성한 재원생 중 선발을 통해 지급되며, 강력한 동기부여로 학습 의욕 극대화</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_megamentor/rolling_slide02_img04.png" alt="" border="0" />                   
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="bray_bg_wrap" style="background-color:#fff;">
                                        
                            
                            <p class="title">입시멘토 학생 후기</p>
                            
                            <!-- 합격자 롤링 -->
                            <div class="scholarship_banner_wrap">
                            <ul class="scholarship_banner">                            
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            수시 상담을 진행할 때 제가 내신 성적과 학생부가 조금 애매해서 수시 지원에 대한 고민이 컸는데, 선생님께서 
                                            <strong>저에게 가장 유리한<br>전형과 대학들을 저보다 꼼꼼하게 알아봐 주셔서 너무 감사했습니다.</strong>
                                            덕분에 수시 지원에 대한 걱정 없이 수능 공부에 잘 전념할 수<br>있었습니다. 
                                            또한 항상 면학 분위기를 잘 관리해 주셔서 저희 반은 학기 초부터 단 한 번도 분위기가 흐트러진 적이 없었습니다.<br>선생님 항상 감사합니다!!

                                        <p class="stu_name">- 노량진 안OO 학생</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            저는 수시와 정시 모두 준비했기에 올해 
                                            <strong>입시 변경점</strong>이나, 정시로 가고 싶은 대학의 <strong>정확한 난이도, 입결, 수시 대학 선정</strong>과 같은 정보가 부족했는데,
                                            입시 담임 선생님께서 한 명 한 명 관리해 주신 덕분에 
                                            <strong>수시, 정시 모두 좋은 방향으로 나아갈 수 있었습니다.</strong>
                                        </p>
                                        <p class="stu_name">- 최상위권 전문관 구OO 학생</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            6월 모평부터 9월 모평까지의 특강 과목을 어떻게 공부해야 할지 지도해 주시고, 종례시간마다 심리 수업 못지않은 멘탈 관리를<br>해주셨습니다. 
                                            또한 9월 모평 결과를 기반으로, <strong>면밀한 입시상담과 부족한 과목에 대한 보완점</strong>을 찾아주셨습니다. 해당 보완점을 통해<br>제가 갈 수 있는 대학을 제시해 주셔서 큰 동기부여가 되었고, 
                                            <strong>미래에 대한 비전을 통해 저만의 수능 대비 전략</strong>을 만들어 주셔서<br>지금까지 원활하게 수능을 대비하며 좋은 결과를 얻을 수 있었습니다.
                                            
                                        </p>
                                        <p class="stu_name">- 자연계 전문관 박OO 학생</p>
                                    </div>
                                </li>  
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            담임 선생님으로부터 <strong>수시 관련 입시 정보</strong>를 빠르고 정확하게 전달받을 수 있었기 때문에 수시와 정시를 함께 준비해야 하는 입장에서 특별히 좋았던 것 
                                            같습니다.
                                        </p>
                                        <p class="stu_name">- 서초 황OO 학생</p>
                                    </div>
                                </li>                                
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            9월 모평 이후 수학 과목에서 부족한 점과 반성할 점을 함께 분석해 주셔서 약점 보완에 큰 도움이 되었습니다. 교과뿐만 아니라<br> 
                                            <strong>수시 논술 지원</strong>에도 도움을 주셔서 수월하게 지원할 수 있었습니다.
                                            
                                        </p>
                                        <p class="stu_name">- 평촌 정OO 학생</p>
                                    </div>
                                </li>
                            </ul>
                            <!-- //합격자 롤링 -->
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="div_con1">
                    <div class="con taC">
                        
                        <div class="img_wrap mt100">
                            <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/con03_title01.png" alt="" border="0" />                   
                        </div>

                        <div class="rolling_slide_wrap mt20 ver3">
                            <div class="rolling_left">
                                <ul class="left_menu">
                                    <li class="active" value="con03_01">학습종합진단 & 심리케어</li>
                                    <li value="con03_02">직영 급식 메가푸드</li>
                                    <!-- <li value="con03_03">바이러스 청정지역</li> -->
                                    <li value="con03_04">안전 관리</li>
                                    <li value="con03_05">학숲공간</li>
                                </ul>
                            </div>

                            <div class="rolling_right">
                                <div class="right_contents con03_01 active">
                                    <ul class="dot_list">
                                        <li>공부로 인한 메가스터디학원생의 지친 마음을 어루만져, 성적 향상을 이룰 수 있도록 지원</li>
                                        <li>학생 한 명 한 명의 특성을 파악하고 그에 맞춘 심리정서적 관리 서비스 제공</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide03_img01.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con03_02">
                                    <ul class="dot_list">
                                        <li>맛은 기본, 재원생들의 건강까지 고려한 영양 만점의 식사<strong class="s_bold">공부는 밥심! 1등급-식</strong></li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide03_img02.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <!-- <div class="right_contents con03_03">
                                    <ul class="dot_list">
                                        <li>학생들의 건강과 안전을 최우선으로 생각하며 코로나19 예방 대책을 철저히 실천<strong class="s_bold">메가스터디학원은 지금 아주 건강합니다. 바이러스 청정지역을 지켜내겠습니다.</strong></li>
                                        
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide03_img03.jpg" alt="" border="0" />                   
                                    </div>
                                </div> -->

                                <div class="right_contents con03_04">
                                    <ul class="dot_list">
                                        <li>질병과 화재 및 응급상황 등 위험 요소가 될 수 있는 문제를 항상 점검하고 재원생 안전을     최우선으로 생각하며 관리</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide03_img04.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con03_05">
                                    <ul class="dot_list">
                                        <li>미세먼지 걱정 없이 마음껏 공부할 수 있도록 <strong class="s_bold">재원생을 위한 Green Project! 학숲공간</strong></li>
                                        <li>학생들이 공부하는 공간 곳곳에 쾌적한 실내 환경 조성을 위한 공기청정기, 공조기를 설치하여     최적의 학습 환경 유지</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide03_img05.jpg" alt="" border="0" />                   
                                    </div>
                                </div>
                            </div>
                    </div>
                        
                        <div class="bray_bg_wrap">
                                        
                            
                            <p class="title">생활멘토 학생 후기</p>
                            
                            <!-- 합격자 롤링 -->
                            <div class="scholarship_banner_wrap">
                            <ul class="scholarship_banner">                            
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            선생님은 제가 고민을 말하기도 전에 힘든 일이 있는지 먼저 물어봐 주시고, 
                                            <strong>학생들의 컨디션과 슬럼프, 공부 진행</strong>에 언제나 관심을<br>기울이시는 분입니다.
                                            그저 듣기 좋은 말이나 맹목적인 응원만 해주시는 것이 아니라, 
                                            필요할 때는 단호한 조언과 쓴소리로 일깨워<br> 주시기 때문에 정말 큰 도움을 받았습니다.

                                        </p>
                                        <p class="stu_name">- 강남 배OO 학생</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            시험에서 가장 큰 허점인 <strong>'멘탈 관리'와 '시험 압박'을 컨트롤</strong>할 수 있도록,
                                            조언과 격려를 끊임없이 해주신 덕분에 모든 과목에 자신감을 얻을 수 있는 원동력이 되었습니다.
                                        </p>
                                        <p class="stu_name">- 강북 김OO 학생</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            힘들 때 찾아가면 좋은 말씀으로 힘이 되어 주신 선생님, 질의응답 때마다 친절하게 답해주신 선생님, 
                                            너무 조금 먹는다고 걱정해<br>주시던 급식 선생님, 쾌적한 환경에서 공부할 수 있도록 관리해 주시던 청소 담당자님들, 지난 1년을 돌아보니 이렇게 많은 선생님들이<br>계셨습니다.
                                            불안하고 힘들고 울고 싶어질 때마다 선생님들이 <strong>든든한 버팀목</strong>이 되어 주셔서 재수가 단순히 대학만을 위해서가 아닌,<br> 
                                            <strong>더 좋은 삶의 목표를 위한 시간</strong>이 되었습니다.

                                        </p>
                                        <p class="stu_name">- 송파 김OO 학생</p>
                                    </div>
                                </li>                                
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            수험생활 막바지에 다다르니 다른 사람들은 잘 버티는 것 같은데, 저만 더 힘들게 느껴지고 자꾸만 도망치고 싶은 생각이 들었습니다.
                                            그때마다 따끔한 조언도 해주시고 기운을 북돋아 주셔서 감사합니다. 제 자신이 실망스러워질 때마다 
                                            <strong>선생님께서 다잡아주신 덕분에 포기하지 않고 공부할 수 있었습니다.</strong>

                                        </p>
                                        <p class="stu_name">- 부천 임OO 학생</p>
                                    </div>
                                </li>                           
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            저는 내향적이어서 부모님께조차 제 속마음을 잘 표현하지 못하는 편인데, 6월 모평 후 약 일주일 간 복합적인 요인 때문에 혼자 많이<br>힘들어했습니다.
                                            이런 저를 다시 일으켜준 것은 선생님과의 상담이었습니다. "나는 네 성격을 잘 안다. 
                                            그러니 말하기 어려우면 힘든<br>이유를 말 안해도 된다. 나는 너의 생기 있는 눈빛이나 걸음걸이를 보고 괜찮아졌다는 것을 알 것이고, 네가 말하고 싶을 때까지 언제나<br>기다려 줄 것이다"라는 
                                            <strong>선생님의 말씀은 살면서 들었던 수많은 말 중 가장 큰 공감이 되었습니다.</strong>   
                                            
                                        </p>
                                        <p class="stu_name">- 자연계 전문관 서OO 학생</p>
                                    </div>
                                </li>
                            </ul>
                            <!-- //합격자 롤링 -->
                            </div>
                        </div>

                    </div>
                        
                    <div class="img_wrap mt100 taC">
                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/con03_title02.png" alt="" border="0" />                   
                    </div>
                    
                    <!-- 합격자 롤링 -->
                    <div class="slide_area mt50">
                        <ul class="slide_wrap cl">
                            <li class="list01"></li>
                            <li class="list02"></li>
                            <li class="list03"></li>
                            <li class="list04"></li>
                            <li class="list05"></li>
                            <li class="list06"></li>
                            <li class="list07"></li>
                            <li class="list08"></li>
                            <li class="list09"></li>
                            <li class="list10"></li>
                            <li class="list11"></li>
                            <li class="list12"></li>
                            <li class="list13"></li>
                            <li class="list14"></li>
							<li class="list15"></li>
							<li class="list16"></li>
							<li class="list17"></li>
							<li class="list18"></li>
							<li class="list19"></li>
							<li class="list20"></li>
							<li class="list21"></li>
                        </ul>
                    </div>
                    <!-- //합격자 롤링 -->
                    
                    <div class="img_wrap mt50 taC">
                        <a href="https://campus.megastudy.net/campus_common/nsu/2024/2024_megamentor_22/index.asp">
                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/con03_btn.png" alt="" border="0" /> 
                        </a>
                    </div>
                </div>
              
                
                <div class="div_con4" id="link">
                    <div class="con taC">                       
                        <div class="title_wrap">
							<img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/con04_title01.png" alt="" />
						</div>
                        <!-- <ul class="mt50">
                            <li><a href="https://yangji.megastudy.net/yangji/main.asp" target="_blank">
                                <div class="flag ver01">
                                    <span>전반<br>마감</span> 
                                </div>
                                <p class="title"><span><strong>양지 기숙</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
										<p>
                                            <span class="sub_txt">문의</span>031-326-5000
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://seochob.megastudy.net/yangjim/main.asp" target="_blank">
                                <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div>
                                
								<p class="title"><span><strong>서초 기숙</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>031-797-9332
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://ansung.megastudy.net/ansung/main.asp" target="_blank">
                                <div class="flag ver01">
                                    <span>신규 개원</span>
                                </div>
                                <p class="title"><span><strong>안성 기숙</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
										<p>
                                            <span class="sub_txt">문의</span>031-8004-1010
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            
                        </ul> -->
						
						<ul class="mt50">
                            <li><a href="https://gangnam.megastudy.net/gangnam/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div> -->
								<p class="title"><span><strong>강남</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>02-568-3800
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://seocho.megastudy.net/seocho/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div> -->
                                
								<p class="title"><span><strong>서초</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>02-535-5678
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://gangbuk.megastudy.net/gangbuk/nsu/main.asp" target="_blank">
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
							<li><a href="https://noryangjin.megastudy.net/noryangjin/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div> -->
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
                            <li><a href="https://sinchon.megastudy.net/sinchon/main.asp" target="_blank">
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
                            <li><a href="https://songpa.megastudy.net/songpa/nsu/main.asp" target="_blank">
                                <!--<div class="flag ver01 new">
                                    
                                </div>-->
                                <!-- <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div> -->
                                <p class="title"><span><strong>송파</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>02-428-8181
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://bucheon.megastudy.net/bucheon/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div> -->
                                <p class="title"><span><strong>부천</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>032-326-9900
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://bundang.megastudy.net/bundang/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div> -->
                                
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
							<li><a href="https://ilsan.megastudy.net/ilsan/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div> -->
                                <p class="title"><span><strong>일산</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>031-8073-9600
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>전반<br>마감</span>
                                </div> -->
                                <p class="title"><span><strong>평촌</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>031-388-3141
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- container End --> 
	<script>
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

    </script>
        
    <script src="/public/js/TweenMax.min.js"></script> 

    <script type="text/javascript">
	
    var motion1 = new TimelineMax({delay:0.5,repeat:0})
        motion1.to(".img_cover", 0.5, {opacity:1})
        .to(".top_visual .img_visual", 0.5, {opacity:1})
        .to(".top_visual .sub_txt", 0.5, {opacity:1})
        .to(".top_visual .sub_bottom_txt", 0.5, {opacity:1})        
        .to(".box_act", 1, {opacity:1})

        var motion2 = new TimelineMax({delay:3,repeat:-1})
        motion2.to(".top_visual .gradi", 1.5, {opacity:1, left:1042})
        
        var motion3 = new TimelineMax({delay:4,repeat:0})
        motion3
        .to(".box_act01", 1, {className:"+=on"})
        .to(".box_act02", 1, {className:"+=on"})
        .to(".box_act03", 1, {className:"+=on"})
        
	</script>


</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
