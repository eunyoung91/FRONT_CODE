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
<link rel="stylesheet" type="text/css" href="web.css">
<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
<script type="text/javascript" src="/Public/jquery/slick.js"></script>
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
			var elementP = (elementT + elementH + 80);
	
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
            <div id="div_full" class="div_con" style="height:1115px; position:relative; z-index:1;">
                <div class="top_wrap">
                    <div class="top_bg">
                        <div class="bg1"></div>
                        <div class="bg2"></div>
                    </div>
                    <div class="act_wrap">
                        <img class="txt act01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/top_txt01.png" alt="" />

                        <img class="txt act02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/top_txt02.png" alt="" />

                        <img class="txt act03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/top_txt03.png" alt="" />

                        <img class="txt act04" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/top_txt04.png" alt="" />

                        <img class="txt act05" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/top_txt05.png" alt="" />

                        <div class="speedometer">
                            <img class="" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/img_gauge.png" alt="" />
                            <img class="speed_logo" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/img_logo.png" alt="" />
                            <div class="filler">
                                <span class="speed_marker01"></span>
                                <span class="speed_marker02"></span>
                                <span class="speed_marker03"></span>
                                <span class="speed_marker04"></span>
                                <span class="speed_marker05"></span>
                                <span class="speed_marker06"></span>
                                <span class="speed_marker07"></span>
                                <span class="speed_marker08"></span>
                                <span class="speed_marker09"></span>
                                <span class="speed_marker10"></span>
                                <span class="speed_marker11"></span>
                                <span class="speed_marker12"></span>
                                <span class="speed_marker13"></span>
                                <span class="speed_marker14"></span>
                                <span class="speed_marker15"></span>
                                <span class="speed_marker16"></span>
                                <span class="speed_marker17"></span>
                                <span class="speed_marker18"></span>
                                <span class="speed_marker19"></span>
                                <span class="speed_marker20"></span>
                                <span class="speed_marker21"></span>
                                <span class="speed_marker22"></span>
                                <span class="speed_marker23"></span>
                                <span class="speed_marker24"></span>
                                <span class="speed_marker25"></span>
                                <span class="speed_marker26"></span>
                                <span class="speed_marker27"></span>
                                <span class="speed_marker28"></span>
                                <span class="speed_marker29"></span>
                                <span class="speed_marker30"></span>
                                <span class="speed_marker31"></span>
                                <span class="speed_marker32"></span>
                                <span class="speed_marker33"></span>
                                <span class="speed_marker34"></span>
                                <span class="speed_marker35"></span>
                                <span class="speed_marker36"></span>
                                <span class="speed_marker37"></span>
                                <span class="speed_marker38"></span>
                                <span class="speed_marker39"></span>
                                <span class="speed_marker40"></span>
                                <span class="speed_marker41"></span>
                                <span class="speed_marker42"></span>
                                <span class="speed_marker43"></span>
                                <span class="speed_marker44"></span>
                                <span class="speed_marker45"></span>
                                <span class="speed_marker46"></span>
                                <span class="speed_marker47"></span>
                                <span class="speed_marker48"></span>
                                <span class="speed_marker49"></span>
                                <span class="speed_marker50"></span>
                                <span class="speed_marker51"></span>
                                <span class="speed_marker52"></span>
                                <span class="speed_marker53"></span>
                            </div>
                            <div class="needle"></div>
                        </div>
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
            <div class="div_con" style="position:relative;">
                <div class="div_con1">
                    <div class="con">
                        <img class="animation_element b_to_t" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con01_title01.png" alt="" />
                        
                        <div class="mt70">
                            <img class="animation_element l_to_r delay200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con01_img01.png" alt="" />
                            <img class="animation_element r_to_l mt30 delay200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con01_img02.png" alt="" />
                            <img class="animation_element l_to_r mt30 delay200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con01_img03.png" alt="" />
                        </div>
                    </div>
                </div>
                
                <div class="div_con02">
                    <div class="con">
                        <div class="animation_element b_to_t" style="position:relative;">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con02_title01.png" alt="" />
                        </div>
                        <div class="mt80">
                            <img class="animation_element b_to_t" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con02_img01.png" alt="" />
                        </div>
                        
                        <div class="animation_element b_to_t mt100 delay200">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con02_title02.png" alt="" />
                        </div>
                        <div class="mt80">
                            <img class="animation_element b_to_t delay200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con02_img02_1.png" alt="" />
                            <img class="animation_element b_to_t delay400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con02_img02_2.png" alt="" />
                            <img class="animation_element b_to_t delay600" src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con02_img02_3.png" alt="" />
                        </div>
                    </div>
                </div>

				<div class="div_con5" id="link">
                    <div class="con">
                        <div class="animation_element b_to_t">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_final_gate/con03_title01.png" alt="" />
                        </div>

                        <div class="mt60"> 
                            <ul>   
                                <li id="C01" class="cam_list">
                                    <a href="https://yangji.megastudy.net/yangji/nsu/2025/2025_final/final_01.asp" target="_blank">
                                    <!-- <a href="javascript:alert('8. 22(목) 오픈 예정입니다.');"> -->
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
                                    <a href="https://seochob.megastudy.net/yangjim/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://ansung.megastudy.net/ansung/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <!-- <a href="https://gangnam.megastudy.net/gangnam/nsu/nsu/2024/2024_final/final_01.asp" target="_blank"> -->
                                    <a href="https://gangnam.megastudy.net/gangnam/nsu/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://seocho.megastudy.net/seocho/nsu/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://songpa.megastudy.net/songpa/nsu/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://bundang.megastudy.net/bundang/nsu/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2025/2025_final/final_01.asp" target="_blank">
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
                                    <a href="https://seongbuks.megastudy.net/seongbuk/jaehak/jaehak/2025/2025_final/final_01.asp" target="_blank">
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
                </div>
				<!-- // -->

            </div>
        </div>
    </div>
    <script type="text/javascript">
	var motion1 = new TimelineMax({delay:0.3,repeat:0})
        motion1.to(".act01", 0.5, {opacity:1, top:100});
        
	var motion2 = new TimelineMax({delay:0.3,repeat:0})
        motion2.to(".act02", 0.5, {opacity:1, top:167});
        
    var motion3 = new TimelineMax({delay:0.8,repeat:0})
        motion3.to(".act03", 0.5, {opacity:1, left:0, ease:Power3.easeOut});
        
    var motion4 = new TimelineMax({delay:0.8,repeat:0})
        motion4.to(".act04", 0.5, {opacity:1, left:0, ease:Power3.easeOut});

    var motion5 = new TimelineMax({delay:0.8,repeat:0})
        motion5.to(".act05", 0.5, {opacity:1, left:0, ease:Power3.easeOut});
    
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
