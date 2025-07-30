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
@import url(animate.min.css);

#div_cont {width:100%; text-align:center; clear:both; position:relative; 	overflow:hidden; font-family:"MalGun Gothic"; font-size:16px; letter-spacing:-0.5px; line-height:20px; color:#333;}
    
#div_cont .con {width:1000px; margin:0 auto; position:relative;	z-index:1;}
#div_cont .top_bg {height:1175px; overflow:hidden;}
.div_con .line_wrap {display:inline-block; padding:0 4px 3px; position:relative;}
.div_con .line_wrap img {position:relative; z-index:1;}
.div_con .line_wrap:after {content:''; display:block; width:0%; height:23px; background:#ffd7e4; z-index:0; position:absolute; bottom:0; left:50%; transition:all 0.7s; transition-delay: 0.5s; opacity:0.8;}
.div_con .animation_set .line_wrap:after {width:100%; left:0;}
#div_full {background:#230a44;}

.top_wrap {width:100%; height:1653px; margin:0 auto;  position:absolute; z-index:3; top:0; text-align:center; background:#240a45 url('<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/top_bg.jpg') center top no-repeat;overflow:hidden;}    
/* 동영상 비게시 */
/* .top_wrap {width:100%; height:1053px; margin:0 auto;  position:absolute; z-index:3; top:0; text-align:center; background:#240a45 url('<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/top_bg.jpg') center top no-repeat;overflow:hidden;}     */

.top_wrap .act_wrap {position:absolute; width:100%; z-index:10;}
.top_wrap .act_wrap {position:relative; width:1000px; margin:0 auto;}

.top_wrap .act_wrap .txt {z-index:1; position:absolute; opacity:0;}
.top_wrap .act_wrap .act01 {left:170px; top:205px;}
.top_wrap .act_wrap .act02 {left:200px; top:306px;}
.top_wrap .act_wrap .act03 {left:153px; top:582px; transform:scale(2); z-index:4;}

/* 
.top_wrap .act_wrap .act05 {left:-100px; top:385px; z-index:2;}
.top_wrap .act_wrap .act06 {right:-100px; top:385px; z-index:2;} */
.top_wrap .act_wrap .act07 {left:-47px; top:298px; z-index:6;}

.top_wrap .act_wrap .act08 {left:-1000px; top:318px; z-index:5;}
.top_wrap .act_wrap .act09 {left:1104px; top:190px; opacity:1; z-index:1;}

    
.quick {
	width: 100px;
	position: fixed;
	top: 310px;
	left: 50%;
	margin-left: 523px;
	z-index: 999;
}
.quick img {
	opacity: 1;
}

.div_con {
    
    position:relative;
    z-index:1;
}

.div_con1 {
    position:relative;
    background:#fff;
}
.div_con1:after {content:''; display:block; clear:both;}
.div_con1 .bal_wrap {position:relative; width:1000px; margin:0 auto;}
.div_con1 .bal_wrap img {margin-left:-205px;}

.div_con2 {
    position: relative;
    background:#fff;
    overflow: hidden;
    padding-bottom:100px;
}
.div_con2 .con {position:relative; width:1000px; margin:0px auto;}
.bot_guide{text-align: center;margin-top: 30px;font-size: 14px;line-height: 1.5em;color: #888888;letter-spacing: 0px;font-family: 'Noto Sans KR';}


.div_con3 {
	position: relative;
	overflow: hidden;
    padding-bottom:100px;
    background:#eeeef6;
}
.div_con3 ul {width:1000px; margin:0 auto;}    
.div_con3 ul li {float:left;}    
.div_con3 ul li + li {margin-left:12px;}
.div_con4 {
	background:#29104c;
	position: relative;
	overflow: hidden;
	padding: 0px 0 100px;
}
.div_con4 .title_wrap {text-align:center; padding-bottom:30px;}
.div_con4 .con {width:1030px !important;  margin:0 auto; position:relative;}

.div_con4 ul {
    overflow: hidden;
    margin: 0 auto;
    position: relative;
    padding:15px 0 15px 0;
	text-align:center;
    margin-top:55px;

}
.div_con4 ul + ul {margin-top:5px;}
.div_con4 ul li {
    display:inline-block;
	width:230px;
    height:186px;
	margin:0 10px;
    font-family: 'Noto Sans KR';
    letter-spacing: -0.5px;
    border-radius: 5px;
	text-align: center;
    
    /* -webkit-box-shadow: 2px 11px 17px -5px #d0d0d0; -moz-box-shadow: 2px 11px 17px -5px #d0d0d0; box-shadow: 2px 11px 17px -5px #d0d0d0; */
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    background:#fff;
    border:1px solid #441e8b;

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
    width: 82%;
    margin:0 auto;
    background: url('<%=Application("img_path")%>/library/campus_common/2022_winter/dot_line.png') center bottom repeat-x;
    border-bottom:none;
    margin-top:30px;
    padding-bottom:15px;
}
.div_con4 ul li .title.sc_title{width:86% !important;}
.div_con4 ul li .title strong {
    font-weight:700;
}
.div_con4 ul li .title span {
    font-size:25px;
	line-height:52px;
    font-weight:400;
    padding-right:20px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2020_half/bullet_arrow.png') right 50% no-repeat;
	letter-spacing:-1.5px;
}
.div_con4 ul li .title.sc_title span{padding-right:18px !important;}
.div_con4 ul li .flag {
    position:absolute;
    top:0px;
    right:0px;
    background: url('<%=Application("img_path")%>/library/campus_common/2021_half_gate/new_flag.png') 0 0 no-repeat;
    width:69px;
    height:36px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 ul li .flag.new {
    position:absolute;
    top:0px;
    right:0px;
    background: url('<%=Application("img_path")%>/library/campus_common/2021_nsufirst/new_flag.png') center top no-repeat;
    width:69px;
    height:36px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 ul li .flag span {
	color:#fff;
	font-size:15px;
	font-weight:700;
	margin-top:6px;
	display:block;

}
/* .div_con4 ul li .flag.ver01 {
    position:absolute;
    top:10px;
    right:-7px;
    background: url('<%=Application("img_path")%>/library/campus_common/2021_half_gate/end_flag.png') 0 0 no-repeat;
    width:46px;
    height:54px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 ul li .flag.ver01 span {
    margin-top:3px;
} */

.div_con4 ul li .flag.ver01 {
    position:absolute;
    top:-10px;
    left:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/open_flag.png') 0 0 no-repeat;
    width:76px;
    height:37px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 ul li .flag.ver01 span {
    margin-top:3px;
}

.div_con4 ul li .flag.ver02 {
    position:absolute;
    top:10px;
    right:-7px;
    background: url('<%=Application("img_path")%>/library/campus_common/2021_half_gate/end_flag.png') 0 0 no-repeat;
    width:46px;
    height:54px;
    display:inline-block;
    vertical-align:middle;
	line-height:1.3em;
	font-size:14px;
}
.div_con4 ul li .flag.ver02 span {
    margin-top:3px;
}

.div_con4 ul li .info_wrap {
	display:table;
	width:100%;
	height:75px;
}
.div_con4 ul.wide_li li .info_wrap{height:85px;}
.div_con4 ul li .info_wrap .info {
	display:table-cell;
	vertical-align:middle;
    position:relative;
}
.div_con4 ul.wide_li li .info_wrap .info{padding-left:0;}
.div_con4 ul li .info_wrap p {
	font-size:25px;
	color:#531589;
	font-weight:bold;
	font-family:'Noto Sans KR', 'Montserrat';
    
    font-family: 'Gotham';
}
.div_con4 ul.wide_li li .info_wrap p{display:inline-block;margin-bottom:0;font-size:21px;}
.div_con4 ul.wide_li li .info_wrap p + p{margin-left:30px;}
.div_con4 ul li .info_wrap .sub_txt {
	width:70px;
	height:22px;
	line-height:20px;
	border-radius:15px;
	font-size:14px;
	color:#fff;
	display:inline-block;
	text-align:center;
	background:#561593;
    background: linear-gradient(135deg, #c2909b 1%, #561593);
	font-family: 'Noto Sans KR';
	font-weight:400;
    vertical-align:middle;
    position:absolute;
    top:-10px;
    left:50%;
    margin-left:-35px;
}
.div_con4 ul.wide_li li .info_wrap .sub_txt{width:56px;height:23px;font-size:15px;line-height:23px;border-radius:12px;}
.div_con4 ul li.off a {cursor:default;}
.div_con4 .tit_sub{padding-top:70px;text-align:center;}
    
.div_con5{
    position: relative;
	overflow: hidden;
    padding-bottom:100px;
    background:#fff;
} 

.div_con5 ul{
    width:1100px;
    overflow: hidden;
    margin: 0 auto;
    position: relative;
	text-align:center;
    padding-bottom:40px;
}
.div_con5 li{width:326px;height:334px;position:relative;float:left;margin-bottom:15px;margin-left:20px;margin-top:20px;}
.div_con5 li:nth-child(1),
.div_con5 li:nth-child(4) {margin-left:30px;}
.div_con5 li .yellow07{transform:scale(1.5);width:326px;height:334px;opacity:0;}

.box_act {position:relative; width:1000px; margin:60px auto 0;}
.box_act:after {clear:both; content:''; display:block;}
.box_act li {position:relative;z-index:3;-webkit-transition:all 0.5s ease-in-out;transition:all 0.5s ease-in-out;opacity:1; display:inline-block; float:left;}
.box_act li + li {margin-left:5px;margin-bottom:10px;}
.box_act li:nth-child(4) {margin-left:0;}
.box_act li:nth-child(7) {margin-left:0;}
.box_act li img {opacity:1 !important;}
.box_act li img.f{}
.box_act li img.back{position:absolute; left:0; top:0;}

.box_act li .flipper{width:325px;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;position:relative; display:inline-block;}
.box_act .front, .box_act .back{backface-visibility:hidden;-webkit-backface-visibility:hidden;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;text-indent:-1000em;}
.box_act .back{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);}
.box_act .front{z-index:2;transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.box_act li.on .back, .box_act li.on .back{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.box_act li.on .front, .box_act li.on .front{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);display:none\9;}
.motion .box_act li{opacity:1;}

.box_act.Xver li + li {margin-left:12px;}
.box_act.Xver .back{transform:rotateX(180deg);-webkit-transform:rotateX(180deg);}
.box_act.Xver .front{z-index:2;transform:rotateX(0deg);-webkit-transform:rotateX(0deg);}
.box_act.Xver li.on .back, .box_act.Xver li.on .back{transform:rotateX(0deg);-webkit-transform:rotateX(0deg);}
.box_act.Xver li.on .front, .box_act.Xver li.on .front{transform:rotateX(180deg);-webkit-transform:rotateX(180deg);display:none\9;}


.fix_bottom_wrap {background:#000; position:fixed; bottom:0; left:0; width:100%; height:125px; z-index:10;}
    .fix_bottom_area {width:1000px; margin:0 auto; overflow:hidden; padding-top:20px;}
    .fix_bottom_area ul {display:inline-block; overflow:hidden;}
    .fix_bottom_area ul li {display:inline-block; float:left; width:111px; text-align:center; border:1px solid #555;}
    .fix_bottom_area ul li a {font-size:16px; color:#e5e5e5; font-weight:500; line-height:50px; position:relative; display:block;}
    /*
    .fix_bottom_area ul li a:after {content:''; display:block; width:0%; height:1px; background:#39f8fa; z-index:0; position:absolute; bottom:0; left:50%; z-index:0; transition:all 0.3s;}
     .fix_bottom_area ul li:hover a:after {width:102%; left:-1%;}
    .fix_bottom_area ul li a em {position:relative; z-index:1;}
    */
    .fix_bottom_area ul li:hover {border-color:#f7c582;}
    .fix_bottom_area ul li:hover a em {color:#f7c582;}
   
    .fix_bottom_area ul li + li {margin-left:12.5px;}
    .fix_bottom_area ul + ul {margin-left:68px;}
    .fix_bottom_area ul.large {width:100%;}
    .fix_bottom_area ul li:nth-child(1) {width:111px;}
    .fix_bottom_area ul.small {width:175px;}
    .fix_bottom_area ul.small li {display:block; width:100%;}
    .fix_bottom_area ul p.title {width:100%; height:45px; line-height:45px; color:#fff; background:#0a1d67; font-weight:bold; font-size:22px; text-align:center; border-radius:5px; margin-bottom:15px;}
    .fix_bottom_wrap.inner {position:absolute; top:-825px; z-index:1; width:1000px; height:120px; left:50%; margin-left:-500px;}
    /* 동영상 비게시로 top 높이 변경 */
    /* .fix_bottom_wrap.inner {position:absolute; top:-225px; z-index:1; width:1000px; height:115px; left:50%; margin-left:-500px;} */
    
    
    .fix_bottom_wrap.inner ul.large {margin:0 20px;}
    .fix_bottom_wrap.inner ul li {width:107px;}
    .fix_bottom_wrap.inner ul li a {font-size:16px;line-height:50px;}   
    .fix_bottom_area ul li:nth-child(1) a, 
    .fix_bottom_area ul li:nth-child(2) a {line-height:21px;padding:4px 0;}
    .fix_bottom_wrap.inner ul li + li {margin-left:12.5px;} 
    .fix_bottom_wrap.inner .fz14 {margin-right:20px;}

    .fix_bottom_wrap.scroll {opacity:0;}

.animation_element.animation_set {
    opacity: 1 !important;
}
    

.bot_guide{text-align: center;margin-top: 30px;font-size: 14px;line-height: 1.5em;color: #888888;letter-spacing: 0px;font-family: 'Noto Sans KR';}

.quick {
    width: 100px;
    position: fixed;
    top: 310px;
    left: 50%;
    margin-left: 523px;
    z-index: 999;
}
.quick img {
    opacity: 1;
}

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

            
            //console.log(l_id, l_link)

            $(".fix_" + l_id).attr("href", l_link);
            $(".fix_" + l_id).attr("target", l_target);            
            

        });

        var fix_txt = $('.scroll .fix_bottom_area').html();
        $('.inner .fix_bottom_area').html(fix_txt);
        
    }

    

    /* motion scroll */
    function ani_scr() {
		var winH = $(window).height();
		var scrT = $(window).scrollTop();
		var view_pos = winH + scrT
	
		$(".animation_element").each(function () {
			var elementH = $(this).outerHeight();
			var elementT = $(this).offset().top;
			var elementP = (elementT + elementH + 200);
	
			if ((elementP <= view_pos)) {
				$(this).addClass("animation_set");
			}
		});
    }

    /* Scroll */
	function parallaxScroll(){
        
		var scrolled = $(window).scrollTop();
        
		if(scrolled > $("#div_con02").offset().top - 150) {
            
            var motion6 = new TimelineMax({delay:0,repeat:0})
            motion6.to("#div_con02 .box_act01", 0.5, {className:"+=on"})
                   .to("#div_con02 .box_act02", 0.5, {className:"+=on"})
                   .to("#div_con02 .box_act03", 0.5, {className:"+=on"})
                   .to("#div_con02 .box_act04", 0.5, {className:"+=on"})
                   .to("#div_con02 .box_act05", 0.5, {className:"+=on"})
                   .to("#div_con02 .box_act06", 0.5, {className:"+=on"});
        }

        if(scrolled > $("#div_con03").offset().top - 150) {
                    
            $("#div_con03 .list_box li").addClass('animate__animated');
            $("#div_con03 .list_box li.list01").addClass('animate__slideInUp animate__fadeIn');
            $("#div_con03 .list_box li.list02").addClass('animate__slideInDown animate__fadeIn');
            $("#div_con03 .list_box li.list03").addClass('animate__slideInUp animate__fadeIn');
            
        }

        if(scrolled > $("#div_con04").offset().top - 150) {
                     
            $("#div_con04 .list_box li").addClass('animate__animated');
            $("#div_con04 .list_box li.list01").addClass('animate__slideInDown animate__fadeIn');
            $("#div_con04 .list_box li.list02").addClass('animate__slideInUp animate__fadeIn');
            $("#div_con04 .list_box li.list03").addClass('animate__slideInDown animate__fadeIn');
            
        }

        if(scrolled > $(".div_con1").offset().top && scrolled < $(".div_con4").offset().top-500 ) {
            
            var motion7 = new TimelineMax({delay:0,repeat:0})
            motion7.to(".fix_bottom_wrap.scroll", 0.5, {opacity:1});
        }
        
        if(scrolled > $(".div_con4").offset().top-500 || scrolled < $(".div_con1").offset().top) {
            
            var motion7 = new TimelineMax({delay:0,repeat:0})
            motion7.to(".fix_bottom_wrap.scroll", 0.5, {opacity:0});
        }

        if(scrolled > $("#div_con05").offset().top - 150 ) {
            
            var motion7 = new TimelineMax({delay:0.5,repeat:0})
	        motion7.to(".yellow07._01", 0.5, {opacity:1,transform:"scale(1)", ease:Elastic.easeOut.config(0.9,0.3)})
                   .to(".yellow07._02", 0.7, {opacity:1,transform:"scale(1)", ease:Elastic.easeOut.config(0.9,0.3)})
                   .to(".yellow07._03", 0.7, {opacity:1,transform:"scale(1)", ease:Elastic.easeOut.config(0.9,0.3)})
                   .to(".yellow07._04", 0.7, {opacity:1,transform:"scale(1)", ease:Elastic.easeOut.config(0.9,0.3)})
                   .to(".yellow07._05", 0.7, {opacity:1,transform:"scale(1)", ease:Elastic.easeOut.config(0.9,0.3)})
                   .to(".yellow07._06", 0.7, {opacity:1,transform:"scale(1)", ease:Elastic.easeOut.config(0.9,0.3)});
        }
	}
        
    function cam_list_act() {

        $(".cam_list").each(function () {
            
            var idx = $(this).attr("id");
            //alert($(this).find("a").attr("href"))
            
            
            
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
      
    	<ul class="quick">
            <%If CDbl(GetNowDate()) < CDbl("2022"&"1231"&"160000") Then%> <!--2022-12-30 퍼플반 설명회 배너 타이머 설정 / 최민석-->
                <li><a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=21937" target="_blank"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/quick_btn.png" alt="퍼플반 설명회"></a></li>
                <li><a href="#div_full"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/btn_quick_top.png" alt="top으로 이동"></a></li>
            <%End If%>
        </ul>

        <script>
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
        </script>

        <div id="div_cont">
            <div id="div_full" class="div_con" style="height:1653px;">
                <div class="top_wrap">
                     
                    <div class="act_wrap">
                        <img class="txt act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/top_txt01.png" alt="" />
                        <img class="txt act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/top_txt02.png" alt="" />
                        <img class="txt act03" style="width:686px;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/top_txt03.png" alt="" />


                        <div style="position:absolute; top:238px; left:33px; width:900px; height:568px; overflow:hidden;">
                            <img class="txt act07" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/top_cover.png" alt="" />
                            <img class="txt act08" src="<%=Application("img_path")%>/library/campus_common/2023/2023_purple_gate/top_light.png" alt="" /> 
                        </div>
                    </div>

                    

                    <iframe src="https://tv.naver.com/embed/32089007?autoPlay=true"   style="position:absolute; bottom:100px; left:50%; margin-left:-500px;" frameborder="no" scrolling="no" marginwidth="0" marginheight="0" WIDTH="1000" HEIGHT="561" allow="autoplay" allowfullscreen></iframe>
                </div>
            </div>

            

            <div class="fix_bottom_wrap scroll">
                <div class="fix_bottom_area">
                    <ul class="large">
                        <li><a class="fix_C03" href="" target=""><em>강남<br>팀플전문관</em></a></li>
                        <li><a class="fix_C13" href="" target=""><em>서초<br>의약학전문관</em></a></li>
                        <!--<li><a class="fix_C04" href="" target=""><em>노량진</em></a></li>-->
                        <li><a class="fix_C05" href="" target=""><em>신촌</em></a></li>
                        <li><a class="fix_C06" href="" target=""><em>송파</em></a></li>
                        <li><a class="fix_C07" href="" target=""><em>부천</em></a></li>
                        <li><a class="fix_C08" href="" target=""><em>분당</em></a></li>
                        <li><a class="fix_C09" href="" target=""><em>일산</em></a></li>
                        <li><a class="fix_C10" href="" target=""><em>평촌</em></a></li>
                    </ul>
                    <p class="fz14 mt10 taR" style="color:#888;">※ 학원별 모집 과정과 운영 프로그램은 상이할 수 있습니다.</p>
                </div>
            </div>

            <div class="div_con">

                <div class="div_con1"  style="background:#181123 url('<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con01_bg01.jpg') 50% top no-repeat; height:1109px; padding-top:100px;">
                    

                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area">
                            
                        </div>
                    </div>


                	<div class="taC animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con01_title01.png" alt="" /></div>
                    <style>
                        .circle {position:absolute;}
                        .circle.circle01 {top:148px; left:43px;}
                        .circle.circle02 {top:330px; left:180px;}
                        .circle.circle03 {top:413px; left:400px;}
                        .circle.circle04 {top:330px; left:620px;}
                        .circle.circle05 {top:148px; left:750px;}
                    </style>
                    <div style="position:relative; width:1000px; height:650px; margin:0 auto;">
                        <img class="animation_element delay350 circle circle01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con01_img01_01.png" alt="" />
                        <img class="animation_element delay250 circle circle02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con01_img01_02.png" alt="" />
                        <img class="animation_element delay150 circle circle03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con01_img01_03.png" alt="" />
                        <img class="animation_element delay250 circle circle04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con01_img01_04.png" alt="" />
                        <img class="animation_element delay350 circle circle05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con01_img01_05.png" alt="" />

                    </div>

                    <div class="taC animation_element b_to_t mt65"><img style="margin-left:10px;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con01_img02.png" alt="" /></div>
                    
                   
                </div>

                <div id="div_con02">
                    <div style="overflow:hidden;padding-bottom:100px; position:relative;">
                        
                        <div style="position:relative; z-index:1;" class="mt100 taC animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_title01.png" alt="" /></div>
                        
                        <ul class="box_act mt80">
                            <li class="box_act01">
                                <div class="flipper">                                
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img01.png" alt="" class="front">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img01.png" alt="" class="back">
                                </div>
                            </li>
                            <li class="box_act02">
                                <div class="flipper">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img02.png" alt="" class="front">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img02.png" alt="" class="back">
                                </div>
                            </li>
                            <li class="box_act03">
                                <div class="flipper">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img03.png" alt="" class="front">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img03.png" alt="" class="back">
                                </div>
                            </li>
                            <li class="box_act04">
                                <div class="flipper">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img04.png" alt="" class="front">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img04.png" alt="" class="back">
                                </div>
                            </li>
                            <li class="box_act05">
                                <div class="flipper">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img05.png" alt="" class="front">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img05.png" alt="" class="back">
                                </div>
                            </li>
                            <li class="box_act06">
                                <div class="flipper">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img06.png" alt="" class="front">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con02_img06.png" alt="" class="back">
                                </div>
                            </li>
                        </ul>

                        <div style="width:1700px; background:#fff; position:absolute; height:300px; top:0; left:50%; margin-left:-850px;"></div>
                    </div>
                </div>

                <div>
                 
                    <div style="position:relative; padding-bottom:100px;"> 
                        <!-- con05 -->
                        <div id="div_con03">
                            <div class="inner taC" style="padding-top:100px;">
                                <div class="img_wrap animation_element b_to_t taC" style="z-index:1; position:relative;"> 
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_title01.png" alt="" />
                                </div>
                                <div class="img_wrap animation_element b_to_t taC mt100" style="z-index:1; position:relative;"> 
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_title01_01.png" alt="" />
                                </div>

                                <ul class="list_box mt50">
                                    <li class="list01"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_img01.png" alt=""></li>
                                    <li class="list02"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_img02.png" alt=""></li>
                                    <li class="list03"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_img03.png" alt=""></li>
                                </ul>
                                <!--   
                                <ul class="box_act mt70">
                                    <li class="box_act01">
                                        <div class="flipper">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_purple_gate/con03_img01.png" alt="" class="front">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_purple_gate/con03_img01.png" alt="" class="back">
                                        </div>
                                    </li>
                                    <li class="box_act02">
                                        <div class="flipper">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_purple_gate/con03_img02.png" alt="" class="front">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_purple_gate/con03_img02.png" alt="" class="back">
                                        </div>
                                    </li>
                                    <li class="box_act03">
                                        <div class="flipper">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_purple_gate/con03_img03.png" alt="" class="front">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2023/2023_purple_gate/con03_img03.png" alt="" class="back">
                                        </div>
                                    </li>
                                </ul>
                                -->

                            </div>
                        </div>
                        <!-- con05 -->

                        <div class="taC mt50">
                            <a href="https://campus.megastudy.net/campus_common/2023/2023_megamentor/index.asp" target="_blank" style="z-index:1; position:relative;"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_btn01.png" alt="" /></a>
                        </div>

                        <div class="img_wrap animation_element b_to_t taC mt100" style="z-index:1; position:relative;"> 
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_title01_02.png" alt="" />
                        </div>

                        
                        <div class="list_box mt50" style="width:1200px;left:5%;">
                            <li class="animation_element b_to_t delay150"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_img04.png" alt=""></li>
                            <li class="animation_element b_to_t delay250"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_img05.png" alt=""></li>
                            <li class="animation_element b_to_t delay350"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_img06.png" alt=""></li>
                            <li class="animation_element b_to_t delay450"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con03_img07.png" alt=""></li>
                        </div>

                        <div style="width:100%; height:2078px; position:absolute; top:0; left:0%; margin-left:0px; background:#29104c;"></div>
                    </div>
                </div>
                
                <div class="div_con2 graph_con">
                    <div class="mt100 taC animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con04_title01.png" alt="" /></div>
                    
                    <div class="taC" style="margin-top:-10px; position:relative;">
                        <a href="https://campus.megastudy.net/campus_common/2023/2023_map/index.asp" style="position:absolute; width:484px; height:310px; left:50%; top:260px; margin-left:-246px;" target="_blank"></a>
                        <img style="margin-left:63px;margin-top:20px;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con04_img01.png" alt="" />
                    </div>
                </div>
                
                <div id="div_con04" class="div_con3">     
                    
                    <div class="mt100 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con05_title01.png" alt="" /></div>
                    <style>
                        #div_con03 .inner:after {clear:both; content:''; display:block;}
                        .list_box {position:relative; z-index:1; margin:0 auto; width:1000px;}
                        .list_box:after {display:block; clear:both; content:'';}
                        .list_box li {display:inline-block; float:left; opacity:0; transition:all 0.5s;}
                        .list_box li.animate__animated {opacity:1; }
                        .list_box li + li {margin-left:20px;}
                    </style>
                    <ul class="list_box mt80">
                        <li class="list01"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con05_img01.png" alt=""></li>
                        <li class="list02"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con05_img02.png" alt=""></li>
                        <li class="list03"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con05_img03.png" alt=""></li>
                    </ul>
                </div>

                <div id="div_con05" class="div_con5" style="position:relative;">
                    <div class="mt100 animation_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con07_title01.png" alt="" />
                    </div>

                
                    <ul class="mt60" style="left:1%;">
                        <li>                    
                            <img class="yellow07 _01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con07_img01.png" alt="" /> 
                        </li>
                        <li>                    
                            <img class="yellow07 _02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con07_img02.png" alt="" /> 
                        </li>
                        <li>                    
                            <img class="yellow07 _03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con07_img03.png" alt="" /> 
                        </li>
                        <li>                    
                            <img class="yellow07 _04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con07_img04.png" alt="" /> 
                        </li>
                        <li>                    
                            <img class="yellow07 _05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con07_img05.png" alt="" /> 
                        </li>
                        <li>                    
                            <img class="yellow07 _06" src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con07_img06.png" alt="" /> 
                        </li>
                        
                        <p class="mt40 taR fz16" style="position:absolute;bottom:0px;right:70px;color:#888;">※ 2023 퍼플반 수강생 대상 만족도 조사 中 수강평 발췌</p>

                    </ul>
                    

                </div>
                

				<div class="div_con4" id="link">
                    
                    <div class=" mt100 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_purple_gate/con06_title01.png" alt="" /></div>
                    <div class="con taC"> 
                        <ul>   
                            <li id="C03" class="cam_list"><a href="https://gangnam.megastudy.net/gangnam/nsu/nsu/2024/2024_purple/purple_01.asp" target="_blank">
                                <!-- <div class="flag">
                                    <span>확장 이전</span>
                                </div> -->
                                
								<p class="title"><span><strong>강남</strong> 팀플전문관</span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <span class="sub_txt">문의</span>
                                        <p>
                                            02-568-3800
                                        </p>
                                    </div>
                                </div>
                            </a></li>

                            <li id="C13" class="cam_list"><a href="https://seocho.megastudy.net/seocho/nsu/nsu/2024/2024_purple/purple_01.asp" target="_blank">
                                <!-- <div class="flag">
                                    <span>확장 이전</span>
                                </div> -->
                                
								<p class="title sc_title"><span ><strong>서초</strong> 의약학전문관</span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <span class="sub_txt">문의</span>
                                        <p>
                                            02-535-5678
                                        </p>
                                    </div>
                                </div>
                            </a></li>

                            <li id="C05" class="cam_list"><a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2024/2024_purple/purple_01.asp" target="_blank">
                                <div class="flag ver01">
                                    <span>대기접수</span>
                                </div>
                                <p class="title"><span><strong>신촌</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <span class="sub_txt">문의</span>
                                        <p>
                                            02-3144-1010
                                        </p>
                                    </div>
                                </div>
                            </a></li>

                            
							<!--<li id="C04" class="cam_list"><a href="javascript:alert('추후 오픈 예정입니다.');">
                                
                                <p class="title"><span><strong>노량진</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <span class="sub_txt">문의</span>
                                        <p>
                                            02-826-1555
                                        </p>
                                    </div>
                                </div>
                            </a></li>-->
							<li id="C06" class="cam_list">

								<a href="https://songpa.megastudy.net/songpa/nsu/nsu/2024/2024_purple/purple_01.asp" target="_blank">
                                <!-- <div class="flag ver02">
                                    <span>대기<br>접수</span>
                                </div> -->
                                <p class="title"><span><strong>송파</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <span class="sub_txt">문의</span>
                                        <p>
                                            02-428-8181                                        
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                        </ul>
						
						<ul>
                            <li id="C07" class="cam_list"><a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2024/2024_purple/purple_01.asp" target="_blank">
                                <!--
                                <div class="flag ver01">
                                    <span>마감임박</span>
                                </div>-->
                                <p class="title"><span><strong>부천</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <span class="sub_txt">문의</span>
                                        <p>
                                            032-326-9900
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li id="C08" class="cam_list"><a href="https://bundang.megastudy.net/bundang/nsu/nsu/2024/2024_purple/purple_01.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>전반마감</span>
                                </div> -->
								<p class="title"><span><strong>분당</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <span class="sub_txt">문의</span>
                                        <p>
                                            031-781-3100
                                        </p>
                                    </div>
                                </div>
                            </a></li>
							<li id="C09" class="cam_list">
								<a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2024/2024_purple/purple_01.asp" target="_blank">
									<!--
									<div class="flag ver01">
										<span>마감임박</span>
									</div>-->
									<p class="title"><span><strong>일산</strong></span></p>
									<div class="info_wrap">
										<div class="info">
											<span class="sub_txt">문의</span>
                                            <p>
												031-8073-9600
											</p>
										</div>
									</div>
								</a>
							</li>
							<li id="C10" class="cam_list">
								<a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2024/2024_purple/purple_01.asp" target="_blank">
									<!-- <div class="flag ver01">
										<span>전반마감</span>
									</div> -->
									<p class="title"><span><strong>평촌</strong></span></p>
									<div class="info_wrap">
										<div class="info">
											<span class="sub_txt">문의</span>
                                            <p>
												031-388-3141
											</p>
										</div>
									</div>
								</a>
							</li>
                        </ul>
                        
                        <p class="mt25 taR fz16" style="margin-right:10px;color:#888;">※ 학원별 모집 과정과 운영 프로그램은 상이할 수 있습니다.</p>
                    </div>
                </div>
				<!-- // -->

            </div>
        </div>
    </div>

    
    <!-- container End --> 
    
    <script type="text/javascript">
	var motion1 = new TimelineMax({delay:0.7,repeat:0})
		motion1.to(".act01", 0.5, {opacity:1, top:100})
		motion1.to(".act02", 0.5, {opacity:1, top:193});

    var motion2 = new TimelineMax({delay:1.5,repeat:0})
        motion2.to(".act03", 0.3, {opacity:1, top:543, scale:1, ease:Linear.easeNone});

    
    var motion2_3 = new TimelineMax({delay:2.0,repeat:0})
    motion2_3.to(".act07", 0.1, {opacity:1})

    var motion2_4 = new TimelineMax({delay:2.5,repeat:-1, yoyo:true})
    motion2_4.to(".act08", 1.5, {opacity:1, left:1000})

   
	</script>



<script src="circle-progress.js"></script>
<script>
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
</script>

</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
