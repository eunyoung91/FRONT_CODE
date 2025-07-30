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
<meta name="keywords" content="�ް����͵��п�, ����п�, �Խ�, �������п�, �ް����͵𷯼�, �����п�, ��������п�, �ް����͵�, ����, N��, ���ǰ��, 6������, 9������, ����, ���ް�, ����, ��, �����̹�, 2026����, ��������, ��3, �����, ����" />
<meta name="description" content="�ް����͵��п� ���� �հ��� ���ΰ�, �ް����͵��п� ���� �հ� ���, ���� �п� ���� �հ��� ���ΰ�, ���� �п� ���� �հ� ���"/>
<meta property="og:type" content="website">
<meta property="og:title" content="�ް����͵��п�">
<meta property="og:description" content="�ް����͵��п� ���� �հ��� ���ΰ�, �ް����͵��п� ���� �հ� ���, ���� �п� ���� �հ��� ���ΰ�, ���� �п� ���� �հ� ���">
<meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_star/index.asp">
<meta property="og:site_name" content="�ް����͵��п�">
<%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2025/2025_star/thumb.jpg'>"
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
<link rel="stylesheet" type="text/css" href="web.css"><!-- 2025_premium CSS -->

<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/common/js/gsap.min.js"></script>
<script src="/public/js/TweenMax.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/> 
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>


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
        
		<div id="starWrap" class="star-wrap">

			<!--visual-->
			<div class="visual"> 
				<div class="visual_top">
					<div class="inner">
						<img class="motion m-tit01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit01.png" alt="�ް����͵�� ����� �����մϴ�">
						<img class="motion m-tit02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit02.png" alt="����X�ް����͵��п�">
						<img class="motion m-tit03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit03.png" alt="�����հ��� ���ΰ�">
						<img class="motion m-tit04" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit04.png" alt="title bg">
						<img class="motion m-tit05" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit05.png" alt="������">
						<img class="motion m-tit06" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit06.png" alt="glass">


						<img class="motion m-obj01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_obj01.png" alt="">
						<img class="motion m-obj02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_obj02.png" alt="">
						<img class="motion m-obj03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_obj03.png" alt="Ʈ����">
						<img class="motion m-obj04" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_obj04.png" alt="Ʈ����">
					 
					</div>
				</div>
			</div>
			<!--//visual-->

			<div class="cont01">
				<div class="inner">
					<div class="img_wrap">
						<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con01_tit01.png" alt="���� ������ ���Լ��� STORY">
					</div>

					<!-- slide -->  
					<div class="inner_slider" data-aos="fade-up">
						<ul class="slider center">
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con01_slide01_01.png" alt="" /></li>  
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con01_slide01_02.png" alt="" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/66647106','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con01_slide01_03.png" alt="" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/66648159','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con01_slide01_04.png" alt="" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/24002132','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con01_slide01_05.png" alt="" /></li> 


						</ul> 
					</div>
					<p class="dsc_slide">
						�� 2021~2025�г⵵ ���� ��ä��(��/��/Ž2 ���� �� ��/�� 1���) ���� : ����, �ް����͵��п� ��ü<br>
						�� 2025�г⵵ ���� ������ �� 1���� ��������Ȱ�� �̵��� 
					</p>
					<script type="text/javascript" src="/public/jquery/slick.js"></script>
					<script type="text/javascript">    
						// slide Ȱ��ȭ
						$('.center')
						.on('init', function(event, slick) {
							var currentSlideEl = $('.slick-slide.slick-current');
							var currentImg = currentSlideEl.find('img');
							var src = currentImg.attr('src');

							if (!src.includes('_on')) {
								var ext = src.substring(src.lastIndexOf('.') + 1);
								var base = src.substring(0, src.lastIndexOf('.'));
								currentImg.attr('src', base + '_on.' + ext);
							}
						})
						.on('beforeChange', function(event, slick, currentSlide, nextSlide) {
							var currentSlideEl = $('.slick-slide[data-slick-index="' + currentSlide + '"]');
							var currentImg = currentSlideEl.find('img');
							var src = currentImg.attr('src');

							if (src.includes('_on')) {
								var normalSrc = src.replace('_on', '');
								currentImg.attr('src', normalSrc);
							}
							
						})
						.on('afterChange', function(event, slick, currentSlide) {
							var currentSlideEl = $('.slick-slide[data-slick-index="' + currentSlide + '"]');
							var currentImg = currentSlideEl.find('img');
							var src = currentImg.attr('src');

							if (!src.includes('_on')) {
								var ext = src.substring(src.lastIndexOf('.') + 1);
								var base = src.substring(0, src.lastIndexOf('.'));
								currentImg.attr('src', base + '_on.' + ext);
							}
						});
 
						$('.center').slick({
							autoplay: false,
							infinite: true,
							dots: true, 
							centerMode: true,
							centerPadding: '0',
							slidesToShow: 3,
							slidesToScroll: 1
						});
 
					</script>
 					<!-- slide -->
				</div>
			</div>

			<div class="cont02 cont02_bg01">
				<div class="inner">
					<div class="img_wrap">
						<img data-aos="fade-in" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_tit01.png" alt="����X�ް����͵��п� 5���� �հ� ��Ȳ">
					</div>
					<div class="img_wrap cont02_bg_effect">
						<img data-aos="zoom-in" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_bg_effect.png" alt="">
					</div>


					<div class="img_wrap mt60" style="margin-left:-39px;">
						<img data-aos="fade-up" data-aos-delay="50"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_img01.png" alt="������ �Ǵ�, �Ǿ��а迭">
					</div>
					<div class="img_wrap" style="margin-top:-35px;margin-left:-39px;">
						<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_img02.png" alt="����">
					</div>
					<div class="img_wrap data_alert">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_alert01.png" alt="������ ���� ����">
					</div> 
					<div class="data_alert_wrap">
						<p>
							�� 2021~2025�г⵵ ����X�ް����͵��п� ���� �հ� ��Ȳ<br>
							�� ������ �Ǵ� : �����, ������, ���հ���, ���縯��, ����, �����<br>
							�� �ֿ���� : ������, ���հ���, �Ѿ��, ��ȭ����<br>
							�� Ư������ : DGAIST, GIST, UNIST, POSTECH, ������, ����б�<br>
							�� ��Ÿ �ֿ���� : �߾Ӵ�, �����, �ѱ��ܴ�, ����ø���, �Ǳ���, ������, ȫ�ʹ�, ������<br>
							�� ���� �հ��ڸ� �������� ����Ǹ�, �������� �հ��� ����<br>
							�� UPDATE : 2025-03-11
						</p> 
					</div>
				</div>
			</div>
 
			<div class="cont02_02">
				<div class="data_alarm_wrap02">
					<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_02_img01.png" alt="������ �Ǵ�">
					<div class="data_alert02"> 
						<div class="data_alert_txt">
							<p>
								�� 2021~2025�г⵵ ����X�ް����͵��п� ����� ���� �հ� ���(���� ���� �հ��� ����)<br>
								�� ������ �Ǵ� �հ��� 384��<br>
								�� ������ �Ǵ� : �����, ������(����), ���縯��, ���հ���, ����, �����(�Ⱦ�) 
							</p> 
						</div>
					</div> 
				</div>
				<div class="data_alarm_wrap02 mt60">
					<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_02_img02.png" alt="�ǿ���">
					<div class="data_alert02"> 
						<div class="data_alert_txt">
							<p>
								�� 2021~2025�г⵵ ����X�ް����͵��п� ����� ���� �հ� ���(���� ���� �հ��� ����)<br>
								�� �ǿ���, ���а�, ���к�, �ǰ����� �հ��� 4,030�� 
							</p> 
						</div>
					</div> 
				</div>
				<div class="data_alarm_wrap02 mt60">
					<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_02_img03.png" alt="�Ǿ��а迭">
					<div class="data_alert02"> 
						<div class="data_alert_txt">
							<p>
								�� 2021~2025�г⵵ ����X�ް����͵��п� ����� ���� �հ� ���(���� ���� �հ��� ����)<br>
								�� ��ġ�Ѽ���(���л� ���հ��� ����) �հ��� 7,850�� 
							</p> 
						</div>
					</div> 
				</div>
				<div class="data_alarm_wrap02 mt60">
					<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_02_img04.png" alt="SKY">
					<div class="data_alert02"> 
						<div class="data_alert_txt">
							<p>
								�� 2021~2025�г⵵ ����X�ް����͵��п� ����� ���� �հ� ���(���� ���� �հ��� ����)<br>
								�� �����, ������, ����� �հ��� 5,559�� 
							</p> 
						</div>
					</div> 
				</div>
			</div>

			<div class="cont03">
				<div class="inner">
					<div class="img_wrap">
						<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_tit01.png" alt="�п��� ���� ������� ���Լ��� STORY">
					</div>
					<div class="img_wrap mt60">
						<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_img01.png" alt="����X�ް����͵��п��� �Բ� �մϴ�">
					</div>

					<div class="cont03_sub_tit">�Ǿ��а迭</div>
					<!-- nonstop slide -->
					<div class="swiper star_student mt60">
						<ul class="swiper-wrapper">
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_01.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72655901','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_02.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72645714','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_03.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72832827','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_04.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/75389781','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_05.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72645555','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_06.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72645446','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_07.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72832595','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_08.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72293389','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_09.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72313864','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_10.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/68536539','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 

							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_11.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72296983','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_12.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72235913','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_13.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72295451','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_14.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72377915','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_15.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72604689','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_16.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72374198','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_17.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72372876','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_18.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72905139','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_19.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72853630','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_20.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72231259','popup_vod','width=544,height=306,top=300,left=100');"></a></li>

							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_21.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/73878675','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_22.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72645953','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_23.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72604533','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_24.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/73090623','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_25.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72855787','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_26.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/73110455','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_27.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72645834','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_28.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77340114','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_29.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72605104','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_30.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77464793','popup_vod','width=544,height=306,top=300,left=100');"></a></li>

							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_31.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77526843','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_32.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77533523','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_33.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72853411','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_34.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74494540','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_35.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74220547','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_36.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/75295902','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_37.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77337633','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_38.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77340497','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide01_39.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/72746955','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
						</ul>
					</div> 
					<!-- nonstop slide -->

					<div class="cont03_sub_tit _02">�����</div>
					<!-- nonstop slide -->
					<div class="swiper star_student mt60">
						<ul class="swiper-wrapper">
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_01.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74863464','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_02.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/75297059','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_03.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77340326','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_04.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/75012252','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_05.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74385720','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_06.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/75018575','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_07.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77072084','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_08.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74469360','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_09.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74680805','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_10.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74758816','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 

							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_11.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74848195','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_12.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77340898','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_13.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74498359','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_14.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74385811','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_15.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/75387814','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_16.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74931211','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_17.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/74223506','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_18.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/75216829','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_19.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77460368','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_20.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77249444','popup_vod','width=544,height=306,top=300,left=100');"></a></li> 
							<li class="swiper-slide"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_slide02_21.png" alt="" border="0" /><a href="javascript:void(0);" onclick="window.open('https://tv.naver.com/embed/77249238','popup_vod','width=544,height=306,top=300,left=100');"></a></li>  
						</ul>
					</div>
 
					<script>
						var mySwiper = new Swiper(".star_student", {
						slidesPerView: 3,  
						spaceBetween: 15, // �����̵� ���� ����  
						loop:true,
						centeredSlides: true,
						centeredSlidesBounds: true,
						speed: 2500,
						grabCursor: true, 
						// autoplay: {
						// 	delay: 3000,  
						// 	disableOnInteraction: false  
						// },  
						mousewheel: false, // ���콺 �ٷ� �����̵� �̵� ����
						centeredSlides: true, // �����̵� �߾� ����  
 						slidesPerView: 'auto',
						});

						$('.star_student .swiper-wrapper li').each(function(index) {
							var nowImg = $(this).find('img');   
							var srcName = nowImg.attr('src');   
							var newSrc = srcName.substring(0, srcName.lastIndexOf('.')); 

							// hover
							$(this).hover(function() { 
								$(this).find('img').attr('src', newSrc+ '_on.' + /[^.]+$/.exec(srcName));  
								$(this).parent().css({'height':'500px'});  
								$(this).find('a').css({'bottom':'0px'});
								// $(this).css({'marginTop':'-30px'});
							}, function() {
								$(this).find('img').attr('src', newSrc + '.' + /[^.]+$/.exec(srcName));  
								$(this).css({'marginTop':'0px'}); 
								$(this).find('a').css({'bottom':'40px'});
								// $(this).css({'marginTop':'0px'}); 
							}); 


							});

					</script>

					<!-- nonstop slide -->


				</div>
			</div>



			<div class="cont04 cont04_bg01">
				<div class="img_wrap">
					<img data-aos="fade-in" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con04_txt01.png" alt="�п��� ���� ������� ���Լ��� STORY">
				</div>
				<div class="img_wrap cont04_bg_effect floating">
					<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con04_img01.png" alt="Ʈ����">
				</div>
				<div class="img_wrap cont04_bg_effect02 floating02">
					<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con04_img02.png" alt="��">
				</div>
			</div>

		</div>
    </div>
