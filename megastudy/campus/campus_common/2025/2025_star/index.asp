<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="author" content="메가스터디학원" />
<meta name="keywords" content="메가스터디학원, 재수학원, 입시, 재수기숙학원, 메가스터디러셀, 러셀학원, 러셀기숙학원, 메가스터디, 대입, N수, 모의고사, 6월모평, 9월모평, 수능, 오메가, 더프, 퀄, 서바이벌, 2026대입, 대입전략, 고3, 수험생, 전국" />
<meta name="description" content="메가스터디학원 대입 합격의 주인공, 메가스터디학원 대입 합격 결과, 러셀 학원 대입 합격의 주인공, 러셀 학원 대입 합격 결과"/>
<meta property="og:type" content="website">
<meta property="og:title" content="메가스터디학원">
<meta property="og:description" content="메가스터디학원 대입 합격의 주인공, 메가스터디학원 대입 합격 결과, 러셀 학원 대입 합격의 주인공, 러셀 학원 대입 합격 결과">
<meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_star/index.asp">
<meta property="og:site_name" content="메가스터디학원">
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
    <!--  최상단메뉴//--> 
    <!--#include virtual="/library/include/common/top.asp" --> 
    <!--  //최상단메뉴-->
    
    <div id="header" class="<%=GetCampusColorType()%>"> 
        
        <!--상단 학원로고 및 선택 탭//  --> 
        <!--#include virtual="/library/include/common/top_campus_tab.asp" --> 
        <!-- //상단 학원로고 및 선택 탭 --> 
        
        <!--  상단 대메뉴//--> 
        <!--#include virtual="/library/include/common/top_campus_detail_menu.asp" --> 
        <!-- //상단 대메뉴 --> 
        
    </div>
    <!-- // header -->
    <div id="container">
        
		<div id="starWrap" class="star-wrap">

			<!--visual-->
			<div class="visual"> 
				<div class="visual_top">
					<div class="inner">
						<img class="motion m-tit01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit01.png" alt="메가스터디는 결과로 증명합니다">
						<img class="motion m-tit02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit02.png" alt="러셀X메가스터디학원">
						<img class="motion m-tit03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit03.png" alt="대입합격의 주인공">
						<img class="motion m-tit04" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit04.png" alt="title bg">
						<img class="motion m-tit05" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit05.png" alt="빵빠레">
						<img class="motion m-tit06" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_tit06.png" alt="glass">


						<img class="motion m-obj01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_obj01.png" alt="">
						<img class="motion m-obj02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_obj02.png" alt="">
						<img class="motion m-obj03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_obj03.png" alt="트로피">
						<img class="motion m-obj04" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/v_obj04.png" alt="트로피">
					 
					</div>
				</div>
			</div>
			<!--//visual-->

			<div class="cont01">
				<div class="inner">
					<div class="img_wrap">
						<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con01_tit01.png" alt="수능 만점자 대입성공 STORY">
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
						※ 2021~2025학년도 수능 실채점(국/수/탐2 만점 및 영/한 1등급) 기준 : 러셀, 메가스터디학원 전체<br>
						※ 2025학년도 수능 만점자 중 1명은 개인정보활용 미동의 
					</p>
					<script type="text/javascript" src="/public/jquery/slick.js"></script>
					<script type="text/javascript">    
						// slide 활성화
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
						<img data-aos="fade-in" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_tit01.png" alt="러셀X메가스터디학원 5개년 합격 현황">
					</div>
					<div class="img_wrap cont02_bg_effect">
						<img data-aos="zoom-in" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_bg_effect.png" alt="">
					</div>


					<div class="img_wrap mt60" style="margin-left:-39px;">
						<img data-aos="fade-up" data-aos-delay="50"  src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_img01.png" alt="메이저 의대, 의약학계열">
					</div>
					<div class="img_wrap" style="margin-top:-35px;margin-left:-39px;">
						<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_img02.png" alt="대학">
					</div>
					<div class="img_wrap data_alert">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_alert01.png" alt="데이터 산출 기준">
					</div> 
					<div class="data_alert_wrap">
						<p>
							※ 2021~2025학년도 러셀X메가스터디학원 대입 합격 현황<br>
							※ 메이저 의대 : 서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대<br>
							※ 주요대학 : 서강대, 성균관대, 한양대, 이화여대<br>
							※ 특수대학 : DGAIST, GIST, UNIST, POSTECH, 경찰대, 사관학교<br>
							※ 기타 주요대학 : 중앙대, 경희대, 한국외대, 서울시립대, 건국대, 동국대, 홍익대, 숙명여대<br>
							※ 최종 합격자를 기준으로 집계되며, 복수대학 합격자 포함<br>
							※ UPDATE : 2025-03-11
						</p> 
					</div>
				</div>
			</div>
 
			<div class="cont02_02">
				<div class="data_alarm_wrap02">
					<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_02_img01.png" alt="메이저 의대">
					<div class="data_alert02"> 
						<div class="data_alert_txt">
							<p>
								※ 2021~2025학년도 러셀X메가스터디학원 재원생 대입 합격 결과(복수 대학 합격자 포함)<br>
								※ 메이저 의대 합격자 384명<br>
								※ 메이저 의대 : 서울대, 연세대(서울), 가톨릭대, 성균관대, 울산대, 고려대(안암) 
							</p> 
						</div>
					</div> 
				</div>
				<div class="data_alarm_wrap02 mt60">
					<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_02_img02.png" alt="의예과">
					<div class="data_alert02"> 
						<div class="data_alert_txt">
							<p>
								※ 2021~2025학년도 러셀X메가스터디학원 재원생 대입 합격 결과(복수 대학 합격자 포함)<br>
								※ 의예과, 의학과, 의학부, 의과대학 합격자 4,030명 
							</p> 
						</div>
					</div> 
				</div>
				<div class="data_alarm_wrap02 mt60">
					<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_02_img03.png" alt="의약학계열">
					<div class="data_alert02"> 
						<div class="data_alert_txt">
							<p>
								※ 2021~2025학년도 러셀X메가스터디학원 재원생 대입 합격 결과(복수 대학 합격자 포함)<br>
								※ 의치한수약(석학사 통합과정 포함) 합격자 7,850명 
							</p> 
						</div>
					</div> 
				</div>
				<div class="data_alarm_wrap02 mt60">
					<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con02_02_img04.png" alt="SKY">
					<div class="data_alert02"> 
						<div class="data_alert_txt">
							<p>
								※ 2021~2025학년도 러셀X메가스터디학원 재원생 대입 합격 결과(복수 대학 합격자 포함)<br>
								※ 서울대, 연세대, 고려대 합격자 5,559명 
							</p> 
						</div>
					</div> 
				</div>
			</div>

			<div class="cont03">
				<div class="inner">
					<div class="img_wrap">
						<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_tit01.png" alt="학원을 빛낸 선배들의 대입성공 STORY">
					</div>
					<div class="img_wrap mt60">
						<img data-aos="fade-up" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con03_img01.png" alt="러셀X메가스터디학원이 함께 합니다">
					</div>

					<div class="cont03_sub_tit">의약학계열</div>
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

					<div class="cont03_sub_tit _02">서울대</div>
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
						spaceBetween: 15, // 슬라이드 간의 간격  
						loop:true,
						centeredSlides: true,
						centeredSlidesBounds: true,
						speed: 2500,
						grabCursor: true, 
						// autoplay: {
						// 	delay: 3000,  
						// 	disableOnInteraction: false  
						// },  
						mousewheel: false, // 마우스 휠로 슬라이드 이동 가능
						centeredSlides: true, // 슬라이드 중앙 정렬  
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
					<img data-aos="fade-in" src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con04_txt01.png" alt="학원을 빛낸 선배들의 대입성공 STORY">
				</div>
				<div class="img_wrap cont04_bg_effect floating">
					<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con04_img01.png" alt="트로피">
				</div>
				<div class="img_wrap cont04_bg_effect02 floating02">
					<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_star/con04_img02.png" alt="원">
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
