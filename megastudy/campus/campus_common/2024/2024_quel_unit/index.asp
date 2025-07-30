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
<!-- AOS -->
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
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
                <!-- sector_top -->
                <div id="sectorTop" class="sector_top">
                    <div class="sector_top_wrap">
                        <div class="slide_wrap">
                            <div class="bg_before"><span class="hidden">���</span></div>
                            <div class="bg_after bgBlink"><span class="hidden">���</span></div>
                        </div>
                        <div class="act_wrap">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/txt1.png" alt="������ UNIT�� 1��� �ϼ� ���μ���" class="motion _01">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/txt2.png" alt="Quelunit" class="motion _02">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/txt3_1.png" alt="Quelunit" class="motion _03_1">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/txt3_2.png" alt="Quelunit" class="motion _03_2">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/txt3_3.png" alt="Quelunit" class="motion _03_3">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/txt4.png" alt="��������" class="motion _04">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/blink.png" alt="��¦��¦" class="motion _05">
                        </div>
                    </div>
                </div>
                <!-- sector_quickly -->
                <div class="sector_quickly">
                    <div class="inner">
                        <div class="img_wrap">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/quickly_title_1.png" alt="�н� �ð��� ª��!" />
                        </div>
                        <div class="watch_box">
                            <div class="watch watch_1" data-aos="zoom-in" data-aos-delay="200" data-aos-duration="300">
                                <div class="minute">
                                    <div class="min min_1" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_1.png" alt="5��" /></div>
                                    <div class="min min_2" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="300"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_2.png" alt="10��" /></div>
                                    <div class="min min_3" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="400"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_3.png" alt="15��" /></div>
                                    <div class="min min_4" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="500"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_4.png" alt="20��" /></div>
                                    <div class="min min_5" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="600"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_5.png" alt="25��" /></div>
                                    <div class="min min_6" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="700"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_6.png" alt="30��" /></div>
                                </div>
                                <div class="element">
                                    <div data-aos="zoom-out" data-aos-duration="200" data-aos-delay="1200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/ele_img_1.png" alt="����" /></div>
                                </div>
                            </div>
                            <div class="watch watch_2" data-aos="zoom-in" data-aos-delay="200" data-aos-duration="300">
                                <div class="minute">
                                    <div class="min min_1" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_1.png" alt="5��" /></div>
                                    <div class="min min_2" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="300"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_2.png" alt="10��" /></div>
                                    <div class="min min_3" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="400"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_3.png" alt="15��" /></div>
                                    <div class="min min_4" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="500"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_4.png" alt="20��" /></div>
                                </div>
                                <div class="element">
                                    <div data-aos="zoom-out" data-aos-duration="200" data-aos-delay="1200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/ele_img_2.png" alt="����" /></div>
                                </div>
                            </div>
                            <div class="watch watch_3" data-aos="zoom-in" data-aos-delay="200" data-aos-duration="300">
                                <div class="minute">
                                    <div class="min min_1" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_1.png" alt="5��" /></div>
                                    <div class="min min_2" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="300"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_2.png" alt="10��" /></div>
                                    <div class="min min_3" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="400"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_3.png" alt="15��" /></div>
                                    <div class="min min_4" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="500"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_4.png" alt="20��" /></div>
                                    <div class="min min_5" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="600"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_5.png" alt="25��" /></div>
                                    <div class="min min_6" data-aos-easing="ease-in-out-back" data-aos="fade-in" data-aos-delay="700"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/minute_6.png" alt="30��" /></div>
                                </div>
                                <div class="element">
                                    <div data-aos="zoom-out" data-aos-duration="200" data-aos-delay="1200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/ele_img_3.png" alt="����" /></div>
                                </div>
                            </div>
                        </div>
                        <div class="img_wrap">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/quickly_img_1.png" alt="" />
                        </div>
                    </div>
                </div>
                <!-- sector_quantity -->
                <div class="sector_quantity">
                    <div class="inner">  
                        <div class="img_wrap">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/quantity_title_1.png" alt="�н� �е��� ����!" />
                        </div>
                        <div class="img_wrap flex_wrap mt80">
                            <img data-aos="flip-left" data-aos-delay="200" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/quantity_img_1.png" alt="���� ����" />
                            <img data-aos="flip-left" data-aos-delay="300" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/quantity_img_2.png" alt="���� ����" />
                            <img data-aos="flip-left" data-aos-delay="400" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/quantity_img_3.png" alt="���� ����" />
                        </div>
                    </div>
                </div>
                <!-- sector_quality -->
                <div class="sector_quality">
                    <div class="inner">  
                        <div class="img_wrap">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/quality_title_1.png" alt="���� �Ϻ��ϰ�!" />
                        </div>
                        <div class="img_wrap flex_wrap mt80">
                            <img data-aos="flip-left" data-aos-delay="200" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/quality_img_1.png" alt="������ ���� ����" />
                            <img data-aos="flip-left" data-aos-delay="300" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/quality_img_2.png" alt="�ϼ��� ���� �ڷ�" />
                        </div>
                    </div>
                </div>
                <!-- sector_bot_banner -->
                <div class="sector_bot_banner">
                    <div class="inner">  
                        <div class="img_wrap">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_quel_unit/bot_banner_img_1.png" alt="�� �� �ռ� ���� ����" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- container End --> 
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="/public/js/TweenMax.min.js"></script> 
    <script type="text/javascript">
        $(document).ready(function() {            
        });

        $(function(){
            titleTweenEvent();
            aosEvent();
            $(window).on('load', function () {
                pageLoadEvent();
                $(window).on('scroll', function(){
                });
            });
        });

        function pageLoadEvent(){
            var temp_s = $("#sectorTop").offset().top;
            $('html, body').animate({ scrollTop: temp_s}, 500);
        }

        function titleTweenEvent(){
            var titleEvent = $('.sector_top');
            TweenMax.fromTo( titleEvent.find('.motion._01'), 0.4, { opacity:0, y:50}, {opacity:1, delay:.2, y:0, ease: Power1.easeIn});
            TweenMax.fromTo( titleEvent.find('.motion._02'), 0.6, { opacity:0, scale:1.3,}, {opacity:1, delay:.6, scale:1, ease: Quad.easeIn});
            TweenMax.fromTo( titleEvent.find('.motion._03_1'), 0.4, { opacity:0, x:-60, scale:1}, {opacity:1, delay:1, x:0, scale:1, ease: Cubic.easeOut});
            TweenMax.fromTo( titleEvent.find('.motion._03_2'), 0.4, { opacity:0, x:-30, scale:1}, {opacity:1, delay:1.2, x:0, scale:1, ease: Cubic.easeOut});
            TweenMax.fromTo( titleEvent.find('.motion._03_3'), 0.4, { opacity:0, x: 0, scale:1}, {opacity:1, delay:1.4, x:0, scale:1, ease: Cubic.easeOut});
            TweenMax.fromTo( titleEvent.find('.motion._04'), 0.4, { opacity:0, y:50 } , {opacity:1, delay:1.6, y:0, ease: Power1.easeIn});
            TweenMax.fromTo( titleEvent.find('.motion._05'), 1, { opacity:0,}, {opacity:1, delay:1.6, yoyo:true, repeat:-1});
        }

        function aosEvent(){
            AOS.init({
                duration: 1800,
                easing: 'ease-in',
                once: true,
                animatedClassName: 'aos-animate',
            });
        }
    </script> 
</div>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
