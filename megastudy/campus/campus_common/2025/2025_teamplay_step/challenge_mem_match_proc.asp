<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.MsSql.asp" -->
<!-- #include file="./cl_header.asp" -->
<%
	Dim s_type, s_mode, memcd
	Dim uptRst

	s_type = VARS("type") ' ����:S/����:F
	s_mode = VARS("mode")
	memcd = VARS("memcd")

	If gLoginMemCode = "" Then
		Response.write "ID"
		Response.end
	Else		
		If s_mode = "match" Then ' �й� ��Ī ��Ű��
			If memcd = "" Then
				Response.write "MEMCD"
				Response.end
			Else
				strSql = "UPDATE Mg_Member SET Ams_Mem_Cd = " & memcd & " WHERE Code = " & gLoginMemCode
				uptRst = ObjDb.sqlExecute2(strSql)

				If uptRst > 0 Then
					Response.write "OK"
				Else
					Response.write "ERROR"
				End If
			End If
		ElseIf s_mode = "bank_reset" Then ' �������� �ʱ�ȭ
			Ams_Mcode = objDB.sqlResult("select Ams_Mem_Cd from Mg_Member with(nolock) where Code = '" & gLoginMemCode &"' and uKind='1' and uDel_fg='N' ")

			strSql = ""
			strSql = strSql  & " UPDATE AMS_TEAMPLAY_EVT "
			strSql = strSql  & " SET "			
			strSql = strSql  & "	TP_MEMBANK_YN = 'N' "
			strSql = strSql  & "	, TP_MEMBANK_FILENM = null "
			strSql = strSql  & "	, TP_MEMBANK_BNM = null "
			strSql = strSql  & "	, TP_MEMBANK_UNM = null "
			strSql = strSql  & "	, TP_MEMBANK_NUM = null "
			strSql = strSql  & "	, TP_COMPLETEDATE = getdate() "
			strSql = strSql  & " WHERE TP_MEM_CD ='" & Ams_Mcode & "' AND TP_YEAR ='" & g_TP_YEAR & "' AND TP_TYPE ='" & s_type & "' AND TP_FIRSTPASSYN = 'Y' "
			uptRst = amsObjDb.sqlExecute2(strSql)

			If uptRst > 0 Then
				Response.write "OK"
			Else
				Response.write "ERROR"
			End If
		End If
	End If
%>