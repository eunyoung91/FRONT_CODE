<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->
	<title><%=gMGC_Campus_Title%></title>

	<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
	<!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
	<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
	<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
	<link rel="stylesheet" type="text/css" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
	<link rel="stylesheet" type="text/css" href="web.css">

	<!-- #include virtual="/public/jquery.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
	<script type="text/javascript" src="/public/js/intro.js"></script>
	<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
	<script src="/public/js/waypoints.min.js"></script>
</head>
<body>
	<div id="wrapper">
		<!-- �ֻ�ܸ޴�// -->
		<!-- #include virtual="/library/include/common/top.asp" -->
		<!-- //�ֻ�ܸ޴� -->
		
		<div id="header" class="<%=GetCampusColorType()%>">
			<!-- ��� �п��ΰ� �� ���� ��// -->
			<!-- #include virtual="/library/include/common/top_campus_tab.asp" -->
			<!-- //��� �п��ΰ� �� ���� �� -->
			
			<!-- ��� ��޴�// -->
			<!-- #include virtual="/library/include/common/top_campus_detail_menu.asp" -->
			<!-- //��� ��޴� -->
		</div>
		
		<div id="container">
			<div id="teamplayWrap" class="teamplay-wrap">
				
				<div class="visual" style="background:#73AD3C url('<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/top_bg_track.jpg') 50% top no-repeat; background-size:cover;">
					<div class="act_wrap">
						<img data-aos="fade-down" class="act act01" src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/top_txt01.png" alt="">
						<img data-aos="flip-up" data-aos-delay="100" class="act act02" src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/top_txt02.png" alt="">

						<% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0243" Then  %>
						<strong>
							<img data-aos="fade-up" data-aos-delay="300" class="act act03" src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/top_txt03_2.png" alt="">
						</strong>
						<% Else %>
						<strong>
							<img data-aos="fade-up" data-aos-delay="300" class="act act03" src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/top_txt03.png" alt="">
						</strong> 
						<% End If %>
					</div>
				</div> 

				<div class="contents cont01">
					<div class="inner">

						<% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0243" Then  %>
						<div class="img_wrap">
							<img src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/con01_tit01_2.png" alt="2026 �ް����͵��п� *�������� �ȳ�" />
						</div>
						<div class="txt_wrap">
							<strong><em class="ast">*</em>������������</strong>�� ��������� ��°� ������ ����� �����ϱ� ���� <em class="highlight">���нý���</em>�Դϴ�.
						</div>
						<% Else %>
						<div class="img_wrap">
							<img src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/con01_tit01.png" alt="2026 �ް����͵��п� *�������� �ȳ�" />
						</div>
						<div class="txt_wrap">
							<strong><em class="ast">*</em>������������</strong>�� ��������� ��°� ������ ����� �����ϱ� ����<br>
							���� <strong>2010����� ����Ǿ�� <em class="highlight">�ް����͵��п��� ���нý���</em></strong>�Դϴ�.
						</div>
						<div class="img_wrap mt24">
							<img src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/con01_tit02.png" alt="2026�г⵵���� �پ��ϰ� ������ �������� �������� �����մϴ�." />
						</div>
						<% End If %>

						<div class="counter_box">
							<div class="counter_wrap">
								<div>
									<img src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/iso_left.png" alt="2026 �ް����͵��п� *��������" />
									<img src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/icon_1.png" alt="2026 �ް����͵��п� *��������" />
									<div class="counter_text">
										<strong>���� ���л�</strong>
										<div>
											<span class="counter">26,404</span><em>��</em>
										</div>
									</div>
									<img src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/iso_right.png" alt="2026 �ް����͵��п� *��������" />
								</div>
								<div>
									<img src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/iso_left.png" alt="2026 �ް����͵��п� *��������" />
									<img src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/icon_2.png" alt="2026 �ް����͵��п� *��������" />
									<div class="counter_text">
										<strong>���� ���б�</strong>
										<div>
											<em>��</em> <span class="counter">720</span><span class="bil">��</span><em>��</em>
										</div>
									</div>
									<img src="<%=Application("img_path")%>/library/campus_common/2026/2026_teamplay/iso_right.png" alt="2026 �ް����͵��п� *��������" />
								</div>
							</div>
							<p class="notice">
								�� �ް����͵��п� ����/���ǰ��/���� ���� ��ü ����(2011~2025�г⵵ ����)
							</p>
						</div>
					</div>
				</div>

				<div class="contents cont02">
					<div class="inner">
						<div>
							<h3>���� ���</h3>

							<div class="teamplay_subject mt40">
								<% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0243" Then  %>
								<strong>
									�ڿ��� ������ ���� ����п� ������չ� 
								</strong>
								<% Else %>
								<strong>
									�ް����͵��п� ������չ�
								</strong> 
								<% End If %>
								���� ������ �̼��� �л� ���
							</div>
						</div>

						<div class="mt80">
							<h3>���� ����</h3>
							<div class="teamplay_table">
								<table>
									<colgroup>
										<col style="width:13%">
										<col style="width:29%;" span="3">
									</colgroup>
									<thead>
										<tr>
											<th>���� ����</th>
											<th>���� ���� ���л�</th>
											<th>���� ���� ��� ���л�</th>
											<th>�п� ��ǥ ���л� </th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="emp">���б�</td>
											<td class="emp"><strong>1,000����</strong></td>
											<td class="emp"><strong>100����</strong></td>
											<td class="emp"><strong>100����</strong></td>
										</tr>
										<tr>
											<td>���� ����</td>
											<td>2026 ���� ����Ž(2) ����<br>+����, �ѱ��� 1���</td>
											<td>2026 ���� ������Ž(2)<br>5���� 1���</td>
											<td>������ �п� ��Ȱ�� ����� ������<br>����� �Ǿ� �п��� ��ǥ�ϴ� ���л�</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						
						<div class="notice">
							<p>
								<span>�� </span>
								<span><em class="ast">*</em>�������л��� �Ʒ� ������ ��� �����ؾ� ���� ����ڷ� �����˴ϴ�.<br></span>
							</p>
							<div class="indent">
								<% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0243" Then  %>
								<p>
									<span>�� </span>
									<span>�ڿ��� ������ ���� ����п� ������չ� ������ �� ���� ������̾�� �մϴ�.</span>
								</p>
								<% Else %>
								<p>
									<span>�� </span>
									<span>�ް����͵��п� ������չ� ������ �� ���� ������̾�� �մϴ�.</span>
								</p>
								<% End If %>
								<p>
									<span>�� </span>
									<span>
										2026 ���� ��ä�� �� �Ǽ����� ��� ���������������� �Է��ؾ� �մϴ�.(�ݵ�� ��Ȯ�� ������ �Է��ؾ� �ϸ�, ���� �Է� ������ ��Ȳ�� ���� ������ �� �ֽ��ϴ�.)<br>
										- ��ä��: 2025. 11. 16(��)����<br>
										- �Ǽ���: 2025. 12. 08(��)����<br>
									</span>
								</p>

								<p>
									<span>�� </span>
									<span>
										���б� ������ ���� ���� ������ �ݵ�� �����ؾ� �մϴ�.(�������� : ����纻, ���д��� �հ� ����)<br>       
									</span>
								</p>
								<p>
									<span class="red">��  </span>
									<span>
										<span class="line">������ Ȱ�뿡 �����ؾ� �ϸ�, �հݼ��⸦ �����ϰ� �ۼ��Ͽ� �����ؾ� �մϴ�.</span><br>
									</span>
								</p>
							</div>
							<p>
								<span>�� </span>
								<span><em class="ast">*</em>�������л����� ������ �л��� �������� ���� �� �̿�� ������ Ȱ�뿡 �����ؾ� �մϴ�. �̿� ���� �ź��� ���, ���л� ������ ��ҵ˴ϴ�.<br></span>
							</p>
							<p>
								<span>�� </span>
								<span>���б��� ���� ���п� ���� ���°� ���� Ȯ�� �� �� �ش� ������ ���� ���޵˴ϴ�.</span>
							</p>
							<p>
								<span>�� </span>
								<span>�ߺ� ������ �Ұ��ϸ�, �ߺ� �� ���� ū �ݾ����� ���޵˴ϴ�.</span>
							</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script src="/public/js/jquery.counterup.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){ });

		$(function(){
			AosMotionEvent();
			$(window).on('load', function () {
				pageLoadEvent();

				$(".counter").counterUp({
					delay: 11,
					time: 600
				});

			});
		});

		function pageLoadEvent(){
			var temp_s = $("#container").offset().top;
			$('html, body').animate({ scrollTop: temp_s}, 500);
		}

		function AosMotionEvent(){
			AOS.init({
				duration: 800,
				once: true,
				animatedClassName: 'aos-animate',
			});
		}
	</script>

	<!-- wrapper End --> 
	<!-- #include virtual="/library/include/common/bottom.asp" -->
</body>
</html>