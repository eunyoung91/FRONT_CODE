<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/Public/Mailing.asp" -->

<%
Session.CodePage = 949
Response.CharSet = "euc-kr"
Response.AddHeader "Pragma","no-cache"
Response.AddHeader "Expires","0"

Call formFilter() 'SQL Injection Filtering

'싱글쿼테이션 오류방지.
phone = SafeQuery(VARS("phone"))
email1 = SafeQuery(VARS("email"))
email2 = SafeQuery(VARS("email2"))
email = email1 & "@" & email2
pagetype = SafeQuery(VARS("pagetype"))

'XSS취약조치(태그변환, 허용할 태그 지정) *싱글쿼테이션 기본포함.
title = clearXSS(Unescape(VARS("title")), "")
content = clearXSS(Unescape(VARS("content")), "")
name = clearXSS(Unescape(VARS("name")), "")

' response.write title & "|" & name & "|" & phone & "|" & email & "|" & content
' response.end

'실서버 메일 보내기
If CSTr(GetServerGubun()) = "real" Then
    Call mailing_omega_report(title, name, phone, email, Unescape(VARS("content")))
End IF

'DB저장시에만 Replace
phone = Replace(phone, "-", "")

Set objComm = Server.CreateObject("ADODB.Command")

With objComm
    .ActiveConnection = strDsn
    .CommandText = "MSP_OMEGA_REPORT_INSERT"
    .CommandType = adCmdStoredProc

    .Parameters.Append .CreateParameter("@TITLE", adVarChar, adParamInput, 100, title)
    .Parameters.Append .CreateParameter("@NAME", adVarChar, adParamInput, 100, name)
    .Parameters.Append .CreateParameter("@PHONE", adVarChar, adParamInput, 128, phone)
    .Parameters.Append .CreateParameter("@EMAIL", adVarChar, adParamInput, 256, email)
    .Parameters.Append .CreateParameter("@CONTENT", adVarChar, adParamInput, -1, content)
    .Parameters.Append .CreateParameter("@PAGETYPE", adChar, adParamInput, 1, pagetype)

    .Execute , , adExecuteNoRecords

End With
Set objComm = Nothing

Response.write "{""result"":""OK""}"
Response.End
%>