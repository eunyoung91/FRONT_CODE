<!-- #include file="./challenge_s_vars.asp" -->
<%
	' include ���� challenge_s_vars.asp ������ ��������� -> susi, ��������� -> jungsi ������ �����ؾ��� / 2021-11-26 �ϳ��� ���� ���� ��...
	' ���� ���� ���� ��� ����

	Dim s_txtStateText, gAmsMcodeCnt, g_IngCheck, g_SusiEventDateCheck, g_SusiEventTargetCheck, g_SusiResultDateCheck, g_SusiResultTargetCheck
	Dim g_JungsiEventDateCheck, g_JungsiEventTargetCheck, g_JungsiResultDateCheck, g_JungsiResultTargetCheck

	formFilter() ' SQL ������ ���ڿ� ���͸�
	' ȸ�� ����
	g_IngCheck = "N" '������ üũ
	g_image_switch = "on" '��ư �̹��� ��Ʈ��
	g_JungsiEventDateCheck = "N" '���� �̺�Ʈ �Ⱓ üũ
	g_JungsiEventTargetCheck = "N" '���� �̺�Ʈ ����� üũ
	g_JungsiResultDateCheck = "N" '���ù�ǥ �̺�Ʈ �Ⱓ üũ
	g_JungsiResultTargetCheck = "N" '���ù�ǥ �̺�Ʈ ����� üũ

	'START - ���� ���л� ���� -------------------------------------------------------------------------------------------------------------------------------------
	'���� ���� / 1�� ���� ����
	If CSTr(GetServerGubun()) = "dev" Then '���߼��� üũ
		F_applyStartTime = "2023"&"1101"&"100000" '���� ���л� ���� ������
		F_applyEndTime = "2023"&"1222"&"235959" '���� ���л� ���� ������
	Else
		F_applyStartTime = "2023"&"1208"&"100000" '���� ���л� ���� ������
		F_applyEndTime = "2023"&"1222"&"235959" '���� ���л� ���� ������
	End If

	'��ǥ ���� / 2�� ���� ����
	If CSTr(GetServerGubun()) = "dev" Then '���߼��� üũ
		F_resultStartTime = "2023"&"0111"&"100000" '���� ���л� ��ǥ ������
		F_resultEndTime = "2024"&"0229"&"235959" '���� ���л� ��ǥ ������
	Else
		F_resultStartTime = "2023"&"1226"&"100000" '���� ���л� ��ǥ ������
		F_resultEndTime = "2024"&"0229"&"235959" '���� ���л� ��ǥ ������
	End If

	'���� IP üũ, �Ǽ������� ���� �׽�Ʈ�� �� �ֵ��� ���� / 2022-12-08 / �̻���
	Select Case Request.ServerVariables("REMOTE_HOST")
		Case "210.181.48.62"
			' F_applyStartTime = "2023"&"1101"&"100000" '���� ���л� ���� ������
			' F_applyEndTime = "2023"&"1222"&"235959" '���� ���л� ���� ������
	End Select
	'END - ���� ���л� ���� -------------------------------------------------------------------------------------------------------------------------------------
	
	'START - �л� ���� Ȯ�� �� ����ó�� -------------------------------------------------------------------------------------------------------------------------------------
	If gLoginOk Then
		' g_TP_YEAR : ���� ���� �г⵵
		' g_TP_TYPE : S ����, F ����

		' ����������� üũ
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
		If IsDevSvr() = True Then '�׽�Ʈ���� <-> �Ǽ��� ���� �ڵ尡 �޶� �б� �ʿ�
			strSql = strSql & vbCrlf & "				WHEN GH_ACA_CD IN (27, 44, 38, 121) THEN 1836" '2023 ���� 10�� ���� : ����, �������, ���ʱ��, �ȼ����
			strSql = strSql & vbCrlf & "				WHEN GH_ACA_CD IN (11, 12, 17, 41, 115, 74, 75, 76, 45, 119) THEN 1837" '2023 ���� 11�� ���� : ����, ����, ����,  �뷮��, ����, ��õ, �д�, �ϻ�, ����, �׽�Ʈ
		Else
			strSql = strSql & vbCrlf & "				WHEN GH_ACA_CD IN (27, 44, 38, 121) THEN 1819" '2023 ���� 10�� ���� : ����, �������, ���ʱ��, �ȼ����
			strSql = strSql & vbCrlf & "				WHEN GH_ACA_CD IN (11, 12, 17, 41, 115, 74, 75, 76, 45, 119) THEN 1820" '2023 ���� 11�� ���� : ����, ����, ����,  �뷮��, ����, ��õ, �д�, �ϻ�, ����, �׽�Ʈ
		End If
		strSql = strSql & vbCrlf & "				ELSE 0"
		strSql = strSql & vbCrlf & "			END"
		strSql = strSql & vbCrlf & "		AND YEAR(CS.CS_CO_SDT) = " & g_TP_PREV_YEAR
		strSql = strSql & vbCrlf & "		AND GH.GH_BE_CD IN (11, 12)" '11 : ����, 12 : ���, 13 : ����, 14 : �������(��), 31:���
		strSql = strSql & vbCrlf & "		AND LM.LM_CLS_CD IN (11)"' 11 �������, 12 ����-����
		strSql = strSql & vbCrlf & "		AND(" '2022-12-20 �л��� ����� : ����п��� ȯ��, ��������� �л� ���� ���
		strSql = strSql & vbCrlf & "			(AM_REG_YN = 'Y')" '����п�
		strSql = strSql & vbCrlf & "			OR"
		strSql = strSql & vbCrlf & "			(AM_REG_YN = 'N' AND GH_REFUND_CD IS NULL)" '�Ϲ��п�
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
			' �л� �� ���ð�
			acaCd = objRs("GH_ACA_CD")
			clsCd = objRs("LM_CLS_CD")
			Ams_Mcode = objRs("Ams_Mem_Cd")
			cmNm = objRs("CM_COURSE_NM")
			mGrd = objRs("MD_GRD")
			mColeCd = objRs("CL_COLE_CD")
			subCd = objRs("CS_SUB_CD") '���� �ڵ�

			' ���� ��û �ܰ� ���� ��������
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

			' 1�ܰ� ��û ���� TP_UNIVPASSFILE_YN
			' 2�ܰ�(�⺻���� �Է� �Ϸ� ����) : TP_EXAM_YN
			' 3�ܰ�(�����ڷ� ��� ����) : TP_MEMPIC_YN(�������), TP_EXAMSN_YN(���� ����ǥ ��� ����)
			' 4�ܰ�(������ ����) : TP_SUGI_CNT > 0
			' ����: g_TP_SENDYN

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
					' �������ΰ� �ϳ��� ������ ���������� ǥ��
					g_IngCheck = "Y"
				End If
			Else
				g_IngCheck = "N"
				g_TP_SENDYN = "N"
			End If
			sRs.close
			Set sRs = Nothing
		
			'���� ���� ���� �Է� Ȯ�� S
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
			'���� ���� ���� �Է� Ȯ�� E
		End If

		objRs.close
		Set objRs = Nothing
	End If
	'END - �л� ���� Ȯ�� �� ����ó�� -------------------------------------------------------------------------------------------------------------------------------------

	' ====================================================================================================================================
	' 2023-12-26 / �л��� ��û
	' ���� : [Ȯ�ο�û] 2024 �������� 2�� ���� ���� : 1�� ���� ���� ����� �� ����� ����, 2�� ���� ���� ����� ���� ����
	' 1�� ���� �������� ���� �л��� ���Ƽ� Ư�� �л��鸸 ���� �����ϵ��� ����ó��
	' ====================================================================================================================================
	Select Case Ams_Mcode
		Case "577458", "575889", "576188", "582806", "587369", "578016", "574884", "553642", "551748", "574134"
			F_applyStartTime = "2023"&"1201"&"100000" '���� 1�� �������� ������
			F_applyEndTime = "2024"&"0229"&"235959" '���� 1�� �������� ������
	End Select

	'START - ���� ���л� �����ϱ� -------------------------------------------------------------------------------------------------------------------------------------
	If CDbl(F_applyStartTime) <= CDbl(GetNowDate()) And CDbl(GetNowDate()) <= CDbl(F_applyEndTime) Then
		g_JungsiEventDateCheck = "Y"

		If clsCd = 11 Then
			If g_TP_SENDYN = "Y" Then
				F_onClick = "alert('�̹� ������ �����ϼ̽��ϴ�.');"
			Else
				g_JungsiEventTargetCheck = "Y"
				If g_IngCheck = "Y" Then
					F_onClick = "fnConfirmLink('�̹� �ۼ����� ������ �ֽ��ϴ�.\n���б� ������ ���� ������ ��� ����Ͻðڽ��ϱ�?.', '/campus_common/"&g_TP_YEAR&"/"&g_TP_YEAR&"_teamplay_step/apply/challenge_write.asp');"
				Else
					If thisYearExamReg = "N" Then
						F_onClick = "fnConfirmLink('�������������� ���� ���� �Է� �� 1�� ���� ������ �����մϴ�.\n������ �Է��Ͻðڽ��ϱ�?', '/mypage/teamplay_info/?g=sn_rec');"
					Else
						F_onClick = "fnConfirmLink('���� ���� ��� ���л�(" & g_TP_YEAR & " ���� ������Ž(2) 5���� 1���)�� �ش��ϸ�, �ϴ��� ���ǻ����� Ȯ���Ͽ���, ��� ������ �غ�Ǿ����ϱ�?', '/campus_common/"&g_TP_YEAR&"/"&g_TP_YEAR&"_teamplay_step/apply/challenge_write.asp');"
					End If
				End If
			End If
		Else
			If gLoginMemId = "" Or IsNull(gLoginMemId) Then	' �α���üũ
				rtnUrl = Request.Servervariables("PATH_INFO")
				F_onClick = "fnConfirmLink('�α��� �� ���� �����մϴ�.\n�α��� �������� �̵��Ͻðڽ��ϱ�?', '/member/login.asp?rtnUrl=" & Server.URLEncode(rtnUrl&"?rtn=R") &"');"
			ElseIf gLoginMemKind = "3" Then '�кθ�
				F_onClick = "alert('�кθ� �������δ� ���������� �Ұ��մϴ�.\n�л� �������� �α������ּ���.');"
			ElseIf gLoginMemKind = "5" Then '������
				F_onClick = "alert('������ �������� �α��� ���̾ ������ ������ �Ұ����մϴ�.');"
			ElseIf gAmsMcodeCnt = "0" Then ' ����������� ���Ѱ��
				F_onClick = "fnConfirmLink('����� ���� �� ���� �����մϴ�.\����� ������ �Ͻðڽ��ϱ�?', '/mypage/student/my_confirm.asp');"
			Else
				F_onClick = "alert('�������� ���� ���� ����ڰ� �ƴմϴ�.\n������չ� ���� ������ �̼��� ������� 1�� ���� ������ �����մϴ�.');"
			End If
		End If
	ElseIf CDbl(GetNowDate()) < CDbl(F_applyStartTime) Then '���� ���л� ���� ��
		' ��¥�� 0�� �տ� ���� �ȵȴٰ� �ϴ� ��쿡 ����
		' noZeroFirstDay = Mid(F_applyStartTime, 7, 2)
		' If Left(noZeroFirstDay, 1) = "0" Then
		' 	noZeroFirstDay = Right(noZeroFirstDay, 1)
		' End If

		g_image_switch = "off"
		' F_onClick = "alert('" & Mid(F_applyStartTime, 1, 4) & "�� " & Mid(F_applyStartTime, 5, 2) & "�� " & Mid(F_applyStartTime, 7, 2) & "�Ϻ��� ���� ���� �����մϴ�.');"
		F_onClick = "alert('���� ���� �Ⱓ�� �ƴմϴ�');"
	ElseIf CDbl(GetNowDate()) > CDbl(F_applyEndTime) Then '���� ���л� ���� ����
		g_image_switch = "off"
		' F_onClick = "alert('���� ���л� ���� ������ ����Ǿ����ϴ�.\n(" & Mid(F_applyEndTime, 1, 4) & "�� " & Mid(F_applyEndTime, 5, 2) & "�� " & Mid(F_applyEndTime, 7, 2) & "�� ����)');"
		F_onClick = "alert('���� ���� ������ �����Ǿ����ϴ�');"
	End If
	'END - ���� ���л� �����ϱ� -------------------------------------------------------------------------------------------------------------------------------------

	'START - ���� ���л� ��ǥ -------------------------------------------------------------------------------------------------------------------------------------
	If CDbl(F_resultStartTime) <= CDbl(GetNowDate()) And CDbl(GetNowDate()) <= CDbl(F_resultEndTime) Then
		g_JungsiResultDateCheck = "Y"
		' If g_TP_SENDYN = "Y" Then '1�� ���� ���� �Ⱓ�� 2�� ���� ���� �Ⱓ�� ���ļ� Ŭ�� �̺�Ʈ ����� �ڵ� �߰�
		' 	F_onClick = "fnConfirmLink('2�� ���� ������ �غ�Ǿ����ϱ�?', '/campus_common/"&g_TP_YEAR&"/"&g_TP_YEAR&"_teamplay_step/apply/challenge_result.asp');"
		' End If
	
		If gLoginMemId = "" Or IsNull(gLoginMemId) Then
			pUrl = Request.Servervariables("PATH_INFO")
			fScript = "alert('�α��� �� ���� �����մϴ�.\n�α��� �������� �̵��մϴ�'); location.href='/member/login.asp?rtnUrl=" & Server.URLEncode(pUrl & "?rtn=R") & "';"
		Else
			' ���� ��û ����
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

				If f_TP_SENDYN = "Y" Then '��û �Ϸ� ����
					If f_TP_FIRSTPASSYN = "Y" Then '�հ� ����
						If f_TP_MEMBANK_YN = "Y" And f_TP_UNIVPASSFILE_YN = "Y" Then '�հ� �� ���� ���� �Ϸ�
							g_JungsiResultTargetCheck = "O"
						Else
							g_JungsiResultTargetCheck = "Y"
						End If
					Else
						' g_JungsiResultTargetCheck = "N" ' 2�� �������� ����� Ȯ�� ���� �� 1�� �հ� üũ ���� ���� / 2023-12-26 / �л��� ��û
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
	'END - ���� ���л� ��ǥ -------------------------------------------------------------------------------------------------------------------------------------
%>