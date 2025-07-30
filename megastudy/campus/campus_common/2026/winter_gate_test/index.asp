<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2026/winter_gate/thumb.jpg'>"
	response.write pageOgMeta
    %>
    <!--#include virtual="/common/inc/head_common.asp"-->
    <link rel="stylesheet" type="text/css" href="/common/css/base.css">
    <link rel="stylesheet" type="text/css" href="/common/css/util.css">
    <!-- ���̺귯�� CSS -->
    <link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <!-- ���̺귯�� �÷����� -->
    <script type="text/javascript" src="/common/js/aos.js"></script>
    <script type="text/javascript" src="/common/js/gsap.min.js"></script>
    
    <meta name="keywords" content="�ް����͵�, �ް����͵��п�, ����, �Խ��п�, �ܿ����, �ܿ�Ư��, ���ͽ���, ��1�Խ�, ��2�Խ�, ��3�Խ�, 2028�г⵵, ���ɰ���,  �Խ��п�, �����п�, ���ͽ�����õ, ����Ư��, ����п�">
    <meta name="description" content="���ν����� ���, ���Լ����� ���! �ް����͵��п� 2026 ���ͽ���">
    <meta property="og:title" content="�ް����͵��п�">
    <meta property="og:description" content="���ν����� ���, ���Լ����� ���! �ް����͵��п� 2026 ���ͽ���">
    <meta property="og:site_name" content="�ް����͵��п�">
    <meta property="og:url" content="https://campus.megastudy.net/campus_common/2026/winter_gate/index.asp">

    <!-- half gate -->
    <link rel="stylesheet" type="text/css" href="web.css">
    <script type="text/javascript" src="ui.js?v=1"></script>
</head>

