<%
	response.charset="euc-kr"
%>
<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/campus_common/2016_predict/inc_predict.asp" -->
<%
	strSql = "EXEC MSP_MG_BOARD_SUGI '2025', 'Y', 'Y'" 'EXEC MSP_MG_BOARD_SUGI YEAR, MAIN_YN, TOP_YN
	Set objRs = objDb.sqlQuery(strSql, 3)
	
	Dim CurrentPage  : CurrentPage = VARS("nPage")
	Dim ItemsPerPage : ItemsPerPage = 6
	Dim TotalRecords : TotalRecords = 0
	Dim TotalPages : TotalPages = 0
	Dim FirstRecord : FirstRecord = 0
	Dim LastRecord : LastRecord = 0

	If Not objRs.EOF Then
		TotalRecords = objRs.RecordCount
		TotalPages = Ceil(TotalRecords / ItemsPerPage)
		
		FirstRecord = (CurrentPage - 1) * ItemsPerPage
		LastRecord = FirstRecord + ItemsPerPage

		objRs.MoveFirst
		objRs.Move(FirstRecord)
	End If

	' 합격 수기 리스트
	Do Until (objRs.EOF) Or (objRs.AbsolutePosition > LastRecord)
		dtSeq = objRs("SEQ")
		dtS_CodeName = objRs("S_CODENAME")
		dtS_Name = objRs("S_NAME")
		dtS_Type = objRs("S_TYPE")
		dtS_Univ = objRs("S_UNIV")
		dtS_Major = objRs("S_MAJOR")
		dtS_BANNER_TXT = objRs("S_BANNER_TXT")
		dtS_SUBJECT = objRs("S_SUBJECT")
		dtS_CONTENT = objRs("S_CONTENT")
		dtS_Dept_Type = objRs("S_DEPT_TYPE")

		If (objRs.AbsolutePosition - 1) Mod 2 = 0 Then
			strClass = "c_odd"
		Else
			strClass = "c_even"
		End If

		%>
			<li id="liNm<%=dtSeq%>" class="<%=strClass%>">
				<div class="title_wrap">
					<span class="team_stu">
						<em><%=dtS_Name%></em> <%=dtS_Univ%>&nbsp;<%=dtS_Major%> 합격
					</span>
					<span class="team_sc">
						<em><%=dtS_CodeName%></em>
						<!-- <%=dtS_Dept_Type%> 2022.02 계열값 사용안함으로 변경-->
					</span>
					<!-- 2023-02-17 / 이상준 / 노출하지 않기로 함
					<span class="team_code"><%=dtS_Type%></span>
					-->
				</div>
				<p class="title"><%=dtS_Subject%></p>
				<p class="team_contents"><%=Replace(dtS_Content, "덕분에", "<span>덕분에</span>")%></p>
			</li>
		<%

		objRs.MoveNext
	Loop

	objRs.close
	Set objRs = Nothing
%>
<input type="hidden" id="hdPageCnt" name="hdPageCnt" value="<%=TotalPages%>"/>