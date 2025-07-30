<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2026/final_gate/thumb.jpg'>"
	response.write pageOgMeta
    %>

	<!--#include virtual="/common/inc/head_common.asp"-->
    <link rel="stylesheet" type="text/css" href="/common/responsive/css/base.css">
    <link rel="stylesheet" type="text/css" href="/common/responsive/css/common.css">
    <link rel="stylesheet" type="text/css" href="/common/responsive/css/util.css">
    <link rel="stylesheet" type="text/css" href="/common/responsive/css/board.css">

    <link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <link rel="stylesheet" type="text/css" href="/common/css/swiper-bundle.min.css">

    <script type="text/javascript" src="/common/js/aos.js"></script>
    <script type="text/javascript" src="/common/js/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="/common/js/gsap.min.js"></script>

    <meta name="keywords" content="�ް����͵�, �ް����͵��п�, ����, �Խ��п�, ����, ����Ǯ�̹�, ���̳�, ��1�Խ�, ��2�Խ�, ��3�Խ�, 2026����, 2027�г⵵, 2028�г⵵, ���ɰ���, ����, �������ǰ��, �����, N��">
    <meta name="description" content="������ ������ �����϶�! �ް����͵��п� 2026 ���� ���̳� ����Ǯ�̹�">
    <meta property="og:title" content="�ް����͵��п�">
    <meta property="og:description" content="������ ������ �����϶�! �ް����͵��п� 2026 ���� ���̳� ����Ǯ�̹�">
    <meta property="og:site_name" content="�ް����͵��п�">
    <meta property="og:url" content="https://campus.megastudy.net/campus_common/2026/final_gate/index.asp">

    <link rel="stylesheet" type="text/css" href="web.css">
    <script type="text/javascript" src="ui.js?v=1"></script>
</head>

