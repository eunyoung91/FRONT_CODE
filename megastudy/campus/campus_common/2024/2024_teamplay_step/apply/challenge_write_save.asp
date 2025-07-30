<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.MsSql.asp" -->
<!-- #include file="../cl_header.asp" -->
<!-- #include file="../apply/challenge_write_include.asp" -->
<%
	If gLoginMemId = "" Or IsNull(gLoginMemId) Then
		Call AlertAndPageMove("�α����� �ʿ��մϴ�.\r\n���ΰ�ħ �� �ٽ� �Է¹ٶ��ϴ�", "", "parent")
		response.end
	End If

	On Error Resume Next

	Function dbErrorLog(sql)
		Dim txtSql
		txtSql = Replace(sql, "'", "''")
		txtDesc = Replace(Err.Description, "'", "''")
		' ���� SQL, ���� ������, ȸ�����̵�, ���� �ѹ�, ��������, ��Ͼ�����
		logSql = ""
		logSql = logSql & vbCrlf & "INSERT INTO AMS_ERROR_LOG (TXTSQL, NPAGE, MEMID, ENUMBER, EDESCRIPTION, REGIP, ETCTEXT)"
		logSql = logSql & vbCrlf & "VALUES ("
		logSql = logSql & vbCrlf & "	'" & txtSql & "', '" & Request.ServerVariables("HTTP_HOST") & Request.ServerVariables("HTTP_url") & "'"
		logSql = logSql & vbCrlf & "	, '" & gLoginMemId & "', '" & Err.Number & "', '" & txtDesc & "', '" & Request.ServerVariables("remote_addr") & "'"
		logSql = logSql & vbCrlf & "	, 'N���� ���� ���'"
		logSql = logSql & vbCrlf & ")"

		Call amsobjDB.sqlExecute(logSql)
		ErrNum = ErrNum + 1
		Err.Clear
	End Function

	Function ReplaceForScript(ByVal str)
		If IsNull(str) Then
			ReplaceForScript = ""
		Else
			str = replace(str, "\", "\\")
			str = replace(str, "'", "\'")
			str = replace(str, chr(34), "\'")
			str = replace(str, chr(13)&chr(10), "\n")

			ReplaceForScript = str
		End If
	End Function

	If VARS("getClsCd") = "12" Then	' ���չ�	
		TP_EXAMSNLAST_ENTER_YN = "N"
	Else ' �����
		' ����� �����϶��� ���� Y
		TP_EXAMSNLAST_ENTER_YN = "Y"
	End If

	response.charset = "euc-kr"

	Call formFilter()

	For Each i In VARS
		VARS(i) = Trim(VARS(i))
	Next

	If VARS("form_mode") = "proc_univ_state" Or VARS("form_mode") = "proc_mega_state" Then '�����պ� �� �������п��� ó��
		'���� �հ����� ��� S
			TP_UNIVPASSFILE_YN = VARS("TP_UNIVPASSFILE_YN")
			TP_UNIVPASSFILE_FILENM = VARS("TP_UNIVPASSFILE_FILENM")
		'���� �հ����� ��� E

		'���ɼ���ǥ ��� S
			sn_exam_yn = VARS("sn_exam_yn")
			If sn_exam_yn = "N" Then
				TP_EXAMSNLAST_FILENM = ""	
			Else
				TP_EXAMSNLAST_FILENM = VARS("TP_EXAMSNLAST_FILENM")
			End If
			TP_EXAMSNLAST_YN = VARS("TP_EXAMSNLAST_YN")

			TP_EXAMSN_FILENM = VARS("TP_EXAMSN_FILENM")
			TP_EXAMSN_YN = VARS("TP_EXAMSN_YN")
		'���ɼ���ǥ ��� E

		AlertMsg = "����Ǿ����ϴ�."
		TP_EXAMSNLAST_ENTER_YN = VARS("LastExamEnterYN")
		TP_EXAMSNLAST_ENTER_REASON = VARS("sn_exam_reason_sel")
		TP_EXAMSNLAST_ENTER_REASONETC = VARS("sn_exam_reason_etc")
		strSql = ""
		strSql = strSql & vbCrlf & "UPDATE AMS_TEAMPLAY_EVT"
		strSql = strSql & vbCrlf & "SET"
		strSql = strSql & vbCrlf & "	TP_COMPLETEDATE = GETDATE()" '���� �Ϸ� ��¥
		strSql = strSql & vbCrlf & "	, TP_UNIVPASSFILE_YN = '" & TP_UNIVPASSFILE_YN & "'" '���� �հ� ����
		strSql = strSql & vbCrlf & "	, TP_UNIVPASSFILE_FILENM = '" & TP_UNIVPASSFILE_FILENM & "'" '���� �հ� ���� ���� �̸�
		strSql = strSql & vbCrlf & "	, TP_JUNGSIYN = 'N'" 'Y:����, N:����
		strSql = strSql & vbCrlf & "	, TP_SENDYN = 'I'" 'Y:�Ϸ�,I:������,N:���Ӹ� ��
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_ENTER_YN = '" & TP_EXAMSNLAST_ENTER_YN & "'" '���⵵ ���� ������
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_ENTER_REASON = '" & TP_EXAMSNLAST_ENTER_REASON & "'" '���⵵ ���� ������ ����
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_ENTER_REASONETC = '" & TP_EXAMSNLAST_ENTER_REASONETC & "'" '���⵵ ���� ������(��Ÿ ���� �Է�)
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_YN = '"& sn_exam_yn &"'" '���⵵ ����
		strSql = strSql & vbCrlf & "	, TP_EXAMSN_YN = 'Y'" '���� ����
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_FILENM = '" & TP_EXAMSNLAST_FILENM & "'" '���⵵ ���� ����ǥ ���� �̸�
		strSql = strSql & vbCrlf & "	, TP_EXAMSN_FILENM = '" & TP_EXAMSN_FILENM & "'" '���� ���� ����ǥ ���� �̸�
		strSql = strSql & vbCrlf & "WHERE TP_MEM_CD = '"&nAmsMemCd&"' AND TP_MEM_ID = '"&gLoginMemId&"' AND TP_YEAR = '"&g_TP_YEAR&"' AND TP_TYPE = '"&g_TP_TYPE&"'"

		Call amsObjDb.sqlExecute(strSql)
		If Err.Number <> 0 Then
			dbErrorLog(strSql)
		End If

		If VARS("form_mode") <> "proc_mega_state" Then
			%>
				<script>
					parent.alert("<%=AlertMsg%>");
					<%If sn_exam_yn = "N" Then%>
						parent.document.getElementById("TP_EXAMSNLAST_REALFILENM").innerHTML = "";
					<%End If%>
					//parent.document.location.reload();
				</script>
			<%
		End If
	End If

	If VARS("form_mode") = "proc_pic_state" Or VARS("form_mode") = "proc_mega_state" Then ' �����ڷ� ����ϱ�
		'������� ��� ó�� S
			TP_MEMPIC_FILENM = VARS("TP_MEMPIC_FILENM")	
			TP_MEMPIC_YN = VARS("TP_MEMPIC_YN")
			
			strSql = ""
			strSql = strSql & vbCrlf & "UPDATE AMS_TEAMPLAY_EVT"
			strSql = strSql & vbCrlf & "SET"
			strSql = strSql & vbCrlf & "	TP_COMPLETEDATE = GETDATE()"
			strSql = strSql & vbCrlf & "	, TP_MEMPIC_YN ='" & TP_MEMPIC_YN & "'"
			strSql = strSql & vbCrlf & "	, TP_MEMPIC_FILENM ='" & TP_MEMPIC_FILENM & "'"
			strSql = strSql & vbCrlf & "	, TP_SENDYN = 'I'"
			strSql = strSql & vbCrlf & "WHERE TP_MEM_CD = '" & nAmsMemCd & "' AND TP_MEM_ID = '" & gLoginMemId & "' AND TP_YEAR = '" & g_TP_YEAR & "' AND TP_TYPE = '" & g_TP_TYPE & "'"

			Call amsObjDb.sqlExecute(strSql)
			If Err.Number <> 0 Then
				dbErrorLog(strSql)
			End If
		'������� ��� ó�� E

		If VARS("form_mode") <> "proc_mega_state" Then
			AlertMsg = "����Ǿ����ϴ�."
			%>
				<script>
					parent.alert("<%=AlertMsg%>");
					//parent.document.location.reload();
				</script>
			<%
		End If
	End If

	If VARS("form_mode") = "proc_sugi_state" Or VARS("form_mode") = "proc_mega_state" Then ' ���� ����ϱ�
		' ���� �����Ͱ� �ִ��� ��Ȯ��
		strSql = ""
		strSql = strSql & vbCrlf & "SELECT TAS_CD"
		strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_APPLY_SUGI"
		strSql = strSql & vbCrlf & "WHERE TAS_TP_SEQ = " & T_TP_SEQ & " AND TAS_APPLY_TYPE = '" & g_TP_TYPE & "'"

		Set objRs = amsObjDb.sqlQuery(strSql, 3)
		If Err.Number <> 0 Then
			dbErrorLog(strSql)
		End If
		If Not (objRs.EoF And objRs.BoF) Then
			sugiExecuteMode = "UPDATE"
		Else
			sugiExecuteMode = "INSERT"
		End If
		objRs.close
		Set objRs = Nothing
		
		If sugiExecuteMode = "INSERT" Then 
			sw_user_ip = request.servervariables("remote_addr")

			For index = 1 To CInt(VARS("questionCount"))
				strSql = strSql & vbCrlf & "INSERT INTO AMS_TEAMPLAY_APPLY_SUGI(TAS_TP_SEQ, TAS_MEM_CD, TAS_TASQ_CD, TAS_CONTENT, TAS_APPLY_TYPE, TAS_WRITE_IP)"
				strSql = strSql & vbCrlf & "VALUES(" & T_TP_SEQ & ", " & nAmsMemCd & ", " & VARS("TASQ_CD" & index) & ", '" & SafeQuery(VARS("SW_CONTENT" & index)) & "', '" & g_TP_TYPE & "', '" & sw_user_ip & "');"
			Next

			Call amsObjDb.sqlExecute(strSql)
			If Err.Number <> 0 Then
				dbErrorLog(strSql)
			End If
		Else 'UPDATE
			'���߿� �Էµ� ������ ������ UPDATEó���ǹǷ� ���� �Էµ��� ����
			For index = 1 To CInt(VARS("questionCount"))
				strSql = strSql & vbCrlf & "UPDATE AMS_TEAMPLAY_APPLY_SUGI"
				strSql = strSql & vbCrlf & "SET TAS_CONTENT = '" & SafeQuery(VARS("SW_CONTENT" & index)) & "'"
				strSql = strSql & vbCrlf & "	, TAS_REGDATE = GETDATE()"
				strSql = strSql & vbCrlf & "	, TAS_WRITE_IP = '" & sw_user_ip & "'"
				strSql = strSql & vbCrlf & "WHERE TAS_TASQ_CD = " & VARS("TASQ_CD" & index) & " AND TAS_TP_SEQ = " & T_TP_SEQ
			Next

			Call amsObjDb.sqlExecute(strSql)
			If Err.Number <> 0 Then
				dbErrorLog(strSql)
			End If
		End If 
		AlertMsg = "����Ǿ����ϴ�."

		strSql = ""
		strSql = strSql & vbCrlf & "UPDATE AMS_TEAMPLAY_EVT"
		strSql = strSql & vbCrlf & "SET"
		strSql = strSql & vbCrlf & "	TP_PASSWRITE_YN = 'Y'"
		strSql = strSql & vbCrlf & "	, TP_SENDYN = 'I'"
		strSql = strSql & vbCrlf & "WHERE TP_MEM_CD = '" & nAmsMemCd & "' AND TP_MEM_ID = '" & gLoginMemId & "' AND TP_YEAR = '" & g_TP_YEAR & "' AND TP_TYPE = '" & g_TP_TYPE & "'"

		Call amsObjDb.sqlExecute(strSql)
		If Err.Number <> 0 Then
			dbErrorLog(strSql)
		End If

		If VARS("form_mode") <> "proc_mega_state" Then
			%>
				<script>
					parent.alert("<%=AlertMsg%>");
					//parent.document.location.reload();
				</script>
			<%
		End If
	End If

	If VARS("form_mode") = "proc_mega_state" Then ' �����ڷ� ���
		'########################## �߰� ���� ���� �����ڷ� ��Ͻ� �����͵��� ��Ͽ��θ� �ٽ� Ȯ���Ѵ�

		' �񱳰� �ȵ����°͵� �ٽ� �ε��ϱ� (2019.11.25)
		strSql = ""
		strSql = strSql & vbCrlf & "SELECT TP_SEQ, ISNULL(TP_EXAMSNLAST_ENTER_YN,'N') TP_EXAMSNLAST_ENTER_YN"
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_ENTER_REASON , TP_EXAMSNLAST_ENTER_REASONETC"
		strSql = strSql & vbCrlf & "	, ISNULL(TP_UNIVPASSFILE_YN,'N') TP_UNIVPASSFILE_YN"
		strSql = strSql & vbCrlf & "	, TP_UNIVPASSFILE_FILENM"
		strSql = strSql & vbCrlf & "	, ISNULL(TP_EXAMSNLAST_YN,'N') TP_EXAMSNLAST_YN"
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_FILENM"
		strSql = strSql & vbCrlf & "	, ISNULL(TP_EXAMSN_YN,'N') TP_EXAMSN_YN"
		strSql = strSql & vbCrlf & "	, TP_EXAMSN_FILENM"
		strSql = strSql & vbCrlf & "	, TP_PASSWRITE_YN"
		strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_EVT(NOLOCK)"
		strSql = strSql & vbCrlf & "WHERE TP_MEM_CD = '" & nAmsMemCd & "' AND TP_MEM_ID = '" & gLoginMemId & "' AND TP_YEAR = '" & g_TP_YEAR & "' AND TP_TYPE = '" & g_TP_TYPE & "'"
		Set objRs = amsObjDb.sqlQuery(strSql, 3)

		If Not (objRs.EoF And objRs.BoF) Then
			T_TP_UNIVPASSFILE_YN = objRs("TP_UNIVPASSFILE_YN")
			T_sn_last_registration = objRs("TP_EXAMSNLAST_YN")
		Else
			T_TP_UNIVPASSFILE_YN = "N"
			T_sn_last_registration = "N"
		End If
		objRs.close
		Set objRs = Nothing

		'���� ��Ͽ���
		strSql = ""
		strSql = strSql & vbCrlf & "SELECT"
		strSql = strSql & vbCrlf & "	TTS_MEM_CD"
		strSql = strSql & vbCrlf & "FROM AMS_TRY_TMP_SCORE_FINAL (NOLOCK)"
		strSql = strSql & vbCrlf & "	INNER JOIN AMS_MEM_MAS (NOLOCK) ON TTS_MEM_CD = MM_MEM_CD"
		strSql = strSql & vbCrlf & "WHERE TTS_MEM_CD = " & nAmsMemCd & " AND TTS_TRY_CD = " & g_TP_TRYCD

		Set objRs = amsObjDb.sqlQuery(strSql, 3)
		If Err.Number <> 0 Then
			dbErrorLog(strSql)
		End If
		If Not (objRs.EoF And objRs.BoF) Then
			T_sn_this_registration = "Y"
		Else
			T_sn_this_registration = "N"
		End If
		objRs.close
		Set objRs = Nothing

		If VARS("getClsCd") = "12" Then	' ���չ�
			If T_sn_this_registration = "Y" Then 
				T_sn_registration = "Y"
			End If 
		Else ' �����
			If T_sn_last_registration = "Y" And T_sn_this_registration = "Y" Then 
				T_sn_registration = "Y"
			End If
		End If

		'�հݼ����Ͽ���
		strSql = ""
		strSql = strSql & vbCrlf & "SELECT TAS_CD"
		strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_APPLY_SUGI"
		strSql = strSql & vbCrlf & "WHERE TAS_TP_SEQ = " & T_TP_SEQ & " AND TAS_APPLY_TYPE = '" & g_TP_TYPE & "'"

		Set objRs = amsObjDb.sqlQuery(strSql, 3)
		If Err.Number <> 0 Then
			dbErrorLog(strSql)
		End If
		If Not (objRs.EoF And objRs.BoF) Then
			T_write_registration = "Y"	
		Else
			T_write_registration = "N"
		End If
		objRs.close
		Set objRs = Nothing

		'###############################################
		If T_sn_registration = "Y" And T_write_registration = "Y" Then 
			'����� �ƴٸ� �������� ������Ʈ �ϱ� 
			TP_PASSWRITE_YN = T_write_registration

			strSql = ""
			strSql = strSql & vbCrlf & "UPDATE AMS_TEAMPLAY_EVT"
			strSql = strSql & vbCrlf & "SET"
			strSql = strSql & vbCrlf & "	TP_JUNGSIYN = 'N'"
			strSql = strSql & vbCrlf & "	, TP_SENDYN = 'Y'"
			strSql = strSql & vbCrlf & "	, TP_PASSWRITE_YN = '" & TP_PASSWRITE_YN & "'"
			strSql = strSql & vbCrlf & "	, TP_COMPLETEDATE = GETDATE()"
			strSql = strSql & vbCrlf & "	, TP_P_AGREE_YN = 'Y'"
			strSql = strSql & vbCrlf & "WHERE TP_MEM_CD = '" & nAmsMemCd & "' AND TP_MEM_ID = '" & gLoginMemId & "' AND TP_YEAR = '" & g_TP_YEAR & "' AND TP_TYPE = '" & g_TP_TYPE & "' AND TP_SEQ = " & T_TP_SEQ

			Call amsObjDb.sqlExecute(strSql)
			If Err.Number <> 0 Then
				dbErrorLog(strSql)
			End If
			%>
				<script type="text/javascript">
					parent.alert("���� ������ �Ϸ�Ǿ����ϴ�.");
					parent.location.href = "../index.asp";
				</script>
			<%
		Else
			%>
				<script type="text/javascript">
					parent.alert("���� ������ �����Ͽ����ϴ�.\n��� ������ \"��ϿϷ�\" �Ǿ�� ���� ������ �����մϴ�. �̵�� ������ Ȯ���� �ּ���.");
				</script>
			<%
		End If
	End If
%>