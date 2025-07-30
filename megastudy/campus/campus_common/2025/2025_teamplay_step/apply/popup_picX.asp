<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
	Function RegImage(pFileUrl, pFileName, filetype,objnm, sFileName)
		Dim sFileFullName : sFileFullName = pFileUrl & "/" & pFileName
		%>
			<script type="text/javascript">
				opener.document.getElementById("<%=objnm%>_FILENM").value = "<%=pFileName%>";
				opener.document.getElementById("<%=objnm%>_YN").value = "Y";
				opener.document.getElementById("<%=objnm%>_REALFILENM").innerHTML = "<a href=\"javascript:void(0);\" onclick=\"openPicViewWin('<%=filetype%>','<%=sFileFullName%>');\"><%=sFileName%></a> <button type=\"button\" class=\"btn_delete\" onclick=\"delPicView('<%=objnm%>', '<%=filetype%>');\"><span class=\"blind\">삭제</span>";

				<%If filetype = "EXAMSN" Or filetype = "EXAMSNLAST" Then%>
					opener.controlSaveButton1();
				<%ElseIf filetype="MEMPIC" Then%>
					opener.controlSaveButton2();
				<%ElseIf filetype="UNIVPASSFILE" Then%>
				<%ElseIf filetype="MEMBANK" Then%>
					opener.document.getElementById("<%=objnm%>_REALFILENM").setAttribute("class", "file_name");
				<%End If%>

				opener.TpCompleteCheckMain();

				self.close();
			</script>
		<%
		response.End
	End Function
	
	Dim gTPSaveUrl : gTPSaveUrl = "/data/TeamPlayEvt"
	Dim gTPSavePath : gTPSavePath = server.mappath(gTPSaveUrl) & "\"
%>
<%
	Dim objUpload : Set objUpload = Server.CreateObject("DEXT.FileUpload")
	' objUpload.AutoMakeFolder = True 'folder will be created automatically
	objUpload.DefaultPath = Server.MapPath(gTPSaveUrl)
	'Call formFilterBinary("Dext",objUpload) ' SQL 인젝션 문자열 필터링
	Dim sFileName : sFileName = ""

	filetype = objUpload("filetype")
	objnm = objUpload("objnm")

	If ValueCheck(objUpload("app_photo")) = True Then
		sFileName = Trim(objUpload("app_photo"))
	End If

	If sFileName <> "" Then
		Dim cFlag : cFlag = "Y"
		Dim sFileType : sFileType = Trim(objUpload("app_photo").MimeType)
		Dim nFileSize : nFileSize = objUpload("app_photo").FileLen
		Dim nMaxfileSize : nMaxfileSize = 1024 * 1024 * 10

		If LCase(sFileType) <> "image/pjpeg" And LCase(sFileType) <> "image/jpeg" And LCase(sFileType) <> "image/png" And LCase(sFileType) <> "image/gif" Then '이미지 파일이 아니면...
			Call js_back("10MB 이하의 jpg, jpeg, gif, png만 등록 가능합니다.")
			'Call AlertAndPageMove("이미지 파일이 아닙니다.", "./popup_pic.asp", "")
			cFlag = "N"
		End If

		If nFileSize > nMaxfileSize Then '파일크기가 정해진 최대크기보다 크면
			Call js_back("10MB 이하의 jpg, jpeg, gif, png만 등록 가능합니다.")
			'Call AlertAndPageMove("파일은 최대 10MB까지 업로드하실 수 있습니다.", "./popup_pic.asp", "")
			cFlag = "N"
		End If

		Dim sPhotoSaveUrl : sPhotoSaveUrl = gTPSaveUrl
		Dim sPhotoSavePath : sPhotoSavePath = gTPSavePath

		sFileName = Mid(sFileName,InstrRev(sFileName,"\")+1)
		Dim arrTmpPhotoName : arrTmpPhotoName = Split(sFileName,".")

		Dim sPhotoFileName : sPhotoFileName = gLoginMemCode & "_" & Year(now) & Right("0"&Month(now),2) & Right("0"&day(now),2) & Right("0"&hour(now),2) & Right("0"&minute(now),2) & Right("0"&second(now),2)
		Dim sPhotoFileExt : sPhotoFileExt = ""

		If IsArray(arrTmpPhotoName) = True Then
			If (UBound(arrTmpPhotoName) > 0) Then
				sPhotoFileExt = LCase(arrTmpPhotoName(UBound(arrTmpPhotoName)))
			End If
		End If

		If (sPhotoFileExt <> "jpg") And (sPhotoFileExt <> "jpeg")  And  (sPhotoFileExt <> "png") And (sPhotoFileExt <> "gif") Then
			Call js_back("jpg,png 파일 형식으로 등록해 주세요.")
			'Call AlertAndPageMove("jpg,png 파일 형식으로 등록해 주세요.", "./popup_pic.asp", "")
			cFlag = "N"
		End If

		sPhotoFileName = sPhotoFileName & "." & sPhotoFileExt
		If cFlag = "Y" Then
			objUpload("app_photo").saveas sPhotoSavePath & sPhotoFileName

			If  filetype ="EXAMSNLAST" Then
				If Request.ServerVariables("LOCAL_ADDR") = "10.1.3.10" Then '개발서버 체크
					add_sFileDir = Server.MapPath("\upload_file")
					add_sFileDir = add_sFileDir & "\exam_pic\"
				Else 
					add_sFileDir = Server.MapPath("\exam_pic")
					add_sFileDir = add_sFileDir & "\"
				End If 
				add_FullPathForSave = add_sFileDir & sPhotoFileName
				objUpload("app_photo").SaveAs(add_FullPathForSave) '파일명 새이름으로 저장
			End If 

			Call RegImage( sPhotoSaveUrl, sPhotoFileName,filetype,objnm, sFileName)
		Else
			Call js_back("사진 저장 중 오류가 발생하였습니다.")
			'Call AlertAndPageMove("사진 저장 중 오류가 발생하였습니다.", "./popup_pic.asp", "")
		End If
	Else
		Call js_back("파일이 업로드되지 않았습니다.")
	End If

	Set objUpload = Nothing
%>