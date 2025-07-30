<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="keywords" content="�ް����͵�, �ް����͵��п�, ����, �Խ�, ����, ���غ�, ����, �н�, ���غ� �����հݽý���, ���غ� ���� �н�, ������, ���غ� ���� �н� ������, ���Լ���, Ŀ��ŧ��" />
<meta name="description" content="���Լ����� ��� ����, ���� ����, ����/�������п�, �Խ�/��������, ���غ� �����հݽý���, ������������"/>
<meta property="og:type" content="website">
<meta property="og:title" content="�ް����͵��п�">
<meta property="og:description" content="���Լ����� ��� ����, ���� ����, ����/�������п�, �Խ�/��������, ���غ� �����հݽý���, ������������">
<meta property="og:url" content="https://campus.megastudy.net">
<%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/intro_renew/og_logo.jpg'>"
	response.write pageOgMeta
%>
<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->

<title><%=gMGC_Campus_Title%></title>
<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
<!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/report_2015.css" />
<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
<link rel="stylesheet" type="text/css" href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="web.css"><!-- 2025_custom_contents CSS -->

<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<!-- <script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>

<script type="text/javascript" src="/common/js/ScrollTrigger.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
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

	<!-- container -->
    <div id="container" style="padding-bottom:0px !important;">
        <!-- customContents -->
		<div id="customWrap" class="custom-wrap">

			<!-- visual -->
			 <div class="motion-wrap">
				<div class="circle">
					<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_circle_1.png" alt="���Լ����� ���� ���� �Ϻ��� ������" /></p>
					<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_circle_2.png" alt="���Լ����� ���� ���� �Ϻ��� ������" /></p>
					<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_circle_3.png" alt="���Լ����� ���� ���� �Ϻ��� ������" /></p>
				</div>
				<div class="visual-wrap">
					<div class="typo">
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_text_1.png" alt="���Լ����� ���� ���� �Ϻ��� ������" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_text_2.png" alt="���غ� ���� �н� ������" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_text_3_bg.png" alt="customized contents" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_text_3.png" alt="customized contents" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_text_4.png" alt="���غ� �������� ���� �ڽŰ��� Ȯ���ϰ� ���̴�" /></p>
					</div>
					<div class="cube">
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_cube_1.jpg" alt="���Լ����� ���� ���� �Ϻ��� ������" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_cube_2.jpg" alt="���Լ����� ���� ���� �Ϻ��� ������" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_cube_3.jpg" alt="���Լ����� ���� ���� �Ϻ��� ������" /></p>
					</div>
				</div>
			</div>
			<!-- // visual -->

			<!-- content -->
			<div class="cont01">
				<div class="inner">
					<div class="text-wrap">
						<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont01_tit_01.png" alt="" />
					</div>
					<div class="img-wrap img-map mt80">
						<img data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont01_img_01.png" alt="" />
						<div class="check">
							<img data-aos="zoom-out" data-aos-anchor=".img-map" data-aos-delay="300" data-aos-duration="500" src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont01_img_02.png" alt="" />
						</div>
					</div>
				</div>
			</div>

			<div class="cont02">
				<div class="inner">
					<div class="text-wrap">
						<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont02_tit_01.png" alt="" />
					</div>
					<div class="img-wrap mt80">
						<img data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont02_img_01.png" alt="" />
					</div>
				</div>
			</div>

			<div class="cont js-cont-wrap">
				<div class="cont03 js-cont">
					<nav class="fix-menu-wrap">
						<div class="fix-menu">
							<div class="menu">
								<a class="on" href="javascript:void(0);">���� SCALE</a>
								<a href="javascript:void(0);">���� SCALE</a>
								<a href="javascript:void(0);">���� SPHERE</a>
							</div>
						</div>
					</nav>

					<div class="inner">
						<div class="title-set" data-aos="fade-up">
							<div class="number">1</div>
							<div class="text">
								<span>
									�Ƿ��� �ϼ��ϴ� ü���� �н��� ��
								</span>
								<strong>
									���� SCALE
								</strong>
								<ul>
									<li>�� ����/����/���� 3�� ����, 10�� ���ο������� ����</li>
									<li>�� ���غ� ���� �н�, ���� ���� ���� �з����� <em>���� ����ȭ</em></li>
									<li>�� ���� �н����� ���� ���� ������� �ܰ躰 �������� <em>�н� ȿ�� �ش�ȭ</em></li>
								</ul>
							</div>
						</div>

						<div class="table-title">���� Level ��</div>
						<div class="table-set">
							<div class="set-1">
								<p class="caption">&middot; ����</p>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="33.333%" span="3">
									</colgroup>
									<tbody>
										<tr>
											<th>����, ���� </��>
											<th>���͸�ü </th>
											<th>ȭ�����۹� </th>
										</tr>
										<tr>
											<td>Level1 </td>
											<td>Level1 </td>
											<td>Level1 </td>
										</tr>
										<tr>
											<td>Level2 </td>
											<td>Level2 </td>
											<td> </td>
										</tr>
										<tr>
											<td>Level3 </td>
											<td> </td>
											<td> </td>
										</tr>
										<tr>
											<td>Level4 </td>
											<td> </td>
											<td> </td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="set-2">
								<p class="caption">&middot; ����</p>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="25%" span="4">
									</colgroup>
									<tbody>
										<tr>
											<th>���Х�, �� </th>
											<th>������ </th>
											<th>Ȯ������� </th>
											<th>���� </th>
										</tr>
										<tr>
											<td>Level1 </td>
											<td>Level1 </td>
											<td>Level1 </td>
											<td>Level1 </td>
										</tr>
										<tr>
											<td>Level2 </td>
											<td>Level2 </td>
											<td>Level2 </td>
											<td> </td>
										</tr>
										<tr>
											<td>Level3 </td>
											<td>Level3 </td>
											<td> </td>
											<td> </td>
										</tr>
										<tr>
											<td>Level4 </td>
											<td>Level4 </td>
											<td> </td>
											<td> </td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="set-3">
								<p class="caption">&middot; ����</p>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<tbody>
										<tr>
											<th>���� </th>
										</tr>
										<tr>
											<td>Level1 </td>
										</tr>
										<tr>
											<td>Level2 </td>
										</tr>
										<tr>
											<td>Level3 </td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="table-title">���� �� ����</div>
						<div>
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont03_img_01.png" alt="���� SCALE ����" />
						</div>
						<div class="mt40">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont03_img_02.png" alt="���� SCALE ����" />
						</div>
						<div class="mt40">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont03_img_03.png" alt="���� SCALE ����" />
						</div>
					</div>
				</div>
			</div>

			<div class="cont js-cont-wrap">
				<div class="cont04">
					<div class="inner">

						<div class="title-set" data-aos="fade-up">
							<div class="number">2</div>
							<div class="text">
								<span>
									������ �ϼ��ϴ� ü���� �н��� ��
								</span>
								<strong>
									���� SCALE
								</strong>
								<ul>
									<li>�� ����/���� 2�� ����. ü������ ���� �н��� ������ <em>���� Ưȭ ����</em></li>
									<li>�� �Ϸ� 30�� �н��� ������ ���Ϻ� ���� �������� <em>������ �н� ��ȹ ����</em></li>
									<li>�� �ñ⺰, ���� �н����� ���� ���� ������� <em>��ƴ���� ���� ���</em></li>
								</ul>
							</div>
						</div>

						<div class="hash-set">
							<span class="round"></span>
							<div>#1. ���� ����</div>
						</div>

						<div class="mt80">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont04_img_01.png" alt="" />
						</div>

						<div class="table-title mt80">���� SCALE �н� ����</div>						
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="8%;">
								<col width="42%;">
								<col width="8%;">
								<col width="42%;">
							</colgroup>
							<thead>
								<tr>
									<th>��</th>
									<th>�ֿ� ����</th>
									<th>��</th>
									<th>�ֿ� ����</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="bg_f4">3�� </td>
									<td>����Ư�� ���� ���� �н� </td>
									<td class="bg_f4">6�� </td>
									<td>����Ư�� ���� ���� �н� + ����Ư�� ���� ��ǰ �м� </td>
								</tr>
								<tr>
									<td class="bg_f4">4�� </td>
									<td>����Ư�� ���� ���� �н� + ����Ư�� ���� ��ǰ �м� </td>
									<td class="bg_f4">7�� </td>
									<td>���ɿϼ� ���� ���� �н� </td>
								</tr>
								<tr>
									<td class="bg_f4">5�� </td>
									<td>[6�� ������] ����Ư�� ���� ���� �н� </td>
									<td class="bg_f4">8�� </td>
									<td>[9�� ������] ����Ư��, ���ɿϼ� ���� ���� �н� + ���ɿϼ� ��ǰ �м� </td>
								</tr>
								<tr>
									<td class="bg_f4" colspan="4">�򰡿� / ����û ���ǰ�� ���� ���� ���� ���� </td>
								</tr>
							</tbody>
						</table>

						<div class="table-title mt80">���� SCALE ����</div>

						<p class="caption">&middot; �⺻ ����</p>

						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="15%;">
								<col width="35%;">
								<col width="15%;">
								<col width="35%;">
							</colgroup>
							<tbody>
								<tr>
									<th>�⺻ ����</th>
									<td colspan="3">EBS ����Ư�� ���� ��ǰ�� ���� ���� ������ ����û ���� �н� + ���� ��ǰ ���� �м�</td>
								</tr>
								<tr>
									<th>���� ���̵� </th>
									<td>�ʼ� ���̵� </td>
									<th>�� ���� �� </th>
									<td>250���� </td>
								</tr>
							</tbody>
						</table>

						<p class="caption">&middot; ���� �н� ����</p>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="14.285%;" span="7">
							</colgroup>
							<tbody>
								<tr>
									<th>DAY 01</th>
									<th>DAY 02</th>
									<th>DAY 03</th>
									<th>DAY 04</th>
									<th>DAY 05</th>
									<th class="bg_ed">�η� �ڳ�</th>
									<th>DAY 06</th>
								</tr>
								<tr>
									<td>EBS ���� ����<br>(���� 1��Ʈ,<br>���� 1��Ʈ) </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td class="fb">����Ư��<br>��ǰ �м� </td>
									<td>���� ����<br>1��Ʈ ���� </td>
								</tr>
								<tr>
									<th>DAY 07 </th>
									<th>DAY 08 </th>
									<th>DAY 09 </th>
									<th>DAY 10 </th>
									<th>DAY 11 </th>
									<th class="bg_ed">�η� �ڳ� </th>
									<th>DAY 12 </th>
								</tr>
								<tr>
									<td>EBS ���� ����<br>(���� 1��Ʈ,<br>���� 1��Ʈ) </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td class="fb">����Ư��<br>��ǰ �м� </td>
									<td>���� ����<br>1��Ʈ ���� </td>
								</tr>
								<tr>
									<th>DAY 13 </th>
									<th>DAY 14 </th>
									<th>DAY 15 </th>
									<th>DAY 16 </th>
									<th>DAY 17 </th>
									<th class="bg_ed">�η� �ڳ� </th>
									<th>DAY 18 </th>
								</tr>
								<tr>
									<td>EBS ���� ����<br>(���� 1��Ʈ,<br>���� 1��Ʈ) </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td class="fb">����Ư��<br>��ǰ �м� </td>
									<td>���� ����<br>1��Ʈ ���� </td>
								</tr>
								<tr>
									<th>DAY 19 </th>
									<th>DAY 20 </th>
									<th>DAY 21 </th>
									<th>DAY 22 </th>
									<th>DAY 23 </th>
									<th class="bg_ed">�η� �ڳ� </th>
									<th>DAY 24 </th>
								</tr>
								<tr>
									<td>EBS ���� ����<br>(���� 1��Ʈ,<br>���� 1��Ʈ) </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td>���� 1��Ʈ,<br>���� 1��Ʈ ���� </td>
									<td class="fb">����Ư��<br>��ǰ �м� </td>
									<td>���� ����<br>1��Ʈ ���� </td>
								</tr>
							</tbody>
						</table>

						<div class="hash-set">
							<span class="round green"></span>
							<div>#2. ���� ����</div>
						</div>

						<div class="mt80">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont04_img_02.png" alt="" />
						</div>

						<div class="table-title">���� SCALE �н� ����</div>						
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="8%;">
								<col width="42%;">
								<col width="8%;">
								<col width="42%;">
							</colgroup>
							<thead>
								<tr>
									<th>��</th>
									<th>�ֿ� ����</th>
									<th>��</th>
									<th>�ֿ� ����</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="bg_f4">3�� </td>
									<td>���� �ϼ��ϱ� - �⺻ 3�� ����</td>
									<td class="bg_f4">6�� </td>
									<td>4�� ��� �帱 ����(��) - ���� 4��, �⺻ 4�� ����
									</td>
								</tr>
								<tr>
									<td class="bg_f4">4�� </td>
									<td>���� ���� Ȯ���ϱ� - ����� 3��, ���� 4�� ����</td>
									<td class="bg_f4">7�� </td>
									<td>���̵� ���� ����ϱ� - ����� 4�� ����</td>
								</tr>
								<tr>
									<td class="bg_f4">5�� </td>
									<td>4�� ��� �帱 ����(��) - ���� 4��, �⺻ 4�� ����</td>
									<td class="bg_f4">8�� </td>
									<td>����� �ٲٴ� ���� ����ϱ� - ����� 4�� ����</td>
								</tr>
								<tr>
									<td class="bg_f4" colspan="4">�򰡿� / ����û ���ǰ�� ���� ���� ���� ���� </td>
								</tr>
							</tbody>
						</table>

						<div class="table-title">���� SCALE ����</div>
						<p class="caption">&middot; �⺻ ����</p>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="20%;">
								<col width="30%;">
								<col width="20%;">
								<col width="30%;">
							</colgroup>
							<tbody>
								<tr>
									<th>�⺻ ����</th>
									<td colspan="3">���� ���� ���� ���� ������ ��ܿ��� ���� ����, ����+���� ����, �̴� ���ǰ��</��>
								</tr>
								<tr>
									<th>���� ���̵� </th>
									<td>�⺻ 3�� / ���� 4�� / ����� 4�� ���� </td>
									<th>�� ���� �� </th>
									<td>328���� (1�� 10���� + ����) </td>
								</tr>
							</tbody>
						</table>

						<p class="caption">&middot; ���� �н� ����</p>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<tbody>
								<tr>
									<th>DAY 01</th>
									<th>DAY 02</th>
									<th>DAY 03</th>
									<th>DAY 04</th>
									<th>DAY 05</th>
									<th>DAY 06</th>
									<th>DAY 07</th>
								</tr>
								<tr>
									<td>���Х� 1�ܿ�<br>���� �� ���� </td>
									<td>���Х� 1�ܿ�<br>���� ���� </td>
									<td>���Х� 2�ܿ�<br>���� �� ���� </td>
									<td>���Х� 2�ܿ�<br>���� ���� </td>
									<td>���Х� 3�ܿ�<br>���� �� ���� </td>
									<td>���Х� 3�ܿ�<br>���� ���� </td>
									<td>���Х� 1�ܿ�<br>���� �� ���� </td>
								</tr>
								<tr>
									<th>DAY 08 </th>
									<th>DAY 09 </th>
									<th>DAY 10 </th>
									<th>DAY 11 </th>
									<th>DAY 12 </th>
									<th>DAY 13 </th>
									<th>DAY 14 </th>
								</tr>
								<tr>
									<td>���Х� 1�ܿ�<br>���� ���� </td>
									<td>���Х� 2�ܿ�<br>���� �� ���� </td>
									<td>���Х� 2�ܿ�<br>���� ���� </td>
									<td>���Х� 3�ܿ�<br>���� �� ���� </td>
									<td>���Х� 3�ܿ�<br>���� ���� </td>
									<td>���� ���� 1�ܿ�<br>���� �� ���� </td>
									<td>���� ���� 1�ܿ�<br>���� ���� </td>
								</tr>
								<tr>
									<th>DAY 15 </th>
									<th>DAY 16 </th>
									<th>DAY 17 </th>
									<th>DAY 18 </th>
									<th>DAY 19 </th>
									<th>DAY 20 </th>
								</tr>
								<tr>
									<td>���� ���� 2�ܿ�<br>���� �� ���� </td>
									<td>���� ���� 2�ܿ�<br>���� ���� </td>
									<td>���� ���� 3�ܿ�<br>���� �� ���� </td>
									<td>���� ���� 3�ܿ�<br>���� ���� </td>
									<td>�̴� ���ǰ�� 1ȸ </td>
									<td>�̴� ���ǰ�� 2ȸ </td>
								</tr>
							</tbody>
						</table>

					</div>
				</div>
			</div> 

			<div class="cont js-cont-wrap">
				<div class="cont05">
					<div class="inner">

						<div class="title-set" data-aos="fade-up">
							<div class="number">3</div>
							<div class="text">
								<span>
									������ Ȯ���ϴ� ���� �����
								</span>
								<strong>
									���� SPHERE
								</strong>
								<ul>
									<li>�� ����/���� 2�� ����. ���� ü������ �н����� <em> ���� ���� ���</em></li>
									<li>�� �ܰ躰 �н������� ���� �׸��� ���� ����, ���� �м�����  <em>ö���� ���� ���</em></li>
									<li>�� �ñ⺰, ���� �н����� ���� ���� �������  <em>��ƴ���� ���� ���</em></li>
								</ul>
							</div>
						</div>

						<div class="hash-set">
							<span class="round mint"></span>
							<div>#1. ���� ����</div>
						</div>
						<div class="mt80">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont05_img_01.png" alt="" />
						</div>

						<p class="caption mt80">&middot; �⺻ ���� : �ܰ�</p>
						<div>
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont05_img_02.png" alt="" />
						</div>	
						<p class="notice">
							�� ���� ����� �׸� ����!
						</p>

						<p class="caption mt50">&middot; �⺻ ���� : ����</p>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="16.666%" span="6">
							</colgroup>
							<thead>
								<tr>
									<th>���Х�</th>
									<th>���Х�</th>
									<th>������</th>
									<th>����</th>
									<th>Ȯ�������</th>
									<th>���</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5�� </td>
									<td>5�� </td>
									<td>4�� </td>
									<td>4�� </td>
									<td>4�� </td>
									<td>���� 10�� + ���� 4�� </td>
								</tr>
							</tbody>
						</table>

						<p class="caption mt50">&middot; �� ����</p>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="16.666%" span="6">
							</colgroup>
							<thead>
								<tr>
									<th colspan="2">�׸� SKETCH</th>
									<th>���� SPHERE</th>
									<th>���� SPHERE </th>
									<th>���� SPHERE</th>
									<th>SUMMARY</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>�׸��� ���� ���� </td>
									<td>�׸��� ���� �н� <br>���� ��� </td>
									<td>�׸��� ���� �н� �� <br>����Ǯ�� </td>
									<td>���� ���� Ǯ�̷�<br>���� �н� Ȯ�� ��<br>���� ���� ��� </td>
									<td>���� �� �ֽ� Ʈ���� <br>�ݿ��� �������� <br>���� ���� </td>
									<td>�ʼ� ���� &amp; <br>SPHERE Key<br>��� ���� </td>
								</tr>
							</tbody>
						</table>

						<div class="hash-set">
							<span class="round purple"></span>
							<div>#2. ���� ����</div>
						</div>
						<div class="mt80">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont05_img_03.png" alt="" />
						</div>

						<div class="table-title">���</div>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<thead>
								<tr>
									<th>����</th>
									<th>STEP 1</th>
									<th>STEP 2</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="bg_f4">���� ���� �н� </td>
									<td class="vatop lh18 pd28">
										<em>���� ��� ���� �н�</em><br>
										&middot; ���� ��� ���� �н�<br>
										&middot; ���� Ȯ�� ���� Ǯ��<br> 
										&middot; ��� ���� ���� Ǯ�� <br> 
										�� ���� ��� ���� 8�ܿ� ����  <br> 
										(������ ���� �ľ�/�־�� ������ �� ��ġ/������ �λ�/����/<br>
										�л�� �л籸��/�����/���ӻ�/���ı����� Ư������)  
									</td>
									<td class="vatop lh18 pd28">
										<em>��� ���� ����</em><br>
										&middot; ��� ���� ���� ���� ���� ����  <br> 
										&middot; 10���� ����&amp;�򰡿� ���ǰ�� ���� ���� ����<br> 
										&middot; ���� ���� �м� �� ��ü ���̵� �ʼ� ���� ���� ����  
									</td>
								</tr>
							</tbody>
						</table>

						
						<div class="table-title">���</div>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<thead>
								<tr>
									<th>����</th>
									<th>STEP 1</th>
									<th>STEP 2</th>
									<th>STEP 3</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="bg_f4">���� ���� ���� </td>
									<td class="vatop lh18 pd28">
										<em>���� ���� ���� ����</em><br>
										&middot; ���� ������ ���ϱ�, ��ȭ��, <br>  ���� ���� �������� �з�<br>
										&middot; ���� Ǯ�̸� ���� �ð� ���� ���� �ְ�!<br>
										&middot; �� �� �� Ǯ �� �ִ� Dictation ���� 
									</td>
									<td class="vatop lh18 pd28">
										<em>��� ���� ����</em><br>
										&middot; 17���� ��� ���� ����(���� ����) <br>
										&middot; ���� ������ �⸦ �� �ֵ��� Step1 ���� <br>  ª�� ���� Ǯ�� �ð� �������� ���� <br>
										&middot; �� �� �� Ǯ �� �ִ� Dictation ����<br>  
									</td>
									<td class="vatop lh18 pd28">
										<em>��� Final</em><br>
										&middot; ���ɰ� ������ ���̵� ����(���� ����)<br>
										&middot; ���� Ǯ�� �ð� ������ ���ɰ� <br>  �����ϰų� �ణ ª�� ����<br>
										&middot; �ִ��� ���ɰ� ���� �������� <br>  ��� �����ϵ��� ���� 
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div> 

			<div class="cont06">
				<div class="inner" data-aos="fade-up">
					<div class="text-wrap">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont06_img_01.png" alt="" />
					</div>
					<div class="img-wrap">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont06_img_02.png" alt="" />
					</div>
				</div>
			</div>
			<!-- //content -->

		</div>
		<!-- //customContents -->
    </div>
	<!-- //container -->
</div>

<script src="./ui.js"></script>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
