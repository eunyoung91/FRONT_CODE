<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include file="../cl_header.asp" -->
<!-- #include file="../challenge_s_vars.asp" -->
<%
	'================================================================
	'2021-12-09 / �̻��� / N��+��3 ���� ���� ���� ���� ������
	'2022�г⵵ ���� ���л����ʹ� DB���� ���� ����� �����ͼ� ���
	'================================================================
	' Response.Write "Ams_Mcode : " & Ams_Mcode
	' Response.Write "<br>"
	' Response.Write "gLoginMemId : " & gLoginMemId
	' Response.End
	defaultPageUrl = "/campus_common/" & g_TP_YEAR & "/" & g_TP_YEAR & "_teamplay/index.asp"

	If gLoginMemKind = "5" Then '������
		Call AlertAndPageMove("�����ڷ� �α��� ���̶� ������ �Ұ����մϴ�.", defaultPageUrl, "")
	ElseIf g_JungsiResultDateCheck <> "Y" Then
		Call AlertAndPageMove("�������� ��ǥ �Ⱓ�� �ƴմϴ�.", defaultPageUrl, "")
	ElseIf gAmsMcodeCnt > 0 Then '����� �������� �л�
		If g_JungsiResultTargetCheck = "O" Then
			Call AlertAndPageMove("�̹� ���� ������ �Ϸ�Ǿ����ϴ�.", defaultPageUrl, "")
		ElseIf g_JungsiResultTargetCheck <> "Y" Then
			Call AlertAndPageMove("�������� ���� ����ڰ� �ƴմϴ�.", defaultPageUrl, "")
		End If
	Else
		If gLoginMemKind = "" Then '�α��� ����
			Call ConfirmAndPageMove("�α��� �� ���� �����մϴ�.\n�α��� �������� �̵��Ͻðڽ��ϱ�?", "/mypage/mypage.asp", defaultPageUrl)
		ElseIf gLoginMemKind = "3" Then '�кθ�
			Call AlertAndPageMove("�кθ� �������δ� ���������� �Ұ��մϴ�.\n�л� �������� �α������ּ���.", defaultPageUrl, "")
		ElseIf clsCd = 0 Then
			Call ConfirmAndPageMove("����� ���� �� ���� �����մϴ�.\n����� ������ �Ͻðڽ��ϱ�?", "/mypage/student/my_confirm.asp", defaultPageUrl)
		End If
	End If
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="" />
	<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->

	<title><%=gMGC_Campus_Title%></title>
	<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
	<!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
	<!-- #include virtual = "/public/jquery.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->

	<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
	<!-- intro���� css -->
	<script type="text/javascript" src="/public/js/intro.js"></script>
	<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
	
	<!-- ���� ���� -->
	<script type="text/javascript" src="../js/teamplay_common.js"></script>
	<link rel="stylesheet" type="text/css" href="../teamplayStep.css">

	<script type="text/javascript">
		// alert("�������� ������ ���Ͽ� �߰� ����� ����(�հ���&����纻)�� �غ�Ǿ����ϱ�?");
		
		var topTabCode = "<%=topTabCode%>"; // ��û ����
	</script>

	<script src="/public/js/waypoints.min.js"></script>
	<script type="text/javascript">
		$(window).on({
			"load":function(){
				var temp_s = $("#div_full").offset().top;
				$('html, body').animate({
					scrollTop: temp_s
				}, 500);
			}
		});
	</script>