</div>

<script type="text/javascript">	
	$(function(){
		$(window).on('load', function () {
			pageLoadEvent();
			titleTweenEvent();
			initAOS();

			$('.visual').addClass('on');
		});
	});

    function pageLoadEvent(){
        var temp_s = $("#starWrap").offset().top;
        $('html, body').animate({ scrollTop: temp_s}, 400);
    }

	function titleTweenEvent(){
    var motion1 = new TimelineMax({delay:0.7, repeat:0})
        motion1.to(".motion.m-tit04", 1.2, {opacity:1, ease:Power3.easeOut});
        
    var motion2 = new TimelineMax({delay:0.5, repeat:0})            
		motion2.to(".motion.m-tit01", 0.5, {opacity:1, delay:0.2, ease:Sine.easeInOut});
		motion2.to(".motion.m-tit06", 0.5, {opacity:1, ease:Sine.easeInOut});
        
    var motion3 = new TimelineMax({delay:0.8, repeat:0})            
	 	motion3.to(".motion.m-tit02", 0.7, {opacity:1, delay:0.3, top:240, ease:Power2.easeOut});
         
    var motion4 = new TimelineMax({delay:1.1, repeat:0})            
        motion4.to(".motion.m-tit03", 0.7, {opacity:1, delay:0.3, top:323, ease:Power2.easeOut});

    var motion5 = new TimelineMax({delay:1.3, repeat:0})            
        motion5.to(".motion.m-tit05", 1.3, {opacity:1, delay:0.3, scale: 1, ease:Elastic.easeOut});
       

    var motion6 = new TimelineMax({delay:0.3, repeat:-1, yoyo:true})
        motion6.to(".motion.m-obj01", 1.2, {opacity:1,top: -10, ease:Back.easeOut});
 
    var motion7 = new TimelineMax({delay:0.3, repeat:-1, yoyo:true})
        motion7.to(".motion.m-obj03", 1.2, {opacity:1, top: -10, ease:Sine.easeInOut});
		

	var motion8 = new TimelineMax({delay:0.3, repeat:-1, yoyo:true})
		motion8.to(".motion.m-obj02", 0.8, {opacity:1,top: 400, marginLeft: 140, ease:Sine.easeInOut});

	var motion9 = new TimelineMax({delay:0.7, repeat:-1, yoyo:true})
		motion9.to(".motion.m-obj04", 1.5, {opacity:1, top:555, ease:Sine.easeInOut});
	}


    function initAOS(){
        AOS.init({
            offset: 200,
            duration: 500,
            easing: 'ease-in-sine',
            delay: 0,
            once: true
        });
    }
 
</script>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
