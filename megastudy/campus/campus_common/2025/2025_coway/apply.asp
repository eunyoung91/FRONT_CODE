<%
Response.CodePage = 949
Response.CharSet = "euc-kr"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
'=======================================================================
'기 능 : 코웨이&코라솔 제휴 이벤트 신청
'파 일 명 : apply.asp
'작성일자 : 2025-05-26
'작 성 자 : cms
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'=======================================================================
formFilter() ' SQL 인젝션 문자열 필터링
Dim layerAca, acatype, name1, phone1, name2, phone2, appdate1, grade1, type1, content1, clientIP, param1, rs, RESULT_CD

layerAca = VARS("layerAca")
name1 = unescape(VARS("name1"))
phone1 = VARS("phone1")
name2 = unescape(VARS("name2"))
phone2 = VARS("phone2")
appdate1 = CDate(VARS("appdate1"))
grade1 = VARS("grade1")
type1 = VARS("type1")
content1 = unescape(VARS("content1"))
clientIP = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
param1 = VARS("param1")

If clientIP = "" Or IsNull(clientIP) Then
    clientIP = Request.ServerVariables("REMOTE_ADDR")
End If

If HasValue(layerAca, "12, 17, 41, 27, 115, 74, 75, 76, 45", ",", True) = True Then
    acatype = "C"
Else
    acatype = "R"
End If

If param1 = "cowayls" Then
    param1 = "코라솔 고객"
ElseIf param1 = "coway" Then
    param1 = "코웨이 고객"
ElseIf param1 = "staff" Then
    param1 = "코웨이/코라솔 임직원"
ElseIf param1 = "cody" Then
    param1 = "코디"
End If

' response.write "layerAca: " & layerAca & "<br>"
' response.write "name1: " & name1 & "<br>"
' response.write "phone1: " & phone1 & "<br>"
' response.write "name2: " & name2 & "<br>"
' response.write "phone2: " & phone2 & "<br>"
' response.write "phone2: " & phone2 & "<br>"
' response.write "appdate1: " & appdate1 & "<br>"
' response.write "grade: " & grade1 & "<br>"
' response.write "type: " & type1 & "<br>"
' response.write "content: " & content1 & "<br>"
' response.write "acatype: " & acatype
' response.write "clientIP: " & clientIP
' response.write param1
' response.end
' response.end

If ValueCheck(layerAca) Then

    Set objComm = Server.CreateObject("ADODB.Command")

    With objComm
        .ActiveConnection = strDsn
        .CommandText = "MSP_PARTNER_INSERT_APPLY"
        .CommandType = adCmdStoredProc

        .Parameters.Append .CreateParameter("@COM_CD", adInteger, adParamInput, , 1)
        .Parameters.Append .CreateParameter("@ACA_CD", adInteger, adParamInput, , layerAca)
        .Parameters.Append .CreateParameter("@ACA_TYPE", adChar, adParamInput, 1, acatype)
        .Parameters.Append .CreateParameter("@PAR_NM", adVarChar, adParamInput, 60, name1)
        .Parameters.Append .CreateParameter("@PAR_PHONE", adVarChar, adParamInput, 128, strEncode(phone1))
        .Parameters.Append .CreateParameter("@ST_NM", adVarChar, adParamInput, 60, name2)
        .Parameters.Append .CreateParameter("@ST_PHONE", adVarChar, adParamInput, 128, strEncode(phone2))
        .Parameters.Append .CreateParameter("@ST_GRADE", adVarChar, adParamInput, 10, grade1)
        .Parameters.Append .CreateParameter("@ST_DEPART", adVarChar, adParamInput, 10, type1)
        .Parameters.Append .CreateParameter("@QA_CONTENT", adVarChar, adParamInput, -1, content1)
        .Parameters.Append .CreateParameter("@APP_DT", adDBTimeStamp, adParamInput, , appdate1)
        .Parameters.Append .CreateParameter("@APP_TYPE", adVarChar, adParamInput, 50, param1)
        .Parameters.Append .CreateParameter("@APP_IP", adVarChar, adParamInput, 20, clientIP)

        Set rs = .Execute
    End With
    If Not rs.EOF Then
        RESULT_CD = rs("RESULT_CD")
    End If

    Set objComm = Nothing
    rs.Close
    Set rs = Nothing
Else
    RESULT_CD =  -1
End If

jsonStr = "{"
JsonStr = JsonStr & " ""RESULT"" : """& RESULT_CD &""" "
jsonStr = jsonStr & "}"

response.write jsonStr

%>