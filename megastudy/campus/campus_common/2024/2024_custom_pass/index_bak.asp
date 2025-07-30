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
<!-- intro전용 css -->
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
        <div id="div_cont">

            <div id="div_full" class="div_con taL">
				<div class="top_visual">
					<div class="top_wrap" style="background:#051831 url('<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_title_bg.jpg') center top no-repeat;">
						<div class="con">
							<div class="act_wrap">
								<img class="act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_title01.png" alt="성적 상승, 대입성공의 핵심 공식" />
								<img class="act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_title02.png" alt="수준별 맞춤합격시스템" />
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
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="100"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img01.png" alt="수준별 맞춤 학습" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="400"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img02.png" alt="맞춤 시간표 설계" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="500"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img03.png" alt="메가패스 100% 무료 혜택" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="200"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img04.png" alt="메가스터디 학원은 다르다!" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="500"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img05.png" alt="테마·심화 수업" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="300"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img06.png" alt="진짜 수준별 수업이란 이런 것!" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="700"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img07.png" alt="입시 전문 담임" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="300"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img08.png" alt="수준별 맞춤 모의고사" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="600"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img09.png" alt="수준별 맞춤 콘텐츠" /></li>
								<li data-aos="fade" data-aos-easing="ease-in-out-sine" data-aos-delay="400"><img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_puzzle_img10.png" alt="우수 강사진" /></li>
							</ul>
							<img class="mt30" data-aos="fade-up" data-aos-easing="ease-in-out-sine" data-aos-delay="0" src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/top_bubble.png" alt="메가스터디학원이라 가능한 수준이 다른 수준별 맞춤합격시스템!" />
						</div>
					</div>
				</div>
                <div class="fix_menu_wrap">
                    <ul class="fix_menu">
                        <li class="on"><span>수준별 맞춤 학습</span></li>
                        <li><span>테마&middot;심화 수업</span></li> 
                        <li><span>수준별 맞춤 콘텐츠</span></li>
                        <li><span>우수 강사진</span></li>
                        <li><span>입시 전문 담임</span></li>
                        <li><span>메가패스 100%</span></li>
                    </ul>
                </div>

				<!-- 01 수준별 맞춤 학습 -->
				<div class="fix_contents on content1">
					<div class="con_wrap">
						<div class="div_con1">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con01_title01.png" alt="수준별 맞춤 학습" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con01_img01.png" alt="측정-분석-진단-학습-피드백" />
							</div>
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con01_title02.png" alt="수준별 수업 구성" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con01_img02.png" alt="수능 성적 or 진단 TEST를 통한 개인별 레벨 설정" />
							</div>
						</div>

						<div class="div_con2" style="background:#E3F3FF;">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con02_title01.png" alt="All Yours 맞춤 시간표 설계" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con02_img01.png" alt="시간표" />
							</div>
						</div>
					</div>

				<!-- 02 테마·심화 수업 -->
	            <div class="fix_contents content2">
	                <div class="con_wrap">
						<div class="div_con1">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con03_title01.png" alt="테마·심화 수업 무제한 수강" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_custom_pass/con03_sub_title01.png" alt="과목별 테마·심화 수업 예시 " />
							</div>
							<div class="slider_wrap tb_wrap">
								<div class="slider tb_slider">
									<div>
										<h4 class="tb_bg_tit mt60">국어</h4>
										<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
											<colgroup>
												<col width="13%">
												<col width="37%">
												<col width="13%">
												<col width="37%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">구분</th>
													<th scope="col">커리큘럼</th>
													<th scope="col">구분</th>
													<th scope="col">커리큘럼</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th rowspan="10" class="brR">문학</th>
													<td>문학 개념어 정리</td>
													<th rowspan="10" class="brR">독서</th>
													<td>독서 지문 독해법 기초 - 문장 및 문단 읽기</td>
												</tr>
												<tr>
													<td>문학 작품 감상법 기초</td>
													<td>독서 지문 독해법 기초 - 글의 구조 파악하기</td>
												</tr>
												<tr>
													<td>'고전시가' 수능 필수 작품 해석</td>
													<td>'경제학' 필수 배경지식 습득 및 독해 훈련</td>
												</tr>
												<tr>
													<td>'고전소설' 수능 필수 작품 해석</td>
													<td>'법학' 필수 배경지식 습득 및 독해 훈련</td>
												</tr>
												<tr>
													<td>'현대시' 낯선 작품 감상 훈련</td>
													<td>'생명과학' 필수 배경지식 습득 및 독해 훈련</td>
												</tr>
												<tr>
													<td>'현대소설' 낯선 작품 감상 훈련</td>
													<td>'물리/화학/기술' 필수 배경지식 습득<br>및 독해 훈련</td>
												</tr>
												<tr>
													<td>'수필/희곡/시나리오' 낯선 작품 감상 훈련</td>
													<td>'철학' 필수 배경지식 습득 및 독해 훈련</td>
												</tr>
												<tr>
													<td>표현상/서술상 특징 문항 집중 훈련</td>
													<td>이유 추론 및 비판 문항 집중 훈련</td>
												</tr>
												<tr>
													<td>&lt;보기&gt; 문항 집중 훈련</td>
													<td>&lt;보기&gt; 문항 집중 훈련</td>
												</tr>
												<tr>
													<td>고난도 갈래 복합 지문 집중 훈련</td>
													<td>고난도 LEET 지문 독해 훈련</td>
												</tr>
												<tr>
													<th rowspan="6" class="brR">언어와매체</th>
													<td>지문형 문법 문제 집중 훈련</td>
													<th rowspan="6" class="brR">화법과작문</th>
													<td>화법과작문 [3점] 유형 집중 훈련</td>
												</tr>
												<tr>
													<td>고난도 테마 집중 훈련 - 단어</td>
													<td rowspan="3">화법과작문 융합 지문 집중 훈련</td>
												</tr>
												<tr>
													<td>고난도 테마 집중 훈련 - 문장</td>
												</tr>
												<tr>
													<td>고난도 테마 집중 훈련 - 음운/규범/중세국어</td>
												</tr>
												<tr>
													<td>매체 출제 유형 집중 정리</td>
													<td rowspan="2">화법과작문 클리닉 수업</td>
												</tr>
												<tr>
													<td>언어와매체 클리닉 수업</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<h4 class="tb_bg_tit mt60">수학</h4>
										<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
											<colgroup>
												<col width="13%">
												<col width="37%">
												<col width="13%">
												<col width="37%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">구분</th>
													<th scope="col">커리큘럼</th>
													<th scope="col">구분</th>
													<th scope="col">커리큘럼</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th rowspan="15" class="brR">수학Ⅰ</th>
													<td>거듭제곱근의 이해</td>
													<th rowspan="15" class="brR">수학Ⅱ</th>
													<td>함수의 극한과 다항식의 결정</td>
												</tr>
												<tr>
													<td>지수와 로그가 자연수일 조건</td>
													<td>연속의 정의와 여러가지 함수의 연속성</td>
												</tr>
												<tr>
													<td>지수로그함수 그래프의 평행이동과 대칭이동</td>
													<td>미분계수의 정의와 표현, 미분가능성</td>
												</tr>
												<tr>
													<td>지수로그함수의 그래프와 방부등식의 활용</td>
													<td>다항함수의 비율관계와 접선의 성질,<br>거리곱의 활용</td>
												</tr>
												<tr>
													<td>지수로그함수의 그래프와 기하적 해석</td>
													<td>삼차함수와 사차함수의 증감, 극대극소, 미분가능성</td>
												</tr>
												<tr>
													<td>삼각함수의 정의와 성질</td>
													<td>방정식, 부등식과 미분의 활용</td>
												</tr>
												<tr>
													<td>삼각함수 그래프의 특징<br>(주기, 최대, 최소, 비율관계)</td>
													<td>도함수를 활용한 함수의 추론</td>
												</tr>
												<tr>
													<td>삼각함수 그래프의 기하적 해석</td>
													<td>부정적분과 정적분의 계산</td>
												</tr>
												<tr>
													<td>삼각함수 그래프와 삼각방정식의 활용</td>
													<td rowspan="2">정적분으로 정의된 함수의 해석</td>
												</tr>
												<tr>
													<td>중등과정 평면도형 총정리</td>
												</tr>
												<tr>
													<td>사인법칙과 코사인 법칙의 활용</td>
													<td rowspan="2">정적분의 활용 - 넓이에 대하여</td>
												</tr>
												<tr>
													<td>등차수열과 등비수열의 일반항과 합</td>
												</tr>
												<tr>
													<td>절댓값 기호를 포함한 수열의 해석</td>
													<td rowspan="3">속도와 가속도, 위치, 거리의 모든 것</td>
												</tr>
												<tr>
													<td>시그마와 여러가지 수열의 합</td>
												</tr>
												<tr>
													<td>귀납적으로 정의된 수열 (정방향, 역방향, 그래프)</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<h4 class="tb_bg_tit mt60">수학</h4>
										<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
											<colgroup>
												<col width="14%">
												<col width="36%">
												<col width="14%">
												<col width="36%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">구분</th>
													<th scope="col">커리큘럼</th>
													<th scope="col">구분</th>
													<th scope="col">커리큘럼</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th rowspan="7" class="brR">확률과통계</th>
													<td>중복조합과 이항정리</td>
													<th rowspan="7" class="brR">미적분</th>
													<td>도함수의 활용</td>
												</tr>
												<tr>
													<td>확률의 덧셈정리와 곱셈정리</td>
													<td>치환적분과 부분적분</td>
												</tr>
												<tr>
													<td>조건부 확률, 사건의 독립과 종속, 독립시행의 확률</td>
													<td>정적분으로 정의된 함수의 해석</td>
												</tr>
												<tr>
													<td>이산확률분포와 이항분포</td>
													<td>정적분의 활용 - 급수와 적분, 넓이, 부피</td>
												</tr>
												<tr>
													<td>연속확률분포와 정규분포</td>
													<td>평면운동 (속도와 가속도, 거리, 곡선의 길이)</td>
												</tr>
												<tr>
													<td>통계적 추정</td>
													<td rowspan="2">포물선의 정의와 성질</td>
												</tr>
												<tr>
													<td>여러가지 순열 (원순열, 중복순열, 같은것을 포함한 순열)</td>
												</tr>
												<tr>
													<th rowspan="9" class="brR">미적분</th>
													<td>수열의 극한과 급수의 기본적 성질<br>(수렴/발산/사칙연산)</td>
													<th rowspan="9" class="brR">기하</th>
													<td>타원의 정의와 성질</td>
												</tr>
												<tr>
													<td>등비수열의 극한<br>(수렴조건, 공비가 여러 개, 공비가 미지수)</td>
													<td>쌍곡선의 정의와 성질</td>
												</tr>
												<tr>
													<td>수열의 극한과 급수의 계산</td>
													<td>벡터의 정의와 종류, 연산,<br>세 점이 한 직선위에 있을 조건</td>
												</tr>
												<tr>
													<td>등비급수의 수렴조건과 계산</td>
													<td>위치벡터와 일차결합</td>
												</tr>
												<tr>
													<td>지수, 로그, 삼각함수의 극한과 활용</td>
													<td>벡터의 성분과 내적</td>
												</tr>
												<tr>
													<td>지수, 로그, 삼각함수의 미분법과 활용</td>
													<td>벡터로 나타낸 도형의 방정식과 영역</td>
												</tr>
												<tr>
													<td>음함수의 미분과 역함수 미분</td>
													<td>각의 정의와 삼수선의 정리</td>
												</tr>
												<tr>
													<td>합성함수 미분과 N축의 활용</td>
													<td>정사영</td>
												</tr>
												<tr>
													<td>함수의 증감과 극대극소, 이계도함수와 변곡점, 초월함수의 그래프</td>
													<td>공간좌표에서의 거리와 분점, 구의 방정식</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div>
										<h4 class="tb_bg_tit mt60">영어</h4>
										<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
											<colgroup>
												<col width="13%">
												<col width="37%">
												<col width="13%">
												<col width="37%">
											</colgroup>
											<thead>
												<tr>
													<th scope="col">구분</th>
													<th scope="col">커리큘럼</th>
													<th scope="col">구분</th>
													<th scope="col">커리큘럼</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th rowspan="9" class="brR">어법</th>
													<td>동사위치 - 수 일치, 시제, 태 (능동과 수동)</td>
													<th rowspan="3" class="brR">유형</th>
													<td>paraphrasing</td>
												</tr>
												<tr>
													<td>병렬구조에서의 동사 모양 결정</td>
													<td>단서 활용 (지시어, 대명사, 연결사)</td>
												</tr>
												<tr>
													<td>대동사</td>
													<td>연결과 단절을 통한 논리 관계 파악</td>
												</tr>
												<tr>
													<td>관계대명사 - 관계부사</td>
													<th rowspan="8" class="brR">구문</th>
													<td>주어, 목적어<br>(동명사, to부정사, 명사절 접속사)</td>
												</tr>
												<tr>
													<td>명사절 접속사</td>
													<td>가주어/진주어, 가목적어/진목적어</td>
												</tr>
												<tr>
													<td>부사절 접속사</td>
													<td>보어</td>
												</tr>
												<tr>
													<td>대명사의 수 일치</td>
													<td>형용사구/절<br>(to부정사, 분사, 관계대명사, 관계부사, 동격)</td>
												</tr>
												<tr>
													<td>재귀대명사</td>
													<td>부사구/절 (to부정사, 부사절접속사)</td>
												</tr>
												<tr>
													<td>소유대명사</td>
													<td>주어동사의 위치가 도치된 구조<br>(부정어구 도치 포함)</td>
												</tr>
												<tr>
													<th rowspan="4" class="brR">유형</th>
													<td>연결사 역할 이해</td>
													<td>가정법 도치</td>
												</tr>
												<tr>
													<td>글의 종류 이해</td>
													<td>강조, 생략 구조</td>
												</tr>
												<tr>
													<td>대의파악</td>
													<th rowspan="2" class="brR">어휘</th>
													<td rowspan="2">수능, 6&middot;9월 모평 기출 어휘 총정리</td>
												</tr>
												<tr>
													<td>빈칸 문장, 줄 친 문장 분석</td>
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

				<!-- 03 수준별 맞춤 콘텐츠 -->
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
								<h4 class="tb_bg_tit mt60">전 과목</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">구분</th>
											<th scope="col" rowspan="2">전체<br>회차/권</th>
											<th scope="col" colspan="2">시즌1</th>
											<th scope="col" colspan="2">시즌2</th>
											<th scope="col" colspan="2">시즌3</th>
											<th scope="col" colspan="3">시즌4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3월</th>
											<th scope="col">4월</th>
											<th scope="col">5월</th>
											<th scope="col">6월</th>
											<th scope="col">7월</th>
											<th scope="col">8월</th>
											<th scope="col">9월</th>
											<th scope="col">10월</th>
											<th scope="col">11월</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>전국 단위 실전 모의고사</th>
											<td>3회</td>
											<td>●</td>
											<td></td>
											<td>●</td>
											<td></td>
											<td></td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>전국 단위 실전 모의고사</th>
											<td>8회</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
									</tbody>
								</table>

								<h4 class="tb_bg_tit mt60">국어</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">구분</th>
											<th scope="col" rowspan="2">전체<br>회차/권</th>
											<th scope="col" colspan="2">시즌1</th>
											<th scope="col" colspan="2">시즌2</th>
											<th scope="col" colspan="2">시즌3</th>
											<th scope="col" colspan="3">시즌4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3월</th>
											<th scope="col">4월</th>
											<th scope="col">5월</th>
											<th scope="col">6월</th>
											<th scope="col">7월</th>
											<th scope="col">8월</th>
											<th scope="col">9월</th>
											<th scope="col">10월</th>
											<th scope="col">11월</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>풀 모의고사</th>
											<td>16회</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>월간 하프 모의고사</th>
											<td>16회</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>선택 하프 모의고사</th>
											<td>화법과작문 8회/<br>언어와매체 16회</td>
											<td></td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>월간지</th>
											<td>6권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>주간지</th>
											<td>16권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th rowspan="2" class="brR">정교재</th>
											<td>문학/독서 각 4권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<td>언어와매체 2권/<br>화법과작문 1권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>테마교재</th>
											<td>선생님별 교재</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
									</tbody>
								</table>

								<h4 class="tb_bg_tit mt60">수학</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">구분</th>
											<th scope="col" rowspan="2">전체<br>회차/권</th>
											<th scope="col" colspan="2">시즌1</th>
											<th scope="col" colspan="2">시즌2</th>
											<th scope="col" colspan="2">시즌3</th>
											<th scope="col" colspan="3">시즌4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3월</th>
											<th scope="col">4월</th>
											<th scope="col">5월</th>
											<th scope="col">6월</th>
											<th scope="col">7월</th>
											<th scope="col">8월</th>
											<th scope="col">9월</th>
											<th scope="col">10월</th>
											<th scope="col">11월</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>풀 모의고사</th>
											<td>20회</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>기출 변형 풀 모의고사</th>
											<td>7회</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>상위권 전용 풀 모의고사</th>
											<td>16회</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>월간 하프 모의고사</th>
											<td>20회</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>월간지</th>
											<td>6권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>주간지</th>
											<td>16권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>N제</th>
											<td>과목별 2권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th rowspan="2" class="brR">정교재</th>
											<td>수학Ⅰ/수학Ⅱ/<br>미적분 각 3권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<td>기하 1권/<br>확률과통계<br>각 2권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>테마 교재</th>
											<td>선생님별 교재</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
									</tbody>
								</table>

								<h4 class="tb_bg_tit mt60">영어</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">구분</th>
											<th scope="col" rowspan="2">전체<br>회차/권</th>
											<th scope="col" colspan="2">시즌1</th>
											<th scope="col" colspan="2">시즌2</th>
											<th scope="col" colspan="2">시즌3</th>
											<th scope="col" colspan="3">시즌4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3월</th>
											<th scope="col">4월</th>
											<th scope="col">5월</th>
											<th scope="col">6월</th>
											<th scope="col">7월</th>
											<th scope="col">8월</th>
											<th scope="col">9월</th>
											<th scope="col">10월</th>
											<th scope="col">11월</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>풀 모의고사</th>
											<td>16회</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>월간 하프 모의고사</th>
											<td>16회</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>주간지</th>
											<td>16권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>정교재</th>
											<td>3권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>N제</th>
											<td>2권</td>
											<td></td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>어법</th>
											<td>1권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>듣기</th>
											<td>1권</td>
											<td></td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>테마교재</th>
											<td>선생님별 교재</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
									</tbody>
								</table>

								<h4 class="tb_bg_tit mt60">사회탐구</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">구분</th>
											<th scope="col" rowspan="2">전체<br>회차/권</th>
											<th scope="col" colspan="2">시즌1</th>
											<th scope="col" colspan="2">시즌2</th>
											<th scope="col" colspan="2">시즌3</th>
											<th scope="col" colspan="3">시즌4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3월</th>
											<th scope="col">4월</th>
											<th scope="col">5월</th>
											<th scope="col">6월</th>
											<th scope="col">7월</th>
											<th scope="col">8월</th>
											<th scope="col">9월</th>
											<th scope="col">10월</th>
											<th scope="col">11월</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>풀 모의고사</th>
											<td>20회</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>상위권 전용 풀 모의고사</th>
											<td>16회</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>월간 하프 모의고사</th>
											<td>20회</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>월간지</th>
											<td>4권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>정교재</th>
											<td>선생님별 교재</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
									</tbody>
								</table>

								<h4 class="tb_bg_tit mt60">과학탐구</h4>
								<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
									<colgroup>
										<col width="21%">
										<col width="15%">
										<col width="7%" span="9">
									</colgroup>
									<thead>
										<tr>
											<th scope="col" rowspan="2">구분</th>
											<th scope="col" rowspan="2">전체<br>회차/권</th>
											<th scope="col" colspan="2">시즌1</th>
											<th scope="col" colspan="2">시즌2</th>
											<th scope="col" colspan="2">시즌3</th>
											<th scope="col" colspan="3">시즌4</th>
										</tr>
										<tr>
											<th scope="col" class="brL">3월</th>
											<th scope="col">4월</th>
											<th scope="col">5월</th>
											<th scope="col">6월</th>
											<th scope="col">7월</th>
											<th scope="col">8월</th>
											<th scope="col">9월</th>
											<th scope="col">10월</th>
											<th scope="col">11월</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th>풀 모의고사</th>
											<td>20회</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>상위권 전용 풀 모의고사</th>
											<td>16회</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>월간 하프 모의고사</th>
											<td>20회</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
										</tr>
										<tr>
											<th>월간지</th>
											<td>4권</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<th>정교재</th>
											<td>선생님별 교재</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
											<td>●</td>
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
									<button data-tab="ct_tab1" class="active">국어</button>
									<button data-tab="ct_tab2">수학</button>
									<button data-tab="ct_tab3">영어</button>
									<button data-tab="ct_tab4">탐구</button>
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
												<th scope="col">강사</th>
												<th scope="col">주별 수업시간</th>
												<th scope="col">커리큘럼</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td rowspan="2">학원별 상이</td>
												<td rowspan="2">맞춤형 설계</td>
												<td class="taL"><p>- 문학/독서 + 언어와매체/화법과작문 + 실전 모의고사 = 자율 선택 및 맟춤형 설계</p></td>
											</tr>
											<tr>
												<td class="taL brL">
													<p>- 메가스터디학원 실전 콘텐츠 (4시즌)</p>
													<p>- 풀/월간 하프 모의고사 (16회)</p>
													<p>- 선택 하프 모의고사 (언어와매체 16회/화법과작문 8회)</p>
													<p>- 국어 월간지 (6권)</p>
													<p>- 국어 주간지 (16권)</p>
													<p>- 메가스터디학원 정교재 (문학/독서 4권) + (언어와매체 2권/화법과작문 1권)</p>
												</td>
											</tr>
										</tbody>
									</table>

									<h4 class="tb_title">테마&middot;심화</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">강사</th>
												<th scope="col">주별 수업시간</th>
												<th scope="col">커리큘럼</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>학원별 상이</td>
												<td>맞춤형 설계</td>
												<td class="taL"><p>- 강사 개별 테마 콘텐츠</p></td>
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
												<th scope="col">강사</th>
												<th scope="col">주별 수업시간</th>
												<th scope="col">커리큘럼</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td rowspan="2">학원별 상이</td>
												<td rowspan="2">맞춤형 설계</td>
												<td class="taL"><p>- 수학Ⅰ/수학Ⅱ + 미적분/기하/확률과통계 + 실전 모의고사 = 자율 선택 및 맞춤형 설계</p></td>
											</tr>
											<tr>
												<td class="taL brL">
													<p>- 메가스터디학원 실전 콘텐츠 (4시즌)</p>
													<p>- 풀 모의고사/월간 하프 모의고사 (20회)</p>
													<p>- 기출 변형 풀 모의고사 (7회)</p>
													<p>- 상위권 전용 풀 모의고사 (16회)</p>
													<p>- 수학 월간지 (6권)</p>
													<p>- 수학 주간지 (16권)</p>
													<p>- N제 (과목별 2권)</p>
													<p>- 메가스터디학원 정교재 (수학Ⅰ/수학Ⅱ/미적분 3권 + 확률과통계 2권/기하 1권)</p>
												</td>
											</tr>
										</tbody>
									</table>

									<h4 class="tb_title">테마&middot;심화</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">강사</th>
												<th scope="col">주별 수업시간</th>
												<th scope="col">커리큘럼</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>학원별 상이</td>
												<td>맞춤형 설계</td>
												<td class="taL">- 강사 개별 테마 콘텐츠</td>
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
												<th scope="col">강사</th>
												<th scope="col">주별 수업시간</th>
												<th scope="col">커리큘럼</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td rowspan="2">학원별 상이</td>
												<td rowspan="2">맞춤형 설계</td>
												<td class="taL">- 영어 + 실전 모의고사 = 자율 선택 및 맞춤형 설계</td>
											</tr>
											<tr>
												<td class="taL brL">
													<p>- 메가스터디학원 실전 콘텐츠 (4시즌)</p>
													<p>- 풀 모의고사 (16회)</p>
													<p>- 월간 하프 모의고사 (16회)</p>
													<p>- 영어 주간지 (16권)</p>
													<p>- N제 (2권)</p>
													<p>- 메가스터디학원 정교재 (정교재 3권/어법 1권/듣기 1권)</p>
												</td>
											</tr>
										</tbody>
									</table>

									<h4 class="tb_title">테마&middot;심화</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">강사</th>
												<th scope="col">주별 수업시간</th>
												<th scope="col">커리큘럼</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>학원별 상이</td>
												<td>맞춤형 설계</td>
												<td class="taL"><p>- 강사 개별 테마 콘텐츠</p></td>
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
												<th scope="col">강사</th>
												<th scope="col">주별 수업시간</th>
												<th scope="col">커리큘럼</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td rowspan="2">학원별 상이</td>
												<td rowspan="2">맞춤형 설계</td>
												<td class="taL"><p>- 탐구 + 실전 모의고사 = 자율 선택 및 맞춤형 설계</p></td>
											</tr>
											<tr>
												<td class="taL brL">
													<p>- 메가스터디학원 실전 콘텐츠 (4시즌)</p>
													<p>- 사회탐구 풀 모의고사/월간 하프 모의고사 (20회)</p>
													<p>- 과학탐구 풀 모의고사/월간 하프 모의고사 (20회)</p>
													<p>- 상위권 전용 풀 모의고사 (16회)</p>
													<p>- 탐구 월간지 (4권)</p>
													<p>- 메가스터디학원 정교재 (정교재 N권)</p>
												</td>
											</tr>
										</tbody>
									</table>

									<h4 class="tb_title">테마&middot;심화</h4>
									<table cellspacing="0" cellpadding="0" border="0" class="tb_style">
										<colgroup>
											<col width="13%">
											<col width="15%">
											<col width="72%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">강사</th>
												<th scope="col">주별 수업시간</th>
												<th scope="col">커리큘럼</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>학원별 상이</td>
												<td>맞춤형 설계</td>
												<td class="taL"><p>- 강사 개별 테마 콘텐츠</p></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
	                </div>
	            </div>

				<!-- 04 우수 강사진 -->
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

				<!-- 05 입시 전문 담임 -->
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

				<!-- 06 메가패스 100% -->
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