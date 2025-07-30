<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.MsSql.asp" -->
<!-- #include file="../cl_header.asp" -->
<!-- #include file="../apply/challenge_write_include.asp" -->
<%
	If gLoginMemId = "" Or IsNull(gLoginMemId) Then
		Call AlertAndPageMove("로그인이 필요합니다.\r\n새로고침 후 다시 입력바랍니다", "", "parent")
		response.end
	End If

	On Error Resume Next

	Function dbErrorLog(sql)
		Dim txtSql
		txtSql = Replace(sql, "'", "''")
		txtDesc = Replace(Err.Description, "'", "''")
		' 에러 SQL, 현재 페이지, 회원아이디, 에러 넘버, 에러내용, 등록아이피
		logSql = ""
		logSql = logSql & vbCrlf & "INSERT INTO AMS_ERROR_LOG (TXTSQL, NPAGE, MEMID, ENUMBER, EDESCRIPTION, REGIP, ETCTEXT)"
		logSql = logSql & vbCrlf & "VALUES ("
		logSql = logSql & vbCrlf & "	'" & txtSql & "', '" & Request.ServerVariables("HTTP_HOST") & Request.ServerVariables("HTTP_url") & "'"
		logSql = logSql & vbCrlf & "	, '" & gLoginMemId & "', '" & Err.Number & "', '" & txtDesc & "', '" & Request.ServerVariables("remote_addr") & "'"
		logSql = logSql & vbCrlf & "	, 'N수생 팀플 등록'"
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

	If VARS("getClsCd") = "12" Then	' 연합반	
		TP_EXAMSNLAST_ENTER_YN = "N"
	Else ' 재수반
		' 재수반 수시일때만 강제 Y
		TP_EXAMSNLAST_ENTER_YN = "Y"
	End If

	response.charset = "euc-kr"

	Call formFilter()

	For Each i In VARS
		VARS(i) = Trim(VARS(i))
	Next

	If VARS("form_mode") = "proc_univ_state" Or VARS("form_mode") = "proc_mega_state" Then '대학합불 및 최종진학여부 처리
		'대학 합격증명서 등록 S
			TP_UNIVPASSFILE_YN = VARS("TP_UNIVPASSFILE_YN")
			TP_UNIVPASSFILE_FILENM = VARS("TP_UNIVPASSFILE_FILENM")
		'대학 합격증명서 등록 E

		'수능성적표 등록 S
			sn_exam_yn = VARS("sn_exam_yn")
			If sn_exam_yn = "N" Then
				TP_EXAMSNLAST_FILENM = ""	
			Else
				TP_EXAMSNLAST_FILENM = VARS("TP_EXAMSNLAST_FILENM")
			End If
			TP_EXAMSNLAST_YN = VARS("TP_EXAMSNLAST_YN")

			TP_EXAMSN_FILENM = VARS("TP_EXAMSN_FILENM")
			TP_EXAMSN_YN = VARS("TP_EXAMSN_YN")
		'수능성적표 등록 E

		AlertMsg = "저장되었습니다."
		TP_EXAMSNLAST_ENTER_YN = VARS("LastExamEnterYN")
		TP_EXAMSNLAST_ENTER_REASON = VARS("sn_exam_reason_sel")
		TP_EXAMSNLAST_ENTER_REASONETC = VARS("sn_exam_reason_etc")
		strSql = ""
		strSql = strSql & vbCrlf & "UPDATE AMS_TEAMPLAY_EVT"
		strSql = strSql & vbCrlf & "SET"
		strSql = strSql & vbCrlf & "	TP_COMPLETEDATE = GETDATE()" '지원 완료 날짜
		strSql = strSql & vbCrlf & "	, TP_UNIVPASSFILE_YN = '" & TP_UNIVPASSFILE_YN & "'" '대학 합격 증명서
		strSql = strSql & vbCrlf & "	, TP_UNIVPASSFILE_FILENM = '" & TP_UNIVPASSFILE_FILENM & "'" '대학 합격 증명서 파일 이름
		strSql = strSql & vbCrlf & "	, TP_JUNGSIYN = 'N'" 'Y:정시, N:수시
		strSql = strSql & vbCrlf & "	, TP_SENDYN = 'I'" 'Y:완료,I:진행중,N:접속만 함
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_ENTER_YN = '" & TP_EXAMSNLAST_ENTER_YN & "'" '전년도 수능 미응시
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_ENTER_REASON = '" & TP_EXAMSNLAST_ENTER_REASON & "'" '전년도 수능 미응시 사유
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_ENTER_REASONETC = '" & TP_EXAMSNLAST_ENTER_REASONETC & "'" '전년도 수능 미응시(기타 선택 입력)
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_YN = '"& sn_exam_yn &"'" '전년도 수능
		strSql = strSql & vbCrlf & "	, TP_EXAMSN_YN = 'Y'" '올해 수능
		strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_FILENM = '" & TP_EXAMSNLAST_FILENM & "'" '전년도 수능 성적표 파일 이름
		strSql = strSql & vbCrlf & "	, TP_EXAMSN_FILENM = '" & TP_EXAMSN_FILENM & "'" '올해 수능 성적표 파일 이름
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

	If VARS("form_mode") = "proc_pic_state" Or VARS("form_mode") = "proc_mega_state" Then ' 인증자료 등록하기
		'증명사진 등록 처리 S
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
		'증명사진 등록 처리 E

		If VARS("form_mode") <> "proc_mega_state" Then
			AlertMsg = "저장되었습니다."
			%>
				<script>
					parent.alert("<%=AlertMsg%>");
					//parent.document.location.reload();
				</script>
			<%
		End If
	End If

	If VARS("form_mode") = "proc_sugi_state" Or VARS("form_mode") = "proc_mega_state" Then ' 수기 등록하기
		' 기존 데이터가 있는지 재확인
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
			'나중에 입력된 질문은 무조건 UPDATE처리되므로 새로 입력되지 않음
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
		AlertMsg = "저장되었습니다."

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

	If VARS("form_mode") = "proc_mega_state" Then ' 최종자료 등록
		'########################## 중간 저장 없이 최종자료 등록시 데이터들의 등록여부를 다시 확인한다

		' 비교값 안들고오는것들 다시 로드하기 (2019.11.25)
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

		'성적 등록여부
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

		If VARS("getClsCd") = "12" Then	' 연합반
			If T_sn_this_registration = "Y" Then 
				T_sn_registration = "Y"
			End If 
		Else ' 재수반
			If T_sn_last_registration = "Y" And T_sn_this_registration = "Y" Then 
				T_sn_registration = "Y"
			End If
		End If

		'합격수기등록여부
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
			'등록이 됐다면 최종지원 업데이트 하기 
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
					parent.alert("서류 제출이 완료되었습니다.");
					parent.location.href = "../index.asp";
				</script>
			<%
		Else
			%>
				<script type="text/javascript">
					parent.alert("최종 제출이 실패하였습니다.\n모든 정보가 \"등록완료\" 되어야 최종 제출이 가능합니다. 미등록 정보를 확인해 주세요.");
				</script>
			<%
		End If
	End If
%>