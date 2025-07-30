<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include file="../cl_header.asp" -->
<!-- #include file="./challenge_write_include.asp" -->

<!-- 가채점 함수 / 과목 불러오기 -->
<!-- #include virtual = "/common/inc/FunExam.asp"-->
<%
	'================================================================
	'2021-12-09 / 이상준 / N수+고3 수시 장학 지원 통합 페이지
	'2022학년도 팀플 장학생부터는 DB에서 질문 목록을 가져와서 사용
	'================================================================

	'===========================================================================
	'기능설명 : 숫자를 금액단위로 바꿈 : 3000 --> 3,000
	'===========================================================================
	Function InsertCommaIntoNumber(money)
		If money = "-" Then
			InsertCommaIntoNumber = "-"
			Exit Function
		End If

		IF money = "" OR ISNULL(money) THEN
			money = 0
		END IF

		IF money >= 0 THEN
			money = MID(FormatCurrency(money), 2, LEN(FormatCurrency(money)))
		else
			money = money * -1
			money = MID(FormatCurrency(money), 2, LEN(FormatCurrency(money)))
			money = "-" & money
		End IF
		InsertCommaIntoNumber = money
	End Function
%>
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
	<!-- #include virtual = "/public/jquery.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->

	<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
	<!-- intro전용 css -->
	<script type="text/javascript" src="/public/js/intro.js"></script>
	<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
	
	<!-- 팀플 관련 -->
	<script type="text/javascript" src="../js/teamplay_common.js"></script>
	<link rel="stylesheet" type="text/css" href="../teamplayStep.css">

	<script type="text/javascript">
		var topTabCode = "<%=topTabCode%>"; // 신청 형식
	</script>

	<script src="/public/js/waypoints.min.js"></script>
	<script type="text/javascript">
		$(window).on({
			"load":function(){
				var temp_s = $("#div_full").offset().top;
				$('html, body').animate({
					scrollTop: temp_s
				}, 500);
			}
		});
	</script>

	<!-- ASP(challenge_write_include)에서 생성된 JS 코드 S -->
	<%=execThisScript%>
	<!-- ASP(challenge_write_include)에서 생성된 JS 코드 E -->
