<%
	'---------------------------------------------------------------------------------------
	'기능 : 팀플 이벤트 변수 정의, cl_header.asp에 include되어 있음
	'작성일 : 2021-11-26
	'작성자 : 이상준
	'---------------------------------------------------------------------------------------
	'2023-11-23 / 이상준 / 2023 팀플 장학생부터 수시는 진행하지 않고 정시로만 진행
	'---------------------------------------------------------------------------------------
	g_TP_TYPE = "F" 'S : 수시, F : 정시, cl_header.asp에서 기간에 따라 다시 설정
	g_UA_APP_SEASON = "F" 'S : 수시, F : 정시, cl_header.asp에서 기간에 따라 다시 설정

	g_TP_YEAR = "2025" '올해 팀플 학년도
	g_TP_PREV_YEAR = "2024" '저번 팀플 학년도
	g_TP_SENDYN = "N"
	g_TP_CURRENT_LAST_TIME = "This" ' 수시 정시 지원관련 변수

	gTPSaveUrl = "/data/TeamPlayEvt"
	gTPSavePath = server.mappath(gTPSaveUrl) & "\"

	strSql = ""
	strSql = strSql & vbCrlf & "SELECT TM_TRY_CD, TM_TRY_NM"
	strSql = strSql & vbCrlf & "FROM AMS_TRY_MAS"
	strSql = strSql & vbCrlf & "WHERE"
	strSql = strSql & vbCrlf & "	TM_DIV_CD = 15" '수능
	strSql = strSql & vbCrlf & "	AND YEAR(TM_REG_DT) = " & g_TP_PREV_YEAR '시험 시행 년도(학년도 아님)
	
	Set objRs = amsObjDb.sqlQuery(strSql, 3)

	If Not (objRs.BOF OR objRs.EOF) Then
		g_TP_TRYCD = objRs("TM_TRY_CD") '시험 코드
		g_TP_TRYNM = objRs("TM_TRY_NM") '시험 이름
		'exam_cd는 학원별로 코드가 다름(AMS_TRY_EXAM)
	Else
		'수능 값을 가져오지 못할 경우
		Response.Write g_TP_YEAR & "학년도 수능 시험 정보를 가져올 수 없습니다."
		Response.End
		' g_TP_TRYCD = "530" '2024 수능
		' g_TP_TRYNM = "시험 정보를 가져올 수 없습니다"
	End If

	objRs.close
	Set objRs = Nothing

	'이상준 / 2022-11-28 / 쿼리 출력
	Sub showMeTheQuery(theQuery, viewType)
		Response.Write "<pre>"
		Response.Write theQuery
		Response.Write "</pre>"

		If viewType = "end" Then
			Response.End
		End If
	End Sub
%>