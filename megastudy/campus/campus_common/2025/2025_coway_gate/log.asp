<%
Response.CodePage = 949
Response.CharSet = "euc-kr"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
'=======================================================================
'�� �� : �ڿ��� ���� �̺�Ʈ ��û�� ���� ������Ʈ
'�� �� �� : coway_apply_update.asp
'�ۼ����� : 2025-05-29
'�� �� �� : cms
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'=======================================================================

formFilter() ' SQL ������ ���ڿ� ���͸�

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