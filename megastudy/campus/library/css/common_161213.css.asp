@import url("style.css");

html,body{width:100%; height:100%;}
body,textarea,button,input,select,pre{color:#333; font-size:13px; font-family:"MalGun Gothic","맑은고딕",dotum; font-weight:normal; -webkit-text-size-adjust:none; }
body,div,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,p,form,fieldset,input,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0; padding:0;}
textarea,button,input{ border:0;}
button::-moz-focus-inner {padding:0;border:0;} /*파이어폭스 버튼 전용*/
/*select{-webkit-appearance: none; -moz-appearance: none; appearance: none;}*/
ul,ol,li{list-style:none}
img, fieldset{border:none; vertical-align:top}
/*legend,caption{width:1px; overflow:hidden; font-size:0; line-height:0; text-indent:-9999px; line-height:0;}*/
a{text-decoration:none; color:inherit;}
a:hover, a:focus, a:active, a:visit {text-decoration:none;}
table{width:100%; border-collapse:collapse; border-spacing:0;}
table td,table th{vertical-align:top;}
button{margin:0; padding:0; background:none; cursor:pointer; border:none;}
em{font-style:normal;}
/* HTML5 display-role reset for older browsers */
article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block;}
pre{white-space: pre-wrap; word-wrap: break-word;}

.db {display:block;}
.blind{display:block; position:absolute; top:-9999px; left:-9999px; width:1px; height:1px; overflow:hidden; font-size:0; text-indent:-9999px; line-height:0; }
.irDesc{display:block; position:relative; z-index:-1; font-size:12px;}
.ellipsis{overflow:hidden; white-space:nowrap; text-overflow:ellipsis;}/*display:block; */