<body>
<div id="wrapper">
	<!-- ��� ���� -->
    <!-- #include virtual="/common/responsive/inc/header.asp"-->

    <div id="mojipgateWrap" class="mojip_gate_wrap">
        <div id="contents">

            <div class="top_bg">
                <div id="topVisual" class="top_visual">
                    <div class="bg_overlay"></div>
                    <div class="visual_inner">
                        <div class="obj_wrap">
                            <img class="act m01" src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/top_tit1.png" alt="������ ������ �����϶�!" />
                            <img class="act m02" src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/top_tit2.png" alt="2026 ���̳� ����Ǯ�̹�" />
                            <img class="act m02_2" src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/top_tit2_2.png" alt="2026 ���̳� ����Ǯ�̹�" />
                            <img class="act m03" src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/man.png" alt="" />
                            <img class="act m04" src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/road.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="section_system">
                <div class="mojip_inner">
                    <div class="title_icon" data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/title_icon.png" alt="��" /></div>
                    <div class="title_wrap" data-aos="fade-up">
                        ���Լ����� �����ϴ�<br>
                        <strong>���غ� �����հݽý���</strong>
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-up">
                        �ܼ��� ���� ������ �ƴ�<br>
                        ���κ� �н� ���� �м��� ����<br>
                        <strong>���� ������ ���̴�<br class="mo_only"> ���غ� ���� �н� �ϼ�</strong>
                    </div> 

                    <div class="content_title" data-aos="fade-up">
                        <span><span class="text">���غ� ���� �н�</span><p class="line"></p></span>
                    </div>
                    
                    <div class="programm_list">
                        <ul> 
                            <li data-aos="fade-up">
                                <p>
                                    <em>All Yours<br> ���� ���� �ð�ǥ ����</em>
                                    <span>������ ������ ����������!</span>
                                    �ʿ��� ����, ������ ���� ����!<br>
                                    ȿ������ �ð� Ȱ���� ������<br>
                                    ���� �ð�ǥ
                                </p>
                                <div class="icon"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/program_icon1.png" alt="���غ� �����հݽý���"></div>
                            </li>
                            <li data-aos="fade-up">
                                <p>
                                    <em>�׸�����ȭ ����<br> ������ ����</em>
                                    <span>���� Ʈ���忡 �°�!</span>
                                    �л����� �ʿ� ���� ���� �ݿ�!<br>
                                    ��� ��Ʈ �Ϻ� ���� ������<br>
                                    �׸�����ȭ ���� ������ ����
                                </p>
                                <div class="icon"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/program_icon2.png" alt="���غ� �����հݽý���"></div>
                            </li> 
                            <li data-aos="fade-up">
                                <p>
                                    <em>���غ�<br> ���� ������</em>
                                    <span>���غ� ���ǰ��� ����ó��!</span>
                                    ����, ���̵���, ������ ���ǰ���<br>
                                    ����� �ϼ��� ����<br>
                                    ���� �Ƿ� ����
                                </p>
                                <div class="icon"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/program_icon3.png" alt="���غ� �����հݽý���"></div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div> 
    
            <div class="section_tab">
                <div class="mojip_inner">
                    <div class="title_wrap" data-aos="fade-up">
                        ���� ������ �ش�ȭ�ϴ�<br>
                        <strong>���غ� ������</strong>
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-up">
                        ���� �߽��� �Ǵ� Customized-Contents<br>
                        <strong>ǳ���� ���غ� ���� �н� ��������<br class="mo_only"> �Ϻ��� ���� ���</strong>
                    </div> 

                    <div class="slider_wrap" data-aos="fade-up">
                        <div class="tabs">
                            <button class="tab active" data-index="0">OMEGA �ø���</button>
                            <button class="tab" data-index="1">���� ��ü ���ǰ��</button>
                        </div>
                        <div class="slider_content">
                            <div class="slider_content_inner">
                                <div class="swiper-container" data-index="0">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div class="slide_info">
                                                <div class="slide_text">
                                                    <h3>OMEGA</h3>
                                                    <div class="text_sub">
                                                        <strong>�Ƿ°� ������ ������ ������</strong>
                                                        <p><span>&middot;</span><span>���� ���ɰ� ����� ���̵��� ���� ����</span></p>
                                                        <p><span>&middot;</span><span>������ ���� �� �򰡿� Ʈ���带 �ݿ��� ������<br class="pc_only"> ���� ���� ���� üȭ</span></p>
                                                    </div>
                                                </div>
                                                <a class="slide_link"  
                                                    data-pc="https://campus.megastudy.net/campus_common/2025/2025_omega/index.asp"
                                                    data-mo="https://mcampus.megastudy.net/campus_common/2025/2025_omega/index.asp" 
                                                    href="" target="_self">�ڼ��� ����<span class="link_arrow"></span>
                                                </a>
                                            </div>
                                            <div class="slide-img">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/tab_01_omega.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="slide_info">
                                                <div class="slide_text">
                                                    <h3>OMEGA link</h3>
                                                    <div class="text_sub">
                                                        <strong>������ �����ϰ� ������ ������</strong>
                                                        <p><span>&middot;</span><span>���� ����ȭ OMEGA �� ���� ���� ���ǰ��</span></p>
                                                        <p><span>&middot;</span><span>10�� ������, OX ���� �� ���� ���� ��������<br class="pc_only"> ������ �Ƿ� ����</span></p>
                                                    </div>
                                                </div>
                                                <a class="slide_link"  
                                                    data-pc="https://campus.megastudy.net/campus_common/2025/2025_omega/index.asp"
                                                    data-mo="https://mcampus.megastudy.net/campus_common/2025/2025_omega/index.asp" 
                                                    href="" target="_self">�ڼ��� ����<span class="link_arrow"></span>
                                                </a>
                                            </div>
                                            <div class="slide-img">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/tab_01_link.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="slide_info">
                                                <div class="slide_text">
                                                    <h3>OMEGA black</h3>
                                                    <div class="text_sub">
                                                        <strong>�Ѱ踦 �پ�Ѵ� �Ƿ��� �ϼ��ϴ�</strong>
                                                        <p><span>&middot;</span><span>�ֻ������� �������� ���� ���� ���ǰ��</span></p>
                                                        <p><span>&middot;</span><span>1����� �Ѿ� ������ ����<br class="pc_only"> ���� ���� ���� ����</span></p>
                                                    </div>
                                                </div>
                                                <a class="slide_link"  
                                                    data-pc="https://campus.megastudy.net/campus_common/2025/2025_omega/index.asp"
                                                    data-mo="https://mcampus.megastudy.net/campus_common/2025/2025_omega/index.asp" 
                                                    href="" target="_self">�ڼ��� ����<span class="link_arrow"></span>
                                                </a>
                                            </div>
                                            <div class="slide-img">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/tab_01_black.png" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                                <div class="swiper-container" data-index="1" style="display: none;">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <div class="slide_info">
                                                <div class="slide_text">
                                                    <h3>���� ����� <br class="ta_only"><br class="mo_only"> ���� ���ǰ��</h3>
                                                    <div class="text_sub">
                                                        <strong>'���� �����'�� �����ϴ� ���� ���� �ùķ��̼�</strong>
                                                        <p><span>&middot;</span><span>6�� ���򡤼��� ���� ������ �ݿ��� �� ���� ���� ���ǰ��</span></p>
                                                        <p><span>&middot;</span><span>���� ���� �м� ����Ʈ, �ް����͵� �������� �ؼ� ���Ƿ�<br class="pc_only"> �н� ȿ�� �ش�ȭ</span></p>
                                                    </div>
                                                </div>
                                                <a class="slide_link"  
                                                    data-pc="https://campus.megastudy.net/campus_common/2025/2025_jdsm/index.asp"
                                                    data-mo="https://mcampus.megastudy.net/campus_common/2025/2025_jdsm/index.asp" 
                                                    href="" target="_self">�ڼ��� ����<span class="link_arrow"></span>
                                                </a>
                                            </div>
                                            <div class="slide-img">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/tab_02_jdsm.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="slide_info">
                                                <div class="slide_text">
                                                    <h3>�ް�X�뼺 �� <br class="ta_only"><br class="mo_only">�����̾� ���ǰ��</h3>
                                                    <div class="text_sub">
                                                        <strong>���� ����� �� ���� ���� ���ǰ��</strong>
                                                        <p><span>&middot;</span><span>����X�ް����͵��п�, �뼺�п� ����� ��ü ���÷�<br class="pc_only"> �� ���� �� �м� �� �Ƿ� �ľ� </span></p>
                                                        <p><span>&middot;</span><span>���� ���� �������� �� ȸ�� ���並 ��ģ ������Ƽ ����</span></p>
                                                    </div>
                                                </div>
                                                <a class="slide_link"  
                                                    data-pc="https://campus.megastudy.net/campus_common/2025/2025_premium/index.asp"
                                                    data-mo="https://mcampus.megastudy.net/campus_common/2025/2025_premium/index.asp" 
                                                    href="" target="_self">�ڼ��� ����<span class="link_arrow"></span>
                                                </a>
                                            </div>
                                            <div class="slide-img">
                                                <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/tab_02_premium.png" alt="" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="section_level">
                <div class="mojip_inner">
                    <div class="title_wrap" data-aos="fade-up">
                        ������ ������ �ϼ��ϴ�<br>
                        <strong>�Խ� ������</strong>
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-up">
                        �� �а� �������� ��� ���� ������,<br>
                        ������ ������ �Խ� ���� ����<br>
                        <strong>�л� �߽� ���� ������<br class="mo_only"> ���Լ����� �ε�� �ϼ�</strong>
                    </div>

                    <div data-aos="fade-up">
                        <div class="number_title first">
                            <span class="title_num">1</span>
                            <div>�л����� �����ϴ� <strong>��� ������</strong></div>
                        </div>
                        <div class="bubble_01">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/bubble_01.png" alt="" />    
                        </div>
                        <div class="content_title">
                            �ް����͵��п��� �� �м� ��<br>
                            <span><span class="text">���غ� ���� ���� ����!</span><p class="line"></p></span>
                        </div>
                    </div>

                    <div class="teacher_list">
                        <ul> 
                            <li data-aos="fade-up">
                                <p>
                                    <em>���� ������</em>
                                    ���Լ����� ���� ���� ��� ����ȭ
                                </p>
                                <div class="icon"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/teacher_icon1.png" alt="���� ������"></div>
                            </li>
                            <li data-aos="fade-up" data-aos-delay="100">
                                <p>
                                    <em>�õ��� ������</em>
                                    ��� �κ� ������ ���� ���� ��ȭ ����
                                </p>
                                <div class="icon"><img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/teacher_icon2.png" alt="�õ��� ������"></div>
                            </li>
                        </ul>
                    </div>

                    <div data-aos="fade-up">
                        <div class="number_title">
                            <span class="title_num">2</span>
                            <div>������ ���� �ý��� <strong>�Խ� ���� ����</strong></div>
                        </div>
                        <div class="bubble_02">
                            <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/bubble_02.png" alt="" />    
                        </div>
                        <div class="content_title">
                            �Խ� ���� ���� ������ ����<br>
                            <span><span class="text"> �������� ���� �ɾ�!</span><p class="line"></p></span>
                        </div>
                    </div>

                    <div class="step_box">
                        <div class="row_box">
                            <div class="aos-dynamic" data-aos="" >
                                <strong>STEP 1</strong>
                                �Խ����������� �ְ�<br>
                                �Խ� ���� ���� �м� ��<br>
                                �ڷ� ����
                            </div>
                            <span class="arrow aos-dynamic" data-aos="" data-aos-delay="100" class="arrow">&nbsp;</span>
                            <div class="aos-dynamic" data-aos="" data-aos-delay="100">
                                <strong>STEP 2</strong>
                                �Խ�����������<br>
                                �ְ�<br>
                                �̷� ����
                            </div>
                            <span class="arrow aos-dynamic" data-aos="" data-aos-delay="100" class="arrow">&nbsp;</span>
                            <div class="aos-dynamic" data-aos="" data-aos-delay="150">
                                <strong>STEP 3</strong>
                                �Խ�����������<br>
                                �ְ�<br>
                                �̷� ��
                            </div>
                            <span class="arrow aos-dynamic" data-aos="" data-aos-delay="100" class="arrow">&nbsp;</span>
                            <div class="aos-dynamic" data-aos="" data-aos-delay="200">
                                <strong>STEP 4</strong>
                                ä�� ��<br>
                                �ǵ��
                            </div>
                            <span class="arrow aos-dynamic" data-aos="" data-aos-delay="100" class="arrow">&nbsp;</span>
                            <div class="aos-dynamic" data-aos="" data-aos-delay="250">
                                <div>
                                    �Խ� ����<br>
                                    ���� ������ ����<br>
                                    ü������<br>
                                    �Խ� ������ �缺
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="section_megapass">
                <div class="mojip_inner">
                    <div class="title_wrap" data-aos="fade-up">
                        �ް��н� <strong>100% ����</strong>
                    </div>
                    <div class="sub_title_wrap" data-aos="fade-up">
                        ���ø��� �ٸ���!<br>
                        <strong>�ް����͵��п� �������<br>
                        ���� �� �ִ� �Ŵ��� ����</strong>
                    </div> 
                    <div class="coupon" data-aos="fade-up">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/coupon.png" alt="�ް��н�" />
                    </div>
                    <div class="pc_ta_only coin" data-aos="zoom-in" data-aos-delay="100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/coin.png" alt="�ް��н�" />
                    </div>
                    <div class="mo_only coin" data-aos="zoom-in" data-aos-delay="100">
                        <img src="<%=Application("img_path")%>/library/campus_common/2026/final_gate/coin_mo.png" alt="�ް��н�" />
                    </div>
                    <p class="notice" data-aos="fade-up">
                        �� ���� ���̳� ����Ǯ�̹ݿ� '���'�ϴ� �л� ���<br>
                        �� ȯ�� �� ��� �� ���� ���� ���� �ߴ�
                    </p>
                </div>
            </div>

            <div class="section_banner">
                <div class="mojip_inner"> 
                    <div class="banner_text">
                        <p data-aos="fade-up"><span>���Լ����� ����</span>�� ����<br>
                        ������ �ٸ� ���غ� ���� �н�</p>
                        <strong data-aos="fade-up" data-aos-delay="50">2026 ���� ���̳� ����Ǯ�̹�</strong>
                    </div> 
                </div>
            </div> 

            <div id="academyList" class="section_academy">
                <div class="mojip_inner">
                    <div class="title_wrap" data-aos="fade-up">
                        <h2 class="main_tit">�п� �ȳ�</h2>
                    </div>
                    <div class="academy_info_wrap" data-aos="fade-up">
                        <ul>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">02-535-5678</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mseocho.megastudy.net/seocho/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">�����ȳ�</a>
                                        <a class="btn_tel" href="tel:02-535-5678">02-535-5678</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://seocho.megastudy.net/seocho/nsu/nsu/2026/final/final_01.asp" target="_blank">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">02-935-3378</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mgangbuk.megastudy.net/gangbuk/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">�����ȳ�</a>
                                        <a class="btn_tel" href="tel:02-935-3378">02-935-3378</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2026/final/final_01.asp" target="_blank">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">�뷮��</strong>
                                    <p class="academy_call">02-826-1555</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mnoryangjin.megastudy.net/noryangjin/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">�����ȳ�</a>
                                        <a class="btn_tel" href="tel:02-826-1555">02-826-1555</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2026/final/final_01.asp" target="_blank">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">02-3144-1010</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://msinchon.megastudy.net/sinchon/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">�����ȳ�</a>
                                        <a class="btn_tel" href="tel:02-3144-1010">02-3144-1010</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2026/final/final_01.asp" target="_blank">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">02-428-8181</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://msongpa.megastudy.net/songpa/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">�����ȳ�</a>
                                        <a class="btn_tel" href="tel:02-428-8181">02-428-8181</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://songpa.megastudy.net/songpa/nsu/nsu/2026/final/final_01.asp" target="_blank">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">��õ</strong>
                                    <p class="academy_call">032-326-9900</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mbucheon.megastudy.net/bucheon/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">�����ȳ�</a>
                                        <a class="btn_tel" href="tel:032-326-9900">032-326-9900</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2026/final/final_01.asp" target="_blank">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">�д�</strong>
                                    <p class="academy_call">031-781-3100</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mbundang.megastudy.net/bundang/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">�����ȳ�</a>
                                        <a class="btn_tel" href="tel:031-781-3100">031-781-3100</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://bundang.megastudy.net/bundang/nsu/nsu/2026/final/final_01.asp" target="_blank">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">�ϻ�</strong>
                                    <p class="academy_call">031-8073-9600</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://milsan.megastudy.net/ilsan/nsu/class/2026/final/index.asp?tab=edu-semi90" target="_blank">�����ȳ�</a>
                                        <a class="btn_tel" href="tel:031-8073-9600">031-8073-9600</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2026/final/final_01.asp" target="_blank">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">031-388-3141</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mpyeongchon.megastudy.net/pyeongchon/nsu/bbs/invite_notice_view.asp?code=26947&tab=edu-semi90" target="_blank">�����ȳ�</a>
                                        <a class="btn_tel" href="tel:031-388-3141">031-388-3141</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://pyeongchon.megastudy.net/pyeongchon/nsu/bbs/invite_notice_view.asp?code=26947" target="_blank">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li>
                            <li>
                                <div class="academy_info">
                                    <strong class="academy_name">����</strong>
                                    <p class="academy_call">02-927-8001</p>
                                    <div class="mo_academy_info">
                                        <a class="btn_info" href="https://mseongbuks.megastudy.net/seongbuk/jaehak/class/2026/winter/index.asp?tab=edu-semi90" target="_blank">�����ȳ�</a>
                                        <a class="btn_tel" href="tel:02-927-8001">02-927-8001</a>
                                    </div>
                                </div>
                                <a class="mojip_btn" href="https://seongbuks.megastudy.net/seongbuk/jaehak/jaehak/2026/final/final_01.asp" target="_blank">�����ȳ�<span class="mojip_arrow"></span></a>
                            </li> 
                        </ul>
                    </div>
                </div>
            </div> 

            <!-- ���ΰ��� ��ư -->
            <!--#include virtual="/common/responsive/inc/right_bottom_btn.asp"-->

            <div class="fixedFloating">
                <div class="fixed_floating">
                    <div class="fixed_academy_list"> 
                        <ul class="academy_list pc_ta_only">
                            <li><a href="https://seocho.megastudy.net/seocho/nsu/nsu/2026/final/final_01.asp" target="_blank">����</a></li>
                            <li><a href="https://gangbuk.megastudy.net/gangbuk/nsu/nsu/2026/final/final_01.asp" target="_blank">����</a></li>
                            <li><a href="https://noryangjin.megastudy.net/noryangjin/nsu/nsu/2026/final/final_01.asp" target="_blank">�뷮��</a></li>
                            <li><a href="https://sinchon.megastudy.net/sinchon/nsu/nsu/2026/final/final_01.asp" target="_blank">����</a></li>
                            <li><a href="https://songpa.megastudy.net/songpa/nsu/nsu/2026/final/final_01.asp" target="_blank">����</a></li>
                            <li><a href="https://bucheon.megastudy.net/bucheon/nsu/nsu/2026/final/final_01.asp" target="_blank">��õ</a></li>
                            <li><a href="https://bundang.megastudy.net/bundang/nsu/nsu/2026/final/final_01.asp" target="_blank">�д�</a></li>
                            <li><a href="https://ilsan.megastudy.net/ilsan/nsu/nsu/2026/final/final_01.asp" target="_blank">�ϻ�</a></li> 
                            <li><a href="https://pyeongchon.megastudy.net/pyeongchon/nsu/nsu/2026/final/final_01.asp" target="_blank">����</a></li>
                            <li><a href="https://seongbuks.megastudy.net/seongbuk/jaehak/jaehak/2026/final/final_01.asp" target="_blank">����</a></li>
                        </ul>  
                        <ul class="academy_list mo_only">
                            <li><a href="#academyList">�п� �ȳ�</a></li> 
                        </ul>  
                    </div>
                    <div id="academyList02" class="fixed_academy_list _02"> 
                        <ul class="academy_list pc_ta_only">
                            <a href="https://campus.megastudy.net/common/notice/fair_view.asp?code=26829" target="_blank">����ȸ</a>  
                        </ul>  
                        <ul class="academy_list mo_only">
                            <a href="https://mcampus.megastudy.net/common/notice/fair_view.asp?code=26829">����ȸ</a>  
                        </ul>  
                    </div>
                </div>
            </div>

        </div><!-- // contents -->
    </div>

	<!-- Ǫ�� ���� -->
    <!-- #include virtual="/common/responsive/inc/footer.asp"-->
</div>

</body>
</html>