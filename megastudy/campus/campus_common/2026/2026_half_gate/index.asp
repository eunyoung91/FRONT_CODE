<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="keywords" content="�ް����͵��п�, ����п�, �Խ�, �������п�, �ް����͵𷯼�, �����п�, ��������п�, �ް����͵�, ����, N��, �ݼ�, 6������, 9������, ����, ����, �ô�����, û��, ������, �����̹�, 2026����, ��������, ��3, �����, �����, �ݼ���, ����">
    <meta name="description" content="�ݹںҰ�! �Ϻ��� ���غ� ���� �н�, �ް����͵��п� 2026 N�� �ݼ���">
    <meta property="og:title" content="�ް����͵��п�">
    <meta property="og:description" content="�ݹںҰ�! �Ϻ��� ���غ� ���� �н�, �ް����͵��п� 2026 N�� �ݼ���">
    <meta property="og:site_name" content="�ް����͵��п�">
    <meta property="og:url" content="https://campus.megastudy.net/campus_common/2026/2026_half_gate/index.asp">
    <%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2026/2026_half_gate/thumb.jpg'>"
	response.write pageOgMeta
    %>
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

    <!-- half gate -->
    <link rel="stylesheet" type="text/css" href="web.css">
    <script type="text/javascript" src="ui.js?v=1"></script>
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

    <div id="container" class="half_gate">
        <div id="contents">
            <div id="topTitle" class="visual_top">
                <div class="act_wrap">
                    <div class="txt_wrap">
                        <div class="txt1">
                            <img class="act1_1" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/top_txt01.png" alt="�ݹںҰ�!" />
                            <img class="act1_2" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/top_txt02.png" alt="�Ϻ��� ���غ� ���� �н�" />
                        </div>
                        <div class="txt2">
                            <img class="act2" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/top_tit01.png" alt="2026" />
                        </div>
                        <div class="txt3"> 
                            <img class="act3" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/top_tit02.png" alt="N�� �ݼ���" />
                        </div>
                    </div>

                    <div class="object_wrap">
                        <div class="obj_posi">
                            <div class="cube_box">
                                <img class="act4" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/top_cube.png" alt="" />

                                <div class="cube c1">
                                    <img class="act4_1" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/top_cube01.png" alt="" />
                                </div>
                                <div class="cube c1_b">
                                    <img class="act4_1" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/top_cube01_blink.png" alt="" />
                                </div>
                                <div class="cube c2">
                                    <img class="act4_2" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/top_cube02.png" alt="" />
                                </div>
                                <div class="cube c3">
                                    <img class="act4_3" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/top_cube03.png" alt="" />
                                </div>
                            </div>
                            
                            <div class="light_wrap">
                                <img class="act5" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/top_line.png" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%If CDbl(getYmdhmin()) <= CDbl("2025"&"0705"&"1400") Then '����Ʈ ���� Ÿ�̸� ���� / sook / 2025-07-04 %>
            <div class="quick_banner">
                <div class="banner_wrap">
                    <a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=26427" target="_blank">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/quick_banr.jpg" alt="2026 N�� �ݼ��� ����ȸ">
                    </a>
                </div>
            </div>
            <%End If%>
            <div class="btn_top_wrap">
                <a href="javascript:;" class="btnTop" style="bottom: 30px; position: fixed; opacity: 1;"><span class="blind">top</span></a>
            </div>
            
            <div id="academyList" class="fixed_academy_list">
                <div class="academy_title">�п� �ȳ�</div>
                <ul class="academy_list">
                    <li><a href="https://seocho.megastudy.net/seocho/nsu/nsu/2026/2026_half/half_01.asp" target="_blank">����</a></li>
                    <li><a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2026/2026_half/half_01.asp" target="_blank">����</a></li>
                    <li><a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2026/2026_half/half_01.asp" target="_blank">�뷮��</a></li>
                    <li><a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2026/2026_half/half_01.asp" target="_blank">����</a></li>
                    <li><a href="https://songpa.megastudy.net/songpa/nsu/nsu/2026/2026_half/half_01.asp  " target="_blank">����</a></li>
                    <li><a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2026/2026_half/half_01.asp" target="_blank">��õ</a></li>
                    <li><a href="https://bundang.megastudy.net/bundang/nsu/nsu/2026/2026_half/half_01.asp" target="_blank">�д�</a></li>
                    <li><a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2026/2026_half/half_01.asp" target="_blank">�ϻ�</a></li>
                    <li><a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2026/2026_half/half_01.asp" target="_blank">����</a></li>
                </ul>
            </div>

            <div class="cont_section1">
                <div class="inner">
                    <div class="title_wrap card_sticky">
                        <img data-aos="fade-up" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con01_title.png" alt="�ް����͵��п��� ��¥ ���غ� ���� �н��� �����մϴ�!" />
                    </div>
                    <div class="ct_wrap sticky_wrap">
                        <div class="card_sticky">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con01_img01.png" alt="" />
                        </div>
                        <div class="card_sticky">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con01_img02.png" alt="" />
                        </div>
                        <div class="card_sticky">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con01_img03.png" alt="" />
                        </div>
                        <div class="card_sticky">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con01_img04.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>

            
            <div class="cont_section2">
                <div class="inner">
                    <div class="title_wrap">
                        <img data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_title.png" alt="2026 N�� �ݼ���" />
                    </div>
                    <div class="sub_title_wrap">
                        <img data-aos="zoom-in" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_point1.png" alt="Point1" />
                        <img class="mt30" data-aos="fade-in" data-aos-delay="400" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_sub_title01.png" alt="���غ�, ���̵���, �ñ⺰ �����Ǵ� ������ ���� ������" />
                    </div>
                    <div class="ct_wrap" data-aos="fade-up" data-aos-delay="600" data-aos-duration="400">
                        <div class="tab_wrap">
                            <ul class="tab_menu">
                                <li class="active">
                                    <a href="#tab1">
                                        <span>Ȯ���� ���� ���</span>
                                        <strong>���غ� ���� ���ǰ��</strong>
                                    </a>
                                </li>
                                <li>
                                    <a href="#tab2">
                                        <span>���� ������� ����ȭ</span>
                                        <strong>���غ� ���� ����</strong>
                                    </a>
                                </li>
                                <li>
                                    <a href="#tab3">
                                        <span>���� Ʈ����� ����� ���� �Ϻ� �ݿ�</span>
                                        <strong>�׸�&middot;��ȭ ����</strong>
                                    </a>
                                </li>
                            </ul>
                            <div class="tab_contents">
                                <div id="tab1" class="tab_ct active">
                                    <ul class="img_list link_wrap">
                                        <li>
                                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_tab01_img01.png" alt="OMEGA" />
                                            <a href="https://campus.megastudy.net/campus_common/2025/2025_omega/index.asp" target="_blank">�ڼ��� ����</a>
                                        </li>
                                        <li>
                                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_tab01_img02.png" alt="����Ǹ�" />
                                            <a href="https://campus.megastudy.net/campus_common/2025/2025_jdsm/index.asp" target="_blank">�ڼ��� ����</a>
                                        </li>
                                        <li>
                                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_tab01_img03.png" alt="�޴���" />
                                            <a href="https://campus.megastudy.net/campus_common/2025/2025_premium/index.asp" target="_blank">�ڼ��� ����</a>
                                        </li>
                                        <li>
                                            <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_tab01_img04.png" alt="ALPAH" />
                                            <a href="https://campus.megastudy.net/campus_common/2025/2025_alpha/index.asp" target="_blank">�ڼ��� ����</a>
                                        </li>
                                    </ul>
                                </div>
                                <div id="tab2" class="tab_ct">
                                    <ul class="img_list">
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_tab02_img01.png" alt="���� ������" /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_tab02_img02.png" alt="���� ������" /></li>
                                        <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_tab02_img03.png" alt="���� ���Ǿ�" /></li>
                                    </ul>
                                    <a class="btn_view" href="https://campus.megastudy.net/campus_common/2025/2025_custom_contents/index.asp" target="_blank">
                                        <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/tab02_btn_view.png" alt="�ڼ��� ����" />
                                    </a>
                                </div>
                                <div id="tab3" class="tab_ct">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_tab03_img01.png" alt="���ϴ� ������ �����Ͽ� ���������� �����ϴ� �׸�����ȭ ����" />
                                    <img class="mt60" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_tab03_img02.png" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="sub_title_wrap">
                        <img data-aos="zoom-in" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_point2.png" alt="Point2" />
                        <img class="mt30" data-aos="fade-in" data-aos-delay="400" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_sub_title02.png" alt="�ʿ��� ����, ������ ���� ���� �����ϴ� ���غ� ���� ���� �н�" />
                    </div>
                    <div class="ct_wrap">
                        <img data-aos="fade-up" data-aos-delay="500" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_img02.png" alt="���� �ð�ǥ" />
                    </div>

                    <div class="sub_title_wrap">
                        <img data-aos="zoom-in" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_point3.png" alt="Point3" />
                        <img class="mt30" data-aos="fade-in" data-aos-delay="400" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_sub_title03.png" alt="�������� �Խ� ���� ������ ������ ���Լ��� �ε�� �ϼ�" />
                    </div>
                    <div class="ct_wrap">
                        <img data-aos="fade-up" data-aos-delay="500" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_img03.png" alt="" />
                    </div>

                    <div class="sub_title_wrap">
                        <img data-aos="zoom-in" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_point4.png" alt="Point4" />
                        <img class="mt30" data-aos="fade-in" data-aos-delay="400" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_sub_title04.png" alt="���� ������ ���� ������ ����ο� ��������" />
                    </div>
                    <div class="ct_wrap">
                        <img data-aos="fade-up" data-aos-delay="500" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_img04.png" alt="���� / ���ǰ�� / ����" />
                    </div>
                    <div class="ct_wrap">
                        <img data-aos="fade-up" data-aos-delay="600" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con02_img05.png" alt="�� 26,404���� �л��� �� 720����� �������� ������ �޾ҽ��ϴ�." />
                    </div>
                </div>
            </div>

            <div class="cont_section3">
                <div class="inner">
                    <div class="title_wrap">
                        <img data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con03_title.png" alt="�ް����͵��п����� Ư�� ����" />
                    </div>
                    <div class="ct_wrap">
                        <img data-aos="fade-in" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con03_img01.png" alt="�ް��н�, QUBE ������, �հ� ���� ���� ����" />
                    </div>
                </div>
            </div>

            <div class="cont_section4">
                <div class="inner">
                    <div class="title_wrap">
                        <img data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con04_title.png" alt="������ �ı�� �翬�� ���" />
                    </div>
                    <div class="ct_wrap">
                        <img data-aos="fade-right" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con04_img01.png" alt="�ı�1" />
                        <img class="mt40" data-aos="fade-left" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con04_img02.png" alt="�ı�2" />
                        <img class="mt40" data-aos="fade-right" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con04_img03.png" alt="�ı�3" />
                        <img class="mt40" data-aos="fade-left" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con04_img04.png" alt="�ı�4" />
                        <img class="mt40" data-aos="fade-in" data-aos-delay="400" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/con04_txt01.png" alt="�� ����Ž(2) ����� �� ����" />
                    </div>
                </div>
            </div>

            <div id="bottom_bnr" class="cont_section5">
                <div class="inner">
                    <div class="bnr_wrap">
                        <img data-aos="fade-down" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/bottom_bnr_txt01.png" alt="�ֻ��� ����� ���Լ����� �ϼ��ϴ�" />
                    </div>
                    <div class="bottom_cube1">
                        <img data-aos="fade-up" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/bottom_bnr_cube01.png" alt="" />
                    </div>
                    <div class="bottom_cube2">
                        <img data-aos="fade-down" data-aos-delay="300" data-aos-duration="300" src="<%=Application("img_path")%>/library/campus_common/2026/2026_half_gate/bottom_bnr_cube02.png" alt="" />
                    </div>
                </div>
            </div>

        </div><!-- // contents -->
    </div>
</div>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>