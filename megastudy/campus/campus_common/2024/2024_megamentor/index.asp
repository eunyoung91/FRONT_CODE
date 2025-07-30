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
<!-- intro���� css -->
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
.rolling_slide_wrap * {font-family:'Noto Sans KR', Apple Gothic, "����", Dotum, Verdana, sans-serif; box-sizing:border-box;}
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
                                    <li class="active" value="con01_01">����/�н� ����</li>
                                    <li value="con01_02">��� ������</li>
                                    <li value="con01_03">6�ܰ� Ŀ��ŧ��</li>
                                    <li value="con01_04">�н� ������</li>
                                    <li value="con01_05">���ǰ�� ������</li>
                                </ul>
                            </div>



                            <div class="rolling_right">
                                <div class="right_contents con01_01 active">
                                    <ul class="dot_list">
                                        <li>������ ���ο��� ������ �� �ֵ���, �л����� ������ ������ �� �ִ� ���� ������ ����</li>
                                        <li>���� �ð����� �ڱ��ֵ��н�, �������� ���� �ð��� Ȯ���Ͽ� ��ƴ���� ���� ����</li>
                                        <li>������ �� �Ϻ��ϰ� ������� �غ��� �� �ֵ��� �� Ȯ���ؾ� �ϴ� ���� ������ ����, �߰� �н��ڷ���� ����</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide01_img01.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con01_02">
                                    <ul class="dot_list">
                                        <li>�� 3ȸ ������� ������� �ٰ����� ���� ������ �򰡸� �ǽ��Ͽ� ������ ���� ����</li>
                                        <li>�е� ���� ���� ��ȹ�� �������� ���Ǹ� ���� �л����� ���� ���</li>
                                        <li>��Ȱ����/�Խô���/�а������� �оߺ� ���� ������ ������� ��Ȳ�� �´� �н������� �н�ȯ�� ����</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide01_img02.jpg" alt="" border="0" />
                                    </div>
                                </div>

                                <div class="right_contents con01_03">
                                    <ul class="dot_list">
                                        <li>����� �н� ���Ͽ� ����ȭ�� 6�ܰ� �н� Ŀ��ŧ��</li>
                                        <li>�ܼ��� ������������ ��ġ�� ���� �ƴ϶� 6/9�� ����, ���ɱ��� ���� ��� ���� �н� �ܰ踦 �߰� ���Ͽ� ���������� �Ϻ��ϰ� ���� �� �ֽ��ϴ�.</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_megamentor/rolling_slide01_img03.png" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con01_04">
                                    <ul class="dot_list">
                                        <li>ȿ������ ���� ������ ���� �н� ������ ����</li>
                                        <li>�ۼ��� �÷��ʸ� ������� �����Բ� ���� �޴� ���� �ǵ��, �н� ���� � ���� ��� ����</li>
                                    </ul>                             

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_megamentor/rolling_slide01_img04.png" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con01_05">
                                    <ul class="dot_list">
                                        <li>������, ������ ���� ���ɰ� ������ ���� �׽�Ʈ�� ���� ���� �ش�ȭ</li>
                                        <li>�����н����� ���� �������� �� �� ������ ��ġ�� �ʵ��� �� �ʿ��� ���ǰ�縸 ����</li>
                                        <li>������ ���� �������� �ֽ� ������� ö���� �м� �� ����</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_megamentor/rolling_slide01_img05.png" alt="" border="0" />                   
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="bray_bg_wrap">
                                        
                            
                            <p class="title">�н����� �л� �ı�</p>
                            
                            <!-- �հ��� �Ѹ� -->
                            <div class="scholarship_banner_wrap">
                            <ul class="scholarship_banner">                            
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            �������� �ٽ� �ϴ� ���ζ� �����ߴµ� ������ ������ �����鼭 
                                            <strong>�������� �׳� �ܿ�� �Ѿ�� ���뵵 �����ϰ� ���ݰ� �Ǿ�<br>���п� �ڽŰ��� ������ϴ�.</strong>
                                            6�� ���ǰ�� ������ ��Һ��� �������� �ӻ����� ���� ���� �Ⱓ ���� � ���� �ؾ� ���� ������<br> �ּż� ������ ���� �� �־����ϴ�.
                                        </p>
                                        <p class="stu_name">- ���� ��OO �л�</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            �������� �л����� �������� �ʰ� �о��� ������ �� �ֵ��� �����ֽø鼭, 
                                            <strong>�о������� �ùٸ� ���⼺�� �����Ͽ� ������ ��������<br>��Ȯ�ϰ� ���ݰ� ���ֽʴϴ�.</strong>
                                            ���� 9�� �򰡿��� ��ģ �� �����Կ� �Ѱ� �Դµ�, �������� �������� �������� ���� �ǰ��ϰ�<br>�ٶ����ϰ� ���� �� �ְ� �Ǿ����ϴ�. �����մϴ� ������!
                                        </p>
                                        <p class="stu_name">- ���� ��OO �л�</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            9�� ������ �� �������� ���� �н��� ���� �� ������ ���⼺�� ã�� ���� ����, 
                                            <strong>���� ����� ���� ���� ����� ȿ������ �ð� �й�</strong><br>���� �˷��ּż� Ÿ ������ ������ ���� ū ������ �Ǿ����ϴ�. 
                                            ���� ���� ���̹� ��忡 ���� ������ �ڷ���� �÷� �ּż�<br> <strong>���� ���</strong>�� ������ �Ǿ���, ��ǥ�� ��������� ���ϴ� �� 
                                            <strong>�л����� �ǰ��� �ݿ�</strong>�� �ּż� ���ҽ��ϴ�.
                                        </p>
                                        <p class="stu_name">- �뷮�� ��OO �л�</p>
                                    </div>
                                </li>                                
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            ó�� �п��� ���ͼ� �ڽ� �ð��� � ���θ� �ؾ� ���� ����� �� �����Բ��� �� ���⼺�� ��� �ּ̽��ϴ�. ���� 
                                            <strong>������ ������<br>���������� ���Ͻø� ������ ���� �л����� ���ظ� �����ֽʴϴ�.</strong> 
                                            ���������� ������ ������ �Ÿ��� ������ �ֽð� �л����� �����<br>�ذ��� �ֽô� ����� ���Ƽ� �������� ��õ�մϴ�.
                                        </p>
                                        <p class="stu_name">- �д� ��OO �л�</p>
                                    </div>
                                </li>                                
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            5�� ���ǰ�翡�� ��ü�� ������ �����ߴ� ���� ���� �����Բ� ��� ��û�� �Ͽ���, 
                                            ���� �����Բ����� �� �ϳ��� Ʋ�� ������<br>����ϰ� ������ �����̽��ϴ�. �� ������ ¤���ֽø鼭 
                                            <strong>�п��� ǳ���� �ڷ�� 1��1 �ý���</strong>�� ���� ������ �غ��ϱ� ���� �����<br>�˷��ּ̽��ϴ�. �̷��� �ڽŰ��� Ȯ���� �����ϴ� ���� 
                                            <strong>�ݷ��� ������ ��ü���� ���� ���</strong>�� �˷��ֽ� ���п�, 6�� �����򰡿���<br>��ǥ ������ ����� ������ ���� �� �־����ϴ�.
                                        </p>
                                        <p class="stu_name">- �ڿ��� ������ ��OO �л�</p>
                                    </div>
                                </li>
                            </ul>
                            <!-- //�հ��� �Ѹ� -->
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
                                    <li class="active" value="con02_01">�ް����͵� �Խ�����������</li>
                                    <li value="con02_02">�Խ� ����ȸ</li>
                                    <li value="con02_03">�Խ� ����</li>
                                    <li value="con02_04"><span class="teamplay_star">&#8727;</span> ��������</li>
                                </ul>
                            </div>

                            <div class="rolling_right">
                                <div class="right_contents con02_01 active">
                                    <ul class="dot_list">
                                        <li>�н����� �հݱ��� �ñ⺰ ���� ���� ����!</li>
                                        <li>���� �Խ��� ��� �� ��Ҹ� ������ �ް����͵��п����� �������� ������</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_megamentor/rolling_slide02_img01.png" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con02_02">
                                    <ul class="dot_list">
                                        <li>����, ����, 6/9�� ���� �м� �� �ñ⺰, �Խ� Ʈ���忡 ���� ����ȸ ����</li>
                                        <li>�ް����͵��п��� �Խ� ���Ͽ�� ������� �����͸� ������� �� �м����� ��Ȯ�� ���� ���� �� ��������� �Խÿ� ���� ��� �ذ�</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide02_img02.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con02_03">
                                    <ul class="dot_list">
                                        <li>�ٳⰣ ������ �����Ϳ� ü������ �м����� �ŷ� ���� �հ� ���ɼ� ����</li>
                                        <li>�л����� �������� ��ǥ ������ �հ��� ���� �ֿ� �ñ⺰ ���κ� ���� �н� ��� ����</li>
                                        <li>������� ���� ����, ��� ����, ��ǥ ���� ���� ö���ϰ� �����Ͽ�, ���ο��� ����ȭ�� ���� ����</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide02_img03.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con02_04">
                                    <ul class="dot_list">
                                        <li>��������� ��°� ������ ����� �����ϱ� ���� 2010����� ����Ǿ� �� �ް����͵��п����� ���� �ý���</li>
                                        <li>���� ������ ��ǥ�� �޼��� ����� �� ������ ���� ���޵Ǹ�, ������ ����ο��� �н� �ǿ� �ش�ȭ</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_megamentor/rolling_slide02_img04.png" alt="" border="0" />                   
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="bray_bg_wrap" style="background-color:#fff;">
                                        
                            
                            <p class="title">�Խø��� �л� �ı�</p>
                            
                            <!-- �հ��� �Ѹ� -->
                            <div class="scholarship_banner_wrap">
                            <ul class="scholarship_banner">                            
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            ���� ����� ������ �� ���� ���� ������ �л��ΰ� ���� �ָ��ؼ� ���� ������ ���� ����� �Ǵµ�, �����Բ��� 
                                            <strong>������ ���� ������<br>������ ���е��� ������ �Ĳ��ϰ� �˾ƺ� �ּż� �ʹ� �����߽��ϴ�.</strong>
                                            ���п� ���� ������ ���� ���� ���� ���� ���ο� �� ������ ��<br>�־����ϴ�. 
                                            ���� �׻� ���� �����⸦ �� ������ �ּż� ���� ���� �б� �ʺ��� �� �� ���� �����Ⱑ ��Ʈ���� ���� �������ϴ�.<br>������ �׻� �����մϴ�!!

                                        <p class="stu_name">- �뷮�� ��OO �л�</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            ���� ���ÿ� ���� ��� �غ��߱⿡ ���� 
                                            <strong>�Խ� ������</strong>�̳�, ���÷� ���� ���� ������ <strong>��Ȯ�� ���̵�, �԰�, ���� ���� ����</strong>�� ���� ������ �����ߴµ�,
                                            �Խ� ���� �����Բ��� �� �� �� �� ������ �ֽ� ���п� 
                                            <strong>����, ���� ��� ���� �������� ���ư� �� �־����ϴ�.</strong>
                                        </p>
                                        <p class="stu_name">- �ֻ����� ������ ��OO �л�</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            6�� ������� 9�� ��������� Ư�� ������ ��� �����ؾ� ���� ������ �ֽð�, ���ʽð����� �ɸ� ���� �������� ��Ż ������<br>���ּ̽��ϴ�. 
                                            ���� 9�� ���� ����� �������, <strong>����� �Խû��� ������ ���� ���� ������</strong>�� ã���ּ̽��ϴ�. �ش� �������� ����<br>���� �� �� �ִ� ������ ������ �ּż� ū ����ο��� �Ǿ���, 
                                            <strong>�̷��� ���� ������ ���� ������ ���� ��� ����</strong>�� ����� �ּż�<br>���ݱ��� ��Ȱ�ϰ� ������ ����ϸ� ���� ����� ���� �� �־����ϴ�.
                                            
                                        </p>
                                        <p class="stu_name">- �ڿ��� ������ ��OO �л�</p>
                                    </div>
                                </li>  
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            ���� ���������κ��� <strong>���� ���� �Խ� ����</strong>�� ������ ��Ȯ�ϰ� ���޹��� �� �־��� ������ ���ÿ� ���ø� �Բ� �غ��ؾ� �ϴ� ���忡�� Ư���� ���Ҵ� �� 
                                            �����ϴ�.
                                        </p>
                                        <p class="stu_name">- ���� ȲOO �л�</p>
                                    </div>
                                </li>                                
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            9�� ���� ���� ���� ���񿡼� ������ ���� �ݼ��� ���� �Բ� �м��� �ּż� ���� ���Ͽ� ū ������ �Ǿ����ϴ�. �����Ӹ� �ƴ϶�<br> 
                                            <strong>���� ��� ����</strong>���� ������ �ּż� �����ϰ� ������ �� �־����ϴ�.
                                            
                                        </p>
                                        <p class="stu_name">- ���� ��OO �л�</p>
                                    </div>
                                </li>
                            </ul>
                            <!-- //�հ��� �Ѹ� -->
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
                                    <li class="active" value="con03_01">�н��������� & �ɸ��ɾ�</li>
                                    <li value="con03_02">���� �޽� �ް�Ǫ��</li>
                                    <!-- <li value="con03_03">���̷��� û������</li> -->
                                    <li value="con03_04">���� ����</li>
                                    <li value="con03_05">�н�����</li>
                                </ul>
                            </div>

                            <div class="rolling_right">
                                <div class="right_contents con03_01 active">
                                    <ul class="dot_list">
                                        <li>���η� ���� �ް����͵��п����� ��ģ ������ ��縸��, ���� ����� �̷� �� �ֵ��� ����</li>
                                        <li>�л� �� �� �� ���� Ư���� �ľ��ϰ� �׿� ���� �ɸ������� ���� ���� ����</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide03_img01.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con03_02">
                                    <ul class="dot_list">
                                        <li>���� �⺻, ��������� �ǰ����� ����� ���� ������ �Ļ�<strong class="s_bold">���δ� ���! 1���-��</strong></li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide03_img02.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <!-- <div class="right_contents con03_03">
                                    <ul class="dot_list">
                                        <li>�л����� �ǰ��� ������ �ֿ켱���� �����ϸ� �ڷγ�19 ���� ��å�� ö���� ��õ<strong class="s_bold">�ް����͵��п��� ���� ���� �ǰ��մϴ�. ���̷��� û�������� ���ѳ��ڽ��ϴ�.</strong></li>
                                        
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide03_img03.jpg" alt="" border="0" />                   
                                    </div>
                                </div> -->

                                <div class="right_contents con03_04">
                                    <ul class="dot_list">
                                        <li>������ ȭ�� �� ���޻�Ȳ �� ���� ��Ұ� �� �� �ִ� ������ �׻� �����ϰ� ����� ������     �ֿ켱���� �����ϸ� ����</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide03_img04.jpg" alt="" border="0" />                   
                                    </div>
                                </div>

                                <div class="right_contents con03_05">
                                    <ul class="dot_list">
                                        <li>�̼����� ���� ���� ������ ������ �� �ֵ��� <strong class="s_bold">������� ���� Green Project! �н�����</strong></li>
                                        <li>�л����� �����ϴ� ���� ������ ������ �ǳ� ȯ�� ������ ���� ����û����, �����⸦ ��ġ�Ͽ�     ������ �н� ȯ�� ����</li>
                                    </ul>                            

                                    <div class="img_wrap mt50">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/rolling_slide03_img05.jpg" alt="" border="0" />                   
                                    </div>
                                </div>
                            </div>
                    </div>
                        
                        <div class="bray_bg_wrap">
                                        
                            
                            <p class="title">��Ȱ���� �л� �ı�</p>
                            
                            <!-- �հ��� �Ѹ� -->
                            <div class="scholarship_banner_wrap">
                            <ul class="scholarship_banner">                            
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            �������� ���� ����� ���ϱ⵵ ���� ���� ���� �ִ��� ���� ����� �ֽð�, 
                                            <strong>�л����� ����ǰ� ������, ���� ����</strong>�� ������ ������<br>����̽ô� ���Դϴ�.
                                            ���� ��� ���� ���̳� �͸����� ������ ���ֽô� ���� �ƴ϶�, 
                                            �ʿ��� ���� ��ȣ�� ����� ���Ҹ��� �ϱ���<br> �ֽñ� ������ ���� ū ������ �޾ҽ��ϴ�.

                                        </p>
                                        <p class="stu_name">- ���� ��OO �л�</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            ���迡�� ���� ū ������ <strong>'��Ż ����'�� '���� �й�'�� ��Ʈ��</strong>�� �� �ֵ���,
                                            ����� �ݷ��� ���Ӿ��� ���ֽ� ���п� ��� ���� �ڽŰ��� ���� �� �ִ� �������� �Ǿ����ϴ�.
                                        </p>
                                        <p class="stu_name">- ���� ��OO �л�</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            ���� �� ã�ư��� ���� �������� ���� �Ǿ� �ֽ� ������, �������� ������ ģ���ϰ� �����ֽ� ������, 
                                            �ʹ� ���� �Դ´ٰ� ������<br>�ֽô� �޽� ������, ������ ȯ�濡�� ������ �� �ֵ��� ������ �ֽô� û�� ����ڴԵ�, ���� 1���� ���ƺ��� �̷��� ���� �����Ե���<br>��̽��ϴ�.
                                            �Ҿ��ϰ� ����� ��� �;��� ������ �����Ե��� <strong>����� ������</strong>�� �Ǿ� �ּż� ����� �ܼ��� ���и��� ���ؼ��� �ƴ�,<br> 
                                            <strong>�� ���� ���� ��ǥ�� ���� �ð�</strong>�� �Ǿ����ϴ�.

                                        </p>
                                        <p class="stu_name">- ���� ��OO �л�</p>
                                    </div>
                                </li>                                
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            �����Ȱ �������� �ٴٸ��� �ٸ� ������� �� ��Ƽ�� �� ������, ���� �� ����� �������� �ڲٸ� ����ġ�� ���� ������ ������ϴ�.
                                            �׶����� ������ ���� ���ֽð� ����� �ϵ��� �ּż� �����մϴ�. �� �ڽ��� �Ǹ��������� ������ 
                                            <strong>�����Բ��� ������ֽ� ���п� �������� �ʰ� ������ �� �־����ϴ�.</strong>

                                        </p>
                                        <p class="stu_name">- ��õ ��OO �л�</p>
                                    </div>
                                </li>                           
                                <li>
                                    <div class="list_wrap">
                                        <p class="ver_r_sub_txt">
                                            ���� �������̾ �θ�Բ����� �� �Ӹ����� �� ǥ������ ���ϴ� ���ε�, 6�� ���� �� �� ������ �� �������� ���� ������ ȥ�� ����<br>������߽��ϴ�.
                                            �̷� ���� �ٽ� �������� ���� �����԰��� ����̾����ϴ�. "���� �� ������ �� �ȴ�. 
                                            �׷��� ���ϱ� ������ ����<br>������ �� ���ص� �ȴ�. ���� ���� ���� �ִ� �����̳� �������̸� ���� ���������ٴ� ���� �� ���̰�, �װ� ���ϰ� ���� ������ ������<br>��ٷ� �� ���̴�"��� 
                                            <strong>�������� ������ ��鼭 ����� ������ �� �� ���� ū ������ �Ǿ����ϴ�.</strong>   
                                            
                                        </p>
                                        <p class="stu_name">- �ڿ��� ������ ��OO �л�</p>
                                    </div>
                                </li>
                            </ul>
                            <!-- //�հ��� �Ѹ� -->
                            </div>
                        </div>

                    </div>
                        
                    <div class="img_wrap mt100 taC">
                        <img src="<%=Application("img_path")%>/library/campus_common/2020_megamentor/con03_title02.png" alt="" border="0" />                   
                    </div>
                    
                    <!-- �հ��� �Ѹ� -->
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
                    <!-- //�հ��� �Ѹ� -->
                    
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
                                    <span>����<br>����</span> 
                                </div>
                                <p class="title"><span><strong>���� ���</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
										<p>
                                            <span class="sub_txt">����</span>031-326-5000
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://seochob.megastudy.net/yangjim/main.asp" target="_blank">
                                <div class="flag ver01">
                                    <span>����<br>����</span>
                                </div>
                                
								<p class="title"><span><strong>���� ���</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>031-797-9332
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://ansung.megastudy.net/ansung/main.asp" target="_blank">
                                <div class="flag ver01">
                                    <span>�ű� ����</span>
                                </div>
                                <p class="title"><span><strong>�ȼ� ���</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
										<p>
                                            <span class="sub_txt">����</span>031-8004-1010
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            
                        </ul> -->
						
						<ul class="mt50">
                            <li><a href="https://gangnam.megastudy.net/gangnam/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>����<br>����</span>
                                </div> -->
								<p class="title"><span><strong>����</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>02-568-3800
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://seocho.megastudy.net/seocho/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>����<br>����</span>
                                </div> -->
                                
								<p class="title"><span><strong>����</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>02-535-5678
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://gangbuk.megastudy.net/gangbuk/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>����<br>����</span>
                                </div> -->
                                <p class="title"><span><strong>����</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>02-935-3378
                                        </p>
                                    </div>
                                </div>
                            </a></li>
							<li><a href="https://noryangjin.megastudy.net/noryangjin/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>����<br>����</span>
                                </div> -->
                                <p class="title"><span><strong>�뷮��</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>02-826-1555
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            
                        </ul>
						<ul>
                            <li><a href="https://sinchon.megastudy.net/sinchon/main.asp" target="_blank">
                                <!--
                                <div class="flag ver01">
                                    <span>����<br>�ӹ�</span>
                                </div>-->
                                <p class="title"><span><strong>����</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>02-3144-1010
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://songpa.megastudy.net/songpa/nsu/main.asp" target="_blank">
                                <!--<div class="flag ver01 new">
                                    
                                </div>-->
                                <!-- <div class="flag ver01">
                                    <span>����<br>����</span>
                                </div> -->
                                <p class="title"><span><strong>����</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>02-428-8181
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://bucheon.megastudy.net/bucheon/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>����<br>����</span>
                                </div> -->
                                <p class="title"><span><strong>��õ</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>032-326-9900
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://bundang.megastudy.net/bundang/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>����<br>����</span>
                                </div> -->
                                
								<p class="title"><span><strong>�д�</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>031-781-3100
                                        </p>
                                    </div>
                                </div>
                            </a></li>
							
                        </ul>
                        <ul>
							<li><a href="https://ilsan.megastudy.net/ilsan/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>����<br>����</span>
                                </div> -->
                                <p class="title"><span><strong>�ϻ�</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>031-8073-9600
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li><a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/main.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>����<br>����</span>
                                </div> -->
                                <p class="title"><span><strong>����</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">����</span>031-388-3141
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
