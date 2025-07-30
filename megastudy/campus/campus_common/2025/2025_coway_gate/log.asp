<%
Response.CodePage = 949
Response.CharSet = "euc-kr"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
'=======================================================================
'기 능 : 코웨이 제휴 이벤트 신청자 정보 업데이트
'파 일 명 : coway_apply_update.asp
'작성일자 : 2025-05-29
'작 성 자 : cms
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'=======================================================================

formFilter() ' SQL 인젝션 문자열 필터링

DEVICE = VARS("device")
LOGIP = Request.ServerVariables("HTTP_X_FORWARDED_FOR")

If LOGIP = "" Or IsNull(LOGIP) Then
    LOGIP = Request.ServerVariables("REMOTE_ADDR")
End If

sSql = ""
sSql = sSql & vbCrlf & "INSERT INTO MG_PARTNER_LOG(PL_COM_CD, PL_DEV_TYPE, PL_LOG_IP) "
sSql = sSql & vbCrlf & "VALUES (1, '" & DEVICE & "', '" & LOGIP & "') "

Set oRs = objDb.sqlQueryNew(sSql, 1)
%>