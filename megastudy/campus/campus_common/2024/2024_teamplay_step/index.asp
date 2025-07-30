<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include file="./cl_header.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="" />
	<!-- #Include Virtual="/library/include/reload/favicon.asp" -->

	<title><%=gMGC_Campus_Title%></title>
	<!-- #Include Virtual="/library/include/reload/css_common.asp" -->
	<!-- #Include Virtual="/library/include/reload/css_table.asp" -->
	<link rel="stylesheet" type="text/css" href="/library/css/report_2015.css" />
	<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
	<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
	<link rel="stylesheet" type="text/css" href="./teamplayStep.css">
	<!-- #include virtual="/public/jquery.asp" -->
	<!-- #Include Virtual="/library/include/reload/js_common.asp" -->
	<!-- #Include Virtual="/library/include/reload/js_basic.asp" -->
	<script type="text/javascript" src="./js/teamplay_common.js"></script>
	<script type="text/javascript" src="/public/js/intro.js"></script>
	<script type="text/javascript" src="/public/js/CommonUtil.js"></script>
	<script type="text/javascript" src="/public/js/waypoints.min.js"></script>

	<script>
		$(function(){
			$(".delay_pop_close").click(function(){
				$("body").removeClass("delay_body");
				$(".modal_dim").hide();
				$(".delay_pop_20220227").hide();
			});
		});

		$(window).on({ //페이지 스크롤 이동
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
		<!-- 최상단메뉴//-->
		<!-- #include virtual="/library/include/common/top.asp" -->
		<!-- //최상단메뉴-->
		
		<div id="header" class="<%=GetCampusColorType()%>">
			<!--상단 학원로고 및 선택 탭// -->
			<!-- #include virtual="/library/include/common/top_campus_tab.asp" -->
			<!-- //상단 학원로고 및 선택 탭 -->
			
			<!-- 상단 대메뉴// -->
			<!-- #include virtual="/library/include/common/top_campus_detail_menu.asp" -->
			<!-- //상단 대메뉴 -->
		</div>
		
		<div id="container" style="padding-bottom:0px !important;">
			<div id="div_cont">
				<div id="div_full" class="div_con">
					<!-- 상단 공통 이미지 -->
					<!-- #include file="./cl_image.asp" -->
					<!-- // 상단 공통 이미지 -->

					<div class="con_wrap">
						<div class="teamplay_apply info">
							<div class="apply_info">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/con_top_txt.png" alt=""/>
							</div>
							
							<div class="div_con1">
								<div class="img_wrap">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/con01_title01.png" alt="" />
								</div>

								<div class="img_wrap mt50">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/con01_img01.png" alt="" />
								</div>

								<div class="img_wrap mt100">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/con01_title02.png" alt="" />
								</div>

								<div class="img_wrap mt50">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/con01_img02.png" alt="" />
								</div>
							</div>
							<div class="bottom_btn_box">
								<span onClick="<%=F_onClick%>" style="cursor: pointer;">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/btn_apply1_<%=g_image_switch%>.png" alt="" />
								</span>
							</div>
							<div class="desc_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/con02_img01.png" alt="" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="/public/js/TweenMax.min.js"></script>
	<script type="text/javascript">
		var acObject = $('.act_wrap');

		var motion1 = new TimelineMax({delay:0,repeat:0});
		// motion1.to(".act01", 0.6, {opacity:1, top:98});
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

	<!-- #include virtual="/library/include/common/bottom.asp" -->
</body>
</html>