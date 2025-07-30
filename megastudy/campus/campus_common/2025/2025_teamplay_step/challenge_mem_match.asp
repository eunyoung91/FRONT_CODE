<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include file="./cl_header.asp" -->
<%
	' 팀플장학신청 테스트용 회원 매칭 페이지(2019.12.30)
	Dim strMemId, Ams_Mcode

	If gLoginMemId <> "" Then
		strMemId = gLoginMemId

		' 매칭된 학번 불러오기
		Sql = " SELECT Ams_Mem_Cd FROM Mg_Member with(nolock) where Code =" & gLoginMemCode

		Set objRs = objDB.sqlQuery(Sql,1)

		If Not (objRs.EoF And objRs.BoF) Then
			Ams_Mcode = objRs(0)
		End If
		objRs.close
		Set objRs = Nothing
	Else
		strMemId = "로그인 하셔야 합니다."
	End If

	If IsDevSvr() = False Then
		AlertAction "테스트용 회원 매칭 페이지는 개발페이지에서만 접근 가능합니다.", "location.href='/index.asp';"
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
<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
<script src="/public/js/amazingslider/amazingslider.js"></script>
<script src="/public/js/amazingslider/initslider_01.js"></script>
    
<!-- 팀플 관련 -->
<script type="text/javascript" src="./js/teamplay_common.js"></script>
<link rel="stylesheet" type="text/css" href="./teamplayStep.css">
<script type="text/javascript">
	$(function() {
		
	});

	// 서류제출 초기화
	function fnReset(type, mode) {
		if (confirm("정말 초기화 하시겠습니까?")) {
			$.ajax({
				url : "challenge_mem_match_proc.asp",
				dataType : "html",
				type : "post",
				data : {'type' : type, 'mode' : mode},
				success : function(result) {
					if (result == "OK") {
						alert("초기화 되었습니다.");
					}
					else if(result == "ID"){
						alert("로그인 하셔야 합니다.");
					}
					else if(result == "ERROR"){
						alert("팀플장학신청 내역이 없습니다.");
					}
				}
			});
		}
		else {
			return false;
		}
	}

	// 저장하기
	function fnSave() {
		var frmInfo = document.getElementById("frmReg");
		var s_memid = "<%=gLoginMemId%>";

		if (s_memid == "") {
			alert("로그인을 하셔야 합니다.");
			return false;
		}
		else {

			if($("#memcd").val() == ""){
				alert("매칭 할 학번을 등록해주세요.");
				$("#memcd").focus();
				return false;
			}

			if (confirm("테스트 계정을 매칭 하시겠습니까?")) {
				$.ajax({
					url : "challenge_mem_match_proc.asp",
					dataType : "html",
					type : "post",
					data : {'mode' : 'match', 'memcd' : $("#memcd").val()},
					success : function(result) {
						if (result == "OK") {
							alert("매칭 되었습니다.");
						}
						else if(result == "ID"){
							alert("로그인 하셔야 합니다.");
						}
						else if(result == "MEMCD"){
							alert("매칭 할 학번이 입력되지 않았습니다.");
						}
						else if(result == "ERROR"){
							alert("매칭 할 학번이 없습니다.");
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
    <!--  최상단메뉴//--> 
    <!--#include virtual="/library/include/common/top.asp" --> 
    <!--  //최상단메뉴-->
    
    <div id="container">
        <div id="div_cont"> 
            <!-- 내용 -->
            <form name="frmReg" id="frmReg" method="post" action="challenge_mem_match_proc.asp">
				<div id="div_full" class="div_con"> 
					<div class="teamplay_apply">
						<div class="inner">
							<h3><em class="essen">* </em>팀플장학신청 테스트용 회원 매칭</h3>
							
							<table class="table_new_type_01 account" cellpadding="0" cellspacing="0" border="0">
								<colgroup>
									<col width="220px">
									<col width="">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">로그인ID</th>
										<td class="taL">
											<div class="input_file account">
												<span style="color:#eb005e; font-size:17px;"><%=strMemId%></span>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">매칭 할 학번</th>
										<td class="taL">
											<div class="input_file account">
												<input type="text" name="memcd" id="memcd" value="<%=Ams_Mcode%>" size="10" maxlength="20" style="width:160px;" placeholder="학번">
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row">초기화</th>
										<td class="taL">										
											<div class="input_file account">지원취소는 AMS > 수강관리 > 팀플관리 > 팀플장학신청 페이지에서 하실 수 있습니다.                                        
												<!--<a href="javascript:void(0)" class="btn_default" onClick="fnReset('F', 'bank_reset');"><span class="i_file">서류제출 초기화</span></a> (매칭할 학번을 먼저 저장 후 초기화 해주세요.)-->                                        
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<div class="btn_box">
								<a href="javascript:void(0);" onclick="fnSave();" class="btn_l type1">
									<span>저장하기</span>
								</a>
							</div>
						</div>  
					</div>
				</div>
            </form>
            <!--// 내용 --> 
        </div>
    </div>
    <!-- // container --> 
    
    <!--#include virtual="/library/include/common/bottom.asp" --> 
</div>
<!-- // wrapper -->
</body>
</html>