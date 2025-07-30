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
<link rel="stylesheet" type="text/css" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
<link rel="stylesheet" type="text/css" href="web.css">
<!-- intro���� css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script>
$(window).on({
    "load":function(){
        var temp_s = $("#div_full").offset().top;
        $('html, body').animate({
            scrollTop: temp_s
        }, 500);
    }
});
</script>
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

            <div id="div_full" class="div_con taL">
				<div class="top_visual">
					<div class="top_wrap" style="background:#051831 url('<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_title_bg.jpg') center top no-repeat;">
						<div class="con">
							<div class="act_wrap">
								<img class="act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_title01.png" alt="���� ���, ���Լ����� �ٽ� ����" />
								<img class="act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_title02.png" alt="���غ� �����հݽý���" />
								<div class="act03">
									megastudy system
								</div>
								
								<img class="act04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_title_img01.png" alt="" />
								<img class="act05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_flag.png" alt="" />
							</div>
						</div>
					</div>

					<div class="top_wrap ct" style="background:#1357B2 url('<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_ct_bg.png') center bottom 178px no-repeat; background-size:1200px 838px;">
						<div class="con">
							<ul class="puzzle_wrap">
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="100"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img01.png" alt="���غ� ���� �н�" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="400"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img02.png" alt="���� �ð�ǥ ����" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="500"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img03.png" alt="�ް��н� 100% ���� ����" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img04.png" alt="�ް����͵� �п��� �ٸ���!" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="500"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img05.png" alt="�׸�����ȭ ����" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="300"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img06.png" alt="��¥ ���غ� �����̶� �̷� ��!" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="700"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img07.png" alt="�Խ� ���� ����" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="300"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img08.png" alt="���غ� ���� ���ǰ��" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="600"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img09.png" alt="���غ� ���� ������" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="400"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img10.png" alt="��� ������" /></li>
							</ul>
							<img class="mt30" data-aos="fade-up" data-aos-easing="ease-in-out-sine" data-aos-delay="0" src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_bubble.png" alt="�ް����͵��п��̶� ������ ������ �ٸ� ���غ� �����հݽý���!" />
						</div>
					</div>
				</div>
                <div class="fix_menu_wrap">
                    <ul class="fix_menu">
                        <li class="on"><span>���غ� ���� �н�</span></li>
                        <li><span>�׸�&middot;��ȭ ����</span></li> 
                        <li><span>���غ� ���� ������</span></li>
                        <li><span>��� ������</span></li>
                        <li><span>�Խ� ���� ����</span></li>
                        <li><span>�ް��н� 100%</span></li>
                    </ul>
                </div>

				<!-- 01 ���غ� ���� �н� -->
				<div class="fix_contents on content1">
					<div class="con_wrap">
						<div class="div_con1">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con01_title01.png" alt="���غ� ���� �н�" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con01_img01.png" alt="����-�м�-����-�н�-�ǵ��" />
							</div>
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con01_title02.png" alt="���غ� ���� ����" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con01_img02.png" alt="���� ���� or ���� TEST�� ���� ���κ� ���� ����" />
							</div>
						</div>

						<div class="div_con2" style="background:#E3F3FF;">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con02_title01.png" alt="All Yours ���� �ð�ǥ ����" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con02_img01.png" alt="�ð�ǥ" />
							</div>
						</div>
					</div>

				<!-- 02 �׸�����ȭ ���� -->
	            <div class="fix_contents content2">
	                <div class="con_wrap">
						<div class="div_con1">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con03_title01.png" alt="�׸�����ȭ ���� ������ ����" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con03_sub_title01.png" alt="���� �׸�����ȭ ���� ���� " />
							</div>
							<div class="slider_wrap tb_wrap">
								<div class="slider tb_slider">
									<div>
										<h4 class="tb_bg_tit mt60">����</h4>
										<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
											<colgroup>
												<col width="13%">
												<col width="37%">
												<col width="13%">
												<col width="37%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">����</th>
													<th scope="col">Ŀ��ŧ��</th>
													<th scope="col">����</th>
													<th scope="col">Ŀ��ŧ��</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th rowspan="10" class="brR">����</th>
													<td>���� ����� ����</td>
													<th rowspan="10" class="brR">����</th>
													<td>���� ���� ���ع� ���� - ���� �� ���� �б�</td>
												</tr>
												<tr>
													<td>���� ��ǰ ����� ����</td>
													<td>���� ���� ���ع� ���� - ���� ���� �ľ��ϱ�</td>
												</tr>
												<tr>
													<td>'�����ð�' ���� �ʼ� ��ǰ �ؼ�</td>
													<td>'������' �ʼ� ������� ���� �� ���� �Ʒ�</td>
												</tr>
												<tr>
													<td>'�����Ҽ�' ���� �ʼ� ��ǰ �ؼ�</td>
													<td>'����' �ʼ� ������� ���� �� ���� �Ʒ�</td>
												</tr>
												<tr>
													<td>'�����' ���� ��ǰ ���� �Ʒ�</td>
													<td>'�������' �ʼ� ������� ���� �� ���� �Ʒ�</td>
												</tr>
												<tr>
													<td>'����Ҽ�' ���� ��ǰ ���� �Ʒ�</td>
													<td>'����/ȭ��/���' �ʼ� ������� ����<br>�� ���� �Ʒ�</td>
												</tr>
												<tr>
													<td>'����/���/�ó�����' ���� ��ǰ ���� �Ʒ�</td>
													<td>'ö��' �ʼ� ������� ���� �� ���� �Ʒ�</td>
												</tr>
												<tr>
													<td>ǥ����/������ Ư¡ ���� ���� �Ʒ�</td>
													<td>���� �߷� �� ���� ���� ���� �Ʒ�</td>
												</tr>
												<tr>
													<td>&lt;����&gt; ���� ���� �Ʒ�</td>
													<td>&lt;����&gt; ���� ���� �Ʒ�</td>
												</tr>
												<tr>
													<td>���� ���� ���� ���� ���� �Ʒ�</td>
													<td>���� LEET ���� ���� �Ʒ�</td>
												</tr>
												<tr>
													<th rowspan="6" class="brR">���͸�ü</th>
													<td>������ ���� ���� ���� �Ʒ�</td>
													<th rowspan="6" class="brR">ȭ�����۹�</th>
													<td>ȭ�����۹� [3��] ���� ���� �Ʒ�</td>
												</tr>
												<tr>
													<td>���� �׸� ���� �Ʒ� - �ܾ�</td>
													<td rowspan="3">ȭ�����۹� ���� ���� ���� �Ʒ�</td>
												</tr>
												<tr>
													<td>���� �׸� ���� �Ʒ� - ����</td>
												</tr>
												<tr>
													<td>���� �׸� ���� �Ʒ� - ����/�Թ�/�߼�����</td>
												</tr>
												<tr>
													<td>��ü ���� ���� ���� ����</td>
													<td rowspan="2">ȭ�����۹� Ŭ���� ����</td>
												</tr>
												<tr>
													<td>���͸�ü Ŭ���� ����</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<h4 class="tb_bg_tit mt60">����</h4>
										<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
											<colgroup>
												<col width="13%">
												<col width="37%">
												<col width="13%">
												<col width="37%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">����</th>
													<th scope="col">Ŀ��ŧ��</th>
													<th scope="col">����</th>
													<th scope="col">Ŀ��ŧ��</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th rowspan="15" class="brR">���Х�</th>
													<td>�ŵ��������� ����</td>
													<th rowspan="15" class="brR">���Х�</th>
													<td>�Լ��� ���Ѱ� ���׽��� ����</td>
												</tr>
												<tr>
													<td>������ �αװ� �ڿ����� ����</td>
													<td>������ ���ǿ� �������� �Լ��� ���Ӽ�</td>
												</tr>
												<tr>
													<td>�����α��Լ� �׷����� �����̵��� ��Ī�̵�</td>
													<td>�̺а���� ���ǿ� ǥ��, �̺а��ɼ�</td>
												</tr>
												<tr>
													<td>�����α��Լ��� �׷����� ��ε���� Ȱ��</td>
													<td>�����Լ��� ��������� ������ ����,<br>�Ÿ����� Ȱ��</td>
												</tr>
												<tr>
													<td>�����α��Լ��� �׷����� ������ �ؼ�</td>
													<td>�����Լ��� �����Լ��� ����, �ش�ؼ�, �̺а��ɼ�</td>
												</tr>
												<tr>
													<td>�ﰢ�Լ��� ���ǿ� ����</td>
													<td>������, �ε�İ� �̺��� Ȱ��</td>
												</tr>
												<tr>
													<td>�ﰢ�Լ� �׷����� Ư¡<br>(�ֱ�, �ִ�, �ּ�, ��������)</td>
													<td>���Լ��� Ȱ���� �Լ��� �߷�</td>
												</tr>
												<tr>
													<td>�ﰢ�Լ� �׷����� ������ �ؼ�</td>
													<td>�������а� �������� ���</td>
												</tr>
												<tr>
													<td>�ﰢ�Լ� �׷����� �ﰢ�������� Ȱ��</td>
													<td rowspan="2">���������� ���ǵ� �Լ��� �ؼ�</td>
												</tr>
												<tr>
													<td>�ߵ���� ��鵵�� ������</td>
												</tr>
												<tr>
													<td>���ι�Ģ�� �ڻ��� ��Ģ�� Ȱ��</td>
													<td rowspan="2">�������� Ȱ�� - ���̿� ���Ͽ�</td>
												</tr>
												<tr>
													<td>���������� �������� �Ϲ��װ� ��</td>
												</tr>
												<tr>
													<td>���� ��ȣ�� ������ ������ �ؼ�</td>
													<td rowspan="3">�ӵ��� ���ӵ�, ��ġ, �Ÿ��� ��� ��</td>
												</tr>
												<tr>
													<td>�ñ׸��� �������� ������ ��</td>
												</tr>
												<tr>
													<td>�ͳ������� ���ǵ� ���� (������, ������, �׷���)</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<h4 class="tb_bg_tit mt60">����</h4>
										<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
											<colgroup>
												<col width="14%">
												<col width="36%">
												<col width="14%">
												<col width="36%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">����</th>
													<th scope="col">Ŀ��ŧ��</th>
													<th scope="col">����</th>
													<th scope="col">Ŀ��ŧ��</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th rowspan="7" class="brR">Ȯ�������</th>
													<td>�ߺ����հ� ��������</td>
													<th rowspan="7" class="brR">������</th>
													<td>���Լ��� Ȱ��</td>
												</tr>
												<tr>
													<td>Ȯ���� ���������� ��������</td>
													<td>ġȯ���а� �κ�����</td>
												</tr>
												<tr>
													<td>���Ǻ� Ȯ��, ����� ������ ����, ���������� Ȯ��</td>
													<td>���������� ���ǵ� �Լ��� �ؼ�</td>
												</tr>
												<tr>
													<td>�̻�Ȯ�������� ���׺���</td>
													<td>�������� Ȱ�� - �޼��� ����, ����, ����</td>
												</tr>
												<tr>
													<td>����Ȯ�������� ���Ժ���</td>
													<td>��� (�ӵ��� ���ӵ�, �Ÿ�, ��� ����)</td>
												</tr>
												<tr>
													<td>����� ����</td>
													<td rowspan="2">�������� ���ǿ� ����</td>
												</tr>
												<tr>
													<td>�������� ���� (������, �ߺ�����, �������� ������ ����)</td>
												</tr>
												<tr>
													<th rowspan="9" class="brR">������</th>
													<td>������ ���Ѱ� �޼��� �⺻�� ����<br>(����/�߻�/��Ģ����)</td>
													<th rowspan="9" class="brR">����</th>
													<td>Ÿ���� ���ǿ� ����</td>
												</tr>
												<tr>
													<td>�������� ����<br>(��������, ���� ���� ��, ���� ������)</td>
													<td>�ְ�� ���ǿ� ����</td>
												</tr>
												<tr>
													<td>������ ���Ѱ� �޼��� ���</td>
													<td>������ ���ǿ� ����, ����,<br>�� ���� �� �������� ���� ����</td>
												</tr>
												<tr>
													<td>���޼��� �������ǰ� ���</td>
													<td>��ġ���Ϳ� ��������</td>
												</tr>
												<tr>
													<td>����, �α�, �ﰢ�Լ��� ���Ѱ� Ȱ��</td>
													<td>������ ���а� ����</td>
												</tr>
												<tr>
													<td>����, �α�, �ﰢ�Լ��� �̺й��� Ȱ��</td>
													<td>���ͷ� ��Ÿ�� ������ �����İ� ����</td>
												</tr>
												<tr>
													<td>���Լ��� �̺а� ���Լ� �̺�</td>
													<td>���� ���ǿ� ������� ����</td>
												</tr>
												<tr>
													<td>�ռ��Լ� �̺а� N���� Ȱ��</td>
													<td>���翵</td>
												</tr>
												<tr>
													<td>�Լ��� ������ �ش�ؼ�, �̰赵�Լ��� ������, �ʿ��Լ��� �׷���</td>
													<td>������ǥ������ �Ÿ��� ����, ���� ������</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<h4 class="tb_bg_tit mt60">����</h4>
										<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
											<colgroup>
												<col width="13%">
												<col width="37%">
												<col width="13%">
												<col width="37%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">����</th>
													<th scope="col">Ŀ��ŧ��</th>
													<th scope="col">����</th>
													<th scope="col">Ŀ��ŧ��</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th rowspan="9" class="brR">���</th>
													<td>������ġ - �� ��ġ, ����, �� (�ɵ��� ����)</td>
													<th rowspan="3" class="brR">����</th>
													<td>paraphrasing</td>
												</tr>
												<tr>
													<td>���ı��������� ���� ��� ����</td>
													<td>�ܼ� Ȱ�� (���þ�, ����, �����)</td>
												</tr>
												<tr>
													<td>�뵿��</td>
													<td>����� ������ ���� �� ���� �ľ�</td>
												</tr>
												<tr>
													<td>������� - ����λ�</td>
													<th rowspan="8" class="brR">����</th>
													<td>�־�, ������<br>(�����, to������, ����� ���ӻ�)</td>
												</tr>
												<tr>
													<td>����� ���ӻ�</td>
													<td>���־�/���־�, ��������/��������</td>
												</tr>
												<tr>
													<td>�λ��� ���ӻ�</td>
													<td>����</td>
												</tr>
												<tr>
													<td>������ �� ��ġ</td>
													<td>����籸/��<br>(to������, �л�, �������, ����λ�, ����)</td>
												</tr>
												<tr>
													<td>��ʹ���</td>
													<td>�λ籸/�� (to������, �λ������ӻ�)</td>
												</tr>
												<tr>
													<td>��������</td>
													<td>�־���� ��ġ�� ��ġ�� ����<br>(����� ��ġ ����)</td>
												</tr>
												<tr>
													<th rowspan="4" class="brR">����</th>
													<td>����� ���� ����</td>
													<td>������ ��ġ</td>
												</tr>
												<tr>
													<td>���� ���� ����</td>
													<td>����, ���� ����</td>
												</tr>
												<tr>
													<td>�����ľ�</td>
													<th rowspan="2" class="brR">����</th>
													<td rowspan="2">����, 6&middot;9�� ���� ���� ���� ������</td>
												</tr>
												<tr>
													<td>��ĭ ����, �� ģ ���� �м�</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>

							<script language="JavaScript" src="/public/jquery/slick.js"></script>
							<script>
								$(function(){
									$('.tb_slider').slick({
									slidesToShow: 1,
									slidesToScroll: 1,
									arrows: true,
									fade: false,
									autoplay: false,
									autoplaySpeed: 3000, 
									speed : 600,
									infinite : true,
									dots : true,
									dotsClass : "slick-dots",
									pauseOnFocus : false,
									pauseOnHover : false,
									adaptiveHeight : true
									}); 
								});
							</script>
						</div>
	                </div>
	            </div>

				<!-- 03 ���غ� ���� ������ -->
				<div class="fix_contents content3">
					<div class="con_wrap">
						<div class="div_con1" style="background:#eee url('<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con04_bg.png') center top no-repeat; background-size:2500px 600px;"">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con04_title01.png" alt="" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con04_sub_title01.png" alt="" />
							</div>

							<div class="tb_wrap">
								<h4 class="tb_bg_tit mt60">�� ����</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">����</th>
											<th scope="col" rowspan="2">��ü<br>ȸ��/��</th>
											<th scope="col" colspan="2">����1</th>
											<th scope="col" colspan="2">����2</th>
											<th scope="col" colspan="2">����3</th>
											<th scope="col" colspan="3">����4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3��</th>
											<th scope="col">4��</th>
											<th scope="col">5��</th>
											<th scope="col">6��</th>
											<th scope="col">7��</th>
											<th scope="col">8��</th>
											<th scope="col">9��</th>
											<th scope="col">10��</th>
											<th scope="col">11��</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>���� ���� ���� ���ǰ��</th>
											<td>3ȸ</td>
											<td>��</td>
											<td></td>
											<td>��</td>
											<td></td>
											<td></td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>���� ���� ���� ���ǰ��</th>
											<td>8ȸ</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
									</tbody>
								</table>

								<h4 class="tb_bg_tit mt60">����</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">����</th>
											<th scope="col" rowspan="2">��ü<br>ȸ��/��</th>
											<th scope="col" colspan="2">����1</th>
											<th scope="col" colspan="2">����2</th>
											<th scope="col" colspan="2">����3</th>
											<th scope="col" colspan="3">����4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3��</th>
											<th scope="col">4��</th>
											<th scope="col">5��</th>
											<th scope="col">6��</th>
											<th scope="col">7��</th>
											<th scope="col">8��</th>
											<th scope="col">9��</th>
											<th scope="col">10��</th>
											<th scope="col">11��</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>Ǯ ���ǰ��</th>
											<td>16ȸ</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>���� ���� ���ǰ��</th>
											<td>16ȸ</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>���� ���� ���ǰ��</th>
											<td>ȭ�����۹� 8ȸ/<br>���͸�ü 16ȸ</td>
											<td></td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>������</th>
											<td>6��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>�ְ���</th>
											<td>16��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th rowspan="2" class="brR">������</th>
											<td>����/���� �� 4��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<td>���͸�ü 2��/<br>ȭ�����۹� 1��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>�׸�����</th>
											<td>�����Ժ� ����</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
									</tbody>
								</table>

								<h4 class="tb_bg_tit mt60">����</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">����</th>
											<th scope="col" rowspan="2">��ü<br>ȸ��/��</th>
											<th scope="col" colspan="2">����1</th>
											<th scope="col" colspan="2">����2</th>
											<th scope="col" colspan="2">����3</th>
											<th scope="col" colspan="3">����4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3��</th>
											<th scope="col">4��</th>
											<th scope="col">5��</th>
											<th scope="col">6��</th>
											<th scope="col">7��</th>
											<th scope="col">8��</th>
											<th scope="col">9��</th>
											<th scope="col">10��</th>
											<th scope="col">11��</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>Ǯ ���ǰ��</th>
											<td>20ȸ</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>���� ���� Ǯ ���ǰ��</th>
											<td>7ȸ</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>������ ���� Ǯ ���ǰ��</th>
											<td>16ȸ</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>���� ���� ���ǰ��</th>
											<td>20ȸ</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>������</th>
											<td>6��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>�ְ���</th>
											<td>16��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>N��</th>
											<td>���� 2��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th rowspan="2" class="brR">������</th>
											<td>���Х�/���Х�/<br>������ �� 3��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<td>���� 1��/<br>Ȯ�������<br>�� 2��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>�׸� ����</th>
											<td>�����Ժ� ����</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
									</tbody>
								</table>

								<h4 class="tb_bg_tit mt60">����</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">����</th>
											<th scope="col" rowspan="2">��ü<br>ȸ��/��</th>
											<th scope="col" colspan="2">����1</th>
											<th scope="col" colspan="2">����2</th>
											<th scope="col" colspan="2">����3</th>
											<th scope="col" colspan="3">����4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3��</th>
											<th scope="col">4��</th>
											<th scope="col">5��</th>
											<th scope="col">6��</th>
											<th scope="col">7��</th>
											<th scope="col">8��</th>
											<th scope="col">9��</th>
											<th scope="col">10��</th>
											<th scope="col">11��</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>Ǯ ���ǰ��</th>
											<td>16ȸ</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>���� ���� ���ǰ��</th>
											<td>16ȸ</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>�ְ���</th>
											<td>16��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>������</th>
											<td>3��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>N��</th>
											<td>2��</td>
											<td></td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>���</th>
											<td>1��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>���</th>
											<td>1��</td>
											<td></td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>�׸�����</th>
											<td>�����Ժ� ����</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
									</tbody>
								</table>

								<h4 class="tb_bg_tit mt60">��ȸŽ��</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">����</th>
											<th scope="col" rowspan="2">��ü<br>ȸ��/��</th>
											<th scope="col" colspan="2">����1</th>
											<th scope="col" colspan="2">����2</th>
											<th scope="col" colspan="2">����3</th>
											<th scope="col" colspan="3">����4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3��</th>
											<th scope="col">4��</th>
											<th scope="col">5��</th>
											<th scope="col">6��</th>
											<th scope="col">7��</th>
											<th scope="col">8��</th>
											<th scope="col">9��</th>
											<th scope="col">10��</th>
											<th scope="col">11��</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>Ǯ ���ǰ��</th>
											<td>20ȸ</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>������ ���� Ǯ ���ǰ��</th>
											<td>16ȸ</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>���� ���� ���ǰ��</th>
											<td>20ȸ</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>������</th>
											<td>4��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>������</th>
											<td>�����Ժ� ����</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
									</tbody>
								</table>

								<h4 class="tb_bg_tit mt60">����Ž��</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">����</th>
											<th scope="col" rowspan="2">��ü<br>ȸ��/��</th>
											<th scope="col" colspan="2">����1</th>
											<th scope="col" colspan="2">����2</th>
											<th scope="col" colspan="2">����3</th>
											<th scope="col" colspan="3">����4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3��</th>
											<th scope="col">4��</th>
											<th scope="col">5��</th>
											<th scope="col">6��</th>
											<th scope="col">7��</th>
											<th scope="col">8��</th>
											<th scope="col">9��</th>
											<th scope="col">10��</th>
											<th scope="col">11��</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>Ǯ ���ǰ��</th>
											<td>20ȸ</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>������ ���� Ǯ ���ǰ��</th>
											<td>16ȸ</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>���� ���� ���ǰ��</th>
											<td>20ȸ</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
										<tr>
											<th>������</th>
											<td>4��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>������</th>
											<td>�����Ժ� ����</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
											<td>��</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con04_sub_title02.png" alt="" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con04_img02.png" alt="" />
							</div>
	                    </div>
						<div class="div_con2" style="background:#207BCD;">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con05_title01.png" alt="" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con05_img01.png" alt="" />
							</div>

							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con05_sub_title01.png" alt="" />
							</div>
	
							<div class="tab_content mt80">
								<div class="tab_menu">
									<button data-tab="ct_tab1" class="active">����</button>
									<button data-tab="ct_tab2">����</button>
									<button data-tab="ct_tab3">����</button>
									<button data-tab="ct_tab4">Ž��</button>
								</div>
								
								<div class="tab_tb active" id="ct_tab1">
									<h4 class="tb_title">Level 1~4</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">����</th>
												<th scope="col">�ֺ� �����ð�</th>
												<th scope="col">Ŀ��ŧ��</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td rowspan="2">�п��� ����</td>
												<td rowspan="2">������ ����</td>
												<td class="taL"><p>- ����/���� + ���͸�ü/ȭ�����۹� + ���� ���ǰ�� = ���� ���� �� ������ ����</p></td>
											</tr>
											<tr>
												<td class="taL brL">
													<p>- �ް����͵��п� ���� ������ (4����)</p>
													<p>- Ǯ/���� ���� ���ǰ�� (16ȸ)</p>
													<p>- ���� ���� ���ǰ�� (���͸�ü 16ȸ/ȭ�����۹� 8ȸ)</p>
													<p>- ���� ������ (6��)</p>
													<p>- ���� �ְ��� (16��)</p>
													<p>- �ް����͵��п� ������ (����/���� 4��) + (���͸�ü 2��/ȭ�����۹� 1��)</p>
												</td>
											</tr>
										</tbody>
									</table>

									<h4 class="tb_title">�׸�&middot;��ȭ</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">����</th>
												<th scope="col">�ֺ� �����ð�</th>
												<th scope="col">Ŀ��ŧ��</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>�п��� ����</td>
												<td>������ ����</td>
												<td class="taL"><p>- ���� ���� �׸� ������</p></td>
											</tr>
										</tbody>
									</table>
								</div>

								<div class="tab_tb" id="ct_tab2">
									<h4 class="tb_title">Level 1~4</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">����</th>
												<th scope="col">�ֺ� �����ð�</th>
												<th scope="col">Ŀ��ŧ��</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td rowspan="2">�п��� ����</td>
												<td rowspan="2">������ ����</td>
												<td class="taL"><p>- ���Х�/���Х� + ������/����/Ȯ������� + ���� ���ǰ�� = ���� ���� �� ������ ����</p></td>
											</tr>
											<tr>
												<td class="taL brL">
													<p>- �ް����͵��п� ���� ������ (4����)</p>
													<p>- Ǯ ���ǰ��/���� ���� ���ǰ�� (20ȸ)</p>
													<p>- ���� ���� Ǯ ���ǰ�� (7ȸ)</p>
													<p>- ������ ���� Ǯ ���ǰ�� (16ȸ)</p>
													<p>- ���� ������ (6��)</p>
													<p>- ���� �ְ��� (16��)</p>
													<p>- N�� (���� 2��)</p>
													<p>- �ް����͵��п� ������ (���Х�/���Х�/������ 3�� + Ȯ������� 2��/���� 1��)</p>
												</td>
											</tr>
										</tbody>
									</table>

									<h4 class="tb_title">�׸�&middot;��ȭ</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">����</th>
												<th scope="col">�ֺ� �����ð�</th>
												<th scope="col">Ŀ��ŧ��</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>�п��� ����</td>
												<td>������ ����</td>
												<td class="taL">- ���� ���� �׸� ������</td>
											</tr>
										</tbody>
									</table>
								</div>

								<div class="tab_tb" id="ct_tab3">
									<h4 class="tb_title">Level 1~3</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">����</th>
												<th scope="col">�ֺ� �����ð�</th>
												<th scope="col">Ŀ��ŧ��</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td rowspan="2">�п��� ����</td>
												<td rowspan="2">������ ����</td>
												<td class="taL">- ���� + ���� ���ǰ�� = ���� ���� �� ������ ����</td>
											</tr>
											<tr>
												<td class="taL brL">
													<p>- �ް����͵��п� ���� ������ (4����)</p>
													<p>- Ǯ ���ǰ�� (16ȸ)</p>
													<p>- ���� ���� ���ǰ�� (16ȸ)</p>
													<p>- ���� �ְ��� (16��)</p>
													<p>- N�� (2��)</p>
													<p>- �ް����͵��п� ������ (������ 3��/��� 1��/��� 1��)</p>
												</td>
											</tr>
										</tbody>
									</table>

									<h4 class="tb_title">�׸�&middot;��ȭ</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">����</th>
												<th scope="col">�ֺ� �����ð�</th>
												<th scope="col">Ŀ��ŧ��</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>�п��� ����</td>
												<td>������ ����</td>
												<td class="taL"><p>- ���� ���� �׸� ������</p></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="tab_tb" id="ct_tab4">
									<h4 class="tb_title">Level</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">����</th>
												<th scope="col">�ֺ� �����ð�</th>
												<th scope="col">Ŀ��ŧ��</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td rowspan="2">�п��� ����</td>
												<td rowspan="2">������ ����</td>
												<td class="taL"><p>- Ž�� + ���� ���ǰ�� = ���� ���� �� ������ ����</p></td>
											</tr>
											<tr>
												<td class="taL brL">
													<p>- �ް����͵��п� ���� ������ (4����)</p>
													<p>- ��ȸŽ�� Ǯ ���ǰ��/���� ���� ���ǰ�� (20ȸ)</p>
													<p>- ����Ž�� Ǯ ���ǰ��/���� ���� ���ǰ�� (20ȸ)</p>
													<p>- ������ ���� Ǯ ���ǰ�� (16ȸ)</p>
													<p>- Ž�� ������ (4��)</p>
													<p>- �ް����͵��п� ������ (������ N��)</p>
												</td>
											</tr>
										</tbody>
									</table>

									<h4 class="tb_title">�׸�&middot;��ȭ</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">����</th>
												<th scope="col">�ֺ� �����ð�</th>
												<th scope="col">Ŀ��ŧ��</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>�п��� ����</td>
												<td>������ ����</td>
												<td class="taL"><p>- ���� ���� �׸� ������</p></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
	                </div>
	            </div>

				<!-- 04 ��� ������ -->
				<div class="fix_contents content4">
					<div class="con_wrap">
						<div class="div_con1">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con06_title01.png" alt="" />
							</div>

							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con06_img01.png" alt="" />
							</div>
						</div>
	                </div>
	            </div>

				<!-- 05 �Խ� ���� ���� -->
				<div class="fix_contents content5" style="background:#123355 url('<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con07_bg.png') center top no-repeat;">
					<div class="con_wrap">
	                    <div class="div_con1">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con07_title01.png" alt="" />
							</div>

							<div class="img_wrap" style="padding-top:450px;">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con07_img01.png" alt="" />
							</div>
						</div>
	                </div>
	            </div>

				<!-- 06 �ް��н� 100% -->
				<div class="fix_contents content6" style="background:#FFE700 url('<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con08_bg.png') center top no-repeat;">
					<div class="con_wrap">
	                    <div class="div_con1">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con08_title01.png" alt="" />
							</div>
							<div class="img_wrap po_rel mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con08_img01.png" alt="" />
								
								<div class="free_txt">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con08_img02.png" alt="" />
								</div>
							</div>
						</div>
	                </div>
	            </div>
            </div>
        </div>
    </div>

    <!-- container End -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			AosMotionEvent();

			var $menu = $('.fix_menu li'),
				$contents = $('.fix_contents');

			$(window).on('scroll', function() {
				var scrollPos = $(document).scrollTop() + ($(window).height() / 6);

				$.each($contents, function(idx) {
					var $section = $(this),
						sectionTop = $section.offset().top,
						sectionBottom = sectionTop + $section.outerHeight();

					if (scrollPos >= sectionTop && scrollPos < sectionBottom) {
						$menu.removeClass('on');
						$menu.eq(idx).addClass('on');
					}
				});
			});
			
			/* fix menu */
			$(".fix_menu li").on('click', function(e){
				var idx = $(this).index()+1;

				$(".fix_menu li").removeClass("on");
				$(this).addClass("on");
	
				$(".fix_contents").removeClass("on");
				$(".content"+idx).addClass("on");
	
				var _top = $(".content"+idx), 
					$target = _top.offset().top - 0;
	
				e.preventDefault();
	
				$('html, body').animate({ scrollTop : $target - 0 }, 500);
			});

			/* tab content */
			$('.tab_menu button').click(function() {
				var tabId = $(this).attr('data-tab');
				
				$('.tab_menu button, .tab_tb').removeClass('active');
				$(this).addClass('active');
				$('#' + tabId).addClass('active');
			});

			$('.tab_menu button[data-tab="tab1"]').click();
		});
	
		function fix_menu_move() {
			var qstart = $(".top_visual").height() + 70;
			var top_h = $('.top_wrap').outerHeight() + $('.top_wrap.ct').outerHeight();

			if ($(this).scrollTop() > qstart) {
				$('.fix_menu_wrap').css({
					"top" : "0", "position" : "fixed"
				});
			}else {
				$('.fix_menu_wrap').css({
					"top" : top_h, "position" : "absolute"
				});
			}
		}
		$(window).on({ 
			"load":function(){ },
			"resize":function(){ },
			"scroll":function(){
				fix_menu_move();
			}
		});

		function AosMotionEvent(){
			AOS.init({
				duration: 500,
				once: true,
				animatedClassName: 'aos-animate',
				offset:400,
			});
		}
	</script>


</div>
<!-- wrapper End -->
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>