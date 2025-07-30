<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="keywords" content="메가스터디, 메가스터디학원, 대입, 입시, 수능, 수준별, 맞춤, 학습, 수준별 맞춤합격시스템, 수준별 맞춤 학습, 콘텐츠, 수준별 맞춤 학습 콘텐츠, 대입성공, 커리큘럼" />
<meta name="description" content="대입성공의 모든 공식, 본사 직영, 서울/경기재수학원, 입시/수능전문, 수준별 맞춤합격시스템, 팀플장학혜택"/>
<meta property="og:type" content="website">
<meta property="og:title" content="메가스터디학원">
<meta property="og:description" content="대입성공의 모든 공식, 본사 직영, 서울/경기재수학원, 입시/수능전문, 수준별 맞춤합격시스템, 팀플장학혜택">
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

	<!-- container -->
    <div id="container" style="padding-bottom:0px !important;">
        <!-- customContents -->
		<div id="customWrap" class="custom-wrap">

			<!-- visual -->
			 <div class="motion-wrap">
				<div class="circle">
					<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_circle_1.png" alt="대입성공을 위한 가장 완벽한 컨텐츠" /></p>
					<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_circle_2.png" alt="대입성공을 위한 가장 완벽한 컨텐츠" /></p>
					<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_circle_3.png" alt="대입성공을 위한 가장 완벽한 컨텐츠" /></p>
				</div>
				<div class="visual-wrap">
					<div class="typo">
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_text_1.png" alt="대입성공을 위한 가장 완벽한 컨텐츠" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_text_2.png" alt="수준별 맞춤 학습 콘텐츠" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_text_3_bg.png" alt="customized contents" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_text_3.png" alt="customized contents" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_text_4.png" alt="수준별 콘텐츠로 수능 자신감을 확실하게 높이다" /></p>
					</div>
					<div class="cube">
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_cube_1.jpg" alt="대입성공을 위한 가장 완벽한 컨텐츠" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_cube_2.jpg" alt="대입성공을 위한 가장 완벽한 컨텐츠" /></p>
						<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/visual_cube_3.jpg" alt="대입성공을 위한 가장 완벽한 컨텐츠" /></p>
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
								<a class="on" href="javascript:void(0);">수능 SCALE</a>
								<a href="javascript:void(0);">월간 SCALE</a>
								<a href="javascript:void(0);">수능 SPHERE</a>
							</div>
						</div>
					</nav>

					<div class="inner">
						<div class="title-set" data-aos="fade-up">
							<div class="number">1</div>
							<div class="text">
								<span>
									실력을 완성하는 체계적 학습의 힘
								</span>
								<strong>
									수능 SCALE
								</strong>
								<ul>
									<li>· 국어/수학/영어 3개 과목, 10개 세부영역으로 구성</li>
									<li>· 수준별 맞춤 학습, 시즌별 맞춤 강의 분량으로 <em>수업 최적화</em></li>
									<li>· 개념 학습부터 고난도 실전 기출까지 단계별 구성으로 <em>학습 효과 극대화</em></li>
								</ul>
							</div>
						</div>

						<div class="table-title">과목별 Level 편성</div>
						<div class="table-set">
							<div class="set-1">
								<p class="caption">&middot; 국어</p>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="33.333%" span="3">
									</colgroup>
									<tbody>
										<tr>
											<th>문학, 독서 </ㅅ>
											<th>언어와매체 </th>
											<th>화법과작문 </th>
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
								<p class="caption">&middot; 수학</p>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="25%" span="4">
									</colgroup>
									<tbody>
										<tr>
											<th>수학Ⅰ, Ⅱ </th>
											<th>미적분 </th>
											<th>확률과통계 </th>
											<th>기하 </th>
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
								<p class="caption">&middot; 영어</p>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<tbody>
										<tr>
											<th>독해 </th>
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
						
						<div class="table-title">과목별 상세 내용</div>
						<div>
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont03_img_01.png" alt="수능 SCALE 국어" />
						</div>
						<div class="mt40">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont03_img_02.png" alt="수능 SCALE 수학" />
						</div>
						<div class="mt40">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont03_img_03.png" alt="수능 SCALE 영어" />
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
									스스로 완성하는 체계적 학습의 힘
								</span>
								<strong>
									월간 SCALE
								</strong>
								<ul>
									<li>· 국어/수학 2개 과목. 체계적인 연간 학습이 가능한 <em>월별 특화 교재</em></li>
									<li>· 하루 30분 학습이 가능한 요일별 내용 구성으로 <em>스스로 학습 계획 수립</em></li>
									<li>· 시기별, 개념 학습부터 고난도 실전 기출까지 <em>빈틈없는 수능 대비</em></li>
								</ul>
							</div>
						</div>

						<div class="hash-set">
							<span class="round"></span>
							<div>#1. 국어 영역</div>
						</div>

						<div class="mt80">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont04_img_01.png" alt="" />
						</div>

						<div class="table-title mt80">월간 SCALE 학습 내용</div>						
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="8%;">
								<col width="42%;">
								<col width="8%;">
								<col width="42%;">
							</colgroup>
							<thead>
								<tr>
									<th>월</th>
									<th>주요 내용</th>
									<th>월</th>
									<th>주요 내용</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="bg_f4">3월 </td>
									<td>수능특강 연계 기출 학습 </td>
									<td class="bg_f4">6월 </td>
									<td>수능특강 연계 기출 학습 + 수능특강 현대 작품 분석 </td>
								</tr>
								<tr>
									<td class="bg_f4">4월 </td>
									<td>수능특강 연계 기출 학습 + 수능특강 고전 작품 분석 </td>
									<td class="bg_f4">7월 </td>
									<td>수능완성 연계 기출 학습 </td>
								</tr>
								<tr>
									<td class="bg_f4">5월 </td>
									<td>[6월 모평대비] 수능특강 연계 실전 학습 </td>
									<td class="bg_f4">8월 </td>
									<td>[9월 모평대비] 수능특강, 수능완성 연계 기출 학습 + 수능완성 작품 분석 </td>
								</tr>
								<tr>
									<td class="bg_f4" colspan="4">평가원 / 교육청 모의고사 연계 기출 문항 연습 </td>
								</tr>
							</tbody>
						</table>

						<div class="table-title mt80">월간 SCALE 예시</div>

						<p class="caption">&middot; 기본 구성</p>

						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="15%;">
								<col width="35%;">
								<col width="15%;">
								<col width="35%;">
							</colgroup>
							<tbody>
								<tr>
									<th>기본 구성</th>
									<td colspan="3">EBS 수능특강 수록 작품과 제재 등을 연계한 교육청 기출 학습 + 연계 작품 완전 분석</td>
								</tr>
								<tr>
									<th>문항 난이도 </th>
									<td>필수 난이도 </td>
									<th>총 문항 수 </th>
									<td>250문항 </td>
								</tr>
							</tbody>
						</table>

						<p class="caption">&middot; 월간 학습 예시</p>
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
									<th class="bg_ed">부록 코너</th>
									<th>DAY 06</th>
								</tr>
								<tr>
									<td>EBS 연계 기출<br>(문학 1세트,<br>독서 1세트) </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td class="fb">수능특강<br>작품 분석 </td>
									<td>선택 과목<br>1세트 기출 </td>
								</tr>
								<tr>
									<th>DAY 07 </th>
									<th>DAY 08 </th>
									<th>DAY 09 </th>
									<th>DAY 10 </th>
									<th>DAY 11 </th>
									<th class="bg_ed">부록 코너 </th>
									<th>DAY 12 </th>
								</tr>
								<tr>
									<td>EBS 연계 기출<br>(문학 1세트,<br>독서 1세트) </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td class="fb">수능특강<br>작품 분석 </td>
									<td>선택 과목<br>1세트 기출 </td>
								</tr>
								<tr>
									<th>DAY 13 </th>
									<th>DAY 14 </th>
									<th>DAY 15 </th>
									<th>DAY 16 </th>
									<th>DAY 17 </th>
									<th class="bg_ed">부록 코너 </th>
									<th>DAY 18 </th>
								</tr>
								<tr>
									<td>EBS 연계 기출<br>(문학 1세트,<br>독서 1세트) </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td class="fb">수능특강<br>작품 분석 </td>
									<td>선택 과목<br>1세트 기출 </td>
								</tr>
								<tr>
									<th>DAY 19 </th>
									<th>DAY 20 </th>
									<th>DAY 21 </th>
									<th>DAY 22 </th>
									<th>DAY 23 </th>
									<th class="bg_ed">부록 코너 </th>
									<th>DAY 24 </th>
								</tr>
								<tr>
									<td>EBS 연계 기출<br>(문학 1세트,<br>독서 1세트) </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td>문학 1세트,<br>독서 1세트 기출 </td>
									<td class="fb">수능특강<br>작품 분석 </td>
									<td>선택 과목<br>1세트 기출 </td>
								</tr>
							</tbody>
						</table>

						<div class="hash-set">
							<span class="round green"></span>
							<div>#2. 수학 영역</div>
						</div>

						<div class="mt80">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont04_img_02.png" alt="" />
						</div>

						<div class="table-title">월간 SCALE 학습 내용</div>						
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="8%;">
								<col width="42%;">
								<col width="8%;">
								<col width="42%;">
							</colgroup>
							<thead>
								<tr>
									<th>월</th>
									<th>주요 내용</th>
									<th>월</th>
									<th>주요 내용</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="bg_f4">3월 </td>
									<td>개념 완성하기 - 기본 3점 문항</td>
									<td class="bg_f4">6월 </td>
									<td>4점 대비 드릴 연습(상) - 쉬운 4점, 기본 4점 문항
									</td>
								</tr>
								<tr>
									<td class="bg_f4">4월 </td>
									<td>빈출 유형 확인하기 - 어려운 3점, 쉬운 4점 문항</td>
									<td class="bg_f4">7월 </td>
									<td>고난이도 문항 대비하기 - 어려운 4점 문항</td>
								</tr>
								<tr>
									<td class="bg_f4">5월 </td>
									<td>4점 대비 드릴 연습(상) - 쉬운 4점, 기본 4점 문항</td>
									<td class="bg_f4">8월 </td>
									<td>등급을 바꾸는 문항 대비하기 - 어려운 4점 문항</td>
								</tr>
								<tr>
									<td class="bg_f4" colspan="4">평가원 / 교육청 모의고사 연계 기출 문항 연습 </td>
								</tr>
							</tbody>
						</table>

						<div class="table-title">월간 SCALE 예시</div>
						<p class="caption">&middot; 기본 구성</p>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="20%;">
								<col width="30%;">
								<col width="20%;">
								<col width="30%;">
							</colgroup>
							<tbody>
								<tr>
									<th>기본 구성</th>
									<td colspan="3">수능 간접 연계 공식 정리와 대단원별 개념 정리, 기출+예상 문항, 미니 모의고사</ㅅ>
								</tr>
								<tr>
									<th>문항 난이도 </th>
									<td>기본 3점 / 쉬운 4점 / 어려운 4점 문항 </td>
									<th>총 문항 수 </th>
									<td>328문항 (1일 10문항 + 모의) </td>
								</tr>
							</tbody>
						</table>

						<p class="caption">&middot; 월간 학습 예시</p>
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
									<td>수학Ⅰ 1단원<br>개념 및 기출 </td>
									<td>수학Ⅰ 1단원<br>예상 문제 </td>
									<td>수학Ⅰ 2단원<br>개념 및 기출 </td>
									<td>수학Ⅰ 2단원<br>예상 문제 </td>
									<td>수학Ⅰ 3단원<br>개념 및 기출 </td>
									<td>수학Ⅰ 3단원<br>예상 문제 </td>
									<td>수학Ⅱ 1단원<br>개념 및 기출 </td>
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
									<td>수학Ⅱ 1단원<br>예상 문제 </td>
									<td>수학Ⅱ 2단원<br>개념 및 기출 </td>
									<td>수학Ⅱ 2단원<br>예상 문제 </td>
									<td>수학Ⅱ 3단원<br>개념 및 기출 </td>
									<td>수학Ⅱ 3단원<br>예상 문제 </td>
									<td>선택 과목 1단원<br>개념 및 기출 </td>
									<td>선택 과목 1단원<br>예상 문제 </td>
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
									<td>선택 과목 2단원<br>개념 및 기출 </td>
									<td>선택 과목 2단원<br>예상 문제 </td>
									<td>선택 과목 3단원<br>개념 및 기출 </td>
									<td>선택 과목 3단원<br>예상 문제 </td>
									<td>미니 모의고사 1회 </td>
									<td>미니 모의고사 2회 </td>
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
									무한히 확장하는 수능 잠재력
								</span>
								<strong>
									수능 SPHERE
								</strong>
								<ul>
									<li>· 수학/영어 2개 과목. 매주 체계적인 학습으로 <em> 실전 적용 향상</em></li>
									<li>· 단계별 학습과정을 통해 테마별 개념 정리, 기출 분석으로  <em>철저한 실전 대비</em></li>
									<li>· 시기별, 개념 학습부터 고난도 실전 기출까지  <em>빈틈없는 수능 대비</em></li>
								</ul>
							</div>
						</div>

						<div class="hash-set">
							<span class="round mint"></span>
							<div>#1. 수학 영역</div>
						</div>
						<div class="mt80">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont05_img_01.png" alt="" />
						</div>

						<p class="caption mt80">&middot; 기본 구성 : 단계</p>
						<div>
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont05_img_02.png" alt="" />
						</div>	
						<p class="notice">
							※ 매주 스페셜 테마 선정!
						</p>

						<p class="caption mt50">&middot; 기본 구성 : 과목</p>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="16.666%" span="6">
							</colgroup>
							<thead>
								<tr>
									<th>수학Ⅰ</th>
									<th>수학Ⅱ</th>
									<th>미적분</th>
									<th>기하</th>
									<th>확률과통계</th>
									<th>비고</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5주 </td>
									<td>5주 </td>
									<td>4주 </td>
									<td>4주 </td>
									<td>4주 </td>
									<td>공통 10주 + 선택 4주 </td>
								</tr>
							</tbody>
						</table>

						<p class="caption mt50">&middot; 상세 내용</p>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<colgroup>
								<col width="16.666%" span="6">
							</colgroup>
							<thead>
								<tr>
									<th colspan="2">테마 SKETCH</th>
									<th>개념 SPHERE</th>
									<th>기출 SPHERE </th>
									<th>실전 SPHERE</th>
									<th>SUMMARY</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>테마별 개념 설명 </td>
									<td>테마별 개념 학습 <br>내용 요약 </td>
									<td>테마별 개념 학습 및 <br>문제풀이 </td>
									<td>실제 기출 풀이로<br>개념 학습 확인 및<br>실전 적용 향상 </td>
									<td>기출 및 최신 트렌드 <br>반영한 콘텐츠로 <br>실전 연습 </td>
									<td>필수 개념 &amp; <br>SPHERE Key<br>요약 정리 </td>
								</tr>
							</tbody>
						</table>

						<div class="hash-set">
							<span class="round purple"></span>
							<div>#2. 영어 영역</div>
						</div>
						<div class="mt80">
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_custom_contents/cont05_img_03.png" alt="" />
						</div>

						<div class="table-title">어법</div>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<thead>
								<tr>
									<th>구분</th>
									<th>STEP 1</th>
									<th>STEP 2</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="bg_f4">기출 유형 학습 </td>
									<td class="vatop lh18 pd28">
										<em>빈출 어법 개념 학습</em><br>
										&middot; 빈출 어법 개념 학습<br>
										&middot; 개념 확인 문제 풀이<br> 
										&middot; 어법 기출 문제 풀이 <br> 
										※ 빈출 어법 개념 8단원 구성  <br> 
										(문장의 구조 파악/주어와 동사의 수 일치/형용사와 부사/대명사/<br>
										분사와 분사구문/관계사/접속사/병렬구조와 특수구문)  
									</td>
									<td class="vatop lh18 pd28">
										<em>어법 실전 연습</em><br>
										&middot; 어법 종합 개념 기출 문항 구성  <br> 
										&middot; 10개년 수능&amp;평가원 모의고사 기출 문항 구성<br> 
										&middot; 기출 유형 분석 및 전체 난이도 필수 문항 실전 연습  
									</td>
								</tr>
							</tbody>
						</table>

						
						<div class="table-title">듣기</div>
						<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
							<thead>
								<tr>
									<th>구분</th>
									<th>STEP 1</th>
									<th>STEP 2</th>
									<th>STEP 3</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="bg_f4">고난도 실전 연습 </td>
									<td class="vatop lh18 pd28">
										<em>고난도 유형 집중 연습</em><br>
										&middot; 고난도 유형을 말하기, 담화문, <br>  세부 정보 세가지로 분류<br>
										&middot; 문제 풀이를 위한 시간 간격 여유 있게!<br>
										&middot; 한 번 더 풀 수 있는 Dictation 구성 
									</td>
									<td class="vatop lh18 pd28">
										<em>듣기 실전 연습</em><br>
										&middot; 17문항 듣기 실전 연습(기출 문제) <br>
										&middot; 실전 감각을 기를 수 있도록 Step1 보다 <br>  짧은 문제 풀이 시간 간격으로 연습 <br>
										&middot; 한 번 더 풀 수 있는 Dictation 구성<br>  
									</td>
									<td class="vatop lh18 pd28">
										<em>듣기 Final</em><br>
										&middot; 수능과 유사한 난이도 연습(예상 문제)<br>
										&middot; 문제 풀이 시간 간격을 수능과 <br>  유사하거나 약간 짧게 연습<br>
										&middot; 최대한 수능과 같은 조건으로 <br>  듣기 연습하도록 설정 
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