<body>
<div id="wrapper">  
    <!-- ��� ���� --> 
    <header id="header">
        <div class="container">
            <div class="left_area">
                <h1 class="logo">
                    <a href="https://campus.megastudy.net/">
                        <img class="img_mega" src="<%=Application("img_path")%>/library/common/logo/top_logo_megastudy.svg" alt="�ް����͵��п�" />
                    </a> 
                </h1>
            </div>
        </div>
    </header>
    <!-- ��� ���� --> 

    <div id="winter_container" class="winter_gate">

        <div id="contents">

            <!-- ����� ��� -->
            <div id="topTitle">
                <div class="visual_top">  
                    <div class="act_wrap pc_only">
                        <div class="txt_wrap">
                            <div class="txt1">
                                <img class="act1" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/top_txt01.png" alt="���ν����� ���, ���Լ����� ���!" /> 
                            </div>
                            <div class="txt2">
                                <img class="act2" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/top_tit01.png" alt="2026" />
                            </div>
                            <div class="txt3"> 
                                <img class="act3" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/top_tit02.png" alt="���ͽ���" />
                            </div> 
                        </div> 
                    </div>  
                    <div class="act_wrap mo_only">
                        <div class="txt_wrap">
                            <div class="txt1">
                                <img class="act1" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_top_txt01.png" alt="���ν����� ���, ���Լ����� ���!" /> 
                            </div>
                            <div class="txt2">
                                <img class="act2" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_top_tit01.png" alt="2026" />
                            </div>
                            <div class="txt3"> 
                                <img class="act3" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_top_tit02.png" alt="���ͽ���" />
                            </div> 
                        </div> 
                    </div> 
                    
                    <div class="snow-fall"></div> 
                </div> 
            </div>
            
            <!-- ���ΰ��� ��ư -->
            <div class="btn_top_wrap">
                <a href="javascript:void(0);" class="btnTop" style="bottom: 30px; position: fixed; opacity: 1;"><span class="blind">top</span></a>
            </div>

            <!-- �п� ����Ʈ -->
            <div id="fixedFloating" class="fixed_floating">
                <div id="academyList" class="fixed_academy_list"> 
                    <ul class="academy_list pc_only">
                        <li><a href="javascript:void(0);">����</a></li>
                        <li><a href="javascript:void(0);">����</a></li>
                        <li><a href="javascript:void(0);">�뷮��</a></li>
                        <li><a href="javascript:void(0);">����</a></li>
                        <li><a href="javascript:void(0);">����</a></li>
                        <li><a href="javascript:void(0);">��õ</a></li>
                        <li><a href="javascript:void(0);">�д�</a></li>
                        <li><a href="javascript:void(0);">�ϻ�</a></li> 
                        <li><a href="javascript:void(0);">����</a></li>
                        <li><a href="javascript:void(0);">����</a></li>
                    </ul>  
                    <ul class="academy_list mo_only">
                        <li><a href="#bottom_cont">�п� �ȳ�</a></li> 
                    </ul>  
                </div>
                <div id="academyList02" class="fixed_academy_list _02"> 
                    <ul class="academy_list pc_only">
                        <a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=26829" target="_blank">����ȸ</a>  
                    </ul>  
                    <ul class="academy_list mo_only">
                        <a href="https://mcampus.megastudy.net/common/notice/fair_view.asp?code=26829">����ȸ</a>  
                    </ul>  
                </div>
            </div>
 
  
            <!-- con1 -->
            <div class="cont_section1">
                <div class="winter_inner pc">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400">
                        <p class="sub_tit">������ ���� ���, ũ�� Ű��<br>��ħ�� ���ϴ� �̷��� ��� �̾߱�</p>
                        <h2 class="main_tit">
                            �ް����͵��п�<br>
                            <span>2026 ���ͽ���</span>����<span class="mo_only ta_only"></span> ���۵˴ϴ�!
                        </h2> 
                    </div>
 
                    <div class="dream_wrap mt60">
                        <span class="ico-arrow"></span>
                        <!-- <img class="dream arrow" data-aos="fade-up" data-aos-delay="50" data-aos-duration="300" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con01_img04.png" alt="ȭ��ǥ" class="ico-arrow" />  -->
                        <div class="round_wrap">
                            <img class="dream _01" data-aos="fade-up" data-aos-duration="100" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con01_img01.png" alt="���� ���" />
                            <p class="mo_only ico_arrow"><img data-aos="fade-up" data-aos-duration="200" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/icon_arrow.png" alt="���� ���" /></p>
                            <img class="dream _02" data-aos="fade-up" data-aos-delay="300" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con01_img02.png" alt="���� Ű���" />
                            <p class="mo_only ico_arrow"><img data-aos="fade-up" data-aos-duration="200" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/icon_arrow.png" alt="���� ���" /></p>
                            <img class="dream _03" data-aos="fade-up" data-aos-delay="700" data-aos-duration="600" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con01_img03.png" alt="���� ���" /> 
                        </div>
                    </div>
                     
                </div>
            </div>

            <!-- <div class="cont_section1 ta_only">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400">
                        <p class="sub_tit">������ ���� ���, ũ�� Ű��<br>��ħ�� ���ϴ� �̷��� ��� �̾߱�</p>
                        <h2 class="main_tit">
                            �ް����͵��п�<br>
                            <span>2026 ���ͽ���</span>����<br>���۵˴ϴ�!
                        </h2> 
                    </div> 

                    <div class="dream_wrap mt60"> 
                        <img class="dream _01" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/ta_con01_img04.png" alt="���� ���" /> 
                    </div>
                     
                </div>
            </div> -->

            <!-- <div class="cont_section1 mo_only">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400">
                        <p class="sub_tit">������ ���� ���, ũ�� Ű��<br>��ħ�� ���ϴ� �̷��� ��� �̾߱�</p>
                        <h2 class="main_tit">
                            �ް����͵��п�<br>
                            <span>2026 ���ͽ���</span>����<br>���۵˴ϴ�!
                        </h2> 
                    </div> 

                    <div class="dream_wrap mt60"> 
                        <img class="dream _01" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con01_img01.png" alt="���� ���" />
                        <img class="dream _02" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con01_img02.png" alt="���� Ű���" />
                        <img class="dream _03" data-aos="fade-up" data-aos-delay="100" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con01_img03.png" alt="�޿� ���" />
                    </div>
                     
                </div>
            </div> -->

            <!-- con2 -->
            <div class="cont_section2 pc_only">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con02_title.png" alt="���Լ����� ���� ���" />
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            �ñ⺰, ��κ� �н���������<br>
                            <strong>Ȯ���� �н� ���� ����</strong>
                        </p>
                    </div> 
                    <div class="message_bg mt60">
                        <img class="con2_phone" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con02_img01.png" alt="�޴���" />
                    </div>
                    <div class="message_wrap">
                        <img class="message _01" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con02_message01.png" alt="��3" />
                        <img class="message _02" data-aos="fade-up" data-aos-delay="50" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con02_message02.png" alt="��1" />
                        <img class="message _03" data-aos="fade-up" data-aos-delay="150" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con02_message03.png" alt="��2" />
                    </div> 
                </div>
            </div>

            <div class="cont_section2 mo_only">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con02_title.png" alt="���Լ����� ���� ���" />
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            �ñ⺰, ��κ� �н���������<br>
                            <strong>Ȯ���� �н� ���� ����</strong>
                        </p>
                    </div> 
                    <div class="message_bg mt50">
                        <img class="con2_phone" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con02_img01.png" alt="�޴���" />
                    </div>
                    <div class="message_wrap">
                        <img class="message _01" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con02_message01.png" alt="��3" />
                        <img class="message _02" data-aos="fade-up" data-aos-delay="50" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con02_message02.png" alt="��1" />
                        <img class="message _03" data-aos="fade-up" data-aos-delay="150" data-aos-duration="400" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con02_message03.png" alt="��2" />
                    </div> 
                </div>
            </div>
 
            <!-- con3 -->
            <div class="cont_section3">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400">
                        <img class="pc_only" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con03_title.png" alt="���Լ����� ���� Ű���" />
                        <img class="mo_only" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con03_title.png" alt="���Լ����� ���� Ű���" />
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            �ް����͵��п��� ���� ���Ͽ츦 ����<br>
                            <strong>����ȭ�� ���ͽ��� ���α׷�</strong>
                        </p>
                    </div> 
                    <div class="programm_wrap" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400"> 
                        <ul class="programm_list">
                            <li class="list01">
                                <strong class="programm_name">����</strong>
                                <p>���� ���� �м� ��<br>���� ��� ��ǥ</p>
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon01.png" alt=""></div>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon01.png" alt=""></div>
                            </li>
                            <li class="list02">
                                <strong class="programm_name">������</strong>
                                <p>����� �Խ� ���� ���Ƿ�<br>�л����� ���� ������</p>
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon02.png" alt=""></div>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon02.png" alt=""></div>
                            </li>
                            <li class="list03">
                                <strong class="programm_name">�н� ������</strong>
                                <p>�ڱ��ֵ��н��� ����<br>�ùٸ� ���ν��� ����</p>
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon03.png" alt=""></div>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon03.png" alt=""></div>
                            </li>
                            <li class="list04">
                                <strong class="programm_name">�Խ� ������</strong>
                                <p>���� ���� �Խ� ��������<br>���Լ��� ���⼺ ����
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon04.png" alt=""></div></p>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon04.png" alt=""></div></p>
                            </li>
                            <li class="list05">
                                <strong class="programm_name">�������� �ý���</strong>
                                <p>���� 1:1 ������������<br>�л� ���� �н��� ����</p>
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon05.png" alt=""></div>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon05.png" alt=""></div>
                            </li>
                            <li class="list06">
                                <strong class="programm_name">�н� �ü�</strong>
                                <p>���ο��� ������ �� �ִ�<br>�н� ����ȭ</p>
                                <div class="list_icon pc_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/cont03_icon06.png" alt=""></div>
                                <div class="list_icon mo_only"><img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_cont03_icon06.png" alt=""></div>
                            </li>
                        </ul>
                    </div>

                    <div class="sub_title_wrap pc_only mt90" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            ����� ������ ����<br>
                            <strong>ü������ ����-��ȹ-���� �ý���</strong>
                        </p>
                    </div> 
                    <div class="sub_title_wrap mo_only mt50" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            ����� ������ ����<br>
                            <strong>ü������ ����-��ȹ-���� �ý���</strong>
                        </p>
                    </div> 
                    <div class="con3_img_top"> 
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con03_img08.png" alt="�н�����, �н�����, �н���ȹ" /> 
                    </div> 
                </div>
            </div>
 
            <!-- con4 -->
            <div class="cont_section4">
                <div class="winter_inner">
                    <div class="title_wrap" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400" >
                        <img class="pc_only" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/con04_title.png" alt="���Լ����� �޿� ���" />
                        <img class="mo_only" src="<%=Application("img_path")%>/library/campus_common/2026/winter_gate/mo_con04_title.png" alt="���Լ����� �޿� ���" />
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>
                            ���ͽ���� �Բ�<br>
                            <strong>�޿� ���� ������� ���� �ı�</strong>
                        </p>
                    </div> 
                    <div class="review_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400"> 
                        <ul class="review_list">
                            <li><p>��Ģ���� ��Ȱ ���ϰ�<br>�н� ������<br>���� �� �־����</p></li>
                            <li><p>���ͽ����� ����<br>����б� ���ſ� ����<br>������ �������</p></li>
                            <li><p>�Ƿ� �ְ� ���� ��ġ��<br>������ ���п� ������ �Ƿ���<br>���� �ø� �� �־����</p></li>
                            <li><p>���� �����԰���<br>�Խ� �����<br>���� ������ �Ǿ����</p></li>
                            <li><p>���������� Ž�� �������<br>���ι��� �Ϻ��ϰ�<br>���� �� �ְ� �Ǿ����</p></li>
                            <li><p>������ �н� �����<br>�˾� ���鼭 � ������<br>�淯�� �ϴ��� �˰� �Ǿ����</p></li> 
                        </ul>
                    </div>
                    <p class="dsc_txt">�� �ް����͵��п� 2025 ���ͽ��� ������ ���� <em>�ְ��� �ǰ߿��� ����</em></p> 
                </div>
            </div> 

            <!-- con5 -->
            <div class="cont_section5">
                <div class="winter_inner"> 
                    <div class="bnr_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <p>�ް����͵��п� <span>2026 ���ͽ��𿡼�</span></p>
                        <strong>���Լ����� �޿� <span>�� ��¦ �� ������!</span></strong> 
                    </div> 
                </div>
            </div>  

            <!-- con6 -->
            <div id="bottom_cont" class="cont_section6">
                <div class="winter_inner">
                    <div class="title_wrap top_tit">
                        <h2 class="main_tit" data-aos="fade-up" data-aos-delay="0" data-aos-duration="400">�п� �ȳ�</h2>
                    </div> 
                    
                    <div class="ct_wrap academy_info_wrap" data-aos="fade-in" data-aos-delay="0" data-aos-duration="400">
                        <ul>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">02-535-5678</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">�����ȳ�</a>
                                    <a class="btn_tel" href="tel:02-535-5678">02-535-5678</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">02-935-3378</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">�����ȳ�</a>
                                    <a class="btn_tel" href="tel:02-935-3378">02-935-3378</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">�뷮��</strong>
                                    <p class="academy_call">02-826-1555</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">�����ȳ�</a>
                                    <a class="btn_tel" href="tel:02-826-1555">02-826-1555</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">02-3144-1010</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">�����ȳ�</a>
                                    <a class="btn_tel" href="tel:02-3144-1010">02-3144-1010</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">02-428-8181</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">�����ȳ�</a>
                                    <a class="btn_tel" href="tel:02-428-8181">02-428-8181</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">��õ</strong>
                                    <p class="academy_call">032-326-9900</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">�����ȳ�</a>
                                    <a class="btn_tel" href="tel:032-326-9900">032-326-9900</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">�д�</strong>
                                    <p class="academy_call">031-781-3100</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">�����ȳ�</a>
                                    <a class="btn_tel" href="tel:031-781-3100">031-781-3100</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">�ϻ�</strong>
                                    <p class="academy_call">031-8073-9600</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">�����ȳ�</a>
                                    <a class="btn_tel" href="tel:031-8073-9600">031-8073-9600</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li> 
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">031-388-3141</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">�����ȳ�</a>
                                    <a class="btn_tel" href="tel:031-388-3141">031-388-3141</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">02-927-8001</p>
                                    <div class="mo_academy_info">
                                    <a class="btn_info" href="javascript:void(0);">�����ȳ�</a>
                                    <a class="btn_tel" href="tel:02-927-8001">02-927-8001</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="javascript:void(0);">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li> 
                        </ul>
                    </div>
                </div>
            </div> 




        </div><!-- // contents -->
    </div>

    <!-- Ǫ�� ���� --> 
    <footer id="footer">
        <div class="container">
            <p class="copy">Copyright &copy; 2015 megastudyEdu.Co.Ltd. All rights reserved.</p>
        </div>
    </footer>
    <!-- Ǫ�� ���� --> 
</div>
</body>
</html>