<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include file="./cl_header.asp" -->
<%
	' �������н�û �׽�Ʈ�� ȸ�� ��Ī ������(2019.12.30)
	Dim strMemId, Ams_Mcode

	If gLoginMemId <> "" Then
		strMemId = gLoginMemId

		' ��Ī�� �й� �ҷ�����
		Sql = " SELECT Ams_Mem_Cd FROM Mg_Member with(nolock) where Code =" & gLoginMemCode

		Set objRs = objDB.sqlQuery(Sql,1)

		If Not (objRs.EoF And objRs.BoF) Then
			Ams_Mcode = objRs(0)
		End If
		objRs.close
		Set objRs = Nothing
	Else
		strMemId = "�α��� �ϼž� �մϴ�."
	End If

	If IsDevSvr() = False Then
		AlertAction "�׽�Ʈ�� ȸ�� ��Ī �������� ���������������� ���� �����մϴ�.", "location.href='/index.asp';"
        response.end
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
<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
<link rel="stylesheet" type="text/css" href="/library/css/amazingslider.css">
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
<!-- intro���� css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
<script src="/public/js/amazingslider/amazingslider.js"></script>
<script src="/public/js/amazingslider/initslider_01.js"></script>
    
<!-- ���� ���� -->
<script type="text/javascript" src="./js/teamplay_common.js"></script>
<link rel="stylesheet" type="text/css" href="./teamplayStep.css">
<script type="text/javascript">
	$(function() {
		
	});

	// �������� �ʱ�ȭ
	function fnReset(type, mode) {
		if (confirm("���� �ʱ�ȭ �Ͻðڽ��ϱ�?")) {
			$.ajax({
				url : "challenge_mem_match_proc.asp",
				dataType : "html",
				type : "post",
				data : {'type' : type, 'mode' : mode},
				success : function(result) {
					if (result == "OK") {
						alert("�ʱ�ȭ �Ǿ����ϴ�.");
					}
					else if(result == "ID"){
						alert("�α��� �ϼž� �մϴ�.");
					}
					else if(result == "ERROR"){
						alert("�������н�û ������ �����ϴ�.");
					}
				}
			});
		}
		else {
			return false;
		}
	}

	// �����ϱ�
	function fnSave() {
		var frmInfo = document.getElementById("frmReg");
		var s_memid = "<%=gLoginMemId%>";

		if (s_memid == "") {
			alert("�α����� �ϼž� �մϴ�.");
			return false;
		}
		else {

			if($("#memcd").val() == ""){
				alert("��Ī �� �й��� ������ּ���.");
				$("#memcd").focus();
				return false;
			}

			if (confirm("�׽�Ʈ ������ ��Ī �Ͻðڽ��ϱ�?")) {
				$.ajax({
					url : "challenge_mem_match_proc.asp",
					dataType : "html",
					type : "post",
					data : {'mode' : 'match', 'memcd' : $("#memcd").val()},
					success : function(result) {
						if (result == "OK") {
							alert("��Ī �Ǿ����ϴ�.");
						}
						else if(result == "ID"){
							alert("�α��� �ϼž� �մϴ�.");
						}
						else if(result == "MEMCD"){
							alert("��Ī �� �й��� �Էµ��� �ʾҽ��ϴ�.");
						}
						else if(result == "ERROR"){
							alert("��Ī �� �й��� �����ϴ�.");
						}
					}
				});
			}
			else {
				return false;
			}
		}
	}
</script>
</head>
<body>
<div id="wrapper"> 
    <!--  �ֻ�ܸ޴�//--> 
    <!--#include virtual="/library/include/common/top.asp" --> 
    <!--  //�ֻ�ܸ޴�-->
    
    <div id="container">
        <div id="div_cont"> 
            <!-- ���� -->
            <form name="frmReg" id="frmReg" method="post" action="challenge_mem_match_proc.asp">
				<div id="div_full" class="div_con"> 
					<div class="teamplay_apply">
						<div class="inner">
							<h3><em class="essen">* </em>�������н�û �׽�Ʈ�� ȸ�� ��Ī</h3>
							
							<table class="table_new_type_01 account" cellpadding="0" cellspacing="0" border="0">
								<colgroup>
									<col width="220px">
									<col width="">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">�α���ID</th>
										<td class="taL">
											<div class="input_file account">
												<span style="color:#eb005e; font-size:17px;"><%=strMemId%></span>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">��Ī �� �й�</th>
										<td class="taL">
											<div class="input_file account">
												<input type="text" name="memcd" id="memcd" value="<%=Ams_Mcode%>" size="10" maxlength="20" style="width:160px;" placeholder="�й�">
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">�ʱ�ȭ</th>
										<td class="taL">										
											<div class="input_file account">������Ҵ� AMS > �������� > ���ð��� > �������н�û ���������� �Ͻ� �� �ֽ��ϴ�.                                        
												<!--<a href="javascript:void(0)" class="btn_default" onClick="fnReset('F', 'bank_reset');"><span class="i_file">�������� �ʱ�ȭ</span></a> (��Ī�� �й��� ���� ���� �� �ʱ�ȭ ���ּ���.)-->                                        
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<div class="btn_box">
								<a href="javascript:void(0);" onclick="fnSave();" class="btn_l type1">
									<span>�����ϱ�</span>
								</a>
							</div>
						</div>  
					</div>
				</div>
            </form>
            <!--// ���� --> 
        </div>
    </div>
    <!-- // container --> 
    
    <!--#include virtual="/library/include/common/bottom.asp" --> 
</div>
<!-- // wrapper -->
</body>
</html>