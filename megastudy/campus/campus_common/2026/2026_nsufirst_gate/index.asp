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
<link rel="stylesheet" type="text/css" href="web.css">
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">

<!-- intro���� css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/Public/jquery/slick.js"></script>
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

    <div id="container">
        <%If CDbl(getYmdhmin()) <= CDbl("2025"&"0104"&"1400") Then '����Ʈ ���� Ÿ�̸� ���� / sook / 2025-01-04 %>
        <ul class="quick">
            <li>
                <a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=25576" target="_blank">
                    <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/quick_top.png" alt="N�� �켱�� ����ȸ">
                </a>
            </li>
            <li>
                <a href="#sectionTitle">
                    <img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/quick_top_btn.png" alt="top���� �̵�">
                </a>
            </li>
        </ul>
        <%End If%>
        <div id="contents">
        
            <div id="sectionTitle" class="content_top_visual">
                <div class="wrap_full">
                    <div class="act_wrap">
                        <img class="act act01_1" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/top_title01.png" alt="���Լ����� ��� ����" />
                        <img class="act act01_2" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/top_title01_box.png" alt="" />

                        <img class="act act02" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/top_title02_2024.png" alt="2026" />
                        <img class="act act03" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/top_title02_nsu.png" alt="N�� �켱��" />

                        <img class="act act04_1" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/top_line01.png" alt="" />
                        <img class="act act04_2" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/top_line02.png" alt="" />
                        <img class="act act04_3" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/top_line03.png" alt="" />
                    </div>
                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area"></div>
                    </div>
                    <!-- <div class="video_area">
                        <div class="video_content">
                            <iframe src='https://tv.naver.com/embed/41913618?autoPlay=true' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='1000' HEIGHT='562' allow='autoplay' allowfullscreen></iframe>
                        </div>
                    </div> -->
                    <div class="mt100">
                        <img data-aos="zoom-out" data-aos-easing="ease-in" data-aos-delay="100" data-aos-duration="700" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/top_ct_title01.png" alt="���Լ����� ��� ����" /> 
                    </div>
                    <div class="mt60">
                        <img data-aos="fade-in" data-aos-easing="ease-in" data-aos-delay="200" data-aos-duration="700" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/top_ct_img01.png" alt="�ϵ����+�հݰ���=���Լ���" /> 
                    </div>
                </div>
            </div>
                
            <div class="fix_bottom_wrap scroll">
                <div class="fix_bottom_area">
                    <ul class="large">
                        <p class="title"><span>N��</span> ����</p>
                        <li><a class="fix_C13" href="" target=""><em>����</em></a></li>
                        <li><a class="fix_C05" href="" target=""><em>����</em></a></li>
                        <li><a class="fix_C04" href="" target=""><em>�뷮��</em></a></li>
                        <li><a class="fix_C11" href="" target=""><em>����</em></a></li>
                        <li><a class="fix_C06" href="" target=""><em>����</em></a></li>
                        <li><a class="fix_C07" href="" target=""><em>��õ</em></a></li>
                        <li><a class="fix_C08" href="" target=""><em>�д�</em></a></li>
                        <li><a class="fix_C09" href="" target=""><em>�ϻ�</em></a></li>
                        <li><a class="fix_C10" href="" target=""><em>����</em></a></li>
                    </ul>

                    <!-- <ul class="small">
                        <p class="title"><span>N��</span> ���</p>
                        <li><a class="fix_C01" href="" target=""><em>���� ���</em></a></li>
                        <li><a class="fix_C02" href="" target=""><em>���� ���</em></a></li>
                    </ul> -->
                </div>
            </div>
            <div class="content00" style="height:802px; background:#3C2867 url('<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/mega_pass_bg.jpg') no-repeat center top;">
                <div class="pt100">
                    <img data-aos="fade-in" data-aos-easing="ease-in-out" data-aos-delay="100" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/mega_pass_tit01.png" alt="�ް����͵��п� ����� ����" />
                </div>
                <div class="mt40">
                    <img data-aos="fade-in" data-aos-easing="ease-in" data-aos-delay="200" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/mega_pass_tit02.png" alt="MEGAPASS" /> 
                </div>
                <div class="mt40">
                    <img data-aos="zoom-out" data-aos-easing="ease-in" data-aos-delay="300" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/mega_pass_tit03.png" alt="�ް��н� 100% ����" />
                </div>
            </div>
            <div class="content01">
                <div class="wrap">
                    <div class="pt100">
                        <img data-aos="fade-down" data-aos-easing="ease-in-out" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con01_title01.png" alt="�ѹ� �ռ� ������ Ȯ���� ����" />
                    </div>
                    <div class="mt80">
                        <img data-aos="fade-in" data-aos-easing="ease-in" data-aos-delay="200" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con01_img01.png" alt="�հ���" /> 
                    </div>
                    <div class="mt30">
                        <img data-aos="fade-in" data-aos-easing="ease-in" data-aos-delay="250" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con01_txt01.png" alt="* 2024�г⵵ ���� ����Ž(2) ��� 2��� �̳��� ������ �л� 116��" />
                    </div>
                    <div class="mt80">
                        <img data-aos="flip-down" data-aos-easing="ease-in" data-aos-delay="300" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con01_img02.png" alt="N�� �켱�� �����  100% ���� ���!" /> 
                    </div>
                    <div class="mt30">
                        <img data-aos="fade-in" data-aos-easing="ease-in" data-aos-delay="350" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con01_txt02.png" alt="" />
                    </div>
                    <div class="mt80">
                        <img data-aos="flip-down" data-aos-easing="ease-in" data-aos-delay="450" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con01_img03_1.png" alt="���ϴ� �ǿ��� �հ�" />
                    </div>
                    <div class="mt20">
                        <img data-aos="flip-down" data-aos-easing="ease-in" data-aos-delay="550" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con01_img03_2.png" alt="������ �濵�а� �հ�" />
                    </div>
                    <div class="mt20">
                        <img data-aos="flip-down" data-aos-easing="ease-in" data-aos-delay="650" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con01_img03_3.png" alt="����� �����к� �հ�" />
                    </div>
                    <div class="mt30">
                        <img data-aos="fade-in" data-aos-easing="ease-in" data-aos-delay="700" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con01_txt03.png" alt="* ����Ž(2) ����� ��" />
                    </div>
                </div>
            </div>
            
            <div class="content02">
                <div class="wrap">
                    <div class="mt100">
                        <img data-aos="fade-down" data-aos-easing="ease-in-out" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con02_title01.png" alt="�ѹ� �ռ� ������ ������ ����" />
                    </div>
                    <div class="mt80">
                        <img data-aos="fade-down" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con02_img01.png" alt="�ް����͵��п� 100% �Խ� ���� ����" /> 
                    </div>
                    <div class="card_area mt30">
                        <img data-aos="fade-up" data-aos-easing="ease-in" data-aos-delay="300" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con02_img02_1.png" alt="���� �н��� ���� �н� ���� ���� ����" />
                        <img data-aos="fade-up" data-aos-easing="ease-in" data-aos-delay="400" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con02_img02_2.png" alt="���� �м��� ���� ���� ���� ����" />
                        <img data-aos="fade-up" data-aos-easing="ease-in" data-aos-delay="500" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con02_img02_3.png" alt="���� �� ���� ���� 1:1 ���� ���" />
                    </div>
                    <div class="mt80">
                        <a href="https://campus.megastudy.net/campus_common/2024/2024_admis_expert/index.asp" target="_blank">
                            <img data-aos="fade-in" data-aos-easing="ease-in" data-aos-delay="500" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con02_btn01.png" alt="�Խ� ������ �ڼ��� ����" />
                        </a>
                    </div>
                </div>
            </div>

            <div class="content_banner01">
                <div class="pt50">
                    <img data-aos="fade-down" data-aos-easing="ease-in" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/banner01_txt01.png" alt="��¥ ���غ� ���� �н��� ���� �� �� �ֽ��ϴ�!" />
                </div>
            </div>

            <div class="content03">
                <div class="wrap">
                    <div class="pt100">
                        <img data-aos="fade-down" data-aos-easing="ease-in-out" data-aos-delay="150" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_title01.png" alt="�հ����� ���ϴ� ���� ����" />
                    </div>
                    <div class="pos_rel mt25">
                        <div class="puzzle_area">
                            <img data-aos="fade-in" data-aos-easing="ease-in-sine" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_img01.png" alt="" /> 
                        </div>
                        <div class="img_txt_area">
                            <div class="txt01">
                                <img data-aos="fade-left" data-aos-easing="ease-in-out" data-aos-delay="300" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_img02_1.png" alt="����" /> 
                            </div>
                            <div class="txt02">
                                <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="350" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_img02_2.png" alt="�ð�ǥ" /> 
                            </div>
                            <div class="txt03">
                                <img data-aos="fade-left" data-aos-easing="ease-in-out" data-aos-delay="400" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_img02_3.png" alt="���ǰ��" /> 
                            </div>
                            <div class="txt04">
                                <img data-aos="fade-right" data-aos-easing="ease-in-out" data-aos-delay="450" data-aos-duration="400"  src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_img02_4.png" alt="����" /> 
                            </div>
                        </div>
                    </div>
                    <div class="mt70">
                        <img data-aos="fade-down" data-aos-easing="ease-in-out" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_title02.png" alt="�հ����� ���ϴ� ����Ʈ ����" />
                    </div>
                    <div class="slide_area mt60">
                        <ul class="slide_wrap">
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img01.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img02.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img03.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img04.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img05.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img06.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img07.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img08.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img09.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img10.png" alt="" border="0"></li>

                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img11.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img12.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img13.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img14.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img15.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img16.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img17.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img18.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img19.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img20.png" alt="" border="0"></li>

                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img31.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img32.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img33.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img34.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img35.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img36.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img37.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img38.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img39.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img30.png" alt="" border="0"></li>

                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img41.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img42.png" alt="" border="0"></li>
                            <li><img src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con03_slide_img43.png" alt="" border="0"></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="content_banner02">
                <div class="pt65">
                    <img data-aos="fade-in" data-aos-easing="ease-in-sine" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/banner02_txt01.png" alt="���麸�� ������! ������� �ٸ���! ���Լ����� ��� ����, �ް����͵��п�" />
                </div>
            </div>

            <div class="content04 ct_link_list" id="link">
                <div class="wrap">
                    <div class="pt100 link_title">
                        <img data-aos="fade-in" data-aos-easing="ease-in-out" data-aos-delay="200" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/2026_nsufirst_gate/con04_title01.png" alt="�п��� �����ȳ�" />
                    </div>

                    <div class="academy_list">
                        <!-- <ul>   
                            <li id="C01" class="cam_list">
                                <a href="javascript:alert('���� ���� �����Դϴ�.');">
                                    <p class="title"><span><strong>���� ���</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>031-326-5000
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C02" class="cam_list">
                                <a href="javascript:alert('���� ���� �����Դϴ�.');">
                                    <p class="title"><span><strong>���� ���</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>031-797-9332
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul> -->
                        <ul>
                            <li id="C13" class="cam_list">
                                <a href="https://seocho.megastudy.net/seocho/nsu/nsu/2026/2026_nsufirst/nsufirst_01.asp" target="_blank">
                                    <p class="title"><span><strong>����</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>02-535-5678
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C05" class="cam_list">
                                <a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2026/2026_nsufirst/nsufirst_01.asp" target="_blank">
                                    <p class="title"><span><strong>����</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>02-935-3378
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C04" class="cam_list">
                                <a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2026/2026_nsufirst/nsufirst_01.asp" target="_blank">
                                    <p class="title"><span><strong>�뷮��</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>02-826-1555
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <ul>
                            <li id="C11" class="cam_list">
                                <a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2026/2026_nsufirst/nsufirst_01.asp" target="_blank">
                                    <p class="title"><span><strong>����</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>02-3144-1010                                      
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C06" class="cam_list">
                                <a href="https://songpa.megastudy.net/songpa/nsu/nsu/2026/2026_nsufirst/nsufirst_01.asp" target="_blank">
                                    <p class="title"><span><strong>����</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>02-428-8181                                        
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C07" class="cam_list">
                                <a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2026/2026_nsufirst/nsufirst_01.asp" target="_blank">
                                    <p class="title"><span><strong>��õ</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>032-326-9900
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>                           
                        </ul>
                        <ul>
                            <li id="C08" class="cam_list">
                                <a href="https://bundang.megastudy.net/bundang/nsu/nsu/2026/2026_nsufirst/nsufirst_01.asp" target="_blank">
                                    <p class="title"><span><strong>�д�</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>031-781-3100                                    
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li> 
                            <li id="C09" class="cam_list">
                                <a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2026/2026_nsufirst/nsufirst_01.asp" target="_blank">
                                    <p class="title"><span><strong>�ϻ�</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>031-8073-9600
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C10" class="cam_list">
                                <a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2026/2026_nsufirst/nsufirst_01.asp" target="_blank">
                                    <p class="title"><span><strong>����</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>031-388-3141
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>

            </div>
            
        </div><!-- // contents -->
    </div>
