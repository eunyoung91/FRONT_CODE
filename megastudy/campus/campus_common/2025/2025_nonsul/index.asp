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
	<!-- #include virtual="/public/jquery.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->

	<link rel="stylesheet" type="text/css" href="web.css">
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

				<div class="top_wrap">
					<div class="con">
						<div class="act_wrap">
							<div class="img_wrap">
								<img class="act01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/top_txt01.png" alt="" />
								<img class="act02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/top_txt02.png" alt="" />
							</div>
							<img class="act03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/top_img01.png" alt="" />
						</div>
					</div>
				</div>

				<div class="fix_menu_wrap">
					<ul class="fix_menu">
						<li class="on"><span>수시 대비!<br>왜 논술인가?</span></li>
						<li><span>논술 준비 TIP</span></li> 
						<li><span>논술 프로그램</span></li> 
					</ul>
				</div>

				<div class="fix_contents on contents01">
					<div id="con1" class="div_con1">
						<div class="taC">
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con01_title01.png" alt="수시 대비! 왜 논술인가!" />
							</div>
							<div class="img_wrap mt50">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con01_img01.png" alt="" />
							</div>
							<div class="img_wrap mt30">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con01_img02.png" alt="" />
							</div>
						</div>
					</div>
					<div id="con2" class="div_con2">
						<div class="con taC">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con02_title01.png" alt="" />
							</div>
							<div class="img_wrap mt60">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con02_img01.png" alt="" />
							</div>
							<div class="img_wrap mt110">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con02_img02.png" alt="" />
							</div>
						</div>
					</div>
				</div>

				<div class="fix_contents contents02">
					<div id="con3" class="div_con3">
						<div class="taC">
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con03_title01.png" alt="2025학년도 논술전형 모집인원증가" />
							</div>
							<div class="table_area">
								<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt60">
									<thead>
										<tr>
											<th rowspan="2" colspan="2">구분</th>
											<th colspan="2" class="brn">2026학년도 모집인원</th> 
										</tr>
										<tr>
											<th>전국 대학</th>
											<th class="brn">논술 시행 44개 대학</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th rowspan="5">수시</th>
											<th>학생부위주(교과)</th>
											<td>
												155,493(56.4%) 
											</td>
											<td class="brn">
												21,949(27.8%)
											</td>
										</tr>
										<tr>
											<th>학생부위주(종합)</th>
											<td>
												81,373(29.5%) 

											</td>
											<td class="brn">
												36,209(45.9%)

											</td>
										</tr>
										<tr>
											<th>논술위주</th>
											<td>
												12,559(4.6%) 

											</td>
											<td class="brn">
												12,559(15.9%)

											</td>
										</tr>
										<tr>
											<th>실기/실적위주</th>
											<td>
												21,865(7.9%) 

											</td>
											<td class="brn">
												6,178(7.8%)

											</td>
										</tr>
										<tr>
											<th>기타</th>
											<td>
												4,574(1.7%) 

											</td>
											<td class="brn">
												1,975(2.5%)

											</td>
										</tr>
										<tr>
											<th colspan="2">수시 소계</th>
											<td>
												275,864(100.0%) 

											</td>
											<td class="brn">
												70,717(100.0%)

											</td>
										</tr>
									</tbody> 
								</table> 
							</div>
							<p class="p_text">
								※ 한국대학교육협의회에서 2024. 7. 30(화)에 발표한 2026학년도 대학입학전형시행계획 주요사항 기준
							</p>
						</div>
					</div>
					<div id="con4" class="div_con4">
						<div class="taC">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con05_title01.png" alt="학생부 Down, 논술 Up!" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con05_sub_title01.png" alt="대학별 논술전형 학생부 교과등급 간 점수 반영 방법" />
							</div>

							<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt50">
								<colgroup> 
								<col width="*">
								<col width="10%" span="9">	                        
								</colgroup>
								<thead>
									<tr>
										<th rowspan="2">구분</th>
										<th colspan="9" class="brn">학생부 교과 등급 간 점수</th> 
									</tr>
									<tr>
										<th>1등급 </th>
										<th>2등급 </th>
										<th>3등급 </th>
										<th>4등급 </th>
										<th>5등급 </th>
										<th>6등급 </th>
										<th>7등급 </th>
										<th>8등급 </th>
										<th class="brn">9등급 </th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>가톨릭대</td>
										<td>100</td>
										<td>99.5</td>
										<td>99</td>
										<td>98.5</td>
										<td>98</td>
										<td>97.5</td>
										<td>97</td>
										<td>90</td>
										<td class="brn">70</td>
									</tr>
									<tr>
										<td>경기대</td>
										<td>100</td>
										<td>99</td>
										<td>97</td>
										<td>95</td>
										<td>90</td>
										<td>85</td>
										<td>60</td>
										<td>20</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>경북대</td>
										<td>150</td>
										<td>145</td>
										<td>140</td>
										<td>135</td>
										<td>130</td>
										<td>120</td>
										<td>100</td>
										<td>50</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>광운대</td>
										<td>100</td>
										<td>98</td>
										<td>96</td>
										<td>94</td>
										<td>92</td>
										<td>88</td>
										<td>80</td>
										<td>70</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>단국대<br>(죽전/천안)</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>95</td>
										<td>70</td>
										<td>40</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>동국대</td>
										<td>10.00</td>
										<td>9.97</td>
										<td>9.93</td>
										<td>9.90</td>
										<td>9.80</td>
										<td>8.70</td>
										<td>7.00</td>
										<td>6.00</td>
										<td class="brn">5.00</td>
									</tr>
									<tr>
										<td>부산대</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>95</td>
										<td>90</td>
										<td>60</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>상명대</td>
										<td>100</td>
										<td>98</td>
										<td>96</td>
										<td>94</td>
										<td>90</td>
										<td>80</td>
										<td>60</td>
										<td>40</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>서경대</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>95</td>
										<td>90</td>
										<td>80</td>
										<td class="brn">60</td>
									</tr>
									<tr>
										<td>서울과학기술대</td>
										<td>1,000</td>
										<td>990</td>
										<td>980</td>
										<td>970</td>
										<td>960</td>
										<td>800</td>
										<td>500</td>
										<td>250</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>서울시립대</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>90</td>
										<td>80</td>
										<td>70</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>서울여대</td>
										<td>20</td>
										<td>19</td>
										<td>18</td>
										<td>17</td>
										<td>16</td>
										<td>14</td>
										<td>11</td>
										<td>8</td>
										<td class="brn">5</td>
									</tr>
									<tr>
										<td>세종대</td>
										<td>1,000</td>
										<td>990</td>
										<td>980</td>
										<td>950</td>
										<td>900</td>
										<td>800</td>
										<td>700</td>
										<td>500</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>수원대</td>
										<td>100.00</td>
										<td>98.75</td>
										<td>97.50</td>
										<td>96.25</td>
										<td>95.00</td>
										<td>93.75</td>
										<td>82.50</td>
										<td>78.75</td>
										<td class="brn">75.00</td>
									</tr>
									<tr>
										<td>숙명여대</td>
										<td>100</td>
										<td>98.9</td>
										<td>97.8</td>
										<td>96.6</td>
										<td>95.4</td>
										<td>90.4</td>
										<td>85.9</td>
										<td>81.9</td>
										<td class="brn">75.0</td>
									</tr>
									<tr>
										<td>숭실대</td>
										<td>10.0</td>
										<td>9.5</td>
										<td>9.0</td>
										<td>8.5</td>
										<td>8.0</td>
										<td>7.0</td>
										<td>5.0</td>
										<td>3.0</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>신한대</td>
										<td>100</td>
										<td>99</td>
										<td>97.5</td>
										<td>96</td>
										<td>94.5</td>
										<td>91.5</td>
										<td>88.5</td>
										<td>82</td>
										<td class="brn">68</td>
									</tr>
									<tr>
										<td>아주대</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>95</td>
										<td>90</td>
										<td>85</td>
										<td>75</td>
										<td>65</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>을지대</td>
										<td>100</td>
										<td>98</td>
										<td>96</td>
										<td>94</td>
										<td>92</td>
										<td>90</td>
										<td>70</td>
										<td>40</td>
										<td class="brn">10</td>
									</tr>
									<tr>
										<td>인하대</td>
										<td>10.0</td>
										<td>9.6</td>
										<td>9.5</td>
										<td>9.5</td>
										<td>9.4</td>
										<td>9.4</td>
										<td>7.2</td>
										<td>3.6</td>
										<td class="brn">0</td>
									</tr>
									<tr>
										<td>중앙대</td>
										<td>10.00</td>
										<td>9.96</td>
										<td>9.92</td>
										<td>9.88</td>
										<td>9.84</td>
										<td>9.80</td>
										<td>9.60</td>
										<td>8.00</td>
										<td class="brn">4.00</td>
									</tr>
									<tr>
										<td>한국공학대</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>94</td>
										<td>80</td>
										<td>60</td>
										<td class="brn">25</td>
									</tr>
									<tr>
										<td>한신대</td>
										<td>100</td>
										<td>99</td>
										<td>98</td>
										<td>97</td>
										<td>96</td>
										<td>95</td>
										<td>94</td>
										<td>80</td>
										<td class="brn">50</td>
									</tr>
									<tr>
										<td>홍익대<br>(서울/세종)</td>
										<td>100</td>
										<td>99</td>
										<td>97</td>
										<td>94</td>
										<td>90</td>
										<td>85</td>
										<td>60</td>
										<td>30</td>
										<td class="brn">0</td>
									</tr>
								</tbody>
							</table>

							<p class="p_text">
								※ 2026학년도 대학별 대학입학전형기본계획 기준
							</p>
						</div>
					</div>
					<div id="con5" class="div_con5">
						<div class="taC">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con06_title01.png" alt="수능 최저학력 기준완화" />
							</div>
							<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt60">
								<colgroup>
								<col width="20%">
								<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>구분</th>
										<th class="brn">수능 최저학력 기준 미적용 대학</th>
									</tr>
									
								</thead>
								<tbody>
									<tr>
										<th>
											인문/자연계열<br>(19개 대학)
										</th>
										<td class="brn taL pl15">
											가톨릭대(간호/약학/의예과 제외), 강남대, 경기대, 광운대, 단국대(죽전), 상명대, 서경대, 서울과학기술대, 서울시립대, 서울여대,<br>
											수원대, 신한대, 아주대(의학/약학 제외), 연세대(서울), 을지대, 인하대(의예과 제외), 한국공학대, 한국기술교육대, 한신대											
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div id="con6" class="div_con6">
						<div class="taC">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con07_title01.png" alt="대학별 수능 최저 기준" />
							</div>
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con07_sub_title01.png" alt="인문" />
							</div>

							<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt30">
								<colgroup>
									<col width="15%" span="2"> 
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>영역 수 </th>
										<th>등급 </th>
										<th>대학 </th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>4 </td>
										<td>합8 </td>
										<td class="taL brn pl15">고려대 </td>
									</tr>
									<tr>
										<td rowspan="4">3 </td>
										<td>합4 </td>
										<td class="taL brn pl15">경희대(한의예-인문) </td>
									</tr>
									<tr>
										<td>합6 </td>
										<td class="taL brn pl15">성균관대, 중앙대 </td>
									</tr>
									<tr>
										<td>합7 </td>
										<td class="taL brn pl15">서강대, 부산대(경영), 한양대 </td>
									</tr>
									<tr>
										<td>합8 </td>
										<td class="taL brn pl15">홍익대 </td>
									</tr>
									<tr>
										<td rowspan="5">2 </td>
										<td>합3 </td>
										<td class="taL brn pl15">한국외대(L&amp;D학부, L&amp;T학부) </td>
									</tr>
									<tr>
										<td>합4 </td>
										<td class="taL brn pl15">동국대(경찰행정), 부산대(인문), 한국외대(서울) </td>
									</tr>
									<tr>
										<td>합5 </td>
										<td class="taL brn pl15">건국대, 경희대, 동국대(컴퓨터 AI학부 포함),숭실대, 세종대, 숙명여대, 이화여대 </td>
									</tr>
									<tr>
										<td>합6 </td>
										<td class="taL brn pl15">고려대(세종), 국민대, 경북대, 한국항공대 </td>
									</tr>
									<tr>
										<td>합7 </td>
										<td class="taL brn pl15">덕성여대, 동덕여대, 성신여대, 연세대(미래) </td>
									</tr>
									<tr>
										<td>1 </td>
										<td>3이내 </td>
										<td class="taL brn pl15">가천대, 경희대(체육), 삼육대 </td>
									</tr>
								</tbody>
							</table>

							
							<div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con07_sub_title02.png" alt="자연" />
							</div>
							
							<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt30">
								<colgroup>
									<col width="15%" span="2"> 
									<col width="*">
								</colgroup>
								<thead>
									<tr>
										<th>영역 수 </th>
										<th>등급 </th>
										<th>대학 </th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="3">4 </td>
										<td>합5 </td>
										<td class="taL brn pl15">이화여대(의예), 중앙대(의학(2과목 평균)/약학) </td>
									</tr>
									<tr>
										<td>합6 </td>
										<td class="taL brn pl15">아주대(2과목 평균)(의학), 이화여대(약학) </td>
									</tr>
									<tr>
										<td>합8 </td>
										<td class="taL brn pl15">고려대 </td>
									</tr>
									<tr>
										<td rowspan="6">3 </td>
										<td>각1 </td>
										<td class="taL brn pl15">가천대(의예), 연세대(미래-의예), 인하대(의예) </td>
									</tr>
									<tr>
										<td>합4 </td>
										<td class="taL brn pl15">가톨릭대(의예), 건국대(수의예), 경희대(의예/한의예/치의예/약학), 경북대(의예/치의예), <br>단국대(천안-의예), 동국대(약학), 부산대(의예/약학), 성균관대(의예(2과목 평균)), 숙명여대(약학) </td>
									</tr>
									<tr>
										<td>합5 </td>
										<td class="taL brn pl15">가톨릭대(약학), 경북대(수의예, 약학), 고려대(세종-약학), 단국대(천안-치의예), 덕성여대(약학), <br>성균관대(약학/글로벌/반도체/소프트웨어,에너지), 아주대(약학), 이화여대(스크랜튼학부) </td>
									</tr>
									<tr>
										<td>합6 </td>
										<td class="taL brn pl15">성균관대(자연과학/전자전기/공학계열/건설환경), 중앙대 </td>
									</tr>
									<tr>
										<td>합7 </td>
										<td class="taL brn pl15">가톨릭대(간호), 서강대, 한양대 </td>
									</tr>
									<tr>
										<td>합8 </td>
										<td class="taL brn pl15">홍익대 </td>
									</tr>
									<tr>
										<td rowspan="4">2 </td>
										<td>합4 </td>
										<td class="taL brn pl15">가천대(클라우드공학), 동국대(경찰행정학부) </td>
									</tr>
									<tr>
										<td>합5 </td>
										<td class="taL brn pl15">가천대(바이오로직스), 건국대, 경북대(간호, IT), 경희대, 동국대(자연계/컴퓨터/AI학부), 부산대(자연),<br> 세종대, 숙명여대, 숭실대, 연세대(미래_간호), 이화여대 </td>
									</tr>
									<tr>
										<td>합6 </td>
										<td class="taL brn pl15">경북대(자연), 고려대(세종), 국민대, 중앙대(다빈치), 한국항공대 </td>
									</tr>
									<tr>
										<td>합7 </td>
										<td class="taL brn pl15">덕성여대, 동덕여대, 성신여대, 연세대(미래_자연) </td>
									</tr>
									<tr>
										<td rowspan="2">1 </td>
										<td>3이내 </td>
										<td class="taL brn pl15">가천대, 삼육대, 한국외대(글로벌) </td>
									</tr>
									<tr>
										<td>4이내 </td>
										<td class="taL brn pl15">홍익대(세종) </td>
									</tr>
								</tbody>
							</table>
							<p class="p_text">
								※ 2026학년도 대학별 대학입학전형기본계획 기준
							</p>
						</div>
					</div>
				</div>

				<div class="fix_contents contents03">
					<div id="con7" class="div_con7">
						<div class="taC">
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con08_title01.png" alt="" />
							</div>
							<div class="img_wrap mt65">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con08_img01.png" alt="" />
								<div class="link_area">
									<a class="a_link btn01" href="javascript:void(0);" data-open="layerOpen" alt="layer01">합격수기 자세히 보기</a>
								</div>

								<div id="layer01" class="layer layer_popup">
									<div class="close_btn"><span>&#10005;</span></div>
									<div class="img_wrap">
										<h3>
											2026학년도 메가스터디 논술모의고사 성적 현황 및 추천 대학
										</h3>
										<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4">
											<colgroup>
												<col width="4%" span="2">
												<col width="5%" span="9">
												<col width="4%" span="1">
												<col width="*">
											</colgroup>
											<thead>
												<tr>
													<th colspan="2" rowspan="2">구분</th>
													<th rowspan="2">유형</th>
													<th colspan="2">점수</th>
													<th colspan="2">석차</th>
													<th colspan="2">평균</th>
													<th colspan="2">백분위</th>
													<th rowspan="2">추천<br>등급</th>
													<th rowspan="2">추천 학교 및 학과</th>
												</tr>
												<tr>
													<th>배점 </th>
													<th>본인 </th>
													<th>학원(교) </th>
													<th>전체 </th>
													<th>학원(교) </th>
													<th>전체 </th>
													<th>학원(교) </th>
													<th>전체 </th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1회 </td>
													<td>3월 </td>
													<td>A형 </td>
													<td>100 </td>
													<td>90.7 </td>
													<td>33/170 </td>
													<td>409/2448 </td>
													<td>63.8 </td>
													<td>66.5 </td>
													<td>80.6 </td>
													<td>83.1  </td>
													<td>S </td>
													<td class="taL">의약학계열(의예, 치의예, 한의예, 수의예, 약학), 고려대, 연세대 </td>
												</tr>
												<tr>
													<td>2회 </td>
													<td>4월 </td>
													<td>B형 </td>
													<td>100 </td>
													<td>88.6 </td>
													<td>3/33 </td>
													<td>48/368 </td>
													<td>73.9 </td>
													<td>75.3 </td>
													<td>90.9 </td>
													<td>87.0  </td>
													<td>S </td>
													<td class="taL">의약학계열(의예, 치의예, 한의예, 수의예, 약학), 고려대, 연세대 </td>
												</tr>
												<tr>
													<td>3회 </td>
													<td>5월 </td>
													<td>A형 </td>
													<td>100 </td>
													<td>93 </td>
													<td>5/103 </td>
													<td>33/605 </td>
													<td>27.7 </td>
													<td>60.3 </td>
													<td>95.1 </td>
													<td>94.5  </td>
													<td>S </td>
													<td class="taL">의약학계열(의예, 치의예, 한의예, 수의예, 약학), 고려대, 연세대 </td>
												</tr>
												<tr>
													<td>4회 </td>
													<td>6월 </td>
													<td>B형 </td>
													<td>100 </td>
													<td>84.2 </td>
													<td>8/21 </td>
													<td>38/194 </td>
													<td>78.7 </td>
													<td>73 </td>
													<td>61.9 </td>
													<td>80.2  </td>
													<td>S </td>
													<td class="taL">의약학계열(의예, 치의예, 한의예, 수의예, 약학), 고려대, 연세대 </td>
												</tr>
												<tr>
													<td>5회 </td>
													<td>7월 </td>
													<td>A형 </td>
													<td>100 </td>
													<td>79.9 </td>
													<td>17/67 </td>
													<td>174/503 </td>
													<td>45 </td>
													<td>66.9 </td>
													<td>74.6 </td>
													<td>65.3  </td>
													<td>M </td>
													<td class="taL">서강대, 서울시립대, 성균관대, 이화여대, 중앙대(서울), 한국외대(서울), 한양대 </td>
												</tr>
												<tr>
													<td>6회 </td>
													<td>8월 </td>
													<td>C형 </td>
													<td>100 </td>
													<td>66.7 </td>
													<td>3/4 </td>
													<td>39/78 </td>
													<td>68.6 </td>
													<td>63.5 </td>
													<td>25 </td>
													<td>50.0  </td>
													<td>A </td>
													<td class="taL">강남대, 경기대, 고려대(세종), 광운대, 덕성여대, 동덕여대, 삼육대, 서울여대, 성신여대, 수원대, 신한대, 연세대(미래), 을지대, 중앙대(다빈치), 한국공학대, 한국기술교육대, 한국외대(글로벌), 한신대, 홍익대(세종) </td>
												</tr>
												<tr>
													<td>7회 </td>
													<td>9월 </td>
													<td>D형 </td>
													<td>100 </td>
													<td>68.2 </td>
													<td>11/18 </td>
													<td>128/260 </td>
													<td>71.4 </td>
													<td>69.1 </td>
													<td>36.1 </td>
													<td>46.5  </td>
													<td>A </td>
													<td class="taL">강남대, 경기대, 고려대(세종), 광운대, 덕성여대, 동덕여대, 삼육대, 서울여대, 성신여대, 수원대, 신한대, 연세대(미래), 을지대, 중앙대(다빈치), 한국공학대, 한국기술교육대, 한국외대(글로벌), 한신대, 홍익대(세종) </td>
												</tr>
											</tbody>
										</table>
									</div> 
								</div>
							</div>
						</div>
					
					</div>
					<div id="con8" class="div_con8">
						<div class="taC">
							<div class="img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con09_title01.png" alt="" />
							</div>
							<div class="img_wrap mt45">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con09_img01.png" alt="" />
							</div>
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_nonsul/con09_img02.png" alt="" />
							</div>
						</div>
					</div>
					
				</div>
			</div>
        </div>
    </div>
    <!-- container End -->
