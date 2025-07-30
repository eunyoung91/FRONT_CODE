<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="keywords" content="�ް����͵��п�, �����п�, ����п�, �Խ�, �������п�, �ް����͵𷯼�, �ް����͵�, N��, ����, ����, ���ǰ��, ���� ���ǰ��" />
<meta name="description" content="���ۺ��� Ȯ���ϰ� ���� ������ �Ḧ ���ϴ� ALPHA"/>
<meta property="og:type" content="website">
<meta property="og:title" content="�ް����͵��п�">
<meta property="og:description" content="���ۺ��� Ȯ���ϰ� ���� ������ �Ḧ ���ϴ� ALPHA">
<meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_alpha/index.asp">
<meta property="og:site_name" content="�ް����͵��п�">
<%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2025/2025_alpha/thumb.jpg'>"
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9.1.0/swiper-bundle.min.css">

<link rel="stylesheet" type="text/css" href="web.css"><!-- 2025 omega CSS -->

<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/common/js/gsap.min.js"></script>
<script type="text/javascript" src="/common/js/ScrollTrigger.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/swiper@9.1.0/swiper-bundle.min.js"></script>
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
		<div class="alpha-wrap">
			<!-- VISUAL -->
			<div class="visual-wrap">
			
				<div class="visual">
					<div class="bg-wrap">
						<div class="bg"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_bg.jpg" alt="" /></div>
						<div class="v-planet"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_planet.png" alt="" />
						</div>
						<div class="v-light"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_light.png" alt="" /></div>
					</div>
					<div class="inner">
						<div class="v-circle01"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_circle01.png" alt="" /></div>
						<div class="v-circle02"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_circle02.png" alt="" /></div>
						<div class="v-circle03"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_circle03.png" alt="" /></div>
						<div class="v-circle04"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_circle04.png" alt="" /></div>
						<div class="v-circle05"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_circle05.png" alt="" /></div>
						<div class="v-circle06"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_circle06.png" alt="" /></div>
						<h3>� ���ǰ���� ���ο� ����</h3>
						
						<div class="v-tit">
							<h2><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_tit01.png" alt="���ۺ��� Ȯ���ϰ� ���� ������ ���ĸ� ���ϴ�" /></h2>
							<h1><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/v_tit02.png" alt="ALPHA" /></h1>
						</div>
					</div>
				</div>
			</div>
			<!-- //VISUAL -->
			<!-- CONTENTS -->
			<div class="cont01">
				<h3 data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/cont01_tit.png" alt="2026 ���� ���� ��������� �� �Ϻ��ϰ�! ���ð����� �� Ȯ���ϰ�! �ι�/�ڿ� ������� �����ϴ� ��������� ������ �н� ������ ���� �����ϰ� ����ȭ�� ������ ������ 2WAY ������ �" /></h3>
				<div data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/cont01_img.jpg" alt="" /></div>
			</div>
			<div class="cont02">
				<h3 data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/cont02_tit.png" alt="ALPHA ���ǰ���� ���߷��� ����� 2025 ���� ���п����� �Ϻ��ϰ� �����Ͽ����ϴ�! 2024-2025�г⵵ ���� ���� 40�� ����" /></h3>
				<div class="inner">
					<div data-aos="fade-up" class="swiper-container paper-slide">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/page01.jpg" alt="" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/page02.jpg" alt="" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/page03.jpg" alt="" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/page04.jpg" alt="" /></div>
							</div>
							<div class="swiper-slide">
								<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/page05.jpg" alt="" /></div>
							</div>
						</div>
						<div class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>
					</div>
					<h4><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/cont02_stit.png" alt="ALPHA ���ǰ�� ����� �ı�" /></h4>
					<ul class="review-wrap">
						<li data-aos="fade-right"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/bubble01.jpg" alt="" /></li>
						<li data-aos="fade-left"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/bubble02.jpg" alt="" /></li>
						<li data-aos="fade-right"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/bubble03.jpg" alt="" /></li>
						<li data-aos="fade-left"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/bubble04.jpg" alt="" /></li>
						<li data-aos="fade-right"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/bubble05.jpg" alt="" /></li>
						<li data-aos="fade-left"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/bubble06.jpg" alt="" /></li>
						<li data-aos="fade-right"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/bubble07.jpg" alt="" /></li>
					</ul>
					<p class="r-txt">*2024�� ALPHA ���ǰ��(� ���ǰ��)�� ���� ������ �� �ް����͵��п� ������� �ۼ��� �ı� ����</p>
				</div>
			</div>
			<div class="cont03">
				<h3 data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/cont03_tit.png" alt="������ �� �־��� ����, ALPHA ���ǰ��� ���� �������� ������ ��￩ ���� �����Դϴ�" /></h3>
				<div class="blend-img" data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/cont03_img.png" alt="" /></div>
			</div>
			<div class="cont04">
				<h3 data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/cont04_tit.png" alt="2026 ���� ���� ������ ���ؼ���
					źź�� ������ �ʿ��մϴ�" /></h3>
				<div data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/cont04_img01.jpg" alt="" /></div>
				<div data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_alpha/cont04_img02.jpg" alt="" /></div>
			</div>
			<!-- //CONTENTS -->
		</div>	
    </div>
	<!-- //container -->
</div>

<script src="./ui.js"></script>
<script>
	//aos fadeup ȿ��
	 AOS.init({
		offset: 300,
		duration: 500,
		easing: 'ease-in-sine',
		delay: 0,
		once: true
	});
	</script>
<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
