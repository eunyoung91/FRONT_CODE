<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
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
	<link rel="stylesheet" type="text/css" href="/library/css/report_2015.css" />
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
	<script src="/public/js/waypoints.min.js"></script>
	<script src="/public/js/jquery.counterup.min.js"></script>

	<style type="text/css">
		@import url(/library/css/stylesheets/NotoSansKR-Hestia.css);

		#div_cont .con {
			width: 1000px;
			margin: 0 auto;
			position: relative;
			z-index: 1;
		}
		.top_wrap {
			position: relative;
			height: 815px;
			overflow: hidden;
			background: #fff url('<%=Application("img_path")%>/library/campus_common/2020_team/top_bg.jpg') center top no-repeat;
		}
		.top_wrap .con {
			width: 960px;
			margin: 0 auto;
			position: relative;
		}

		.top_wrap .con img {
			position: absolute;
			left:0;
			opacity:0;
		}
		.top_wrap .con .act_wrap {position:absolute; top:0; width:100%;}
		.top_wrap .con img.act02 {
			top:102px;
			left:395px;
		}
		.top_wrap .con img.act03 {
			top:162px;
			left:-233px;
		}
		.top_wrap .con img.act04 {
			top:276px;
			left:567px;
		}
		.top_wrap .con img.act05 {
			top:100px;
			left:683px;
		}
		.top_wrap .con img.act06 {
			left: -770px;
			top: 100px;
			opacity:1;
		}
		.top_wrap .con img.act07 {
			left: 366px;
			top: 343px;
		}
		.top_wrap .con img.act08 {
			top: 327px;
			left: 545px;
		}
		.top_wrap .con img.act09 {
			top: 131px;
			left: 442px;
		}
		.top_wrap .rolling_wrap {position:absolute; width:100%; top:440px;}
		.top_wrap .rolling {width:1000px; margin:0 auto; position:relative;}
		.top_wrap .rolling .title {right:495px; position:absolute; z-index:1;}
		.top_wrap .rolling .vertical {position:absolute; left:-25px; top:35px; background:url(<%=Application("img_path")%>/library/campus_common/2024/2024_team/top_rolling_bg_1.png) 50% 0 no-repeat; width:1770px; height:340px;}
		.top_wrap .rolling .vertical .scholarship_wrap {width:1000px; padding-top:95px; margin-left:45px;}
		.top_wrap .rolling .vertical .scholarship_wrap .bx-wrapper {width:100% !important; text-align:center;}
		.top_wrap .rolling .vertical .scholarship_wrap p {display:inline-block;}
		.top_wrap .rolling .vertical .scholarship_wrap .campus {color:#fff; font-size:20px; font-weight:bold; margin-right:25px; padding-bottom:5px;}
		.top_wrap .rolling .vertical .scholarship_banner div {display:inline-block; position:relative; overflow:hidden; width:275px; text-align:right; margin-left:125px;}
		.top_wrap .rolling .vertical .scholarship_wrap .campus .loca_inner {margin-left:13px; font-size:20px; }
		.top_wrap .rolling .vertical .scholarship_wrap .campus .location {background: url(<%=Application("img_path")%>/library/campus_common/2020_team/top_rolling_sc.png) 0 0 no-repeat; color:#000; display:inline-block; width:106px; text-align:center; font-size:20px; padding:6px 0 8px;}
		.top_wrap .rolling .vertical .scholarship_wrap .name {color:#ffd67e; font-weight:bold; font-size:80px;}
		.top_wrap .rolling .vertical .scholarship_wrap .name+div {/*background: url(<%=Application("img_path")%>/library/campus_common/2020_team/top_rolling_cir.png) 0 0 no-repeat;*/ display:inline-block; position:relative; overflow:hidden; vertical-align:bottom; margin-left:25px;width:310px; height:70px; text-align:left;}
		.top_wrap .rolling .vertical .scholarship_wrap .circle {width:70px; font-size:18px; line-height:22px; color:#ffd67e; font-weight:bold; padding:11px 0 15px; margin-right:10px; text-align:center; display:none;}
		.top_wrap .rolling .vertical .scholarship_wrap .school {font-size:20px; color:#fff; text-align:left; line-height:27px;}
		.top_wrap .rolling .vertical .scholarship_banner {}
		.div_con1 {padding:90px 0 100px;}
		.div_con1 .con {height:338px; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_team/count_bg_1.jpg') 50% 0 no-repeat; position:relative;}
		.div_con1 .con .counter {font-size:70px; font-weight:bold; position:absolute; top:170px; color:#000;}
		.div_con1 .con .counter.posi01 {left:170px;}
		.div_con1 .con .counter.posi02 {left:670px;} 
		.div_con2 {
			position: relative;
			background: #f4ebd7 url('<%=Application("img_path")%>/library/campus_common/2024/2024_team/con01_img01_2.jpg') 50% 0 no-repeat;
			overflow: hidden;
			padding-bottom:100px;
		}
		.div_con2 .con {margin-top:310px !important; background:#fff; position:relative;}
		.div_con2 ul {padding:0 50px;}
		.div_con2 ul li {border-bottom:1px solid #e5e5e5; padding-bottom:90px; overflow:hidden;}
		.div_con2 ul li:first-child {padding:95px 0}
		.div_con2 ul li:last-child {border-bottom: 0px;}
		.div_con2 ul li:first-child .team_contents {margin-top:0px;}
		
		.div_con2 ul li:nth-child(2) {padding:80px 0}
		.div_con2 ul li:nth-child(2) .team_contents {margin-top:20px;}
		.div_con2 ul li:nth-child(3) {padding:55px 0 95px;}
		.div_con2 ul li:nth-child(3) .team_contents {margin-top:45px;}
		.div_con2 ul li:nth-child(4) {padding:70px 0 95px}
		.div_con2 ul li:nth-child(4) .team_contents {margin-top:30px;}
		.div_con2 ul li:nth-child(5) {border-bottom:none; padding:90px 0;}
		.div_con2 ul li:nth-child(5) .team_contents {border-bottom:none;margin-top:5px;}
		.div_con2 ul li .title_wrap {position:absolute; width:230px;}
		.div_con2 ul li .title_wrap img {position:absolute; left:0px; top:-30px;}
		.div_con2 ul li .title_wrap img.stu_img2 {top:-22px;}
		.div_con2 ul li .title {padding-left:230px;}
		.div_con2 ul li .team_contents {padding-left:263px; font-size:17px; line-height:34px; margin-top:85px; color:#333; letter-spacing: -2px;word-break:keep-all;}
		.div_con2 ul li .team_contents span {font-weight:bold;font-size:17px; line-height:34px;background:url('<%=Application("img_path")%>/library/campus_common/2021_team/team_contents_bg.jpg') 0 12px repeat-x; }
		.div_con2 ul li .team_contents em {font-size:14px; letter-spacing:0; margin-left:2px;}
		.div_con2 ul li .team_contents strong {color:#151ab2;}
		.div_con3 {
			position: relative;
			overflow: hidden;
			padding: 90px 0 110px;
		}
		.div_con3 .con {
			position: relative;
		}
		.div_con3 ul {
			overflow: hidden;
		}
		.div_con3 ul li {
			display: inline-block;
			float: left;
			border:1px solid #d9d9d9;
			width:478px; 
			margin-bottom:50px;
			color:#555;
			font-weight:bold;
			padding-bottom:50px;
		}
		.div_con3 ul li .title_wrap {background:#f4f4f4; position:relative; padding:25px 40px 37px; height:55px; font-size:17px; letter-spacing:-1;}
		.div_con3 ul li .title_wrap .team_stu {font-size:16px; color:#151ab2; display:block;}
		.div_con3 ul li .title_wrap .team_stu em {font-size:27px; color:#010101;}
		.div_con3 ul li .title_wrap .team_sc {font-size:17px; color:#555; font-weight:normal; vertical-align:top; margin-top:10px; display:block;}
		.div_con3 ul li .title_wrap .team_sc em {/*background: url('<%=Application("img_path")%>/library/campus_common/2020_team/con02_img02.png') 100% 70% no-repeat; padding-right:10px; margin-right:7px;*/}
		.div_con3 ul li .title_wrap .team_code {background: url('<%=Application("img_path")%>/library/campus_common/2020_team/con02_img01.png') 100% 70% no-repeat; width:66px; height:66px; color:#fff; font-weight:bold; line-height:64px; display:block; position:absolute; top:23px; right:30px; font-size:17px; text-align:center; text-indent:-2px; display:none;}
		.div_con3 ul li.c_even {
			margin-left: 40px;
		}
		.div_con3 ul li .title {padding:25px 40px 19px; line-height:27px; font-size:17px; color:#000;}
		.div_con3 ul li .team_contents {font-weight:normal; font-size:14px; line-height:25px; color:#777; padding:0 40px;}
		.div_con3 ul li .team_contents span {color:#151ab2; font-size:14px;}
		.div_con3 .more_btn {background:#f0f0f0; height:60px; text-align:center; cursor:pointer;}
		.div_con3 .more_btn span {font-size:20px; color:#000; margin-top:16px; padding-left:25px; background: url('<%=Application("img_path")%>/library/campus_common/2020_team/con02_img03.png') 0 70% no-repeat; display:inline-block;}
		.div_con4 {
			background:#2e31af;
			position: relative;
			overflow: hidden;
			padding: 110px 0 100px;
		}
		#div_cont {
			color: #333;
			font-size: 13px;
			font-family: "MalGun Gothic";
			font-size: 16px;
			line-height: 1.2;
			letter-spacing: -1.5px;
		}
		#div_cont {
			width: 100%;
			text-align: center;
			clear: both;
			position: relative;
			overflow: hidden;
		}
		/* animation */
		.animation_element {
			transition: all 700ms;
			opacity: 0;
		}
		.animation_element.delay150 {
			transition-delay: 150ms;
		}
		.animation_element.delay200 {
			transition-delay: 200ms;
		}
		.animation_element.delay250 {
			transition-delay: 250ms;
		}
		.animation_element.delay300 {
			transition-delay: 300ms;
		}
		.animation_element.delay450 {
			transition-delay: 450ms;
		}
		.animation_element.delay550 {
			transition-delay: 550ms;
		}
		.animation_element.delay650 {
			transition-delay: 650ms;
		}
		.animation_element.delay750 {
			transition-delay: 750ms;
		}
		.animation_element.delay850 {
			transition-delay: 850ms;
		}
		.animation_element.delay950 {
			transition-delay: 950ms;
		}
		.animation_element.delay1050 {
			transition-delay: 1050ms;
		}
		.animation_element.delay1150 {
			transition-delay: 1150ms;
		}
		.animation_element.delay1250 {
			transition-delay: 1250ms;
		}
		.animation_element.delay1350 {
			transition-delay: 1350ms;
		}
		.animation_element.delay1450 {
			transition-delay: 1450ms;
		}
		.animation_element.delay1550 {
			transition-delay: 1550ms;
		}
		.animation_element.delay1650 {
			transition-delay: 1650ms;
		}
		.animation_element.delay1750 {
			transition-delay: 1750ms;
		}
		.animation_element.delay1850 {
			transition-delay: 1850ms;
		}
		.animation_element.delay1950 {
			transition-delay: 1950ms;
		}
		.animation_element.delay2050 {
			transition-delay: 2050ms;
		}
		.animation_element.delay2150 {
			transition-delay: 2150ms;
		}
		.animation_element.delay2250 {
			transition-delay: 2250ms;
		}
		.animation_element.delay2350 {
			transition-delay: 2350ms;
		}
		.animation_element.b_to_t {
			transform: translate(0px, 70px);
		}
		.animation_element.l_to_r {
			transform: translate(-100px, 0px) !important;
		}
		.animation_element.animation_set {
			opacity: 1 !important;
		}
		.animation_element.l_to_r.animation_set {
			transform: translate(-7px, 0px) !important;
		}
		.quick {
			width: 100px;
			position: fixed;
			top: 310px;
			left: 50%;
			margin-left: 523px;
			z-index: 999;
		}
		.quick img {
			opacity: 1;
		}
		.plan div {
			padding-left: 65px;
		}
		.fix_menu_wrap {
			width: 100%;
			background: #242736;
			z-index:1;
		}
		.fix_menu_wrap ul {
			overflow: hidden;
			width: 960px;
			margin: 0 auto;
			border-left: 1px solid #50525e;
		}
		.fix_menu_wrap ul li {
			display: table;
			float: left;
			width: 239px;
			border-right: 1px solid #50525e;
			height: 99px;
			border-top: 3px solid #242736;
			cursor: pointer;
			text-align: center;
		}
		.fix_menu_wrap ul li span {
			color: #fff;
			font-weight: bold;
			font-size: 26px;
			display: table-cell;
			vertical-align: middle;
		}
		.fix_menu_wrap ul li.on {
			background: #fff;
		}
		.fix_menu_wrap ul li.on span {
			color: #000;
		}
		.fix_contents {
			width: 960px;
			margin: 80px auto 0;
			overflow: hidden;
			display: none;
		}
		.fix_contents.on {
			display: block;
		}
		.fix_contents .box_wrap {overflow:hidden;}
		.fix_contents .box {
			width: 450px;
			display: inline-block;
			float: left;
			padding-right: 30px;
		}
		.fix_contents .box +.box {
			width: 450px;
			border-left: 1px solid #ccc;
			padding-left: 29px;
			padding-right: 0;
		}
	</style>
	<script type="text/javascript">
		$(window).load(function(){
			heightcalc();
		});

		$(document).ready(function(){
			/*
			setTimeout(function() { 
				var nOffset = $(document).scrollTop();
				console.log(nOffset);
				if (nOffset > 0) {
					$('html, body').animate({scrollTop : nOffset - 30}, 10);	
				}
			}, 2000);
			*/

			/*
			$(".team_contents").each(function(e){
				//var html = $(this).text().replace(/덕분에g, '<strong>덕분에</strong>');			
				
				$(this).html(html);
			});*/

			// rolling result wrap 
			$('.counter').counterUp({
				delay: 11,
				time: 600
			});

			var scholarship_slider = $('.scholarship_banner').bxSlider({
				mode: 'vertical',
				auto: true,
				controls: false,
				pause: 2000,
				pager: false
			});

			$(".linkA, .linkB").on('click', function(e){
				var _top = $($(this).attr('href')),
				$target = _top.offset().top;

				e.preventDefault();
				$('html, body').animate({
					scrollTop: $target
				}, 500);
			});
			
			$(".fix_menu li").on('click', function(e){
				var idx = $(this).index()+1;
				
				$(".fix_menu li").removeClass("on");
				$(this).addClass("on");
				
				$(".fix_contents").removeClass("on");
				$(".contents0"+idx).addClass("on");
				
				var _top = $(".contents0"+idx),
					$target = _top.offset().top -150;

				e.preventDefault();
				$('html, body').animate({
					scrollTop: $target
				}, 500);
			});

			/* Scroll event handler */
			$(window).bind('scroll',function(e){
				parallaxScroll();
			});
		});

		function heightcalc() {
			$(".c_odd").each(function (e) {
				var listH = $(this).height();
				var listnH = $(this).next(".c_even").height();
				
				if (listH >= listnH) {
					$(this).css("height",listH);
					$(this).next(".c_even").css("height",listH);
				}
				else {
					$(this).css("height",listnH);
					$(this).next(".c_even").css("height",listnH);
				}
			});
		}

		function menuTop() {
			if ($(this).scrollTop() > 4250) {
				$('.fix_menu_wrap').css({
					top: '0px', "position": "fixed"
				});
			} else {
				$('.fix_menu_wrap').css({
					"position": "relative"
				});
			}
		}
		
		/* motion scroll */
		function motion_scr() {
			var winH = $(window).height();
			var scrT = $(window).scrollTop();
			var view_pos = winH + scrT
		
			$(".animation_element").each(function () {
				var elementH = $(this).outerHeight();
				var elementT = $(this).offset().top;
				var elementP = (elementT + elementH - 400);
		
				if ((elementP <= view_pos)) {
					$(this).addClass("animation_set");
				}
			});
		};
		
		/* Scroll */
		function parallaxScroll(){
			var scrolled = $(window).scrollTop();
			$('.act06').css('top',(100-(scrolled*.6))+'px');
			//$('.act_wrap').css('top',(0-(scrolled*.3))+'px');
			//$('.act07').css('top',(0-(scrolled*.25))+'px');
			//$('.act07').css('top',(0-(scrolled*.25))+'px');
			//$('.act07').css('top',(scrolled+343)+'px');
			//$('.act08').css('top',(scrolled+327)+'px');
			//$('.act09').css('top',(scrolled+131)+'px');		
		}
	</script>
</head>
<body>
	<div id="wrapper">
		<!-- 최상단메뉴//-->
		<!-- #include virtual="/library/include/common/top.asp" -->
		<!-- //최상단메뉴-->
		
		<div id="header" class="<%=GetCampusColorType()%>">
			<!--상단 학원로고 및 선택 탭//  -->
			<!-- #include virtual="/library/include/common/top_campus_tab.asp" -->
			<!-- //상단 학원로고 및 선택 탭 -->
			
			<!-- 상단 대메뉴//-->
			<!-- #include virtual="/library/include/common/top_campus_detail_menu.asp" -->
			<!-- //상단 대메뉴 -->
		</div>
		<!-- // header -->
		
		<div id="container" style="padding-bottom:0px !important;">
			<div id="div_cont">
				<div id="div_full" class="div_con taL">
					<div class="top_wrap">
						<div class="con">
							<div class="act_wrap">
								<img class="act02" src="<%=Application("img_path")%>/library/campus_common/2020_team/top_txt02.png" alt="" />
								<img class="act03" src="<%=Application("img_path")%>/library/campus_common/2020_team/top_txt03.png" alt="" />
								<img class="act04" src="<%=Application("img_path")%>/library/campus_common/2020_team/top_txt04.png" alt="" />
								<img class="act05" src="<%=Application("img_path")%>/library/campus_common/2020_team/top_txt05.png" alt="" />
							</div>
						</div>
						<div class="rolling_wrap">
							<div class="rolling">
								<div class="title">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_team/top_txt01_bg_1.png" alt="" />
								</div>
								<div class="vertical">
									<div class="scholarship_wrap">
										<!-- 합격자 롤링 -->
										<ul class="scholarship_banner">
											<%
												' 합격자 롤링 정보 데이터 검색.
												' 2019-03-15 프로시저로 변경
												strSql = "EXEC MSP_MG_BOARD_SUGI '2024', '', ''" 'EXEC MSP_MG_BOARD_SUGI YEAR, MAIN_YN, TOP_YN
												Set objRs = objDb.sqlQuery(strSql, 3)

												If Not objRs.EOF Then
													Do While Not objRs.EOF
														dbSeq = objRs("SEQ")
														dbS_CodeName = objRs("S_CODENAME")
														dbS_Name = objRs("S_NAME")
														dbS_Type = objRs("S_TYPE")
														dbS_Univ = objRs("S_UNIV")
														dbS_Major = objRs("S_MAJOR")
														
														If Instr(dbS_CodeName, " ") > 0 Then
															strArray = Split(dbS_CodeName, " ")
															strAcaName = "<span class=""location"">"& strArray(0) &"</span><span class=""loca_inner"">"& strArray(1) &"</span>"
														Else
															strAcaName = "<span class=""location"">"& dbS_CodeName &"</span>"
														End If
														%>
															<li>
																<div>
																	<p class="campus"><%=strAcaName%></p>
																</div>

																<p class="name"><%=dbS_Name%></p>
																
																<div>
																	<p class="circle"><%=dbS_Type%><br>합격</p>
																	<p class="school"><strong><%=dbS_Univ%></strong><br><%=dbS_Major%>&nbsp;</p>
																</div>
															</li>
														<%

														objRs.MoveNext
													Loop

													objRs.close
													Set objRs = Nothing
												End If
											%>
										</ul>
										<!-- //합격자 롤링 -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="div_con1">
						<div class="con">
							<span class="counter posi01">10,077</span>
							<span class="counter posi02">267</span> 
						</div>
					</div>
					<div class="div_con2">
						<div class="con">
							<ul class="list_wrap">
								<li id="liNm<%=IIF(GetServerGubun() = "dev", 1043, 508)%>">
									<div class="title_wrap">
										<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_team/stu_img01.jpg" alt="국채현" />
									</div>

									<p class="team_contents">
										<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_team/stu_flag01.png" alt="고려대 의과대학 합격" /><br>
										<br>
										<span>메가스터디학원에서 제공해 주는 충분한 실전 모의고사들은 학생들에게 학습 외의 많은 고민<br>시간을 줄여주는 데 큰 역할</span>을 하였다고 생각합니다.<br> 
										QUEL 모의고사는 현재 저 자신의 상태를 가늠하는 데 큰 도움을 주었으며, 
										실제 수능을 본다는<br>느낌으로 연습을 충분히 할 수 있었습니다.<br> 
										이외에도 메가-대성 더 프리미엄이나 이감 모의고사 등 
										<span><strong>덕분에</strong> 작년의 저 혼자 수능을<br>준비할 때 보다 저의 부담을 훨씬 덜어주었던 것 같습니다.</span>
									</p>
								</li>
								<li id="liNm<%=IIF(GetServerGubun() = "dev", 1044, 509)%>">
									<div class="title_wrap">
										<img class="stu_img2" src="<%=Application("img_path")%>/library/campus_common/2024/2024_team/stu_img03.jpg" alt="서무진" />
									</div>

									<p class="team_contents">
										<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_team/stu_flag03.png" alt="이화여대 의예과 합격" />
										<br><br>
										메가스터디학원에서 제공하는 수 모의고사와 QUEL 모의고사 등<br>
										<span>다양한 실전 모의고사 콘텐츠들 <strong>덕분에</strong> 개인적으로 모의고사에 시간을 할애하지 않고도<br>
										시험지 운영 능력과 실전 감각을 기를 수 있었습니다.</span><br>
										또한 다달이 진행하는 메가X대성 더 프리미엄 모의고사 등의 전국 단위 모의고사를 통해<br> 
										<span>저의 객관적인 위치를 확인하고 취약 부분을 점검하여 학습 전략을 보완할 수 있는 기회를<br> 
										얻을 수 있었던 것 같습니다.</span>
									</p>
								</li>  
								<li id="liNm<%=IIF(GetServerGubun() = "dev", 1044, 509)%>">
									<div class="title_wrap">
										<img class="stu_img2" src="<%=Application("img_path")%>/library/campus_common/2024/2024_team/stu_img02.jpg" alt="오유찬" />
									</div>

									<p class="team_contents">
										<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_team/stu_flag02.png" alt="서울대 경제학부 합격" />
										<br><br>
										<span>커리큘럼에 따라 매주 제공되는 실전 모의고사가 가장 큰 도움</span>이 되었던 것 같습니다.<br>
										문제집을 여러 개 푸는 것보다도 가능하다면 실전의 환경에서 새로운 문제를 풀어보는 것이<br>좋다고 생각하는데, 
										메가스터디학원은 매달 실전 모의고사를 보고 토요일에도 하프/실전<br>모의고사를 나눠줘서 여러 문제를 다루고, 
										실전 감각을 익힐 수 있었습니다.<br> 
										<span>이런 경험들이 쌓인 <strong>덕분에</strong> 수능날에도 떨지 않고 평상시의 감각으로 문제를 풀 수 있었던 것 같습니다.</span>
									</p>
								</li>  
							</ul>
						</div>
					</div>
					
					<div class="div_con3">
						<div class="con">
							<ul class="list_wrap" id="listPage">
							</ul>
							<div class="more_btn" id="divMoreBtn"><span id="spanMoreTxt"><font id="fntMoreTxt">더보기</font> (<font id="nPage">0</font>/<font id="nPageCnt">1</font>)</span></div>
						</div>
					</div>
					
					<div class="div_con4" style="padding-top:100px;">
						<div class="con taC">
							<iframe width="1000" height="563" src="https://tv.naver.com/embed/48139065?autoPlay=true" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		try{
			$(function() {
				//리스트 가져오기 
				fnMoreBtn();
				
				//+더하기 버튼 넘어에 data가 있을 경우, 더보기버튼 누르기
				var vNowHref = document.location.href;
				if (vNowHref.indexOf("#") > 0) {
					var vNowPara = vNowHref.split("#")[1];
					
					var vi = 0;
					while($("#" + vNowPara).length == 0 && vNowPara.indexOf("liNm") >= 0 && vi < 7){
						fnMoreBtn(vNowPara);
						vi++;
					}
				}

				$(".more_btn").on("click", function() {
					fnMoreBtn();
					heightcalc();
				});
			});

			function fnMoreBtn(para) {
				var nPage = parseInt($("#nPage").text());
				var nPageCnt = parseInt($("#nPageCnt").text());
				if (nPage >= nPageCnt) {
					return false;
				}
				else {
					$.ajax({
						type:"GET",
						url: "team_ajax.asp",
						data: "nPage=" + escape(nPage + 1),
						async: false,
						dataType:"html",
						success: function(html, textStatus) {
							$("#listPage").append(html);
							$("#nPage").text(nPage + 1);
							$("#nPageCnt").text($("#hdPageCnt").val());
							
							if ($("#nPage").text() == $("#nPageCnt").text()) {
								$("#fntMoreTxt").html("마지막 페이지입니다.");
								$("#spanMoreTxt").css("background", "#f0f0f0").css("color", "gray");
								$("#divMoreBtn").css("cursor", "default");
							}
						},
						error: function(xhr, textStatus, errorThrown) {
							alert("에러가 발생했습니다.\n잠시후 다시 시도해주세요.");
						}
					});
				}

				if(para != undefined){
					$("#" + para).focus();
					// setTimeout(() => {
					// 	$("html, body").animate({scrollTop: $("#" + para).offset().top}, "slow");
					// }, 1000);
				}
			}
		}
		catch(error){
			console.log(error);
			alert("오류가 발생하였습니다.");
		}
	</script>

	<script src="/public/js/TweenMax.min.js"></script>

	<script type="text/javascript">
		var motion1 = new TimelineMax({delay:2,repeat:0})
		motion1.to(".act02", 0.3, {opacity:1})

		var motion2 = new TimelineMax({delay:0.5,repeat:0})
		motion2.to(".act03", 0.3, {opacity:1, left:133})		
		
		var motion3 = new TimelineMax({delay:1.5,repeat:0})
		motion3.to(".act04", 0.25, {opacity:1, left:267})				  
		
		var motion4 = new TimelineMax({delay:1,repeat:0})
		motion4.to(".act05", 0.5, {opacity:1})	
		
		/*
		var motion5 = new TimelineMax({delay:0.5,repeat:0})
		motion5.to(".act06", 0.7, {opacity:1, top:(scrolled+131)})	
		
		var motion6 = new TimelineMax({delay:0.7,repeat:0})
		motion6.to(".act07", 0.7, {opacity:1, top:(scrolled+343)})	
		
		var motion7 = new TimelineMax({delay:0.9,repeat:0})
		motion6.to(".act08", 0.7, {opacity:1, top:(scrolled+327)})	
		
		var motion8 = new TimelineMax({delay:1.1,repeat:0})
		motion6.to(".act09", 0.7, {opacity:1, top:(scrolled+131)})		
		*/
	</script>

	<!-- #include virtual="/library/include/common/bottom.asp" -->
</body>
</html>