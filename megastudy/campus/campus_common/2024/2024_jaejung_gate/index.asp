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
@import url(/library/css/stylesheets/urwdin.css);
@import url('https://fonts.cdnfonts.com/css/gotham');

/******************************************/

.of_hid {overflow:hidden;}
#div_full {background:#232ca3;}  
#div_cont {width:100%; text-align:center; clear:both; position:relative; 	overflow:hidden; font-family:"MalGun Gothic"; font-size:16px; letter-spacing:-0.5px; line-height:20px; color:#333;}    
#div_cont .con {width:1000px; margin:0 auto; position:relative;	z-index:1;}
#div_cont .top_bg {height:2550px; overflow:hidden;}

.top_wrap {width:100%; height:2550px; margin:0 auto;  position:absolute; z-index:3; top:0; text-align:center; background:#0052a8; overflow:hidden;}  

.top_wrap .act_wrap {position:absolute; width:100%; height:860px; }
.top_wrap .act_wrap {position:relative; width:1000px; margin:0 auto;}

.top_wrap .act_wrap .txt {z-index:1; position:absolute; opacity:0; z-index:2;}
.top_wrap .act_wrap .act01 {left:0px; top:90px;}
.top_wrap .act_wrap .act02 {left:-233px; top:217px;}
.top_wrap .act_wrap .act03 {left:231px; top:380px;}
.top_wrap .act_wrap .act04 {left:505px; top:227px;}
.top_wrap .act_wrap .act04_1 {left:686px; top:372px; z-index:3;}
.top_wrap .act_wrap .act05 {left:713px; top:500px;}
.top_wrap .act_wrap .act06 {left:792px; top:600px;}
.top_wrap .act_wrap .act07 {left:742px; top:395px;}
.top_wrap .act_wrap .act08 {left:950px; top:424px;}

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

 /*nonstop_slide*/
 .slide_area {
    position: relative;
}
.slide_wrap {
    position: absolute;
    top: 0px;
    left: 0px;
    width: 9020px;
    margin-left: 0px;
    overflow: hidden;
    height:300px;
}
.slide_wrap li {
    float: left;
    width: 205px;
    height: 300px;
    margin-right:0px;
}
.slide_wrap li + li {margin-left:0px}
.slide_wrap:after {
    clear: both;
    display: block;
    content: '';
}


.div_con1 .con {
    position: relative;
    width:1000px !important;
}
.div_con3 {
    padding-bottom:100px;
}
.div_con4 {
	position: relative;
	overflow: hidden;
    background:#f0f0f0;
    padding-bottom:50px;
}

.div_con5 {
	background:#0052a8 url('<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con06_bg01.png') 50% -4px no-repeat;
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
    padding:15px 0 15px 0;
	text-align:center;
    margin-top:55px;

}
.div_con5 ul + ul {margin-top:0px;}
.div_con5 ul li {
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
    width: 82%;
    margin:0 auto;
    background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2022_winter/dot_line.png') center bottom repeat-x;
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
	height:75px;
}
.div_con5 ul.wide_li li .info_wrap{height:85px;}
.div_con5 ul li .info_wrap .info {
	display:table-cell;
	vertical-align:middle;
}
.div_con5 ul.wide_li li .info_wrap .info{padding-left:0;}
.div_con5 ul li .info_wrap p {
	font-size:21px;
	color:#499cff;
	font-weight:bold;
	font-family:'URW DIN';
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
	background:#499cff;
	font-family: 'Noto Sans KR';
	font-weight:400;
    vertical-align:middle;
    margin-top:-4px;
}
.div_con5 ul.wide_li li .info_wrap .sub_txt{width:56px;height:23px;font-size:15px;line-height:23px;border-radius:12px;}
.div_con5 ul li.off a {cursor:default;}
.div_con5 .tit_sub{padding-top:70px;text-align:center;}
    


/******************************************/


.div_con {
    
    position:relative;
    z-index:1;
}

    

.div_con2 {
    position: relative;
    background:#f5efe0;
    overflow: hidden;
    padding-bottom:100px;
}
.div_con2 .con {position:relative; width:1000px; margin:0px auto;}


    


.fix_bottom_wrap {background:#000; position:fixed; bottom:0; left:0; width:100%; height:125px; z-index:10; }
.fix_bottom_area {width:1000px; margin:0 auto; overflow:hidden; padding-top:20px;}
.fix_bottom_area ul {display:inline-block; overflow:hidden;}
.fix_bottom_area ul li {display:inline-block; float:left; width:95px; text-align:center; border:1px solid #555;}
.fix_bottom_area ul li a {font-size:16px; color:#fff; font-weight:500; line-height:50px; position:relative; display:block;}

.fix_bottom_area ul li:hover {border-color:#6bb5fe;}
.fix_bottom_area ul li:hover a em {color:#6bb5fe; word-break:keep-all; font-weight:bold;}

.fix_bottom_area ul li + li {margin-left:10px;}
.fix_bottom_area ul + ul {margin-left:68px;}
.fix_bottom_area ul.large {}
.fix_bottom_area ul li:nth-child(1),
.fix_bottom_area ul li:nth-child(2) {width:175px;}
.fix_bottom_area ul.small {width:175px;}
.fix_bottom_area ul.small li {display:block; width:100%;}
.fix_bottom_area ul p.title {width:100%; height:40px; line-height:37px; color:#fff; background:linear-gradient(135deg, #a3cdff, #6eb0fe); font-weight:bold; font-size:19px; text-align:center; margin-bottom:15px;}

.fix_bottom_wrap.inner {position:absolute; top:860px; z-index:1; width:1000px;max-width:1000px;height:210px;left:50%; margin-left:-500px;box-sizing:border-box;z-index:10;}
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
.fix_bottom_wrap.inner .fix_bottom_area ul p.title {width:100%;max-width:100%; height:45px; line-height:45px; color:#fff; background:linear-gradient(135deg, #a3cdff, 50px, #6eb0fe); font-weight:bold; font-size:18px; text-align:center;margin-bottom:0;}
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
    
/* 2022.08.18. 영상 삽입  */
.video_area{position:relative;width:1000px;height:auto;margin:0 auto;z-index:10;}    
.video_content{position:relative;margin-top:290px;}



.graph_con {box-sizing:border-box;}
.graph_con .graph.g01 .animation_element.animation_set {
    transform: translate(-108px, 0px) !important;
}
.graph_con .graph.g02 .animation_element.animation_set {
    transform: translate(-115px, 0px) !important;
}
.graph_con .graph.g03 .animation_element.animation_set {
    transform: translate(-125px, 0px) !important;
}
.graph_con .graph.g04 .animation_element.animation_set {
    transform: translate(-133px, 0px) !important;
}
.graph_con .graph.g05 .animation_element.animation_set {
    transform: translate(-144px, 0px) !important;
}
.graph_con .graph.g06 .animation_element.animation_set {
    transform: translate(-177px, 0px) !important;
}
.animation_element.animation_set {
    opacity: 1 !important;
}


.graph_con_top{padding: 100px 0 250px;}
.graph_box_wrap{padding:0;position: relative;height:470px; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_box_wrap01_bg.jpg') 0 bottom no-repeat; display:inline-block; width:100%; margin-bottom:90px;}
.graph_box_wrap02 {width:480px; height:490px; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_box_wrap02_bg.jpg') 0 bottom no-repeat; margin-bottom:0; float:left;}
.graph_box_wrap03 {width:480px; height:490px; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_box_wrap03_bg.jpg') 0 bottom no-repeat; margin-left:35px; margin-bottom:0;}
.graph_box_wrap04 {width:480px; height:490px; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_box_wrap03_bg.jpg') 0 bottom no-repeat; margin-top:90px; margin-bottom:0;}
.graph_box_wrap .area {overflow: hidden;position: absolute;right: 0;bottom: 0; width:100%; height:100%; }
.graph_box_wrap .graph_tlt{text-align:center;}
.graph_box_wrap .bot_label{position: absolute;left: 50px;bottom: 50px;}
.graph_box_wrap .ct_tlt{color: #333;font-family: 'Noto Sans KR';font-size: 19px;font-weight: bold;position: absolute;bottom: 50px;}

.graph_box_wrap .ct_tlt.tlt01{left: 178px;}
.graph_box_wrap .ct_tlt.tlt02{left: 487px;}
.graph_box_wrap .ct_tlt.tlt03{left: 800px;}


.graph {position:absolute; bottom:0px; z-index:2; opacity:1;}
.graph.graph01 {left: 100px; bottom:-25px;}
.graph.graph02 {left: 222px; bottom:5px;}
.graph.graph03 {left: 411px; bottom:-25px;}
.graph.graph04 {left: 533px; bottom:30px;}
.graph.graph05 {left: 721px; bottom:-25px;}
.graph.graph06 {left: 843px; bottom:80px;}

.graph.graph02_01 {left: 161px; bottom:-17px;}
.graph.graph02_02 {left: 283px; bottom:50px;}
.graph.graph03_01 {left: 161px; bottom:50px;}
.graph.bg_up {right: 103px;bottom: 0;}
    
.graph.up_txt01 {left:110px;bottom:135px; z-index:3;}
.graph.up_txt02 {left:423px;bottom:167px; z-index:3;}
.graph.up_txt03 {left:732px;bottom:220px; z-index:3;}
.graph.up_txt02_01 {left:171px; bottom:170px; z-index:3;}
.graph.up_txt03_01 {left:195px; bottom:116px; z-index:3;}

.graph.txt01 {left:165px; bottom:113px; z-index:3;}
.graph.txt02 {left:282px; bottom:280px; z-index:3;}

.graph.arrow01 {left:130px; bottom:97px; z-index:2;}
.graph.arrow02 {left:445px; bottom:130px; z-index:2;}
.graph.arrow03 {left:755px; bottom:182px; z-index:2;}
.graph.arrow04 {left:192px; bottom:135px; z-index:2;}

.graph_cover {position:absolute; bottom:0; left:0; z-index:3;}

.animation_element.b_to_t {transform:translate(0px, 150px);}
.animation_element.t_to_b {transform:translate(0px, -150px);}
.animation_element.b_to_t.graph01 {transform:translate(0px, 20px);}
.animation_element.b_to_t.graph02 {transform:translate(0px, 50px);}
.animation_element.b_to_t.graph03 {transform:translate(0px, 20px);}
.animation_element.b_to_t.graph04 {transform:translate(0px, 50px);}
.animation_element.b_to_t.graph05 {transform:translate(0px, 20px);}
.animation_element.b_to_t.graph06 {transform:translate(0px, 50px);}
.animation_element.b_to_t.graph02_01 {transform:translate(0px, 30px);}




.bot_guide{text-align: center;margin-top: 30px;font-size: 14px;line-height: 1.5em;color: #888888;letter-spacing: 0px;font-family: 'Noto Sans KR';}


.box_act {position:relative; width:1000px; margin:60px auto 0;}
.box_act:after {clear:both; content:''; display:block;}
.box_act li {position:relative;z-index:3;-webkit-transition:all 0.5s ease-in-out;transition:all 0.5s ease-in-out;opacity:1; display:block;margin-bottom:30px;}
.box_act li:nth-child(4) {margin-left:0;}
.box_act li:nth-child(7) {margin-left:0;}
.box_act li img {opacity:1 !important;}
.box_act li img.back{position:absolute; left:0; top:0;}

.box_act li .flipper{width:325px;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;position:relative;}
.box_act .front, .box_act .back{backface-visibility:hidden;-webkit-backface-visibility:hidden;transition:0.6s;-webkit-transition:0.6s;transform-style:preserve-3d;-webkit-transform-style:preserve-3d;text-indent:-1000em;}
.box_act .back{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);}
.box_act .front{z-index:2;transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.box_act li.on .back, .box_act li.on .back{transform:rotateY(0deg);-webkit-transform:rotateY(0deg);}
.box_act li.on .front, .box_act li.on .front{transform:rotateY(180deg);-webkit-transform:rotateY(180deg);display:none\9;}
.motion .box_act li{opacity:1;}

.box_act.Xver li + li {margin-left:0;}
.box_act.Xver .back{transform:rotateX(180deg);-webkit-transform:rotateX(180deg);}
.box_act.Xver .front{z-index:2;transform:rotateX(0deg);-webkit-transform:rotateX(0deg);}
.box_act.Xver li.on .back, .box_act.Xver li.on .back{transform:rotateX(0deg);-webkit-transform:rotateX(0deg);}
.box_act.Xver li.on .front, .box_act.Xver li.on .front{transform:rotateX(180deg);-webkit-transform:rotateX(180deg);display:none\9;}

.link_area {position:relative;}
.link_area > img {margin-left:-30px;}
.link_area .a_link {position:absolute;left:413px;bottom:253px;width:170px;height:40px;font-size:0;}

/* 슬라이더 기본 css 시작 */
.slick-slider{position: relative;display: block;box-sizing: border-box;-webkit-user-select: none;-moz-user-select: none;-ms-user-select: none;user-select: none;-webkit-touch-callout: none;-khtml-user-select: none;-ms-touch-action: pan-y;touch-action: pan-y;-webkit-tap-highlight-color: transparent;}
.slick-list{position: relative;display: block;overflow: hidden;margin: 0;padding: 0;}
.slick-list:focus{outline: none;}
.slick-list.dragging{cursor: pointer;cursor: hand;}
.slick-slider .slick-track,
.slick-slider .slick-list{-webkit-transform: translate3d(0, 0, 0);-moz-transform: translate3d(0, 0, 0);-ms-transform: translate3d(0, 0, 0);-o-transform: translate3d(0, 0, 0);transform: translate3d(0, 0, 0); padding:0 !important}

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
.slider_div .slick-slide {transform:scale(0.8); opacity:0.3; transition:all 0.5s;}
.slider_div .slick-slide.slick-current {transform:scale(1); opacity:1;}
.slider_div p {background:#fff; border-radius:80px; display:inline-block; width:auto; margin:8px 0; padding:20px 110px; line-height:40px; font-weight:normal;  box-shadow: -2px 4px 14px 1px rgba(0, 0, 0, 0.2); -webkit-box-shadow: -2px 4px 14px 1px rgba(0, 0, 0, 0.2); -moz-box-shadow: -2px 4px 14px 1px rgba(0, 0, 0, 0.2); -o-box-shadow: -2px 4px 14px 1px rgba(0, 0, 0, 0.2); -ms-box-shadow: -2px 4px 14px 1px rgba(0, 0, 0, 0.2) ; letter-spacing:-1px; font-family: 'Noto Sans KR';}
.slider_div p span {position:relative; font-size:28px;}
.slider_div p span:after {position:absolute; left:-50px; top:-8px; content:''; display:block; width:32px; height:32px; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con02_icon01.png') 0 0 no-repeat;}


.con02_posi {position:absolute; top:0; left:0;}
.con02_posi.posi01 {left:10px;}
.con02_posi.posi02 {left:210px;}
.con02_posi.posi03 {left:450px; top:50px;}
.con02_posi.posi04 {left:535px;}
.con02_posi.posi05 {left:760px; top:10px; animation: udmotion 0.5s linear 0s infinite alternate;}
.con02_posi.posi06 {left:660px; top:125px; color:#ffd099; font-weight:bold; font-family: 'Gotham';}
.con02_posi.posi06 span {font-size:80px;}
.con02_posi.posi06 em {font-size:50px;}
.con02_posi.posi07 {left:237px; top:40px;}
.con02_posi.posi08 {left:5px; top:150px;}
.con02_posi.posi09 {left:695px; top:140px;}
    
@keyframes udmotion {
	0% {top: 10px;}
	100% {top: 0px;}
}

.bottom_wrap {font-family: 'Noto Sans KR';}
.bottom_wrap * {box-sizing:border-box;}
.bottom_wrap ul {}
.bottom_wrap ul li {width:680px; box-sizing:border-box; padding-left:150px; background:#004690 url('<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_bottom_check_off.png') 98px 50% no-repeat; border-radius:50px; font-size:31px; font-weight:bold; color:#467fba; font-weight:normal; height:60px; line-height:60px; margin:0 auto; text-align:left;}
.bottom_wrap ul li.on {background:#ffd099 url('<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_bottom_check_on.png') 98px 50% no-repeat; font-weight:bold; color:#004690}
.bottom_wrap ul li + li {margin-top:15px;}
.bottom_bg {background:#003c8a; position:relative; height:270px; padding-top:70px;}
.bottom_bg:after {position:absolute; top:-145px; left:50%; margin-left:-208px; content:''; display:block; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_bottom_img.png') 0 0 no-repeat; width:416px; height:184px;}

#div_con03 .inner:after {clear:both; content:''; display:block;}
.list_box {position:relative; z-index:1; margin:0 auto; width:1000px;}
.list_box:after {display:block; clear:both; content:'';}
.list_box li {display:inline-block; float:left; opacity:0; transition:all 0.5s;}
.list_box li.animate__animated {opacity:1; }
.list_box li + li {margin-left:20px;}
</style>


        
<script type="text/javascript">
	
    $(window).on({

        "load":function(){
            ani_scr();
            cam_list_act()

            var item = $('.bottom_list li');
            var item_l = item.length;
            var num = 0;

            function rolling(){

                if( num >= item_l-1 ){
                    num = 0;
                }else{
                    num = num + 1;
                }
                item.removeClass('on').eq(num).addClass('on');
            }

            setInterval(function(){
                rolling();
            }, 2500);
            

            //var temp_s = 0;
            var temp_s = $("#div_full").offset().top;

            $('html, body').animate({
                scrollTop: temp_s
            }, 500);

            ad_link();
            //cam_list_act();

            var fix_txt = $('.scroll .fix_bottom_area').html();
            $('.inner .fix_bottom_area').html(fix_txt);
            
            $('.counter').counterUp({
                delay: 11,
                time: 600
            });

            
            
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

    /* motion scroll */
    function ani_scr() {
            var winH = $(window).height();
            var scrT = $(window).scrollTop();
            var view_pos = winH + scrT
        
            $(".animation_element").each(function () {
                var elementH = $(this).outerHeight();
                var elementT = $(this).offset().top;
                var elementP = (elementT + elementH + 150);
        
                if ((elementP <= view_pos)) {
                    $(this).addClass("animation_set");

                }

                

            });
        }

        /* Scroll */
        function parallaxScroll(){
            
            var scrolled = $(window).scrollTop();
            
            //console.log($(".div_con5").offset().top-600,scrolled)

            if(scrolled > $(".div_con1").offset().top && scrolled < $(".div_con5").offset().top-800 ) {
                var motion8 = new TimelineMax({delay:0,repeat:0})
                motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"block"});
            }
            
            else if(scrolled > $(".div_con5").offset().top-800 || scrolled < $(".div_con1").offset().top) {
                
                var motion8 = new TimelineMax({delay:0,repeat:0})
                motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
            }

        
            else if(scrolled > $("#div_con06").offset().top + 150) {
                
                var motion6 = new TimelineMax({delay:0,repeat:0})
                motion6.to("#div_con06 .box_act01", 0.5, {className:"+=on"})
                    .to("#div_con06 .box_act02", 0.5, {className:"+=on"})
                    .to("#div_con06 .box_act03", 0.5, {className:"+=on"});
            }
        }
</script>


<style>
</style>
	
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
        
        <%If CDbl(GetNowDate()) < CDbl("2023"&"0218"&"140000") Then%> <!--2023-02-17 재수종합반 설명회 배너 타이머 설정 / 최민석-->
            <ul class="quick">
                <li><a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=21925" target="_blank"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/quick_top.png" alt="재수종합반 설명회"></a></li>
                <li><a href="#div_full"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/btn_quick_top.png" alt="top으로 이동"></a></li>
            </ul>
        <%End If%>

        

        <div id="div_cont">
            <!--2550-->
            <div id="div_full" class="div_con" style="height:2550px;position:relative; z-index:1;">
                <div class="top_wrap">
                    
                    
                    <div class="act_wrap">
                        <img class="txt act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_txt01.png" alt="" />
                        <img class="txt act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_txt02.png" alt="" />
                        <img class="txt act03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_txt03.png" alt="" />

                        <img class="txt act04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_img01.png" alt="" />
                        <img class="txt act04_1" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_img01_1.png" alt="" />
                        <img class="txt act05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_img02.png" alt="" />
                        <img class="txt act06" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_img03.png" alt="" />
                        <img class="txt act07" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_img04.png" alt="" />
                        <img class="txt act08" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_img05.png" alt="" />
                    </div>
                    
                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area">
                            
                        </div>
                    </div>



                    <!-- video -->
                    <div class="video_area">
                        <div class="video_content">
                            <iframe src='https://tv.naver.com/embed/37248746?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='1000' HEIGHT='562' allow='autoplay' allowfullscreen></iframe>

                        </div>
                    </div>

                    <div class="bottom_wrap">

                        <div class="img_wrap mt90 "><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_bottom_txt01.png" alt="" /></div>

                        <ul class="mt35 bottom_list ">
                            <li class="on">괄목할 만한 실적이 있는가?</li>
                            <li>수준 높은 강사진이 있는가?</li>
                            <li>학습 커리큘럼이 체계적인가?</li>
                            <li>개인 맞춤 종합 관리가 이뤄지는가?</li>
                        </ul>

                        <div class="bottom_bg mt100">
                            <div class="img_wrap animation_element b_to_t"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/top_bottom_txt02.png" alt="" /></div>
                        </div>
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

                <div class="div_con1" style="overflow:hidden; padding-bottom:120px;">
                    
                    <div class="div_con div_con1 bg_gray">
                        <div class="con taC">
                            
                            <div class="img_wrap mt100"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con01_title01.png" alt="" /></div>
    
                            <div class="graph_con mt90" style="background:#fff;">
                                <div class="graph_box_wrap graph_box_wrap01">
                                    <div class="graph_tlt">
                                        <p class="tlt"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con01_txt01.png" alt="" /></p>
                                    </div>
                                    <div class="area">
                                        <img class="graph graph01 animation_element b_to_t delay50" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img01_01.png" alt="" />
                                        <img class="graph graph02 animation_element b_to_t delay100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img01_02.png" alt="" />
                                        <img class="graph graph03 animation_element b_to_t delay150" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img01_01.png" alt="" />
                                        <img class="graph graph04 animation_element b_to_t delay200" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img01_02.png" alt="" />
                                        <img class="graph graph05 animation_element b_to_t delay250" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img01_01.png" alt="" />
                                        <img class="graph graph06 animation_element b_to_t delay300" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img01_02.png" alt="" />
                                            
                                        <img class="graph up_txt01 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_up01.png" alt="" />
                                        <img class="graph up_txt02 animation_element delay400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_up02.png" alt="" />
                                        <img class="graph up_txt03 animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_up03.png" alt="" />
                                        <img class="graph arrow01 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/arrow_img.png" alt="" />
                                        <img class="graph arrow02 animation_element delay400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/arrow_img.png" alt="" />
                                        <img class="graph arrow03 animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/arrow_img.png" alt="" />
    
                                    </div>
                                    <p class="ct_tlt tlt01">국어</p>
                                    <p class="ct_tlt tlt02">수학</p>
                                    <p class="ct_tlt tlt03">탐구</p>
                                    
                                    <img class="graph_cover cover01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_cover01.png" alt="" />
                                    <img class="graph_cover cover02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_cover02.png" alt="" />
                                </div>    
                                <!-- // -->
                                <div class="both_wrap">
                                    <div class="graph_box_wrap graph_box_wrap02">
                                        <div class="graph_tlt">
                                            <p class="tlt"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con01_txt02.png" alt="" /></p>
                                        </div>
                                        <div class="area">
                                            <img class="graph graph02_01 animation_element b_to_t delay500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img01_01.png" alt="" />
                                            <img class="graph graph02_02 animation_element b_to_t delay500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img01_02.png" alt="" />
                                            <!-- <img class="graph bg_up animation_element delay700" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/bg_up.png" alt="" /> -->
                                            <img class="graph up_txt02_01 animation_element delay600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_up04.png" alt="" />
                                            
                                            <img class="graph arrow04 animation_element delay400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/arrow_img.png" alt="" />

                                            <img class="graph txt01 animation_element delay400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_txt01.png" alt="" />
                                            <img class="graph txt02 animation_element delay400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_txt02.png" alt="" />
                                        </div>
                                        
                                        <img class="graph_cover cover01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_cover03.png" alt="" />
                                        <img class="graph_cover cover02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_cover04.png" alt="" />
                                    </div>    
                                    <div class="graph_box_wrap graph_box_wrap03">
                                        <div class="graph_tlt">
                                            <p class="tlt"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con01_txt03.png" alt="" /></p>
                                        </div>
                                        <div class="area">
                                            <img class="graph graph03_01 animation_element b_to_t delay500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img02_02.png" alt="" />
                                            <img class="graph up_txt03_01 animation_element delay600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_up05.png" alt="" />
                                        </div>
                                        
                                        <img class="graph_cover cover01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_cover05.png" alt="" />
                                    </div>    
                                </div>    
                                <!-- // -->
                                <div class="both_wrap">
                                    <div class="graph_box_wrap graph_box_wrap04">
                                        <div class="graph_tlt">
                                            <p class="tlt"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con01_txt04.png" alt="" /></p>
                                        </div>
                                        <div class="area">
                                            <img class="graph graph02_01 animation_element b_to_t delay500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img01_01.png" alt="" />
                                            <img class="graph graph02_02 animation_element b_to_t delay500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_img01_02.png" alt="" />
                                            <!-- <img class="graph bg_up animation_element delay700" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/bg_up.png" alt="" /> -->
                                            <img class="graph up_txt02_01 animation_element delay600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_up06.png" alt="" />
                                            
                                            <img class="graph arrow04 animation_element delay400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/arrow_img.png" alt="" />

                                        </div>
                                        
                                        <img class="graph_cover cover01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_cover03.png" alt="" />
                                        <img class="graph_cover cover02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/graph_cover04.png" alt="" />
                                    </div>    
                                </div>    
                                <!-- // -->

                                <p class="mt30 taC fz14 animation_element b_to_t" style="color:#888; font-weight:300;">※ 메가스터디학원 2023학년도 재원생 중, 2022/2023 수능 성적 확인이 가능한 3,985명 분석 결과</p>
                            </div>
                            
                        </div>
                    </div>

                </div>
                
                <div id="div_con02" class="div_con div_con02" style="background:#fff; overflow:hidden; padding-bottom:120px;">
                    
                    <div style="background:#fff; overflow:hidden;">
                    
                        <script type="text/javascript">
                        $(document).ready(function() {
                            
                            $('.center').slick({
                                infinite: true , 
                                autoplay: true,       
                                pauseOnHover:true, 
                            });
                            
                            /* con05 */
                            var rSlide = $('.slide_wrap');
                            var rItemw = $('.slide_wrap li').outerWidth(true);
                            var rNum = $('.slide_wrap li').length;
                        
                            var rSlidew = rItemw * rNum;
                            var rSpeed = 5000;
                            var rPause = false;
                        
                            //$('.slide_wrap').width(rSlidew);
                            
                            autoPlay();
                        
                            
                            //mouse in
                            $('.slide_wrap').on("mouseenter", function(){
                                rPause = true;
                            });
                            //mouse out
                            $('.slide_wrap').on("mouseleave", function(){
                                rPause = false;
                                autoPlay();
                            });
                        
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
                                                rSpeed = 5000 * position;
                                            };
                                        },
                                        complete : function(){
                                            $('.slide_wrap li').eq(0).appendTo(rSlide);
                                            rSlide.css('left', 0);
                                            rSpeed = 5000;
                                            autoPlay();
                                        }
                                    }
                                );
                            }
                            
                        });
                            
                        
                        </script>
                        <div class="div_con2">
                                    
                            <div class="taC con mt100 animation_element b_to_t" style="position:relative;">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con02_title01.png" alt="" /> 
                            </div>    
                            <div class="con mt80" style="position:relative; height:295px;">
                                <img class="animation_element l_to_r con02_posi posi01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con02_img01.png" alt="" /> 
                                <img class="animation_element l_to_r con02_posi posi02 delay100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con02_img02.png" alt="" /> 
                                <img class="animation_element l_to_r con02_posi posi03 delay200" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con02_img03.png" alt="" /> 
                                <img class="animation_element l_to_r con02_posi posi04 delay300" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con02_img04.png" alt="" />  
                                <img class="animation_element con02_posi posi05 delay500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con02_img05.png" alt="" /> 
                                <p class="animation_element con02_posi posi06 delay600 "><span class="counter">97.4</span><em>%</em></p>
                            </div>

                        
                            <div class="slide_area mt30">
                                <div class="slider_div"  >
                                    <div>
                                        <p class="round_b">
                                            <span>
                                                수준에 맞춘 수업과 열정 가득한 선생님들이 많아서<br>
                                                하루하루 힘이 납니다! 
                                            </span>
                                        </p>
                                    </div>
                                    <div>
                                        <p class="round_b">
                                            <span>
                                            선생님들의 수업 퀄리티와 학원에 형성된 전반적인 분위기가<br>
                                            매우 만족스럽습니다.</span>
                                        </p>
                                    </div>
                                    <div>
                                        <p class="round_b">
                                            <span>질의응답 체계가 잘 갖추어져 있어서<br>
                                                선생님께 질문하는 것이 편리했습니다. 
                                            </span>
                                        </p>
                                    </div>
                                    <div>
                                        <p class="round_b">
                                            <span>재수종합반에서 실력 있는 선생님들에게<br>
                                                수업을 들을 수 있어서 매우 좋습니다. 
                                            </span>
                                        </p>
                                    </div>
                                    <div>
                                        <p class="round_b">
                                            <span>강의력도 좋고, 시험 예상 문제 위주로 알려주셔서<br>
                                                수업의 질이 좋은 것 같습니다.
                                                </span>
                                        </p>
                                    </div>
                                    <div>
                                        <p class="round_b">
                                            <span>선생님들 수업을 듣다 보면 50분이 짧게 느껴질 정도라서,<br>
                                                믿고 따라가도 되겠다는 생각이 듭니다.
                                            </span>
                                        </p>
                                    </div>
                                    <div>
                                        <p class="round_b">
                                            <span>확실히 체계적인 교육 시스템과 강사진들의<br>
                                                학생에 대한 관심도가 만족스럽습니다.
                                            </span>
                                        </p>
                                    </div>
                                    <div>
                                        <p class="round_b">
                                            <span>선생님들께 질문하러 갈 때 한번도 거절 당한 적 없이<br>
                                                친절한 풀이 설명을 들을 수 있어서 좋았습니다. 
                                            </span>
                                        </p>
                                    </div>
                                    <div>
                                        <p class="round_b">
                                            <span>좋은 학습분위기와 선생님들의 좋은 강의로<br>
                                                성적이 향상되어서 늘 감사합니다.
                                            </span>
                                        </p>
                                    </div>
                                </div>
                                <script>
                                    $(function(){
                                        $('.slider_div').slick({
                                            slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
                                            infinite : true, 	//무한 반복 옵션	 
                                            slidesToShow : 3,		// 한 화면에 보여질 컨텐츠 개수
                                            slidesToScroll : 1,	
                                            centerMode : true,	//스크롤 한번에 움직일 컨텐츠 개수
                                            speed : 500,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
                                            arrows : false, 		// 옆으로 이동하는 화살표 표시 여부
                                            dots : false, 		// 스크롤바 아래 점으로 페이지네이션 여부
                                            autoplay : true,			// 자동 스크롤 사용 여부
                                            autoplaySpeed : 2000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
                                            pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
                                            vertical : true,		// 세로 방향 슬라이드 옵션
                                            
                                            draggable : false, 	//드래그 가능 여부 
                                        });
                                    })

                                </script>
                            </div>
                            

                            <div class="con" style="position:relative; height:400px;">
                                <img class="con02_posi posi07 animation_element delay100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con02_img06_01.png" alt="">
                                <img class="con02_posi posi08 animation_element delay200" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con02_img06_02.png" alt="">
                                <img class="con02_posi posi09 animation_element delay200" src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con02_img06_03.png" alt="">
                            </div>

                            <p class="taC fz14 animation_element b_to_t" style="color:#888; font-weight:300;">※ 2023학년도 재수종합반 만족도 조사 결과 & 주관식 문항 답변
                            </p>
                        </div>

                        <!-- con05 -->
                        <div id="div_con03" class="div_con3">
                            <div class="inner taC" style="padding-top:100px;">
                                <div class="animation_element b_to_t animation_set"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con03_title01.png" alt=""></div>
                            
                            <ul class="list_box mt80">
                                <li class="list01 animation_element l_to_r"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con03_img01.png" alt=""></li>
                                <li class="list02 animation_element"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con03_img02.png" alt=""></li>
                                <li class="list03 animation_element r_to_l"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con03_img03.png" alt=""></li>
                            </ul>

                            <div class="taC con mt50 animation_element b_to_t delay350">
                                <a href="https://campus.megastudy.net/campus_common/2023/2023_369pass/index.asp" target="_blank"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con03_btn01.png" alt="" /></a>
                            </div> 

                            </div>
                        </div>
                        <!-- con05 -->


                        <div class="div_con4">
                            <div class="con taC">
                                <div class="img_wrap mt100"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con04_title01.png" alt="" /></div>
                                <div class="img_wrap taC link_area">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con04_img01.png" alt="" />
                                    <a class="a_link" href="https://campus.megastudy.net/campus_common/2023/2023_map/index.asp" target="_blank">자세히 보기</a>
                                </div>
                            </div>
                        </div>

                        <!-- con05 -->
                        <div class="div_con05">
                            <div class="inner">

                    
                                <div class="taC con mt100">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_title01.png" alt="" />
                                </div>

                                <div class="taC con mt75">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_sub_title01.png" alt="" />
                                </div>

                                <div class="taC con mt60">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img01.png" alt="" />
                                </div>

                                <!--nonstop_slide-->
                                <div class="slide_area mt90" style="height:300px;">
                                    <ul class="slide_wrap">
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_01.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_02.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_03.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_04.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_05.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_06.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_07.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_08.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_09.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_10.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_11.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_12.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_13.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_14.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_15.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_16.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_17.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_18.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_19.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_20.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_21.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_22.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_23.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_24.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_25.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_26.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_27.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_28.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_29.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_30.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_31.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_32.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_33.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_34.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_35.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_36.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_37.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_38.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_39.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_40.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_41.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_42.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_43.png" alt=""  /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02_44.png" alt=""  /></li>
                                    </ul>
                                </div>
                                <!--nonstop_slide-->

                                <div class="taC con mt40 delay350">
                                    <a href="https://campus.megastudy.net/campus_common/2023/2023_megamentor/index.asp" target="_blank"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_btn01.png" alt="" /></a>
                                </div> 
        
                                
                                
                                <div class="taC con mt100 delay350">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_sub_title02.png" alt="" />
                                </div>
        
                                <div class="taC con mt60 delay450">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con05_img02.png" alt="" />
                                </div>
                            </div>
                        </div>
                        <!-- con05 -->
                        
                               
                        
                    </div>

                </div>
               
                

                <div id="div_con06" style="background:#e6f1f8; overflow:hidden; padding-bottom:120px;">

                    <div class="taC con mt100 animation_element b_to_t" style="position:relative;">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con07_title01.png" alt="" /> 
                    </div>    
                                 
                    <div class="taC con mt70 animation_element b_to_t delay250">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con07_img01.png" alt="" />
                    </div>                                 
                    <div class="taC con mt30 animation_element b_to_t delay250">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con07_img02.png" alt="" />
                    </div>                                 
                    <div class="taC con mt30 animation_element b_to_t delay250">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con07_img03.png" alt="" />
                    </div>
                </div>

				<div class="div_con5" id="link">
                    
                    <div class=" mt45">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_jaejung_gate/con06_title01.png" alt="" />
                    </div>
                    <div class="con taC"> 
                        <ul class="mt110">   
                            <li id="C01" class="cam_list"><a href="https://yangji.megastudy.net/yangji/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank">
                                
                                <div class="flag ver01">
                                    <span>대기접수</span>
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
                            <li id="C02" class="cam_list"><a href="https://seochob.megastudy.net/yangjim/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank">
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
                            <li id="C14" class="cam_list"><a href="https://ansung.megastudy.net/ansung/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank">
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
                            
                            <li id="C03" class="cam_list"><a href="https://gangnam.megastudy.net/gangnam/nsu/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank">
                                <!--<div class="flag">
                                    <span>확장 이전</span>
                                </div>-->
                                
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
                            <li id="C13" class="cam_list"><a href="https://seocho.megastudy.net/seocho/nsu/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank" >
                               
                                
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
                            <li id="C05" class="cam_list">
                            <a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2024/2024_jaejung/jaejung_02.asp" target="_blank" >
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
                            
							<li id="C04" class="cam_list"><a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank">
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
                            <li id="C11" class="cam_list"><a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank" >
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

								<a href="https://songpa.megastudy.net/songpa/nsu/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank">
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
                            </a></li>
                            <li id="C07" class="cam_list"><a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank">
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
                                <a href="https://bundang.megastudy.net/bundang/nsu/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank">
                                
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
								<a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank" >
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
								<a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2024/2024_jaejung/jaejung_01.asp" target="_blank" >
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

    
      
    <script src="/public/js/TweenMax.min.js"></script>   
    <script type="text/javascript">
	
        
	var motion1 = new TimelineMax({delay:0.2,repeat:0})
        motion1.to(".act01", 0.3, {opacity:1});
    var motion2 = new TimelineMax({delay:0.5,repeat:0})
        motion2.to(".act02", 0.5, {opacity:1, left:33, ease: Back.easeOut});	
    var motion3 = new TimelineMax({delay:0.5,repeat:0})
        motion3.to(".act03", 0.5, {opacity:1, left:31, ease: Back.easeOut});
        
    var motion4 = new TimelineMax({delay:1,repeat:0})
        motion4.to(".act04", 0.4, {opacity:1});
    var motion4_1 = new TimelineMax({delay:1,repeat:0})
        motion4.to(".act04_1", 0.4, {opacity:1});
    var motion5 = new TimelineMax({delay:1,repeat:0})
        motion5.to(".act05", 0.4, {opacity:1});
    var motion6 = new TimelineMax({delay:2,repeat:0})
        motion6.to(".act06", 0.7, {opacity:1, left:742, top:550});
    var motion7 = new TimelineMax({delay:1.5,repeat:0})
        motion7.to(".act07", 0.4, {opacity:1, left:759, top:395});
        
    var motion8 = new TimelineMax({delay:1,repeat:0})
        motion8.to(".act08", 0.4, {opacity:1});
    
      

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

<script src="/public/js/waypoints.min.js"></script>
<script src="/public/js/jquery.counterup.min.js"></script>

        
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
