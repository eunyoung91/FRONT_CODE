<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.MsSql.asp" -->
<!-- #include file="../cl_header.asp" -->
<%
	Response.charset = "euc-kr"
	If gLoginMemId = "" Or IsNull(gLoginMemId) Then
		Call AlertAndPageMove("�α����� �ʿ��մϴ�.\r\n���ΰ�ħ �� �ٽ� �Է¹ٶ��ϴ�", "", "parent")
		Response.End
	End If

	ErrNum = 0
	On Error Resume Next
	Function dbErrorLog(sql, txtState)
		Dim txtSql
		txtSql = Replace(sql, "'", "''")
		txtDesc = Replace(Err.Description, "'", "''")
		' ���� SQL, ���� ������, ȸ�����̵�, ���� �ѹ�, ��������, ��Ͼ�����
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

	' �ش� �л� ���� �ҷ����� S
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
		Call dbErrorLog(strSql, "���� ���л� �������� ��� ����_" & Ams_Mcode)
	End If

	If Not (objRs.EOF And objRs.BOF) Then
		T_TP_SEQ = objRs("TP_SEQ")
		T_TP_FIRSTPASSYN = objRs("TP_FIRSTPASSYN")

		If T_TP_FIRSTPASSYN <> "Y" Then
			Call dbErrorLog(strSql, "���� ���л� �������� ���. �հ��� ���°� Ʋ��_" & Ams_Mcode)
			Call AlertAndPageMove("�հ��� ��� ������ ��ġ���� �ʽ��ϴ�.\r\n������ ���ӵ� ��� �����ڿ��� �������ּ���.", "", "parent")
		End If
	Else
		Call dbErrorLog(strSql, "���� ���л� �������� ���. �հ��� ���� ����_" & Ams_Mcode)
		Call AlertAndPageMove("�հ��� ��� ������ �������� �ʽ��ϴ�.\r\n������ ���ӵ� ��� �����ڿ��� �������ּ���.", "", "parent")
	End If
	objRs.close
	Set objRs = Nothing
	' �ش� �л� ���� �ҷ����� E

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
	If Err.Number <> 0 Then Call dbErrorLog(strSql, "���� ���л� �������� ���. �հ��� ���� ���� ����_" & Ams_Mcode)

	If ErrNum <> 0 Or uptRst <= 0 Then
		If uptRst <= 0 Or uptRst > 1 Then
			Call dbErrorLog(strSql, "���� ���л� �������� ���. �հ��� ���� ���� �������_" & Ams_Mcode)
		End If

		Call AlertAndPageMove("��Ͽ� �����Ͽ����ϴ�.\r\n������ ���ӵ� ��� �����ڿ��� �������ּ���.", "", "parent")
	Else
		%>
			<script>
				parent.alert("���� ������ �Ϸ�Ǿ����ϴ�.");
				parent.location.href = "/campus_common/<%=g_TP_YEAR%>/<%=g_TP_YEAR%>_teamplay/index.asp";
			</script>
		<%
	End If
%>