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
<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
<link rel="stylesheet" type="text/css" href="/library/css/amazingslider.css">
<link rel="stylesheet" type="text/css" href="https://mcampus.megastudy.net/asset/css/slick.css">
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

                <div id="sectorTop" class="sector_top" style="background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/top_bg.jpg') 50% top no-repeat;background-size:cover;">
                    <div class="sector_top_wrap">
                        <div class="inner">                            
                            <span class="obj text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/obj.png" alt=""></span>
                            
                            <span class="obj1_bg text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/obj1_bg.png" alt=""></span>
                            <span class="obj1 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/obj1.png" alt=""></span>

                            <span class="obj2 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/obj2.png" alt="" ></span>

                            <span class="obj3 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/obj3.png" alt=""></span>
                            <span class="obj3_1 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/obj3_1.png" alt=""></span>

                            <span class="obj4_1 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/obj4_1.png" alt=""></span>
                            <span class="obj4_2 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/obj4_2.png" alt=""></span>
                            <span class="obj4_3 text"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/obj4_3.png" alt=""></span>
                        </div>
                    </div>
                </div>

                <div class="sector_solution">
                    <div class="inner">

                        <div class="title_box pt100">
                            <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/solution_title.png" alt="�ް����͵��п� �Խ� �ַ��" />
                        </div>

                       <div class="student_box mt80">
                            <div class="student_info">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/sola_img01.jpg" alt="A �л�����" />

                                <img class="sol_arrow" data-aos="fade-right" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/sol_arrow.png" alt="ȭ��ǥ" />
                                <img class="sol_name" data-aos="fade-right" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/sol_a.png" alt="A�л�" />
                            </div>
                            <div class="student_tbl wide">
                                <h4 class="lec_sub_title">������ ���� ����</h4>
                                <div class="tbl_cont">
                                    <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4">
                                        <caption>������ ���� ����</caption>
                                        <colgroup>
                                            <col width="16.666%" span="6">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope="col" colspan="2">1�г�</th>
                                                <th scope="col" colspan="2">2�г�</th>
                                                <th scope="col" colspan="2">3�г�</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>1�б�</th>
                                                <th>2�б�</th>
                                                <th>1�б�</th>
                                                <th>2�б�</th>
                                                <th>1�б�</th>
                                                <th>2�б�</th>
                                            </tr>
                                            <tr>
                                                <td>3.81</td>
                                                <td>3.58</td>
                                                <td>2.60</td>
                                                <td>3.04</td>
                                                <td>2.57</td>
                                                <td>2.00</td>
                                            </tr>
                                        </tbody>
                                    </table> 
                                </div>

                                <h4 class="lec_sub_title mt60">���� ����</h4>
                                <div class="tbl_cont">
                                    <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4">
                                        <caption>���� ����</caption>
                                        <colgroup>
                                            <col width="20%" span="1">
                                            <col width="auto" span="5">
                                            <col width="20%" span="1">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>����</th>
                                                <th>����</th>
                                                <th>����</th>
                                                <th>Ž��1</th>
                                                <th>Ž��2</th>
                                                <th>����</th>
                                                <th>�ְ� ��� ��</th>
                                            </tr>
                                            <tr>
                                                <th>2023�г⵵ ����</th>
                                                <td>2���</td>
                                                <td>7���</td>
                                                <td>2���</td>
                                                <td>5���</td>
                                                <td>1���</td>
                                                <td class="bgORG">4�� ��� �� <strong>12</strong></td>
                                            </tr>
                                            <tr>
                                                <th>6�� ����</th>
                                                <td>2���</td>
                                                <td>4���</td>
                                                <td>1���</td>
                                                <td>3���</td>
                                                <td>1���</td>
                                                <td class="bgBLUE">4�� ��� �� <strong>8</strong></td>
                                            </tr>
                                            <tr>
                                                <th>9�� ����</th>
                                                <td>2���</td>
                                                <td>4���</td>
                                                <td>3���</td>
                                                <td>2���</td>
                                                <td>1���</td>
                                                <td class="bgBLUE">4�� ��� �� <strong>9</strong></td>
                                            </tr>
                                            <tr>
                                                <th>2024�г⵵ ����</th>
                                                <td>2���</td>
                                                <td>4���</td>
                                                <td>3���</td>
                                                <td>1���</td>
                                                <td>1���</td>
                                                <td class="bgBLUE">4�� ��� �� <strong>8</strong></td>
                                            </tr>
                                        </tbody>
                                    </table> 
                                    <span class="bd_bod_A"></span>
                                </div>
                            </div>
                            <div class="student_sol mt70">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/sola_sub.png" alt="�ް����͵��п��� �ַ��" />
                                <img class="sol_line" data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/sol_line.png" alt="�ް����͵��п��� �ַ��" />

                                <img class="sol_trophy" data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/sola_trophy.jpg" alt="�ް����͵��п��� �ַ��" />
                                <img class="sol_type" data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/sola_type.png" alt="����� �о������ �����հ�" />
                            </div>
                        </div>

                        <div class="student_box mt100">
                            <div class="student_info">
                                <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/solb_img01.jpg" alt="B �л�����" />

                                <img class="sol_arrow" data-aos="fade-right" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/sol_arrow.png" alt="ȭ��ǥ" />
                                <img class="sol_name" data-aos="fade-in" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/sol_b.png" alt="A�л�" />
                            </div>
                            <div class="student_tbl wide">

                                <h4 class="lec_sub_title mt60">���� ���� ���� ����</h4>
                                <div class="tbl_cont">
                                    <table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4">
                                        <caption>���� ���� ���� ����</caption>
                                        <colgroup>
                                            <col width="auto" span="6">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th>����</th>
                                                <th>2023�г⵵ ����</th>
                                                <th>3�� ����</th>
                                                <th>6�� ����</th>
                                                <th>9�� ����</th>
                                                <th>2024�г⵵ ����</th>
                                            </tr>
                                            <tr>
                                                <th>����Ž(2) �����</th>
                                                <td>221</td>
                                                <td>284</td>
                                                <td>264.5</td>
                                                <td>271</td>
                                                <td>280.5</td>
                                            </tr>
                                            <tr>
                                                <th>����</th>
                                                <td class="bgORG">ȭ�����۹�</td>
                                                <td class="bgBLUE">���͸�ü</td>
                                                <td class="bgBLUE">���͸�ü</td>
                                                <td class="bgBLUE">���͸�ü</td>
                                                <td class="bgBLUE">���͸�ü</td>
                                            </tr>
                                            <tr>
                                                <th>�����(���)</th>
                                                <td class="bgORG"><strong>76(4)</strong></td>
                                                <td class="bgBLUE"><strong>98(1)</strong></td>
                                                <td class="bgBLUE"><strong>99(1)</strong></td>
                                                <td class="bgBLUE"><strong>97(1)</strong></td>
                                                <td class="bgBLUE"><strong>98(1)</strong></td>
                                            </tr>
                                        </tbody>
                                    </table> 
                                    <span class="bd_bod_B"></span>
                                </div>
                            </div>
                            <div class="student_sol mt70">
                                <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/solb_sub.png" alt="�ް����͵��п��� �ַ��" />
                                <img class="sol_line" data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/sol_line.png" alt="�ް����͵��п��� �ַ��" />

                                <img class="sol_trophy" data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/solb_trophy.jpg" alt="�ް����͵��п��� �ַ��" />
                                <img class="sol_type" data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/solb_type.png" alt="����� ���� ��������" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sector_differ" style="background:#1e1e1e url('<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_bg.jpg') 50% top no-repeat;background-size:cover;">
                    <div class="inner">
                        <div class="title_box pt100">
                            <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_title.png" alt="�Խ� �������� �ٸ��ϴ�!" />
                        </div>
                        <div class="differ_graph">
                            <img class="dif_left" data-aos="fade-left" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_left.png" alt="������ ���� ���� ����" />

                            <img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_center.png" alt="�Խ� ������" />

                            <img class="dif_right" data-aos="fade-right" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_right.png" alt="���� �� �ý���" />
                        </div>
                        <div class="differ_pic">
                            <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_img01.png" alt="������ ����" />
                        </div>
                        <div class="differ_circle">
                            <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_img02.png" alt="��������� �Խ�,�н��� å�����ϴ�." />
                        </div>
                        <div class="differ_curri">
                            <img class="curri_end" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_end.png" alt="���Լ��� Ŀ��" />
                            <div class="point">
                                <img class="point_1" data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_curri1.png" alt="2��" />
                                <img class="point_2" data-aos="fade-down" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_curri2.png" alt="4��" />
                                <img class="point_3" data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_curri3.png" alt="5��" />
                                <img class="point_4" data-aos="fade-down" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_curri4.png" alt="7��" />
                                <img class="point_5" data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_curri5.png" alt="10��" />
                                <img class="point_6" data-aos="fade-down" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/differ_curri6.png" alt="12��" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sector_review">
                    <div class="inner">
                        <div class="title_box pt100">
                            <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/review_title.png" alt="�Խ� �������� ����մϴ�!" />
                        </div>
                        <div class="review_box">
                            <div><img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/review_img01.png" alt="����1" /></div>
                            <div><img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/review_img02.png" alt="����2" /></div>
                            <div><img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/review_img03.png" alt="����3" /></div>
                            <div><img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/review_img04.png" alt="����4" /></div>
                            <div><img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/review_img05.png" alt="����5" /></div>
                        </div>
                    </div>
                </div>

                <div class="sector_expert">
                    <div class="inner">
                        <div class="title_box pt100">
                            <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert_title.png" alt="�Խ� �������� �Ұ��մϴ�." />
                        </div>
                    </div>
                    <div class="inner_full">
                        <div class="slide_area">
                            <ul class="slide_wrap">
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert01.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert02.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert03.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert04.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert05.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert06.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert07.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert08.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert09.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert10.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert11.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert12.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert13.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert14.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert15.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert16.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert17.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert18.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert19.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert20.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert21.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert22.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert23.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert24.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert25.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert26.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert27.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert28.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert29.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert30.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert31.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert32.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert33.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert34.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert35.png" alt=""></li>
                                <li><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/expert36.png" alt=""></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="sector_banner" style="background:#1e1e1e url('<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/banner_bg.jpg') 50% top no-repeat;">
                    <div class="inner">
                        <img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2024/2024_admis_expert/banner_title.png" alt="�ް����͵� �Խ� �������� �Բ� �մϴ�." />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- container End --> 
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="/public/js/TweenMax.min.js"></script>
    <script language="JavaScript" src="/public/jquery/slick.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {            
        });
        
        $(function(){
            titleTweenEvent();
            aosEvent();

            $(window).on('load', function () {
                pageLoadEvent();
            });

            $('.sector_expert .slide_wrap').slick({
                autoplay: true,
                autoplaySpeed: 0,
                speed: 7500,
                infinite: true,
                arrows: false,
                dots: false,
                slidesToScroll: 1,
                variableWidth: true,
                pauseOnHover: false,
                pauseOnFocus: false,
                cssEase: 'linear',
			});
        });

        function pageLoadEvent(){
            var temp_s = $("#sectorTop").offset().top;
            $('html, body').animate({ scrollTop: temp_s}, 500);
        }

        function titleTweenEvent(){
            var topObj = jQuery("#container .sector_top");
            var topMotion = new TimelineMax({ delay: 0, repeat: 0, opacity:0, duration:3 });

            topMotion.to(topObj.find(".obj"), 0, { y:100, scale:1.5 })

            topMotion.to(topObj.find(".obj1_bg"), 0, {})
            topMotion.to(topObj.find(".obj1"), 0, {})

            topMotion.to(topObj.find(".obj2"), 0, { x:-100 })
            topMotion.to(topObj.find(".obj3"), 0, { x:-100 })
            topMotion.to(topObj.find(".obj3_1"), 0, { x:-100 })

            topMotion.to(topObj.find(".obj4_1"), 0, { y:-50 })
            topMotion.to(topObj.find(".obj4_2"), 0, { y:-50 })
            topMotion.to(topObj.find(".obj4_3"), 0, { y:-50 })

            .to(topObj.find(".obj"), 1.5, { delay:0, duration:3, y:0, scale:1, opacity:1, ease: "power4.out", transformOrigin:'center center'})

            .to(topObj.find(".obj1_bg"), 0.8, { delay: -1, opacity: 1, width:"603px", height:"60px", ease: "power4.in"})
            .to(topObj.find(".obj1"), 1.0, { delay: -0.7, opacity: 1, width:"475px", height:"29px", ease: "sine.out" })

            .to(topObj.find(".obj2"), 0.5, { delay: -0.5, x:0, opacity: 1, ease: "power4.in" })
            .to(topObj.find(".obj3"), 0.5, { delay: -0.2, x:0, opacity: 1, ease: "power4.in" })
            .to(topObj.find(".obj3_1"), 0.5, { delay: -0.2, x:0, opacity: 1, ease: "power1.out" })

            .to(topObj.find(".obj4_1"), 0.5, { delay: -0.2, y:0, opacity: 1, ease: "sine.in" })
            .to(topObj.find(".obj4_2"), 0.5, { delay: -0.2, y:0, opacity: 1, ease: "sine.in" })
            .to(topObj.find(".obj4_3"), 0.5, { delay: -0.2, y:0, opacity: 1, ease: "sine.in" })
        }

        function aosEvent(){
            AOS.init({
                duration: 600,
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