</head>
<body>
	<div id="wrapper">
		<!-- 최상단메뉴// -->
		<!-- #include virtual="/library/include/common/top.asp" -->
		<!-- //최상단메뉴 -->

		<div id="header" class="<%=GetCampusColorType()%>">
			<!-- 상단 학원로고 및 선택 탭// -->
			<!-- #include virtual="/library/include/common/top_campus_tab.asp" -->
			<!-- //상단 학원로고 및 선택 탭 -->
			
			<!-- 상단 대메뉴// -->
			<!-- #include virtual="/library/include/common/top_campus_detail_menu.asp" -->
			<!-- //상단 대메뉴 -->
		</div>
		<!-- // header -->
		
		<div id="container" style="padding-bottom:0px !important;">
			<div id="div_cont">
				<div id="div_full" class="div_con">
					<!-- 상단 공통 이미지 -->
					<!-- #include file="../cl_image.asp" -->
					<!-- // 상단 공통 이미지 -->
					
					<div class="div_con0">
						<div class="con_wrap">
							<div class="teamplay_apply">
								<div class="apply_info">
									<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/con01_img01.png" alt=""/>
								</div>

								<div class="write_wrap" style="width:1160px; height:4312px; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/bg_contents01.png') center top no-repeat; background-size:100%">
								<form name="form_proc_my_univ" id="form_proc_my_univ" method="post" action="">
									<input type="hidden" name="form_mode" id="form_mode" value="">
									<input type="hidden" name="getUnivType" id="getUnivType" value="">
									<input type="hidden" name="cMode" id="cMode" value="">
									<!-- 2019.11.21 처리페이지 고3/재수반 합치기 위해 추가 -->
									<input type="hidden" name="getClsCd" id="getClsCd" value="<%=clsCd%>">

									<div class="apply_info">
										<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/con_top_txt.png" alt=""/>
									</div>

									<div class="inner" style="padding-top:157px;">
										<div class="inner_title">
											<h2><span>기본 정보 등록하기</span></h2>
											<p class="teamplay_apply_text01">
												<strong><%=gLoginMemName%></strong>님, 장학금 지급을 위해 아래 정보를 모두 등록해 주세요.
											</p>
										</div>

										<!-- 1. 수능성적표 -->
										<div class="apply_content01" id="info_step1">
											<div class="teamplay_img_wrap">
												<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/apply_title01.png" alt="수능 성적표"/>
											</div>
											<%
												'수능 성적 파일 가져오기 S
												strSql = ""
												strSql = strSql & vbCrlf & "SELECT"
												strSql = strSql & vbCrlf & "	ISNULL(TP_EXAMSNLAST_YN, 'N') TP_EXAMSNLAST_YN" '전년도 수능
												strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_FILENM" '전년도 수능 성적표 파일 이름
												strSql = strSql & vbCrlf & "	, ISNULL(TP_EXAMSN_YN, 'N') TP_EXAMSN_YN" '올해 수능
												strSql = strSql & vbCrlf & "	, TP_EXAMSN_FILENM" '올해 수능 성적표 파일 이름
												strSql = strSql & vbCrlf & "	, ISNULL(TP_MEMPIC_YN, 'N') AS TP_MEMPIC_YN" '증명사진
												strSql = strSql & vbCrlf & "	, TP_MEMPIC_FILENM" '증명사진 파일 이름
												strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_EVT(NOLOCK) "
												strSql = strSql & vbCrlf & "WHERE"
												strSql = strSql & vbCrlf & "	TP_MEM_CD = '" & nAmsMemCd & "'"
												strSql = strSql & vbCrlf & "	AND TP_MEM_ID = '" & gLoginMemId & "'"
												strSql = strSql & vbCrlf & "	AND TP_YEAR = '" & g_TP_YEAR & "'"
												strSql = strSql & vbCrlf & "	AND TP_TYPE = '" & g_TP_TYPE & "'"
												' strSql = strSql & vbCrlf & "	AND TP_SENDYN = 'Y'" '최종지원 전에는 안보여야 한다면 활성화
												
												Set objRs = amsObjDb.sqlQuery(strSql, 3)
												If Not (objRs.EoF And objRs.BoF) Then
													TP_EXAMSNLAST_YN = objRs("TP_EXAMSNLAST_YN") '전년도 수능
													TP_EXAMSNLAST_FILENM = objRs("TP_EXAMSNLAST_FILENM") '전년도 수능 성적표 파일 이름
													TP_EXAMSN_YN = objRs("TP_EXAMSN_YN") '올해 수능
													TP_EXAMSN_FILENM = objRs("TP_EXAMSN_FILENM") '올해 수능 성적표 파일 이름
													TP_MEMPIC_YN = objRs("TP_MEMPIC_YN") '증명사진
													TP_MEMPIC_FILENM = objRs("TP_MEMPIC_FILENM") '증명사진 파일 이름
												Else
													TP_EXAMSNLAST_YN = "N" '전년도 수능
													TP_EXAMSN_YN = "N" '올해 수능
													TP_MEMPIC_YN = "N" '증명사진
												End If
												objRs.close
												Set objRs = Nothing
	
												TP_FILE_PATH = gTPSaveUrl
												'수능 성적 파일 가져오기 E
											%>
											<!-- 이전 학년도 수능 S -->
											<input type="hidden" name="sn_exam_yn" id="sn_exam_ynY" value="Y"/><!-- 작년도 수능 성적표 등록 -->

											<table class="table_new_type_01" cellpadding="0" cellspacing="0" border="0" id="examArea1">
												<colgroup>
													<col width="230px">
													<col width="">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><%=g_TP_PREV_YEAR%> 수능 성적표</th>
														<td>
															<div class="input_file">
																<span class="file_name" id="TP_EXAMSNLAST_REALFILENM">
																	<%If TP_EXAMSNLAST_YN = "Y" Then%>
																		<a href="javascript:void(0)" onclick="openPicViewWin('EXAMSNLAST', '<%=TP_FILE_PATH & "/" & TP_EXAMSNLAST_FILENM%>');">
																			수능성적파일.<%=IIF(Right(TP_EXAMSNLAST_FILENM, 4) = "jpeg", "jpeg", Right(TP_EXAMSNLAST_FILENM, 3))%>
																		</a>
																		<!-- 파일명이 들어왔을 경우 노출 -->
																		<button type="button" class="btn_delete" onclick="delPicView('TP_EXAMSNLAST', 'EXAMSNLAST');"><span class="blind">삭제</span></button>
																	<%End If%>
																</span>
																<a href="javascript:openPicWin('EXAMSNLAST','TP_EXAMSNLAST');" class="btn_default" id="TP_EXAMSNLAST_REALFILENM_BTN"><span class="i_file">파일등록</span></a>
																<p class="info_txt">10MB 이하의 jpg, jpeg, gif, png 파일만 등록 가능</p>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
											<!-- 이전 학년도 수능 E -->

											<!-- 이번 학년도 수능 S -->
											<input type="hidden" name="yecheneungF" id="yecheneungF" value="N" /><!-- 예체능 플래그 값 -->

											<table class="table_new_type_01 botn" cellpadding="0" cellspacing="0" border="0" id="examArea2">
												<colgroup>
													<col width="230px">
													<col width="">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><%=g_TP_YEAR%> 수능 성적표</th>
														<td>
															<div class="input_file">
																<span class="file_name" id="TP_EXAMSN_REALFILENM">
																	<%If TP_EXAMSN_YN = "Y" Then%>
																		<a href="javascript:void(0)" onclick="openPicViewWin('EXAMSN', '<%=TP_FILE_PATH & "/" & TP_EXAMSN_FILENM%>');">
																			수능성적파일.<%=IIF(Right(TP_EXAMSN_FILENM, 4) = "jpeg", "jpeg", Right(TP_EXAMSN_FILENM, 3))%>
																		</a>
																		<!-- 파일명이 들어왔을 경우 노출 -->
																		<button type="button" class="btn_delete" onclick="delPicView('TP_EXAMSN', 'EXAMSN');"><span class="blind">삭제</span></button>
																	<%End If%>
																</span>
																<a href="javascript:openPicWin('EXAMSN','TP_EXAMSN');" class="btn_default"><span class="i_file">파일등록</span></a>
																<p class="info_txt">10MB 이하의 jpg, jpeg, gif, png 파일만 등록 가능</p>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
											<!-- 이번 학년도 수능 E -->

											<p class="teamplay_apply_text02">
												※ 실제 수능 성적과 입력된 성적이 다를 경우, 장학생 선발이 취소될 수 있으니 유의하여 등록해 주세요
											</p>
											<div class="btn_box">
												<a href="javascript:void(0);" id="partialSaveButton1" onclick="procMyUniv('proc_univ_state','j', 'P');" class="btn_l arrow_none type1"><span>임시 저장하기 <em>(1/3)</em></span></a>
											</div>
										</div>

										<!-- 2. 증명사진 -->
										<div class="apply_content02" id="info_step2">
											<div class="img_wrap" style="margin-top:90px;">
												<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/apply_title02.png" alt="증명사진"/>
											</div>

											<input type="hidden" id="TP_EXAMSNLAST_FILENM" name="TP_EXAMSNLAST_FILENM" value="<%=TP_EXAMSNLAST_FILENM%>"/>
											<input type="hidden" id="TP_EXAMSNLAST_YN" name="TP_EXAMSNLAST_YN" value="<%=TP_EXAMSNLAST_YN%>"/>

											<input type="hidden" id="TP_EXAMSN_FILENM" name="TP_EXAMSN_FILENM" value="<%=TP_EXAMSN_FILENM%>"/>
											<input type="hidden" id="TP_EXAMSN_YN" name="TP_EXAMSN_YN" value="<%=TP_EXAMSN_YN%>"/>

											<input type="hidden" id="TP_MEMPIC_FILENM" name="TP_MEMPIC_FILENM" value="<%=TP_MEMPIC_FILENM%>"/>
											<input type="hidden" id="TP_MEMPIC_YN" name="TP_MEMPIC_YN" value="<%=TP_MEMPIC_YN%>"/>

											<input type="hidden" id="TP_UNIVPASSFILE_YN" name="TP_UNIVPASSFILE_YN" value="N"/>

											<table class="table_new_type_01 mt50" cellpadding="0" cellspacing="0" border="0" id="examArea3">
												<colgroup>
													<col width="220px">
													<col width="">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">증명사진</th>
														<td class="taL">
															<div class="input_file">
																<span class="file_name" id="TP_MEMPIC_REALFILENM">
																	<%If TP_MEMPIC_YN ="Y" Then %>
																		<a href="javascript:void(0)" onclick="openPicViewWin('MEMPIC','<%=TP_FILE_PATH&"/"&TP_MEMPIC_FILENM%>');">증명사진.<%If right(TP_MEMPIC_FILENM,4)="jpeg" Then %>jpeg<%else%><%=right(TP_MEMPIC_FILENM,3)%><%End If %></a>
																		<!-- 파일명이 들어왔을 경우 노출 -->
																		<button type="button" class="btn_delete" onclick="delPicView('TP_MEMPIC', 'MEMPIC');"><span class="blind">삭제</span></button>
																	<%End If%>
																</span>
																<a href="javascript:openPicWin('MEMPIC','TP_MEMPIC');" class="btn_default"><span class="i_file">파일등록</span></a>
																<p class="info_txt">10MB 이하의 jpg, jpeg, gif, png 파일만 등록 가능</p>
															</div>
														</td>
													</tr>
												</tbody>
											</table>

											<div class="btn_box">
												<a href="javascript:void(0);" id="partialSaveButton2" onclick="snScoreX('proc_pic_state', 'P');" class="btn_l arrow_none type1"><span>임시 저장하기 <em>(2/3)</em></span></a>
											</div>
										</div>

										<!-- 3. 합격수기 -->
										<div class="apply_content03" id="info_step3">
											<input type="hidden" name="SW_TP_SEQ" id="SW_TP_SEQ" value="<%=T_TP_SEQ%>"/>

											<div class="img_wrap" style="margin-top:90px;">
												<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/apply_title03.png" alt="합격수기"/>
											</div>

											<%
												'수기등록 데이터 가져오기
												'============================================================
												'2022학년도 팀플부터는 AMS_TEAMPLAY_APPLY_SUGI 테이블 사용
												'============================================================
												Set contentDictionary = Server.CreateObject("Scripting.Dictionary")
												strSql = ""
												strSql = strSql & vbCrlf & "SELECT TAS_TASQ_CD, TAS_CONTENT"
												strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_APPLY_SUGI"
												' strSql = strSql & vbCrlf & "	INNER JOIN AMS_TEAMPLAY_EVT ON TAS_TP_SEQ = TP_SEQ AND TP_SENDYN = 'Y'" '최종지원 전에는 안보여야 한다면 활성화
												strSql = strSql & vbCrlf & "WHERE TAS_TP_SEQ = " & T_TP_SEQ & " AND TAS_APPLY_TYPE = '"&g_TP_TYPE&"'"
												Set objRs = amsObjDb.sqlQuery(strSql, 3)
												If Not (objRs.EoF And objRs.BoF) Then
													Do While Not objRs.EOF
														contentDictionary.Add CStr(objRs("TAS_TASQ_CD")), CStr(objRs("TAS_CONTENT"))
														objRs.moveNext
													Loop
												End If
												objRs.close
												Set objRs = Nothing
											%>
											<%
												'============================================================
												'2022학년도 팀플부터는 DB에서 합격수기 문항을 가져오도록 변경함
												'질문 항목 DB 저장(AMS_TEAMPLAY_APPLY_SUGI_QUESTION)
												'============================================================
								
												'질문 목록 가져오기
												strSql = ""
												strSql = strSql & vbCrlf & "SELECT"
												strSql = strSql & vbCrlf & "	TASQ_CD, TASQ_QUESTION, TASQ_QUESTION_ORDER, TASQ_ANSWER_MAX, TASQ_ANSWER_MIN"
												strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_APPLY_SUGI_QUESTION"
												strSql = strSql & vbCrlf & "WHERE TASQ_YEAR = '" & g_TP_YEAR & "' AND TASQ_CLS_CD = "&clsCd&" AND TASQ_APPLY_MODE_YN = 'Y' AND TASQ_TYPE = '" & g_TP_TYPE & "'"
												strSql = strSql & vbCrlf & "ORDER BY TASQ_QUESTION_ORDER ASC"
	
												Set objRs = amsObjDb.sqlQuery(strSql, 3)
												If Not objRs.EoF Then
													questionCount = objRs.recordCount '문항 개수
													questionIndex = 1 '문항 index
													Do While Not objRs.EOF
														TASQ_CD = objRs("TASQ_CD")
														TASQ_QUESTION = objRs("TASQ_QUESTION")
														TASQ_ANSWER_MAX = objRs("TASQ_ANSWER_MAX")
														TASQ_ANSWER_MIN = objRs("TASQ_ANSWER_MIN")
	
														If CStr(TASQ_ANSWER_MIN) = "0" Or CStr(TASQ_ANSWER_MIN) = "" Then
															TASQ_ANSWER_MIN_CHAR = 0
														Else
															TASQ_ANSWER_MIN_CHAR = TASQ_ANSWER_MIN / 2
														End If
														%>
															<!-- 합격수기 질문 <%=questionIndex%> // -->
															<div class="textarea_box" style="margin-top:40px;">
																<h4>
																	<label for="SW_CONTENT<%=questionIndex%>"><%=TASQ_QUESTION%></label>
																</h4>
	
																<%If questionIndex = 2 Then '2번째 문항이 '덕분에' 문항%>
																	<div class="img_wrap" style="padding-bottom:20px;">
																		<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/apply_con03_txt01.png" alt=""/>
																	</div>
																	<!-- *의 모양이 수정이 필요하다하여 이미지로 텍스트를 대체함 / 2023-11-29
																	<p class="ment">
																		※ 메가멘토, 커리큘럼, 실전 모의고사, 학습 콘텐츠(일일 수학 30제, 와플 플래너), *팀플장학제도 중 선택하여 답변 (중복 선택 가능)<br>
																		※ ‘<span>덕분에</span>’ 키워드를 반드시 포함하여 작성
																	</p>
																	-->
																<%End If%>
	
																<input type="hidden" id="ANSWER_MAX<%=questionIndex%>" value="<%=TASQ_ANSWER_MAX%>"/><!-- 입력 최대 값 -->
																<input type="hidden" id="ANSWER_MIN<%=questionIndex%>" value="<%=TASQ_ANSWER_MIN%>"/><!-- 입력 최소 값 -->
																<input type="hidden" id="TASQ_CD<%=questionIndex%>" name="TASQ_CD<%=questionIndex%>" value="<%=TASQ_CD%>"/><!-- 입력 최소 값 -->
	
																<textarea name="SW_CONTENT<%=questionIndex%>" id="SW_CONTENT<%=questionIndex%>"
																	onkeyup="fnChkByte('SW_CONTENT<%=questionIndex%>','SW_CONTENT<%=questionIndex%>_CNTVIEW', <%=TASQ_ANSWER_MAX%>);"
																	placeholder="한글 <%=TASQ_ANSWER_MIN_CHAR%>자(<%=InsertCommaIntoNumber(TASQ_ANSWER_MIN)%>byte) 이상 입력해 주세요."
																><%=contentDictionary.Item(CStr(TASQ_CD))%></textarea>
	
																<p class="taR info_txt"><span id="SW_CONTENT<%=questionIndex%>_CNTVIEW">0</span> / <%=InsertCommaIntoNumber(TASQ_ANSWER_MAX)%>byte</p>
															</div>
															<!-- // 합격수기 질문 <%=questionIndex%> -->
														<%
	
														questionIndex = questionIndex + 1
														objRs.moveNext
													Loop
												Else
													questionCount = 0 '문항 개수
													%>
														<div class="textarea_box">
															<h4 style="color :red;">
																<%=g_TP_YEAR%>학년도 합격수기를 위해 입력된 질문이 없습니다. (담당 개발팀에 문의해주세요)
															</h4>
														</div>
													<%
												End If
												objRs.close
												Set objRs = Nothing
											%>
											<input type="hidden" name="questionCount" id="questionCount" value="<%=questionCount%>"/><!-- 질문 개수 -->

											<div class="btn_box">
												<a href="javascript:void(0);" id="partialSaveButton3" onclick="SW_REGCHECK('proc_sugi_state', 'P', <%=questionCount%>);" class="btn_l arrow_none type1"><span>임시 저장하기 <em>(3/3)</em></span></a>
											</div>
										</div>
									</div>

									<div class="bg" id="info_step4">
										<div class="inner" style="padding-top:298px;">
											<h2><span>개인정보 활용 동의</span></h2>
											<h4 class="mt90">개인정보 수집 및 이용</h4>
											<div class="ag_box">
												<p>개인정보 보호법 제15조 제1항 4호에 따라 정보주체와 체결한 계약으로 정보주체의 동의없이 개인정보를 수집 및 이용합니다.</p>
												<ul class="list_txt">
													<li>
														<strong>[수집항목]</strong> 이름, 생년월일, 전화번호(자택, 휴대전화), 사진, 이메일주소, 출신 고등학교 및 계열정보,<br>
														&emsp;&emsp;&emsp;&emsp;&ensp;성적정보(24년 6월, 9월 평가원 모의고사, 수능 등 기타 성적에 관련 사항), 진학대학 및 학과/학번,<br>
														&emsp;&emsp;&emsp;&emsp;&ensp;예금주명 및 계좌번호(통장사본 포함), 대학 합격 증명서
													</li>
													<li>
														<strong>[처리목적]</strong> 장학생 선발에 따른 자격 및 본인확인, 장학생과 연락, 장학생 관리
													</li>
													<li>
														<strong>[보유 및 이용기간]</strong> 동의일로부터 5년
													</li>
												</ul>
											</div>
											

											<h4>개인정보의 마케팅 활용(사진 및 영상 사용)</h4>
											<div class="ag_box">
												<p>개인정보 보호법 제15조 제1항 4호에 따라 정보주체와 체결한 계약으로 정보주체의 동의없이 개인정보를 수집 및 이용합니다.</p>
												<ul class="list_txt">
													<li>
														<strong>[수집항목]</strong> 이름, 출신 고등학교 및 계열정보, 성적정보(24년 6월, 9월 평가원 모의고사, 수능 등 기타 성적에 관련 사항),<br>
														&emsp;&emsp;&emsp;&emsp;&ensp;진학대학 및 학과, 합격수기, 메가스터디교육㈜에서 촬영한 장학생의 사진(초상 등) 및 인터뷰 영상
													</li>
													<li>
														<strong>[처리목적]</strong> 메가스터디교육㈜의 각종 홍보&middot;마케팅(홈페이지&middot;공식블로그/유튜브, 브랜드북&middot;소속학원 내 게시&middot;설명회 등)에 활용
													</li>
													<li>
														<strong>[보유 및 이용기간]</strong> 동의일로부터 5년
													</li>
												</ul>
											</div>
										</div>
									</div>

									<div class="bottom_btn_box write">
										<!-- 활성화일 경우 class on -->
										<a href="javascript:void(0);" onclick="TPCOMPLETEREG(<%=questionCount%>);" class="btn_apply" id="TpCompleteBtn">최종 제출하기</a>
									</div>
								</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- container End -->
		
		<iframe id="runSource" name="runSource" style="width:0px;height:0px;display: block; position: absolute; top: -9999px; left: -9999px; overflow: hidden; font-size: 0; text-indent: 9999px;line-height: 0;"></iframe>
		<form id="form_reg_univ" name="form_reg_univ" method="post">
			<input type="hidden" id="form_mode" name="form_mode" value="reg_univ" />
			<input type="hidden" name="g" value="<%=topTabCode%>" />
			<input type="hidden" name="arr_Child" value="" />
			<input type="hidden" name="getUnivType" value="" />
			<input type="hidden" name="getUnivCode" value="" />
		</form>

		<!-- 지원대학 선택 레이어 -->
		<div class="pop_team_dim"></div>
		<div class="pop_team_wrap" id="divAppUnivList"></div>
		<!-- //지원대학 선택 레이어 -->
	</div>
	<!-- wrapper End -->
	<!--#include virtual="/library/include/common/bottom.asp" -->

	<script type="text/javascript">
		// 지원대학 등록
		function procMyUniv(mode, type, area) {
			var oForm = document.getElementById("form_proc_my_univ");
			oForm.form_mode.value = mode;
			oForm.getUnivType.value = type;

			if (oForm.TP_EXAMSNLAST_FILENM.value == "") {
				// alert("<%=g_TP_PREV_YEAR%>학년도 수능 성적표를 등록하세요.");
				alert("수능 성적표를 모두 등록해 주세요");
				fnScrollMove("#examArea1");
				return false;
			}
			
			if (oForm.TP_EXAMSN_FILENM.value == "") {
				// alert("<%=g_TP_YEAR%>학년도 수능 성적표를 등록하세요.");
				alert("수능 성적표를 모두 등록해 주세요");
				fnScrollMove("#examArea2");
				return false;
			}

			// 단위별 저장인지 전체 저장인지 체크(A: 전체저장, P: 단위저장)
			if (area == "P") {
				oForm.target="runSource";
				oForm.action="./challenge_write_save.asp";
				oForm.submit();
			}
			return true;
		}

		// 최종지원 버튼 활성화 여부 체크
		var TpCompleteCheck = function(type) {
			var oForm = document.getElementById("form_proc_my_univ");

			// 수능 성적표 체크
			if($("#TP_EXAMSNLAST_YN").val() != "Y" || $("#TP_EXAMSN_YN").val() != "Y") {
				return false;
			}

			// 증명사진 체크
			if($("#TP_MEMPIC_YN").val() != "Y") {
				return false;
			}

			// 합격수기 체크
			for(index = 1; index <= $("textarea[id^=SW_CONTENT]").length; index++){
				if ($("#SW_CONTENT" + index).val() == "") {
					return false;
				}
			}

			// 개인정보 활용 동의
			var PrivateInfoAgree = $(':radio[name="private_info_agree1"]:checked').val();
			if (PrivateInfoAgree == "N") {
				return false;
			}
			var maketInfoAgree = $(':radio[name="private_info_agree2"]:checked').val();
			if (maketInfoAgree == "N") {
				return false;
			}

			return true;
		}

		$(function(){
			// 최종지원하기 버튼 활성화 여부 체크
			TpCompleteCheckMain("");

			// 모든 입력값 변동시 체크
			$("input").on("click", function(e) {
				TpCompleteCheckMain("");
			});
			$("input").on("change", function(e) {
				TpCompleteCheckMain("");
			});
			$("textarea").on("change", function(e) {
				TpCompleteCheckMain("");
			});

			controlSaveButton1()
			controlSaveButton2()

			// 후기 글자 수
			<%If T_write_registration = "Y" Then%>
				var maxSugiByte = 0;
				<%For index = 1 To questionCount%>
					maxSugiByte = $("#ANSWER_MAX<%=index%>").val();
					fnChkByte('SW_CONTENT<%=index%>', 'SW_CONTENT<%=index%>_CNTVIEW', maxSugiByte);
				<%Next%>
			<%End If%>
		});
	</script>
</body>
</html>