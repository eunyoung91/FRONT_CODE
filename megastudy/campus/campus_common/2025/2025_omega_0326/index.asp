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
<meta name="keywords" content="메가스터디학원, 러셀학원, 재수학원, 입시, 재수기숙학원, 메가스터디러셀, 메가스터디, N수, 대입, 수능, 모의고사, 실전 모의고사" />
<meta name="description" content="실력과 실전의 간극을 좁히는 오메가! 맞춤 실전 대비로 대입 성공 완성!" />
<meta property="og:type" content="website">
<meta property="og:title" content="메가스터디학원" />
<meta property="og:description" content="실력과 실전의 간극을 좁히는 오메가! 맞춤 실전 대비로 대입 성공 완성!" />
<meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_omega/index.asp">
<meta property="og:site_name" content="메가스터디학원">
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
        <!-- omegaWrap -->
		<div id="omegaWrap" class="omega-wrap">
			<!-- visual -->
			<div class="visual-wrap">
				<div class="visual">
					<div class="scene03">
						<div class="inner">
							<p class="scene03-tit01">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene03_tit01.png" alt="처음부터 끝까지 가장 완벽한 수능 플랜" />
							</p>
							<p class="scene03-tit02">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene03_tit02.png" alt="omega" />
							</p>
							<p class="scene03-tit03">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene03_tit03.png" alt="수준별 콘텐츠로 수능 자신감을 확실하게 높이다" />
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
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/scene02_tit02.png" alt="최고를 위한 최적의 모의고사 내가 중심이 되는 흥미로운 공부가 시작됩니다" />
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
				<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/omega_popup.png" alt="배너 이미지" onclick="openPopup()">
			</div> -->
			<!-- 250326 -->
			 
			<!-- content -->
			<div class="cont01 js-cont">
				<div class="inner">
					<div class="img_wrap">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont01.jpg" alt="검증된 7단계 출제·검수 시스템" />
					</div>
				</div>
			</div>

			<div class="cont02 js-cont">
				<div class="inner">
					<div class="img_wrap">
						<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont02.jpg" alt="'맞춤' 모의고사" />
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
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont03.png" alt="OMEGA 실전 대비 모의고사·복습 SET" />
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
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont04_sl01.png" alt="맞춤 학습 설계" /></div>
								</li>
								<li class="slide02">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont04_sl02.png" alt="실력 쌓기" /></div>
								</li>
								<li class="slide03">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont04_sl03.png" alt="실전력 다지기" /></div>
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
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont05_sl01.png" alt="높은 학습 효과" /></div>
								</li>
								<li class="slide02">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont05_sl02.png" alt="실전 적응" /></div>
								</li>
								<li class="slide03">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont05_sl03.png" alt="섬세한 실력 보완" /></div>
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
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont06_tit.png" alt="수능 실전 대비 모의고사" />
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
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont07_tit.png" alt="실전형 습관 100% 완성 주간 미니 모의고사" />
							</p>
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont07.png" alt="OMEGA weekly" />
							</div>
							<ul>
								<li class="slide01 active">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont07_sl01.png" alt="실전 감각 유지" /></div>
								</li>
								<li class="slide02">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont07_sl02.png" alt="학습 상태 체크" /></div>
								</li>
								<li class="slide03">
									<div><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_omega/cont07_sl03.png" alt="학습 효율 상승" /></div>
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
								<th colspan="2">구분</th>
								<th>총 회차</th>
								<th>3월</th>
								<th>4월</th>
								<th>5월</th>
								<th>6월</th>
								<th>7월</th>
								<th>8월</th>
								<th>9월</th>
								<th>10월</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th rowspan="7" class="bg-th">OMEGA <br>& <br>OMEGA <br>link</th>
								<td class="bg-th">국어</td>
								<td>15회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>4회</td>
								<td>4회</td>
								<td>3회</td>
								<td>4회</td>
							</tr>
							<tr>
								<td class="bg-th">수학</td>
								<td>19회</td>
								<td>1회</td>
								<td>1회</td>
								<td>1회</td>
								<td>1회</td>                                  
								<td>4회</td>
								<td>4회</td>
								<td>3회</td>
								<td>4회</td>
							</tr>
							<tr>
								<td class="bg-th">영어</td>
								<td>15회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>4회</td>
								<td>4회</td>
								<td>3회</td>
								<td>4회</td>
							</tr>       
							<tr>
								<td class="bg-th">사회탐구</td>
								<td>19회</td>
								<td>1회</td>
								<td>1회</td>
								<td>1회</td>
								<td>1회</td>    
								<td>4회</td>
								<td>4회</td>
								<td>3회</td>
								<td>4회</td>
							</tr>           
							<tr>
								<td class="bg-th">과학탐구Ⅰ</td>
								<td>19회</td>
								<td>1회</td>
								<td>1회</td>
								<td>1회</td>
								<td>1회</td>    
								<td>4회</td>
								<td>4회</td>
								<td>3회</td>
								<td>4회</td>
							</tr> 
							<tr>
								<td class="bg-th">과학탐구Ⅱ</td>
								<td>5회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>3회</td>
								<td>2회</td>
							</tr> 
							<tr>
								<td class="bg-th">한국사</td>
								<td>4회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>1회</td>
								<td>1회</td>
								<td>1회</td>
								<td>1회</td>
							</tr> 
							<tr>
								<th rowspan="3" class="bg-th">OMEGA <br>black</th>
								<td class="bg-th">수학</td>
								<td>15회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>4회</td>
								<td>4회</td>
								<td>3회</td>
								<td>4회</td>
							</tr> 
							<tr>
								<td class="bg-th">사회탐구</td>
								<td>15회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>4회</td>
								<td>4회</td>
								<td>3회</td>
								<td>4회</td>
							</tr> 
							<tr>
								<td class="bg-th">과학탐구Ⅰ</td>
								<td>15회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>4회</td>
								<td>4회</td>
								<td>3회</td>
								<td>4회</td>
							</tr>
							<tr>
								<th rowspan="2" class="bg-th">OMEGA <br>blue</th>
								<td class="bg-th">수학</td>
								<td>10회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>2회</td>
								<td>2회</td>
								<td>3회</td>
								<td>3회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr>  
							<tr>
								<td class="bg-th">과학탐구Ⅰ</td>
								<td>10회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td>2회</td>
								<td>2회</td>
								<td>3회</td>
								<td>3회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr> 
							<tr>
								<th rowspan="6" class="bg-th">OMEGA <br>weekly</th>
								<td class="bg-th">국어</td>
								<td>16회</td>
								<td>4회</td>
								<td>4회</td>
								<td>4회</td>
								<td>4회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr>   
							<tr>
								<td class="bg-th">수학</td>
								<td>16회</td>
								<td>4회</td>
								<td>4회</td>
								<td>4회</td>
								<td>4회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr> 
							<tr>
								<td class="bg-th">영어</td>
								<td>16회</td>
								<td>4회</td>
								<td>4회</td>
								<td>4회</td>
								<td>4회</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr>  
							<tr>
								<td class="bg-th">사회탐구</td>
								<td>4권</td>
								<td>1권</td>
								<td>1권</td>
								<td>1권</td>
								<td>1권</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr>
							<tr>
								<td class="bg-th">과학탐구Ⅰ</td>
								<td>4권</td>
								<td>1권</td>
								<td>1권</td>
								<td>1권</td>
								<td>1권</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr> 
							<tr>
								<td class="bg-th">과학탐구Ⅱ</td>
								<td>4권</td>
								<td>1권</td>
								<td>1권</td>
								<td>1권</td>
								<td>1권</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
								<td class="bg-empty">-</td>
							</tr>                  
						</tbody>
					</table>
					<p class="r-txt">※ 시행 일정은 학원 운영 상황에 따라 변경 및 조정될 수 있습니다. </p>
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