</head>
<body>
	<div id="wrapper">
		<!-- �ֻ�ܸ޴�// -->
		<!-- #include virtual="/library/include/common/top.asp" -->
		<!-- //�ֻ�ܸ޴� -->

		<div id="header" class="<%=GetCampusColorType()%>">
			<!-- ��� �п��ΰ� �� ���� ��// -->
			<!-- #include virtual="/library/include/common/top_campus_tab.asp" -->
			<!-- //��� �п��ΰ� �� ���� �� -->
			
			<!-- ��� ��޴�// -->
			<!-- #include virtual="/library/include/common/top_campus_detail_menu.asp" -->
			<!-- //��� ��޴� -->
		</div>
		
		<div id="container" style="padding-bottom:0px !important;">
			<div id="div_cont">
				<div id="div_full" class="div_con">
					<!-- ��� ���� �̹��� -->
					<!-- #include file="../cl_image.asp" -->
					<!-- // ��� ���� �̹��� -->
					
					<div class="div_con0">
						<div class="con_wrap">
							<div class="teamplay_apply result pt60">
								<form name="form_proc_my_univ" id="form_proc_my_univ" method="post" action="">
									<input type="hidden" name="form_mode" id="form_mode" value="">
									<input type="hidden" name="getUnivType" id="getUnivType" value="">
									<input type="hidden" name="cMode" id="cMode" value="">
									<!-- 2019.11.21 ó�������� ��3/����� ��ġ�� ���� �߰� -->
									<input type="hidden" name="getClsCd" id="getClsCd" value="<%=clsCd%>">

									<div class="inner">
										<div class="apply_info txtc">
											<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_con_top_txt.png" alt=""/>
										</div>
										
										<div class="inner_title" style="padding-top:160px;">
											<h2>
												<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_con01_title.png" alt="���б� ���� ���� ���">
											</h2>
											<p class="teamplay_apply_text02">
												<strong><%=gLoginMemName%></strong>��, ���б� ������ ���� �Ʒ� ������ ��� ����� �ּ���.
											</p>
										</div>

										<div class="teamplay_img_wrap2" id="inputArea1">
											<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_apply_title01.png" alt="���� ���д��� �հ����� ���"/>
										</div>
										<%
											'���� ���д��� �������� S
											strSql = ""
											strSql = strSql & vbcrlf & "SELECT"
											strSql = strSql & vbcrlf & "	DU_UNIV_CD"
											strSql = strSql & vbcrlf & "	, DU_UNIV_NAME"
											strSql = strSql & vbcrlf & "	, DU_COLLECT_UNIT"
											strSql = strSql & vbcrlf & "	, CASE UA_APP_SEASON"
											strSql = strSql & vbcrlf & "		WHEN 'S' THEN '����'"
											strSql = strSql & vbcrlf & "		WHEN 'F' THEN '����'"
											strSql = strSql & vbcrlf & "		ELSE ''"
											strSql = strSql & vbcrlf & "	END AS UA_APP_SEASON_TEXT"
											strSql = strSql & vbcrlf & "FROM"
											strSql = strSql & vbcrlf & "	AMS_UNIV_APPLY"
											strSql = strSql & vbcrlf & "	INNER JOIN AMS_DB_UNIV ON DU_UNIV_CD = UA_UNIV_CD"
											strSql = strSql & vbcrlf & "WHERE"
											strSql = strSql & vbcrlf & "	UA_YEAR = " & g_TP_YEAR
											strSql = strSql & vbcrlf & "	AND UA_MEM_CD = " & Ams_Mcode
											strSql = strSql & vbcrlf & "	AND UA_ENTER_YN = 'Y'"
											strSql = strSql & vbcrlf & "	AND UA_PASS_YN IN ('Y', 'A')"
											strSql = strSql & vbcrlf & "ORDER BY"
											strSql = strSql & vbcrlf & "	UA_APP_SEASON ASC"

											Set objRs = amsObjDb.sqlQuery(strSql, 3)
											If Not (objRs.EoF And objRs.BoF) Then
												DU_UNIV_CD = objRs("DU_UNIV_CD")
												DU_UNIV_NAME = objRs("DU_UNIV_NAME")
												DU_COLLECT_UNIT = objRs("DU_COLLECT_UNIT")
												UA_APP_SEASON_TEXT = objRs("UA_APP_SEASON_TEXT")
											Else
												DU_UNIV_CD = 0
												DU_UNIV_NAME = "<span class='ph_in'>���д��� ������ �Է��� �ּ���</span>"
												DU_COLLECT_UNIT = "<span class='ph_in'>�����а� ������ �Է��� �ּ���</span>"
												UA_APP_SEASON_TEXT = "�հ� ������ �������� �ʽ��ϴ�"
											End If
											objRs.close
											Set objRs = Nothing
											'���� ���д��� �������� E
										%>
										<table class="table_new_type_01 account" cellpadding="0" cellspacing="0" border="0" id="examArea3">
											<colgroup>
												<col width="230px">
												<col width="">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">
														<em class="essen">* </em>���� ���д���
													</th>
													<td>
														<div class="input_file univ">
															<input type="hidden" id="DU_UNIV_CD" name="DU_UNIV_CD" value="<%=DU_UNIV_CD%>"/>
															<div class="input_wrap">
																<span class="title_in">���� </span><%=DU_UNIV_NAME%>
																<br>
																<span class="title_in">�а� </span><%=DU_COLLECT_UNIT%>
															</div>

															<%
																passUnivType = "" '����-���� �հ� �Է� ����
																
																If CDbl("2023"&"1201"&"100000") <= CDbl(GetNowDate()) And CDbl(GetNowDate()) <= CDbl("2024"&"0102"&"235959") Then
																	passUnivType = "susi"
																ElseIf CDbl("2024"&"0103"&"000000") <= CDbl(GetNowDate()) And CDbl(GetNowDate()) <= CDbl("2024"&"0229"&"235959") Then
																	passUnivType = "regular"
																End If
															%>

															<a href="/mypage/teamplay_info/?g=<%=passUnivType%>&getUnivType=j&arr_Child=" class="btn_default mt15">
																<%If CDbl(DU_UNIV_CD) = 0 Then%>
																	<span>���� ���</span>
																<%Else%>
																	<span>���� ����</span>
																<%End If%>
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<th scope="row"><em class="essen">* </em>���� ���д���<br>�հ�����</th>
													<td>
														<div class="input_file account">
															<%
																'���� �հ� ���� ���� �������� S
																strSql = ""
																strSql = strSql & vbcrlf & "SELECT"
																strSql = strSql & vbcrlf & "	TP_UNIVPASSFILE_YN"
																strSql = strSql & vbcrlf & "	, TP_UNIVPASSFILE_FILENM"
																strSql = strSql & vbcrlf & "FROM"
																strSql = strSql & vbcrlf & "	AMS_TEAMPLAY_EVT"
																strSql = strSql & vbcrlf & "WHERE"
																strSql = strSql & vbcrlf & "	TP_TYPE = 'F'"
																strSql = strSql & vbcrlf & "	AND TP_YEAR = " & g_TP_YEAR
																strSql = strSql & vbcrlf & "	AND TP_MEM_CD = " & Ams_Mcode

																Set objRs = amsObjDb.sqlQuery(strSql, 3)
																If Not (objRs.EoF And objRs.BoF) Then
																	TP_UNIVPASSFILE_YN = objRs("TP_UNIVPASSFILE_YN")
																	TP_UNIVPASSFILE_FILENM = objRs("TP_UNIVPASSFILE_FILENM")
																Else
																	TP_UNIVPASSFILE_YN = "N"
																	TP_UNIVPASSFILE_FILENM = NULL
																End If
																objRs.close
																Set objRs = Nothing

																TP_FILE_PATH = gTPSaveUrl & "/" & TP_UNIVPASSFILE_FILENM
																'���� �հ� ���� ���� �������� E
															%>
															<input type="hidden" id="TP_UNIVPASSFILE_FILENM" name="TP_UNIVPASSFILE_FILENM" value="<%=TP_UNIVPASSFILE_FILENM%>"/>
															<input type="hidden" id="TP_UNIVPASSFILE_YN" name="TP_UNIVPASSFILE_YN" value="<%=TP_UNIVPASSFILE_YN%>"/>

															<span class="file_name" id="TP_UNIVPASSFILE_REALFILENM">
																<%If TP_UNIVPASSFILE_YN = "Y" Then %>
																	<a href="javascript:void(0)" onclick="openPicViewWin('UNIVPASSFILE','<%=TP_FILE_PATH%>');">
																		�����հ���������.
																		<%If right(TP_UNIVPASSFILE_FILENM, 4) = "jpeg" Then%>
																			jpeg
																		<%Else%>
																			<%=Right(TP_UNIVPASSFILE_FILENM, 3)%>
																		<%End if%>
																	</a>
																	<!-- ���ϸ��� ������ ��� ���� -->
																	<button type="button" class="btn_delete" onclick="delPicView('TP_UNIVPASSFILE', 'UNIVPASSFILE');"><span class="blind">����</span></button>
																<%Else%>
																	<!-- �̹��� ��� -->
																<%End If%>
															</span>
															<a href="javascript:openPicWin('UNIVPASSFILE','TP_UNIVPASSFILE');" class="btn_default"><span>���� ���</span></a>
															<p class="info_txt">10MB ������ jpg, jpeg, gif, png ���ϸ� ��� ����</p>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
										
										<div class="info_txt_area">
											<%If CDbl("2024"&"0108"&"000000") <= CDbl(GetNowDate()) And CDbl(GetNowDate()) <= CDbl("2024"&"0229"&"235959") Then%>
												<p class="info_txt account">�� ���� �������� �Է� �� ������ �п����� ���� ���� ��Ź�帳�ϴ�.</p>
											<%End If%>
										</div>

										<div class="teamplay_img_wrap2" id="inputArea2">
											<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_apply_title02.png" alt="�������� �� ����纻 ���"/>
										</div>
										<table class="table_new_type_01 account" cellpadding="0" cellspacing="0" border="0" id="examArea2">
											<colgroup>
												<col width="230px">
												<col width="">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row"><em class="essen">* </em>���� ���� ����</th>
													<td class="taL">
														<%
															'����, ����纻 ���� �������� S
															strSql = ""
															strSql = strSql & vbcrlf & "SELECT"
															strSql = strSql & vbcrlf & "	TP_MEMBANK_YN"
															strSql = strSql & vbcrlf & "	, TP_MEMBANK_FILENM"
															strSql = strSql & vbcrlf & "	, TP_MEMBANK_UNM"
															strSql = strSql & vbcrlf & "	, TP_MEMBANK_BNM"
															strSql = strSql & vbcrlf & "	, TP_MEMBANK_NUM"
															strSql = strSql & vbcrlf & "FROM"
															strSql = strSql & vbcrlf & "	AMS_TEAMPLAY_EVT"
															strSql = strSql & vbcrlf & "WHERE"
															strSql = strSql & vbcrlf & "	TP_TYPE = 'F'"
															strSql = strSql & vbcrlf & "	AND TP_YEAR = " & g_TP_YEAR
															strSql = strSql & vbcrlf & "	AND TP_MEM_CD = " & Ams_Mcode

															Set objRs = amsObjDb.sqlQuery(strSql, 3)
															If Not (objRs.EOF And objRs.BOF) Then
																TP_MEMBANK_YN = objRs("TP_MEMBANK_YN")
																TP_MEMBANK_FILENM = objRs("TP_MEMBANK_FILENM")
																TP_MEMBANK_UNM = objRs("TP_MEMBANK_UNM")
																TP_MEMBANK_BNM = objRs("TP_MEMBANK_BNM")
																TP_MEMBANK_NUM = objRs("TP_MEMBANK_NUM")
															Else
																TP_MEMBANK_YN = ""
																TP_MEMBANK_FILENM = ""
																TP_MEMBANK_UNM = ""
																TP_MEMBANK_BNM = ""
																TP_MEMBANK_NUM = ""
															End If
															objRs.close
															Set objRs = Nothing

															If TP_MEMBANK_UNM = "" Or IsNull(TP_MEMBANK_UNM) Then
																TP_MEMBANK_UNM = gLoginMemName
															End If

															TP_FILE_PATH = gTPSaveUrl & "/" & TP_MEMBANK_FILENM
															'����, ����纻 ���� �������� E
														%>
														<div class="input_file account">
															<input type="text" name="TP_MEMBANK_UNM" id="TP_MEMBANK_UNM" value="<%=TP_MEMBANK_UNM%>" size="10" maxlength="10" style="width:130px;" placeholder="�����ָ�">

															<span style="display:inline-block; padding-top:6px;">&nbsp;&nbsp;</span>

															<select id="TP_MEMBANK_BNM" name="TP_MEMBANK_BNM" class="select_box" style="width:130px;">
																<option value="">���༱��</option>
																<%
																	' ���� ����
																	strSql = "Exec dbo.Msp_Get_Com_Dtl_01 149"
																	Set objRs = amsObjDb.sqlQuery(strSql, 3)
																	IF NOT objRs.EOF THEN
																		RDS_BANK = objRs.GetRows()
																	Else 
																		RDS_BANK = NULL
																	END If

																	If isArray(RDS_BANK) Then 
																		RC_NO = 0
																		For ii = 0 To Ubound(RDS_BANK, 2)
																			BANK_CD  = RDS_BANK(0, ii)
																			BANK_NAME = RDS_BANK(1, ii)
																			BANK_NAME = Trim(BANK_NAME)
																			If BANK_NAME <> "��Ÿ" Then
																				%>
																					<option value="<%=BANK_NAME%>" <%=IIF(TP_MEMBANK_BNM = BANK_NAME, "selected", "")%>><%=BANK_NAME%></option>
																				<%
																			End If
																		Next
																	End If
																%>
															</select> 
															<span style="display:inline-block; padding-top:6px;">&nbsp;&nbsp;</span>

															<input class="ml05" type="text" name="TP_MEMBANK_NUM" id="TP_MEMBANK_NUM" maxlength="20" placeholder="���¹�ȣ (-)���� ���ڸ� �Է�" onKeyUp="fnNumberChk(this)" value="<%=TP_MEMBANK_NUM%>">
														</div>
													</td>
												</tr>
												<tr>
													<th scope="row"><em class="essen">* </em>���� ����纻</th>
													<td>
														<div class="input_file account">
															<input type="hidden" id="TP_MEMBANK_FILENM" name="TP_MEMBANK_FILENM" value="<%=TP_MEMBANK_FILENM%>"/>
															<input type="hidden" id="TP_MEMBANK_YN" name="TP_MEMBANK_YN" value="<%=TP_MEMBANK_YN %>"/>

															<span class="file_name" id="TP_MEMBANK_REALFILENM">
																<%If TP_MEMBANK_YN = "Y" Then%>
																	<a href="javascript:void(0)" onclick="openPicViewWin('MEMBANK','<%=TP_FILE_PATH%>');">
																		����纻.
																		<%If right(TP_MEMBANK_FILENM, 4) = "jpeg" Then%>
																			jpeg
																		<%Else%>
																			<%=right(TP_MEMBANK_FILENM, 3)%>
																		<%End if%>
																	</a>
																	<button type="button" class="btn_delete" onclick="delPicView('TP_MEMBANK', 'MEMBANK');"><span class="blind">����</span></button>
																<%Else%>
																	<!-- �̹��� ��� -->
																<%End If%>
															</span>

															<a href="javascript:void(0)" class="btn_default" onClick="openPicWin('MEMBANK','TP_MEMBANK');">
																<span>���� ���</span>
															</a>
															<p class="info_txt">
																- 10MB ������ jpg, jpeg, gif, png ���ϸ� ��� ����<br>
																- ���� ���� ������ �Է��� ������ ��ġ�ϴ� ���� ����纻 ���<br>
																- �����, �����ָ�, ���¹�ȣ�� Ȯ�� ������ �̹��� ���
															</p>
														</div>
													</td>
												</tr>
											</tbody>
										</table>

										<h2 style="padding-top:283px;">
											<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_con02_title.png" alt="���б� ���� �ȳ�">
										</h2>
										<div class="txtc mt45">
											<strong class="payment_info_txt">
												�ް����͵�����(���� ��ȸ�硯)�� �ް����͵��п� <em class="blt_star">*</em>�������л����� ������ <%=gLoginMemName%>(���� �����л���)����,<br>
												���л��� ������ ������ ���Ͽ� 2024�� 5���濡 ���б� 100������ �����մϴ�.<br>
												<span>(�ش� ������ ������ ���� ���� �ñⰡ ����� �� �ֽ��ϴ�.)</span><br>
												��, ���л��� ������ ��3�� ������ ���� �������� ���� ���, �ش� ���л� ������ ��ҵǰ� ���б��� ���޵��� �ʽ��ϴ�.
											</strong>
										</div>

										<h2 id="inputArea3" style="padding-top:300px;">
											<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/sec_con03_title.png" alt="�������� �������̿롤��� ��Ź ����">
										</h2>
										
										<h3 class="box_title">���б� ������ ���� �������� ��3�� ���� ����</h3>
										<div class="ag_box account mt20">
											<strong>���������� ������ ���� ����</strong>
											<ul class="list_txt mt10">
												<li><strong>1. �������� �����޴� ��</strong> : ���б� ���� ������� ���� ����</li>
												<li><strong>2. �������� ���� ����</strong> : ���� ������ ���� ���ް����͵����ߡ��� ���л����� ���б� ������ ����</li>
												<li><strong>3. �������� ���� �׸�</strong> : �̸�, �������, �й�, �����ָ� �� ���¹�ȣ(����纻 ����) </li>
												<li><strong>4. �������� �������� ���� ���� �� �̿� �Ⱓ</strong> : �����Ϸκ��� 1��</li> 
											</ul>
										</div>
										<div class="box_bottom_info">
											<p class="info_txt account">�� �� �������� �������̿롤��� ��Ź�� ���� ���Ǹ� �ź��� �� �ֽ��ϴ�. ��, �������� ������ ��� <em class="blt_star">*</em>�������б� ������ �Ұ��մϴ�. </p>
											<ul class="radio_list taR">
												<li class="radio">
													<input type="radio" name="private_info_agree1" id="agree1" value="Y">
													<label for="agree1">������</label>
												</li>
												<li class="radio">
													<input type="radio" name="private_info_agree1" id="agree2" value="N" checked>
													<label for="agree2">���Ǿ���</label>
												</li>
											</ul>
										</div>
									</div>

									<div class="bottom_btn_box" style="padding-top:150px;">
										<!-- Ȱ��ȭ�� ��� class on -->
										<a href="javascript:void(0);" onclick="fnResultCommit();" class="btn_apply" id="TpCompleteBtn">���� �����ϱ�</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<iframe id="runSource" name="runSource" style="width:0px; height:0px; display: none;"></iframe>

		<form id="form_reg_univ" name="form_reg_univ" method="post">
			<input type="hidden" id="form_mode" name="form_mode" value="reg_univ" />
			<input type="hidden" name="g" value="<%=topTabCode%>" />
			<input type="hidden" name="arr_Child" value="" />
			<input type="hidden" name="getUnivType" value="" />
			<input type="hidden" name="getUnivCode" value="" />
		</form>
	</div>
	<!-- #include virtual="/library/include/common/bottom.asp" -->

	<script type="text/javascript">
		// ���� �����ϱ�
		function fnResultCommit() {
			var frmInfo = document.getElementById("form_proc_my_univ");

			if(TpCompleteCheck("alert") == true) {
				if (confirm("���� ���� �Ŀ��� ������ �Ұ��մϴ�.\n�����Ͻðڽ��ϱ�?")) {
					frmInfo.target = "runSource";
					frmInfo.action = "./challenge_result_save.asp";
					frmInfo.submit();
				}
				else {
					return false;
				}
			}
			else {
				return false;
			}
		}

		// �������� ��ư Ȱ��ȭ ���� üũ
		var TpCompleteCheck = function(type) {
			var oForm = document.getElementById("form_proc_my_univ");

			// ���� ���д��� üũ
			if($("#DU_UNIV_CD").val() == "0") {
				if(type == "alert"){
					alert("���д���(�а�) ������ �Է��� �ּ���.");
					fnScrollMove("#inputArea1");
				}
				return false;
			}

			// �հ����� üũ
			if($("#TP_UNIVPASSFILE_YN").val() != "Y") {
				if(type == "alert"){
					alert("���� ���д��� �հ������� ��� ����� �ּ���.");
					fnScrollMove("#inputArea1");
				}
				return false;
			}

			// ���� ���� üũ
			if($("#TP_MEMBANK_BNM").val() == "" || $("#TP_MEMBANK_NUM").val() == "") {
				if(type == "alert"){
					alert("���� ���������� ����� �ּ���.");
					fnScrollMove("#inputArea2");
				}
				return false;
			}

			// ����纻 üũ
			if($("#TP_MEMBANK_YN").val() != "Y") {
				if(type == "alert"){
					alert("����纻�� ����� �ּ���.");
					fnScrollMove("#inputArea2");
				}
				return false;
			}

			// �������� Ȱ�� ����
			if ($(':radio[name="private_info_agree1"]:checked').val() == "N") {
				if(type == "alert"){
					alert("���б� ������ ���� �������� ����-�̿�-��� ��Ź�� �����ϼž� ���� ������ �����մϴ�.");
					fnScrollMove("#inputArea3");
				}
				return false;
			}

			return true;
		}

		$(function(){
			// ���������ϱ� ��ư Ȱ��ȭ ���� üũ
			TpCompleteCheckMain("");

			// ��� �Է°� ������ üũ
			$("input").on("click", function(e) {
				TpCompleteCheckMain("");
			});
			$("input").on("change", function(e) {
				TpCompleteCheckMain("");
			});
			$("select").on("change", function(e) {
				TpCompleteCheckMain("");
			});
			$("textarea").on("change", function(e) {
				TpCompleteCheckMain("");
			});
		});
	</script>

	<script src="/public/js/TweenMax.min.js"></script>
	<script type="text/javascript">
		var acObject = $('.act_wrap');

		var motion1 = new TimelineMax({delay:0,repeat:0});
		motion1.to(".act01", 0.6, {opacity:1, top:110});

		var motion1_1 = new TimelineMax({delay:0.8,repeat:0});
		motion1_1.to(".act02", 0.6, {opacity:1, top:0});

		var motion2 = new TimelineMax({delay:1.5,repeat:0});
		motion2.to(".act03", 0.6, {opacity:1, top:640});

		var motion3_1 = new TimelineMax({delay:1.8,repeat:0});
		motion3_1.to(".act04", 0.6, {opacity:1, scale:1, ease:Power3.easeOut});

		var motion4_1 = new TimelineMax({delay:1.5,repeat:-1, yoyo:true});
		motion4_1.to(".act05", 0.6, {opacity:1});

		var motion4_2 = new TimelineMax({delay:2,repeat:-1, yoyo:true});
		motion4_2.to(".act06", 0.6, {opacity:1});
	</script>
</body>
</html>