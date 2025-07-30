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
@import url(animate.min.css);


/******************************************/

.of_hid {overflow:hidden;}
#div_full {background:#232ca3;}  
#div_cont {width:100%; text-align:center; clear:both; position:relative; 	overflow:hidden; font-family:"MalGun Gothic"; font-size:16px; letter-spacing:-0.5px; line-height:20px; color:#333;}    
#div_cont .con {width:1000px; margin:0 auto; position:relative;	z-index:1;}
#div_cont .top_bg {height:1914px; overflow:hidden;}

.top_wrap {width:100%; height:1914px; margin:0 auto;  position:absolute; z-index:3; top:0; text-align:center; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_bg.jpg') 50% top no-repeat; overflow:hidden;}  

.top_wrap .act_wrap {position:absolute; width:100%; height:930px; }
.top_wrap .act_wrap {position:relative; width:1000px; margin:0 auto;}

.top_wrap .act_wrap .txt {z-index:1; position:absolute; opacity:1; z-index:2;}
.top_wrap .act_wrap .act01 {left:0px; top:280px; opacity:1;}
.top_wrap .act_wrap .act01_01 {left:45px; top:105px; opacity:0;}
.top_wrap .act_wrap .act01_02 {left:334px; top:305px; opacity:0;}
.top_wrap .act_wrap .act01_03 {left:128px; top:630px; opacity:0;}
.top_wrap .act_wrap .act01_04 {left:-245px; top:430px; opacity:0;}
.top_wrap .act_wrap .act01_05_wrap {left:290px; top:280px; overflow:hidden; height:138px; width:800px;}
.top_wrap .act_wrap .act01_05 {left:0px; top:200px; opacity:0;}
.top_wrap .act_wrap .act01_06_wrap {left:290px; top:430px; overflow:hidden; height:138px; width:800px;}
.top_wrap .act_wrap .act01_06 {left:0px; top:-200px; opacity:0;}

.top_wrap .act_wrap .act02 {left:560px; top:153px; opacity:0; transform:scale(0.3);}

.top_wrap .act_wrap .act03 {left:-150px; top:-130px;}
.top_wrap .act_wrap .act04 {left:672px; top:640px;}
.top_wrap .act_wrap .act05 {left:-273px; top:-50px; animation: bounce3 6s ease-in-out infinite;}
.top_wrap .act_wrap .act06 {right:0px; top:-42px; animation: bounce3 8s ease-in-out infinite;}
.top_wrap .act_wrap .act07 {left:-636px; top:1180px; animation: bounce2 6s ease-in-out infinite;}
.top_wrap .act_wrap .act08 {left:-267px; top:917px; animation: bounce3 3s ease-in-out infinite;}
.top_wrap .act_wrap .act09 {right:-458px; top:919px; animation: bounce2 8s ease-in-out infinite;}
.top_wrap .act_wrap .act10 {right:-655px; top:780px; animation: bounce3 5s ease-in-out infinite;}


@keyframes bounce1 {
    0% {transform: translateX(0px);}
    50% {transform: translateX(-50px);}
    100% {transform: translateX(0px);}
}
@keyframes bounce2 {
    0% {transform: translateX(0px);}
    50% {transform: translateX(150px);}
    100% {transform: translateX(0px);}
}
@keyframes bounce3 {
    0% {transform: translateX(0px);}
    50% {transform: translateX(50px);}
    100% {transform: translateX(0px);}
}
@keyframes bounce4 {
    0% {transform: translateX(0px);}
    50% {transform: translateX(100px);}
    100% {transform: translateX(0px);}
}

.top_wrap .act_wrap .act07_01 {left:-1250px; top:335px; z-index:1; opacity:0.5; animation: bounce 3s ease-in-out infinite;}
.top_wrap .act_wrap .act07_02 {left:852px; top:990px; z-index:1; opacity:0.6; animation: bounce 2.5s ease-in-out infinite;}
@keyframes bounce {
    0% {transform: translateX(0px);}
    50% {transform: translateX(-50px);}
    100% {transform: translateX(0px);}
}
    
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
    height: 300px;
}
.slide_wrap {
    position: absolute;
    top: 0px;
    left: 0px;
    width: 8610px;
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
	position: relative;
	overflow: hidden;
    background:#f7edef;
}

