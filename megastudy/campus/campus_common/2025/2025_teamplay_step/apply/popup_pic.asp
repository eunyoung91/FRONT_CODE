<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
	filetype = VARS("filetype")
	objnm  = VARS("objnm")

	FileTitle = ""

	If filetype ="EXAMSN" Or filetype ="EXAMSNLAST" Then 
		FileTitle = "수능 성적표 등록하기"
	ElseIf filetype ="UNIVPASSFILE"  Then 
		FileTitle = "대학 합격증명서 등록하기"
	ElseIf filetype ="MEMPIC"  Then 
		FileTitle = "증명사진 등록하기"
	ElseIf filetype ="MEMBANK"  Then 
		FileTitle = "본인 통장사본 등록하기"
	Else 
		FileTitle = "사진 등록하기"
	End If 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="" />
	<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->

	<title><%=gMGC_Campus_Title%></title>
	<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_util.asp" -->
	<style>
		.pop_body {color:#7e8289;}
		.popTitle {
			background: #204eab;
		}
		.popWrap .btn_close {
			background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2020_teamplay_step/icon_close.png') no-repeat center
		}
		.btn_box_arrow {
			display: inline-block;
			min-width: 110px;
			padding: 0 10px 0 33px;
			height: 34px !important;
			line-height: 32px;
			font-size: 14px;
			/* text-align: center; */
			color: #204eab;
			border: 1px solid #204eab;
			background: #fff;
		}
		.pop_body .pop_input {
			border-top: 3px solid #333;
			background: #f2f2f2;
		}
		.file_input_div_pop {
			padding-left: 0;
			width: 114px;
		}
		.file_input_div_pop:before {
			content: '';
			position: absolute;
			top: 11px;
			left: 15px;
			width: 13px;
			height: 13px;
			margin-right: 4px;
			background: url('https://img.megastudy.net/campus/library/v2015/library/campus_common/2022_teamplay_step/icon_search.png') no-repeat;
			z-index: 1;
		}
		.file_input_div_pop ,
		.file_input_hidden_pop {
			height: 34px !important;
		}
		.file_input_textbox_pop.w1 {
			height: 28px;
		}
		.btn_icon.dark_arrow {
			background: #204eab;
			border-color: #204eab;
		}
		.btn_icon.dark_arrow span {line-height:35px;}
	</style>
</head>
<body style="overflow:hidden;">
	<div class="popWrap">
		<!-- class="mw_popup open" --><!-- 'open'클래스를 추가하면 레이어가 뜹니다. -->
		<div class="popTitle">
			<h1><%=FileTitle%></h1>
		</div>
		<div class="pop_body">
			

			<form id="form_app_pic" name="form_app_pic" method="post" target="_self" action="./popup_picX.asp" enctype="multipart/form-data">
				<input type="hidden" id="filetype" name="filetype" value="<%=filetype%>"/>
				<input type="hidden" id="objnm" name="objnm" value="<%=objnm%>"/>
				<div class="pop_input taC mt10">
					<!-- 2015-09-11 수정 -->
					<input type="text" id="fileName" class="file_input_textbox_pop w1" readonly="readonly" />
					<div class="file_input_div_pop taL">
						<input type="button" value="찾아보기" class="file_input_button_pop btn_box_arrow" style="width:100px;"  />
						
						<input type="file" id="app_photo" name="app_photo" class="file_input_hidden_pop" onchange="document.getElementById('fileName').value = this.value" accept=".png, .jpg, .jpeg, .gif"/>
					</div>
					<!-- // 2015-09-11 수정 -->

					<!--
						<input type="file" id="app_photo" name="app_photo" size="30" class="input_g">
						<input type="image" src="<%=Application("img_path")%>/library/common/btn/btn_pic.gif" border="0" align="absmiddle" value="등록" />
						<button type="button" class="btn_box_arrow" onclick="">찾아보기</button>
					-->
				</div>
				<p class="mt10">
					10MB 이하의 jpg, jpeg, gif, png 파일만 등록 가능
				</p>
				<div class="btnDiv taC mt25">
					<a href="javascript:;" onclick="document.form_app_pic.submit();" class="btn_icon dark_arrow" value="등록하기"><span>등록하기</span></a>
				</div>
			</form>
		</div>
		<!--<button type="button" class="btn_popup btn_close" onClick="javascript:self.close();"><span class="blind">창닫기</span></button>-->
	</div>

	<script>
		window.resizeTo(600, 380);
	</script>
</body>
</html>