</div>

<script type="text/javascript">
    $(window).load(function() {
        var rSlide = $('.slide_wrap');
        var rItemw = $('.slide_wrap li').outerWidth(true);
        var rNum = $('.slide_wrap li').length;
    
        var rSlidew = rItemw * rNum;
        var rSpeed = 3000;
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
                            rSpeed = 6000 * position;
                        };
                    },
                    complete : function(){
                        $('.slide_wrap li').eq(0).appendTo(rSlide);
                        rSlide.css('left', 0);
                        rSpeed = 6000;
                        autoPlay();
                    }
                }
            );
        }
    });

    $(function(){
        rightQuickBanner();
        titleTweenEvent();

        $(window).on('load', function () {
            pageLoadEvent();
            ad_link();
            aosEvent();
            var fix_txt = $('.scroll .fix_bottom_area').html(); 
            $('.inner .fix_bottom_area').html(fix_txt);

			$(window).on('scroll', function(){
                parallaxScroll();
                ani_scr();
			});
			
		});
    });

    function pageLoadEvent(){
        var temp_s = $("#sectionTitle").offset().top;
        $('html, body').animate({ scrollTop: temp_s}, 500);
    }

    function titleTweenEvent(){

        var motion1 = new TimelineMax({delay:0.2,repeat:0})
            motion1.to(".act01_1", 0.2, {opacity:1, ease: Power2.easeIn})
            motion1.to(".act01_2", 0.4, {opacity:1, ease: Power2.easeIn});

        var motion2 = new TimelineMax({delay:1,repeat:0})
            motion2.to(".act02", 0.5, {opacity:1, scale:1, ease: Power2.easeOut})
            motion2.to(".act03", 0.5, {opacity:1, scale:1, ease: Power2.easeOut});

        var motion3_1 = new TimelineMax({delay:1.8,repeat:0})
            motion3_1.to(".act04_1", 0.3, {opacity:1, right:-468, ease: Power1.easeOut});

        var motion3_2 = new TimelineMax({delay:1.9,repeat:0})
            motion3_2.to(".act04_2", 0.3, {opacity:1, left:-286, ease: Power1.easeOut});
        
        var motion3_3 = new TimelineMax({delay:2,repeat:0})
            motion3_3.to(".act04_3", 0.25, {opacity:1, left:872, ease: Power1.easeOut});
    }

    function aosEvent(){
        AOS.init({
            duration: 4000,
            easing: 'ease-in',
            once: true,
            animatedClassName: 'aos-animate',
        });
    }

    function ani_scr() {
		var winH = $(window).height();
		var scrT = $(window).scrollTop();
		var view_pos = winH + scrT
	
		$(".ani_element").each(function () {
			var elementH = $(this).outerHeight();
			var elementT = $(this).offset().top;
			var elementP = (elementT + elementH - 140);
			if ((elementP <= view_pos)) {
				$(this).addClass("ani_set");
			}
		});
    }

    function rightQuickBanner(){
        $(".quick li a").on('click', function(e){
            var _top = $($(this).attr('href')),
                $target = _top.offset().top;
            e.preventDefault();
            $('html, body').animate({
                scrollTop: $target
            }, 250);
        });
    }
    
    function ad_link() {
        $('#link li').each(function() {
            var l_id = $(this).attr("id");
            var l_link = $(this).find("a").attr("href");
            var l_target = $(this).find("a").attr("target");

            $(".fix_" + l_id).attr("href", l_link);
            $(".fix_" + l_id).attr("target", l_target);            
        });
    }

	function parallaxScroll(){ 
		var scrolled = $(window).scrollTop();

        if(scrolled > $(".content01").offset().top && scrolled < $(".ct_link_list").offset().top-500 ) {
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"block"});
        }
        if(scrolled > $(".ct_link_list").offset().top-500 || scrolled < $(".content01").offset().top) {    
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
        }
	}
</script>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>