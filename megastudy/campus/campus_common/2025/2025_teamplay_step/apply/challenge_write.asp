<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include file="../cl_header.asp" -->
<!-- #include file="./challenge_write_include.asp" -->

<!-- ��ä�� �Լ� / ���� �ҷ����� -->
<!-- #include virtual = "/common/inc/FunExam.asp"-->
<%
	'================================================================
	'2021-12-09 / �̻��� / N��+��3 ���� ���� ���� ���� ������
	'2022�г⵵ ���� ���л����ʹ� DB���� ���� ����� �����ͼ� ���
	'================================================================

	'===========================================================================
	'��ɼ��� : ���ڸ� �ݾ״����� �ٲ� : 3000 --> 3,000
	'===========================================================================
	Function InsertCommaIntoNumber(money)
		If money = "-" Then
			InsertCommaIntoNumber = "-"
			Exit Function
		End If

		IF money = "" OR ISNULL(money) THEN
			money = 0
		END IF

		IF money >= 0 THEN
			money = MID(FormatCurrency(money), 2, LEN(FormatCurrency(money)))
		else
			money = money * -1
			money = MID(FormatCurrency(money), 2, LEN(FormatCurrency(money)))
			money = "-" & money
		End IF
		InsertCommaIntoNumber = money
	End Function
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

	<!-- ASP(challenge_write_include)���� ������ JS �ڵ� S -->
	<%=execThisScript%>
	<!-- ASP(challenge_write_include)���� ������ JS �ڵ� E -->
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
		<!-- // header -->
		
		<div id="container" style="padding-bottom:0px !important;">
			<div id="div_cont">
				<div id="div_full" class="div_con">
					<!-- ��� ���� �̹��� -->
					<!-- #include file="../cl_image.asp" -->
					<!-- // ��� ���� �̹��� -->
					
					<div class="div_con0">
						<div class="con_wrap">
							<div class="teamplay_apply">
								<div class="apply_info">
									<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/con01_img01.png" alt=""/>
								</div>

								<div class="write_wrap" style="width:1160px; height:4312px; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/bg_contents01.png') center top no-repeat; background-size:100%">
								<form name="form_proc_my_univ" id="form_proc_my_univ" method="post" action="">
									<input type="hidden" name="form_mode" id="form_mode" value="">
									<input type="hidden" name="getUnivType" id="getUnivType" value="">
									<input type="hidden" name="cMode" id="cMode" value="">
									<!-- 2019.11.21 ó�������� ��3/����� ��ġ�� ���� �߰� -->
									<input type="hidden" name="getClsCd" id="getClsCd" value="<%=clsCd%>">

									<div class="apply_info">
										<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/con_top_txt.png" alt=""/>
									</div>

									<div class="inner" style="padding-top:157px;">
										<div class="inner_title">
											<h2><span>�⺻ ���� ����ϱ�</span></h2>
											<p class="teamplay_apply_text01">
												<strong><%=gLoginMemName%></strong>��, ���б� ������ ���� �Ʒ� ������ ��� ����� �ּ���.
											</p>
										</div>

										<!-- 1. ���ɼ���ǥ -->
										<div class="apply_content01" id="info_step1">
											<div class="teamplay_img_wrap">
												<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/apply_title01.png" alt="���� ����ǥ"/>
											</div>
											<%
												'���� ���� ���� �������� S
												strSql = ""
												strSql = strSql & vbCrlf & "SELECT"
												strSql = strSql & vbCrlf & "	ISNULL(TP_EXAMSNLAST_YN, 'N') TP_EXAMSNLAST_YN" '���⵵ ����
												strSql = strSql & vbCrlf & "	, TP_EXAMSNLAST_FILENM" '���⵵ ���� ����ǥ ���� �̸�
												strSql = strSql & vbCrlf & "	, ISNULL(TP_EXAMSN_YN, 'N') TP_EXAMSN_YN" '���� ����
												strSql = strSql & vbCrlf & "	, TP_EXAMSN_FILENM" '���� ���� ����ǥ ���� �̸�
												strSql = strSql & vbCrlf & "	, ISNULL(TP_MEMPIC_YN, 'N') AS TP_MEMPIC_YN" '�������
												strSql = strSql & vbCrlf & "	, TP_MEMPIC_FILENM" '������� ���� �̸�
												strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_EVT(NOLOCK) "
												strSql = strSql & vbCrlf & "WHERE"
												strSql = strSql & vbCrlf & "	TP_MEM_CD = '" & nAmsMemCd & "'"
												strSql = strSql & vbCrlf & "	AND TP_MEM_ID = '" & gLoginMemId & "'"
												strSql = strSql & vbCrlf & "	AND TP_YEAR = '" & g_TP_YEAR & "'"
												strSql = strSql & vbCrlf & "	AND TP_TYPE = '" & g_TP_TYPE & "'"
												' strSql = strSql & vbCrlf & "	AND TP_SENDYN = 'Y'" '�������� ������ �Ⱥ����� �Ѵٸ� Ȱ��ȭ
												
												Set objRs = amsObjDb.sqlQuery(strSql, 3)
												If Not (objRs.EoF And objRs.BoF) Then
													TP_EXAMSNLAST_YN = objRs("TP_EXAMSNLAST_YN") '���⵵ ����
													TP_EXAMSNLAST_FILENM = objRs("TP_EXAMSNLAST_FILENM") '���⵵ ���� ����ǥ ���� �̸�
													TP_EXAMSN_YN = objRs("TP_EXAMSN_YN") '���� ����
													TP_EXAMSN_FILENM = objRs("TP_EXAMSN_FILENM") '���� ���� ����ǥ ���� �̸�
													TP_MEMPIC_YN = objRs("TP_MEMPIC_YN") '�������
													TP_MEMPIC_FILENM = objRs("TP_MEMPIC_FILENM") '������� ���� �̸�
												Else
													TP_EXAMSNLAST_YN = "N" '���⵵ ����
													TP_EXAMSN_YN = "N" '���� ����
													TP_MEMPIC_YN = "N" '�������
												End If
												objRs.close
												Set objRs = Nothing
	
												TP_FILE_PATH = gTPSaveUrl
												'���� ���� ���� �������� E
											%>
											<!-- ���� �г⵵ ���� S -->
											<input type="hidden" name="sn_exam_yn" id="sn_exam_ynY" value="Y"/><!-- �۳⵵ ���� ����ǥ ��� -->

											<table class="table_new_type_01" cellpadding="0" cellspacing="0" border="0" id="examArea1">
												<colgroup>
													<col width="230px">
													<col width="">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><%=g_TP_PREV_YEAR%> ���� ����ǥ</th>
														<td>
															<div class="input_file">
																<span class="file_name" id="TP_EXAMSNLAST_REALFILENM">
																	<%If TP_EXAMSNLAST_YN = "Y" Then%>
																		<a href="javascript:void(0)" onclick="openPicViewWin('EXAMSNLAST', '<%=TP_FILE_PATH & "/" & TP_EXAMSNLAST_FILENM%>');">
																			���ɼ�������.<%=IIF(Right(TP_EXAMSNLAST_FILENM, 4) = "jpeg", "jpeg", Right(TP_EXAMSNLAST_FILENM, 3))%>
																		</a>
																		<!-- ���ϸ��� ������ ��� ���� -->
																		<button type="button" class="btn_delete" onclick="delPicView('TP_EXAMSNLAST', 'EXAMSNLAST');"><span class="blind">����</span></button>
																	<%End If%>
																</span>
																<a href="javascript:openPicWin('EXAMSNLAST','TP_EXAMSNLAST');" class="btn_default" id="TP_EXAMSNLAST_REALFILENM_BTN"><span class="i_file">���ϵ��</span></a>
																<p class="info_txt">10MB ������ jpg, jpeg, gif, png ���ϸ� ��� ����</p>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
											<!-- ���� �г⵵ ���� E -->

											<!-- �̹� �г⵵ ���� S -->
											<input type="hidden" name="yecheneungF" id="yecheneungF" value="N" /><!-- ��ü�� �÷��� �� -->

											<table class="table_new_type_01 botn" cellpadding="0" cellspacing="0" border="0" id="examArea2">
												<colgroup>
													<col width="230px">
													<col width="">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row"><%=g_TP_YEAR%> ���� ����ǥ</th>
														<td>
															<div class="input_file">
																<span class="file_name" id="TP_EXAMSN_REALFILENM">
																	<%If TP_EXAMSN_YN = "Y" Then%>
																		<a href="javascript:void(0)" onclick="openPicViewWin('EXAMSN', '<%=TP_FILE_PATH & "/" & TP_EXAMSN_FILENM%>');">
																			���ɼ�������.<%=IIF(Right(TP_EXAMSN_FILENM, 4) = "jpeg", "jpeg", Right(TP_EXAMSN_FILENM, 3))%>
																		</a>
																		<!-- ���ϸ��� ������ ��� ���� -->
																		<button type="button" class="btn_delete" onclick="delPicView('TP_EXAMSN', 'EXAMSN');"><span class="blind">����</span></button>
																	<%End If%>
																</span>
																<a href="javascript:openPicWin('EXAMSN','TP_EXAMSN');" class="btn_default"><span class="i_file">���ϵ��</span></a>
																<p class="info_txt">10MB ������ jpg, jpeg, gif, png ���ϸ� ��� ����</p>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
											<!-- �̹� �г⵵ ���� E -->

											<p class="teamplay_apply_text02">
												�� ���� ���� ������ �Էµ� ������ �ٸ� ���, ���л� ������ ��ҵ� �� ������ �����Ͽ� ����� �ּ���
											</p>
											<div class="btn_box">
												<a href="javascript:void(0);" id="partialSaveButton1" onclick="procMyUniv('proc_univ_state','j', 'P');" class="btn_l arrow_none type1"><span>�ӽ� �����ϱ� <em>(1/3)</em></span></a>
											</div>
										</div>

										<!-- 2. ������� -->
										<div class="apply_content02" id="info_step2">
											<div class="img_wrap" style="margin-top:90px;">
												<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/apply_title02.png" alt="�������"/>
											</div>

											<input type="hidden" id="TP_EXAMSNLAST_FILENM" name="TP_EXAMSNLAST_FILENM" value="<%=TP_EXAMSNLAST_FILENM%>"/>
											<input type="hidden" id="TP_EXAMSNLAST_YN" name="TP_EXAMSNLAST_YN" value="<%=TP_EXAMSNLAST_YN%>"/>

											<input type="hidden" id="TP_EXAMSN_FILENM" name="TP_EXAMSN_FILENM" value="<%=TP_EXAMSN_FILENM%>"/>
											<input type="hidden" id="TP_EXAMSN_YN" name="TP_EXAMSN_YN" value="<%=TP_EXAMSN_YN%>"/>

											<input type="hidden" id="TP_MEMPIC_FILENM" name="TP_MEMPIC_FILENM" value="<%=TP_MEMPIC_FILENM%>"/>
											<input type="hidden" id="TP_MEMPIC_YN" name="TP_MEMPIC_YN" value="<%=TP_MEMPIC_YN%>"/>

											<input type="hidden" id="TP_UNIVPASSFILE_YN" name="TP_UNIVPASSFILE_YN" value="N"/>

											<table class="table_new_type_01 mt50" cellpadding="0" cellspacing="0" border="0" id="examArea3">
												<colgroup>
													<col width="220px">
													<col width="">
												</colgroup>
												<tbody>
													<tr>
														<th scope="row">�������</th>
														<td class="taL">
															<div class="input_file">
																<span class="file_name" id="TP_MEMPIC_REALFILENM">
																	<%If TP_MEMPIC_YN ="Y" Then %>
																		<a href="javascript:void(0)" onclick="openPicViewWin('MEMPIC','<%=TP_FILE_PATH&"/"&TP_MEMPIC_FILENM%>');">�������.<%If right(TP_MEMPIC_FILENM,4)="jpeg" Then %>jpeg<%else%><%=right(TP_MEMPIC_FILENM,3)%><%End If %></a>
																		<!-- ���ϸ��� ������ ��� ���� -->
																		<button type="button" class="btn_delete" onclick="delPicView('TP_MEMPIC', 'MEMPIC');"><span class="blind">����</span></button>
																	<%End If%>
																</span>
																<a href="javascript:openPicWin('MEMPIC','TP_MEMPIC');" class="btn_default"><span class="i_file">���ϵ��</span></a>
																<p class="info_txt">10MB ������ jpg, jpeg, gif, png ���ϸ� ��� ����</p>
															</div>
														</td>
													</tr>
												</tbody>
											</table>

											<div class="btn_box">
												<a href="javascript:void(0);" id="partialSaveButton2" onclick="snScoreX('proc_pic_state', 'P');" class="btn_l arrow_none type1"><span>�ӽ� �����ϱ� <em>(2/3)</em></span></a>
											</div>
										</div>

										<!-- 3. �հݼ��� -->
										<div class="apply_content03" id="info_step3">
											<input type="hidden" name="SW_TP_SEQ" id="SW_TP_SEQ" value="<%=T_TP_SEQ%>"/>

											<div class="img_wrap" style="margin-top:90px;">
												<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/apply_title03.png" alt="�հݼ���"/>
											</div>

											<%
												'������ ������ ��������
												'============================================================
												'2022�г⵵ ���ú��ʹ� AMS_TEAMPLAY_APPLY_SUGI ���̺� ���
												'============================================================
												Set contentDictionary = Server.CreateObject("Scripting.Dictionary")
												strSql = ""
												strSql = strSql & vbCrlf & "SELECT TAS_TASQ_CD, TAS_CONTENT"
												strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_APPLY_SUGI"
												' strSql = strSql & vbCrlf & "	INNER JOIN AMS_TEAMPLAY_EVT ON TAS_TP_SEQ = TP_SEQ AND TP_SENDYN = 'Y'" '�������� ������ �Ⱥ����� �Ѵٸ� Ȱ��ȭ
												strSql = strSql & vbCrlf & "WHERE TAS_TP_SEQ = " & T_TP_SEQ & " AND TAS_APPLY_TYPE = '"&g_TP_TYPE&"'"
												Set objRs = amsObjDb.sqlQuery(strSql, 3)
												If Not (objRs.EoF And objRs.BoF) Then
													Do While Not objRs.EOF
														contentDictionary.Add CStr(objRs("TAS_TASQ_CD")), CStr(objRs("TAS_CONTENT"))
														objRs.moveNext
													Loop
												End If
												objRs.close
												Set objRs = Nothing
											%>
											<%
												'============================================================
												'2022�г⵵ ���ú��ʹ� DB���� �հݼ��� ������ ���������� ������
												'���� �׸� DB ����(AMS_TEAMPLAY_APPLY_SUGI_QUESTION)
												'============================================================
								
												'���� ��� ��������
												strSql = ""
												strSql = strSql & vbCrlf & "SELECT"
												strSql = strSql & vbCrlf & "	TASQ_CD, TASQ_QUESTION, TASQ_QUESTION_ORDER, TASQ_ANSWER_MAX, TASQ_ANSWER_MIN"
												strSql = strSql & vbCrlf & "FROM AMS_TEAMPLAY_APPLY_SUGI_QUESTION"
												strSql = strSql & vbCrlf & "WHERE TASQ_YEAR = '" & g_TP_YEAR & "' AND TASQ_CLS_CD = "&clsCd&" AND TASQ_APPLY_MODE_YN = 'Y' AND TASQ_TYPE = '" & g_TP_TYPE & "'"
												strSql = strSql & vbCrlf & "ORDER BY TASQ_QUESTION_ORDER ASC"
	
												Set objRs = amsObjDb.sqlQuery(strSql, 3)
												If Not objRs.EoF Then
													questionCount = objRs.recordCount '���� ����
													questionIndex = 1 '���� index
													Do While Not objRs.EOF
														TASQ_CD = objRs("TASQ_CD")
														TASQ_QUESTION = objRs("TASQ_QUESTION")
														TASQ_ANSWER_MAX = objRs("TASQ_ANSWER_MAX")
														TASQ_ANSWER_MIN = objRs("TASQ_ANSWER_MIN")
	
														If CStr(TASQ_ANSWER_MIN) = "0" Or CStr(TASQ_ANSWER_MIN) = "" Then
															TASQ_ANSWER_MIN_CHAR = 0
														Else
															TASQ_ANSWER_MIN_CHAR = TASQ_ANSWER_MIN / 2
														End If
														%>
															<!-- �հݼ��� ���� <%=questionIndex%> // -->
															<div class="textarea_box" style="margin-top:40px;">
																<h4>
																	<label for="SW_CONTENT<%=questionIndex%>"><%=TASQ_QUESTION%></label>
																</h4>
	
																<%If questionIndex = 2 Then '2��° ������ '���п�' ����%>
																	<div class="img_wrap" style="padding-bottom:20px;">
																		<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_step/apply_con03_txt01.png" alt=""/>
																	</div>
																	<!-- *�� ����� ������ �ʿ��ϴ��Ͽ� �̹����� �ؽ�Ʈ�� ��ü�� / 2023-11-29
																	<p class="ment">
																		�� �ް�����, Ŀ��ŧ��, ���� ���ǰ��, �н� ������(���� ���� 30��, ���� �÷���), *������������ �� �����Ͽ� �亯 (�ߺ� ���� ����)<br>
																		�� ��<span>���п�</span>�� Ű���带 �ݵ�� �����Ͽ� �ۼ�
																	</p>
																	-->
																<%End If%>
	
																<input type="hidden" id="ANSWER_MAX<%=questionIndex%>" value="<%=TASQ_ANSWER_MAX%>"/><!-- �Է� �ִ� �� -->
																<input type="hidden" id="ANSWER_MIN<%=questionIndex%>" value="<%=TASQ_ANSWER_MIN%>"/><!-- �Է� �ּ� �� -->
																<input type="hidden" id="TASQ_CD<%=questionIndex%>" name="TASQ_CD<%=questionIndex%>" value="<%=TASQ_CD%>"/><!-- �Է� �ּ� �� -->
	
																<textarea name="SW_CONTENT<%=questionIndex%>" id="SW_CONTENT<%=questionIndex%>"
																	onkeyup="fnChkByte('SW_CONTENT<%=questionIndex%>','SW_CONTENT<%=questionIndex%>_CNTVIEW', <%=TASQ_ANSWER_MAX%>);"
																	placeholder="�ѱ� <%=TASQ_ANSWER_MIN_CHAR%>��(<%=InsertCommaIntoNumber(TASQ_ANSWER_MIN)%>byte) �̻� �Է��� �ּ���."
																><%=contentDictionary.Item(CStr(TASQ_CD))%></textarea>
	
																<p class="taR info_txt"><span id="SW_CONTENT<%=questionIndex%>_CNTVIEW">0</span> / <%=InsertCommaIntoNumber(TASQ_ANSWER_MAX)%>byte</p>
															</div>
															<!-- // �հݼ��� ���� <%=questionIndex%> -->
														<%
	
														questionIndex = questionIndex + 1
														objRs.moveNext
													Loop
												Else
													questionCount = 0 '���� ����
													%>
														<div class="textarea_box">
															<h4 style="color :red;">
																<%=g_TP_YEAR%>�г⵵ �հݼ��⸦ ���� �Էµ� ������ �����ϴ�. (��� �������� �������ּ���)
															</h4>
														</div>
													<%
												End If
												objRs.close
												Set objRs = Nothing
											%>
											<input type="hidden" name="questionCount" id="questionCount" value="<%=questionCount%>"/><!-- ���� ���� -->

											<div class="btn_box">
												<a href="javascript:void(0);" id="partialSaveButton3" onclick="SW_REGCHECK('proc_sugi_state', 'P', <%=questionCount%>);" class="btn_l arrow_none type1"><span>�ӽ� �����ϱ� <em>(3/3)</em></span></a>
											</div>
										</div>
									</div>

									<div class="bg" id="info_step4">
										<div class="inner" style="padding-top:298px;">
											<h2><span>�������� Ȱ�� ����</span></h2>
											<h4 class="mt90">�������� ���� �� �̿�</h4>
											<div class="ag_box">
												<p>�������� ��ȣ�� ��15�� ��1�� 4ȣ�� ���� ������ü�� ü���� ������� ������ü�� ���Ǿ��� ���������� ���� �� �̿��մϴ�.</p>
												<ul class="list_txt">
													<li>
														<strong>[�����׸�]</strong> �̸�, �������, ��ȭ��ȣ(����, �޴���ȭ), ����, �̸����ּ�, ��� ����б� �� �迭����,<br>
														&emsp;&emsp;&emsp;&emsp;&ensp;��������(24�� 6��, 9�� �򰡿� ���ǰ��, ���� �� ��Ÿ ������ ���� ����), ���д��� �� �а�/�й�,<br>
														&emsp;&emsp;&emsp;&emsp;&ensp;�����ָ� �� ���¹�ȣ(����纻 ����), ���� �հ� ����
													</li>
													<li>
														<strong>[ó������]</strong> ���л� ���߿� ���� �ڰ� �� ����Ȯ��, ���л��� ����, ���л� ����
													</li>
													<li>
														<strong>[���� �� �̿�Ⱓ]</strong> �����Ϸκ��� 5��
													</li>
												</ul>
											</div>
											

											<h4>���������� ������ Ȱ��(���� �� ���� ���)</h4>
											<div class="ag_box">
												<p>�������� ��ȣ�� ��15�� ��1�� 4ȣ�� ���� ������ü�� ü���� ������� ������ü�� ���Ǿ��� ���������� ���� �� �̿��մϴ�.</p>
												<ul class="list_txt">
													<li>
														<strong>[�����׸�]</strong> �̸�, ��� ����б� �� �迭����, ��������(24�� 6��, 9�� �򰡿� ���ǰ��, ���� �� ��Ÿ ������ ���� ����),<br>
														&emsp;&emsp;&emsp;&emsp;&ensp;���д��� �� �а�, �հݼ���, �ް����͵����߿��� �Կ��� ���л��� ����(�ʻ� ��) �� ���ͺ� ����
													</li>
													<li>
														<strong>[ó������]</strong> �ް����͵������� ���� ȫ��&middot;������(Ȩ������&middot;���ĺ�α�/��Ʃ��, �귣���&middot;�Ҽ��п� �� �Խ�&middot;����ȸ ��)�� Ȱ��
													</li>
													<li>
														<strong>[���� �� �̿�Ⱓ]</strong> �����Ϸκ��� 5��
													</li>
												</ul>
											</div>
										</div>
									</div>

									<div class="bottom_btn_box write">
										<!-- Ȱ��ȭ�� ��� class on -->
										<a href="javascript:void(0);" onclick="TPCOMPLETEREG(<%=questionCount%>);" class="btn_apply" id="TpCompleteBtn">���� �����ϱ�</a>
									</div>
								</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- container End -->
		
		<iframe id="runSource" name="runSource" style="width:0px;height:0px;display: block; position: absolute; top: -9999px; left: -9999px; overflow: hidden; font-size: 0; text-indent: 9999px;line-height: 0;"></iframe>
		<form id="form_reg_univ" name="form_reg_univ" method="post">
			<input type="hidden" id="form_mode" name="form_mode" value="reg_univ" />
			<input type="hidden" name="g" value="<%=topTabCode%>" />
			<input type="hidden" name="arr_Child" value="" />
			<input type="hidden" name="getUnivType" value="" />
			<input type="hidden" name="getUnivCode" value="" />
		</form>

		<!-- �������� ���� ���̾� -->
		<div class="pop_team_dim"></div>
		<div class="pop_team_wrap" id="divAppUnivList"></div>
		<!-- //�������� ���� ���̾� -->
	</div>
	<!-- wrapper End -->
	<!--#include virtual="/library/include/common/bottom.asp" -->

	<script type="text/javascript">
		// �������� ���
		function procMyUniv(mode, type, area) {
			var oForm = document.getElementById("form_proc_my_univ");
			oForm.form_mode.value = mode;
			oForm.getUnivType.value = type;

			if (oForm.TP_EXAMSNLAST_FILENM.value == "") {
				// alert("<%=g_TP_PREV_YEAR%>�г⵵ ���� ����ǥ�� ����ϼ���.");
				alert("���� ����ǥ�� ��� ����� �ּ���");
				fnScrollMove("#examArea1");
				return false;
			}
			
			if (oForm.TP_EXAMSN_FILENM.value == "") {
				// alert("<%=g_TP_YEAR%>�г⵵ ���� ����ǥ�� ����ϼ���.");
				alert("���� ����ǥ�� ��� ����� �ּ���");
				fnScrollMove("#examArea2");
				return false;
			}

			// ������ �������� ��ü �������� üũ(A: ��ü����, P: ��������)
			if (area == "P") {
				oForm.target="runSource";
				oForm.action="./challenge_write_save.asp";
				oForm.submit();
			}
			return true;
		}

		// �������� ��ư Ȱ��ȭ ���� üũ
		var TpCompleteCheck = function(type) {
			var oForm = document.getElementById("form_proc_my_univ");

			// ���� ����ǥ üũ
			if($("#TP_EXAMSNLAST_YN").val() != "Y" || $("#TP_EXAMSN_YN").val() != "Y") {
				return false;
			}

			// ������� üũ
			if($("#TP_MEMPIC_YN").val() != "Y") {
				return false;
			}

			// �հݼ��� üũ
			for(index = 1; index <= $("textarea[id^=SW_CONTENT]").length; index++){
				if ($("#SW_CONTENT" + index).val() == "") {
					return false;
				}
			}

			// �������� Ȱ�� ����
			var PrivateInfoAgree = $(':radio[name="private_info_agree1"]:checked').val();
			if (PrivateInfoAgree == "N") {
				return false;
			}
			var maketInfoAgree = $(':radio[name="private_info_agree2"]:checked').val();
			if (maketInfoAgree == "N") {
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
			$("textarea").on("change", function(e) {
				TpCompleteCheckMain("");
			});

			controlSaveButton1()
			controlSaveButton2()

			// �ı� ���� ��
			<%If T_write_registration = "Y" Then%>
				var maxSugiByte = 0;
				<%For index = 1 To questionCount%>
					maxSugiByte = $("#ANSWER_MAX<%=index%>").val();
					fnChkByte('SW_CONTENT<%=index%>', 'SW_CONTENT<%=index%>_CNTVIEW', maxSugiByte);
				<%Next%>
			<%End If%>
		});
	</script>
</body>
</html>