.div_con4 {background:#fff; overflow:hidden; padding-bottom:120px;}

.div_con5 {
	background:#1c2394 url('<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con05_bg.jpg') 50% top no-repeat;
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
    line-height:19px;
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
	font-weight:500;
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
    
.circle_arrow {transform:rotate(0);}
.animation_element.animation_set .circle_arrow {animation:c_r 10s ease-out infinite;}


.circle_wrap {display:inline-block; float:left; position:relative}
.con01_wrap {display:inline-block; float:left; position:relative}
.con01_wrap + .con01_wrap {margin-left:30px;}

.circle {width: 287px;height: 265px;display: inline-block;position: relative;text-align: center;line-height: 1.2;}
.circle .txt{position: absolute;top:75px;left: 0;right: 0;text-align: center;color: #000;font-size: 22px;line-height: 29px;font-family: 'Noto Sans KR'; font-weight:300;}
.circle .txt strong{font-weight: bold;font-size: 22px;color: #000;font-family: 'Noto Sans KR'; position:relative;}
.circle .txt strong em {position:relative; z-index:1;}
.circle p {position: absolute;top: 95px;left: 0;width: 100%;text-align: center;font-family: 'Gotham'; }
.circle p .per {font-size: 54px;font-weight:bold;letter-spacing:-2.5px; text-indent:-28px;}
.circle p em {font-size: 35px;font-weight:300;display: inline-block;vertical-align:bottom; vertical-align:2px;}
.circle .circle01 p {color:#418ae0;}
.circle .circle02 p {color:#c07e89;}
.circle .circle03 p {color:#6967ea;}



@keyframes c_r {
	0% {transform:rotate(0deg);}
	100% {transform:rotate(360deg);}
}

/******************************************/









.div_con {
    
    position:relative;
    z-index:1;
}

    

.div_con2 {
    position: relative;
    background:#f1f1f1;
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
.fix_bottom_area ul p.title {width:100%; height:40px; line-height:37px; color:#fff; background:linear-gradient(135deg, #8b89ff, #6eb0fe); font-weight:bold; font-size:19px; text-align:center; margin-bottom:15px;}
  
/* 2022.08.18 */
/* .fix_bottom_wrap.inner {position:absolute; bottom:130px; z-index:1; width:1000px;max-width:1000px;height:auto;left:50%; margin-left:-500px;box-sizing:border-box;z-index:10;} */
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
.fix_bottom_wrap.inner .fix_bottom_area ul p.title {width:100%;max-width:100%; height:45px; line-height:45px; color:#fff; background:linear-gradient(135deg, #8b89ff, #6eb0fe); font-weight:bold; font-size:18px; text-align:center;margin-bottom:0;}
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
.video_content{position:relative;margin-top:100px;}

.graph_con {position:relative;}
   .graph_con:after {clear:both; display:block; content:'';}
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
    

/* .div_con3 {position:relative;padding: 100px 0;}
.div_con3 .con {position:relative; width:1000px; margin:0 auto;} */

.graph_box_wrap{padding: 50px 30px;position: relative;height:440px;  width: 490px;display:inline-block; float:left; background: #fff; box-sizing:border-box;}
.graph_box_wrap .area {width:430px;height:245px;overflow:hidden;position: absolute;right: 30px;bottom:75px; border-bottom: 1px solid #787878;}
.graph_box_wrap .graph_tlt{text-align: center;}
.graph_box_wrap .bot_label{position: absolute;left: 50px;bottom: 50px;}


.graph_con .ct_tlt{color: #666;font-family: 'Noto Sans KR';font-size: 15px;font-weight:300;position: absolute;top: 370px; z-index:2; font-weight:400;}
.graph_con .ct_tlt.tlt01_01{left: 290px;}
.graph_con .ct_tlt.tlt01{right: 360px;}
.graph_con .ct_tlt.tlt02{right: 240px;}
.graph_con .ct_tlt.tlt03{right: 107px;}
.graph_box_wrap01 .area{width: 200px;height:200px;right:45px;}
.graph_box_wrap + .graph_box_wrap {margin-left:20px;}

.graph.graph01_01{left: 23px; bottom:-55px;}
.graph.graph01_02{left: 145px;}
.graph.up_txt01_01{left:65px;bottom: 12px;}
.graph.txt01_01{left: 22px;bottom: 81px;}
.graph.txt01_02{left: 144px;bottom: 173px;}
.graph.arrow01_01{left: 70px;bottom: 3px;}

.graph_box_wrap01 .ct_txt{color: #888888;font-family: 'Noto Sans KR';font-size: 14px;position: absolute;right: 150px;bottom: 25px;font-weight: 0;letter-spacing: 0;}

.graph {position:absolute; bottom:-1px; z-index:1;}
.graph.graph01 {left:20px;}
.graph.graph02 {left:80px;}
.graph.graph03 {left:160px; bottom:-35px;}
.graph.graph04 {left:220px;}
.graph.graph05 {left:300px; bottom:-18px;}
.graph.graph06 {left:360px;}
    
.graph.graph07 {left:144px;}
.graph.graph08 {left:359px; z-index:1;}
.graph.graph09 {left:955px; z-index:1;}

.graph.up_txt01 {left:32px;bottom:15px;}
.graph.up_txt02 {left:173px;bottom:15px; z-index:2;}
.graph.up_txt03 {left:312px;bottom:15px;}

.graph.txt01 {left:23px; bottom:135px; }
.graph.txt02 {left:84px; bottom:174px;}
.graph.txt03 {left:164px; bottom:103px;}
.graph.txt04 {left:222px; bottom:174px;}
.graph.txt05 {left:303px; bottom:119px;}
.graph.txt06 {left:362px; bottom:174px;}

.graph.arrow01 {left:37px; bottom:3px; z-index:2;}
.graph.arrow02 {left:177px; bottom:3px; z-index:2;}
.graph.arrow03 {left:320px; bottom:3px; z-index:2;}

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

</style>
<script type="text/javascript">
	
	
	
    $(window).on({
        "load":function(){
            ani_scr();
            cam_list_act()

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
			var elementP = (elementT + elementH + 200);
	
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
        
        if(scrolled > $(".div_con5").offset().top-800 || scrolled < $(".div_con1").offset().top) {
            
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
        }

	
		if(scrolled > $("#div_con06").offset().top + 150) {
            
            var motion6 = new TimelineMax({delay:0,repeat:0})
            motion6.to("#div_con06 .box_act01", 0.5, {className:"+=on"})
                   .to("#div_con06 .box_act02", 0.5, {className:"+=on"})
                   .to("#div_con06 .box_act03", 0.5, {className:"+=on"});
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
        
        <!--
    	<ul class="quick">
            <li><a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=21486" target="_blank"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/quick_top.png" alt="윈터스쿨 설명회"></a></li>
            <li><a href="#div_full"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/btn_quick_top.png" alt="top으로 이동"></a></li>
        </ul>
        -->

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

            <div id="div_full" class="div_con" style="height:1914px; position:relative; z-index:1;">
                <div class="top_wrap">
                    
                    
                    <div class="act_wrap">
                        <img class="txt act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_txt01.png" alt="" />

                        <img class="txt act01_01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_txt01_01.png" alt="" />
                        <img class="txt act01_02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_txt01_02.png" alt="" />
                        <img class="txt act01_03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_txt01_04.png" alt="" />
                        <img class="txt act01_04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_txt01_03.png" alt="" />

                        <div class="txt act01_05_wrap">
                            <img class="txt act01_05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_txt01_05.png" alt="" />
                        </div>
                        <div class="txt act01_06_wrap">
                            <img class="txt act01_06" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_txt01_06.png" alt="" />
                        </div>

                        <img class="txt act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_txt02.png" alt="" />
                        

                        <img class="txt act03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_img01.png" alt="" />
                        <img class="txt act04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_img02.png" alt="" />
                        <img class="txt act05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_img03.png" alt="" />
                        <img class="txt act06" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_img04.png" alt="" />
                        <img class="txt act07" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_img05.png" alt="" />
                        <img class="txt act08" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_img06.png" alt="" />
                        <img class="txt act09" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_img07.png" alt="" />
                        <img class="txt act10" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_img08.png" alt="" />

                    </div>
                    
                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area">
                            
                        </div>
                    </div>



                    <!-- video -->
                    <div class="video_area">
                        <div class="video_content">
                            <iframe src='https://tv.naver.com/embed/30656411?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='1000' HEIGHT='562' allow='autoplay' allowfullscreen></iframe>

                            <img class="animation_element b_to_t mt100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/top_txt04.png" alt="" />
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

                <div class="div_con1" style="overflow:hidden; background:#e0e6f5; padding-bottom:120px;">
                    <div class="taC con mt100 animation_element b_to_t" style="position:relative;">
                        <img class="title01 " src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con01_title01_01.png" alt="" /> 
                    </div>    

                    <div class="taC con mt30 animation_element b_to_t delay250">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con01_title01_02.png" alt="" />
                    </div>

                    <div class="taC con mt65 of_hid">
                        <div class="con01_wrap animation_element l_to_r delay450">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con01_img01_01.png" alt="" />
                        </div>
                        
                        <div class="con01_wrap animation_element delay450 ">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con01_img01_02.png" alt="" />
                        </div>                        
                        
                        <div class="con01_wrap animation_element r_to_l delay450">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con01_img01_03.png" alt="" />
                        </div>
                    </div>

                    <p class="mt30 taC fz14 animation_element b_to_t" style="color:#888; font-weight:300;">※ 2022, 2023학년도 재수종합반 재원생 기준 / 복수대학 합격자 포함 / 주요 대학 : 서성한이+중경외시+건동홍숙+교대<br>※ UPDATE : 2022. 10. 11 기준</p>

                    
                    <div class="div_con bg_gray mt90">
                        <div class="con taC">
                            <div class="graph_con">
                                <div class="graph_box_wrap graph_box_wrap01 animation_element l_to_r">
                                    <p class="ct_tlt tlt01_01">국수탐 평균 성적</p>
                                    <div class="graph_tlt">
                                        <p class="tlt"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con01_img01.png" alt="" /></p>
                                        <p class="bot_label"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con01_img03.png" alt="" /></p>
                                    </div>
                                    <div class="area">
                                        <img class="graph graph01_01 animation_element b_to_t delay50" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_img01.png" alt="" />
                                        <img class="graph graph01_02 animation_element b_to_t delay100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_img01_up.png" alt="" />
                                            
                                        <img class="graph up_txt01_01 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/up_txt01.png" alt="" />
                                        <img class="graph arrow01_01 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/arrow_img01.png" alt="" />
                                            
                                        <img class="graph txt01_01 animation_element" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_txt01.png" alt="" />
                                        <img class="graph txt01_02 animation_element" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_txt02.png" alt="" />
                                    </div>
                                </div>    
                                <!-- // -->
                                <div class="graph_box_wrap animation_element r_to_l">
                                    
                                    <p class="ct_tlt tlt01">국어</p>
                                    <p class="ct_tlt tlt02">수학</p>
                                    <p class="ct_tlt tlt03">탐구</p>
                                    <div class="graph_tlt">
                                        <p class="tlt"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con01_img02.png" alt="" /></p>
                                    </div>
                                    <div class="area">
                                        <img class="graph graph01 animation_element b_to_t delay50" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_img02.png" alt="" />
                                        <img class="graph graph02 animation_element b_to_t delay100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_img02_up.png" alt="" />
                                        <img class="graph graph03 animation_element b_to_t delay150" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_img02.png" alt="" />
                                        <img class="graph graph04 animation_element b_to_t delay200" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_img02_up.png" alt="" />
                                        <img class="graph graph05 animation_element b_to_t delay250" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_img02.png" alt="" />
                                        <img class="graph graph06 animation_element b_to_t delay300" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_img02_up.png" alt="" />
                                            
                                        <img class="graph up_txt01 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/up_txt02.png" alt="" />
                                        <img class="graph up_txt02 animation_element delay400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/up_txt03.png" alt="" />
                                        <img class="graph up_txt03 animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/up_txt04.png" alt="" />
                                        <img class="graph arrow01 animation_element delay350" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/arrow_img02.png" alt="" />
                                        <img class="graph arrow02 animation_element delay400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/arrow_img02.png" alt="" />
                                        <img class="graph arrow03 animation_element delay450" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/arrow_img02.png" alt="" />
                                            
                                        <img class="graph txt01 animation_element" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_txt03.png" alt="" />
                                        <img class="graph txt02 animation_element" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_txt04.png" alt="" />
                                        <img class="graph txt03 animation_element" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_txt05.png" alt="" />
                                        <img class="graph txt04 animation_element" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_txt06.png" alt="" />
                                        <img class="graph txt05 animation_element" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_txt07.png" alt="" />
                                        <img class="graph txt06 animation_element" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/graph_txt08.png" alt="" />
                                    </div>
                                </div>    
                                <!-- // -->
                            </div>

                            <p class="mt30 taC fz14 animation_element b_to_t" style="color:#888; font-weight:300;">※ 메가스터디학원 2022학년도 재원생 중, 2021학년도/2022학년도 수능 실성적 비교 가능 학생 2,932명 분석 결과(계열 변경 재원생 제외)<br>※ 탐구영역 : 2과목 평균</p>
                        </div>
                    </div>
                </div>
                
                <div id="div_con02" class="div_con div_con02" style="background:#fff; overflow:hidden; padding-bottom:120px;">
                    
                    <div class="taC con mt100 animation_element b_to_t" style="position:relative;">
                        <img class="title01 " src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_title01_01.png" alt="" /> 
                    </div>    

                    <div class="taC con mt30 animation_element b_to_t delay250">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_title01_02.png" alt="" />
                    </div>

                    <div class="taC con mt85 animation_element b_to_t delay350">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_sub_title01.png" alt="" />
                    </div>

                    <div class="taC con mt25 animation_element b_to_t delay450">
                        <img style="position:absolute; top:0; left:50%; margin-left:-354px; z-index:2;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img01_01.png" alt="" />
                        <img class="circle_arrow" style="position:absolute; top:167px; left:50%; margin-left:-178px; z-index:1;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img01_02.png" alt="" />
                    </div>
                    <div style="height:655px;"></div>

                    <div class="taC con mt40 animation_element b_to_t delay250">
                        <a href="https://campus.megastudy.net/campus_common/2020_megamentor/index.asp" target="_blank"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_btn01.png" alt="" /></a>
                    </div>
                        
                    <div class="taC con mt100 animation_element b_to_t delay350">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_sub_title02.png" alt="" />
                    </div>

                    <!-- con05 -->
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

                        <div class="line_box mt60 animation_element b_to_t delay250" style="overflow:hidden"> 
                            <!-- con05 -->
                            <div class="div_con05">
                                <div class="inner">
                                    <!--nonstop_slide-->
                                    <div class="slide_area">
                                        <ul class="slide_wrap">
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img01.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img02.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img03.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img04.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img05.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img06.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img07.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img08.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img09.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img10.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img11.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img12.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img13.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img14.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img15.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img16.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img17.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img18.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img19.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img20.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img21.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img22.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img23.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img24.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img25.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img26.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img27.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img28.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img29.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img30.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img31.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img32.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img33.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img34.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img35.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img36.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img37.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img38.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img39.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img40.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img41.png" alt=""  /></li>
                                            <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img42.png" alt=""  /></li>
                                        </ul>
                                    </div>
                                    <!--nonstop_slide-->
                                </div>
                            </div>
                            <!-- con05 -->
                        </div>
                        
                               
                        <div class="taC con mt40 animation_element b_to_t delay350">
                            <a href="https://campus.megastudy.net/campus_common/nsu/megamentor/index.asp" target="_blank"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_btn02.png" alt="" /></a>
                        </div> 

                        
                        
                        <div class="taC con mt100 animation_element b_to_t delay350">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_sub_title03.png" alt="" />
                        </div>

                        <div class="taC con mt60 animation_element b_to_t delay450">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con02_img43.png" alt="" />
                        </div>
                    </div>

                </div>
                <!-- con05 -->
                
                <div class="div_con3">                    
                    <div class="taC con mt100 animation_element b_to_t" style="position:relative;">
                        <img class="title01 " src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con03_title01_01.png" alt="" /> 
                    </div>    

                    <div class="taC con mt30 animation_element b_to_t delay250">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con03_title01_02.png" alt="" />
                    </div>

                    <div class="taC con mt80 animation_element b_to_t delay250" style="position:relative; padding-bottom:120px;">
                        <img style="position:absolute; top:0; left:50%; margin-left:-500px;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con03_img01.png" alt="" />
                    </div>
                    <div style="height:461px;"></div>
                </div>
                
                <div class="div_con4">
            
                    <div class="taC con mt100 animation_element b_to_t" style="position:relative;">
                        <img class="title01 " src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con04_title01_01.png" alt="" /> 
                    </div>    

                    <div class="taC con mt30 animation_element b_to_t delay250">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con04_title01_02.png" alt="" />
                    </div>

                    <div class="taC con mt85 animation_element b_to_t delay350">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con04_img01_01.png" alt="" />
                    </div>

                    <div class="taC con mt65 circle">
                        <div class="circle_wrap circle01 delay450">
                            <p><span class="per">98.9</span><em>%</em></p>
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con04_img02_01.png" alt="" />
                        </div>
                        
                        <div class="circle_wrap circle02 delay450">
                            <p><span class="per">97.7</span><em>%</em></p>
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con04_img02_02.png" alt="" />
                        </div>                        
                        
                        <div class="circle_wrap circle03 delay450">
                            <p><span class="per">98.1</span><em>%</em></p>
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con04_img02_03.png" alt="" />
                        </div>
                    </div>


                    <p class="taC animation_element b_to_t fz15 delay450" style="color:#888;">※ 2023학년도 재수 우선선발반 만족도 조사 결과</p>
                    
                </div>

                <div id="div_con06" style="background:#e0e6f5; overflow:hidden; padding-bottom:120px;">

                    <div class="taC con mt100 animation_element b_to_t" style="position:relative;">
                        <img class="title01 " src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con05_title01_01.png" alt="" /> 
                    </div>    

                    <div class="taC con mt30 animation_element b_to_t delay250">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con05_title01_02.png" alt="" />
                    </div>
                    
  
                    
                                        
                    <ul class="box_act Xver mt90">
                        <li class="box_act01">
                            <div class="flipper">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con05_img01.png" alt="" class="front">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con05_img01.png" alt="" class="back">
                            </div>
                        </li>
                        <li class="box_act02">
                            <div class="flipper">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con05_img02.png" alt="" class="front">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con05_img02.png" alt="" class="back">
                            </div>
                        </li>
                        <li class="box_act03">
                            <div class="flipper">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con05_img03.png" alt="" class="front">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con05_img03.png" alt="" class="back">
                            </div>
                        </li>
                    </ul>
                    <div class="taC con mt30 animation_element b_to_t delay250">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con05_img04.png" alt="" />
                    </div>
                </div>

				<div class="div_con5" id="link">
                    
                    
                    <div class=" mt100 animation_element b_to_t">
                        <img class="mt30" src="<%=Application("img_path")%>/library/campus_common/2024/2024_nsufirst_gate/con06_title01.png" alt="" />
                    </div>
                    <div class="con taC"> 
                        <ul>   
                            <li id="C01" class="cam_list"><a href="https://yangji.megastudy.net/yangji/nsu/2023/2024_nsufirst/nsufirst_01.asp" target="_blank">
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
                            <li id="C02" class="cam_list"><a href="https://seochob.megastudy.net/yangjim/nsu/2023/2024_nsufirst/nsufirst_01.asp" target="_blank">
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
                            <li id="C14" class="cam_list"><a href="https://ansung.megastudy.net/yangji/nsu/2023/2024_nsufirst/nsufirst_01.asp" target="_blank">
                                <div class="flag ver01">
                                    <span>신규<br>개원</span>
                                </div>
                                
								<p class="title"><span><strong>안성 기숙</strong></span></p>
                                <div class="info_wrap">
                                    <div class="info">
                                        <p>
                                            <span class="sub_txt">문의</span>031-678-9200
                                        </p>
                                    </div>
                                </div>
                            </a></li>
                        </ul>
						
						<ul>
                            
                            <li id="C03" class="cam_list"><a href="https://gangnam.megastudy.net/gangnam/nsu/nsu/2023/2024_nsufirst/nsufirst_01.asp" target="_blank">
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
                            <li id="C13" class="cam_list"><a href="https://seocho.megastudy.net/seocho/nsu/nsu/2023/2024_nsufirst/nsufirst_01.asp" target="_blank" >
                               
                                
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
                            <li id="C05" class="cam_list"><a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2023/2024_nsufirst_pre/nsufirst_01.asp" target="_blank" >
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
                            
							<li id="C04" class="cam_list"><a href="javascript:alert('11. 21(월) 오픈 예정입니다.');">
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
                            <li id="C11" class="cam_list"><a href="javascript:alert('11. 21(월) 오픈 예정입니다.');" >
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

								<a href="https://songpa.megastudy.net/songpa/nsu/nsu/2023/2024_nsufirst_pre/nsufirst_01.asp" target="_blank">
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
                            <li id="C07" class="cam_list"><a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2023/2024_nsufirst_pre/nsufirst_01.asp" target="_blank">
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
                                <a href="https://bundang.megastudy.net/bundang/nsu/nsu/2023/2024_nsufirst/nsufirst_01.asp" target="_blank" >
                                
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
								<a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2023/2024_nsufirst/nsufirst_01.asp" target="_blank" >
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
								<a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2023/2024_nsufirst_pre/nsufirst_01.asp" target="_blank" >
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
        motion1.to(".act01", 0.3, {opacity:1, top:280});

	var motion1_1 = new TimelineMax({delay:0.2,repeat:0})
        motion1_1.to(".act01_01", 0.5, {opacity:1, top:305, ease: Back.easeOut});
	var motion1_2 = new TimelineMax({delay:0.2,repeat:0})
        motion1_2.to(".act01_02", 0.5, {opacity:1, left:134, ease: Back.easeOut});
	var motion1_3 = new TimelineMax({delay:0.2,repeat:0})
        motion1_3.to(".act01_03", 0.5, {opacity:1, top:430, ease: Back.easeOut});
	var motion1_4 = new TimelineMax({delay:0.2,repeat:0})
        motion1_4.to(".act01_04", 0.5, {opacity:1, left:45, ease: Back.easeOut});
        
	var motion1_5 = new TimelineMax({delay:0.8,repeat:0})
        motion1_5.to(".act01_05", 0.5, {opacity:1, top:0});
	var motion1_6 = new TimelineMax({delay:0.8,repeat:0})
        motion1_6.to(".act01_06", 0.5, {opacity:1, top:0});
        
	var motion2 = new TimelineMax({delay:1.3,repeat:0})
        motion2.to(".act02", 0.5, {opacity:1,transform:"scale(1)", ease:Elastic.easeOut.config(0.9,0.3)});

        /*
    var motion3 = new TimelineMax({delay:1,repeat:0})
        motion3.to(".act03", 0.4, {opacity:1, top:-130});
    var motion4 = new TimelineMax({delay:1,repeat:0})
        motion4.to(".act04", 0.4, {opacity:1, top:640});
    var motion5 = new TimelineMax({delay:1,repeat:0})
        motion5.to(".act05", 0.4, {opacity:1, top:-50});
    var motion6 = new TimelineMax({delay:1,repeat:0})
        motion6.to(".act06", 0.4, {opacity:1});
    var motion7 = new TimelineMax({delay:1,repeat:0})
        motion7.to(".act07", 0.4, {opacity:1, bottom:580});
    var motion8 = new TimelineMax({delay:1,repeat:0})
        motion8.to(".act08", 0.4, {opacity:1});
    var motion9 = new TimelineMax({delay:1,repeat:0})
        motion9.to(".act09", 0.4, {opacity:1, top:640});
    var motion10 = new TimelineMax({delay:1,repeat:0})
        motion10.to(".act10", 0.4, {opacity:1, top:640});
    */
/*
    var motion4_1 = new TimelineMax({delay:1.4,repeat:0})
        motion4_1.to(".act04_01", 0.3, {opacity:1, top:475, ease: Back.easeOut})
        .to(".act04_02", 0.3, {opacity:1, top:475, ease: Back.easeOut})
        .to(".act04_03", 0.3, {opacity:1, top:475, ease: Back.easeOut})
        .to(".act04_04", 0.3, {opacity:1, top:475, ease: Back.easeOut});

    var motion5_1 = new TimelineMax({delay:2.6,repeat:0})
        motion5_1.to(".act05_01", 0.5, {opacity:1, left:224});

    var motion5_2 = new TimelineMax({delay:2.6,repeat:0})
        motion5_2.to(".act05_02", 0.5, {opacity:1, left:525});

    var motion6 = new TimelineMax({delay:3.1,repeat:0})
        motion6.to(".act06", 0.5, {opacity:1, left:683, top:514});
    var motion6_1 = new TimelineMax({delay:5.2,repeat:0})
        motion6_1.to(".act06_01", 0.8, {opacity:1, left:41});
    var motion6_2 = new TimelineMax({delay:4.4,repeat:0})
        motion6_2.to(".act06_02", 0.8, {opacity:1, left:644});
    var motion6_3 = new TimelineMax({delay:3.6,repeat:0})
        motion6_3.to(".act06_03", 0.8, {opacity:1, left:843});
*/      
        
        
      
    
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

<script src="/public/js/waypoints.min.js"></script>
<script src="/public/js/jquery.counterup.min.js"></script>

        
<script type="text/javascript">
	
	$(document).ready(function(){

		

		// rolling result wrap 
		$('.per').counterUp({
			delay: 30,
			time: 1000
		});

		
	});



</script>
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
