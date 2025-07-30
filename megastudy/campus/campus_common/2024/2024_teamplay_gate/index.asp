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

#div_cont {width:100%; text-align:center; clear:both; position:relative; 	overflow:hidden; font-family:"MalGun Gothic"; font-size:16px; letter-spacing:-0.5px; line-height:20px; color:#333;}
    
#div_cont .con {width:1000px; margin:0 auto; position:relative;	z-index:1;}
#div_cont .top_bg {height:1175px; overflow:hidden;}
.div_con .line_wrap {display:inline-block; padding:0 4px 3px; position:relative;}
.div_con .line_wrap img {position:relative; z-index:1;}
.div_con .line_wrap:after {content:''; display:block; width:0%; height:23px; background:#ffd7e4; z-index:0; position:absolute; bottom:0; left:50%; transition:all 0.7s; transition-delay: 0.5s; opacity:0.8;}
.div_con .animation_set .line_wrap:after {width:100%; left:0;}
#div_full {background:#230a44;}
.top_wrap {width:100%; height:1673px; margin:0 auto;  position:absolute; z-index:3; top:0; text-align:center; background:#1b130d url('<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/top_bg.jpg') center top no-repeat;overflow:hidden;}    
.top_wrap .act_wrap {position:absolute; width:100%; z-index:10;}
.top_wrap .act_wrap {position:relative; width:1000px; margin:0 auto;}

.top_wrap .act_wrap .txt {z-index:1; position:absolute; opacity:0;}
.top_wrap .act_wrap .act01 {left:215px; top:150px; z-index:8;}
.top_wrap .act_wrap .act02 {left:93px; top:274px; z-index:4;}
.top_wrap .act_wrap .act03 {left:93px; top:274px; z-index:4;}

.top_wrap .act_wrap .act04_1 {left:268px; top:260px; z-index:8;}
.top_wrap .act_wrap .act04_2 {left:656px; top:343px; z-index:8;}
.top_wrap .act_wrap .act04_3 {left:187px; top:556px; z-index:8;}
.top_wrap .act_wrap .act04_4 {left:497px; top:434px; z-index:8;}
.top_wrap .act_wrap .act04_5 {left:693px; top:536px; z-index:8;}

.top_wrap .act_wrap .act05 {left:685px; top:97px; z-index:8; transform:scale(2);}

.top_wrap .act_wrap .act07 {left:0; top:0; z-index:7;}
.top_wrap .act_wrap .act07_1 {left:43px; top:274px; z-index:8;}

.top_wrap .act_wrap .act08 {left:-1000px; top:90px; z-index:5;}
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
}
.div_con2 .con {}
.bot_guide{text-align: center;margin-top: 30px;font-size: 14px;line-height: 1.5em;color: #888888;letter-spacing: 0px;font-family: 'Noto Sans KR';}


.div_con3 {
	position: relative;
	overflow: hidden;
    padding-bottom:100px;
    background:#fff;
}
.div_con3 ul {width:1000px; margin:0 auto;}    
.div_con3 ul li {float:left;}    
.div_con3 ul li + li {margin-left:12px;}



.div_con4 {
	background:#2b1d06;
	position: relative;
	overflow: hidden;
	padding: 0px 0 80px;
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
    height:140px;
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
    top:-10px;
    left:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/open_flag.png') 0 0 no-repeat;
    width:76px;
    height:37px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 ul li .flag.new {
    position:absolute;
    top:-10px;
    left:-7px;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2021_half_gate/open_flag.png') center top no-repeat;
    width:76px;
    height:37px;
    display:inline-block;
    vertical-align:middle;
}
.div_con4 ul li .flag span {
	color:#fff;
	font-size:15px;
	font-weight:700;
	margin-top:3px;
	display:block;
    line-height:19px;
}
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
	color:#935b00;
	font-weight:500;
	font-family:'URW DIN';
}
.div_con4 ul.wide_li li .info_wrap p{display:inline-block;margin-bottom:0;font-size:21px;}
.div_con4 ul.wide_li li .info_wrap p + p{margin-left:30px;}
.div_con4 ul li .info_wrap .sub_txt {
	margin-right:5px;
	width:45px;
	height:19px;
	line-height:17px;
	border-radius:11px;
	font-size:13px;
	color:#fff;
	display:inline-block;
	text-align:center;
	background:#935b00;
	font-family: 'Noto Sans KR';
	font-weight:400;
    vertical-align:middle;
    margin-top:-4px;
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



.fix_bottom_wrap {background:#000; position:fixed; bottom:0; left:0; width:100%; height:125px; z-index:10; }
.fix_bottom_area {width:1000px; margin:0 auto; overflow:hidden; padding-top:20px;}
.fix_bottom_area ul {display:inline-block; overflow:hidden;}
.fix_bottom_area ul li {display:inline-block; float:left; width:95px; text-align:center; border:1px solid #555;}
.fix_bottom_area ul li a {font-size:16px; color:#fff; font-weight:500; line-height:50px; position:relative; display:block;}

.fix_bottom_area ul li:hover {border-color:#C7B094;}
.fix_bottom_area ul li:hover a em {color:#C7B094; word-break:keep-all; font-weight:bold;}

.fix_bottom_area ul li + li {margin-left:10px;}
.fix_bottom_area ul + ul {margin-left:68px;}
.fix_bottom_area ul.large {}
.fix_bottom_area ul li:nth-child(1),
.fix_bottom_area ul li:nth-child(2) {width:175px;}
.fix_bottom_area ul.small {width:175px;}
.fix_bottom_area ul.small li {display:block; width:100%;}
.fix_bottom_area ul p.title {width:100%; height:40px; line-height:37px; color:#fff; background:linear-gradient(135deg, #72592a, #4e3a25); font-weight:bold; font-size:19px; text-align:center; margin-bottom:15px;}

.fix_bottom_wrap.inner {position:absolute; top:745px; z-index:1; width:1000px;max-width:1000px;height:210px;left:50%; margin-left:-500px;box-sizing:border-box;z-index:10;}
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
.fix_bottom_wrap.inner .fix_bottom_area ul p.title {width:100%;max-width:100%; height:45px; line-height:45px; color:#fff; background:linear-gradient(135deg, #72592a, #4e3a25); font-weight:bold; font-size:18px; text-align:center;margin-bottom:0;}
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



.graph_box_wrap01 {height:480px;position:relative; overflow:hidden;}
.graph_box_wrap01 + .graph_box_wrap01 {height:533px; margin-top:29px;}
.graph {position:absolute; bottom:61px;}
.graph.graph01 {left:112px;}
.graph.graph02 {left:151px; bottom:106px; z-index:2;}

.graph.graph03 {left:682px; bottom:84px;}
.graph.graph04 {left:781px; bottom:60px;}

.graph.graph05 {left:48px; bottom:50px;}
.graph.graph06 {left:107px; bottom:-10px;}
.graph.graph07 {left:188px; bottom:50px;}
.graph.graph08 {left:248px; bottom:33px;}
.graph.graph09 {left:328px; bottom:50px;}
.graph.graph10 {left:388px; bottom:83px;}

.graph.txt01 {left:713px; bottom:100px; z-index:2;}
.graph.txt02 {left:777px; bottom:221px; left:59px; bottom:110px;}
.graph.txt03 {left:199px; bottom:110px; z-index:3;}
.graph.txt04 {left:339px; bottom:110px; z-index:3;}
.graph.txt05 {left:779px; bottom:101px; z-index:3;}

.graph.txt06 {left:683px; bottom:185px; z-index:2;}
.graph.txt07 {left:779px; bottom:269px; z-index:2;}  
.graph.arrow01 {left:725px;  bottom:88px; z-index:4;}
.graph.arrow02 {left:69px; bottom:100px; z-index:4;}
.graph.arrow03 {left:210px; bottom:100px; z-index:4;}
.graph.arrow04 {left:350px; bottom:100px; z-index:4;}

.hidden_box {width:240px; height:60px; background:#fff; overflow:hidden; position:absolute; left:123px; bottom:0px; background:#fff url('<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/cover01.png') center top no-repeat; z-index:5;}
.hidden_box.posi01 { left:644px; width:226px; height:86px;}
.hidden_box.posi02 { background:#fff url('<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/cover02.png') center top no-repeat; width:430px; height:83px; left:28px; bottom:0;}
.hidden_box.posi03 {}

.bot_guide{text-align: center;margin-top: 30px;font-size: 14px;line-height: 1.5em;color: #888888;letter-spacing: 0px;font-family: 'Noto Sans KR';}


.example {position:absolute !important; top:50px; color:#fff !important; z-index:2;}
.example div {border-width:122px !important; border-color:#e6d0bf !important;}
.example div div {border-width:122px !important; border-color:#8c3d27 #8c3d27 transparent transparent!important;}
.example .box_wrap04 {display:none;}
#example1 {left:565px;}
#example2 {left:749px;}
    


.bot_guide{text-align: center;margin-top: 30px;font-size: 14px;line-height: 1.5em;color: #888888;letter-spacing: 0px;font-family: 'Noto Sans KR';}


.slide_wrap {
    position: relative;
    min-height: 807px;
    width:1000px;
    margin: 0 auto;
}

.slide_wrap * {font-family: 'Noto Sans KR', sans-serif; box-sizing:border-box;}

.slide_wrap .slide_area {
    position: absolute;
    top: 101px;
    left:0;
    background: #fff;
    box-sizing: border-box;
    width: 1000px;
    visibility: hidden;
    text-align:center;
    height:705px;
    box-sizing:border-box;
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
    width:196px; 
    text-align: center;
    background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/tab_border_off.png') 0 0 no-repeat;
}

.slide_wrap .tab_lists > li.on {
    background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/tab_border_on.png') 0 0 no-repeat;
    color:#2d1c0c;
}
.slide_wrap .tab_lists > li p {font-size:18px; font-weight: 400; line-height:28px; color:#cdc2b2; letter-spacing:-1px;}
.slide_wrap .tab_lists > li p sup {display:inline-block; font-size:0px; vertical-align: bottom; font-family:'Gotham'; width:10px; height:10px; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/sup_bg_off.png') 0 0 no-repeat; vertical-align:9px; margin-right:1px;}
.slide_wrap .tab_lists > li strong {font-size:24px; display:inline-block; font-weight:400;}

.slide_wrap .tab_lists > li.on p {color:#2d1c0c;}
.slide_wrap .tab_lists > li.on .tab_item strong {font-weight:bold;}    
.slide_wrap .tab_lists > li.on p sup { background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/sup_bg_on.png') 0 0 no-repeat;}

.slide_wrap .tab_lists > li + li {
    margin-left:5px;
}

.slide_wrap .tab_lists .tab_item {
    display: block;
    padding: 37px 0;
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


.div_con1 .con {
    position: relative;
    width:1000px !important;
    height:1042px;
    background: url('<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con02_bg.png') center top no-repeat;
}
.div_con1:after {content:''; display:block; clear:both;}
.div_con1 .bal_wrap {position:relative; width:1000px; margin:0 auto;}
.div_con1 .bal_wrap img {margin-left:-205px;}

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
			var elementP = (elementT + elementH + 50);
	
			if ((elementP <= view_pos)) {
				$(this).addClass("animation_set");
			}
		});
    }

    /* Scroll */
	function parallaxScroll(){
        
		var scrolled = $(window).scrollTop();
        

        if(scrolled > $("#div_con03").offset().top - 150) {
                    
            $("#div_con03 .list_box li").addClass('animate__animated');
            $("#div_con03 .list_box li.list01").addClass('animate__slideInUp animate__fadeIn');
            $("#div_con03 .list_box li.list02").addClass('animate__slideInDown animate__fadeIn');
            $("#div_con03 .list_box li.list03").addClass('animate__slideInUp animate__fadeIn');
            
        }

        if(scrolled > $("#div_con03_1").offset().top - 200) {
                     //alert(1);
            $(".list_box_bottom li").addClass('animate__animated');
            $(".list_box_bottom li.list01").addClass('animate__slideInDown animate__fadeIn');
            $(".list_box_bottom li.list02").addClass('animate__slideInUp animate__fadeIn');
            $(".list_box_bottom li.list03").addClass('animate__slideInDown animate__fadeIn');
            $(".list_box_bottom li.list04").addClass('animate__slideInUp animate__fadeIn');
            
        }


        
        else if(scrolled > $(".div_con2").offset().top && scrolled < $(".div_con4").offset().top-800 ) {
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"block"});
        }
        
        else if(scrolled > $(".div_con4").offset().top-800 || scrolled < $(".div_con2").offset().top) {
            
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
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
        <!--
    	<ul class="quick">
			<li><a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=19377" target="_blank"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/quick_top.png" alt="재수우선선발반 설명회"></a></li>
			<li><a href="#div_full"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/btn_quick_top.png" alt="top으로 이동"></a></li>
		</ul>
        -->
        

        <div id="div_cont">
            <div id="div_full" class="div_con" style="height:1673px;">
                <div class="top_wrap">
                     
                    <div class="act_wrap">
                        <img class="txt act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/top_txt01.png" alt="" />
                        <img class="txt act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/top_txt02_01.png" alt="" />
                        <img class="txt act03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/top_txt02_02.png" alt="" />

                        <img class="txt act04_1" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/light01.png" alt="" />
                        <img class="txt act04_2" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/light02.png" alt="" />
                        <img class="txt act04_3" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/light03.png" alt="" />
                        <img class="txt act04_4" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/light04.png" alt="" />
                        <img class="txt act04_5" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/light05.png" alt="" />
                        
                        <img class="txt act05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/top_img01.png" alt="" />

                        <div style="position:absolute; top:0; left:50px; width:900px; height:700px; overflow:hidden; z-index:5;">
                            <img class="txt act07_1" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/top_txt02_02.png" alt="" />
                            <img class="txt act07" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/top_bg_cover.png" alt="" />
                            <img class="txt act08" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/top_txt_light.png" alt="" /> 
                        </div>
                    </div>

                    
                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area">
                            
                        </div>
                    </div>
                    
                    <iframe src="https://tv.naver.com/embed/41430682?autoPlay=true"   style="position:absolute; bottom:100px; left:50%; margin-left:-500px;" frameborder="no" scrolling="no" marginwidth="0" marginheight="0" WIDTH="1000" HEIGHT="561" allow="autoplay" allowfullscreen></iframe>
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

            <div class="div_con">

              

                <div class="div_con2">
                    <div style="overflow:hidden;padding-bottom:100px; position:relative;">
                        
                        <div style="position:relative; z-index:1;" class="mt100 taC animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con01_title01.png" alt="" /></div>

                        <div class="con mt90" style="position:relative; margin-top:-100px;">
                            <img style="position:absolute; top:0; left:0;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con01_img01_01.png" alt="">
                            <img class="animation_element l_to_r" style="position:absolute; top:53px; left:0px;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con01_img01_02.png" alt="">
                        </div>
                        <div style="height:607px;"></div>
                    </div>
                </div>

                <div class="div_con1" style="overflow:hidden; background:#f2ede5; padding-bottom:165px;">
                    
                	
                    <div class="taC mt100"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con02_title01.png" alt="" /></div>
                    <div class="con mt80">
                    	<div class="graph_box_wrap01">
                            <img class="graph graph02 animate__animated animate__bounceIn animate__infinite" graph02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_img03.png" alt="" />
                            
                            
                            <img class="graph graph03 animation_element b_to_t delay150" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_img01.png" alt="" />
                            <img class="graph graph04 animation_element b_to_t delay250" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_img02.png" alt="" />
                            
                            <img class="graph txt01 animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/up_txt01.png" alt="" />                            
                            <img class="graph arrow01 animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/arrow_img.png" alt="" />            
                            
                            <img class="graph txt06 animation_element b_to_t delay600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_txt01.png" alt="" />
                            <img class="graph txt07 animation_element b_to_t delay600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_txt02.png" alt="" />

                            <div class="hidden_box posi01"></div>
                        </div>
                        <div class="graph_box_wrap01">
                            <img class="graph graph05 animation_element b_to_t delay50" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_img01.png" alt="" />
                            <img class="graph graph06 animation_element b_to_t delay100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_img02.png" alt="" />                            

                            <img class="graph txt02 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/up_txt02.png" alt="" />
                            <img class="graph arrow02 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/arrow_img.png" alt="" />                            
                            
                            
                            <img class="graph graph07 animation_element b_to_t delay150" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_img01.png" alt="" />
                            <img class="graph graph08 animation_element b_to_t delay200" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_img02.png" alt="" />                 

                            <img class="graph txt03 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/up_txt03.png" alt="" />
                            <img class="graph arrow03 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/arrow_img.png" alt="" />                            
                            
                            <img class="graph graph09 animation_element b_to_t delay250" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_img01.png" alt="" />
                            <img class="graph graph10 animation_element b_to_t delay300" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/graph_img02.png" alt="" />                 

                            <img class="graph arrow04 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/arrow_img.png" alt="" />                            
                            <img class="graph txt04 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/up_txt04.png" alt="" />

                            <div class="hidden_box posi02"></div>
                        </div>
                        
                        <p class="mt15 taR" style="color:#888; font-size:16px; line-height:28px;">
                            ※ 메가스터디학원 2023학년도 재원생 중, 2022/2023 수능 성적 확인이 가능한 3,985명 분석 결과
                        </p>
                    </div>
                </div>
                

                <div style="background:#2b1d06; overflow:hidden; padding-bottom:100px;">
                    <div class="inner">
                        <div class="img_wrap taC mt100"> 
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con03_title01.png" alt="" border="0" />
                        </div>
                        <div class="slide_wrap mt90">
                            <ul class="tab_lists">
                                <li class="on" data-slide=".slide_area1">
                                    <a href="javascript:void(0)" class="tab_item">
                                        <p><strong>프리미엄반</strong></p>
                                    </a>
                                </li>
                                <li data-slide=".slide_area2">
                                    <a href="javascript:void(0)" class="tab_item">
                                        <p><sup></sup><strong>팀플장학제도</strong></p>
                                    </a>
                                </li>
                                <li data-slide=".slide_area3">
                                    <a href="javascript:void(0)" class="tab_item">
                                        <p><strong>충분한 자습시간</strong></p>
                                    </a>
                                </li>
                                <li data-slide=".slide_area4">
                                    <a href="javascript:void(0)" class="tab_item">
                                        <p><strong>최적의 학습 환경</strong></p>
                                    </a>
                                </li>
                                <li data-slide=".slide_area5">
                                    <a href="javascript:void(0)" class="tab_item">
                                        <p><strong>실전 맞춤 커리큘럼</strong></p>
                                    </a>
                                </li>
                            </ul>
                            <div class="slide_area slide_area1 on">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con03_contents01.png" alt="" /> 
                            </div>
                            <div class="slide_area slide_area2">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con03_contents02.png" alt="" />
                            </div>
                            <div class="slide_area slide_area3">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con03_contents03.png" alt="" />
                            </div>
                            <div class="slide_area slide_area4">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con03_contents04.png" alt="" />
                            </div>
                            <div class="slide_area slide_area5">
                                <div style="position:relative;">
                                    <a href="https://campus.megastudy.net/campus_common/2023/2023_map/index.asp" target="_blank" style="position:absolute; top:507px; left:687px;  display:block; width:115px; height:30px;"></a>
                                </div>
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con03_contents05.png" alt="" />
                            </div>
                        </div>
                    </div>

                </div>
                

                <div id="div_con03" class="div_con3" style="position:relative;">
                    <div class="mt100 animation_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_title01.png" alt="" />
                    </div>

                    <div class="mt100 animation_element b_to_t delay200">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_sub_title01.png" alt="" />
                    </div>

                    <style>
                        #div_con03 .inner:after {clear:both; content:''; display:block;}
                        .list_box {position:relative; z-index:1; margin:0 auto; width:1000px;}
                        .list_box:after {display:block; clear:both; content:'';}
                        .list_box li {display:inline-block; float:left; opacity:0; transition:all 0.5s;}
                        .list_box li.animate__animated {opacity:1; }
                        .list_box li + li {margin-left:20px;}

                        .list_box_bottom {position:relative; z-index:1; margin:0 auto; width:1000px;}
                        .list_box_bottom:after {display:block; clear:both; content:'';}
                        .list_box_bottom li {display:inline-block; float:left; opacity:0; transition:all 0.5s;}
                        .list_box_bottom li.animate__animated {opacity:1; }
                        .list_box_bottom li + li {margin-left:20px;}
                    </style>
                    <ul class="list_box mt45">
                        <li class="list01"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_img01_01.png" alt=""></li>
                        <li class="list02"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_img01_02.png" alt=""></li>
                        <li class="list03"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_img01_03.png" alt=""></li>
                    </ul>

                    <div class="taC mt50 animation_element b_to_t delay400" style="position:relative;">
                        <a href="https://campus.megastudy.net/campus_common/2023/2023_megamentor/index.asp" target="_blank">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_btn01.png" alt="" /></a>
                    </div>

                    <div id="div_con03_1" class="mt100 animation_element b_to_t delay500">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_sub_title02.png" alt="" />
                    </div>
                    
                    <ul class="list_box_bottom mt45">
                        <li class="list01"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_img02_01.png" alt=""></li>
                        <li class="list02"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_img02_02.png" alt=""></li>
                        <li class="list03"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_img02_03.png" alt=""></li>
                        <li class="list04"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con04_img02_04.png" alt=""></li>
                    </ul>
                </div>
                
                <!-- con05 -->
                <div class="div_con05" style="background:#f1f1f1; overflow:hidden; padding-bottom:100px;">
                    <div class="inner">
                        <div class="img_wrap taC mt100"> 
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con05_title01.png" alt="" border="0" />
                        </div>

                        <div class="img_wrap taC mt90"> 
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con05_img01.png" alt="" border="0" />
                        </div>
                        <div class="img_wrap taC mt35"> 
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con05_img02.png" alt="" border="0" />
                        </div>
                        <div class="img_wrap taC mt35"> 
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con05_img03.png" alt="" border="0" />
                        </div>
                        <div class="img_wrap taC mt35"> 
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con05_img04.png" alt="" border="0" />
                        </div>
                        <div class="img_wrap taC mt35"> 
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con05_img05.png" alt="" border="0" />
                        </div>
                    </div>
                </div>
                <!-- con05 -->
				

				<div class="div_con4" id="link">
                    
                    <div class=" mt100 animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_gate/con06_title01.png" alt="" /></div>
                    <div class="con taC"> 
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
                                            <span class="sub_txt">문의</span>
                                            02-568-3800
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
                                            <span class="sub_txt">문의</span>
                                            02-535-5678
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                            <li id="C05" class="cam_list"><a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2024/2024_teamplay/teamplay_01.asp" target="_blank">
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
                            
							<li id="C04" class="cam_list"><a href="https://noryangjin.megastudy.net/" target="_blank">
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
                            <li id="C11" class="cam_list"><a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2024/2024_teamplay/teamplay_01.asp" target="_blank">
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

								<a href="https://songpa.megastudy.net/" target="_blank">
                                <!--<div class="flag ver02">
                                    <span>마감<br>임박</span>
                                </div>-->
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
                            <li id="C07" class="cam_list">
                                <a href="javascript:alert('모집이 종료되었습니다.');" >
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
                            <li id="C08" class="cam_list"><a href="https://bundang.megastudy.net/bundang/nsu/nsu/2024/2024_jaejung/jaejung_04.asp#01" target="_blank">
                                <!--
                                <div class="flag ver01">
                                    <span>마감임박</span>
                                </div>-->
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
								<a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2024/2024_teamplay/teamplay_01.asp" target="_blank">
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
								<a href="https://pyeongchon.megastudy.net/" target="_blank">
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

    
    <!-- container End --> 
    
    <script type="text/javascript">
	var motion1 = new TimelineMax({delay:0.7,repeat:0})
		motion1.to(".act01", 0.5, {opacity:1, top:150});

    var motion2_1 = new TimelineMax({delay:1,repeat:0})
        motion2_1.to(".act02", 0.5, {opacity:1, top:274});

    var motion2_2 = new TimelineMax({delay:1,repeat:0})
        motion2_2.to(".act03", 0.5, {opacity:1, top:274});
    
    var motion2_4 = new TimelineMax({delay:1,repeat:0})
        motion2_4.to(".act07_1", 0.1, {opacity:1})    

    var motion2_3 = new TimelineMax({delay:1.5,repeat:0})
        motion2_3.to(".act07", 0.1, {opacity:1})
    
var motion2_5 = new TimelineMax({delay:2,repeat:-1, yoyo:true})
    motion2_5.to(".act08", 1.5, {opacity:1, left:1000})

    var motion4_1 = new TimelineMax({delay:1,repeat:0})
        motion4_1.to(".act04_1", 0.5, {opacity:1, ease: Back.easeOut});        
    var motion4_2 = new TimelineMax({delay:1,repeat:0})
        motion4_2.to(".act04_2", 0.5, {opacity:1, ease: Back.easeOut});
    var motion4_3 = new TimelineMax({delay:1,repeat:0})
        motion4_3.to(".act04_3", 0.5, {opacity:1, ease: Back.easeOut});
    var motion4_4 = new TimelineMax({delay:1,repeat:0})
        motion4_4.to(".act04_4", 0.5, {opacity:1, ease: Back.easeOut});
    var motion4_5 = new TimelineMax({delay:1,repeat:0})
        motion4_5.to(".act04_5", 0.5, {opacity:1, ease: Back.easeOut});

    var motion5 = new TimelineMax({delay:1.2,repeat:0})
        motion5.to(".act05", 0.3, {opacity:1, transform:"scale(1)", ease: Back.easeOut});
   
	</script>



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
