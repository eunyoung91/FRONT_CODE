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
#div_cont .top_bg {height:2720px; overflow:hidden; }
.div_con .line_wrap {display:inline-block; padding:0 4px 3px; position:relative;}
.div_con .line_wrap img {position:relative; z-index:1;}
.div_con .line_wrap:after {content:''; display:block; width:0%; height:23px; background:#ffd7e4; z-index:0; position:absolute; bottom:0; left:50%; transition:all 0.7s; transition-delay: 0.5s; opacity:0.8;}
.div_con .animation_set .line_wrap:after {width:100%; left:0;}
#div_full {background:#2a2a4c;}
.top_wrap {width:100%; height:2720px; margin:0 auto;  position:absolute; z-index:3; top:0; text-align:center; overflow:hidden; background:#a9d4e3 url('<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_bg.jpg') center top no-repeat;}    
.top_wrap .act_wrap {position:absolute; width:100%; height:950px;}
.top_wrap .act_wrap {position:relative; width:1000px; margin:0 auto;}

.top_wrap .act_wrap .txt {z-index:1; position:absolute; opacity:0;}
.top_wrap .act_wrap .act01 {left:50px; top:208px; z-index:2;}
.top_wrap .act_wrap .act02 {left:265px; top:295px; z-index:2;}
.top_wrap .act_wrap .act03 {left:50px; top:445px; z-index:2;}
.top_wrap .act_wrap .act04 {left:245px; top:700px; z-index:2;}

.top_wrap .act_wrap .act05_01 {left:493px; top:0px; z-index:1;}
.top_wrap .act_wrap .act05_02 {left:977px; top:533px; z-index:1;}
.top_wrap .act_wrap .act05_03 {left:1010px; top:643px; z-index:1;}


.bottom_img_wrap {position:relative; height:430px; overflow:hidden;}
.bottom_img_wrap .line {position:absolute; bottom:0; left:50%; margin-left:-420px;}
/* 2022.08.18. 영상 삽입  */
.video_area{position:relative;width:1000px;height:auto;margin:0 auto;z-index:10;}    
.video_content{position:relative;margin-top:290px;}

    
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

.div_con1 {
    background:#f3f1c9 url('<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_bg01.jpg') center top no-repeat;
    position:relative;
    overflow:hidden;
    padding-bottom:100px;
}

    
.div_con1 .con {
    position: relative;
    width:1000px !important;
    margin:0 auto;
}

.div_con2 {
    position: relative;
    background:#fff url('<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con03_bg01.jpg') center top no-repeat;
    overflow: hidden;
    padding-bottom:100px;
}
.div_con2 .div_con_wrap {position:relative; width:1000px; margin:100px auto 0; background:#fff; padding-top:100px;}

.bot_guide{text-align: center;margin-top: 30px;font-size: 14px;line-height: 1.5em;color: #888888;letter-spacing: 0px;font-family: 'Noto Sans KR';}


.div_con3 {
	position: relative;
    padding-top:80px;
    box-sizing:border-box;
    height:330px;
    background:#0a4ea2 url('<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con03_bg01.png') center top no-repeat;
}
.div_con3::after, .div_con3::before {content:''; display:block; clear:both; width:1px; height:40px; position:absolute; left:50%; top:0; background:#fff;}
.div_con3::after {background:#0e59a9; top:-40px;}

.m_rota {position:absolute; top:250px; left:379px;
    animation: rotate_image 10s linear infinite;}

@keyframes rotate_image{
	100% {
    	transform: rotate(360deg);
    }
}

.div_con4 {
	background:#a9d4e3;
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
.div_con4 ul + ul {margin-top:0px;}
.div_con4 ul li {
    display:inline-block;
	width:240px;
    height:150px;
	margin:0 5px;
    background:#fff;
    font-family: 'Noto Sans KR';
    letter-spacing: -0.5px;
    border-radius: 2px;
	text-align: center;

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
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2022_winter/dot_line.png') center bottom repeat-x;
    border-bottom:none;
    margin-top:10px;
}
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
.div_con4 ul li .flag {
    position:absolute;
    top:0px;
    left:0px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/new_flag.png') 0 0 no-repeat;
    width:69px;
    height:36px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 ul li .flag.new {
    position:absolute;
    top:0px;
    left:0px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_nsufirst/new_flag.png') center top no-repeat;
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
.div_con4 ul li .flag.ver01 {
    position:absolute;
    top:-10px;
    left:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2024/2024_half_gate/end_flag.png') 0 0 no-repeat;
    width:46px;
    height:54px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 ul li .flag.ver01 span {
    margin-top:3px;
    line-height:1.2;
}

.div_con4 ul li .flag.ver02 {
    position:absolute;
    top:-10px;
    left:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2024/2024_half_gate/end_flag.png') 0 0 no-repeat;
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
}
.div_con4 ul.wide_li li .info_wrap .info{padding-left:0;}
.div_con4 ul li .info_wrap p {
	font-size:21px;
	color:#1758a7;
	font-weight:bold;
	font-family:'Noto Sans KR', 'Montserrat';
}
.div_con4 ul.wide_li li .info_wrap p{display:inline-block;margin-bottom:0;font-size:21px;}
.div_con4 ul.wide_li li .info_wrap p + p{margin-left:30px;}
.div_con4 ul li .info_wrap .sub_txt {
	margin-right:3px;
	width:45px;
	height:19px;
	line-height:17px;
	border-radius:11px;
	font-size:13px;
	color:#fff;
	display:inline-block;
	text-align:center;
	background:#1758a7;
	font-family: 'Noto Sans KR';
	font-weight:400;
    vertical-align:middle;
    margin-top:-4px;
}
.div_con4 ul.wide_li li .info_wrap .sub_txt{width:56px;height:23px;font-size:15px;line-height:23px;border-radius:12px;}
.div_con4 ul li.off a {cursor:default;}
.div_con4 .tit_sub{padding-top:70px;text-align:center;}
    
    

    
.div_con6 {
	height:364px;
    background:#2d200f url('<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con06_bg.jpg') center top no-repeat;
	position: relative;
	overflow: hidden;
}
    

.motion .box_act li{opacity:1;}

.box_act.Xver li + li {margin-left:12px;}
.box_act.Xver .back{transform:rotateX(180deg);-webkit-transform:rotateX(180deg);}
.box_act.Xver .front{z-index:2;transform:rotateX(0deg);-webkit-transform:rotateX(0deg);}
.box_act.Xver li.on .back, .box_act.Xver li.on .back{transform:rotateX(0deg);-webkit-transform:rotateX(0deg);}
.box_act.Xver li.on .front, .box_act.Xver li.on .front{transform:rotateX(180deg);-webkit-transform:rotateX(180deg);display:none\9;}


.fix_bottom_wrap {background:#000; position:fixed; bottom:0; left:0; width:100%; height:125px; z-index:10; }
    .fix_bottom_area {width:1000px; margin:0 auto; overflow:hidden; padding-top:20px;}
    .fix_bottom_area ul {display:inline-block; overflow:hidden;}
    .fix_bottom_area ul li {display:inline-block; float:left; width:95px; text-align:center; border:1px solid #555;}
    .fix_bottom_area ul li a {font-size:16px; color:#e5e5e5; font-weight:500; line-height:45px; position:relative; display:block;}
   
    .fix_bottom_area ul li:hover {border-color:#f7f4b6;}
    .fix_bottom_area ul li:hover a em {color:#f7f4b6; word-break:keep-all; font-weight:bold;}
   
    .fix_bottom_area ul li + li {margin-left:9px;}
    .fix_bottom_area ul + ul {margin-left:68px;}
    .fix_bottom_area ul.large {}
    .fix_bottom_area ul li:nth-child(1),
	.fix_bottom_area ul li:nth-child(2) {width:175px;}
    .fix_bottom_area ul.small {width:175px;}
    .fix_bottom_area ul.small li {display:block; width:100%;}
    .fix_bottom_area ul p.title {width:100%; height:40px; line-height:37px; color:#000; background:linear-gradient(135deg, #c6e4cf, #93d4e8); font-weight:bold; font-size:19px; text-align:center; margin-bottom:15px;}
  
    
.fix_bottom_wrap.inner {position:absolute; top:955px; z-index:1; width:1000px;max-width:1000px;height:210px;left:50%; margin-left:-500px;box-sizing:border-box;z-index:10;}
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
.fix_bottom_wrap.inner .fix_bottom_area ul p.title {width:100%;max-width:100%; height:45px; line-height:45px; color:#000; background:linear-gradient(135deg, #c3e3cf, 50px, #93d4e8); font-weight:bold; font-size:18px; text-align:center;margin-bottom:0;}
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
    

.graph_box_wrap01 {height:480px;position:relative;}
.graph_box_wrap01 + .graph_box_wrap01 {height:490px; margin-top:29px;}
.graph {position:absolute; bottom:61px;}
.graph.graph01 {left:112px;}
.graph.graph02 {left:131px; bottom:101px; z-index:2;}
.graph.graph03 {left:679px;}
.graph.graph04 {left:780px;}
.graph.graph05 {left:160px; bottom:60px;}
.graph.graph06 {left:266px; bottom:60px;}
.graph.txt01 {left:260px; bottom:230px; z-index:2;}
.graph.txt02 {left:777px; bottom:221px;}
.graph.txt03 {left:150px; bottom:155px; z-index:3;}
.graph.txt04 {left:677px; bottom:130px; z-index:3;}
    
.graph.txt05 {left:779px; bottom:101px; z-index:3;}  
.graph.txt06 {left:802px; bottom:97px; z-index:3; display:none;}
.graph.txt07 {left:660px; bottom:156px; z-index:3;}  
.graph.arrow01 {left:228px;  bottom:107px;}
.graph.arrow02 {left:714px; bottom:58px; z-index:2;}
.graph.arrow03 {left:200px; bottom:58px;}
.hidden_box {width:240px; height:60px; background:#fff; overflow:hidden; position:absolute; left:123px; bottom:1px; background:#fff url('<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/cover.png') center top repeat-x; z-index:5;}
.hidden_box.posi01 { left:637px;}
.hidden_box.posi02 { background:#fff url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2022_teamplay_gate/cover_1.jpg') center top repeat-x;}
.hidden_box.posi03 {}

.bot_guide{text-align: center;margin-top: 30px;font-size: 14px;line-height: 1.5em;color: #888888;letter-spacing: 0px;font-family: 'Noto Sans KR';}


.example {position:absolute !important; top:50px; color:#fff !important; z-index:2;}
.example div {border-width:122px !important; border-color:#e6d0bf !important;}
.example div div {border-width:122px !important; border-color:#8c3d27 #8c3d27 transparent transparent!important;}
.example .box_wrap04 {display:none;}
#example1 {left:565px;}
#example2 {left:749px;}
    
    
.box_act {position:relative; width:1000px; z-index:5; margin-top:-55px;}
.box_act li {position:relative;-webkit-transition:all 0.5s ease-in-out;transition:all 0.5s ease-in-out;opacity:1; display:inline-block; float:left;}
.box_act li + li {margin-left:20px;}
.box_act li img {opacity:1 !important; left:0;}
.box_act li img.back{position:absolute;left:0px;top:0px;}

.box_act li .flipper{width:320px;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;position:relative;}
.box_act .front, .box_act .back{backface-visibility:hidden;-webkit-backface-visibility:hidden;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;text-indent:-1000em;}
.box_act .back{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);}
.box_act .front{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.box_act li.on .back, .box_act li.on .back{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.box_act li.on .front, .box_act li.on .front{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);display:none\9;}
.motion .box_act li{opacity:1;}
.motion .box_act li:nth-child(1){left:0px;top:0px;-webkit-transition-delay:1.4s;transition-delay:1.4s;}
.motion .box_act li:nth-child(2){left:0px;top:0px;-webkit-transition-delay:1.5s;transition-delay:1.5s;}
.motion .box_act li:nth-child(3){left:0px;top:0px;-webkit-transition-delay:1.6s;transition-delay:1.6s;}
.box_act:after {clear:both; content:''; display:block;}


.slide_wrap {
        position: relative;
        min-height: 750px;
        width:1000px;
        margin: 0 auto;
    }

    .slide_wrap * {font-family: 'Noto Sans KR', sans-serif; box-sizing:border-box;}

    .slide_wrap .slide_area {
        position: absolute;
        top: 106px;
        left:0;
        background: #fff;
        box-sizing: border-box;
        max-width: 1000px;
        visibility: hidden;
    }

    .slide_wrap .slide_area.on {visibility:visible;}

    .slide_wrap .slide_txt {
        padding: 28px 0;
        background: #e0e2eb;
        text-align: center;
        color: #000;
        font-size: 18px;
        font-weight:500;
    }



    .slide_wrap .tab_lists:after {
        display: block;
        clear: both;
        content:''
    }

    .slide_wrap .tab_lists > li {
        box-sizing: border-box;
        float: left;
        width:247px; 
        text-align: center;
        background: #16110b;
        border-top-left-radius:7px;
        border-top-right-radius:7px;
    }

    .slide_wrap .tab_lists > li.on {
        background: #fff;
        color:#2d1c0c;
    }
    .slide_wrap .tab_lists > li p {font-size:18px; font-weight: 400; line-height:28px; color:#caa287;}
    .slide_wrap .tab_lists > li strong {font-size:23px; display:block;}

    .slide_wrap .tab_lists > li.on p {color:#2d1c0c;}
        .slide_wrap .tab_lists > li.on .tab_item strong {font-weight:bold;}

    .slide_wrap .tab_lists > li + li {
        margin-left:4px;
    }

    .slide_wrap .tab_lists .tab_item {
        display: block;
        padding: 25px 0;
        font-size: 23px;
        font-weight: 500;
        color: #000;
        line-height: 35px;
    }

    /* 슬라이드 prev, next 버튼 */
    .slide_wrap .bx-controls .bx-prev,
    .slide_wrap .bx-controls .bx-next {
        position: absolute;
        top: 50%;
        margin-top: -29px;
        width: 32px;
        height: 59px;
        background-size : 100% auto;
        background-repeat: no-repeat;
        text-indent: -9999em;
    }

    .slide_wrap .bx-controls .bx-prev {
        left: -60px;
        background-image: url(/library/v2015/library/campus_common/2020_newton/btn_prev.png); 
    }

    .slide_wrap .bx-controls .bx-next {
        right: -60px;
        background-image: url(/library/v2015/library/campus_common/2020_newton/btn_next.png); 
    }

    /* 슬라이드 페이저 */
    .slide_wrap .bx-pager {
        margin-top: 25px;
        text-align: center;
    }

    .slide_wrap .bx-pager-item {
        display: inline-block;
    }

    .slide_wrap .bx-pager-item + .bx-pager-item {
        margin-left: 15px;
    }

    .slide_wrap .bx-pager-item .bx-pager-link {
        display: block;
        width: 12px;
        height: 12px;
        background: #b9b9b9;
        border-radius : 50%;
        text-indent: -9999em;
    }

    .slide_wrap .bx-pager-item .bx-pager-link.active {
        background: #0d2066;
    }


    
#div_con02 .box_act {position:relative; width:1000px; z-index:5; margin-top:60px; overflow:hidden;}
#div_con02 .box_act li {position:relative;-webkit-transition:all 0.5s ease-in-out;transition:all 0.5s ease-in-out;opacity:1; display:inline-block; float:left;}
#div_con02 .box_act li + li {margin-left:20px;}
#div_con02 .box_act li:nth-child(4){margin-left:0; margin-top:25px;}
#div_con02 .box_act li:nth-child(5){margin-top:25px;}
#div_con02 .box_act li:nth-child(6){margin-top:25px;}
#div_con02 .box_act li img {opacity:1 !important; left:0;}
#div_con02 .box_act li img.back{position:absolute;left:0px;top:0px;}

#div_con02 .box_act li .flipper{width:320px;height:210px;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;position:relative;}
#div_con02 .box_act .front, #div_con02 .box_act .back{backface-visibility:hidden;-webkit-backface-visibility:hidden;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;text-indent:-1000em;}
#div_con02 .box_act .back{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);}
#div_con02 .box_act .front{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
#div_con02 .box_act li.on .back, #div_con02 .box_act li.on .back{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
#div_con02 .box_act li.on .front, #div_con02 .box_act li.on .front{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);display:none\9;}
.motion #div_con02 .box_act li{opacity:1;}
.motion #div_con02 .box_act li:nth-child(1){left:0px;top:0px;-webkit-transition-delay:1.4s;transition-delay:1.4s;}
.motion #div_con02 .box_act li:nth-child(2){left:0px;top:0px;-webkit-transition-delay:1.5s;transition-delay:1.5s;}
.motion #div_con02 .box_act li:nth-child(3){left:0px;top:0px;-webkit-transition-delay:1.6s;transition-delay:1.6s;}

.box_act.double {}
.box_act.double div.img_wrap {display:inline-block; float:left; width:493px;}
.box_act.double div.img_wrap + .img_wrap {margin-left:13px;}
  

    
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
            cam_list_act();

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

            
            console.log(l_id, l_link)

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
			var elementP = (elementT + elementH + -0);
	
			if ((elementP <= view_pos)) {
				$(this).addClass("animation_set");
			}
		});
    }

	/* Scroll */
	function parallaxScroll(){
        
		var scrolled = $(window).scrollTop();
        

        if(scrolled > $(".video_area").offset().top && scrolled < $(".div_con4").offset().top-800 ) {
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"block"});
        }
        
        if(scrolled > $(".div_con4").offset().top-800 || scrolled < $(".video_area").offset().top) {
            
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
        }

        
        
		if(scrolled > $("#div_con05").offset().top - 200) {
            
            var motion6 = new TimelineMax({delay:0,repeat:0})
            motion6.to(".box_act04", 1, {className:"+=on"})
                   .to(".box_act05", 1, {className:"+=on"})
                   .to(".box_act06", 1, {className:"+=on"});
        }

	
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
        
        <!-- 최민석 / 반수설명회 스카이배너 비게시 / 2023-06-20
    	<ul class="quick">
            <li><a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=22549" target="_blank"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/quick_top.png" alt="반수반 설명회"></a></li>
            <li><a href="#div_full"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/btn_quick_top.png" alt="top으로 이동"></a></li>
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
        -->
        
        

        <div id="div_cont">

            <div id="div_full" class="div_con" style="height:2720px; position:relative; z-index:1;">
                <div class="top_wrap">
                    
                    <div class="act_wrap">
                        <img class="txt act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_txt01.png" alt="" />
                        <img class="txt act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_txt02.png" alt="" />
                        <img class="txt act03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_txt03.png" alt="" />
                        <img class="txt act04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_txt04.png" alt="" /> 

                        <img class="txt act05_01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_img01.png" alt="" /> 
                        <img class="txt act05_02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_img02.png" alt="" /> 
                        <img class="txt act05_03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_img03.png" alt="" /> 
                        

                    </div>

                    
                    
                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area">
                            
                        </div>
                    </div>

                    
                    <!-- video -->
                    <div class="video_area">
                        <div class="video_content">
                            <iframe src='https://tv.naver.com/embed/37248929?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='1000' HEIGHT='562' allow='autoplay' allowfullscreen></iframe>

                        </div>
                    </div>

 
                    <img class="mt100 animation_element b_to_t" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_txt05.png" alt="" /> 
                    
                    <div class="bottom_img_wrap mt100">
                        
                        <img class="b_p animation_element l_to_r delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_img04_01.png" alt="" /> 
                        <img class="mt20 b_p animation_element l_to_r delay250" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_img04_02.png" alt="" /> 
                        <img class="b_p animation_element delay150" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_img04_03.png" alt="" /> 
                        <img class="mt20 b_p animation_element r_to_l delay250" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_img04_04.png" alt="" /> 
                        <img class="b_p animation_element r_to_l delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_img04_05.png" alt="" /> 
                        <img class="line" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/top_img04_line.png" alt="" /> 
                    </div>

                </div>
                
            </div>

            

            <div class="fix_bottom_wrap scroll">
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
            
            <div class="div_con" style="position:relative;"> 

             
                
                <div class="div_con1">
                    
                    <div class="mt100 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con01_title01.png" alt="" /></div>

                    <div class="mt80 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con01_img01.png" alt="" /></div>

                    <div class="mt50 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con01_img02.png" alt="" /></div>

                    <div class="mt50 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con01_img03.png" alt="" /></div>

                </div>

                <div class="div_con2">
                    <div class="mt110 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_title01.png" alt="" /></div>

                    <div class="div_con_wrap">

                        <div class="animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_sub_title01.png" alt="" /></div>

                        <div class="mt10" style="overflow:hidden; margin-left:50px;">
                            <img class="fl step animation_element l_to_r delay100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img01_01.png" alt="" />
                            <img class="fl step animation_element l_to_r delay200" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img01_02.png" alt="" />
                            <img class="fl step animation_element l_to_r delay300 " src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img01_03.png" alt="" />
                            <img class="fl step animation_element l_to_r delay400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img01_04.png" alt="" />
                            <img class="fl step animation_element l_to_r delay500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img01_05.png" alt="" />
                            <img class="fl step animation_element l_to_r delay600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img01_06.png" alt="" />
                            <!-- <img class="fl step animation_element l_to_r delay700" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img01_07.png" alt="" /> -->
                            <img class="fl step animation_element l_to_r delay800" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img01_08.png" alt="" />
                            <img class="fl step animation_element l_to_r delay900" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img01_09.png" alt="" />
                            <img class="fl step animation_element l_to_r delay1000" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img01_10.png" alt="" />
                        </div>

                        <div class="mt50 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_sub_title02.png" alt="" /></div>

                        <div id="div_con05" class="mt60" style="position:relative;">
                            
                            <img class="m_rota" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img02_01.png" alt="" />
                            <img style="margin-left:-15px;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img02.png" alt="" />
                        </div>

                        <ul class="box_act">
                            <li class="box_act04">
                                <div class="flipper">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img03_01.png" alt="" class="front">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img03_01.png" alt="" class="back">
                                </div>
                            </li>
                            <li class="box_act05">
                                <div class="flipper">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img03_02.png" alt="" class="front">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img03_02.png" alt="" class="back">
                                </div>
                            </li>
                            <li class="box_act06">
                                <div class="flipper">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img03_03.png" alt="" class="front">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img03_03.png" alt="" class="back">
                                </div>
                            </li>
                        </ul>

                        <div class="mt100 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_sub_title03.png" alt="" /></div>

                        <div style="margin-top:-20px; margin-left:-30px; position:relative;">
                            <a style="width:185px; height:50px; position:absolute
                            ; left:439px; top:480px; display:block;" href="https://campus.megastudy.net/campus_common/2023/2023_map/index.asp" target="_blank"></a>
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img04.png" alt="" />
                        </div>

                        <div class="mt100 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_sub_title04.png" alt="" /></div>

                        <div class="mt55 animation_element b_to_t"><img style="margin-left:45px;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con02_img05.png" alt="" /></div>
                    </div>
                </div>

                <div class="div_con3">
                    <div class="animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con03_img01.png" alt="" /></div>
                </div>
                

				<div class="div_con4" id="link">
                    
                    <div class=" mt100 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_half_gate/con04_title01.png" alt="" /></div>
                    <div class="con taC"> 
                        <ul>   
                            <li id="C01" class="cam_list"><a href="https://yangji.megastudy.net/yangji/nsu/2024/2024_half/half_01.asp" target="_blank">
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
                            <li id="C14" class="cam_list"><a href="https://ansung.megastudy.net/ansung/nsu/2024/2024_half/half_01.asp" target="_blank">
                                <div class="flag ver01">
                                    <span>신규<br>개원</span>
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
                        </ul>
						
						<ul>
                            
                            <li id="C03" class="cam_list"><a href="https://gangnam.megastudy.net/gangnam/nsu/nsu/2024/2024_half/half_01.asp" target="_blank">
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
                            </a></li>
                            <li id="C13" class="cam_list"><a href="https://seocho.megastudy.net/"  target="_blank">
                                <!-- <div class="flag">
                                    <span>확장 이전</span>
                                </div> -->
                                
								<p class="title"><span><strong>서초</strong> 의약학전문관</span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        
                                        <p>
                                            <span class="sub_txt">문의</span>
                                            02-535-5678
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li id="C05" class="cam_list"><a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2024/2024_half/half_01.asp" target="_blank" >
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
                            
							<li id="C04" class="cam_list"><a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2024/2024_half/half_01.asp" target="_blank"> 
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
                            </a></li>
                        </ul>
						
						<ul>
                            <li id="C11" class="cam_list"><a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2024/2024_half/half_01.asp" target="_blank">
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
							<li id="C06" class="cam_list">

								<a href="https://songpa.megastudy.net/songpa/nsu/nsu/2024/2024_teamplay_half/half_01.asp" target="_blank">
                                <!-- <div class="flag ver01">
                                    <span>대기<br>접수</span>
                                </div> -->
                                <p class="title"><span><strong>송파</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        
                                        <p>
                                            <span class="sub_txt">문의</span>
                                            02-428-8181                                        
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li id="C07" class="cam_list"><a href="https://bucheon.megastudy.net/bucheon/nsu/main.asp?refer=" target="_blank">
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
                            </a></li>
                            <li id="C08" class="cam_list">
                                <a href="https://bundang.megastudy.net/bundang/nsu/nsu/2024/2024_teamplay_half/half_01.asp" target="_blank">
                                
								<p class="title"><span><strong>분당</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        
                                        <p>
                                            <span class="sub_txt">문의</span>
                                            031-781-3100
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                        </ul>
						
						<ul>
							<li id="C09" class="cam_list">
								<a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2024/2024_half/half_01.asp" target="_blank">
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
								<a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2024/2024_half/half_01.asp" target="_blank">
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
                        </ul>
                    </div>
                </div>
				<!-- // -->

            </div>
        </div>
    </div>

    
        
    <script type="text/javascript">
	
     
        
	var motion1 = new TimelineMax({delay:0.2,repeat:0})
        motion1.to(".act01", 0.5, {opacity:1, top:108});
        
	var motion2 = new TimelineMax({delay:0.7,repeat:0})
        motion2.to(".act02", 0.5, {opacity:1, top:195});
        
    var motion3 = new TimelineMax({delay:1.2,repeat:0})
        motion3.to(".act03", 0.5, {opacity:1, top:345});
        
    var motion4 = new TimelineMax({delay:1.7,repeat:0})
        motion4.to(".act04", 0.5, {opacity:1, top:600});

    var motion5_1 = new TimelineMax({delay:0.5,repeat:0})
        motion5_1.to(".act05_01", 1, {opacity:1});
    var motion5_2 = new TimelineMax({delay:2.7,repeat:0})
        motion5_2.to(".act05_02", 1, {opacity:1});
    var motion5_3 = new TimelineMax({delay:2.3,repeat:0})
        motion5_3.to(".act05_03", 1, {opacity:1, top:633, left:1040});
        
        
      
    
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
