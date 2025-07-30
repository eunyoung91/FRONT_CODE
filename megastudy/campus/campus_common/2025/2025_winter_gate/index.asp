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
<link rel="stylesheet" type="text/css" href="web.css">
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">

<!-- intro���� css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/Public/jquery/slick.js"></script>
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
    <%
        Dim strEndDate : strEndDate = "2024"&"1228"&"1600"
        if CDbl(getYmdhmin()) < CDbl(strEndDate) Then 
    %>    
        <ul class="quick">
            <li>
                <a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=25038" target="_blank">
                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/quick_link.png" alt="���ͽ��� ����ȸ">
                </a>
            </li>
            <li>
                <a href="#sectionTitle">
                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/btn_quick_top.png" alt="top���� �̵�">
                </a>
            </li>
        </ul>
    <%
        end if 
    %>

        <div id="contents">
            <div class="section_title" id="sectionTitle" style="background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_bg.jpg') 50% top no-repeat;">
                <div class="wrap_full">
                    <div class="act_wrap">
                        <img class="txt act01_1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt01_1.png" alt="����" />
                        <img class="txt act01_2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt01_2.png" alt="�� ������" />
                        <img class="txt act01_3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt01_3.png" alt="����" />
                        <img class="txt act01_4" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt01_4.png" alt="�� ������!" />
                        <img class="txt act02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt02.png" alt="2025" />
                        <img class="txt act03_1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt03_1.png" alt="��" /> 
                        <img class="txt act03_2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt03_2.png" alt="��" /> 
                        <img class="txt act03_3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt03_3.png" alt="��" /> 
                        <img class="txt act03_4" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt03_4.png" alt="��" />

                        <div class="txt act04">
                            <!-- <div>
                                <img class="" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt04_1.png" alt="���" />
                                <span><em class="num">2025. 1. 1</em>(��) ����</span>
                            </div>
                            <div>
                                <img class="" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_txt04_2.png" alt="����" />
                                <span><em class="num">2025. 1. 2</em>(��) ����</span>
                            </div> -->
                            <div>
                                <span><em class="num"> 2025. 1. 2</em>(��) ����</span>
                            </div> 
                        </div>

                        <img class="txt act05" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_light.png" alt="" />
                    </div>

                    <div class="fix_bottom_wrap inner">
                        <div class="fix_bottom_area"></div>
                    </div>
                    
                    <!-- <div class="video_area">
                        <div class="video_content">
                            <iframe src='https://tv.naver.com/embed/57581101?autoPlay=true' loading="lazy" frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='1000' HEIGHT='563' allow='autoplay' allowfullscreen></iframe>
                        </div>
                    </div> -->
                </div>
                
                <div class="snow-fall"></div>
            </div>

            <div class="fix_bottom_wrap scroll">
                <div class="fix_bottom_area">
                    <ul class="large">
                        <p class="title">����</p>
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
                        <p class="title">���</p>
                        <li><a class="fix_C01" href="" target=""><em>���� ���</em></a></li>
                        <li><a class="fix_C02" href="" target=""><em>���� ���</em></a></li>
                        <li><a class="fix_C14" href="" target=""><em>�ȼ� ���</em></a></li>
                    </ul> -->

                    <ul class="small">
                        <p class="title"><span></span>���߰�</p>
                        <li><a class="fix_C12" href="" target=""><em>����</em></a></li>
                    </ul>
                </div>
            </div>
            
            <div class="winter_course">
                <div class="wrap">
                    <div class="course_tit ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course_title.png" alt="" /> 
                    </div>
                    <div class="course_arrow motion_element mt80">
                        <img class="motion-1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_arrow.png" alt="" />
                        <img class="num1 motion-2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_num01.png" alt="" />
                        <img class="num2 motion-3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_num02.png" alt="" />
                        <img class="num3 motion-4" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/top_num03.png" alt="" />
                        <img class="num4 motion-5" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/jump_up_img.png" alt="" />
                    </div>
                    <div class="ani_element b_to_t delay400">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course_txt.png" alt="" /> 
                    </div>
                </div>
            </div>

            <div class="winter_course1">
                <div class="wrap">
                    <div class="ani_element b_to_t delay500">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course1_tit.png" alt="ü������ ���α׷����� Ȯ���� �Ƿ� ���!" />
                    </div>
                    <div class="ani_element b_to_t mt45 delay500">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course1_img1.jpg" alt="����� �ǿ��� �հݻ��� ������ ������" />
                    </div>
                    <div class="ani_element b_to_t mt100 delay500">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course1_sub_tit.png" alt="������ �׷��� ������ ������ �ް�����" />
                    </div>
                    <div class="winter_mento mt60">
                        <img class="ani_element b_to_t delay300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/mento_img01.png" alt="�н�����" />
                        <img class="ani_element b_to_t delay500" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/mento_img02.png" alt="�Խø���" />
                        <img class="ani_element b_to_t delay700" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/mento_img03.png" alt="��Ȱ����" />
                    </div>
                </div>                    
            </div>

            <div class="winter_course2">
                <div class="wrap">
                    <div class="ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course2_tit.png" alt="ü������ ���α׷����� Ȯ���� �Ƿ� ���!" />
                    </div>
                    <div class="ani_element b_to_t mt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course2_sub_tit1.png" alt="�������� ���� ������ ���!" />
                    </div>
                    <div class="winter_survey mt60">
                        <img class="ani_element b_to_t delay200" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course2_img1.png" alt="2024 ���ͽ��� ������ ���� ���1" />
                        <img class="ani_element b_to_t delay300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course2_img2.png" alt="2024 ���ͽ��� ������ ���� ���2" />
                        <img class="ani_element b_to_t delay400" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course2_img3.png" alt="2024 ���ͽ��� ������ ���� ���3" />
                    </div>
                    <div class="ani_element b_to_t delay500 mt40">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course2_txt.png" alt="2024 ���ͽ��� ������ ������ ���� ���(���� �迭 �ǰ� �ջ�)" />
                    </div>
                    <div class="ani_element b_to_t mt100 delay500">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course2_sub_tit2.png" alt="����ȭ�� ���ͽ��� ���α׷�" />
                    </div>
                    <div class="winter_program motion_element mt60">
                        <img class="motion-1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/program_circle.jpg" alt="" />

                        <img class="program1 motion-2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/program_img01.png" alt="" />
                        <img class="program2 motion-3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/program_img02.png" alt="" />
                        <img class="program3 motion-4" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/program_img03.png" alt="" />
                        <img class="program4 motion-5" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/program_img04.png" alt="" />
                        <img class="program5 motion-6" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/program_img05.png" alt="" />
                    </div>

                    <div class="ani_element b_to_t delay500 mt80">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course2_sub_tit3.png" alt="��ǰ�� ���ͽ��� �н� ������" />
                    </div>
                    <div class="slide_area ani_element b_to_t delay600 mt60">
                        <div class="slick_wrap">
                            <ul class="slick_slider">
                              <li class="slick_card"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/contents_slide01.png" alt="���� ������" /></li>
                              <li class="slick_card"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/contents_slide02.png" alt="���� ���ǰ��" /></li>
                            </ul>
                        </div>
                    </div>
                    <script>
                        $('.slick_slider').slick({
                            arrows:false,
                            dots:true,
                            autoplay:true,
                            autoplaySpeed:3000,
                            dots:true,
                            slidesToShow:1,
                            customPaging: function (slider, i) {
                                var thumb = $(slider.$slides[i]).data();
                                if (i == '0') {
                                i = "���� ���� ���� ���α׷�<strong>���� ������</strong>";
                                } else if (i == '1') {
                                i = "�ܿ���� ���� ������<strong>���ͽ��� ���� ���ǰ��</strong>";
                                }
                                return '<a class="dot"><span>' + i + '</span></a>';
                            },
                        });
                    </script>
                    <div class="ani_element b_to_t delay600 mt40">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course2_txt1.png" alt="�� ����� �ǸŵǴ� �������� �п����� ���� ���� �� ���� ����� ������ �� �ֽ��ϴ�." />
                    </div>
                </div>                    
            </div>

            <div class="winter_course3">
                <div class="wrap">
                    <div class="ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course3_tit.png" alt="ü������ ���α׷����� Ȯ���� �Ƿ� ���!" />
                    </div>
                    <div class="ani_element b_to_t mt100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course3_sub_tit1.png" alt="3�ܰ� ����ȯ �ý���" />
                    </div>
                    <div class="ani_element b_to_t mt60">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/course3_img1.png" alt="" />
                    </div>
                </div>                    
            </div>

            <div class="winter_review">
                <div class="wrap">
                    <div class="ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/review_tit.png" alt="���࿡ ������ ������� �����ı�" />
                    </div>
                    <div class="review_img mt60">
                        <img class="ani_element l_to_r delay300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/review_img01.png" alt="" />
                        <img class="ani_element l_to_r delay300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/review_img02.png" alt="" />
                        <img class="ani_element l_to_r delay300" src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/review_img03.png" alt="" />
                    </div>
                </div>                    
            </div>


            <div class="winter_link_list" id="link" style="padding-top:100px; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/link_bg.jpg') 50% top no-repeat;background-size:cover;">
                <div class="wrap">
                    <div class="ani_element b_to_t">
                        <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_winter_gate/link_title.png" alt="�п��� �����ȳ�" />
                    </div>

                    <div class="academy_list mt20"> 
                        <!-- <ul>   
                            <li id="C01" class="cam_list">
                                <a href="https://yangji.megastudy.net/yangji/nsu/2025/2025_winter/winter_01.asp" target="_blank">
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
                                <a href="https://seochob.megastudy.net/yangjim/nsu/2025/2025_winter/winter_01.asp" target="_blank">
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
                            <li id="C14" class="cam_list">
                                <a href="https://ansung.megastudy.net/ansung/nsu/2025/2025_winter/winter_01.asp" target="_blank">
                                    <p class="title"><span><strong>�ȼ� ���</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>031-8004-1010
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul> -->
                        <ul>
                            <li id="C13" class="cam_list">
                                <a href="https://seocho.megastudy.net/seocho/nsu/nsu/2025/2025_winter/winter_01.asp" target="_blank">
                                    <p class="title"><span><strong>����</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>
                                                02-535-5678
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C05" class="cam_list">
                                <a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2025/2025_winter/winter_01.asp" target="_blank">
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
                                <a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2025/2025_winter/winter_01.asp" target="_blank">
                                    <p class="title"><span><strong>�뷮��</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>
                                                02-826-1555
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <ul>
                            <li id="C11" class="cam_list">
                                <a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2025/2025_winter/winter_01.asp" target="_blank">
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
                                <a href="https://songpa.megastudy.net/songpa/nsu/nsu/2025/2025_winter/winter_01.asp" target="_blank">
                                    <p class="title"><span><strong>����</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>
                                                02-428-8181                                        
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C07" class="cam_list">
                                <a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2025/2025_winter/winter_01.asp" target="_blank">
                                    <p class="title"><span><strong>��õ</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            <p>
                                                <span class="sub_txt">����</span>
                                                032-326-9900
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C08" class="cam_list">
                                <a href="https://bundang.megastudy.net/bundang/nsu/nsu/2025/2025_winter/winter_01.asp" target="_blank">
                                    <p class="title"><span><strong>�д�</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">����</span>
                                                031-781-3100
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>                            
                        </ul>
                        <ul>
                            <li id="C09" class="cam_list">
                                <a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2025/2025_winter/winter_01.asp" target="_blank">
                                    <p class="title"><span><strong>�ϻ�</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">����</span>
                                                031-8073-9600
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C10" class="cam_list">
                                <a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2025/2025_winter/winter_01.asp" target="_blank">
                                    <p class="title"><span><strong>����</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">����</span>
                                                031-388-3141
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li id="C12" class="cam_list">
                                <a href="https://seongbuks.megastudy.net/seongbuk/jaehak/jaehak/2025/2025_winter/hi2hi3/winter_01.asp" target="_blank">
                                    <p class="title"><span><strong>����</strong></span></p>
                                    <div class="info_wrap">
                                        <div class="info">
                                            
                                            <p>
                                                <span class="sub_txt">����</span>
                                                02-927-8001
                                            </p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="snow-fall"></div>
            </div>
        </div><!-- // contents -->
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function ($) {
        var snowCount = 100;
        for (var i = 0; i < snowCount; i++) {
            $('<div class="snow"></div>').appendTo('.snow-fall');
        }
	});

    $(function(){
        rightQuickBanner();
        titleTweenEvent();
        $(window).on('load', function () {
            pageLoadEvent();

            ad_link();

            var fix_txt = $('.scroll .fix_bottom_area').html();
            $('.inner .fix_bottom_area').html(fix_txt);

			$(window).on('scroll', function(){
                parallaxScroll();
                ani_scr();
                motionEvent();
			});
			
		});
    });

    function pageLoadEvent(){
        var temp_s = $("#sectionTitle").offset().top;
        $('html, body').animate({ scrollTop: temp_s}, 500);
    }

    function titleTweenEvent(){
        var motion1 = new TimelineMax({delay:0.1,repeat:0})
            motion1.to(".act01_1", 0.4, {opacity:1, scale:1})
                   .to(".act01_2", 0.3, {opacity:1})
                   .to(".act01_3", 0.4, {opacity:1, scale:1})
                   .to(".act01_4", 0.3, {opacity:1});
        
        var motion2 = new TimelineMax({delay:1.5,repeat:0})
            motion2.to(".act02", 0.7, {opacity:1});

        var motion3 = new TimelineMax({delay:1.7,repeat:0})
            motion3.to(".act03_1", 0.4, {opacity:1, top:360 , ease:Power1.easeOut})
                   .to(".act03_2", 0.4, {opacity:1, top:360 , ease:Power1.easeOut})
                   .to(".act03_3", 0.4, {opacity:1, top:360 , ease:Power1.easeOut})
                   .to(".act03_4", 0.4, {opacity:1, top:360 , ease:Power1.easeOut})

        var motion4 = new TimelineMax({delay:3.2,repeat:0})
            motion4.to(".act04", 0.5, {opacity:1, ease:Power3.easeOut});

        var motion5 = new TimelineMax({delay:1.7,repeat:0})
            motion5.to(".act05", 1, {opacity:1, ease:Power4.easeOut});
    }

    function motionEvent(){
        var sector = $('.motion_element');
        sector.each(function(i){
            if( $(window).scrollTop() >= sector.eq(i).offset().top - 900){
                $(this).addClass('active');
            } else {
                // $(this).removeClass('active');
            }
        });
    }

    function ani_scr() {
		var winH = $(window).height();
		var scrT = $(window).scrollTop();
		var view_pos = winH + scrT
	
		$(".ani_element").each(function () {
			var elementH = $(this).outerHeight();
			var elementT = $(this).offset().top;
			var elementP = (elementT + elementH - 100);
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

        if(scrolled > $(".winter_course").offset().top && scrolled < $(".winter_link_list").offset().top-500 ) {
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"block"});
        }
        if(scrolled > $(".winter_link_list").offset().top-500 || scrolled < $(".winter_course").offset().top) {    
            var motion8 = new TimelineMax({delay:0,repeat:0})
            motion8.to(".fix_bottom_wrap.scroll", 0.5, {"display":"none"});
        }
	}
</script>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>