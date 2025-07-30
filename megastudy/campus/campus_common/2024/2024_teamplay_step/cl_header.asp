<!-- #include file="./challenge_s_vars.asp" -->
<%
	' include 파일 challenge_s_vars.asp 파일은 수시진행시 -> susi, 정시진행시 -> jungsi 폴더로 변경해야함 / 2021-11-26 하나로 통합 진행 중...
	' 팀플 장학 공통 헤더 파일

	Dim s_txtStateText, gAmsMcodeCnt, g_IngCheck, g_SusiEventDateCheck, g_SusiEventTargetCheck, g_SusiResultDateCheck, g_SusiResultTargetCheck
	Dim g_JungsiEventDateCheck, g_JungsiEventTargetCheck, g_JungsiResultDateCheck, g_JungsiResultTargetCheck

	formFilter() ' SQL 인젝션 문자열 필터링
	' 회원 정보
	g_IngCheck = "N" '진행중 체크
	g_image_switch = "on" '버튼 이미지 컨트롤
	g_JungsiEventDateCheck = "N" '정시 이벤트 기간 체크
	g_JungsiEventTargetCheck = "N" '정시 이벤트 대상자 체크
	g_JungsiResultDateCheck = "N" '정시발표 이벤트 기간 체크
	g_JungsiResultTargetCheck = "N" '정시발표 이벤트 대상자 체크

	'START - 정시 장학생 일정 -------------------------------------------------------------------------------------------------------------------------------------
	'지원 일정 / 1차 서류 제출
	If CSTr(GetServerGubun()) = "dev" Then '개발서버 체크
		F_applyStartTime = "2023"&"1101"&"100000" '정시 장학생 지원 시작일
		F_applyEndTime = "2023"&"1222"&"235959" '정시 장학생 지원 마감일
	Else
		F_applyStartTime = "2023"&"1208"&"100000" '정시 장학생 지원 시작일
		F_applyEndTime = "2023"&"1222"&"235959" '정시 장학생 지원 마감일
	End If

	'발표 일정 / 2차 서류 제출
	If CSTr(GetServerGubun()) = "dev" Then '개발서버 체크
		F_resultStartTime = "2023"&"0111"&"100000" '정시 장학생 발표 시작일
		F_resultEndTime = "2024"&"0229"&"235959" '정시 장학생 발표 마감일
	Else
		F_resultStartTime = "2023"&"1226"&"100000" '정시 장학생 발표 시작일
		F_resultEndTime = "2024"&"0229"&"235959" '정시 장학생 발표 마감일
	End If

	'본사 IP 체크, 실서버에서 먼저 테스트할 수 있도록 개방 / 2022-12-08 / 이상준
	Select Case Request.ServerVariables("REMOTE_HOST")
		Case "210.181.48.62"
			' F_applyStartTime = "2023"&"1101"&"100000" '정시 장학생 지원 시작일
			' F_applyEndTime = "2023"&"1222"&"235959" '정시 장학생 지원 마감일
	End Select
	'END - 정시 장학생 일정 -------------------------------------------------------------------------------------------------------------------------------------
	
	'START - 학생 정보 확인 및 예외처리 -------------------------------------------------------------------------------------------------------------------------------------
	If gLoginOk Then
		' g_TP_YEAR : 올해 팀플 학년도
		' g_TP_TYPE : S 수시, F 정시

		' 재원인증여부 체크
		strSql = ""
		strSql = strSql & vbCrlf & "SELECT COUNT(*)"
		strSql = strSql & vbCrlf & "FROM megastudy..MG_MEMBER"
		strSql = strSql & vbCrlf & "WHERE uId = '" & gLoginMemId & "'"
		strSql = strSql & vbCrlf & "	AND ISNULL(Ams_Mem_Cd, '') <> ''"
		Set objRs = objdb.sqlQuery(strSql, 3)
		If (objRs.BOF OR objRs.EOF) Then
			gAmsMcodeCnt = 0
		Else
			gAmsMcodeCnt = objRs(0)
		End If
		objRs.close
		Set objRs = Nothing
	
		strSql = ""
		strSql = strSql & vbCrlf & "SELECT"
		strSql = strSql & vbCrlf & "	TOP 1"
		strSql = strSql & vbCrlf & "	GH_ACA_CD, LM.LM_CLS_CD, MR.Ams_Mem_Cd, CM.CM_COURSE_NM, CL_COLE_CD, CS_SUB_CD"
		strSql = strSql & vbCrlf & "	, (SELECT TOP 1 MD_GRD FROM MEGAAMS..AMS_MEM_DTL WHERE MD_MEM_CD = MR.Ams_Mem_Cd) AS MD_GRD"
		strSql = strSql & vbCrlf & "FROM megastudy..MG_MEMBER AS MR WITH(NOLOCK)"
		strSql = strSql & vbCrlf & "	INNER JOIN MEGAAMS..AMS_GRP_HIS AS GH WITH(NOLOCK) ON MR.AMS_MEM_CD = GH.GH_MEM_CD"
		strSql = strSql & vbCrlf & "	INNER JOIN MEGAAMS..AMS_COU_LEC AS CL WITH(NOLOCK) ON CL.CL_COLE_CD = GH.GH_COLE_CD"
		strSql = strSql & vbCrlf & "	INNER JOIN MEGAAMS..AMS_COURSE_MAS AS CM WITH(NOLOCK) ON CL.CL_COU_CD = CM.CM_COURSE_CD"
		strSql = strSql & vbCrlf & "	INNER JOIN MEGAAMS..AMS_COURSE_SUB AS CS WITH(NOLOCK) ON CL.CL_SUB_CD = CS.CS_SUB_CD"
		strSql = strSql & vbCrlf & "	INNER JOIN MEGAAMS..AMS_LEC_MAS AS LM WITH(NOLOCK) ON CL.CL_LEC_CD = LM.LM_LEC_CD"
		strSql = strSql & vbCrlf & "	INNER JOIN MEGAAMS..AMS_ACA_MAS AS AM WITH(NOLOCK) ON GH.GH_ACA_CD = AM.AM_ACA_CD"
		strSql = strSql & vbCrlf & "WHERE"
		strSql = strSql & vbCrlf & "	("
		strSql = strSql & vbCrlf & "		MR.uId = '"& gLoginMemId &"'"
		strSql = strSql & vbCrlf & "		AND CS_SUB_CD = "
		strSql = strSql & vbCrlf & "			CASE"
		If IsDevSvr() = True Then '테스트서버 <-> 실서버 과정 코드가 달라서 분기 필요
			strSql = strSql & vbCrlf & "				WHEN GH_ACA_CD IN (27, 44, 38, 121) THEN 1836" '2023 재종 10월 과정 : 신촌, 양지기숙, 서초기숙, 안성기숙
			strSql = strSql & vbCrlf & "				WHEN GH_ACA_CD IN (11, 12, 17, 41, 115, 74, 75, 76, 45, 119) THEN 1837" '2023 재종 11월 과정 : 강남, 서초, 강북,  노량진, 송파, 부천, 분당, 일산, 평촌, 테스트
		Else
			strSql = strSql & vbCrlf & "				WHEN GH_ACA_CD IN (27, 44, 38, 121) THEN 1819" '2023 재종 10월 과정 : 신촌, 양지기숙, 서초기숙, 안성기숙
			strSql = strSql & vbCrlf & "				WHEN GH_ACA_CD IN (11, 12, 17, 41, 115, 74, 75, 76, 45, 119) THEN 1820" '2023 재종 11월 과정 : 강남, 서초, 강북,  노량진, 송파, 부천, 분당, 일산, 평촌, 테스트
		End If
		strSql = strSql & vbCrlf & "				ELSE 0"
		strSql = strSql & vbCrlf & "			END"
		strSql = strSql & vbCrlf & "		AND YEAR(CS.CS_CO_SDT) = " & g_TP_PREV_YEAR
		strSql = strSql & vbCrlf & "		AND GH.GH_BE_CD IN (11, 12)" '11 : 정상, 12 : 퇴원, 13 : 전반, 14 : 전반취소(폐강), 31:퇴원
		strSql = strSql & vbCrlf & "		AND LM.LM_CLS_CD IN (11)"' 11 재수종합, 12 연합-재학
		strSql = strSql & vbCrlf & "		AND(" '2022-12-20 학사팀 김새롬 : 기숙학원은 환불, 수강취소한 학생 지원 허용
		strSql = strSql & vbCrlf & "			(AM_REG_YN = 'Y')" '기숙학원
		strSql = strSql & vbCrlf & "			OR"
		strSql = strSql & vbCrlf & "			(AM_REG_YN = 'N' AND GH_REFUND_CD IS NULL)" '일반학원
		strSql = strSql & vbCrlf & "		)"
		strSql = strSql & vbCrlf & "	)"
		strSql = strSql & vbCrlf & "ORDER BY CM.CM_COURSE_NM DESC"

		Set objRs = objdb.sqlQuery(strSql, 3)
		If (objRs.BOF OR objRs.EOF) Then
			clsCd = 0
			acaCd = 0
			mGrd = 0
			mColeCd = 0
			g_TP_SENDYN = "N"
		Else
			' 학생 반 선택값
			acaCd = objRs("GH_ACA_CD")
			clsCd = objRs("LM_CLS_CD")
			Ams_Mcode = objRs("Ams_Mem_Cd")
			cmNm = objRs("CM_COURSE_NM")
			mGrd = objRs("MD_GRD")
			mColeCd = objRs("CL_COLE_CD")
			subCd = objRs("CS_SUB_CD") '과정 코드

			' 장학 신청 단계 정보 가져오기
			strSql = ""
			strSql = strSql & vbCrlf & "SELECT ISNULL(TP_SENDYN, 'N') TP_SENDYN"
			strSql = strSql & vbCrlf & "	, ISNULL(TP_UNIVPASSFILE_YN, 'N') TP_UNIVPASSFILE_YN"
			strSql = strSql & vbCrlf & "	, TP_EXAM_YN"
			strSql = strSql & vbCrlf & "	, TP_EXAMSN_YN, TP_MEMPIC_YN"
			strSql = strSql & vbCrlf & "	, ("
			strSql = strSql & vbCrlf & "		SELECT"
			strSql = strSql & vbCrlf & "			COUNT(TAS_CD)"
			strSql = strSql & vbCrlf & "		FROM"
			strSql = strSql & vbCrlf & "			AMS_TEAMPLAY_APPLY_SUGI_QUESTION"
			strSql = strSql & vbCrlf & "			INNER JOIN AMS_TEAMPLAY_APPLY_SUGI ON TAS_TASQ_CD = TASQ_CD"
			strSql = strSql & vbCrlf & "		WHERE"
			strSql = strSql & vbCrlf & "			TASQ_YEAR = " & g_TP_YEAR
			strSql = strSql & vbCrlf & "			AND TASQ_TYPE = '" & g_TP_TYPE & "'"
			strSql = strSql & vbCrlf & "			AND TASQ_CLS_CD = " & clsCd
			strSql = strSql & vbCrlf & "			AND TASQ_APPLY_MODE_YN = 'Y'"
			strSql = strSql & vbCrlf & "			AND TAS_MEM_CD = " & Ams_Mcode
			strSql = strSql & vbCrlf & "	) AS TP_SUGI_CNT"
			strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_EVT(NOLOCK)"
			strSql = strSql & vbCrlf & "WHERE TP_MEM_CD = '" & Ams_Mcode & "' AND TP_MEM_ID = '" & gLoginMemId & "'"
			strSql = strSql & vbCrlf & "	AND TP_YEAR = '" & g_TP_YEAR & "' AND TP_TYPE = '" & g_TP_TYPE & "'"

			' 1단계 신청 정보 TP_UNIVPASSFILE_YN
			' 2단계(기본정보 입력 완료 여부) : TP_EXAM_YN
			' 3단계(인증자료 등록 여부) : TP_MEMPIC_YN(증명사진), TP_EXAMSN_YN(수능 성적표 등록 여부)
			' 4단계(수기등록 여부) : TP_SUGI_CNT > 0
			' 최종: g_TP_SENDYN

			Set sRs = amsObjDb.sqlQuery(strSql, 3)
			If Not (sRs.EoF And sRs.BoF) Then
				g_TP_SENDYN = sRs("TP_SENDYN")
				step1 = sRs("TP_EXAM_YN")
				step2 = sRs("TP_UNIVPASSFILE_YN")
				step3_1 = sRs("TP_MEMPIC_YN")
				step3_2 = sRs("TP_EXAMSN_YN")
				If step3_1 = "Y" And step3_2 = "Y" Then
					step3 = "Y"
				Else
					step3 = "N"
				End If
				step4 = sRs("TP_SUGI_CNT")
				
				If step3_2 = "Y" Or step3_1 = "Y" Or step4 > 0 Then 
					' 진행중인게 하나라도 있으면 진행중으로 표시
					g_IngCheck = "Y"
				End If
			Else
				g_IngCheck = "N"
				g_TP_SENDYN = "N"
			End If
			sRs.close
			Set sRs = Nothing
		
			'올해 수능 성적 입력 확인 S
			strSql = ""
			strSql = strSql & vbCrlf & "SELECT"
			strSql = strSql & vbCrlf & "	TTS_MEM_CD "
			strSql = strSql & vbCrlf & "FROM AMS_TRY_TMP_SCORE_FINAL (NOLOCK)"
			strSql = strSql & vbCrlf & "	INNER JOIN AMS_MEM_MAS (NOLOCK) ON TTS_MEM_CD = MM_MEM_CD"
			strSql = strSql & vbCrlf & "WHERE TTS_MEM_CD = " & Ams_Mcode & " AND TTS_TRY_CD = " & g_TP_TRYCD
			
			Set objRsScore = amsObjDb.sqlQuery(strSql, 3)
			If Not (objRsScore.EoF And objRsScore.BoF) Then
				thisYearExamReg = "Y"
			Else
				thisYearExamReg = "N"
			End If
			objRsScore.close
			Set objRsScore = Nothing
			'올해 수능 성적 입력 확인 E
		End If

		objRs.close
		Set objRs = Nothing
	End If
	'END - 학생 정보 확인 및 예외처리 -------------------------------------------------------------------------------------------------------------------------------------

	' ====================================================================================================================================
	' 2023-12-26 / 학사팀 요청
	' 메일 : [확인요청] 2024 팀플장학 2차 서류 제출 : 1차 서류 제출 재오픈 및 대상자 설정, 2차 서류 제출 대상자 조건 변경
	' 1차 서류 제출하지 않은 학생이 많아서 특정 학생들만 제출 가능하도록 예외처리
	' ====================================================================================================================================
	Select Case Ams_Mcode
		Case "577458", "575889", "576188", "582806", "587369", "578016", "574884", "553642", "551748", "574134"
			F_applyStartTime = "2023"&"1201"&"100000" '정시 1차 서류제출 시작일
			F_applyEndTime = "2024"&"0229"&"235959" '정시 1차 서류제출 마감일
	End Select

	'START - 정시 장학생 지원하기 -------------------------------------------------------------------------------------------------------------------------------------
	If CDbl(F_applyStartTime) <= CDbl(GetNowDate()) And CDbl(GetNowDate()) <= CDbl(F_applyEndTime) Then
		g_JungsiEventDateCheck = "Y"

		If clsCd = 11 Then
			If g_TP_SENDYN = "Y" Then
				F_onClick = "alert('이미 서류를 제출하셨습니다.');"
			Else
				g_JungsiEventTargetCheck = "Y"
				If g_IngCheck = "Y" Then
					F_onClick = "fnConfirmLink('이미 작성중인 내용이 있습니다.\n장학금 지급을 위한 정보를 모두 등록하시겠습니까?.', '/campus_common/"&g_TP_YEAR&"/"&g_TP_YEAR&"_teamplay_step/apply/challenge_write.asp');"
				Else
					If thisYearExamReg = "N" Then
						F_onClick = "fnConfirmLink('마이페이지에서 수능 성적 입력 후 1차 서류 제출이 가능합니다.\n성적을 입력하시겠습니까?', '/mypage/teamplay_info/?g=sn_rec');"
					Else
						F_onClick = "fnConfirmLink('수능 성적 우수 장학생(" & g_TP_YEAR & " 수능 국수영탐(2) 5과목 1등급)에 해당하며, 하단의 유의사항을 확인하였고, 등록 서류가 준비되었습니까?', '/campus_common/"&g_TP_YEAR&"/"&g_TP_YEAR&"_teamplay_step/apply/challenge_write.asp');"
					End If
				End If
			End If
		Else
			If gLoginMemId = "" Or IsNull(gLoginMemId) Then	' 로그인체크
				rtnUrl = Request.Servervariables("PATH_INFO")
				F_onClick = "fnConfirmLink('로그인 후 참여 가능합니다.\n로그인 페이지로 이동하시겠습니까?', '/member/login.asp?rtnUrl=" & Server.URLEncode(rtnUrl&"?rtn=R") &"');"
			ElseIf gLoginMemKind = "3" Then '학부모
				F_onClick = "alert('학부모 계정으로는 서류제출이 불가합니다.\n학생 계정으로 로그인해주세요.');"
			ElseIf gLoginMemKind = "5" Then '관리자
				F_onClick = "alert('관리자 계정으로 로그인 중이어서 페이지 접근이 불가능합니다.');"
			ElseIf gAmsMcodeCnt = "0" Then ' 재원생인증을 안한경우
				F_onClick = "fnConfirmLink('재원생 인증 후 참여 가능합니다.\재원생 인증을 하시겠습니까?', '/mypage/student/my_confirm.asp');"
			Else
				F_onClick = "alert('팀플장학 서류 제출 대상자가 아닙니다.\n재수종합반 정규 과정을 이수한 재원생만 1차 서류 제출이 가능합니다.');"
			End If
		End If
	ElseIf CDbl(GetNowDate()) < CDbl(F_applyStartTime) Then '정시 장학생 지원 전
		' 날짜에 0이 앞에 오면 안된다고 하는 경우에 적용
		' noZeroFirstDay = Mid(F_applyStartTime, 7, 2)
		' If Left(noZeroFirstDay, 1) = "0" Then
		' 	noZeroFirstDay = Right(noZeroFirstDay, 1)
		' End If

		g_image_switch = "off"
		' F_onClick = "alert('" & Mid(F_applyStartTime, 1, 4) & "년 " & Mid(F_applyStartTime, 5, 2) & "월 " & Mid(F_applyStartTime, 7, 2) & "일부터 서류 제출 가능합니다.');"
		F_onClick = "alert('서류 제출 기간이 아닙니다');"
	ElseIf CDbl(GetNowDate()) > CDbl(F_applyEndTime) Then '정시 장학생 지원 마감
		g_image_switch = "off"
		' F_onClick = "alert('팀플 장학생 서류 제출이 종료되었습니다.\n(" & Mid(F_applyEndTime, 1, 4) & "년 " & Mid(F_applyEndTime, 5, 2) & "월 " & Mid(F_applyEndTime, 7, 2) & "일 마감)');"
		F_onClick = "alert('서류 제출 기한이 마감되었습니다');"
	End If
	'END - 정시 장학생 지원하기 -------------------------------------------------------------------------------------------------------------------------------------

	'START - 정시 장학생 발표 -------------------------------------------------------------------------------------------------------------------------------------
	If CDbl(F_resultStartTime) <= CDbl(GetNowDate()) And CDbl(GetNowDate()) <= CDbl(F_resultEndTime) Then
		g_JungsiResultDateCheck = "Y"
		' If g_TP_SENDYN = "Y" Then '1차 서류 제출 기간과 2차 서류 제출 기간이 겹쳐서 클릭 이벤트 덮어쓰기 코드 추가
		' 	F_onClick = "fnConfirmLink('2차 서류 제출이 준비되었습니까?', '/campus_common/"&g_TP_YEAR&"/"&g_TP_YEAR&"_teamplay_step/apply/challenge_result.asp');"
		' End If
	
		If gLoginMemId = "" Or IsNull(gLoginMemId) Then
			pUrl = Request.Servervariables("PATH_INFO")
			fScript = "alert('로그인 후 참여 가능합니다.\n로그인 페이지로 이동합니다'); location.href='/member/login.asp?rtnUrl=" & Server.URLEncode(pUrl & "?rtn=R") & "';"
		Else
			' 팀플 신청 정보
			strSql = ""
			strSql = strSql & vbCrlf & "SELECT"
			strSql = strSql & vbCrlf & "	ISNULL(TP_MEMBANK_YN, 'N') TP_MEMBANK_YN"
			strSql = strSql & vbCrlf & "	, ISNULL(TP_UNIVPASSFILE_YN, 'N') TP_UNIVPASSFILE_YN"
			strSql = strSql & vbCrlf & "	, ISNULL(TP_FIRSTPASSYN, 'N') TP_FIRSTPASSYN"
			strSql = strSql & vbCrlf & "	, ISNULL(TP_FINALPASSYN, 'N') TP_FINALPASSYN"
			strSql = strSql & vbCrlf & "	, ISNULL(TP_SENDYN, 'N') TP_SENDYN"
			strSql = strSql & vbCrlf & "FROM"
			strSql = strSql & vbCrlf & "	AMS_TEAMPLAY_EVT(NOLOCK)"
			strSql = strSql & vbCrlf & "WHERE"
			strSql = strSql & vbCrlf & "	TP_MEM_CD = '" & Ams_Mcode & "'"
			strSql = strSql & vbCrlf & "	AND TP_MEM_ID = '" & gLoginMemId & "'"
			strSql = strSql & vbCrlf & "	AND TP_YEAR = '" & g_TP_YEAR & "'"
			strSql = strSql & vbCrlf & "	AND TP_TYPE = 'F'"

			Set sRs = amsObjDb.sqlQuery(strSql, 3)
			If Not (sRs.EOF And sRs.BOF) Then
				f_TP_MEMBANK_YN = sRs("TP_MEMBANK_YN")
				f_TP_UNIVPASSFILE_YN = sRs("TP_UNIVPASSFILE_YN")
				f_TP_FIRSTPASSYN = sRs("TP_FIRSTPASSYN")
				f_TP_FINALPASSYN = sRs("TP_FINALPASSYN")
				f_TP_SENDYN = sRs("TP_SENDYN")

				If f_TP_SENDYN = "Y" Then '신청 완료 여부
					If f_TP_FIRSTPASSYN = "Y" Then '합격 여부
						If f_TP_MEMBANK_YN = "Y" And f_TP_UNIVPASSFILE_YN = "Y" Then '합격 후 서류 제출 완료
							g_JungsiResultTargetCheck = "O"
						Else
							g_JungsiResultTargetCheck = "Y"
						End If
					Else
						' g_JungsiResultTargetCheck = "N" ' 2차 서류제출 대상자 확인 조건 중 1차 합격 체크 조건 삭제 / 2023-12-26 / 학사팀 요청
						g_JungsiResultTargetCheck = "Y"
					End If
				Else
					g_JungsiResultTargetCheck = "N"
				End If
			Else
				g_JungsiResultTargetCheck = "N"
			End If
			sRs.close
			Set sRs = Nothing
		End If
	End If
	'END - 정시 장학생 발표 -------------------------------------------------------------------------------------------------------------------------------------
%>