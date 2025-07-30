<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="�ް����͵��п�, ����п�, �Խ�, �������п�, �ް����͵𷯼�, �����п�, ��������п�, �ް����͵�, ����, N��, ���ǰ��, 6������, 9������, ����, ���ް�, ����, ��, �����̹�, 2026����, ��������, ��3, �����, ����" />
    <meta name="description" content="���� ����/�ް����͵��п� ���� ����, �̸� �����ϴ� ���� ���� ���� ����� ���� ���ǰ��!"/>
    <meta property="og:type" content="website">
    <meta property="og:title" content="�ް����͵��п�">
    <meta property="og:description" content="���� ����/�ް����͵��п� ���� ����, �̸� �����ϴ� ���� ���� ���� ����� ���� ���ǰ��!">
    <meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_jdsm/index.asp">
    <%
        pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2025/2025_jdsm/thumb.jpg'>"
        response.write pageOgMeta
    %>
    <!-- #Include Virtual = "/library/include/reload/favicon.asp" -->
    <title><%=gMGC_Campus_Title%></title>
    <!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
    <!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
    <link rel="stylesheet" type="text/css" href="/library/css/style.css" />
    <link rel="stylesheet" type="text/css" href="/library/css/amazingslider.css">
    <link rel="stylesheet" type="text/css" href="https://mcampus.megastudy.net/asset/css/slick.css">

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!-- #include virtual="/public/jquery.asp" -->
    <!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
    <link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
    <link rel="stylesheet" type="text/css" href="web.css?v=3"><!-- 2025 exam advisor -->

    <script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/public/js/intro.js"></script>
    <script src="/public/js/TweenMax.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script language="JavaScript" src="/public/jquery/slick.js"></script>
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
        <div id="jdsmWrap" class="jdsm_wrap">

            <!-- visual title  -->
            <div class="visual_title">
                <div class="visual_wrap">
                    <div class="tit_container">
                        <img class="txt1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/visual_txt1.png" alt="�̸� �����ϴ� ���� ����">
                        <img class="txt2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/visual_txt2.png" alt="����Ǹ�">
                        <img class="txt3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/visual_txt3.png" alt="�ް����͵� ���� ����� ���� ���ǰ��">
                    </div>
                    <div class="bg_container">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/visual_bg.jpg" alt="">
                    </div>
                </div>
            </div>
            <!-- //visual title  -->

            <!-- fixed btn -->
            <div class="fix_btn">
                <a href="#schol_info">
                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/ss_banner.jpg" alt="����Ǹ� ���� ����� ���б� �ȳ�">
                </a>
            </div>
            <!-- //fixed btn -->

            <!-- contents -->
            <div class="jdsm_contents">
                <div class="cont1">
                    <div class="typing txt1">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con01_txt01.png" alt="�������� �غ�� �ܼ��� ������ Ǫ�µ� ��ġ�� �ʽ��ϴ�.">
                    </div>
                    <div class="typing txt2">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con01_txt02.png" alt="���ɰ� ���� ������ ���ǰ�硯">
                    </div>
                    <div class="typing logo">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con01_img01.png" alt="����Ǹ�">
                    </div>
                </div>
                <div class="cont2">
                    <div class="inner">
                        <div class="tit_wrap" data-aos="fade">
                            <p class="sub_txt">������ ���� ����, �Ϻ��� ���� ���</p>
                            <h2 class="tit_txt">���� ������� �����ϴ�<br>���� ���ǰ��</h2>
                        </div>
                        <div class="ct_wrap">
                            <ul class="ct_flex">
                                <li>
                                    <img data-aos="fade-down" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con02_img01.png" alt="���� ���� �ùķ��̼�" />
                                </li>
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con02_img02.png" alt="������Ƽ ����" />
                                </li>
                                <li>
                                    <img data-aos="fade-down" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con02_img03.png" alt="���� ���� ��ȭ ������ ����" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="cont3">
                    <div class="inner">
                        <div class="tit_wrap" data-aos="fade">
                            <p class="sub_txt">���� ����X�ް����͵��п� �������<br>���� ��¥, ���� �ð� ����</p>
                            <h2 class="tit_txt">���� �����ڿ� �Բ��ϴ�<br>���� ���� �ùķ��̼�</h2>
                        </div>
                        <div class="sub_tit_wrap">
                            <h3 class="sub_tit" data-aos="fade-up">
                                �� 2ȸ ����
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con03_sub_tit.png" alt="" />
                            </h3>
                        </div>
                        <div class="ct_wrap">
                            <ul class="ct_flex">
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con03_img01.png" alt="6�� ���� ��� - 5.14(��)" />
                                </li>
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con03_img02.png" alt="���м��дɷ½��� ��� - 9.18(��)" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="cont4">
                    <div class="inner">
                        <div class="tit_wrap" data-aos="fade">
                            <p class="sub_txt">����&�ܺ� ��/�ڻ� ���� ��������<br>�ް����͵� ��������</p>
                            <h2 class="tit_txt">7�ܰ� ���� ����&middot;�˼� �ý�������<br>������Ƽ ���� ����</h2>
                        </div>
                        <div class="ct_wrap">
                            <div class="step_wrap">
                                <ul class="step_box v1">
                                    <li>
                                        <img data-aos="fade-down" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step01.png" alt="step1 �ֽ� ���� ���� �м�
                                        �� ���� ���� ��ȹ" />
                                    </li>
                                    <li>
                                        <img data-aos="fade-down" data-aos-delay="200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step03.png" alt="step3 ���� ���� �� ���� ����" />
                                    </li>
                                    <li>
                                        <img data-aos="fade-down" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step05.png" alt="step5 �ܺ� ���� ���� ������ ����" />
                                    </li>
                                    <li>
                                        <img data-aos="fade-down" data-aos-delay="400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step07.png" alt="step7 �ް����͵� �����Ե��� ���̳� ����" />
                                    </li>
                                </ul>
                                <div class="img_area">
                                    <img data-aos="fade" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_img01.png" alt="" />
                                </div>
                                <ul class="step_box v2">
                                    <li>
                                        <img data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step02.png" alt="step2 ����&�ܺ� �������� ���� ����" />
                                    </li>
                                    <li>
                                        <img data-aos="fade-up" data-aos-delay="200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step04.png" alt="step4 ���� ������ ����" />
                                    </li>
                                    <li>
                                        <img data-aos="fade-up" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con04_step06.png" alt="step6 �����/���л� ��� ���Ϸ� �׽�Ʈ" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div> 
                </div>
                <div class="cont5">
                    <div class="inner">
                        <div class="tit_wrap" data-aos="fade">
                            <p class="sub_txt">�ؼ����ǿ� ���� �м� ����Ʈ,<br>�ΰ� ���� �ڷ����!</p>
                            <h2 class="tit_txt">�Ϻ��� �Ƿ� �ϼ��� ����<br>���� ���� ��ȭ ������ ����</h2>
                        </div>
                        <div class="ct_wrap slide_wrap" data-aos="fade-up">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con05_img01.png" alt="�����м� / �ؼ����� / �ΰ� ������ ����" />

                            <div class="report_slider">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con05_slide01.png" alt="01 ���� �м�" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con05_slide02.png" alt="02 ���� �� �м�" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con05_slide03.png" alt="03 ���� ���� ���� �м�" />
                                </div>
                            </div>
                            <script>
                                $(function(){
                                    var $slider = $(".report_slider");
    
                                    $slider.slick({
                                        dots: true,
                                        arrows: false,
                                        slidesToScroll: 1,
                                        autoplay: true,
                                        autoplaySpeed: 3000,
                                        speed: 500
                                    });
    
                                    $(".report_slider").on("afterChange", function() {
                                        $slider.slick("slickPlay");
                                    });
                                });
                            </script>
                        </div>
                    </div>
                </div>
                <div class="cont6" id="schol_info">
                    <div class="inner">
                        <div class="tit_wrap" data-aos="fade">
                            <p class="sub_txt">���� �ֻ������� ���� Ư�� ����,</p>
                            <h2 class="tit_txt">����Ǹ� ���� ����� ���б� �ȳ�</h2>
                            <p class="info_txt">
                                �׾ƿ� ����� �ݵ�� ������ �̾����ϴ�.<br>
                                ���� ����� ���� ���ǰ�翡�� ����� ������ �ŵ�<br>
                                ��������� ������ �����ϰ� �ݷ��ϱ� ���� ���б��� �����մϴ�.
                            </p>
                        </div>
                        <div class="sub_tit_wrap">
                            <h3 class="sub_tit" data-aos="fade-up">
                                ���б� �ݾ�
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_sub_tit01.png" alt="" />
                            </h3>
                        </div>
                        <div class="ct_wrap">
                            <ul class="ct_flex">
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_img01.png" alt="���� 1�� 100����" />
                                </li>
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_img02.png" alt="���� 2�� - 50����" />
                                </li>
                                <li>
                                    <img data-aos="fade-up" data-aos-delay="300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_img03.png" alt="���� 3�� - 30����" />
                                </li>
                            </ul>
                        </div>
                        <div class="sub_tit_wrap">
                            <h3 class="sub_tit" data-aos="fade-up">
                                ���� ����
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_sub_tit02.png" alt="" />
                            </h3>
                        </div>
                        <div class="img_area">
                            <img data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/con06_img04.png" alt="���� ����" />
                        </div>
                    </div>
                </div>
                <div class="bottom_bnr">
                    <div class="inner">
                        <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_jdsm/bottom_bnr_txt.png" alt="�ް����͵��п��� �����ϴ� Ȯ���� �հ� �ַ��! �� �������� ����� ����ϴ�" />
                    </div>
                </div>
            </div>
            <!-- //contents -->
        </div>
    </div>

    <!-- container End --> 
</div>
<script src="./ui.js?v=2"></script>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