</div>
<!-- wrapper End -->
<!--#include virtual="/library/include/common/bottom.asp" -->

<script src="/public/js/TweenMax.min.js"></script> 
<script type="text/javascript">
	$(document).ready(function(){
		titleMotion();

		$(".fix_menu li").on('click', function(e){
			var idx = $(this).index()+1;

			$(".fix_menu li").removeClass("on");
			$(this).addClass("on");

			$(".fix_contents").removeClass("on");
			$(".contents0"+idx).addClass("on");

			var _top = $(".contents0"+idx),
				$target = _top.offset().top;

			e.preventDefault();
			$('html, body').animate({
				scrollTop: $target
			}, 500);

		});

        $('[data-open="layerOpen"]').on("click", function(){
			var temp = $(this).attr("alt");
			console.log(temp);
			$("#"+temp).addClass("open");
			$("#"+temp).slideDown(300);
			$(".modal_dim").fadeIn();
		});
		$(".modal_dim, .layer .close_btn").click(function () {
			$(".modal_dim").fadeOut();
			$(".layer").removeClass("open");
			$("body").removeClass("hid");
		});

	});

	function fix_menu_move() {
		var qstart = $(".top_wrap").height() + 100;  

		if ($(this).scrollTop() > qstart) {
			$('.fix_menu_wrap').css({
				top: '0px', "position": "fixed"
			});
		}else {
			$('.fix_menu_wrap').css({ 
				top: '770px', "position": "absolute"
			});
		}
	}
	function titleMotion(){
		var motion1 = new TimelineMax({delay:0.5,repeat:0})
			motion1.to(".act02", 0.5, {opacity:1, left:0});
		var motion = new TimelineMax({delay:0.5,repeat:0})
			motion.to(".act01", 0.5, {opacity:1});
		var motion2 = new TimelineMax({delay:1.2,repeat:0})
			motion2.to(".act03", 0.5, {opacity:1});
	}

    $(window).on({
		"load":function(){
			var temp_s = $('#div_full').offset().top;
			$('html, body').animate({
				scrollTop : temp_s
			},500);

		},
		"resize":function(){},
		"scroll":function(){ fix_menu_move();}
	});
</script>
</body>
</html>
