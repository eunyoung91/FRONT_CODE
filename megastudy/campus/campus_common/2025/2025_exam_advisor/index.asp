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

<meta name="keywords" content="�ް����͵��п�, �����п�, ����п�, �Խ�, �������п�, �ް����͵𷯼�, �ް����͵�, N��, ����, ����, ���ǰ��, ���� ���ǰ��" />
<meta name="description" content="������ �ް����͵��п� �Խ� ���� ����! ������ ���Լ��� �ε�� �ϼ�!"/>
<meta property="og:type" content="website">
<meta property="og:title" content="�ް����͵��п�">
<meta property="og:description" content="������ �ް����͵��п� �Խ� ���� ����! ������ ���Լ��� �ε�� �ϼ�!">
<meta property="og:site_name" content="�ް����͵��п�">
<meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_exam_advisor/index.asp">
<%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2025/2025_exam_advisor/thumb.jpg'>"
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
<link rel="stylesheet" type="text/css" href="web.css?v=1"><!-- 2025 exam advisor -->

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
        <div id="advisorWrap" class="advisor_wrap">
            <!-- visual title  -->
            <div class="visual_title">
                <div class="tit_container">
                    <div class="inner">
                        <img class="motion m01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_txt1.png" alt="�ް����͵��п��� Ư����">
                        <img class="motion m02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_txt2.png" alt="�Խ� ���� ����">
                        <img class="motion m03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_txt3.png" alt="���� ����� ���� �ٽ� ����! ������ ����">

                        <img class="motion m07 light1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_star1.png" alt="">
                        <img class="motion m07 light2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_star2.png" alt="">
                    </div>
                </div>

                <div class="cube_container motion m04">
                    <div class="cubeAll">
                        <div class="cube_block_wrap">
                            <div class="cube active" id="first">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_cube1.png" alt="������">
                                <img class="icon_img" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_icon1.png" alt="">
                            </div>
                            <div class="cube next" id="second">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_cube2.png" alt="������">
                                <img class="icon_img" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_icon2.png" alt="">
                            </div>
                            <div class="cube prev" id="third">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_cube3.png" alt="������">
                                <img class="icon_img" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_icon3.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="light">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_light.png" alt="">
                    </div>   
                </div>

                <div class="bg_wrap">
                    <img class="motion m05" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_bg1.jpg" alt="">
                    <img class="motion m06" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/tit_bg2.png" alt="">
                </div>
            </div>
            <!-- //visual title  -->

            <!-- contents -->
            <div class="advisor_contents">
                <!-- navi -->
                <nav class="nav_menu">
                    <ul>
                        <li><a class="on" href="jvavascript:void(0);" data-target="#cont_advisor">�Խ� ���� ����</a></li>
                        <li><a href="jvavascript:void(0);" data-target="#cont_system">�ý���</a></li>
                        <li><a href="jvavascript:void(0);" data-target="#cont_contents">������</a></li>
                    </ul>
                </nav>
                <!-- //navi -->
                <div id="cont_advisor">
                    <div class="cont1">
                        <div class="tit_wrap" data-aos="fade-up">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con01_tit.png" alt="�Խ� ���� ����" />
                        </div>
                        <div class="ct_wrap" data-aos="fade-up">
                        <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0208" Then '���� %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img02.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img03.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img04.png" alt="�̼���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img05.png" alt="�̿���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img06.png" alt="�Ӽ���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img07.png" alt="������" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0210" Then '�������� %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img01.png" alt="�̿���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img02.png" alt="�踸��" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img03.png" alt="�迵��" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img04.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img05.png" alt="����" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img06.png" alt="�̿���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img07.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img08.png" alt="�����" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img09.png" alt="����ö" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img10.png" alt="�ѹμ�" />
                                </div>
                                <!-- <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img11.png" alt="������" />
                                </div> -->
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/gb/slide01_img12.png" alt="������" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0211" Then '�뷮�� %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img01.png" alt="����ö" />
                                </div>
                                <!-- <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img02.png" alt="������" />
                                </div> -->
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img03.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img04.png" alt="�̼���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img05.png" alt="�����" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/nrj/slide01_img06.png" alt="������" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '���� %>
                            <div class="advisor_slider center">
                                <!-- <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img01.png" alt="������" />
                                </div> -->
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img02.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img03.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img04.png" alt="����ö" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img05.png" alt="�̿���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img06.png" alt="���ؼ�" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img07.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img08.png" alt="�ּ���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img09.png" alt="����ȣ" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sinc/slide01_img10.png" alt="Ȳ����" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0276" Then '���� %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img02.png" alt="����" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img03.png" alt="���ܺ�" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img0407.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img04.png" alt="�̵���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img05.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sp/slide01_img06.png" alt="�ֹα�" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0251" Then '��õ %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img01.png" alt="���ѻ�" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img02.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img03.png" alt="�����" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img04.png" alt="���ֿ�" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img05.png" alt="�ڹ���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bc/slide01_img06.png" alt="�̻��" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0253" Then '�д� %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img01.png" alt="�����" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img02.png" alt="���κ�" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img03.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img04.png" alt="�̽���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img05.png" alt="�Ž���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bd/slide01_img06.png" alt="������" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0255" Then '�ϻ� %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/is/slide01_img01.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/is/slide01_img02.png" alt="��ٿ�" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/is/slide01_img03.png" alt="�赿ȯ" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/is/slide01_img04.png" alt="���μ�" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/is/slide01_img05.png" alt="Ȳ����" />
                                </div>
                            </div>
                        <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0217" Then '���� %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img01.png" alt="�ֿ���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img02.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img03.png" alt="ȫ����" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img01.png" alt="�ֿ���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img02.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/pc/slide01_img03.png" alt="ȫ����" />
                                </div>
                            </div>
                        <% Else %>
                            <div class="advisor_slider center">
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img02.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img03.png" alt="������" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img04.png" alt="�̼���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img05.png" alt="�̿���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img06.png" alt="�Ӽ���" />
                                </div>
                                <div>
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/sc/slide01_img07.png" alt="������" />
                                </div>
                            </div>
                        <% End If %>
                            <script>
                        $(function(){
                                var $slider = $(".advisor_slider");

                                $slider.slick({
                                    centerMode: true,
                                    centerPadding: 0,
                                    slidesToShow: 3,
                                    slidesToScroll: 1,
                                    autoplay: true,
                                    autoplaySpeed: 3000,
                                    speed: 100,
                                    cssEase: 'linear',
                                    useTransform: false
                                });

                                $slider.on("afterChange", function() {
                                    $slider.slick("slickPlay");
                                });
                            });
                            </script>
                        </div>
                    </div>
                    <div class="cont2">
                        <div class="inner">
                            <div class="tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con02_tit.png" alt="�Խ� ���� ���� ���� ����" />
                            </div>
                            <div class="ct_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con02_img01.png" alt="" />
                            </div>
                        </div>
                    </div>
                </div>    
                
                <div id="cont_system">
                    <div class="cont3">
                        <div class="inner">
                            <div class="tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con03_tit.png" alt="�Խ� ���� ���� �ý���" />
                            </div>
                            <div class="ct_wrap">
                                <ul data-aos="fade-up" class="system_accd">
                                    <li class="active">
                                        <div class="item_tt">
                                            <span>�н���ȹ</span>
                                        </div>
                                        <div class="item_ct">
                                            <h4>�н� ��ȹ</h4>
                                            <p>
                                                �� �ֱ����� �н� �÷��� Ȯ�� �� �ǵ��<br>
                                                �� �ֱ����� ���ϼ��� 30�� Ȯ��<br>
                                                �� ���ܾ�/���� ��� TEST �� �ǵ��<br>
                                                �� ���ǰ�� ������ Ǯ�� �� �ǵ��<br>
                                                �� ���� �м� ���� ����� �м�<br>
                                                �� ���� ��� ���� �ʿ� ���� �� �н� ���� ����
                                            </p>
                                            <div class="img_area">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con03_img01.png" alt="" />
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_tt">
                                            <span>��������</span>
                                        </div>
                                        <div class="item_ct">
                                            <h4>���� ����</h4>
                                            <p>
                                                �� ��� ������ ���� ���� ������ ����<br>
                                                �� �л��� Ȯ�� ���� ���� ���� �м�<br>
                                                �� ����� ���� ��ǥ ���� �� ���ǰ�� �� �м�<br>
                                                �� �ſ� �� ��ġ Ȯ��<br>
                                                �� ���� �м� ���� ����� Ȯ�� �� �н� ���� ����
                                            </p>
                                            <div class="img_area">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con03_img02.png" alt="" />
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="item_tt">
                                            <span>�Խ�����</span>
                                        </div>
                                        <div class="item_ct">
                                            <h4>�Խ� ����</h4>
                                            <p>
                                                �� �Խ� ���� ������ ü������ �Խ� ����<br>
                                                �� �ſ� ���� ���� �����ͷ� �� ��ġ ���� �� ü������ �Խ� ��� ����<br>
                                                �� �ֽ� �Խ� ���� Ȯ�� �� ������ ��� �Խ� ���� ����<br>
                                                �� �������� �Խ� ���̵�/����ȸ ����<br>
                                                �� ����/���� ��ġ ��� ����
                                            </p>
                                            <div class="img_area">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con03_img03.png" alt="" />
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                                <script>
                                $(function(){
                                    /* Accordion menu */
                                    $('.system_accd li .item_tt').click(function() {
                                        var parent_li = $(this).parent('li');
                                        
                                        if (!parent_li.hasClass('active')) {
                                            $('.system_accd li').removeClass('active');
                                            parent_li.addClass('active');
                                        }
                                    });
                                });
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="cont4">
                        <div class="inner">
                            <div class="tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con04_tit.png" alt="���� �л����� ������ Ŀ��ŧ�� �н���ȹ" />
                            </div>
                            <div class="sub_tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con04_sub_tit01.png" alt="�л��� ���� �м�" />
                            </div>
                            <div class="ct_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con04_img01.png" alt="" />
                            </div>
                            <div class="sub_tit_wrap" style="margin-top:-60px;">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con04_sub_tit02.png" alt="�н� ��ȹ �� ���� ����" />
                            </div>
                            <div class="ct_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con04_img02.png" alt="" />
                            </div>
                        </div> 
                    </div>
                    <div class="cont5">
                        <div class="inner">
                            <div class="tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con05_tit.png" alt="���� ��� ���� 1:1 ������ ���� ����" />
                            </div>
                            <div class="sub_tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con05_sub_tit01.png" alt="�л��� ���� �м�" />
                            </div>
                            <div class="ct_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con05_img01.png" alt="" />
                            </div>
                            <div class="sub_tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con05_sub_tit02.png" alt="���Լ��� ���� �÷�" />
                            </div>
                            <div class="ct_wrap">
                                <table data-aos="fade-up" cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4">
                                    <caption>���Լ��� ���� �÷�</caption>
                                    <colgroup>
                                        <col width="12.5%" span="8">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th>����</th>
                                            <th>2��</th>
                                            <th>3~4��</th>
                                            <th>5~6��</th>
                                            <th>7~8��</th>
                                            <th>9��</th>
                                            <th>10~11��</th>
                                            <th>12��</th>
                                        </tr>
                                        <tr>
                                            <th>�н� ����</th>
                                            <td>
                                                �� ���� TEST�� ���� �м� �� �н� ���� ���<br>
                                                �� �÷��� �ۼ��� ����
                                            </td>
                                            <td>
                                                �� ���ǰ�� ���� Ȯ�� �� ���� �м� ����� ���� �н� ����
                                            </td>
                                            <td>
                                                �� ���ǰ�� ���� Ȯ�� �� ���� �м� ����� ���� �н� ����<br>
                                                �� 6�� ���� ���� �м�
                                            </td>
                                            <td>
                                                �� ���ǰ�� ���� Ȯ�� �� ���� �м� ����� ���� �н� ����<br>
                                                �� D-100 �н� ���� ����
                                            </td>
                                            <td>
                                                �� ���ǰ�� ���� Ȯ�� �� ���� �м� ����� ���� �н� ����<br>
                                                �� 9�� ���� ���� �м�
                                            </td>
                                            <td>
                                                �� ���ǰ�� ���� Ȯ�� �� ���� �м� ����� ���� �н� ����
                                            </td>
                                            <td rowspan="3">
                                                �� 1�� ���� �հ� ���� ���<br><br>
                                                �� ���� ���� �հ� ���� ���
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>1:1 ���</th>
                                            <td>
                                                �� �п� ��Ȱ ���� ���� ���
                                            </td>
                                            <td>
                                                �� ���� �н� ��ȹ ���<br>
                                                �� �� ��ġ �ľ� �� ����ο��� ���� ���� ���
                                            </td>
                                            <td>
                                                �� 6�� ���� ���� �м� �� ���� �н� ���� ���
                                            </td>
                                            <td>
                                                �� 1�� ���� �հ� ���� ���
                                            </td>
                                            <td>
                                                �� ���� ���� �հ� ���� ���<br>
                                                �� 9�� ���� ���� �м� �� ���� �н� ���� ���
                                            </td>
                                            <td>
                                                �� ���̳� �н� ���� ���
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>�Խ� ����</th>
                                            <td>
                                                �� �Խ� ���� ��� ����
                                            </td>
                                            <td>
                                                �� ���к� �Խ� ��� �� ���� ��ȹ�� ���� �Խ� ����
                                            </td>
                                            <td>
                                                �� 6�� ���� ���� ���� ��ġ �ľ� �� �б���Ȱ ��Ϻ� ���� �м�
                                            </td>
                                            <td>
                                                �� ���� �հ� ���� ����ȸ
                                            </td>
                                            <td>
                                                �� 9�� ���� ���� ���� ��ġ �ľ�
                                            </td>
                                            <td>
                                                �� ���� �հ� ���� ����ȸ
                                            </td>
                                        </tr>
                                    </tbody>
                                </table> 
                            </div>
                        </div>
                    </div>
                    <div class="cont6">
                        <div class="inner">
                            <div class="tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_tit.png" alt="1:1 ������ ���Լ��� �ε�� �Խ� ����" />
                            </div>
                            <div class="sub_tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_ct_tit01.png" alt="���� ������" />
                            </div>
                            <div class="ct_box">
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit01.png" alt="Ư¡" />
                                </div>
                                <div class="ct_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img01.png" alt="" />
                                </div>
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit02.png" alt="���μ���" />
                                </div>
                                <div class="ct_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img02.png" alt="" />
                                </div>
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit03.png" alt="REPORT" />
                                </div>
                                <div class="ct_wrap">
                                    <div class="ct_flex" data-aos="fade-up">
                                        <div class="report_wrap">
                                            <div class="rolling_container">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img01.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img02.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img03.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img04.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img05.png" alt="">
                                                
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img01.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img02.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img03.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img04.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling01_img05.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="img_wrap">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img03.png" alt="" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="sub_tit_wrap">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_ct_tit02.png" alt="���� ������" />
                            </div>
                            <div class="ct_box">
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit04.png" alt="Ư¡" />
                                </div>
                                <div class="ct_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img04.png" alt="" />
                                </div>
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit05.png" alt="���μ���" />
                                </div>
                                <div class="ct_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img05.png" alt="" />
                                </div>
                                <div class="sub_tit_wrap">
                                    <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_sub_tit06.png" alt="REPORT" />
                                </div>
                                <div class="ct_wrap">
                                    <div class="ct_flex" data-aos="fade-up">
                                        <div class="report_wrap">
                                            <div class="rolling_container">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img01.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img02.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img03.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img04.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img05.png" alt="">
                                                
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img01.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img02.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img03.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img04.png" alt="">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/rolling02_img05.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="img_wrap">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con06_img06.png" alt="" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="cont_contents">
                    <div class="cont7">
                        <div class="inner">
                            <div class="tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_tit.png" alt="ȿ������ ���� ��� �н� ������" />
                            </div>
                            <div class="sub_tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_sub_tit01.png" alt="�ְ������н� �÷���" />
                            </div>
                            <div class="ct_wrap link_area" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_img01.png" alt="" />
                                <a class="link_btn" href="/campus_common/2025/2025_weekplanner/index.asp" target="_blank">�ڼ��� ����</a>
                            </div>

                            <div class="sub_tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_sub_tit02.png" alt="���� �÷���" />
                            </div>
                            <div class="ct_wrap link_area" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_img02.png" alt="" />
                                <a class="link_btn" href="/campus_common/2025/2025_waffle/index.asp" target="_blank">�ڼ��� ����</a>
                            </div>

                            <div class="sub_tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_sub_tit03.png" alt="���ϼ��� 30��" />
                            </div>
                            <div class="ct_wrap link_area" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_img03.png" alt="" />
                                <a class="link_btn" href="/campus_common/2024/2024_math30/index.asp" target="_blank">�ڼ��� ����</a>
                            </div>

                            <div class="sub_tit_wrap" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_sub_tit04.png" alt="�ް� ����Ʈ ����Ʈ" />
                            </div>
                            <div class="ct_wrap link_area" data-aos="fade-up">
                                <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/con07_img04.png" alt="" />
                                <a class="link_btn" href="/campus_common/2024/2024_smart_report/index.asp" target="_blank">�ڼ��� ����</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bottom_bnr">
                    <div class="inner">
                        <img data-aos="fade" src="<%=Application("img_path")%>/library/campus_common/2025/2025_exam_advisor/bottom_bnr_txt.png" alt="�ް����͵��п��� �����ϴ� Ȯ���� �հ� �ַ��! �� �������� ����� ����ϴ�" />
                    </div>
                </div>
            </div>
            <!-- //contents -->
        </div>
    </div>

    <!-- container End --> 
</div>
<script src="./ui.js"></script>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
