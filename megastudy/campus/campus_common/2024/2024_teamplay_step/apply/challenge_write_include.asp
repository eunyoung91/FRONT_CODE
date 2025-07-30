<%
	formFilter() ' SQL 인젝션 문자열 필터링 함수

	If gLoginMemKind = "1" Then '재원생 인증 학번
		nAmsMemCd = Ams_Mcode
	Else
		nAmsMemCd = ""
	End If

	'기간설정  S
		If g_JungsiEventDateCheck = "N" Then
			Call AlertAndPageMove("팀플장학생 지원 기간이 아닙니다.", "../index.asp", "")
		End If
	'기간설정  E

	If ValueCheck(nAmsMemCd) = True Then '재원인증 & 재수정규반(10-11월 과정)
		'처음 페이지 접근시 데이터 입력 S
			topTabCode = "" '안쓰는 값(g 값으로 js에서 넘겨주는데 받아서 쓰지 않음)
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

			' 팀플 데이터 등록(초기 1회)
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
		'처음 페이지 접근시 데이터 입력 E

		'데이터 입력 및 공통 데이터 가져오기 S
			T_jungsi_registration = "N" ' 정시등록여부
			T_sn_registration = "N" ' 수능성적등록여부	
			T_sn_last_registration = "N" '작년수능성적등록여부
			T_sn_this_registration = "N" '올해수능성적등록여부
			T_write_registration = "N" '합격수기등록여부
			T_complete_registration = "N" '최종지원여부
		'데이터 입력 및 공통 데이터 가져오기 E

		'공통 처리 변수 가져오기 S
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
		'공통 처리 변수 가져오기 E

		'성적등록여부
		'작년 성적 확인 S
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

				If T_TP_EXAMSNLAST_ENTER_YN = "N" And T_TP_EXAMSNLAST_ENTER_REASON <> "" Then '미응시일때는 성적등록으로 변경
					T_sn_last_registration = "Y"
				End If 
			Else
				T_sn_last_registration = "N"

				If T_TP_EXAMSNLAST_ENTER_YN = "N" And T_TP_EXAMSNLAST_ENTER_REASON <> "" Then '미응시일때는 성적등록으로 변경
					T_sn_last_registration = "Y"
				End If 
			End If
			objRs.close
			Set objRs = Nothing
		'작년 성적 확인 E

		'올해 성적 확인 S
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
		'올해 성적 확인 E

		'합격수기 등록여부 S
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
		'합격수기 등록여부 E

		'전체 지원여부 S
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
		'전체 지원여부 E
	End If

	Dim AlertAndPageMove_MSG : AlertAndPageMove_MSG = ""
	Dim AlertAndPageMove_PAGE : AlertAndPageMove_PAGE = ""
	Dim AlertAndPageMove_TARGET : AlertAndTARGETMove_PAGE = ""
	Dim execThisScript : execThisScript = ""
	
	If gLoginMemKind = "5" Then '관리자
		AlertAndPageMove_MSG = "관리자로 로그인 중이라서 접근이 불가능합니다"
		AlertAndPageMove_PAGE = "../index.asp"
	ElseIf gAmsMcodeCnt > 0 Then '재원생 인증을한 학생
		If clsCd = 0 Then
			AlertAndPageMove_MSG = "팀플장학 서류 제출 대상자가 아닙니다.\n재수종합반 정규 과정을 이수한 재원생만 1차 서류 제출이 가능합니다."
			AlertAndPageMove_PAGE = "../index.asp"
		ElseIf T_sn_this_registration = "N" Then
			AlertAndPageMove_MSG = "마이페이지에서 수능 성적을 입력 후 1차 서류 제출이 가능합니다."
			AlertAndPageMove_PAGE = "/mypage/teamplay_info/?g=sn_rec"
		ElseIf g_TP_SENDYN = "Y" Then
			AlertAndPageMove_MSG = "이미 서류 제출이 완료되었습니다."
			AlertAndPageMove_PAGE = "../index.asp"
		End If
	Else
		If gLoginMemKind = "" Then '로그인 안함
			AlertAndPageMove_MSG = "로그인 후 참여 가능합니다.\n로그인 페이지로 이동합니다."
			AlertAndPageMove_PAGE = "/mypage/mypage.asp"
		ElseIf gLoginMemKind = "3" Then '학부모
			AlertAndPageMove_MSG = "학부모 계정으로는 장학생 신청이 불가합니다.\n학생 계정으로 로그인해주세요."
			AlertAndPageMove_PAGE = "../index.asp"
		ElseIf clsCd = 0 Then
			AlertAndPageMove_MSG = "재원생 인증 후 참여 가능합니다.\n재원생 인증 후 참여해주세요."
			AlertAndPageMove_PAGE = "/mypage/student/my_confirm.asp"
		End If
	End If

	If AlertAndPageMove_MSG <> "" Then
		Call AlertAndPageMove(AlertAndPageMove_MSG, AlertAndPageMove_PAGE, AlertAndPageMove_TARGET)
	Else
		If g_TP_SENDYN = "I" Then
			If step3_2 = "N" Then '수능 성적표
				infoStepId = "info_step1"
			ElseIf step3_1 = "N" Then '증명사진
				infoStepId = "info_step2"
			ElseIf step4 < 5 Then '합격수기
				infoStepId = "info_step3"
			Else '개인정보 활용 동의
				infoStepId = "info_step4"
			End If
			
			If InStr(Request.ServerVariables("SCRIPT_NAME"), "_publisher.asp") <= 0 Then '임시 저장 버튼을 누른 경우는 alert가 뜨지 않도록 함
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