<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include file="../cl_header.asp" -->
<!-- #include file="../challenge_s_vars.asp" -->
<%
	'================================================================
	'2021-12-09 / 이상준 / N수+고3 수시 장학 지원 통합 페이지
	'2022학년도 팀플 장학생부터는 DB에서 질문 목록을 가져와서 사용
	'================================================================
	' Response.Write "Ams_Mcode : " & Ams_Mcode
	' Response.Write "<br>"
	' Response.Write "gLoginMemId : " & gLoginMemId
	' Response.End
	defaultPageUrl = "/campus_common/" & g_TP_YEAR & "/" & g_TP_YEAR & "_teamplay/index.asp"

	If gLoginMemKind = "5" Then '관리자
		Call AlertAndPageMove("관리자로 로그인 중이라서 접근이 불가능합니다.", defaultPageUrl, "")
	ElseIf g_JungsiResultDateCheck <> "Y" Then
		Call AlertAndPageMove("팀플장학 발표 기간이 아닙니다.", defaultPageUrl, "")
	ElseIf gAmsMcodeCnt > 0 Then '재원생 인증을한 학생
		If g_JungsiResultTargetCheck = "O" Then
			Call AlertAndPageMove("이미 서류 제출이 완료되었습니다.", defaultPageUrl, "")
		ElseIf g_JungsiResultTargetCheck <> "Y" Then
			Call AlertAndPageMove("팀플장학 지급 대상자가 아닙니다.", defaultPageUrl, "")
		End If
	Else
		If gLoginMemKind = "" Then '로그인 안함
			Call ConfirmAndPageMove("로그인 후 참여 가능합니다.\n로그인 페이지로 이동하시겠습니까?", "/mypage/mypage.asp", defaultPageUrl)
		ElseIf gLoginMemKind = "3" Then '학부모
			Call AlertAndPageMove("학부모 계정으로는 서류제출이 불가합니다.\n학생 계정으로 로그인해주세요.", defaultPageUrl, "")
		ElseIf clsCd = 0 Then
			Call ConfirmAndPageMove("재원생 인증 후 참여 가능합니다.\n재원생 인증을 하시겠습니까?", "/mypage/student/my_confirm.asp", defaultPageUrl)
		End If
	End If
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
		// alert("팀플장학 지급을 위하여 추가 등록할 서류(합격증&통장사본)가 준비되었습니까?");
		
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
		
		<div id="container" style="padding-bottom:0px !important;">
			<div id="div_cont">
				<div id="div_full" class="div_con">
					<!-- 상단 공통 이미지 -->
					<!-- #include file="../cl_image.asp" -->
					<!-- // 상단 공통 이미지 -->
					
					<div class="div_con0">
						<div class="con_wrap">
							<div class="teamplay_apply result pt60">
								<form name="form_proc_my_univ" id="form_proc_my_univ" method="post" action="">
									<input type="hidden" name="form_mode" id="form_mode" value="">
									<input type="hidden" name="getUnivType" id="getUnivType" value="">
									<input type="hidden" name="cMode" id="cMode" value="">
									<!-- 2019.11.21 처리페이지 고3/재수반 합치기 위해 추가 -->
									<input type="hidden" name="getClsCd" id="getClsCd" value="<%=clsCd%>">

									<div class="inner">
										<div class="apply_info txtc">
											<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_con_top_txt.png" alt=""/>
										</div>
										
										<div class="inner_title" style="padding-top:160px;">
											<h2>
												<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_con01_title.png" alt="장학금 지급 서류 등록">
											</h2>
											<p class="teamplay_apply_text02">
												<strong><%=gLoginMemName%></strong>님, 장학금 지급을 위해 아래 정보를 모두 등록해 주세요.
											</p>
										</div>

										<div class="teamplay_img_wrap2" id="inputArea1">
											<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_apply_title01.png" alt="최종 진학대학 합격증명서 등록"/>
										</div>
										<%
											'최종 진학대학 가져오기 S
											strSql = ""
											strSql = strSql & vbcrlf & "SELECT"
											strSql = strSql & vbcrlf & "	DU_UNIV_CD"
											strSql = strSql & vbcrlf & "	, DU_UNIV_NAME"
											strSql = strSql & vbcrlf & "	, DU_COLLECT_UNIT"
											strSql = strSql & vbcrlf & "	, CASE UA_APP_SEASON"
											strSql = strSql & vbcrlf & "		WHEN 'S' THEN '수시'"
											strSql = strSql & vbcrlf & "		WHEN 'F' THEN '정시'"
											strSql = strSql & vbcrlf & "		ELSE ''"
											strSql = strSql & vbcrlf & "	END AS UA_APP_SEASON_TEXT"
											strSql = strSql & vbcrlf & "FROM"
											strSql = strSql & vbcrlf & "	AMS_UNIV_APPLY"
											strSql = strSql & vbcrlf & "	INNER JOIN AMS_DB_UNIV ON DU_UNIV_CD = UA_UNIV_CD"
											strSql = strSql & vbcrlf & "WHERE"
											strSql = strSql & vbcrlf & "	UA_YEAR = " & g_TP_YEAR
											strSql = strSql & vbcrlf & "	AND UA_MEM_CD = " & Ams_Mcode
											strSql = strSql & vbcrlf & "	AND UA_ENTER_YN = 'Y'"
											strSql = strSql & vbcrlf & "	AND UA_PASS_YN IN ('Y', 'A')"
											strSql = strSql & vbcrlf & "ORDER BY"
											strSql = strSql & vbcrlf & "	UA_APP_SEASON ASC"

											Set objRs = amsObjDb.sqlQuery(strSql, 3)
											If Not (objRs.EoF And objRs.BoF) Then
												DU_UNIV_CD = objRs("DU_UNIV_CD")
												DU_UNIV_NAME = objRs("DU_UNIV_NAME")
												DU_COLLECT_UNIT = objRs("DU_COLLECT_UNIT")
												UA_APP_SEASON_TEXT = objRs("UA_APP_SEASON_TEXT")
											Else
												DU_UNIV_CD = 0
												DU_UNIV_NAME = "<span class='ph_in'>진학대학 정보를 입력해 주세요</span>"
												DU_COLLECT_UNIT = "<span class='ph_in'>진학학과 정보를 입력해 주세요</span>"
												UA_APP_SEASON_TEXT = "합격 내역이 존재하지 않습니다"
											End If
											objRs.close
											Set objRs = Nothing
											'최종 진학대학 가져오기 E
										%>
										<table class="table_new_type_01 account" cellpadding="0" cellspacing="0" border="0" id="examArea3">
											<colgroup>
												<col width="230px">
												<col width="">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">
														<em class="essen">* </em>최종 진학대학
													</th>
													<td>
														<div class="input_file univ">
															<input type="hidden" id="DU_UNIV_CD" name="DU_UNIV_CD" value="<%=DU_UNIV_CD%>"/>
															<div class="input_wrap">
																<span class="title_in">대학 </span><%=DU_UNIV_NAME%>
																<br>
																<span class="title_in">학과 </span><%=DU_COLLECT_UNIT%>
															</div>

															<%
																passUnivType = "" '수시-정시 합격 입력 구분
																
																If CDbl("2023"&"1201"&"100000") <= CDbl(GetNowDate()) And CDbl(GetNowDate()) <= CDbl("2024"&"0102"&"235959") Then
																	passUnivType = "susi"
																ElseIf CDbl("2024"&"0103"&"000000") <= CDbl(GetNowDate()) And CDbl(GetNowDate()) <= CDbl("2024"&"0229"&"235959") Then
																	passUnivType = "regular"
																End If
															%>

															<a href="/mypage/teamplay_info/?g=<%=passUnivType%>&getUnivType=j&arr_Child=" class="btn_default mt15">
																<%If CDbl(DU_UNIV_CD) = 0 Then%>
																	<span>대학 등록</span>
																<%Else%>
																	<span>대학 수정</span>
																<%End If%>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<th scope="row"><em class="essen">* </em>최종 진학대학<br>합격증명서</th>
													<td>
														<div class="input_file account">
															<%
																'대학 합격 증명서 파일 가져오기 S
																strSql = ""
																strSql = strSql & vbcrlf & "SELECT"
																strSql = strSql & vbcrlf & "	TP_UNIVPASSFILE_YN"
																strSql = strSql & vbcrlf & "	, TP_UNIVPASSFILE_FILENM"
																strSql = strSql & vbcrlf & "FROM"
																strSql = strSql & vbcrlf & "	AMS_TEAMPLAY_EVT"
																strSql = strSql & vbcrlf & "WHERE"
																strSql = strSql & vbcrlf & "	TP_TYPE = 'F'"
																strSql = strSql & vbcrlf & "	AND TP_YEAR = " & g_TP_YEAR
																strSql = strSql & vbcrlf & "	AND TP_MEM_CD = " & Ams_Mcode

																Set objRs = amsObjDb.sqlQuery(strSql, 3)
																If Not (objRs.EoF And objRs.BoF) Then
																	TP_UNIVPASSFILE_YN = objRs("TP_UNIVPASSFILE_YN")
																	TP_UNIVPASSFILE_FILENM = objRs("TP_UNIVPASSFILE_FILENM")
																Else
																	TP_UNIVPASSFILE_YN = "N"
																	TP_UNIVPASSFILE_FILENM = NULL
																End If
																objRs.close
																Set objRs = Nothing

																TP_FILE_PATH = gTPSaveUrl & "/" & TP_UNIVPASSFILE_FILENM
																'대학 합격 증명서 파일 가져오기 E
															%>
															<input type="hidden" id="TP_UNIVPASSFILE_FILENM" name="TP_UNIVPASSFILE_FILENM" value="<%=TP_UNIVPASSFILE_FILENM%>"/>
															<input type="hidden" id="TP_UNIVPASSFILE_YN" name="TP_UNIVPASSFILE_YN" value="<%=TP_UNIVPASSFILE_YN%>"/>

															<span class="file_name" id="TP_UNIVPASSFILE_REALFILENM">
																<%If TP_UNIVPASSFILE_YN = "Y" Then %>
																	<a href="javascript:void(0)" onclick="openPicViewWin('UNIVPASSFILE','<%=TP_FILE_PATH%>');">
																		대학합격증명서파일.
																		<%If right(TP_UNIVPASSFILE_FILENM, 4) = "jpeg" Then%>
																			jpeg
																		<%Else%>
																			<%=Right(TP_UNIVPASSFILE_FILENM, 3)%>
																		<%End if%>
																	</a>
																	<!-- 파일명이 들어왔을 경우 노출 -->
																	<button type="button" class="btn_delete" onclick="delPicView('TP_UNIVPASSFILE', 'UNIVPASSFILE');"><span class="blind">삭제</span></button>
																<%Else%>
																	<!-- 이미지 등록 -->
																<%End If%>
															</span>
															<a href="javascript:openPicWin('UNIVPASSFILE','TP_UNIVPASSFILE');" class="btn_default"><span>파일 등록</span></a>
															<p class="info_txt">10MB 이하의 jpg, jpeg, gif, png 파일만 등록 가능</p>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
										
										<div class="info_txt_area">
											<%If CDbl("2024"&"0108"&"000000") <= CDbl(GetNowDate()) And CDbl(GetNowDate()) <= CDbl("2024"&"0229"&"235959") Then%>
												<p class="info_txt account">※ 수시 지원대학 입력 및 수정은 학원으로 별도 문의 부탁드립니다.</p>
											<%End If%>
										</div>

										<div class="teamplay_img_wrap2" id="inputArea2">
											<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_apply_title02.png" alt="계좌정보 및 통장사본 등록"/>
										</div>
										<table class="table_new_type_01 account" cellpadding="0" cellspacing="0" border="0" id="examArea2">
											<colgroup>
												<col width="230px">
												<col width="">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row"><em class="essen">* </em>본인 계좌 정보</th>
													<td class="taL">
														<%
															'계좌, 통장사본 파일 가져오기 S
															strSql = ""
															strSql = strSql & vbcrlf & "SELECT"
															strSql = strSql & vbcrlf & "	TP_MEMBANK_YN"
															strSql = strSql & vbcrlf & "	, TP_MEMBANK_FILENM"
															strSql = strSql & vbcrlf & "	, TP_MEMBANK_UNM"
															strSql = strSql & vbcrlf & "	, TP_MEMBANK_BNM"
															strSql = strSql & vbcrlf & "	, TP_MEMBANK_NUM"
															strSql = strSql & vbcrlf & "FROM"
															strSql = strSql & vbcrlf & "	AMS_TEAMPLAY_EVT"
															strSql = strSql & vbcrlf & "WHERE"
															strSql = strSql & vbcrlf & "	TP_TYPE = 'F'"
															strSql = strSql & vbcrlf & "	AND TP_YEAR = " & g_TP_YEAR
															strSql = strSql & vbcrlf & "	AND TP_MEM_CD = " & Ams_Mcode

															Set objRs = amsObjDb.sqlQuery(strSql, 3)
															If Not (objRs.EOF And objRs.BOF) Then
																TP_MEMBANK_YN = objRs("TP_MEMBANK_YN")
																TP_MEMBANK_FILENM = objRs("TP_MEMBANK_FILENM")
																TP_MEMBANK_UNM = objRs("TP_MEMBANK_UNM")
																TP_MEMBANK_BNM = objRs("TP_MEMBANK_BNM")
																TP_MEMBANK_NUM = objRs("TP_MEMBANK_NUM")
															Else
																TP_MEMBANK_YN = ""
																TP_MEMBANK_FILENM = ""
																TP_MEMBANK_UNM = ""
																TP_MEMBANK_BNM = ""
																TP_MEMBANK_NUM = ""
															End If
															objRs.close
															Set objRs = Nothing

															If TP_MEMBANK_UNM = "" Or IsNull(TP_MEMBANK_UNM) Then
																TP_MEMBANK_UNM = gLoginMemName
															End If

															TP_FILE_PATH = gTPSaveUrl & "/" & TP_MEMBANK_FILENM
															'계좌, 통장사본 파일 가져오기 E
														%>
														<div class="input_file account">
															<input type="text" name="TP_MEMBANK_UNM" id="TP_MEMBANK_UNM" value="<%=TP_MEMBANK_UNM%>" size="10" maxlength="10" style="width:130px;" placeholder="예금주명">

															<span style="display:inline-block; padding-top:6px;">&nbsp;&nbsp;</span>

															<select id="TP_MEMBANK_BNM" name="TP_MEMBANK_BNM" class="select_box" style="width:130px;">
																<option value="">은행선택</option>
																<%
																	' 은행 정보
																	strSql = "Exec dbo.Msp_Get_Com_Dtl_01 149"
																	Set objRs = amsObjDb.sqlQuery(strSql, 3)
																	IF NOT objRs.EOF THEN
																		RDS_BANK = objRs.GetRows()
																	Else 
																		RDS_BANK = NULL
																	END If

																	If isArray(RDS_BANK) Then 
																		RC_NO = 0
																		For ii = 0 To Ubound(RDS_BANK, 2)
																			BANK_CD  = RDS_BANK(0, ii)
																			BANK_NAME = RDS_BANK(1, ii)
																			BANK_NAME = Trim(BANK_NAME)
																			If BANK_NAME <> "기타" Then
																				%>
																					<option value="<%=BANK_NAME%>" <%=IIF(TP_MEMBANK_BNM = BANK_NAME, "selected", "")%>><%=BANK_NAME%></option>
																				<%
																			End If
																		Next
																	End If
																%>
															</select> 
															<span style="display:inline-block; padding-top:6px;">&nbsp;&nbsp;</span>

															<input class="ml05" type="text" name="TP_MEMBANK_NUM" id="TP_MEMBANK_NUM" maxlength="20" placeholder="계좌번호 (-)없이 숫자만 입력" onKeyUp="fnNumberChk(this)" value="<%=TP_MEMBANK_NUM%>">
														</div>
													</td>
												</tr>
												<tr>
													<th scope="row"><em class="essen">* </em>본인 통장사본</th>
													<td>
														<div class="input_file account">
															<input type="hidden" id="TP_MEMBANK_FILENM" name="TP_MEMBANK_FILENM" value="<%=TP_MEMBANK_FILENM%>"/>
															<input type="hidden" id="TP_MEMBANK_YN" name="TP_MEMBANK_YN" value="<%=TP_MEMBANK_YN %>"/>

															<span class="file_name" id="TP_MEMBANK_REALFILENM">
																<%If TP_MEMBANK_YN = "Y" Then%>
																	<a href="javascript:void(0)" onclick="openPicViewWin('MEMBANK','<%=TP_FILE_PATH%>');">
																		통장사본.
																		<%If right(TP_MEMBANK_FILENM, 4) = "jpeg" Then%>
																			jpeg
																		<%Else%>
																			<%=right(TP_MEMBANK_FILENM, 3)%>
																		<%End if%>
																	</a>
																	<button type="button" class="btn_delete" onclick="delPicView('TP_MEMBANK', 'MEMBANK');"><span class="blind">삭제</span></button>
																<%Else%>
																	<!-- 이미지 등록 -->
																<%End If%>
															</span>

															<a href="javascript:void(0)" class="btn_default" onClick="openPicWin('MEMBANK','TP_MEMBANK');">
																<span>파일 등록</span>
															</a>
															<p class="info_txt">
																- 10MB 이하의 jpg, jpeg, gif, png 파일만 등록 가능<br>
																- 본인 계좌 정보에 입력한 정보와 일치하는 본인 통장사본 등록<br>
																- 은행명, 예금주명, 계좌번호가 확인 가능한 이미지 등록
															</p>
														</div>
													</td>
												</tr>
											</tbody>
										</table>

										<h2 style="padding-top:283px;">
											<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_con02_title.png" alt="장학금 지급 안내">
										</h2>
										<div class="txtc mt45">
											<strong class="payment_info_txt">
												메가스터디교육㈜(이하 ‘회사’)는 메가스터디학원 <em class="blt_star">*</em>팀플장학생으로 선정된 <%=gLoginMemName%>(이하 “장학생”)에게,<br>
												장학생이 입학한 대학을 통하여 2024년 5월경에 장학금 100만원을 지급합니다.<br>
												<span>(해당 대학의 사정에 따라 지급 시기가 변경될 수 있습니다.)</span><br>
												단, 장학생이 다음의 제3자 제공에 대해 동의하지 않을 경우, 해당 장학생 선정은 취소되고 장학금이 지급되지 않습니다.
											</strong>
										</div>

										<h2 id="inputArea3" style="padding-top:300px;">
											<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_con03_title.png" alt="개인정보 수집·이용·취급 위탁 동의">
										</h2>
										
										<h3 class="box_title">장학금 지급을 위한 개인정보 제3자 제공 동의</h3>
										<div class="ag_box account mt20">
											<strong>개인정보의 제공에 관한 사항</strong>
											<ul class="list_txt mt10">
												<li><strong>1. 개인정보 제공받는 자</strong> : 장학금 지급 대상자의 입학 대학</li>
												<li><strong>2. 개인정보 제공 목적</strong> : 입학 대학을 통해 “메가스터디교육㈜”가 장학생에게 장학금 지급을 위함</li>
												<li><strong>3. 개인정보 제공 항목</strong> : 이름, 생년월일, 학번, 예금주명 및 계좌번호(통장사본 포함) </li>
												<li><strong>4. 개인정보 제공받은 자의 보유 및 이용 기간</strong> : 동의일로부터 1년</li> 
											</ul>
										</div>
										<div class="box_bottom_info">
											<p class="info_txt account">※ 위 개인정보 수집·이용·취급 위탁에 대한 동의를 거부할 수 있습니다. 단, 동의하지 않으실 경우 <em class="blt_star">*</em>팀플장학금 지급이 불가합니다. </p>
											<ul class="radio_list taR">
												<li class="radio">
													<input type="radio" name="private_info_agree1" id="agree1" value="Y">
													<label for="agree1">동의함</label>
												</li>
												<li class="radio">
													<input type="radio" name="private_info_agree1" id="agree2" value="N" checked>
													<label for="agree2">동의안함</label>
												</li>
											</ul>
										</div>
									</div>

									<div class="bottom_btn_box" style="padding-top:150px;">
										<!-- 활성화일 경우 class on -->
										<a href="javascript:void(0);" onclick="fnResultCommit();" class="btn_apply" id="TpCompleteBtn">최종 제출하기</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<iframe id="runSource" name="runSource" style="width:0px; height:0px; display: none;"></iframe>

		<form id="form_reg_univ" name="form_reg_univ" method="post">
			<input type="hidden" id="form_mode" name="form_mode" value="reg_univ" />
			<input type="hidden" name="g" value="<%=topTabCode%>" />
			<input type="hidden" name="arr_Child" value="" />
			<input type="hidden" name="getUnivType" value="" />
			<input type="hidden" name="getUnivCode" value="" />
		</form>
	</div>
	<!-- #include virtual="/library/include/common/bottom.asp" -->

	<script type="text/javascript">
		// 최종 제출하기
		function fnResultCommit() {
			var frmInfo = document.getElementById("form_proc_my_univ");

			if(TpCompleteCheck("alert") == true) {
				if (confirm("최종 제출 후에는 수정이 불가합니다.\n제출하시겠습니까?")) {
					frmInfo.target = "runSource";
					frmInfo.action = "./challenge_result_save.asp";
					frmInfo.submit();
				}
				else {
					return false;
				}
			}
			else {
				return false;
			}
		}

		// 최종지원 버튼 활성화 여부 체크
		var TpCompleteCheck = function(type) {
			var oForm = document.getElementById("form_proc_my_univ");

			// 최종 진학대학 체크
			if($("#DU_UNIV_CD").val() == "0") {
				if(type == "alert"){
					alert("진학대학(학과) 정보를 입력해 주세요.");
					fnScrollMove("#inputArea1");
				}
				return false;
			}

			// 합격증명서 체크
			if($("#TP_UNIVPASSFILE_YN").val() != "Y") {
				if(type == "alert"){
					alert("최종 진학대학 합격증명서를 모두 등록해 주세요.");
					fnScrollMove("#inputArea1");
				}
				return false;
			}

			// 계좌 정보 체크
			if($("#TP_MEMBANK_BNM").val() == "" || $("#TP_MEMBANK_NUM").val() == "") {
				if(type == "alert"){
					alert("본인 계좌정보를 등록해 주세요.");
					fnScrollMove("#inputArea2");
				}
				return false;
			}

			// 통장사본 체크
			if($("#TP_MEMBANK_YN").val() != "Y") {
				if(type == "alert"){
					alert("통장사본을 등록해 주세요.");
					fnScrollMove("#inputArea2");
				}
				return false;
			}

			// 개인정보 활용 동의
			if ($(':radio[name="private_info_agree1"]:checked').val() == "N") {
				if(type == "alert"){
					alert("장학금 지급을 위한 개인정보 수집-이용-취급 위탁에 동의하셔야 최종 제출이 가능합니다.");
					fnScrollMove("#inputArea3");
				}
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
			$("select").on("change", function(e) {
				TpCompleteCheckMain("");
			});
			$("textarea").on("change", function(e) {
				TpCompleteCheckMain("");
			});
		});
	</script>

	<script src="/public/js/TweenMax.min.js"></script>
	<script type="text/javascript">
		var acObject = $('.act_wrap');

		var motion1 = new TimelineMax({delay:0,repeat:0});
		motion1.to(".act01", 0.6, {opacity:1, top:110});

		var motion1_1 = new TimelineMax({delay:0.8,repeat:0});
		motion1_1.to(".act02", 0.6, {opacity:1, top:0});

		var motion2 = new TimelineMax({delay:1.5,repeat:0});
		motion2.to(".act03", 0.6, {opacity:1, top:640});

		var motion3_1 = new TimelineMax({delay:1.8,repeat:0});
		motion3_1.to(".act04", 0.6, {opacity:1, scale:1, ease:Power3.easeOut});

		var motion4_1 = new TimelineMax({delay:1.5,repeat:-1, yoyo:true});
		motion4_1.to(".act05", 0.6, {opacity:1});

		var motion4_2 = new TimelineMax({delay:2,repeat:-1, yoyo:true});
		motion4_2.to(".act06", 0.6, {opacity:1});
	</script>
</body>
</html>