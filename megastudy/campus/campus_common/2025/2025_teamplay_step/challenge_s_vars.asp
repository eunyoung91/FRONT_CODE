<%
	'---------------------------------------------------------------------------------------
	'��� : ���� �̺�Ʈ ���� ����, cl_header.asp�� include�Ǿ� ����
	'�ۼ��� : 2021-11-26
	'�ۼ��� : �̻���
	'---------------------------------------------------------------------------------------
	'2023-11-23 / �̻��� / 2023 ���� ���л����� ���ô� �������� �ʰ� ���÷θ� ����
	'---------------------------------------------------------------------------------------
	g_TP_TYPE = "F" 'S : ����, F : ����, cl_header.asp���� �Ⱓ�� ���� �ٽ� ����
	g_UA_APP_SEASON = "F" 'S : ����, F : ����, cl_header.asp���� �Ⱓ�� ���� �ٽ� ����

	g_TP_YEAR = "2025" '���� ���� �г⵵
	g_TP_PREV_YEAR = "2024" '���� ���� �г⵵
	g_TP_SENDYN = "N"
	g_TP_CURRENT_LAST_TIME = "This" ' ���� ���� �������� ����

	gTPSaveUrl = "/data/TeamPlayEvt"
	gTPSavePath = server.mappath(gTPSaveUrl) & "\"

	strSql = ""
	strSql = strSql & vbCrlf & "SELECT TM_TRY_CD, TM_TRY_NM"
	strSql = strSql & vbCrlf & "FROM AMS_TRY_MAS"
	strSql = strSql & vbCrlf & "WHERE"
	strSql = strSql & vbCrlf & "	TM_DIV_CD = 15" '����
	strSql = strSql & vbCrlf & "	AND YEAR(TM_REG_DT) = " & g_TP_PREV_YEAR '���� ���� �⵵(�г⵵ �ƴ�)
	
	Set objRs = amsObjDb.sqlQuery(strSql, 3)

	If Not (objRs.BOF OR objRs.EOF) Then
		g_TP_TRYCD = objRs("TM_TRY_CD") '���� �ڵ�
		g_TP_TRYNM = objRs("TM_TRY_NM") '���� �̸�
		'exam_cd�� �п����� �ڵ尡 �ٸ�(AMS_TRY_EXAM)
	Else
		'���� ���� �������� ���� ���
		Response.Write g_TP_YEAR & "�г⵵ ���� ���� ������ ������ �� �����ϴ�."
		Response.End
		' g_TP_TRYCD = "530" '2024 ����
		' g_TP_TRYNM = "���� ������ ������ �� �����ϴ�"
	End If

	objRs.close
	Set objRs = Nothing

	'�̻��� / 2022-11-28 / ���� ���
	Sub showMeTheQuery(theQuery, viewType)
		Response.Write "<pre>"
		Response.Write theQuery
		Response.Write "</pre>"

		If viewType = "end" Then
			Response.End
		End If
	End Sub
%>