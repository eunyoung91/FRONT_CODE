<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
'=======================================================================
'�� �� : �ڿ���&�ڶ�� ���� �̺�Ʈ ������ ������ȣ �߼�
'�� �� �� : confirm_aurth_num.asp
'�ۼ����� : 2025-05-26
'�� �� �� : cms
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'=======================================================================
formFilter() ' SQL ������ ���ڿ� ���͸�

Dim mode, pType, phone1, num1, intResult, result, resultMsg

mode = VARS("mode")
phone1 = VARS("phone1")
num1 = VARS("num1")

IF ValueCheck(phone1) = False Then
    phone1 = ""
End If

If mode = "SEND" Then	'������ȣ �߼�
    InjNum = randNum(6)

    If ValueCheck(phone1) Then

        Set objComm = Server.CreateObject("ADODB.Command")

        With objComm
            .ActiveConnection = strDsn
            .CommandText = "MSP_PARTNER_APPLY_CHECK"
            .CommandType = adCmdStoredProc

            .Parameters.Append .CreateParameter("@COM_CD", adInteger, adParamInput, , 1)
            .Parameters.Append .CreateParameter("@PAR_PHONE", adVarChar, adParamInput, 128, strEncode(phone1))

            Set rs = .Execute
        End With
        If Not rs.EOF Then
            RESULT_CD = rs("RESULT_CD")
        End If

        Set objComm = Nothing
        rs.Close
        Set rs = Nothing

        If RESULT_CD = -1 Then
            Set objComm = Server.CreateObject("ADODB.Command")

            With objComm
                .ActiveConnection = strDsn
                .CommandText = "MSP_MEM_AUTH_ACTION"
                .CommandType = adCmdStoredProc

                .Parameters.Append .CreateParameter("@SEND_MODE", adVarChar, adParamInput, 20, mode)
                .Parameters.Append .CreateParameter("@SEND_TYPE", adChar, adParamInput, 1, "S") ' S: SMS, E: Email
                .Parameters.Append .CreateParameter("@SEND_MOBILE", adVarChar, adParamInput, 20, phone1)
                .Parameters.Append .CreateParameter("@SEND_EMAIL", adVarChar, adParamInput, 100, "")
                .Parameters.Append .CreateParameter("@SEND_APP_CODE", adVarChar, adParamInput, 20, InjNum)
                .Parameters.Append .CreateParameter("@SEND_MSG", adVarChar, adParamInput, 4000, KKOMessage("1",InjNum))
                .Parameters.Append .CreateParameter("@LIMIT_TIME", adInteger, adParamInput, 4, 0)
                .Parameters.Append .CreateParameter("@SEND_UID", adVarChar, adParamInput, 50, "")
                .Parameters.Append .CreateParameter("@RESULT", adInteger, adParamOutPut, 4)
                .Parameters.Append .CreateParameter("@AUTH_ENC", adVarChar, adParamOutPut, 200)

                .Execute , , adExecuteNoRecords

                intResult = trim(.Parameters("@RESULT"))
            End With
            Set objComm = Nothing
        End If
        If RESULT_CD = -1 Then
            If intResult > 0 Then
                result =  "S"
                If IsDevSvr() Then '�׼��϶��� ������ȣ ���
                    resultMsg = InjNum
                End If
            Else
                result = "ER"
            End If
        Else 
            result = "A"
        End If
    Else
        result =  "NO"
    End If
ElseIf mode = "CHECK" Then '������ȣ Ȯ��
    If ValueCheck(phone1) Then
        'Response.write "phone1 : " & phone1 & "<br>"
        'Response.write "SendSmsMobile : " & SendSmsMobile & "<br>"
        'Response.write "authnum : " & VARS("authnum") & "<br>"
        'Response.write "MemName : " & MemName & "<br>"

        Set objComm = Server.CreateObject("ADODB.Command")

        With objComm
            .ActiveConnection = strDsn
            .CommandText = "MSP_MEM_AUTH_ACTION"
            .CommandType = adCmdStoredProc

            .Parameters.Append .CreateParameter("@SEND_MODE", adVarChar, adParamInput, 20, mode)
            .Parameters.Append .CreateParameter("@SEND_TYPE", adChar, adParamInput, 1, "S")
            .Parameters.Append .CreateParameter("@SEND_MOBILE", adVarChar, adParamInput, 20, phone1)
            .Parameters.Append .CreateParameter("@SEND_EMAIL", adVarChar, adParamInput, 100, "")
            .Parameters.Append .CreateParameter("@SEND_APP_CODE", adVarChar, adParamInput, 20, num1)
            .Parameters.Append .CreateParameter("@SEND_MSG", adVarChar, adParamInput, 4000, "")
            .Parameters.Append .CreateParameter("@LIMIT_TIME", adInteger, adParamInput, 4, pLimitTime)
            .Parameters.Append .CreateParameter("@SEND_UID", adVarChar, adParamInput, 50, pUid)
            .Parameters.Append .CreateParameter("@RESULT", adInteger, adParamOutPut, 4)
            .Parameters.Append .CreateParameter("@AUTH_ENC", adVarChar, adParamOutPut, 200)

            .Execute , , adExecuteNoRecords

            intResult = trim(.Parameters("@RESULT"))
        End With
        Set objComm = Nothing

        If IsNull(intResult) Then
            intResult = -1
        Else
            intResult = CLng(intResult)
        End If

        If intResult > 0 Then
            result = "S"
        ElseIf intResult = -1 Then  '��ġ�ϴ� ���� ����
            result = "N"
        ElseIf intResult = -2 Then		'������ȣ ����ġ
            result = "X"
        ElseIf intResult = -3 Then		'�����ð� �ʰ�
            result = "T"
        End If
    Else
        result = "NO"
    End If
End If

jsonStr = "{"
JsonStr = JsonStr & " ""RESULT"" : """& result &""", "
JsonStr = JsonStr & " ""RESULT_MSG"" : """& resultMsg &""" "
jsonStr = jsonStr & "}"

response.write jsonStr

%>