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
	<script src="/public/js/TweenMax.min.js"></script>

	<style type="text/css">
		@import url(https://fonts.googleapis.com/earlyaccess/notosanskr.css);
		#div_cont .con { width: 1000px; margin: 0 auto; position: relative; z-index: 1;} 
		.top_wrap { position: relative; height: 815px; overflow: hidden; background: #fff url('<%=Application("img_path")%>/library/campus_common/2020_team/top_bg.jpg') center top no-repeat; } 
		.top_wrap .con { width: 960px; margin: 0 auto; position: relative; } 
		.top_wrap .con img { position: absolute; left: 0; opacity: 0; } 
		.top_wrap .con .act_wrap { position: absolute; top: 0; width: 100%; } 
		.top_wrap .con img.act02 { top: 102px; left: 395px; } 
		.top_wrap .con img.act03 { top: 162px; left: -233px; } 
		.top_wrap .con img.act04 { top: 276px; left: 567px; } 
		.top_wrap .con img.act05 { top: 100px; left: 683px; } 

		.top_wrap .rolling_wrap {position:absolute; width:100%; top:440px;}
		.top_wrap .rolling {width:1000px; margin:0 auto; position:relative;}
		.top_wrap .rolling .title {right:495px; position:absolute; z-index:1;}
		.top_wrap .rolling .vertical { position:absolute; left:-25px; top:35px; width:1770px; height:340px; background:url(<%=Application("img_path")%>/library/campus_common/2025/2025_team/top_rolling_bg_1.png) 50% 0 no-repeat; }
		.top_wrap .rolling .vertical .scholarship_wrap {width:1000px; padding-top:95px; margin-left:45px;}
		.top_wrap .rolling .vertical .scholarship_wrap .bx-wrapper {width:100% !important; text-align:center;}
		.top_wrap .rolling .vertical .scholarship_wrap p {display:inline-block;}
		.top_wrap .rolling .vertical .scholarship_wrap .campus {color:#fff; font-size:20px; font-weight:bold; margin-right:25px; padding-bottom:5px;}
		.top_wrap .rolling .vertical .scholarship_banner div {display:inline-block; position:relative; overflow:hidden; width:275px; text-align:right; margin-left:125px;}
		.top_wrap .rolling .vertical .scholarship_wrap .campus .loca_inner {margin-left:13px; font-size:20px; }
		.top_wrap .rolling .vertical .scholarship_wrap .campus .location {background: url(<%=Application("img_path")%>/library/campus_common/2020_team/top_rolling_sc.png) 0 0 no-repeat; color:#000; display:inline-block; width:106px; text-align:center; font-size:20px; padding:6px 0 8px;}
		.top_wrap .rolling .vertical .scholarship_wrap .name {color:#ffd67e; font-weight:bold; font-size:80px;}
		.top_wrap .rolling .vertical .scholarship_wrap .name+div { display:inline-block; position:relative; overflow:hidden; vertical-align:bottom; margin-left:25px;width:310px; height:70px; text-align:left;}
		.top_wrap .rolling .vertical .scholarship_wrap .circle {width:70px; font-size:18px; line-height:22px; color:#ffd67e; font-weight:bold; padding:11px 0 15px; margin-right:10px; text-align:center; display:none;}
		.top_wrap .rolling .vertical .scholarship_wrap .school {font-size:20px; color:#fff; text-align:left; line-height:27px;}

		.div_con1 {padding:90px 0 100px;}
		.div_con1 .con {height:338px; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_team/count_bg_1.jpg') 50% 0 no-repeat; position:relative;}
		.div_con1 .con .counter {font-size:70px; font-weight:bold; position:absolute; top:170px; color:#000;}
		.div_con1 .con .counter.posi01 {left:170px;}
		.div_con1 .con .counter.posi02 {left:670px;} 

		.div_con2 { position: relative; overflow: hidden; background-color:#f4ebd7; text-align: center; padding-bottom: 100px; font-family: 'Noto Sans KR';}
		.div_con2 .con { background:#fff; position:relative; text-align: left;}
		.div_con2 ul { padding:90px 50px 0 50px;display: flex;justify-content: initial; align-items:initial;flex-direction: column; }
		.div_con2 ul li {border-bottom:1px solid #e5e5e5; overflow:hidden; display: flex;justify-content: initial; align-items:end; padding-bottom:90px;}
		.div_con2 ul li:last-child {border-bottom: 0px;}
		.div_con2 ul li + li{ padding-top:90px;}
		.div_con2 ul li .title_wrap {position:relative; width:263px;}
		.div_con2 ul li .title {padding-left:230px;}
		.div_con2 ul li .team_contents { font-size:17px; line-height:34px; color:#333; letter-spacing:0; word-break:keep-all;}
		.div_con2 ul li .team_contents span {font-weight:bold;font-size:17px; line-height:34px;background:url('<%=Application("img_path")%>/library/campus_common/2021_team/team_contents_bg.jpg') 0 12px repeat-x; }
		.div_con2 ul li .team_contents em {font-size:14px; letter-spacing:0; margin-left:2px;}
		.div_con2 ul li .team_contents strong {color:#151ab2;}

		.div_con3 { position: relative; overflow: hidden; padding: 90px 0 110px;}
		.div_con3 .con { position: relative;}
		.div_con3 ul { overflow: hidden;}
		.div_con3 ul li { display: inline-block; float: left; border:1px solid #d9d9d9; width:478px; margin-bottom:50px; color:#555; font-weight:bold; padding-bottom:50px;}
		.div_con3 ul li .title_wrap {background:#f4f4f4; position:relative; padding:25px 40px 37px; height:55px; font-size:17px;}
		.div_con3 ul li .title_wrap .team_stu {font-size:16px; color:#151ab2; display:block;}
		.div_con3 ul li .title_wrap .team_stu em {font-size:27px; color:#010101;}
		.div_con3 ul li .title_wrap .team_sc {font-size:17px; color:#555; font-weight:normal; vertical-align:top; margin-top:10px; display:block;}
		.div_con3 ul li.c_even { margin-left: 40px;}
		.div_con3 ul li .title {padding:25px 40px 19px; line-height:27px; font-size:17px; color:#000;}
		.div_con3 ul li .team_contents {font-weight:normal; font-size:14px; line-height:25px; color:#777; padding:0 40px;}
		.div_con3 ul li .team_contents span {color:#151ab2; font-size:14px;}
		.div_con3 .more_btn {background:#f0f0f0; height:60px; text-align:center; cursor:pointer;}
		.div_con3 .more_btn span {font-size:20px; color:#000; margin-top:16px; padding-left:25px; background: url('<%=Application("img_path")%>/library/campus_common/2020_team/con02_img03.png') 0 70% no-repeat; display:inline-block;}
		.div_con4 { position: relative; padding: 110px 0 100px; overflow: hidden; background: #2e31af; } 
		#div_cont { width: 100%; font-size: 16px; font-family: "MalGun Gothic"; line-height: 1.2; letter-spacing: -1.5px; color: #333; text-align: center; clear: both; position: relative; overflow: hidden; } 
	</style>
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
									<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_team/top_txt01_bg_1.png" alt="" />
								</div>
								<div class="vertical">
									<div class="scholarship_wrap">
										<!-- 합격자 롤링 -->
										<ul class="scholarship_banner">
											<%
												' 합격자 롤링 정보 데이터 검색.
												' 2019-03-15 프로시저로 변경
												strSql = "EXEC MSP_MG_BOARD_SUGI '2025', '', ''" 'EXEC MSP_MG_BOARD_SUGI YEAR, MAIN_YN, TOP_YN
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
							<span class="counter posi01">26,404</span>
							<span class="counter posi02">720</span> 
						</div>
					</div>
					<div class="div_con2">
						<div>
							<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_team/con01_img01_2.jpg" alt="thanks to megastudy" />
						</div>
						<div class="con">
							<ul class="list_wrap">

								<li id="liNm<%=IIF(GetServerGubun() = "dev", 1043, 508)%>">
									<div class="title_wrap">
										<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_team/stu_img01.jpg" alt="유진호" />
									</div>
									<p class="team_contents">
										<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_team/stu_flag01.png" alt="성균관대 의예과 합격" />
										<br><br>
										<span>메가스터디학원에서 대입 준비를 하면서 가장 큰 도움이 된 점은 체계적인 학습 관리와<br>
										맞춤형 지원이었습니다.</span> 학생 개개인의 상황에 맞춰 학습 계획을 세울 수 있도록<br>
										도와주었고, <strong>덕분에</strong> 매일 해야 할 일이 명확해져 수험생활을 보다 효율적으로 보낼 수<br>
										있었습니다. 특히 어려운 순간마다 학원에서 제공하는 다양한 학습 도구와 선생님들의<br>
										격려가 큰 힘이 되었습니다. <span>메가스터디학원은 단순히 수업을 듣는 곳이 아니라,<br>
										목표 달성을 위한 체계적인 지원을 제공하는 곳이었으며,<br> 
										<strong>덕분에</strong> 수험 기간 동안 성과를 낼 수 있었습니다.</span><br>
									</p>
								</li>

								<li id="liNm<%=IIF(GetServerGubun() = "dev", 1044, 509)%>">
									<div class="title_wrap">
										<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_team/stu_img02.jpg" alt="우이오" />
									</div>
									<p class="team_contents">
										<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_team/stu_flag02.png" alt="이화여대 의예과 합격" />
										<br><br>
										<span>담임 선생님께서 매주 공부한 내용을 보시고 조언을 해주셨는데, 그 <strong>덕분에</strong> 공부를 <br>
										큰 계획 없이 하던 제가 스스로 지금 필요한 공부 방법이 무엇인지 주기적으로 <br>
										고민해 볼 수 있었습니다.</span> 또한 메가스터디학원에서는 입시 담당 선생님과 입시에 관해서<br>
										상담할 수 있어서, 수능 공부를 하며 가장 중요하다고 생각한 스트레스 관리에 큰 도움을 <br>
										받을 수 있었습니다. 각 과목에서 이상하게 정체된 것 같은 기분이 들고 <span>스스로의<br>
										힘만으로는 변화를 찾을 수 없을 것 같다고 느껴질 때 상담을 활용해서<br> 
										돌파구를 찾을 수 있었습니다.</span><br>
									</p>
								</li> 
								<!--
								<li id="liNm<%=IIF(GetServerGubun() = "dev", 1044, 509)%>">
									<div class="title_wrap">
										<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_team/stu_img03.jpg" alt="" />
									</div>
									<p class="team_contents">
										<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_team/stu_flag03.png" alt="" />
										<br><br>
									</p>
								</li> 
								-->
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
							<iframe width="1000" height="563" src="https://tv.naver.com/embed/72835349?autoPlay=true" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		// 윈도우 로드 이벤트 최적화
		$(window).on("load", function(){
			heightcalc();
		});

		$(document).ready(function(){

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
	</script>

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

	
	<script type="text/javascript">
		var motion1 = new TimelineMax({delay:2,repeat:0})
		motion1.to(".act02", 0.3, {opacity:1})

		var motion2 = new TimelineMax({delay:0.5,repeat:0})
		motion2.to(".act03", 0.3, {opacity:1, left:133})		
		
		var motion3 = new TimelineMax({delay:1.5,repeat:0})
		motion3.to(".act04", 0.25, {opacity:1, left:267})				  
		
		var motion4 = new TimelineMax({delay:1,repeat:0})
		motion4.to(".act05", 0.5, {opacity:1})	

	</script>
	<!-- #include virtual="/library/include/common/bottom.asp" -->
</body>
</html>