<%
	formFilter() ' SQL ������ ���ڿ� ���͸� �Լ�

	If gLoginMemKind = "1" Then '����� ���� �й�
		nAmsMemCd = Ams_Mcode
	Else
		nAmsMemCd = ""
	End If

	'�Ⱓ����  S
		If g_JungsiEventDateCheck = "N" Then
			Call AlertAndPageMove("�������л� ���� �Ⱓ�� �ƴմϴ�.", "../index.asp", "")
		End If
	'�Ⱓ����  E

	If ValueCheck(nAmsMemCd) = True Then '������� & ������Թ�(10-11�� ����)
		'ó�� ������ ���ٽ� ������ �Է� S
			topTabCode = "" '�Ⱦ��� ��(g ������ js���� �Ѱ��ִµ� �޾Ƽ� ���� ����)
			strSql = ""
			strSql = strSql & vbCrlf & "SELECT COUNT(*) AS CNT"
			strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_EVT(NOLOCK)"
			strSql = strSql & vbCrlf & "WHERE TP_MEM_CD = '" & nAmsMemCd & "' AND TP_MEM_ID = '" & gLoginMemId & "' AND TP_YEAR = '" & g_TP_YEAR & "' AND TP_TYPE = '" & g_TP_TYPE & "'"

			Set objRs = amsObjDb.sqlQuery(strSql, 3)
			If Not (objRs.EoF And objRs.BoF) Then
				WP_CNT = objRs("CNT")
			End If
			objRs.close
			Set objRs = Nothing

			' ���� ������ ���(�ʱ� 1ȸ)
			If CInt(WP_CNT) = 0 Then 
				tp_user_ip = request.servervariables("remote_addr")
			
				sSql = ""
				sSql = sSql & vbCrlf & "INSERT INTO AMS_TEAMPLAY_EVT "
				sSql = sSql & vbCrlf & "	( "
				sSql = sSql & vbCrlf & "		TP_YEAR  "
				sSql = sSql & vbCrlf & "		,TP_MEM_CD  "
				sSql = sSql & vbCrlf & "		,TP_MEM_ID  "
				sSql = sSql & vbCrlf & "		,TP_TYPE  "        
				sSql = sSql & vbCrlf & "		,TP_IP  "      
				sSql = sSql & vbCrlf & "	) "
				sSql = sSql & vbCrlf & "	VALUES "
				sSql = sSql & vbCrlf & "	( "
				sSql = sSql & vbCrlf & "		'"  & g_TP_YEAR & "' "
				sSql = sSql & vbCrlf & "		,'" & nAmsMemCd & "' "
				sSql = sSql & vbCrlf & "		,'" & gLoginMemId & "' "
				sSql = sSql & vbCrlf & "		,'" & g_TP_TYPE & "' "
				sSql = sSql & vbCrlf & "		,'" & tp_user_ip & "' "
				sSql = sSql & vbCrlf & "	) "
				Call amsObjDb.sqlExecute(sSql)
			End If
		'ó�� ������ ���ٽ� ������ �Է� E

		'������ �Է� �� ���� ������ �������� S
			T_jungsi_registration = "N" ' ���õ�Ͽ���
			T_sn_registration = "N" ' ���ɼ�����Ͽ���	
			T_sn_last_registration = "N" '�۳���ɼ�����Ͽ���
			T_sn_this_registration = "N" '���ؼ��ɼ�����Ͽ���
			T_write_registration = "N" '�հݼ����Ͽ���
			T_complete_registration = "N" '������������
		'������ �Է� �� ���� ������ �������� E

		'���� ó�� ���� �������� S
			strSql = ""
			strSql = strSql & vbCrlf & "SELECT"
			strSql = strSql & vbCrlf & "	TP_SEQ"
			strSql = strSql & vbCrlf & "	, ISNULL(TP_EXAMSNLAST_ENTER_YN,'N') TP_EXAMSNLAST_ENTER_YN"
			strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_ENTER_REASON, TP_EXAMSNLAST_ENTER_REASONETC"
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
				T_TP_SEQ = objRs("TP_SEQ")
				T_TP_EXAMSNLAST_ENTER_YN = objRs("TP_EXAMSNLAST_ENTER_YN")
				T_TP_EXAMSNLAST_ENTER_REASON = objRs("TP_EXAMSNLAST_ENTER_REASON")
				T_TP_EXAMSNLAST_ENTER_REASONETC = objRs("TP_EXAMSNLAST_ENTER_REASONETC")
				T_TP_UNIVPASSFILE_YN = objRs("TP_UNIVPASSFILE_YN")
				T_TP_UNIVPASSFILE_FILENM = objRs("TP_UNIVPASSFILE_FILENM")
				T_TP_EXAMSNLAST_YN = objRs("TP_EXAMSNLAST_YN")
				T_TP_EXAMSNLAST_FILENM = objRs("TP_EXAMSNLAST_FILENM")
				T_TP_EXAMSN_YN = objRs("TP_EXAMSN_YN")
				T_TP_EXAMSN_FILENM = objRs("TP_EXAMSN_FILENM")
				T_TP_PASSWRITE_YN = objRs("TP_PASSWRITE_YN")
			Else
				T_TP_EXAMSNLAST_ENTER_YN = "N"
				T_TP_UNIVPASSFILE_YN = "N"
				T_TP_EXAMSNLAST_YN = "N"
				T_TP_EXAMSN_YN = "N"
				T_TP_PASSWRITE_YN = "N"
			End If
			objRs.close
			Set objRs = Nothing
		'���� ó�� ���� �������� E

		'������Ͽ���
		'�۳� ���� Ȯ�� S
			strSql = ""
			strSql = strSql & vbCrlf & "SELECT"
			strSql = strSql & vbCrlf & "	AS_SUB_COD, AS_YEAR, AS_EXAM, AS_PYO, AS_BACK, AS_RANK,RP_EXAM_TYPE"
			strSql = strSql & vbCrlf & "FROM AMS_REC_PROOF with(nolock) "
			strSql = strSql & vbCrlf & "	LEFT OUTER JOIN AMS_ACA_SCR WITH(NOLOCK) ON AS_MEM_CD = RP_MEM_CD AND AS_YEAR = RP_YEAR "
			strSql = strSql & vbCrlf & "WHERE RP_MEM_CD = " & nAmsMemCd
			strSql = strSql & vbCrlf & "	AND AS_EXAM = '0' "
			strSql = strSql & vbCrlf & "	AND RP_YEAR = '" & g_TP_PREV_YEAR & "' "

			Set objRs = amsObjDb.sqlQuery(strSql, 3)
			If Not (objRs.EoF And objRs.BoF) Then
				If T_TP_EXAMSNLAST_YN ="Y" Then 
					T_sn_last_registration = "Y"
				Else 
					T_sn_last_registration = "N"
				End If 

				If T_TP_EXAMSNLAST_ENTER_YN = "N" And T_TP_EXAMSNLAST_ENTER_REASON <> "" Then '�������϶��� ����������� ����
					T_sn_last_registration = "Y"
				End If 
			Else
				T_sn_last_registration = "N"

				If T_TP_EXAMSNLAST_ENTER_YN = "N" And T_TP_EXAMSNLAST_ENTER_REASON <> "" Then '�������϶��� ����������� ����
					T_sn_last_registration = "Y"
				End If 
			End If
			objRs.close
			Set objRs = Nothing
		'�۳� ���� Ȯ�� E

		'���� ���� Ȯ�� S
			strSql = ""
			strSql = strSql & vbCrlf & "SELECT"
			strSql = strSql & vbCrlf & "	TTS_MEM_CD "
			strSql = strSql & vbCrlf & "FROM AMS_TRY_TMP_SCORE_FINAL (NOLOCK)"
			strSql = strSql & vbCrlf & "	INNER JOIN AMS_MEM_MAS (NOLOCK) ON TTS_MEM_CD = MM_MEM_CD"
			strSql = strSql & vbCrlf & "WHERE TTS_MEM_CD = " & nAmsMemCd & " AND TTS_TRY_CD = " & g_TP_TRYCD
			
			Set objRs = amsObjDb.sqlQuery(strSql, 3)
			If Not (objRs.EoF And objRs.BoF) Then
				T_sn_this_registration = "Y"
			Else
				T_sn_this_registration = "N"
			End If
			objRs.close
			Set objRs = Nothing
			
			If T_sn_this_registration = "Y" Then
				T_sn_registration = "Y"
			End If
		'���� ���� Ȯ�� E

		'�հݼ��� ��Ͽ��� S
			strSql = ""
			strSql = strSql & vbCrlf & "SELECT"
			strSql = strSql & vbCrlf & "	TAS_CD"
			strSql = strSql & vbCrlf & "FROM"
			strSql = strSql & vbCrlf & "	AMS_TEAMPLAY_APPLY_SUGI_QUESTION"
			strSql = strSql & vbCrlf & "	INNER JOIN AMS_TEAMPLAY_APPLY_SUGI ON TAS_TASQ_CD = TASQ_CD"
			strSql = strSql & vbCrlf & "WHERE"
			strSql = strSql & vbCrlf & "	TASQ_YEAR = " & g_TP_YEAR
			strSql = strSql & vbCrlf & "	AND TASQ_TYPE = '" & g_TP_TYPE & "'"
			strSql = strSql & vbCrlf & "	AND TASQ_CLS_CD = " & clsCd
			strSql = strSql & vbCrlf & "	AND TASQ_APPLY_MODE_YN = 'Y'"
			strSql = strSql & vbCrlf & "	AND TAS_MEM_CD = " & nAmsMemCd
			
			Set objRs = amsObjDb.sqlQuery(strSql, 3)
			If Not (objRs.EoF And objRs.BoF) Then
				T_write_registration = "Y"	
			Else
				T_write_registration = "N"
			End If
			objRs.close
			Set objRs = Nothing
		'�հݼ��� ��Ͽ��� E

		'��ü �������� S
			strSql = ""
			strSql = strSql & vbCrlf & "SELECT ISNULL(TP_SENDYN, 'N') TP_SENDYN"
			strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_EVT(NOLOCK)"
			strSql = strSql & vbCrlf & "WHERE TP_MEM_CD = '" & nAmsMemCd & "' AND TP_MEM_ID = '" & gLoginMemId & "' AND TP_YEAR = '" & g_TP_YEAR & "' AND TP_TYPE = '" & g_TP_TYPE & "'"

			Set objRs = amsObjDb.sqlQuery(strSql, 3)
			If Not (objRs.EoF And objRs.BoF) Then
				T_complete_registration = objRs("TP_SENDYN")
			Else
				T_complete_registration = "N"
			End If
			objRs.close
			Set objRs = Nothing
		'��ü �������� E
	End If

	Dim AlertAndPageMove_MSG : AlertAndPageMove_MSG = ""
	Dim AlertAndPageMove_PAGE : AlertAndPageMove_PAGE = ""
	Dim AlertAndPageMove_TARGET : AlertAndTARGETMove_PAGE = ""
	Dim execThisScript : execThisScript = ""
	
	If gLoginMemKind = "5" Then '������
		AlertAndPageMove_MSG = "�����ڷ� �α��� ���̶� ������ �Ұ����մϴ�"
		AlertAndPageMove_PAGE = "../index.asp"
	ElseIf gAmsMcodeCnt > 0 Then '����� �������� �л�
		If clsCd = 0 Then
			AlertAndPageMove_MSG = "�������� ���� ���� ����ڰ� �ƴմϴ�.\n������չ� ���� ������ �̼��� ������� 1�� ���� ������ �����մϴ�."
			AlertAndPageMove_PAGE = "../index.asp"
		ElseIf T_sn_this_registration = "N" Then
			AlertAndPageMove_MSG = "�������������� ���� ������ �Է� �� 1�� ���� ������ �����մϴ�."
			AlertAndPageMove_PAGE = "/mypage/teamplay_info/?g=sn_rec"
		ElseIf g_TP_SENDYN = "Y" Then
			AlertAndPageMove_MSG = "�̹� ���� ������ �Ϸ�Ǿ����ϴ�."
			AlertAndPageMove_PAGE = "../index.asp"
		End If
	Else
		If gLoginMemKind = "" Then '�α��� ����
			AlertAndPageMove_MSG = "�α��� �� ���� �����մϴ�.\n�α��� �������� �̵��մϴ�."
			AlertAndPageMove_PAGE = "/mypage/mypage.asp"
		ElseIf gLoginMemKind = "3" Then '�кθ�
			AlertAndPageMove_MSG = "�кθ� �������δ� ���л� ��û�� �Ұ��մϴ�.\n�л� �������� �α������ּ���."
			AlertAndPageMove_PAGE = "../index.asp"
		ElseIf clsCd = 0 Then
			AlertAndPageMove_MSG = "����� ���� �� ���� �����մϴ�.\n����� ���� �� �������ּ���."
			AlertAndPageMove_PAGE = "/mypage/student/my_confirm.asp"
		End If
	End If

	If AlertAndPageMove_MSG <> "" Then
		Call AlertAndPageMove(AlertAndPageMove_MSG, AlertAndPageMove_PAGE, AlertAndPageMove_TARGET)
	Else
		If g_TP_SENDYN = "I" Then
			If step3_2 = "N" Then '���� ����ǥ
				infoStepId = "info_step1"
			ElseIf step3_1 = "N" Then '�������
				infoStepId = "info_step2"
			ElseIf step4 < 5 Then '�հݼ���
				infoStepId = "info_step3"
			Else '�������� Ȱ�� ����
				infoStepId = "info_step4"
			End If
			
			If InStr(Request.ServerVariables("SCRIPT_NAME"), "_publisher.asp") <= 0 Then '�ӽ� ���� ��ư�� ���� ���� alert�� ���� �ʵ��� ��
				execThisScript = ""
				execThisScript = execThisScript & vbCrLf & "<script>"
				execThisScript = execThisScript & vbCrLf & "	window.addEventListener('load', function(){"
				execThisScript = execThisScript & vbCrLf & "		scrollTo({"
				execThisScript = execThisScript & vbCrLf & "			top: $('#" & infoStepId & "').offset().top - 30,"
				execThisScript = execThisScript & vbCrLf & "			left: 0,"
				execThisScript = execThisScript & vbCrLf & "			behavior: 'smooth',"
				execThisScript = execThisScript & vbCrLf & "		})"
				execThisScript = execThisScript & vbCrLf & "	});"
				execThisScript = execThisScript & vbCrLf & "</script>"
			End If
		End If
	End If
%>