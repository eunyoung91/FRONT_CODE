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
<!-- intro���� css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
<script src="/public/js/amazingslider/amazingslider.js"></script>
</head>

<body>
<div id="wrapper"> 
    
    <!--  �ֻ�ܸ޴�//--> 
    
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
    
    <div id="container">
        <div id="div_cont">
            <div id="div_full" class="div_con"> 
                <div id="topWrap" class="top_wrap" style="background:#141225 url('<%=Application("img_path")%>/library/campus_common/2024/2024_quel/top_bg.jpg') center top no-repeat;">
                    <div class="act_wrap">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/txt1.png" alt="" class="motion _03">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/txt2.png" alt="" class="motion _04">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/txt3.png" alt="" class="motion _01">
						<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/txt4.png" alt="" class="motion _02">
                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/top_star.png" alt="" class="motion _05">
                    </div>
                </div>

                <div class="div_con1">
                    <div class="con">

                        <div class="type_element">
                            <div class="animation_element b_to_t delay50"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con01_title_1.png" alt="" /></div>
                            <div class="animation_element to_type delay150"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con01_title_2.png" alt="" /></div>
                            <div class="animation_element b_to_t delay200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con01_title_3.png" alt="" /></div>
                        </div>

						<div class="mod_tab">
                            <div class="animation_element b_to_t delay300 mt80">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con01_subtitle_1.png" alt="" />
                            </div>
                            
                            <ul class="box_act mt60">
                                <li class="box_act01">
                                    <div class="flipper">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con01_img01.png" alt="" class="front">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con01_img01.png" alt="" class="back">
                                    </div>
                                </li>
                                <li class="box_act02">
                                    <div class="flipper">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con01_img02.png" alt="" class="front">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con01_img02.png" alt="" class="back">
                                    </div>
                                </li>
                                <li class="box_act03">
                                    <div class="flipper">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con01_img03.png" alt="" class="front">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con01_img03.png" alt="" class="back">
                                    </div>
                                </li>
                            </ul>
							<div class="tab_head mt70">

								<ul class="tab_menuList">
									<li class="on">
										<a href="javaScript:void(0)" tabbtn="Y" tabgroup="tab1" tabindex="1">
                                            �����
										</a>
                                        <div class="arrow-up"></div>
									</li>
									<li> 
										<a href="javaScript:void(0)" tabbtn="Y" tabgroup="tab1" tabindex="2">
                                            ���п���
										</a>
                                        <div class="arrow-up"></div>
									</li>
									<li> 
										<a href="javaScript:void(0)" tabbtn="Y" tabgroup="tab1" tabindex="3">
                                            �����
										</a>
                                        <div class="arrow-up"></div>
									</li>
									<li> 
										<a href="javaScript:void(0)" tabbtn="Y" tabgroup="tab1" tabindex="4">
                                            ��ȸŽ������
										</a>
                                        <div class="arrow-up"></div>
									</li>
									<li> 
										<a href="javaScript:void(0)" tabbtn="Y" tabgroup="tab1" tabindex="5">
                                            ����Ž������
										</a>
                                        <div class="arrow-up"></div>
									</li>
                                    <li> 
										<a href="javaScript:void(0)" tabbtn="Y" tabgroup="tab1" tabindex="6">
											�ѱ��翵��
										</a>
                                        <div class="arrow-up"></div>
									</li>
								</ul>
							</div>

							<div class="tab_body">
								<div tabpanel="Y" tabgroup="tab1" tabindex="1" id="danka_lec_01">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/tab01_img.jpg">
								</div>
								<div tabpanel="Y" tabgroup="tab1" tabindex="2" id="danka_lec_02">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/tab02_img.jpg">
								</div>
								<div tabpanel="Y" tabgroup="tab1" tabindex="3" id="danka_lec_03">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/tab03_img.jpg">
								</div>
								<div tabpanel="Y" tabgroup="tab1" tabindex="4" id="danka_lec_04">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/tab04_img.jpg">
								</div>
								<div tabpanel="Y" tabgroup="tab1" tabindex="5" id="danka_lec_05">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/tab05_img.jpg">
								</div>
                                <div tabpanel="Y" tabgroup="tab1" tabindex="6" id="danka_lec_06">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/tab06_img.jpg">
								</div>
							</div>
						</div>
                        
                    </div>
                </div>
                
                <div class="div_con2">
                    <div class="con">
                        <div class="type_element">
                            <div class="animation_element b_to_t delay50"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con02_title_1.png" alt="" /></div>
                            <div class="animation_element to_type delay150"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con02_title_2.png" alt="" /></div>
                            <div class="animation_element b_to_t delay200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con02_title_3.png" alt="" /></div>
                        </div>
                        
                        <div class="mt70 animation_element b_to_t delay300">
                            <img style="margin-left:-6px;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con02_img01.png" alt="" />
                        </div>
                    </div>
                </div>
                
                <div class="div_con3">
                    <div class="con">
                        <div class="type_element">
                            <div class="animation_element b_to_t delay50"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con03_title_1.png" alt="" /></div>
                            <div class="animation_element to_type delay150"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con03_title_2.png" alt="" /></div>
                            <div class="animation_element b_to_t delay200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con03_title_3.png" alt="" /></div>
                        </div>

                        <div class="mt70 animation_element b_to_t delay300">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con03_img01.png" alt="" />
                        </div>
                    </div>
                </div>
                
                <div class="div_con5" style="background:#100F1F url('<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con04_bg.png') center top no-repeat;">
                    <div class="con">
                        <div class="pt100 animation_element b_to_t">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con04_title.png" alt="" />
                        </div>

                        <div class="step_element mt70">
                            <div class="animation_element l_to_r">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/step01.png" alt="" />
                            </div>
                            <div class="animation_element l_to_r delay150">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/step02.png" alt="" />
                            </div>
                            <div class="animation_element l_to_r delay300">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/step03.png" alt="" />
                            </div>
                            <div class="animation_element l_to_r delay450">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/step04.png" alt="" />
                            </div>
                        </div>
                        <div class="mt30 animation_element b_to_t delay500">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel/con04_img01.png" alt="" />
                        </div> 
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- container End --> 
    <script src="/public/js/TweenMax.min.js"></script> 
    <script type="text/javascript">

        $(document).ready(function() {
            $("a[tabbtn=Y]").bind("click", tabBtnClick);
            tabSwitch("tab1", "1");
            $('.tab_menuList>li:nth-child(1)').addClass("on");
            $("a[tabbtn=Y]").click(function(){
                $(this).parent().siblings().removeClass("on");
                $(this).parent().addClass("on");
            });
        });

        $(function(){
            titleTweenEvent();
        
            $(window).on('load', function () {
                pageLoadEvent()
                $(window).on('scroll', function(){
                    motion_scr();
                    parallaxScroll();
                });
                
            });

        });

        function pageLoadEvent(){
            var temp_s = $("#topWrap").offset().top;
            $('html, body').animate({ scrollTop: temp_s}, 500);
        }

        function titleTweenEvent(){
            var titleEvent = $('.top_wrap');
            TweenMax.fromTo( titleEvent.find('.motion._04'), 0.4, {opacity:0, scale:1.5,} , {opacity:1, delay:.4, scale:1, ease: Power1.easeOut}); //""
            TweenMax.fromTo( titleEvent.find('.motion._03'), 0.4, {opacity:0, scale:1.5,}, {opacity:1, delay:.2,  scale:1, ease: Power1.easeOut}); //Quel
            TweenMax.fromTo( titleEvent.find('.motion._01'), 0.4, {opacity:0, y:-50}, {opacity:1, delay:.6, y:0, ease: Power1.easeIn});
            TweenMax.fromTo( titleEvent.find('.motion._02'), 0.4, {opacity:0, y:-50 }, {opacity:1, delay:.8, y:0, ease: Power1.easeIn});
            TweenMax.fromTo( titleEvent.find('.motion._05'), 0.4, {opacity:0,}, {opacity:1, delay:1, yoyo:true, repeat:-1}); //��
        }

        function tabBtnClick(e) {
            var sTabGroup = this.getAttribute("tabgroup");
            var sTabIndex = this.getAttribute("tabindex");
            tabSwitch(sTabGroup, sTabIndex);
        }

        function tabSwitch(sTabGroup, sTabIndex) {
            var aTabAll    = $("a[tabbtn=Y][tabgroup=" + sTabGroup + "]");
            for(var i=0; i<aTabAll.length; i++) {
                $(aTabAll[i]).find("img").attr("src", aTabAll[i].getAttribute("tabimgoff"));
            }
            aTabAll.attr("tabcurrent", null);
            var $TabTarget = $("a[tabbtn=Y][tabgroup=" + sTabGroup + "][tabindex=" + sTabIndex + "]");
            $TabTarget.attr("tabcurrent", "Y").find("img").attr("src", $TabTarget.attr("tabimgon"));

            $("[tabpanel=Y][tabgroup=" + sTabGroup + "]").removeClass("on");
            $("[tabpanel=Y][tabgroup=" + sTabGroup + "][tabindex=" + sTabIndex + "]").addClass("on");
        }

        function tabBtnMouseAct(e) {
            var $this = $(this);
            if(e.type == "mouseover") {
                $this.find("img").attr("src", $this.attr("tabimgon"));
            }
            else if(e.type == "mouseout") {
                if($this.attr("tabcurrent") != "Y") {
                    $this.find("img").attr("src", $this.attr("tabimgoff"));
                }
            }
        }

        function motion_scr() {
            var winH = $(window).height();
            var scrT = $(window).scrollTop();
            var view_pos = winH + scrT

            $(".animation_element").each(function () {
                var elementH = $(this).outerHeight();
                var elementT = $(this).offset().top;
                var elementP = (elementT + elementH - 100);

                if ((elementP <= view_pos)) {
                    $(this).addClass("animation_set");
                }
            });
        };

        function parallaxScroll(){
            var scrolled = $(window).scrollTop();
            
            if(scrolled > 300) {       
                var motion2 = new TimelineMax({delay:0,repeat:0})
                motion2.to(".box_act", 0.7, {opacity:1});
                
                var motion3 = new TimelineMax({delay:0,repeat:0})
                motion3.to(".box_act01", 1, {className:"+=on"})
                        .to(".box_act02", 1, {className:"+=on"})
                        .to(".box_act03", 1, {className:"+=on"});
            }
        }
    </script> 
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
