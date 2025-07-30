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
                        <div class="act_wrap">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/top_sub_tit.png" alt="�ް����͵� ���� ��ü ���ǰ��" class="motion _01">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/top_tit_logo.png" alt="E-QUEL" class="motion _02">
                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/top_box.png" alt="E-QUEL ���ǰ���?" class="motion _03">

                            <div class="top_box_txt">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/top_box_txt01.png" alt="���� ����Ƽ�� ���� ���� ���ǰ��" class="motion _04_1 txt">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/top_box_txt02.png" alt="Ȯ���� ���� ����" class="motion _05_1 txt">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/top_box_txt03.png" alt="ü������ ���� �м� ����" class="motion _06_1 txt">
                                
                                <span class="line1 motion _04_2"></span>
                                <span class="line2 motion _05_2"></span>
                                <span class="line3 motion _06_2"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- sector_con1 -->
                <div class="sector_con1">
                    <div class="inner">
                        <div class="img_wrap">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con01_tit.png" alt="Ÿ�� ���� ���� ����Ƽ" />
                        </div>
                        <div class="step_system">
                            <img class="step_bar" data-aos="fade-in" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con01_line.png" alt="" />
                            <div class="step_point">
                                <img class="step_1" data-aos="fade-up" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con01_img01.png" alt="STEP1" />
                                <img class="step_2" data-aos="fade-down" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con01_img02.png" alt="STEP2" />
                                <img class="step_3" data-aos="fade-up" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con01_img03.png" alt="STEP3" />
                                <img class="step_4" data-aos="fade-down" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con01_img04.png" alt="STEP4" />
                                <img class="step_5" data-aos="fade-up" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con01_img05.png" alt="STEP5" />
                                <img class="step_6" data-aos="fade-down" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con01_img06.png" alt="STEP6" />
                                <img class="step_7" data-aos="fade-up" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con01_img07.png" alt="STEP7" />
                            </div>
                        </div>
                    </div>
                </div>
                <!-- sector_con2 -->
                <div class="sector_con2">
                    <div class="inner">  
                        <div class="img_wrap">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con02_tit.png" alt="�Ϻ��� ���� ����" />
                        </div>
                        <div class="img_wrap flex_wrap mt80">
                            <img data-aos="flip-left" data-aos-delay="200" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con02_img01.png" alt="9�� ���� ��� 8.22(��)" />
                            <img data-aos="flip-left" data-aos-delay="500" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con02_img02.png" alt="���м��дɷ½��� ��� 11.1(��)" />
                        </div>
                    </div>
                </div>
                <!-- sector_con3 -->
                <div class="sector_con3">
                    <div class="inner">  
                        <div class="img_wrap">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con03_tit.png" alt="3�ܰ� ���� �м� ����" />
                        </div>
                        <div class="img_wrap img_ab">
                            <img data-aos="fade-in" data-aos-easing="ease-in-sine" data-aos-delay="600" data-aos-duration="800" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con03_img01.png" alt="3�ܰ� �̹���" />
                        </div>
                        <div class="img_wrap flex_wrap">
                            <img data-aos="flip-left" data-aos-delay="300" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con03_img02.png" alt="���� ���� �м����� ���� �Ƿ� Ȯ��" />
                            <img data-aos="flip-left" data-aos-delay="300" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con03_img03.png" alt="���� ���� �м����� ���� ���� ����" />
                            <img data-aos="flip-left" data-aos-delay="300" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con03_img04.png" alt="���� �հ� �������� ���� ��ǥ ��üȭ" />
                        </div>
                        <div class="img_wrap mt30">
                            <img data-aos="fade-in" data-aos-easing="ease-in-sine" data-aos-delay="50" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con03_txt01.png" alt="�� ���� �м� ������ ���� ���� ����� �� �ֽ��ϴ�." />
                        </div>
                    </div>
                </div>

                <!-- sector_con4 -->
                <div class="sector_con4">
                    <div class="inner">  
                        <div class="img_wrap">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con04_tit.png" alt="�ؼ����� �ΰ� ����" />
                        </div>
                        <div class="img_wrap mt80">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="400" data-aos-duration="700" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con04_img01.png" alt="�ؼ��� �̹���" />
                        </div>
                        <div class="img_wrap mt30">
                            <img data-aos="fade-in" data-aos-easing="ease-in-sine" data-aos-delay="50" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/con04_txt01.png" alt="�� �ΰ� ���� ������ ������ ���� ���� ����� �� �ֽ��ϴ�." />
                        </div>
                    </div>
                </div>

                <!-- sector_bottom -->
                <div class="sector_bottom">
                    <div class="inner" style="padding:0;">  
                        <div class="img_wrap">
                            <img data-aos="fade-in" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="800" src="<%=Application("img_path")%>/library/campus_common/2024/2024_e_quel/bottom_tit.png" alt="E-QUEL = ����" />
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
                $(window).on('scroll', function(){});
            });
        });

        function pageLoadEvent(){
            var temp_s = $("#sectorTop").offset().top;
            $('html, body').animate({ scrollTop: temp_s}, 500);
        }

        function titleTweenEvent(){
            var titleEvent = $('.sector_top');
            TweenMax.fromTo( titleEvent.find('.motion._01'), 0.3, { opacity:0}, {opacity:1, delay:.2, ease: Quad.easeIn});
            TweenMax.fromTo( titleEvent.find('.motion._02'), 0.6, { opacity:0, scale:1.8}, {opacity:1, delay:0.9, scale:1, ease: Cubic.easeOut});
            TweenMax.fromTo( titleEvent.find('.motion._03'), 0.4, { opacity:0, y:50 } , {opacity:1, delay:1.4, y:0, ease: Power1.easeIn});

            TweenMax.fromTo( titleEvent.find('.motion._04_1'), 0.4, { opacity:0, y:20 } , {opacity:1, delay:1.5, y:0, ease: Back.easeIn});
            TweenMax.fromTo( titleEvent.find('.motion._04_2'), 0.8, { opacity:0, width:0 } , {opacity:1, delay:2, width:320, ease: Back.easeIn});

            TweenMax.fromTo( titleEvent.find('.motion._05_1'), 0.4, { opacity:0, y:20 } , {opacity:1, delay:1.7, y:0, ease: Back.easeIn});
            TweenMax.fromTo( titleEvent.find('.motion._05_2'), 0.8, { opacity:0, width:0 } , {opacity:1, delay:2, width:160, ease: Back.easeIn});

            TweenMax.fromTo( titleEvent.find('.motion._06_1'), 0.4, { opacity:0, y:20 } , {opacity:1, delay:1.9, y:0, ease: Back.easeIn});
            TweenMax.fromTo( titleEvent.find('.motion._06_2'), 0.8, { opacity:0, width:0 } , {opacity:1, delay:2, width:250, ease: Back.easeIn});
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