/* 간격, 폰트 */
.p0 {padding:0 !important;}
.pl5 {padding-left:5px !important;}
.pl10 {padding-left:10px !important;}
.pl15 {padding-left:15px !important;}
.ml40 {margin-left:40px !important;}
.mt2{margin-top:2px !important}
.mt5{margin-top:5px !important}
.mt10{margin-top:10px !important}
.mt13{margin-top:13px !important}
.mt15{margin-top:15px !important}
.mt20{margin-top:20px !important}
.mt25{margin-top:25px !important}
.mt30{margin-top:30px !important}
.mt35{margin-top:35px !important}
.mt40{margin-top:40px !important}
.mt45{margin-top:45px !important}
.mt50{margin-top:50px !important}
.mt55{margin-top:55px !important}
.mt60{margin-top:60px !important}
.mt65{margin-top:65px !important}
.mt70{margin-top:70px !important}
.mt75{margin-top:75px !important}
.mt80{margin-top:80px !important}
.mt85{margin-top:85px !important}
.mb5{margin-bottom:5px !important}
.mb10{margin-bottom:10px !important}
.mb15{margin-bottom:15px !important}
.mb40{margin-bottom:40px !important}
.ml5{margin-left:5px !important}
.ml20{margin-left:20px !important}
.ml25{margin-left:25px !important}
.font_jaehak {color:#2896f0 !important;}
.font_rusel {color:#06c49f !important;}
.font_nsu {color:#eb3b4b !important;}
.font_gisuk {color:#AB8212 !important;}
.font_grey {color:#949ba7 !important;}
.font_purple {color: #4a68ba;}
.font_purple2{color:#b245c9;}
.font_blue{color:#8fa8d5 !important;}
.font_blue2{color:#0000ff !important;}
.font_blue3{color:#366cc6 !important;}
.font_blue4{color:#0561ac !important;}
.font_blue5{color:#157FAA !important;}
.font_blue6{color:#0f48a9 !important;}
.font_red{color:#eb3b4b !important}
.font_red2{color:#ec2e02 !important;}
.font_pink{color:#996666;}
.font_magenta {color:#e01279;}
.font_white {color:#fff !important;}
.font_green{color:#009944;}
.font_orange {color:#FF7012;}
.font_br{color:#927132;}
.font_br2{color:#a57313}
.font_br3{color:#998675}
.font_st{color:#333;}
.font_kor{font-family:"MalGun Gothic"}
.font_dotum11 {font-family:dotum, 돋음체; font-size:11px !important;line-height:11px !important;}
.font_num{font-family:"Arial";letter-spacing:0.7px !important;}
.fz11 {font-size:11px !important;letter-spacing:-0.1px !important;}
.fz12 {font-size:12px !important;letter-spacing:-0.1px !important;}
.fz13 {font-size:13px !important;}
.fz14 {font-size:14px !important;}
.fz15 {font-size:15px !important;}
.fz16 {font-size:16px !important;}
.fz17 {font-size:17px !important;}
.fz18 {font-size:18px !important;}
.fz19 {font-size:19px !important;}
.fz20 {font-size:20px !important;letter-spacing:-1px;}
.fz21 {font-size:21px !important;letter-spacing:-1px;}
.fz22 {font-size:22px !important;letter-spacing:-1px;}
.fz23 {font-size:23px !important;letter-spacing:-1px;}
.fz24 {font-size:24px !important;letter-spacing:-1px;}
.fz25 {font-size:25px !important;letter-spacing:-1px;}
.ls_25 {letter-spacing:-0.25px;}
.ls_5 {letter-spacing:-0.5px;}
.fb {font-weight:bold !important;}
.fn {font-weight:normal !important;}
.lh140 {line-height:140% !important;}

.bc_lRD {background-color:#fbe8e7 !important;}
.bc_lOR {background-color:#ffeedf !important;}
.bc_lYL {background-color:#fef8e1 !important;}
.bc_lGN {background-color:#f0f6e3 !important;}
.bc_lBL {background-color:#e9f6fa !important;}
.bc_lNV {background-color:#e1ebf6 !important;}
.bc_lVT {background-color:#ece7f4 !important;}
.bc_lPK {background-color:#fbe8f0 !important;}
.bc_lGY {background-color:#f5f5f5 !important;}
.bc_DGY {background-color:#eeeeee !important;}
.bc_LlNV {background-color:#f3f6ff !important;}
.bc_YLW{background:#fffde2;}/*2016-11-07추가*/


/* 정렬 */
.taC{text-align:center !important;}
.taR{text-align:right !important;}
.taL{text-align:left !important;}
.fl{float:left !important;}
.fr{float:right !important;}
.clear{}
.clear:after{clear:both; display:block; content:''; *zoom:1;}
.vm{vertical-align:middle !important;}
.vt{vertical-align:top !important;}
.brk{ word-wrap:break-word; word-break:break-all; }

/* skip navi */
.skip{display:block; position:absolute; top:-9999px; left:0; z-index:9999; width:100%; background:#354053; text-align:center; line-height:1.8; color:#eee;}
.skip:hover,.skip:focus,.skip:active{position:absolute; top:0; padding:10px 0; color:#eee;}

/* 기본 layout 구조 */
#wrapper{position:relative; min-width:1230px; width:100%; margin:0 auto;}/* min-width:1230px;*/
#wrapper.w1{min-width:1370px !important; }/* 2016-11-09 서초일 경우에만 */
#mainContainer{background:#f6f6f6; width:100%;}
#container{border-bottom:1px solid #ebebeb; overflow:hidden; padding:0;}
/*#container:after{clear:both; display:block; content:''; *zoom:1;}*/
.contentWrap{position:relative; z-index:1; width:1030px; margin:0 auto; padding:33px 0 80px 0; }
.contentWrap:after{clear:both; display:block; content:''; *zoom:1; height:0; visibility:hidden;}
#footer{padding-bottom:34px;}
#footer.bLine{border-top:1px solid #ebebeb; padding-top:10px;}

/* globalNav */
#globalNav{width:100%; position:relative; background:#3b4048;}
.globalMenu{width:1030px; height:35px; margin:0 auto; overflow:hidden;}
.globalMenu.intro{width:1100px;}
.globalMenu a{color:#f6f6f6; font-size:12px;}
.globalMenu .home{float:left; overflow:hidden; margin-top:10px;}
.globalMenu .home li a{display:block; height:14px; line-height:12px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_common.png") no-repeat; padding-left:20px;}
.globalMenu .home li{float:left; margin-right:12px;}
.globalMenu .home .first a{background-position:0 0;}
.globalMenu .home .favorite a{background-position:0 -30px;}
.globalMenu .util{float:right; overflow:hidden; margin-top:7px;}
.globalMenu .util ul{float:left; overflow:hidden; margin-right:10px;}
.globalMenu .util ul li{float:left; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_common.png") no-repeat 0 -53px; padding:0 10px 0 13px}
.globalMenu .util ul li:first-child{background:none;}
.globalMenu .util .link_quick{float:left;}

/* header */
#header{position:relative; z-index:200; min-height:97px; background:#fff; border-bottom:1px solid #e5e5e5;}/*min-height:126px; */
/* color type */
#header.type_red{border-bottom:4px solid #eb3b4b;}
#header.type_red .gnbWrap h2{background:#eb3b4b;}
#header.type_blue{border-bottom:4px solid #2896f0;}
#header.type_blue .gnbWrap h2{background:#2896f0;}
#header.type_brown{border-bottom:4px solid #a29274;}
#header.type_brown .gnbWrap h2{background:#a29274;}
/* 2016-11-04 추가 */
#header.type_purple{border-bottom:4px solid #b245c9;}
#header.type_purple .gnbWrap h2{background:#b245c9;}
/* // 2016-11-04 추가 */
.topHead{position:relative; width:1030px; min-width:1030px; height:97px; margin:0 auto;}
.topHead.intro{width:1100px;}
.topHead h1{position:absolute; top:30px; left:0;}
.topHead .gnbMenu{top:36px; right:187px;}
/* 레이어 팝업 */
.layerPop_intro {position:relative; width:1100px; min-width:1100px;top:137px;left:50px; margin:0 auto; z-index:101;}
.layerPop {position:relative; width:1030px; min-width:1030px;top:150px;left:50px; margin:0 auto; z-index:301;}
.layerPop_bottom {display:block;height:28px;padding:0;margin:0;background-color:#384151;color:#c3cad2;font-family:dotum,'돋움','돋움체';font-size:11px;letter-spacing:-0.5px;}
.layerPop_bottom .check{float:left;height:28px;line-height:28px;padding:0 0 0 10px;}
.layerPop_bottom .check input {vertical-align:middle;width:12px;height:12px;border:1px solid #384151;}
.layerPop_bottom .check span {position:relative;top:1px;left:5px;line-height:28px;vertical-align:middle;}
.layerPop_bottom .closed{float:right;height:28px;line-height:28px;padding:0 10px 0 0;width:49px;background:url('https://img.megastudy.net/campus/library/v2015/library/common/pop_closed_1.png') no-repeat 38px center;cursor:pointer;}
.layerPop_bottom .closed span {position:relative;top:1px;right:0;line-height:28px;vertical-align:middle;}
/* 메가스터디 바로가기 */
.topHead .quick_megaStudy{position:absolute; top:35px; right:0; z-index:500; width:200px; padding-bottom:3px;}
.topHead .quick_megaStudy.box{background:url("https://img.megastudy.net/campus/library/v2015/library/common/bg/bg_quick_box.png") no-repeat left bottom;}
.topHead .quick_megaStudy .link_txt{display:block; line-height:2.2em;  font-size:13px; padding-left:10px; height:30px; letter-spacing:-0.25px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_quick_mega.png") no-repeat;}
.topHead .quick_megaStudy .link_txt.on{background-position:0 -40px}
.topHead .quick_megaStudy a{color:#555;}
.quick_megaStudy .mega_view{position:relative; z-index:100; background:#f3f3f3; border-left:1px solid #ccc; border-right:1px solid #ccc; padding:12px 10px 0;}
.quick_megaStudy .mega_view>a{display:block; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_common.png") no-repeat 0 -80px; padding-left:17px; height:14px; line-height:12px;}
.quick_megaStudy .mega_view .mega_list{padding:9px 0 3px;}
.quick_megaStudy .mega_view .mega_list .tit{display:block; height:23px; background:#696e77; color:#fff; font-weight:normal; line-height:21px; padding:0 10px; margin-bottom:4px;}
.quick_megaStudy .mega_view .mega_list .tit.jaehak{background:#2896f0;}
.quick_megaStudy .mega_view .mega_list .tit.rusel{background:#1fd7b3;}
.quick_megaStudy .mega_view .mega_list .tit.nsu{background:#eb3b4b;}
.quick_megaStudy .mega_view .mega_list .tit.gisuk{background:#a29274;}
.quick_megaStudy .mega_view .mega_list .tit_sub{display:block; height:16px; padding:3px 5px 1px 5px;font-family:dotum, 돋음체; font-size:11px;line-height:16px !important;overflow:hidden; background:#fff; color:#848484; border:1px solid #dbdbdb; margin-left:3px;}
.quick_megaStudy .mega_view .mega_list .tit_sub .cvLine{color:#dbdbdb; padding:0 0 0 1px;}
.mega_list .mega_sub{overflow:hidden; margin:0 0 10px; padding:0 0 0 2px; font-size:12px;}
.mega_list .mega_sub li{float:left; padding:0 4px; line-height:20px;}
.mega_list .mega_sub li a.current {font-weight:bold;}
/* color type */
#header.type_red .topHead,
#header.type_blue .topHead,
#header.type_brown .topHead,
#header.type_purple .topHead{height:80px;}
#header.type_red .topHead h1,
#header.type_blue .topHead h1,
#header.type_brown .topHead h1,
#header.type_purple .topHead h1{top:25px;}
#header.type_red .topHead .quick_megaStudy,
#header.type_blue .topHead .quick_megaStudy,
#header.type_brown .topHead .quick_megaStudy,
#header.type_purple .topHead .quick_megaStudy{top:25px;}

/* top banner 2016-11-09 추가*/
.topbnr{width:100%; text-align:center;}
.topbnr.skyblue{background:#20dbe3;}
.topbnr.mpg{background:url("https://img.megastudy.net/campus/library/v2015/library/seocho/banner/bnr_top_mpg_bg.jpg") repeat;}

/* gnb */
.gnbWrap{position:relative; z-index:300; width:1030px; height:46px; overflow:visible; margin:0 auto;}
.gnbWrap h2{float:left; width:202px; height:46px; color:#fff;font-size:18px; line-height:44px; text-align:center; font-weight:bold;}
.gnbMenu{position:absolute; top:0; right:0; height:auto;}
.gnbMenu>ul{padding-right:30px;}
.gnbMenu>ul>li{float:left; position:relative; margin:0 15px; padding-top:2px;}
.gnbMenu>ul>li>a{display:block; height:46px; font-size:17px; font-weight:bold; letter-spacing:-0.25px;}
.gnbMenu>ul>li .subMenu{display:none; position:absolute; top:34px; left:50%; width:182px; margin-left:-93px;}
/*.gnbMenu>ul>li .subMenu{display:none; position:absolute; top:34px; left:-50px; width:167px;}
.gnbMenu>ul>li.g3 .subMenu{left:-65px}*/
.gnbMenu>ul>li .subMenu ul{margin-top:13px; padding:2px 10px 0;}
.gnbMenu>ul>li .subMenu ul li{height:34px; border-top:1px dotted #7f7f7f;}
.gnbMenu>ul>li .subMenu ul li:first-child{border-top:0;}
.gnbMenu>ul>li .subMenu ul li>a{display:block; height:34px; line-height:34px; font-size:13px; color:#333; padding:0 11px;}
/* 2016-11-09 추가 */
.gnbMenu.type2>ul>li{margin:0 10px;}
.gnbMenu.type2>ul>li>a{font-size:16px; letter-spacing:-1.3px;}
/* // 2016-11-09 추가 */
/* color type */
#header.type_red .gnbWrap .gnbMenu>ul>li:hover>a,#header.type_red .gnbWrap .gnbMenu>ul>li>a.on,
#header.type_red .gnbMenu>ul>li .subMenu ul li>a:hover{color:#eb3b4b;}
#header.type_red .gnbWrap .gnbMenu>ul>li .subMenu{background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_gnb_red.png") no-repeat center 0;}
#header.type_red .gnbWrap .gnbMenu>ul>li .subMenu ul{ border-bottom:4px solid #eb3b4b;}
#header.type_blue .gnbWrap .gnbMenu>ul>li:hover>a,#header.type_blue .gnbWrap .gnbMenu>ul>li>a.on,
#header.type_blue .gnbMenu>ul>li .subMenu ul li>a:hover{color:#2896f0;}
#header.type_blue .gnbWrap .gnbMenu>ul>li .subMenu{background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_gnb_blue.png") no-repeat center 0;}
#header.type_blue .gnbWrap .gnbMenu>ul>li .subMenu ul{ border-bottom:4px solid #2896f0;}
#header.type_brown .gnbWrap .gnbMenu>ul>li:hover>a,#header.type_brown .gnbWrap .gnbMenu>ul>li>a.on,
#header.type_brown .gnbMenu>ul>li .subMenu ul li>a:hover{color:#a29274;}
#header.type_brown .gnbWrap .gnbMenu>ul>li .subMenu{background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_gnb_brown.png") no-repeat center 0;}
#header.type_brown .gnbWrap .gnbMenu>ul>li .subMenu ul{ border-bottom:4px solid #a29274;}
#header.type_purple .gnbWrap .gnbMenu>ul>li:hover>a,#header.type_purple .gnbWrap .gnbMenu>ul>li>a.on,
#header.type_purple .gnbMenu>ul>li .subMenu ul li>a:hover{color:#b245c9;}
#header.type_purple .gnbWrap .gnbMenu>ul>li .subMenu{background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_gnb_purple.png") no-repeat center 0;}
#header.type_purple .gnbWrap .gnbMenu>ul>li .subMenu ul{ border-bottom:4px solid #b245c9;}


/* gnb  전체보기 메뉴 */
.ir_btn{background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat;}
.gnbWrap .btn_allView{position:absolute; top:8px; right:0; width:19px; height:15px; background-position:0 0px;}

#header .allView{position:absolute; top:130px; left:0; width:100%; padding:29px 0 0; background:#fff; border-bottom:1px solid #ccc;}/*height:341px; */
.siteMapWrap{position:relative; width:1030px; margin:0 auto;}
.siteMapWrap h2{display:inline-block; padding:0 33px 0 11px; color:#333; font-size:25px; letter-spacing:-1px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_common.png") no-repeat right -108px;}
.siteMapWrap .btn_mapClose{position:absolute; top:8px; right:16px; width:24px; height:24px; background-position:-40px 0px;}
.siteMapWrap .siteMap{overflow:hidden; margin-top:35px; padding:0 10px;}
.siteMapWrap .siteMap .listDiv{float:left; width:145px; height:300px; border-right:1px dashed #ccc; padding-left:15px;}
.siteMap .listDiv h3{font-size:22px; letter-spacing:-1px; margin-top:-6px;}
.allView.type2 .siteMap .listDiv h3{font-size:20px;}
.siteMap .listDiv h3.mt40{margin-top:35px;}
.siteMap .listDiv a{color:#333;}
.siteMap .listDiv ul{margin-top:15px; padding:0 5px 0 3px;}
.siteMap .listDiv ul li{line-height:27px;}
.siteMap .listDiv ul li a{font-size:13px;letter-spacing:-0.5px;}

/* 메인 알림 */
.mainSlideWrap{position:relative; width:100%; height:370px; overflow:hidden; border-bottom:1px solid #ccc; background:#fff;}
.mainSlideWrap .topContact{position:relative; z-index:10; width:1030px; margin:0 auto;}
.mainSlideWrap .topContact .contactBox{position:absolute; top:0; left:0; width:142px; height:234px; padding:28px 30px 32px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/bg/bg_main_contact.png") repeat }
.contactBox strong{display:block; color:#fff; font-size:22px;letter-spacing:-1px; line-height:30px; font-weight:normal; padding:0 4px;}
.contactBox ul{margin-top:18px; padding:0 4px;}
.contactBox ul li{color:#b3d8ed; font-size:15px; line-height:23px; white-space:nowrap;}
.contactBox .btns{position:absolute; bottom:32px; left:30px;}
.contactBox .btns a{display:block; width:142px; height:29px; color:#000; font-size:15px; text-align:center; line-height:27px;}
.contactBox .btns a.btn_link1{background:#91b3c6; margin-bottom:6px;}
.contactBox .btns a.btn_link2{background:#58778f;}

/* 메인슬라이드 */
.mainSlideWrap .slideContent{position:relative; height:294px; overflow:hidden; background:#000;}
.mainSlideWrap .slideContent li{position:absolute; top:0; left:0; width:100%; height:294px; }
.mainSlideWrap .slideContent li .slideView{}
.mainSlideWrap .slideMenuBar{position:absolute; bottom:0; left:0; width:100%; height:76px; overflow:hidden;}
.mainSlideWrap .slideMenuBar .slideMenu{position:relative; width:1030px; margin:0 auto}
.slideMenubtn .btn_mainLink {position:absolute;top:0;left:0;display:inline-block;width:202px;height:64px;z-index:1;margin:0;padding:28px 0 0 0;background:#3d4757;line-height:17px;color:#fff;text-align:center;}
.slideMenubtn .btn_mainLink strong {display:inline-block;height:20px;background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/icon_greyarrow.png") no-repeat left top;padding:0 0 0 30px;}
.slideMenubtn .btn_mainLink strong:hover {border-bottom:1px solid #fff;padding-bottom:2px;}
.slideMenubtn2 .btn_mainLink {position:absolute;top:0;left:0;display:inline-block;width:202px;height:77px;z-index:1;margin:0;padding:15px 0 0 0;background:#3d4757;line-height:17px;color:#fff;text-align:left;}
.slideMenubtn2 .L1 {display:inline-block;top:10px;margin-left:37px;}
.slideMenubtn2 .L2 {display:inline-block;margin:5px 0 0 37px;}
.slideMenubtn2 .L3 {display:inline-block;top:10px;margin-left:28px;}
.slideMenubtn2 .L4 {display:inline-block;margin:5px 0 0 28px;}
.slideMenubtn2 .btn_mainLink strong {display:inline-block;height:20px;background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/icon_greyarrow.png") no-repeat left top;padding:0 0 0 28px;cursor:pointer;}
.slideMenubtn2 .btn_mainLink a:link {color:#fff;}
.slideMenubtn2 .btn_mainLink a:visited {color:#fff;}
.slideMenubtn2 .btn_mainLink a:hover {color:#91b3c6;}
/*.slideMenu .btn_mainLink{display:block; position:absolute; top:13px; left:0; width:182px; height:52px; padding-left:20px; color:#fff; font-size:15px; line-height:45px; letter-spacing:-0.5px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_mainlink.png") repeat;}*/
.slideMenu ul{overflow:hidden; padding-left:213px;}
.slideMenu ul li{float:left; width:199px; height:74px;}
.slideMenu ul li a{display:block; height:57px; padding:17px 0 0;color:#999; line-height:20px; letter-spacing:-0.25px; text-align:center; font-size:13px;}
.slideMenu ul li em{display:block;}
.slideMenu ul li span{display:block;margin-top:3px;font-weight:normal !important;}
.slideMenu ul li em{font-size:17px;}
.slideMenu ul li.active a{color:#444;font-weight:bold;}
/* 2016-11-04 추가 */
.mainSlideWrap.promotion{width:577px; height:455px; border-bottom:0; overflow:visible;}
.mainSlideWrap.promotion:after{position:absolute; left:0; bottom:-10px; z-index:5;display:block; content:''; width:100%; height:10px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/bg/bg_shadow.png") no-repeat 0 0;}
.mainSlideWrap.promotion .slideContent,.mainSlideWrap.promotion .slideContent li{height:455px;}
.mainSlideWrap.promotion .slideMenuBar{bottom:30px; height:11px;}
.mainSlideWrap.promotion .slideMenuBar .slideMenu{width:100%; z-index:100;}
.mainSlideWrap.promotion .slideMenu ul{text-align:center; overflow:hidden; padding-left:0;}
.mainSlideWrap.promotion .slideMenu ul li{float:none; display:inline-block; text-align:center; width:11px; height:11px; overflow:hidden; margin:0 3px 0 2px}
.mainSlideWrap.promotion .slideMenu ul li a{display:block; height:9px; padding:0; overflow:hidden; border:1px solid #d6d6d6; background:url("/library/v2015/library/common/bg/transparent.gif") repeat}
.mainSlideWrap.promotion .slideMenu ul li.active a{color:#444;font-weight:bold; border:1px solid #d6d6d6; background:#d6d6d6;}
.mainSlideWrap.promotion .slideMenu ul li a span.blind{margin:0;}
/* // 2016-11-04 추가 */

/* color type */
#mainContainer.type_red .slideMenu ul li.active{border-bottom:2px solid #eb3b4b;}
#mainContainer.type_blue .slideMenu ul li.active{border-bottom:2px solid #2896f0;}
#mainContainer.type_brown .slideMenu ul li.active{border-bottom:2px solid #a29274;}

/* 메인컨텐츠 */
.mainContent{width:1030px; margin:0 auto; padding:51px 0;}
.noticeWrap{width:835px;}
.noticeWrap ul{overflow:hidden;}
.noticeWrap ul li{position:relative; float:left; width:260px; height:291px; border:1px solid #dcdcdc; background:#fff; margin:0 16px 27px 0;}
.noticeWrap ul li .view{padding:29px 17px 25px; height:203px; overflow:hidden; border:2px solid #fff; border-bottom:0;}
.noticeWrap ul li .view a{display:block;}
.noticeWrap ul li .view .img{display:block; position:relative; width:224px; height:126px; overflow:hidden; margin-bottom:19px;}
.noticeWrap ul li .view .img .btn_imgmore{display:block; position:absolute; bottom:0; right:0; width:21px; height:21px; text-indent:-999px; background-position:0 -50px}
.noticeWrap ul li .view .img.explain{color:#fff; background:url("https://img.megastudy.net/campus/library/v2015/library/common/bg/bg_notice1.png") no-repeat 0 0;}
.noticeWrap ul li .view .img.explain span{display:block;}
.noticeWrap ul li .view .img.explain .tit{font-weight:bold; font-size:17px; line-height:33px; margin:12px 0 14px; padding:0 0 0 30px;}
.noticeWrap ul li .view .img.explain .txt{color:#fff; font-size:12px; letter-spacing:-1px; padding:0 10px;}
.noticeWrap ul li .view .txt{color:#333; font-size:12px; line-height:18px;}
.noticeWrap ul li .view .txt.list{font-size:13px; color:#333; line-height:20px;}
.noticeWrap ul li .view .txt.list .tit{color:#666;}
.noticeWrap ul li .view .img.info{color:#333; font-size:17px; line-height:22px; font-weight:bold; background:url("https://img.megastudy.net/campus/library/v2015/library/common/bg/bg_notice2.png") no-repeat 0 0;}
.noticeWrap ul li .view .img.info span{display:block; padding:25px 18px  25px;}
.noticeWrap ul li .view .img .btn_play{display:block; position:absolute; top:0; right:0; width:224px; height:126px; text-indent:-999px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_play.png") no-repeat 0 0;}
.noticeWrap ul li .view .txt.desc{font-size:12px; line-height:18px;}
.noticeWrap ul li .bottom{position:absolute; bottom:0px; left:0px; z-index:1; width:228px; height:30px; line-height:30px; overflow:hidden; background:#f6f6f6; border-top:0; padding:0 14px 0 18px;font-family:verdana;color:#999;font-size:11px;}
.noticeWrap ul li .bottom .btn_more{background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_common.png") no-repeat right -210px; padding-right:15px;}
.noticeWrap ul li .label_hot{display:none;}
.noticeWrap ul li.hot .label_hot{display:block; position:absolute; top:0px; right:0px; z-index:2; display:block; width:46px; height:42px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_main_hot.png") no-repeat 0 0; text-indent:-9999px;}
.noticeWrap ul li.hot .view{border:0px solid #eb3b4b; border-bottom:0;}
.noticeWrap ul li.hot .bottom{border:0px solid #eb3b4b; border-top:0;}
/* color type */
#mainContainer.type_red .noticeWrap ul li.hot{border:1px solid #dcdcdc;}
#mainContainer.type_red .noticeWrap ul li.hot .label_hot{background-color:#eb3b4b}
#mainContainer.type_red .noticeWrap ul li.hot .view,
#mainContainer.type_red .noticeWrap ul li.hot .bottom{border-color:#eb3b4b;}
#mainContainer.type_red .noticeWrap ul li .view .img.explain{background-position:0 0;}
#mainContainer.type_blue .noticeWrap ul li.hot{border:1px solid #dcdcdc;}
#mainContainer.type_blue .noticeWrap ul li.hot .label_hot{background-color:#2896f0}
#mainContainer.type_blue .noticeWrap ul li.hot .view,
#mainContainer.type_blue .noticeWrap ul li.hot .bottom{border-color:#2896f0;}
#mainContainer.type_blue .noticeWrap ul li .view .img.explain{background-position:0 -150px;}
#mainContainer.type_blue .noticeWrap ul li .view .img.info{background-position:0 -150px;}
#mainContainer.type_brown .noticeWrap ul li.hot{border:1px solid #dcdcdc;}
#mainContainer.type_brown .noticeWrap ul li.hot .label_hot{background-color:#a29274}
#mainContainer.type_brown .noticeWrap ul li.hot .view,
#mainContainer.type_brown .noticeWrap ul li.hot .bottom{border-color:#a29274;}
#mainContainer.type_brown .noticeWrap ul li .view .img.explain{background-position:0 -300px;}
#mainContainer.type_brown .noticeWrap ul li .view .img.info{background-position:0 0;}
/* 2016-11-04 추가 */
.contactDiv{position:relative; padding:63px 0 0 29px; min-height:340px;}
.contactDiv strong{display:block; font-size:24px; line-height:28px; white-space:nowrap; letter-spacing:-1.5px; padding-left:9px;}
.contactDiv strong span{color:#b245c9;}
.contactDiv ul{position:absolute; left:28px; bottom:0;}
.contactDiv ul li{padding-left:10px;  margin-bottom:5px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/bl_list6.gif") no-repeat 0 10px; color:#333; font-size:15px;}
.contactDiv ul li.line{border-bottom:1px solid #dcdcdc; padding:0 0 12px 10px; margin-bottom:9px;}
.quickMenu{overflow:hidden; margin-top:48px; border-top:1px dotted #dcdcdc; overflow:hidden;}
.quickMenu ul{overflow:hidden;}
.quickMenu ul li{float:left; width:100px; margin-left:-1px; padding:21px 0 16px; border-left:1px dotted #dcdcdc; border-bottom:1px dotted #dcdcdc;}
.quickMenu ul li a{display:block; text-align:center; color:#333; font-size:13px; font-weight:bold;}
.quickMenu ul li .txt{display:block; margin-top:5px;}
.quickMenu ul li .img{display:block; width:60px; height:40px; margin:0 auto; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_quick.png") no-repeat}
.quickMenu ul li .img.ico_student{background-position:0 0;}
.quickMenu ul li .img.ico_pay{background-position:-80px 0;}
.quickMenu ul li .img.ico_schedule{background-position:0 -78px;}
.quickMenu ul li .img.ico_food{background-position:-80px -78px;}
.containerWrap{position:relative; width:1030px; margin:0 auto; padding:50px 0;}
.section_left{float:left; width:201px; border-top:3px solid #333; border-left:1px solid #ddd; background:#fff; border-bottom:1px solid #ddd;}
.section_main{float:left; width:577px; background:#fff; border-bottom:1px solid #ddd;}
.mainColumn{}
.mainColumn .col{float:left; border-left:1px solid #dcdcdc; min-height:200px;}
.mainColumn .column_left{width:288px;}
.mainColumn .column_right{width:287px;}
.col_box{position:relative; border-top:1px solid #ddd; padding:33px 20px 37px 30px;}
.col_box>a{display:block;}
.col .col_box:first-child,.section_right .col_box:first-child{border-top:0}
.col_box .more{position:absolute; top:42px; right:36px; display:block; width:9px; height:9px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_more.gif") no-repeat; text-indent:-9999px;}
.col_box h4{color:#333; font-size:18px; letter-spacing:-.25px;}
.col_box .subtxt{display:block; color:#333; font-size:18px; letter-spacing:-.50px; line-height:22px;}
.col_box .subtxt.t1{line-height:19px;}
.col_box .img_notice{display:block; height:145px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_notice.png") no-repeat center top;}
.col_box .ico_teach{display:block; height:145px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_teaching.png") no-repeat center top;}
.col_box .desc{color:#6d6d6d; font-size:13px; letter-spacing:-1px; line-height:16px;}
.col_box .desc.mt10{margin-top:12px !important}
.section_right{position:relative; float:right; width:249px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/bg/bg_column.gif") repeat; border-bottom:1px solid #ddd; border-right:1px solid #ddd; border-left:1px solid #ddd;}
.section_right .banner{position:relative; margin-left:-1px; width:251px; background:#ddd;}
.section_right .col_box{padding:33px 25px 37px 20px;}
.section_right .col_box .more{right:20px}
.section_right .col_box.introduce{height:220px; background:url("https://img.megastudy.net/campus/library/v2015/library/yangjim/campus/bg_col_intro.png") no-repeat 0 bottom;}
.section_right .col_box.introduce .desc{margin-top:115px; letter-spacing:-1px;}
.col_box .noticeList{width:210px; overflow:visible; margin-top:24px;}
.col_box .noticeList li{padding-left:8px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/bl_list6.gif") no-repeat 0 8px; line-height:18px; margin-top:6px;}
.col_box .noticeList li:first-child{margin-top:0;}
.col_box .noticeList li>a{display:inline-block; max-width:200px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis; letter-spacing:-.50px; padding-right:3px;}
.col_box .noticeList li>a.new{max-width:183px;}
.col_box .noticeList li .date{display:block; font-size:12px; color:#999;}
.col_box .noticeList li .ico_new{display:inline-block; vertical-align:top; width:13px; height:12px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_new.gif") no-repeat; text-indent:-9999px; margin-top:3px;}
.col_box .noticeList.campus li{border-top:1px solid #dcdcdc; margin-top:11px; padding-top:10px;}
.col_box .noticeList.campus li{background-position:0 18px;}
.col_box .noticeList.campus li:first-child{border-top:0; margin-top:0; padding-top:0; background-position:0 8px;}
.col_box .noticeList.campus li .img{display:block; border:1px solid #c5c5c5; margin:8px 0 5px -10px; text-align:center; background:#efefef; width:210px; height:70px; overflow:hidden;}
.col_box .noticeList.campus li .img img{width:100%; height:100%; }
/* // 2016-11-04 추가 */

/* linemap */
.lineMapArea{width:100%; height:37px; background:#f6f6f6; overflow:hidden;}
.lineMapArea .lineMap{width:1030px; margin:0 auto; text-align:right; padding-top:8px;}
.lineMap span,.lineMap em{color:#777; font-size:13px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_common.png") no-repeat 0 -185px; padding-left:16px; margin-left:7px;}
.lineMap .home{background-position:0 -157px; padding-left:20px;}
.lineMap .current{color:#777; font-weight:normal;}

/* 사이드메뉴 */
.sideArea{float:left; width:195px;}
.sideArea h2{font-size:26px; letter-spacing:-1px;}
.sideArea .sideMenuList{margin-top:14px; border-top:3px solid #424c5d;  border-bottom:1px solid #7f8692; overflow:hidden;}
.sideArea.eng h2{font-size:35px; font-family:verdana; font-weight:normal;}
.sideArea.eng .sideMenuList{margin-top:8px;}
.sideMenuList>ul{margin-bottom:-1px;}
.sideMenuList>ul>li{}
.sideMenuList>ul>li>a{position:relative; display:block; min-height:18px; line-height:18px; font-size:15px; border-bottom:1px solid #dcdcdc; padding:15px 25px 15px 9px;}
.sideMenuList>ul>li>a.current{font-weight:bold;}
.sideMenuList>ul>li>a.current:after{display:block; content:''; position:absolute; top:50%; right:9px; width:11px; height:13px; margin-top:-7px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side.png") no-repeat left -220px;}
/*.sideMenuList>ul>li>a{display:block; height:48px; line-height:48px; font-size:15px; border-bottom:1px solid #dcdcdc; padding:0 9px;}*/
/*.sideMenuList>ul>li>a.current{font-weight:bold; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side.png") no-repeat right -203px;}*/
.sideMenuList>ul>li.notice a{border-top:3px solid #3b4048; margin-top:-1px;}
.sideMenuList .sub{padding:0 10px 10px; margin:12px 0 0; border-bottom:1px solid #dcdcdc;}
.sideMenuList .sub li{margin-bottom:2px;}
.sideMenuList .sub li a{display:block; font-size:13px; line-height:22px; height:22px; word-break:break-all; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side.png") no-repeat 10px -180px; padding:0 20px;}
.sideMenuList .sub li a.current{font-weight:bold; background:#f6f6f6 url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side.png") no-repeat  10px -180px}
/*color type*/
.sideArea.type_red .sideMenuList{border-top:3px solid #eb3b4b;}
.sideArea.type_red .sideMenuList>ul>li>a.current:after{background-position:left top;}
/*.sideArea.type_red .sideMenuList>ul>li>a.current{background-position:right 17px;}*/
.sideArea.type_red .sideMenuList .sub li a.current{color:#eb3b4b; background-position:10px -120px;}
.sideArea.type_blue .sideMenuList{border-top:3px solid #2896f0;}
.sideArea.type_blue .sideMenuList>ul>li>a.current:after{background-position:left -40px;}
/*.sideArea.type_blue .sideMenuList>ul>li>a.current{background-position:right -23px;}*/
.sideArea.type_blue .sideMenuList .sub li a.current{color:#2896f0; background-position:10px -140px;}
.sideArea.type_brown .sideMenuList{border-top:3px solid #a29274;}
.sideArea.type_brown .sideMenuList>ul>li>a.current:after{background-position:left -80px;}
/*.sideArea.type_brown .sideMenuList>ul>li>a.current{background-position:right -63px;}*/
.sideArea.type_brown .sideMenuList .sub li a.current{color:#b9995d; background-position:10px -160px;}
.sideArea.type_purple .sideMenuList{border-top:3px solid #b245c9;}
.sideArea.type_purple .sideMenuList>ul>li>a.current:after{background-position:left -260px;}
.sideArea.type_purple .sideMenuList .sub li a.current{color:#b245c9; background-position:10px -290px;}
.btn_online{display:block; width:165px; height:62px; color:#fff; font-size:17px; line-height:54px ; padding-left:30px; letter-spacing:-0.25px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_online.png");}

/* 사이드 하단 배너 */
.sideBnr{border:1px solid #dcdcdc; border-bottom:none; border-top:none; background:#fff; width:193px;}
.sideBnr ul{}
.sideBnr ul li:first-child{border-top:1px solid #dcdcdc;}
.sideBnr ul li{border-bottom:1px solid #dcdcdc; height:69px; background-position:21px 17px; background-repeat:no-repeat;}
.sideBnr ul li a{display:block; height:69px; letter-spacing:-1px; font-size:15px; line-height:38px; color:#333;}/*padding:15px 0 15px 70px; height:38px;*/
/*.sideBnr ul li.blog{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_blog.png");}*/
/* 재수정규 
.sideBnr ul li.status{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_status.png");}
.sideBnr ul li.case{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_case.png");}
.sideBnr ul li.nsu_memoir{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_nsumemoir.png");}
.sideBnr ul li.nsu_sche{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_nsusche.png");}
.sideBnr ul li.sys{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_sys.png");}
.sideBnr ul li.scholar{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_scholar.png");}
.sideBnr ul li.view{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_view.png");}
.sideBnr ul li.receipt{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_receipt.png");}
.sideBnr ul li.recruit{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_recruit.png");}
.sideBnr ul li.service{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_service.png");}
.sideBnr ul li.nsu_perfor{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_nsuperfor.png");}
.sideBnr ul li.nsu_campus{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_nsucampus.png");}
.sideBnr ul li.interview{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_interview.png");}*/
/* 재학 
.sideBnr ul li.memoir{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_memoir.png");}
.sideBnr ul li.qna{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_qna.png");}
.sideBnr ul li.faq{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_faq.png");}
.sideBnr ul li.campus{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_campus.png");}
.sideBnr ul li.event{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_event.png");}
.sideBnr ul li.free{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_free.png");}
.sideBnr ul li.high_report{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_highreport.png");}
.sideBnr ul li.intro{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_intro.png");}
.sideBnr ul li.pay{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_pay.png");}
.sideBnr ul li.suc{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_suc.png");}
.sideBnr ul li.unv_report{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_unvreport.png");}
.sideBnr ul li.visit{background:#eee;}
.sideBnr ul li.jaehak_bus{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_jaehakbus.png");}*/
/* 기숙 
.sideBnr ul li.perfor{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_perfor.png");}
.sideBnr ul li.letter{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_letter.png");}
.sideBnr ul li.food{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_food.png");}
.sideBnr ul li.sche{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_sche.png");}
.sideBnr ul li.map{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_map.png");}
.sideBnr ul li.bus{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_bus.png");}
.sideBnr ul li.datum{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_datum.png");}
.sideBnr ul li.gisuk25{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_gisuk25.png");}
.sideBnr ul li.gisuk_case{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_gisukcase.png");}
.sideBnr ul li.gisuk_pay{background-image:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_gisukpay.png");}*/
/* 수강료할인혜택 신용카드 안내 */
.normal_sub_menu_card{border:2px solid #dcdcdc; border-bottom:none; margin-top:30px;}
.normal_sub_menu_card li{border-bottom:2px solid #dcdcdc; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_side_card.png") no-repeat 14px 14px;}
.normal_sub_menu_card li a{display:block; height:38px; padding:15px 0 14px 77px; letter-spacing:-0.25px; font-size:13px; line-height:17px; color:#333;}

/* floatingBnr */
.floatingBnr{display:block;position:absolute; top:33px; right:-100px; z-index:50; width:90px; }
/* 2016-11-04 추가 */
.floatingBnr.p1{top:50px; right:-160px; border:1px solid #d7d7d7; background:url("https://img.megastudy.net/campus/library/v2015/library/common/bg/bg_floating.gif") repeat; width:148px; height:auto;}
.floatingBnr.p1 .bnrBox{border:1px solid #eaeaea; padding:12px 8px 8px; text-align:center;}
.floatingBnr.p1 .bnrBox .tit{line-height:16px;}
.floatingBnr.p1 .bnrBox ul{margin-top:12px;}
.floatingBnr.p1 .bnrBox ul li{text-align:center; font-size:16px; line-height:18px; font-weight:bold; background:#fff; margin-top:1px; padding:12px 0 17px}
.floatingBnr.p1 .bnrBox ul li span{display:block; font-size:12px; color:#6d6d6d; font-weight:normal; margin-bottom:2px;}
/* // 2016-11-04 추가 */

/* footer */
/* 학원 bottom */
.normal_bottom_reout{height:0; overflow:hidden;}
/*.normal_bottom_out{background:url('https://img.megastudy.net/campus/library/image/intro/normal_main_bottom_back.png') repeat-x 0 0; height:215px; text-align:center; width:100%;min-width:1030px;}
.normal_bottom_reout{background:url('https://img.megastudy.net/campus/library/image/intro/normal_main_bottom_back.png') repeat-x 0 0; height:215px; text-align:center; width:100%}*/
.normal_bottom{position:relative; width:1030px; margin:0 auto;}
.normal_bottom .tit_bottom{position:absolute; top:2px; left:46px;}
.normal_bottom_quick{margin:0 auto;}
.normal_bottom_quick ul{display:inline-block; overflow:hidden; padding:18px 0 17px;}
.normal_bottom_quick li{float:left; height:23px;}
.normal_bottom_quick li a{font-size:12px !important}
/*성북*/.normal_bottom_address_sb{background:url('https://img.megastudy.net/campus/library/image/intro/main_bottom_logo.png') no-repeat 205px 2px !important;}
.normal_bottom_address	{text-align: left; padding:0 0 0 180px; margin:34px 0 0;}
.normal_bottom_address span.line {margin:0 10px;color:#ccc;}
.normal_bottom_address ul{padding:0; margin:0; height:23px;}
.normal_bottom_address ul li{float:left; padding-left:5px; font-size:12px;}
.normal_bottom_address ul li a{color:#555; font-weight:bold;font-size:13px;}
.normal_bottom_address ul li a span{padding:0 5px 0 2px;}
.normal_bottom_address p{margin:0px 0 5px 5px; font-size:11px !important;line-height:120%;letter-spacing:1;color:#9a9a9a;} 
.normal_bottom_address p span{font-weight:700;}
.normal_bottom_address dl {display:inline-block;margin:5px 0 5px 5px; }
.normal_bottom_address dt {float:left;margin:0 15px 0 0;font-weight:bold;font-size:11px;color:#9a9a9a;}
.normal_bottom_address dd {float:left;line-height:120%;font-size:11px;color:#9a9a9a;}
.normal_bottom_address dd span.part {display:block;margin:0 0 -3px 0;font-weight:bold;line-height:150%;letter-spacing:1;}
/* 2016-11-09 추가 */
.addrDiv,.m1{margin-left:-134px !important;}
.addrDiv:after{clear:both; display:block; content:'';}
.addrDiv{margin-top:13px; font-size:11px; color:#9a9a9a; margin-bottom:5px;}
.addrDiv .addr_left{float:left; padding-right:100px;}
.addrDiv .addr_right{float:left;}
.addrDiv .addr_left>p,.addrDiv .addr_right>p{margin:0;line-height:14px;}
.addrDiv strong{display:block; margin-bottom:4px; font-size:12px;}
.addrDiv address{font-style:normal;}
.addrDiv .tel{font-weight:normal;}
/* // 2016-11-09 추가 */

/* 2016-11-04 추가 */
.goGroupSite{position:absolute; top:0; right:0;}
.goGroupSite a{display:block; font-size:11px; color:#555; height:21px; line-height:20px; border:1px solid #dadada; padding:0 30px 0 10px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_arrow.gif") no-repeat right 8px;}
.groupListWrap{position:absolute; top:-400px; right:0; z-index:100; width:828px; background:#fff; border:1px solid #dadada;}
.groupListWrap .titleDiv{background:url("https://img.megastudy.net/campus/library/v2015/library/common/bg/bg_group.gif") repeat; border-bottom:1px solid #dadada; padding:20px 30px 25px}
.groupListWrap .titleDiv strong{font-size:18px;}
.groupListWrap .groupList{padding:47px 0 0; overflow:hidden;}
.groupListWrap .groupList>ul{margin-left:-1px; height:275px;}
.groupListWrap .groupList>ul>li{float:left; height:55px; width:164px; border-left:1px dotted #dadada; margin-bottom:30px; padding:0;}
.groupListWrap .groupList>ul>li>a{display:block; text-align:center;}
.groupListWrap .btn_close{position:absolute; top:26px; right:30px; display:block; width:16px; height:16px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_close_layer.png") no-repeat;}
/* // 2016-11-04 추가 */

/* 모바일 */
#mob {width:100%;text-align:center;}
#mob .mob_button {width:80%;height:2.5em;line-height:1em;padding:0.7em 0;margin:1em auto;font-size:4.5em;font-weight:bold;background-image: -webkit-gradient(linear,left top,left bottom,color-stop(0.5, #FFFFFF),color-stop(1, #E8E8E8));
		background-image: -o-linear-gradient(top, #FFFFFF 50%, #E8E8E8 100%);
		background-image: -moz-linear-gradient(top, #FFFFFF 50%, #E8E8E8 100%);
		background-image: -webkit-linear-gradient(top, #FFFFFF 50%, #E8E8E8 100%);
		background-image: -ms-linear-gradient(top, #FFFFFF 50%, #E8E8E8 100%);
		background-image: linear-gradient(bottom to, #FFFFFF 50%, #E8E8E8 100%);border:0.1em solid #ddd;border-radius:0.3em;border-bottom-color:#999;}

/* 익스플로러 최적화 top */
.internet_explorer_top {position:relative;top:0;left:0;width:100%;height:140px;border-top:1px solid #e1e1e1;border-bottom:1px solid #cccccc;background:#efefef;}
.internet_explorer_top .content {width:1030px;margin:20px auto;}
.internet_explorer_top .content p {position:relative;top:0;left:0px;display:inline-block;width:630px;margin:0 0 0 100px;text-align:left;letter-spacing:-0.25px;font-size:13px !important;line-height:170%;}
.internet_explorer_top .explorerdown_top {position:absolute;top:3px;right:0;text-align:right;margin:0 100px 0 0;}
.internet_explorer_top .closed {position:relative;top:0;right:0;margin:10px 105px 0 0;text-align:right;font-size:12px;letter-spacing:-0.25px;line-height:12px;}
.internet_explorer_top .closed img, input[type='checkbox'] {vertical-align:middle;}
/* 익스플로러 최적화 bottom */
.internet_explorer {float:left;width:710px;padding:13px 0 13px 30px;margin:15px 0 15px 7px;border-top:1px solid #e1e1e1;border-bottom:1px solid #e1e1e1;background:#efefef;font-size:11px !important;line-height:170%;letter-spacing:1;}
.internet_explorer p {float:left;}
.explorerdown {float:right;margin:5px 30px 0 0;}
/* 학원 bottom */

/* 본문내용 공통 */
.contentArea{float:right; width:788px;}
.contentArea .titleDiv{overflow:hidden; margin-top:12px;}
.contentArea .titleDiv h3{float:left; color:#333; font-size:32px; font-family:"MalGun Gothic"; letter-spacing:-2px; margin:0 17px 0 0;}
.contentArea .titleDiv .txt{float:left; color:#555; font-size:15px; letter-spacing:-0.25px; padding-top:21px;}
.content{margin-top:45px; min-height:600px; position:relative;}
.content.joinArea{margin-top:25px;}
.content.joinArea.p1{padding-top:11px;}
.content.myPage{margin-top:36px;}
.content.danka{margin-top:8px;}
.content.teamplay{margin-top:20px;}

/* placeholder */
.placeholderBox{position:relative;}

/* 컨텐츠 공통 아이콘 */
.ir_ico{display:inline-block; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_content.png") no-repeat; text-indent:-9999px; line-height:9999px; overflow:hidden; vertical-align:top; }
.ir_ico.new{width:13px; height:13px; background-position:0 0; vertical-align:middle; margin-left:3px;}
.ir_ico.bbsNew{width:16px; height:16px; background-position:0 -30px; margin:1px 0 0 3px;}
.ir_ico.bbsSign{width:16px; height:16px; background-position:0 -60px;  margin-left:3px;}
.ir_ico.bbsLock{width:14px; height:16px; background-position:0 -90px; margin-left:3px;}
.ir_ico.bbsFile{width:21px; height:19px; background-position:0 -120px; margin-right:6px;}
.ir_ico.bbsDown{width:29px; height:26px; background-position:0 -300px;}
.ir_ico.bbsInfo{width:16px; height:16px; background-position:0 -360px; margin:2px 5px  0 0; }
.ico_notice{margin-top:2px;}
.ir_txt{display:inline-block; background:url("https://img.megastudy.net/campus/library/v2015/library/common/icon/ico_content_txt.png") no-repeat; text-indent:-9999px; vertical-align:top;}
.ir_txt.hot{width:42px; height:16px; background-position:0 0;}
.ir_txt.best{width:48px; height:16px; background-position:0 -30px;}
.ir_txt.notice{width:46px; height:20px; background-position:0 -60px;}
.ir_txt.cmplt{width:58px; height:20px; background-position:0 -90px;}
.ir_txt.answer{width:49px; height:48px; background-position:0 -120px;}

/* 공통버튼 */
.btnDiv{position:relative;}
.btnDiv .right{position:absolute; top:-6px; right:0;}
.btnDiv .left{position:absolute; top:-6px; left:0;}
.btnDiv .fr{position:absolute; top:0px; right:0;}
.btnDiv .fl{position:absolute; top:0px; left:0;}
.btnDiv.taC .btn_round,.btnDiv .btn_icon{margin:0 3px;}
.btnDiv.taR .btn_round,.btnDiv.taR .btn_icon{margin:0 0 0 3px;}
/*round type*/
.btn_round{display:inline-block; min-width:115px; .width:115px; height:43px; text-align:center; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat 0 -120px; padding-left:35px;}
.btn_round span{display:block; font-size:17px; height:43px; line-height:40px; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat right -120px; padding-right:50px;}
.btn_round.dark_arrow{color:#fff; background-position:0 -120px;}
.btn_round.dark_arrow span{background-position:right -120px;}
.btn_round.dark_check{color:#fff; background-position:0 -180px;}
.btn_round.dark_check span{background-position:right -180px;}
.btn_round.dark_srch{color:#fff; background-position:0 -240px;}
.btn_round.dark_srch span{background-position:right -240px;}
.btn_round.grey_x{color:#fff; background-position:0 -300px;}
.btn_round.grey_x span{background-position:right -300px;}
.btn_round.white_arrow{color:#424c5d; background-position:0 -360px;}
.btn_round.white_arrow span{background-position:right -360px;}
/**/
.btn_pop{display:inline-block; min-width:35px; height:20px; text-align:left; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat 0 -420px; padding-left:7px; vertical-align:middle;}
.btn_pop span{display:block; font-size:12px; font-weight:bold; letter-spacing:-1px; line-height:18px; height:20px; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat right -420px; padding-right:15px;}
.btn_pop2{display:inline-block; min-width:46px; height:14px; color:#fff; background:#9a9a9a; font-size:11px; letter-spacing:-1px; line-height:12px; text-align:center;}
/**/
.btn_choice{display:inline-block; min-width:35px; height:20px; text-align:center; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat 0 -450px; vertical-align:middle; padding-left:3px;}
.btn_choice span{display:block; font-size:12px; font-weight:bold; letter-spacing:-1px; line-height:18px; height:20px; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat right -450px; padding-right:3px;}
/*icon type*/
.btn_icon{display:inline-block; height:35px; text-align:center; padding:0 20px;}
.btn_icon span{display:inline-block; font-size:15px; line-height:33px; height:35px; padding-right:21px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_icon.png") no-repeat right 0;}
button.btn_icon{height:37px;}
button.btn_icon span{line-height:33px; height:37px;}
.btn_icon.white_arrow{border:1px solid #4d5662;}
.btn_icon.white_arrow span{background-position:right -139px}
.btn_icon.grey_arrow{background:#949ba7; border:1px solid #949ba7;}
.btn_icon.grey_arrow span{color:#fff; background-position:right -189px}
.btn_icon.dark_arrow{background:#424c5d; border:1px solid #424c5d;}
.btn_icon.dark_arrow span{color:#fff; background-position:right -189px}
.btn_icon.red_arrow{background:#ec5656; border:1px solid #ec5656;}
.btn_icon.red_arrow span{color:#fff; background-position:right -189px}
.btn_icon2{display:inline-block; min-width:80px \9; height:37px; text-align:center; padding:0 25px;}
button.btn_icon2{width:135px \9;}
.btn_icon2 span{display:inline-block; font-size:15px; line-height:37px; padding-right:33px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_icon.png") no-repeat right 0;}
/*ff*/@-moz-document url-prefix(){.btn_icon2 span{line-height:33px}}
/*ie*/.ie .btn_icon2 span{line-height:33px}
.btn_icon2.white_write{border:1px solid #4d5662;}
.btn_icon2.white_write span{background-position:right -42px}
.btn_icon2.dark_write{display:inline-block; background:#424c5d; border:1px solid #424c5d;}
.btn_icon2.dark_write span{color:#fff; background-position:right -92px}
.btn_icon2.dark_list{background:#424c5d; border:1px solid #424c5d; padding:0 27px;}
.btn_icon2.dark_list span{color:#fff; background-position:right 9px; padding-right:26px;}
/* */
.btn_box_arrow{display:inline-block;  width:86px; height:26px; vertical-align:middle; text-align:left; line-height:24px; padding-bottom:0px; padding-left:14px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat -120px -85px;}
.btn_num_send{display:inline-block; width:100px; height:26px; vertical-align:top; color:#fff; line-height:24px; font-size:12px; font-weight:bold; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat 0px -85px; padding-left:10px;cursor:pointer;}
.btn_box_arrow1{display:inline-block; min-width:35px; height:26px; text-align:left; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat 0 -835px; padding-left:13px; vertical-align:middle;}
.btn_box_arrow1 span{display:block; font-size:13px;  font-weight:normal; line-height:24px; height:26px; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat right -835px; padding-right:32px;}
/**/
.btn_send{display:inline-block; min-width:35px; height:26px; text-align:left; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat 0 -480px; padding-left:13px; vertical-align:middle;}
.btn_send span{display:block; font-size:12px; color:#fff; font-weight:bold; line-height:24px; height:26px; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat right -480px; padding-right:23px;}
.btn_pop_srch{display:inline-block; width:50px; height:26px; vertical-align:middle; color:#fff; line-height:23px; font-size:12px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat -230px -85px; padding-left:20px;}
input.btn_pop_srch,button.btn_pop_srch{padding-bottom:3px; width:70px; text-align:left; cursor:pointer;}
.btn_send2{display:inline-block; min-width:35px; height:26px; text-align:left; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat 0 -515px; padding-left:13px; vertical-align:middle !important;}
.btn_send2 span{display:block;padding-top:5px; font-size:12px; color:#fff;  line-height:12px !important; height:21px; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat right -515px; padding-right:23px;}
.btn_send3{display:inline-block; min-width:35px; height:29px; text-align:left; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat 0 -550px; padding-left:16px; vertical-align:middle;}
.btn_send3 span{display:block; font-size:13px; color:#fff; font-weight:normal; line-height:27px; height:29px; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat right -550px; padding-right:28px;}
.btn_send4{display:inline-block; min-width:35px; height:26px; text-align:left; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat 0 -630px; padding-left:16px; vertical-align:middle;}
.btn_send4 span{display:block; font-size:13px; color:#fff; font-weight:normal; line-height:24px; height:26px; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat right -630px; padding-right:28px;}
.btn_send5{display:inline-block; min-width:35px; height:26px; text-align:left; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat 0 -800px; padding-left:16px; vertical-align:middle;}
.btn_send5 span{display:block; font-size:13px; color:#eb3b4b; font-weight:normal; line-height:24px; height:26px; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat right -800px; padding-right:28px;}
.w122{width:132px; text-align:center;}
.btn_base {display:inline-block; min-width:35px; height:30px;line-height:28px; text-align:center;background:#424c5d;color:#fff;font-size:14px;font-weight:normal;padding:0 16px 0 16px;border:1px solid #424c5d;border-radius:3px;-webkit-border-radius:3px;-moz-border-radius:3px;}
	.bc_blue {background:#18709c;border:1px solid #18709c;}
	.bc_green {background:#00A178;border:1px solid #00A178;}
	.bc_magenta {background:#cc3366;border:1px solid #cc3366;}
/*ff*/@-moz-document url-prefix(){.btn_send span,.btn_send2 span,.btn_send4 span,.btn_send5 span{line-height:22px}}
/**/
.btn_print{display:inline-block; width:62px; height:26px; font-size:12px; line-height:24px; color:#fff; font-weight:bold; text-align:left; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat -350px -50px; padding-left:40px;}
/*ff*/@-moz-document url-prefix(){.btn_print{line-height:22px}}
.btn_print2{display:inline-block; width:72px; height:33px; font-size:13px; line-height:31px; color:#fff; font-weight:bold; text-align:left; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat -350px -10px; padding-left:48px;}
/**/
.btn_sys{display:inline-block; vertical-align:top; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat;}
.btn_sys span{display:block; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat;}
button.btn_sys.white_arrow,button.btn_sys.white_arrow2,button.btn_sys.grey_arrow{min-width:60px;}
.btn_sys.white_arrow{background-position:0 -590px; padding-left:20px;}
.btn_sys.white_arrow span{color:#333; font-weight:bold; line-height:28px; background-position:right -590px; background-color:#68707d; height:30px; padding-right:30px;}
.btn_sys.white_arrow2{background-position:0 -670px; padding-left:15px;}
.btn_sys.white_arrow2 span{color:#424c5d; font-size:12px; line-height:22px; background-position:right -670px; height:24px; padding-right:23px;}
.btn_sys.grey_arrow{min-width:60px; background-position:0 -705px; padding-left:12px;}
.btn_sys.grey_arrow span{color:#fff; font-size:12px; line-height:22px; background-position:right -705px; height:24px; padding-right:23px;}
.btn_sys.sq_plus{width:15px; height:15px; background-position:-30px -50px; text-indent:-9999px; vertical-align:middle;}
.btn_sys.sq_plus2{width:17px; height:17px; background-position:-55px -50px; text-indent:-9999px; vertical-align:middle;}
.btn_sys.sq_prev{width:21px; height:20px; background-position:-90px -50px;  text-indent:-9999px;}
.btn_sys.sq_next{width:21px; height:20px; background-position:-115px -50px;  text-indent:-9999px;}
.btn_sys.tri_arrow{background-position:0 -740px; padding-left:8px;}
.btn_sys.tri_arrow span{color:#fff; font-family:dotum; font-size:11px; line-height:22px; height:20px; background-position:right -740px; padding-right:15px;}
.btn_sys.del{width:17px; height:17px; background:#fff url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat -150px -50px;  text-indent:-9999px;}
/**/
.btn_dn{display:inline-block; min-width:56px; height:26px; padding:0 2px; color:#fff; text-align:center; line-height:24px; font-size:12px; font-weight:normal; background:#949ba7; border-radius:2px;}
.btn_dn2{display:inline-block; min-width:45px; height:10px; padding:4px 2px 6px; color:#fff; text-align:center; font-family:dotum; font-size:11px; font-weight:normal; background:#68707d;border:2px; border-radius:2px;vertical-align:top;}
button.btn_dn2{height:20px;}
.ie .btn_dn2{padding:5px 2px;}
.btn_dn3{display:inline-block; min-width:56px; height:26px; padding:0 2px; color:#fff; text-align:center; line-height:24px; font-size:12px; font-weight:normal; background:#424c5d; border-radius:2px;}
.btn_dn4{display:inline-block; min-width:45px; height:9px; padding:3px 2px 4px; color:#fff; text-align:center; font-family:dotum; font-size:11px; font-weight:normal; background:#00479d; vertical-align:top;}
.btn_dnLine{display:inline-block; min-width:56px; height:24px; padding:0 2px; color:#333; text-align:center; font-weight:bold; line-height:22px; font-size:12px; background:#fff; border-radius:2px; border:1px solid #949ba7;}
.btn_rnd{display:inline-block; min-width:75px; height:20px; border-radius:2px; color:#fff !important; text-align:center;  font-family:dotum; font-size:11px; line-height:21px;}
a.btn_rnd:hover{text-decoration:none !important;}
.ie .btn_rnd{line-height:24px;}
.btn_rnd.red{background:#ec5656;}
.btn_rnd.grey{background:#b0b4bb;}
/**/
.btn_media{display:inline-block; width:61px; height:20px; background:url("https://img.megastudy.net/campus/library/v2015/library/mypage/btn_media.gif") no-repeat;}
.btn_media.m1_n{background-position:0 0;}
.btn_media.m2_n{background-position:0 -30px; margin-top:3px;}
/* 파일업로드 */
.btn_delFile{display:inline-block; width:16px; height:15px; background:url("https://img.megastudy.net/campus/library/v2015/library/common/btn/btn_common.png") no-repeat -255px -50px; text-indent:-9999px; vertical-align:middle; margin: 0px 0 0 3px}
.file_input_textbox{float:left;}
.file_input_textbox.w1{width:394px; background:#f6f6f6; border:1px solid #d8d8d8;}
.file_input_div{position: relative; display:inline-block; width: 80px;height: 26px;overflow: hidden; padding-left:5px; cursor:pointer;}
.file_input_button{width: 80px; height:26px !important; position: absolute; top: 0px; background-color: #424c5d; color: #fff; cursor:pointer;}
.file_input_hidden{font-size: 45px; height:26px !important; position: absolute;right: 0px;top: 0px;opacity: 0;filter: alpha(opacity=0);-ms-filter: "alpha(opacity=0)";-khtml-opacity: 0;-moz-opacity: 0; cursor:pointer;}
/* 파일 업로드 (팝업) */
.file_input_textbox_pop{vertical-align:top !important;}
.file_input_textbox_pop.w1{width:250px; border:1px solid #d8d8d8;}
.file_input_div_pop{position: relative; display:inline-block; width:100px;height: 26px;overflow: hidden; padding-left:5px; cursor:pointer;}
.file_input_button_pop{width:100px; height:26px !important; position: absolute; top: 0px; cursor:pointer;}
.file_input_hidden_pop{font-size: 45px; height:26px !important; position: absolute;right: 0px;top: 0px;opacity: 0;filter: alpha(opacity=0);-ms-filter: "alpha(opacity=0)";-khtml-opacity: 0;-moz-opacity: 0; cursor:pointer;}


