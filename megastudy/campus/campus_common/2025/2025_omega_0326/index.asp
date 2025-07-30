<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="author" content="�ް����͵��п�" />
<meta name="keywords" content="�ް����͵��п�, �����п�, ����п�, �Խ�, �������п�, �ް����͵𷯼�, �ް����͵�, N��, ����, ����, ���ǰ��, ���� ���ǰ��" />
<meta name="description" content="�Ƿ°� ������ ������ ������ ���ް�! ���� ���� ���� ���� ���� �ϼ�!" />
<meta property="og:type" content="website">
<meta property="og:title" content="�ް����͵��п�" />
<meta property="og:description" content="�Ƿ°� ������ ������ ������ ���ް�! ���� ���� ���� ���� ���� �ϼ�!" />
<meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_omega/index.asp">
<meta property="og:site_name" content="�ް����͵��п�">
<%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2025/2025_omega/thumb.jpg'>"
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
<link rel="stylesheet" type="text/css" href="web.css"><!-- 2025 omega CSS -->

<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/common/js/gsap.min.js"></script>
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
        <!-- omegaWrap -->
		<div id="omegaWrap" class="omega-wrap">
			<!-- visual -->
			<div class="visual-wrap">
				<div class="visual">
					<div class="scene03">
						<div class="inner">
							<p class="scene03-tit01">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene03_tit01.png" alt="ó������ ������ ���� �Ϻ��� ���� �÷�" />
							</p>
							<p class="scene03-tit02">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene03_tit02.png" alt="omega" />
							</p>
							<p class="scene03-tit03">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene03_tit03.png" alt="���غ� �������� ���� �ڽŰ��� Ȯ���ϰ� ���̴�" />
							</p>
						</div>
					</div>
					<div class="scene02">
						<div class="inner">
							<div class="obj-book"></div>
							<div class="obj-box01">
								<div class="obj">
									<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene02_obj01.png" alt="" />
								</div>
								<div class="obj-circle"></div>
								<span class="line01 line"></span>
								<span class="line02 line"></span>
							</div>
							<div class="obj-box02">
								<div class="obj">
									<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene02_obj02.png" alt="" />
								</div>
								<div class="obj-circle"></div>
								<span class="line01 line"></span>
								<span class="line02 line"></span>
							</div>
							<div class="obj-box03">
								<div class="obj">
									<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene02_obj03.png" alt="" />
								</div>
								<div class="obj-circle"></div>
								<span class="line"></span>
							</div>
			
							<p class="scene02-tit01">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene02_tit01.png" alt="Optimum" />
							</p>
							<p class="scene02-tit02">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene02_tit02.png" alt="�ְ� ���� ������ ���ǰ�� ���� �߽��� �Ǵ� ��̷ο� ���ΰ� ���۵˴ϴ�" />
							</p>
						</div>
					</div>
					<div class="scene01">
						<div class="inner">
							<p class="obj-book">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene01_book.png" alt="" />
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- //visual -->

			<!-- 250326 -->
			<!-- <style>
				.omega-popup {
					position: fixed;
					top:50%;
					transform: translateY(-50%);
					right:0;
					cursor: pointer;
				}
			</style>
			<script>
				function openPopup() {
					window.open(
						'popup.asp',
						'popup', 
						'width=792,height=900,top=100,left=100,resizable=no,scrollbars=no'
					);
				}
			</script>
			<div class="omega-popup">
				<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/omega_popup.png" alt="��� �̹���" onclick="openPopup()">
			</div> -->
			<!-- 250326 -->
			 
			<!-- content -->
			<div class="cont01 js-cont">
				<div class="inner">
					<div class="img_wrap">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont01.jpg" alt="������ 7�ܰ� �������˼� �ý���" />
					</div>
				</div>
			</div>

			<div class="cont02 js-cont">
				<div class="inner">
					<div class="img_wrap">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont02.jpg" alt="'����' ���ǰ��" />
					</div>
				</div>
			</div>

			<div class="cont js-cont-wrap cont-bg-box">
				<div class="cont03 js-cont">
					<!-- fix-menu -->
					<nav class="fix-menu-wrap">
						<div class="fix-menu">
							<div class="menu">
								<a class="on" href="javascript:void(0);">OMEGA/OMEGA link</a>
								<a href="javascript:void(0);">OMEGA black/OMEGA blue</a>
								<a href="javascript:void(0);">OMEGA weekly</a>
							</div>
						</div>
					</nav>
					<!--// fix-menu -->

					<div class="inner">
						<div class="img_wrap">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont03.png" alt="OMEGA ���� ��� ���ǰ�硤���� SET" />
						</div>
					</div>
				</div>
				
				<div class="cont04 js-cont">
					<div class="inner">
						<div class="slide-wrap">
							<p class="tit">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont04.png" alt="OMEGA" />
							</p>
							<ul class="sl-box">
								<li class="slide01 active">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont04_sl01.png" alt="���� �н� ����" /></div>
								</li>
								<li class="slide02">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont04_sl02.png" alt="�Ƿ� �ױ�" /></div>
								</li>
								<li class="slide03">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont04_sl03.png" alt="������ ������" /></div>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="cont05 js-cont">
					<div class="inner">
						<div class="slide-wrap">
							<p class="tit">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont05.png" alt="OMEGA link" />
							</p>
							<ul class="sl-box">
								<li class="slide01 active">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont05_sl01.png" alt="���� �н� ȿ��" /></div>
								</li>
								<li class="slide02">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont05_sl02.png" alt="���� ����" /></div>
								</li>
								<li class="slide03">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont05_sl03.png" alt="������ �Ƿ� ����" /></div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="cont js-cont-wrap">
				<div class="cont06">
					<div class="inner">
						<p class="tit">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont06_tit.png" alt="���� ���� ��� ���ǰ��" />
						</p>
						<div class="img_wrap">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont06.png" alt="OMEGA black / OMEGA blue" />
						</div>
					</div>
				</div>
			</div>

			<div class="cont js-cont-wrap">
				<div class="cont07">
					<div class="inner">
						<div class="slide-wrap">
							<p class="tit">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont07_tit.png" alt="������ ���� 100% �ϼ� �ְ� �̴� ���ǰ��" />
							</p>
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont07.png" alt="OMEGA weekly" />
							</div>
							<ul>
								<li class="slide01 active">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont07_sl01.png" alt="���� ���� ����" /></div>
								</li>
								<li class="slide02">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont07_sl02.png" alt="�н� ���� üũ" /></div>
								</li>
								<li class="slide03">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont07_sl03.png" alt="�н� ȿ�� ���" /></div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="cont08">
				<div class="inner">
					<div class="img_wrap">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont08_txt.png" alt="" />
					</div>
				</div>
			</div>

			<div class="cont09">
				<div class="inner">
					<p class="tit"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont09_tit.png" alt="" /></p>
					<table class="tbl-01 type02 tbl-pos">
						<colgroup>
							<col style="width:18%" />
							<col style="width:8%" />
							<col style="width:8%" />
							<col style="width:8%" />
							<col style="width:8%" />
							<col style="width:8%" />
							<col style="width:8%" />
							<col style="width:8%" />
							<col style="width:8%" />
							<col style="width:8%" />
							<col style="width:8%" />
						</colgroup>
						<thead>
							<tr>
								<th colspan="2">����</th>
								<th>�� ȸ��</th>
								<th>3��</th>
								<th>4��</th>
								<th>5��</th>
								<th>6��</th>
								<th>7��</th>
								<th>8��</th>
								<th>9��</th>
								<th>10��</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th rowspan="7" class="bg-th">OMEGA <br>& <br>OMEGA <br>link</th>
								<td class="bg-th">����</td>
								<td>15ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>3ȸ</td>
								<td>4ȸ</td>
							</tr>
							<tr>
								<td class="bg-th">����</td>
								<td>19ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>                                  
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>3ȸ</td>
								<td>4ȸ</td>
							</tr>
							<tr>
								<td class="bg-th">����</td>
								<td>15ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>3ȸ</td>
								<td>4ȸ</td>
							</tr>       
							<tr>
								<td class="bg-th">��ȸŽ��</td>
								<td>19ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>    
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>3ȸ</td>
								<td>4ȸ</td>
							</tr>           
							<tr>
								<td class="bg-th">����Ž����</td>
								<td>19ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>    
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>3ȸ</td>
								<td>4ȸ</td>
							</tr> 
							<tr>
								<td class="bg-th">����Ž����</td>
								<td>5ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>3ȸ</td>
								<td>2ȸ</td>
							</tr> 
							<tr>
								<td class="bg-th">�ѱ���</td>
								<td>4ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>1ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>
								<td>1ȸ</td>
							</tr> 
							<tr>
								<th rowspan="3" class="bg-th">OMEGA <br>black</th>
								<td class="bg-th">����</td>
								<td>15ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>3ȸ</td>
								<td>4ȸ</td>
							</tr> 
							<tr>
								<td class="bg-th">��ȸŽ��</td>
								<td>15ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>3ȸ</td>
								<td>4ȸ</td>
							</tr> 
							<tr>
								<td class="bg-th">����Ž����</td>
								<td>15ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>3ȸ</td>
								<td>4ȸ</td>
							</tr>
							<tr>
								<th rowspan="2" class="bg-th">OMEGA <br>blue</th>
								<td class="bg-th">����</td>
								<td>10ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>2ȸ</td>
								<td>2ȸ</td>
								<td>3ȸ</td>
								<td>3ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr>  
							<tr>
								<td class="bg-th">����Ž����</td>
								<td>10ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>2ȸ</td>
								<td>2ȸ</td>
								<td>3ȸ</td>
								<td>3ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr> 
							<tr>
								<th rowspan="6" class="bg-th">OMEGA <br>weekly</th>
								<td class="bg-th">����</td>
								<td>16ȸ</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr>   
							<tr>
								<td class="bg-th">����</td>
								<td>16ȸ</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr> 
							<tr>
								<td class="bg-th">����</td>
								<td>16ȸ</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td>4ȸ</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr>  
							<tr>
								<td class="bg-th">��ȸŽ��</td>
								<td>4��</td>
								<td>1��</td>
								<td>1��</td>
								<td>1��</td>
								<td>1��</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr>
							<tr>
								<td class="bg-th">����Ž����</td>
								<td>4��</td>
								<td>1��</td>
								<td>1��</td>
								<td>1��</td>
								<td>1��</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr> 
							<tr>
								<td class="bg-th">����Ž����</td>
								<td>4��</td>
								<td>1��</td>
								<td>1��</td>
								<td>1��</td>
								<td>1��</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr>                  
						</tbody>
					</table>
					<p class="r-txt">�� ���� ������ �п� � ��Ȳ�� ���� ���� �� ������ �� �ֽ��ϴ�. </p>
				</div>
			</div>
			<!-- //content -->

		</div>
		<!-- //omegaWrap -->
    </div>
	<!-- //container -->
</div>

<script src="./ui.js"></script>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
