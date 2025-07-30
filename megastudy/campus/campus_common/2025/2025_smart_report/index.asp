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

<meta name="author" content="�ް����͵��п�" />
<meta name="keywords" content="�ް����͵��п�, ����п�, �Խ�, �������п�, �ް����͵𷯼�, �����п�, ��������п�, �ް����͵�, ����, N��, ���ǰ��, 6������, 9������, ����, �ް�����Ʈ����Ʈ, 2026����, ��������, ��3, �����, ����" />
<meta name="description" content="��ƴ���� ������ �м� ������ ����! ���� ������ ���� ���� Ȯ���� �հ� �ַ��, �ް� ����Ʈ ����Ʈ"/>
<meta property="og:type" content="website">
<meta property="og:title" content="�ް����͵��п�">
<meta property="og:description" content="��ƴ���� ������ �м� ������ ����! ���� ������ ���� ���� Ȯ���� �հ� �ַ��, �ް� ����Ʈ ����Ʈ">
<meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_smart_report/index.asp">
<meta property="og:site_name" content="�ް����͵��п�">

<title><%=gMGC_Campus_Title%></title>
<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
<!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
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

                <div id="sectorTop" class="sector_top">

                    <div class="slide_wrap">
                        <div class="bg_before"><span class="hidden">���</span></div>
                        <div class="bg_after bgBlink"><span class="hidden">���</span></div>
                    </div>

                    <div class="sector_top_wrap">
                        <div class="inner">
                            <span class="obj1 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/top_txt1.png" alt="���� ������ ���� ���� Ȯ���� �հ� �ַ��!"></span>
                            <span class="obj2 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/top_txt2.png" alt="�ް�" ></span>
                            <span class="obj3 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/top_txt3.png" alt="����Ʈ ����Ʈ"></span>
                            <span class="obj4 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/top_txt4.png" alt="MEGA SMART REPORT"></span>
                            <span class="obj5 move "><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/top_txt5.png" alt="MEGA SMART REPORT"></span>
                            <span class="obj6 move"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/top_txt6.png" alt="MEGA SMART REPORT"></span>
                            <span class="obj7 move "><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/top_txt7.png" alt="MEGA SMART REPORT"></span>
                        </div>
                    </div>
                </div> 

                <div class="sector_care">
                    <div class="inner">
                        <div class="img_wrap pt100">
                            <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/care_title.png" alt="" />
                        </div>

                        <div class="mt65">
                            <div class="care_graph" style="background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/care_bg.jpg') 50% top no-repeat;height:822px;">
                                <div>
                                    <img class="vertex" data-aos="zoom-in" data-aos-delay="200" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/vertex1.png" alt="" />
                                    <img class="vertex" data-aos="zoom-in" data-aos-delay="300" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/vertex2.png" alt="" />
                                    <img class="vertex" data-aos="zoom-in" data-aos-delay="400" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/vertex3.png" alt="" />
                                    <img class="vertex" data-aos="zoom-in" data-aos-delay="500" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/vertex4.png" alt="" />
                                    <img class="vertex" data-aos="zoom-in" data-aos-delay="600" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/vertex5.png" alt="" />

                                    <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="600" data-aos-duration="400"  class="result" src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/care_img01.png" alt="ȭ��ǥ+����" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sector_data" style="background:#f1f1f1 url('<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/data_bg.jpg') 50% top no-repeat; background-size:cover;">
                    <div class="inner">

                        <div class="title_wrap pt100">
                            <div class="title_1">
                                <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/data_icon.png" alt="" />
                            </div>
                            <div class="title_2">
                                <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/data_title.png" alt="" />
                            </div>
                            <div class="title_3">
                                <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/data_sub_title.png" alt="" />
                            </div>
                        </div>

                        <div class="mt80">
                            <ul class="box_act">
                                <li class="card">
                                    <div class="flipper">                                 
                                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/card01.png" alt="" class="front">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/card01_on.png" alt="" class="back">
                                    </div>
                                </li>
                                <li class="card">
                                    <div class="flipper">                                 
                                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/card02.png" alt="" class="front">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/card02_on.png" alt="" class="back">
                                    </div>
                                </li>
                                <li class="card">
                                    <div class="flipper">                                 
                                        <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/card03.png" alt="" class="front">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/card03_on.png" alt="" class="back">
                                    </div>
                                </li>
                                <li class="card">
                                    <div class="flipper">                                 
                                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/card04.png" alt="" class="front">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/card04_on.png" alt="" class="back">
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="notice">
                            �� ���콺�� �ø��� ����Ʈ ���ø� Ȯ���� �� �ֽ��ϴ�.
                        </div>
                    </div>
                </div>

                <div class="sector_solution">
                    <div class="inner">

                        <div class="title_wrap pt100">
                            <div class="title_1">
                                <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/solution_icon.png" alt="" />
                            </div>
                            <div class="title_2">
                                <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/solution_title.png" alt="" />
                            </div>
                            <div class="title_3">
                                <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/solution_sub_title.png" alt="" />
                            </div>
                        </div>

                        <div class="graph_box">
                            <div class="inner">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/solution_img01.png" alt="" />
                                <span class="motion m1"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/obj1.png" alt="2023 ����" /></span>
                                <span class="motion m2"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/obj2.png" alt="ȭ��ǥ" /></span>
                                <span class="motion m3"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/obj3.png" alt="2024 ����" /></span>
                            </div>
                        </div>

                        <div class="how_box">
                            <div>
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/how_img_01.png" alt="" />
                                <div class="slider_wrap">
                                    <div class="slider how_slider">
                                        <div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/how_img_01_1.png" alt="" border="0" /></div>
                                        <div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/how_img_01_2.png" alt="" border="0" /></div>
                                    </div>
                                </div>
                            </div>
                            <div class="mt30">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/how_img_02.png" alt="" />
                            </div>
                            <div class="mt30">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/how_img_03.png" alt="" />
                                <div class="slider_wrap">
                                    <div class="slider how_slider">
                                        <div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/how_img_03_1.png" alt="" border="0" /></div>
                                        <div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/how_img_03_2.png" alt="" border="0" /></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sector_review">
                    <div class="inner">
                        <div class="title_wrap pt100">
                            <div class="title_1">
                                <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/review_icon.png" alt="" />
                            </div>
                            <div class="title_2">
                                <img data-aos="fade-up" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/review_title.png" alt="" />
                            </div>
                        </div>

                        <div class="slider_wrap mt80">
                            <div class="slider con_slider">
                                <div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/slide_img01.png" alt="" border="0" /></div>
                                <div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/slide_img02.png" alt="" border="0" /></div>
                                <div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/slide_img03.png" alt="" border="0" /></div>
                                <div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_smart_report/slide_img04.png" alt="" border="0" /></div>
                            </div>
                        </div>

                        <div class="notice">
                            �� ����X�ް����͵��п� ����� �ı� ����
                        </div>

                    </div>
                </div>

                <div class="sector_bot_banner">
                    <div><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_smart_report/banner_img01.png" alt="" border="0" /></div>
                </div>

            </div>
        </div>
    </div>

    <!-- container End --> 
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="/public/js/TweenMax.min.js"></script>
    <script src="/public/jquery/jquery.bxslider.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {            
        });
        
        //observer
        const Elm1 = document.querySelectorAll('.graph_box');
        
        const option1 = {
            root: null, //viewport
            rootMargin: '0px',
            threshold: 0.5,  // 50%�� viewport�� ���� �־�� callback ����
        }
        
        const callback = (entries, observer) => {
            entries.forEach(entry => {
                if(entry.isIntersecting) {
                    entry.target.classList.add('active');
                } else {
                    // entry.target.classList.remove('active');
                }
            });
        };

        const observer = new IntersectionObserver(callback, option1); // ������ �ʱ�ȭ
        Elm1.forEach(graph_box => observer.observe(graph_box)); // ������ ���(���) ���

        $(function(){
            titleTweenEvent();
            aosEvent();
            // cardFlipEvent();

            $('.how_slider').bxSlider({
                auto: true,
                speed: 500,
                pause : 5000,
                autoControls: false,
                stopAutoOnClick: false,
                pager: true,
                controls: false,
            });
            
            $('.con_slider').bxSlider({
                auto: true,
                speed: 500,
                pause : 5000,
                autoControls: false,
                stopAutoOnClick: false,
                pager: true
            });

            $(window).on('load', function () {
                pageLoadEvent();
            });
        });

        function pageLoadEvent(){
            var temp_s = $("#sectorTop").offset().top;
            $('html, body').animate({ scrollTop: temp_s}, 500);
        }

        // function cardFlipEvent(){
        //     $('.box_act li').click(function(){
        //         $(this).toggleClass('is-flipped');
        //     });
        // }

        function titleTweenEvent(){
            var topObj = jQuery("#container .sector_top");
            var topMotion = new TimelineMax({ delay: 0,  repeat: 0 });

            topMotion.to(topObj.find(".obj1"), 0, { delay: 0.1, opacity: 0 })
            topMotion.to(topObj.find(".obj2"), 0, { delay: 0, y:100, opacity: 0 })
            topMotion.to(topObj.find(".obj3"), 0, { delay: 0, y:-100, opacity: 0 })
            topMotion.to(topObj.find(".obj4"), 0, { delay: 0, opacity: 0 })

            topMotion.to(topObj.find('.obj5'), 0, {delay:0, x: 50, opacity:0})
            topMotion.to(topObj.find('.obj6'), 0, {delay:0, x: 50, opacity:0})
            topMotion.to(topObj.find('.obj7'), 0, {delay:0, x: -50, opacity:0})

            .to(topObj.find(".obj1"), 1.0, { delay: 0.0, opacity: 1, ease: Strong.easeOut, transformOrigin: "center center" })
            .to(topObj.find(".obj2"), 1.5, { delay: -0.5, y:0, opacity: 1, ease: Strong.easeOut, transformOrigin: "center center" })
            .to(topObj.find(".obj3"), 1.5, { delay: -1.5, y:0, opacity: 1, ease: Strong.easeOut, transformOrigin: "center center" })
            .to(topObj.find(".obj4"), 0.5, { delay: -1.0, opacity: 1, ease: Strong.easeOut, transformOrigin: "center center" })

            .to(topObj.find('.obj5'), 1.00, {delay:-0.80, x: 0, opacity:1, ease:Strong.easeOut, transformOrigin:'center center'})
            .to(topObj.find('.obj6'), 1.00, {delay:-0.80, x: 0, opacity:1, ease:Strong.easeOut, transformOrigin:'center center'})
            .to(topObj.find('.obj7'), 1.00, {delay:-0.80, x: 0, opacity:1, ease:Strong.easeOut, transformOrigin:'center center'})

        }

        function aosEvent(){
            AOS.init({
                duration: 3000,
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
