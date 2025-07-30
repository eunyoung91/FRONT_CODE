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
<!-- Swiper CSS -->
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css"/> -->

<link rel="stylesheet" type="text/css" href="web.css">
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">

<!-- intro���� css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/Public/jquery/slick.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://campus.megastudy.net/public/js/TweenMax.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
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

    <div id="container" class="nsu_regular_gate">
        <div id="contents">
            <%If CDbl(getYmdhmin()) <= CDbl("2025"&"0301"&"1400") Then '����Ʈ ���� Ÿ�̸� ���� / sook / 2025-02-28 %>
            <ul class="quick_banner">
                <li>
                    <a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=25827" target="_blank">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/quick_banner.jpg" alt="N�� ���Թ� ����ȸ">
                    </a>
                </li>
                <li>
                    <a href="#sectionTitle">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/btn_quick_top.jpg" alt="top���� �̵�">
                    </a>
                </li>
            </ul>
            <%End If%>
            <div class="section_top" id="sectionTop" style="background:url('<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/top_bg.jpg') 50% top no-repeat;background-size:cover;">
                <div class="section_title" id="sectionTitle">
                    <div class="wrap_full">
                        <div class="act_wrap">
                            <div><img data-aos="fade-left" data-aos-easing="ease-in-out" data-aos-delay="300" data-aos-duration="300" class="line line1" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/line_purple_1.png" alt="N�� ���Թ�" /></div>
                            <div><img data-aos="fade-right" data-aos-easing="ease-out" data-aos-delay="500" data-aos-duration="150" class="line line2" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/line_yellow_1.png" alt="N�� ���Թ�" /></div>
                            <div><img data-aos="fade-left" data-aos-easing="ease-in-out" data-aos-delay="700" data-aos-duration="300" class="line line3" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/line_purple_2.png" alt="N�� ���Թ�" /></div>
                            <div><img data-aos="fade-right" data-aos-easing="ease-out" data-aos-delay="900" data-aos-duration="150" class="line line4" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/line_yellow_2.png" alt="N�� ���Թ�" /></div>
                            <div class="act_box">
                                <div><img data-aos="zoom-out" data-aos-easing="ease-out" data-aos-delay="800" data-aos-duration="400" class="act act01" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/top_txt01.png" alt="" /></div>
                                <div><img data-aos="fade-right" data-aos-easing="ease-out" data-aos-delay="900" data-aos-duration="400" class="act act02" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/top_txt02.png" alt="2026" /></div>
                                <div><img data-aos="fade-left" data-aos-easing="ease-out" data-aos-delay="1000" data-aos-duration="400" class="act act03" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/top_txt03.png" alt="N�� ���Թ�" /></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="academyListPosition" class="academy_list_position">
                    <div class="fixed_academy_list">
                        <div class="academy_title"><span>�п� �ȳ�</span></div>
                        <div class="academy_list">
                            <div><a href="https://seocho.megastudy.net/seocho/nsu/nsu/2026/2026_nsu_regular/regular_01.asp" target="_blank">����</a></div>
                            <div><a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2026/2026_nsu_regular/regular_01.asp" target="_blank">����</a></div>
                            <div><a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2026/2026_nsu_regular/regular_01.asp" target="_blank">�뷮��</a></div>
                            <div><a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2026/2026_nsu_regular/regular_01.asp" target="_blank">����</a></div>
                            <div><a href="https://songpa.megastudy.net/songpa/nsu/nsu/2026/2026_nsu_regular/regular_01.asp  " target="_blank">����</a></div>
                            <div><a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2026/2026_nsu_regular/regular_01.asp" target="_blank">��õ</a></div>
                            <div><a href="https://bundang.megastudy.net/bundang/nsu/nsu/2026/2026_nsu_regular/regular_01.asp" target="_blank">�д�</a></div>
                            <div><a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2026/2026_nsu_regular/regular_01.asp" target="_blank">�ϻ�</a></div>
                            <div><a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2026/2026_nsu_regular/regular_01.asp" target="_blank">����</a></div>
                        </div>
                    </div>
                </div>

                <div class="section_first">
                    <div class="wrap">
                        <div class="title_wrap">
                            <div><img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/first_title_img01.png" alt="FIRST=RATE!" /> </div>
                            <div><img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="300" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/first_title_img02.png" alt="��¥" /> </div>
                        </div>
                        <div class="graph_wrap mt80">
                            <div><img data-aos="fade-down-right" data-aos-easing="ease-in" data-aos-delay="400" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/first_graph01.png" alt="" /></div>
                            <div><img data-aos="fade-down-left" data-aos-easing="ease-in" data-aos-delay="400" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/first_graph02.png" alt="" /></div>
                            <div><img data-aos="fade-up-right" data-aos-easing="ease-in" data-aos-delay="600" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/first_graph03.png" alt="" /></div>
                            <div><img data-aos="fade-up-left" data-aos-easing="ease-in" data-aos-delay="600" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/first_graph04.png" alt="" /></div>
                            <div>
                                <img data-aos="zoom-in" data-aos-easing="ease-in-out" data-aos-delay="800" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/first_graph_center.png" alt="" />
                            </div>
                            <div class="text">
                                <img data-aos="zoom-in" data-aos-easing="ease-in" data-aos-delay="900" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/first_graph_text.png" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="section_scroll">
                <div class="wrap">
                            
                    <div class="title_wrap">
                        <div><img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="0" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/scroll_title_img01.png" alt="��¥ ���غ� ������" /> </div>
                        <div><img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="300"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/scroll_title_img02.png" alt="ǳ���� �������� �Ϻ��� ���� ���" /> </div>
                    </div>

                    <div class="slider_content">
                        <div class="tabs">
                            <button class="tab" data-index="0">����</button>
                            <button class="tab" data-index="1">OMEGA �ø���</button>
                            <button class="tab" data-index="2">���� ��ü ���ǰ��</button>
                            <button class="tab" data-index="3">���� ���� ���� ������</button>
                        </div>
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <a class="link1" href="https://campus.megastudy.net/campus_common/2025/2025_custom_contents/index.asp" target="_blank"><span class="blind"></span></a>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/scroll_slide_img01_250328.png" alt="" />
                                </div>
                                <div class="swiper-slide">
                                    <a class="link2" href="https://campus.megastudy.net/campus_common/2025/2025_omega/index.asp" target="_blank"><span class="blind"></span></a>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/scroll_slide_img02_250328.png" alt="" />
                                </div>
                                <div class="swiper-slide">
                                    <a class="link3_1" href="https://campus.megastudy.net/campus_common/2025/2025_jdsm/index.asp" target="_blank"><span class="blind"></span></a>
                                    <a class="link3_2" href="https://campus.megastudy.net/campus_common/2025/2025_premium/index.asp" target="_blank"><span class="blind"></span></a>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/scroll_slide_img03_250328.png" alt="" />
                                </div>
                                <div class="swiper-slide">
                                    <a class="link4" href="https://campus.megastudy.net/campus_common/2025/2025_alpha/index.asp" target="_blank"><span class="blind"></span></a>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/scroll_slide_img04_250328.png" alt="" />
                                </div>
                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </div>
            </div>

            
            <div class="section_level">
                <div class="wrap">
                    <div class="title_wrap">
                        <div><img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_title_img01.png" alt="ANOTHER LEVEL" /> </div>
                        <div><img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="300" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_title_img02.png" alt="�л� �߽� ���� ������ ���Լ����� �ε�� �ϼ�" /> </div>
                    </div>
                    <div class="mt80">
                        <div data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="300" data-aos-duration="400">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_sub_tit01.png" alt="�л����� �����ϴ� ��� ������" />
                        </div>
                        <div class="mt25" data-aos="zoom-in" data-aos-easing="ease-in-out" data-aos-delay="400" data-aos-duration="600">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_img01.png" alt="�� �Ȱ��� ������?" />
                        </div>
                    </div>

                    <div class="mt80">
                        <div data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="500"  data-aos-duration="400">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_sub_tit02.png" alt="������ ���� �ý��� �Խ� ���� ����" />
                        </div>
                        <div class="step_wrap" data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="600">
                            <div class="row_box mt60">
                                <div>
                                    <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="200" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_step_01.png" alt="" /> 
                                </div>
                                <div>
                                    <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="400" data-aos-duration="500"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_step_02.png" alt="" /> 
                                </div>
                                <div>
                                    <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="600" data-aos-duration="500"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_step_03.png" alt="" /> 
                                </div>
                                <div>
                                    <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="800" data-aos-duration="500"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_step_04.png" alt="" /> 
                                </div>
                                <div>
                                    <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="1000" data-aos-duration="500"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_step_end.png" alt="" /> 
                                </div>
                            </div>
                            <div class="gap_box">
                                <img data-aos="fade-right-in" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_gap.png" alt="" />
                                <img data-aos="fade-right-in" data-aos-delay="500" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_gap.png" alt="" /> 
                                <img data-aos="fade-right-in" data-aos-delay="700" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_gap.png" alt="" /> 
                                <img data-aos="fade-right-in" data-aos-delay="900" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/level_gap.png" alt="" /> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="section_megapass" style="background:url('<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/megapass_bg.jpg') 50% top no-repeat; background-size:cover;">
                <div class="wrap">
                    <div class="title_wrap">
                        <div><img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/megapass_img01.png" alt="" /></div>
                        <div class="mt36"><img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="300" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/megapass_img02.png" alt="" /></div>
                        <div class="mt36"><img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="400" data-aos-duration="300" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/megapass_img03.png" alt="" /></div>
                    </div>
                    <div class="coupon">
                        <img data-aos="flip-down" data-aos-easing="ease-in" data-aos-delay="400" data-aos-duration="700"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/coupon.png" alt="" />
                    </div>
                    <div class="coin">
                        <img data-aos="zoom-out" data-aos-easing="ease-out" data-aos-delay="0" data-aos-duration="400" data-aos-anchor-placement="top-center" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/coin.png" alt="" />
                    </div>
                </div>
            </div>

            <div class="section_banner" style="background:url('<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/banner_bg.jpg') 50% top no-repeat; background-size:cover;">
                <div class="wrap">
                    <div><img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/banner_img01.png" alt="" /></div>
                    <div><img data-aos="fade-right" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="300"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsu_regular_gate/banner_img02.png" alt="" /></div>
                </div>
            </div>

        </div><!-- // contents -->
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
                
            var swiper = new Swiper(".swiper-container", {
                direction: "vertical", 
                loop: false, 
                slidesPerView: 1, 
                speed: 600, 
                mousewheel: true,
                pagination: {
                    el: ".swiper-pagination", 
                    clickable: true, 
                },
                watchOverflow: true,
                on: {
                    slideChange: function () {
                        handleSlideChange(swiper.activeIndex);
                        disableEdgeScroll();
                    },
                    reachEnd: function () {
                        enableEdgeScroll();
                    },
                    reachBeginning: function () {
                        enableEdgeScroll();
                    },
                },
            });
    
            var $tabs = $(".tab");
    
            function handleSlideChange(activeIndex) {
                $tabs.removeClass("active").eq(activeIndex).addClass("active");
            }
    
            function disableEdgeScroll() {
                setTimeout(function () {
                    swiper.params.touchReleaseOnEdges = false;
                    swiper.params.mousewheel.releaseOnEdges = false;
                });
            }
    
            function enableEdgeScroll() {
                setTimeout(function () {
                    swiper.params.touchReleaseOnEdges = true;
                    swiper.params.mousewheel.releaseOnEdges = true;
                }, 500);
            }
    
            $tabs.on("click", function () {
                var index = $(this).data("index"); 
                swiper.slideTo(index); 
                handleSlideChange(index); 
            });
    
            handleSlideChange(0);
        });
    
        $(function(){
            rightQuickBanner();
            $(window).on('load', function () {
                pageLoadEvent();
                aosEvent();
            });
        });

        window.addEventListener("scroll", function () {
            var banner = document.getElementById("academyListPosition");
            var scrollPosition = window.scrollY;
            var pageHeight = document.documentElement.scrollHeight - window.innerHeight;
            var scrollPercentage = (scrollPosition / pageHeight) * 100;

            if(scrollPercentage >= 95){
                banner.style.position = "fixed";
                banner.style.bottom = "320px";
            }
            else{
                banner.style.position = "fixed";
                banner.style.bottom = "50px";
            }
        });

        function pageLoadEvent(){
            var temp_s = $("#sectionTitle").offset().top;
            $('html, body').animate({ scrollTop: temp_s}, 500);
        }
    
        function aosEvent(){
            AOS.init({
                duration: 4000,
                easing: 'ease-in',
                once: true,
                animatedClassName: 'aos-animate',
            });
        }
    
        function rightQuickBanner(){
            $(".quick_banner li a").on('click', function(e){
                var _top = $($(this).attr('href')),
                    $target = _top.offset().top;
                e.preventDefault();
                $('html, body').animate({
                    scrollTop: $target
                }, 300);
            });
        }
    </script>
</div>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>