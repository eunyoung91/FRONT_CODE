<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.MsSql.asp" -->
<!-- #include file="../cl_header.asp" -->
<%
	Response.charset = "euc-kr"
	If gLoginMemId = "" Or IsNull(gLoginMemId) Then
		Call AlertAndPageMove("로그인이 필요합니다.\r\n새로고침 후 다시 입력바랍니다", "", "parent")
		Response.End
	End If

	ErrNum = 0
	On Error Resume Next
	Function dbErrorLog(sql, txtState)
		Dim txtSql
		txtSql = Replace(sql, "'", "''")
		txtDesc = Replace(Err.Description, "'", "''")
		' 에러 SQL, 현재 페이지, 회원아이디, 에러 넘버, 에러내용, 등록아이피
		logSql = "INSERT INTO AMS_ERROR_LOG (TXTSQL, NPAGE, MEMID, ENUMBER, EDESCRIPTION, REGIP, ETCTEXT)"
		logSql = logSql & " VALUES ('"& txtSql &"', '"& Request.servervariables("HTTP_HOST") & Request.servervariables("HTTP_url") &"', "
		logSql = logSql & " '"& gLoginMemId &"', '"& Err.Number &"', '"& txtDesc &"', '"& Request.servervariables("remote_addr") &"', "
		logSql = logSql & " '"& txtState &"') "
		Call amsobjDB.sqlExecute(logSql)
		ErrNum = ErrNum + 1
		Err.Clear
	End Function

	Call formFilter()

	For Each i In VARS
		VARS(i) = Trim(VARS(i))
	Next

	' 해당 학생 정보 불러오기 S
	strSql = ""
	strSql = strSql & vbcrlf & "SELECT TP_SEQ, ISNULL(TP_FIRSTPASSYN, 'N') AS TP_FIRSTPASSYN"
	strSql = strSql & vbcrlf & "FROM AMS_TEAMPLAY_EVT(NOLOCK)"
	strSql = strSql & vbcrlf & "WHERE"
	strSql = strSql & vbcrlf & "	TP_MEM_CD = '" & Ams_Mcode & "'"
	strSql = strSql & vbcrlf & "	AND TP_MEM_ID = '" & gLoginMemId & "'"
	strSql = strSql & vbcrlf & "	AND TP_YEAR = '" & g_TP_YEAR & "'"
	strSql = strSql & vbcrlf & "	AND TP_TYPE = '" & g_TP_TYPE & "'"
	Set objRs = amsObjDb.sqlQuery(strSql, 3)
	If Err.Number <> 0 Then
		Call dbErrorLog(strSql, "정시 장학생 계좌정보 등록 오류_" & Ams_Mcode)
	End If

	If Not (objRs.EOF And objRs.BOF) Then
		T_TP_SEQ = objRs("TP_SEQ")
		T_TP_FIRSTPASSYN = objRs("TP_FIRSTPASSYN")

		If T_TP_FIRSTPASSYN <> "Y" Then
			Call dbErrorLog(strSql, "정시 장학생 계좌정보 등록. 합격자 상태값 틀림_" & Ams_Mcode)
			Call AlertAndPageMove("합격자 등록 정보가 일치하지 않습니다.\r\n문제가 지속될 경우 관리자에게 문의해주세요.", "", "parent")
		End If
	Else
		Call dbErrorLog(strSql, "정시 장학생 계좌정보 등록. 합격자 정보 없음_" & Ams_Mcode)
		Call AlertAndPageMove("합격자 등록 정보가 존재하지 않습니다.\r\n문제가 지속될 경우 관리자에게 문의해주세요.", "", "parent")
	End If
	objRs.close
	Set objRs = Nothing
	' 해당 학생 정보 불러오기 E

	strSql = ""
	strSql = strSql & vbcrlf & "UPDATE AMS_TEAMPLAY_EVT"
	strSql = strSql & vbcrlf & "SET"
	strSql = strSql & vbcrlf & "	TP_UNIVPASSFILE_YN = '" & VARS("TP_UNIVPASSFILE_YN") & "'"
	strSql = strSql & vbcrlf & "	, TP_UNIVPASSFILE_FILENM = '" & VARS("TP_UNIVPASSFILE_FILENM") & "'"
	strSql = strSql & vbcrlf & "	, TP_MEMBANK_YN = '" & VARS("TP_MEMBANK_YN") & "'"
	strSql = strSql & vbcrlf & "	, TP_MEMBANK_FILENM = '" & VARS("TP_MEMBANK_FILENM") & "'"
	strSql = strSql & vbcrlf & "	, TP_MEMBANK_BNM = '" & VARS("TP_MEMBANK_BNM") & "'"
	strSql = strSql & vbcrlf & "	, TP_MEMBANK_UNM = '" & VARS("TP_MEMBANK_UNM") & "'"
	strSql = strSql & vbcrlf & "	, TP_MEMBANK_NUM = dbo.UF_GET_Encode('" & VARS("TP_MEMBANK_NUM") & "')"
	strSql = strSql & vbcrlf & "	, TP_COMPLETEDATE = GETDATE()"
	strSql = strSql & vbcrlf & "WHERE"
	strSql = strSql & vbcrlf & "	TP_FIRSTPASSYN = 'Y'"
	strSql = strSql & vbcrlf & "	AND TP_SEQ = " & T_TP_SEQ
	strSql = strSql & vbcrlf & "	AND TP_YEAR = '" & g_TP_YEAR & "'"
	strSql = strSql & vbcrlf & "	AND TP_TYPE = '" & g_TP_TYPE & "'"
	strSql = strSql & vbcrlf & "	AND TP_MEM_CD = '" & Ams_Mcode & "'"
	strSql = strSql & vbcrlf & "	AND TP_MEM_ID = '" & gLoginMemId & "'"

	uptRst = amsObjDb.sqlExecute2(strSql)
	If Err.Number <> 0 Then Call dbErrorLog(strSql, "정시 장학생 계좌정보 등록. 합격자 정보 수정 오류_" & Ams_Mcode)

	If ErrNum <> 0 Or uptRst <= 0 Then
		If uptRst <= 0 Or uptRst > 1 Then
			Call dbErrorLog(strSql, "정시 장학생 계좌정보 등록. 합격자 정보 수정 결과오류_" & Ams_Mcode)
		End If

		Call AlertAndPageMove("등록에 실패하였습니다.\r\n문제가 지속될 경우 관리자에게 문의해주세요.", "", "parent")
	Else
		%>
			<script>
				parent.alert("서류 제출이 완료되었습니다.");
				parent.location.href = "/campus_common/<%=g_TP_YEAR%>/<%=g_TP_YEAR%>_teamplay/index.asp";
			</script>
		<%
	End If
%>