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
	<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
	<link rel="stylesheet" type="text/css" href="./teamplayStep.css">
	<!-- #include virtual="/public/jquery.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
	<script type="text/javascript" src="/public/js/intro.js"></script>
	<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>
	<script src="/public/js/waypoints.min.js"></script>
	<script src="/public/js/jquery.counterup.min.js"></script>

	<script>
		$(window).on({
			"load": function(){
				var temp_s = $("#div_full").offset().top;

				$("html, body").animate({
					scrollTop: temp_s
				}, 500);

				$(".counter").counterUp({
					delay: 11,
					time: 600
				});
			},
			"resize":function(){},
			"scroll":function(){}
		});
	</script>
	
	<style>
		.counter_area {position:relative; width:1240px; height:360px; padding-top:120px; margin:0 auto; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_counter_bg.png') no-repeat; background-size:100%; z-index:5;}
		.counter_txt_wrap {display:table; position:relative; width:1000px; margin:0 auto; text-align:left; box-sizing:border-box;}
		.counter_txt_wrap::before {position:absolute; top:0; left:0; width:1000px; height:203px; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/img_laurel_wreath.png') no-repeat; background-size:100%; content:'';}

		.counter_txt {display:table-cell; position:relative; width:50%; height:160px; padding-top:20px; text-align:center; font-family:'Gotham';}
		.counter_txt strong {display:block; padding-top:39px; font-size:26px; font-weight:bold; color:#E89207; padding-bottom:3px;}
		.counter_txt em, .counter_txt .counter {font-size:45px; font-weight:bold; color:#433215; letter-spacing:-1px;}
		.counter_txt .counter {font-size:50px;}

		.bottom_txt {width:100%; margin-top:40px; color:#999; font-size:16px; text-align:center;}

		.posi01 {padding-left:190px; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/img_left_box.png') no-repeat left 100px top 20px; background-size:390px auto;}
		.posi02 {padding-right:190px; background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/img_right_box.png') no-repeat right 100px top 20px; background-size:390px auto;}


		.div_con2 {
			width:100%;
			height:639px;
			background:url('<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con04_bg.jpg') no-repeat center top;
			background-size:cover;
		}
		.banner_link {display:table; width:100%;}
		.banner_link .link_area {display:table-cell; position:relative; width:50%;}
		.banner_link .link_area.link01  {text-align:left;}
		.banner_link .link_area.link02 {text-align:right;}
		.banner_link .link_area a {position:absolute; left:50%; bottom:40px; width:148px; height:33px; font-size:0; z-index:1;}
		.banner_link .link_area.link01 a {margin-left:-85px;}
		.banner_link .link_area.link02 a {margin-left:-65px;}
		
		/* 우측 고정 배너 */
		.r_fixed_bn {position:fixed; top:200px; right:0; z-index:99;}
		.r_fixed_bn .r_banner_link a {display:none; width:190px; height:95px;}
		.r_fixed_bn .r_banner_link a + a {margin-top:20px;}
		.r_fixed_bn .r_banner_link img {width:190px; height:95px;}
	</style>
</head>
<body>
	<div id="wrapper">
		<!-- 최상단메뉴// -->
		<!-- #include virtual="/library/include/common/top.asp" -->
		<!-- //최상단메뉴 -->
		
		<div id="header" class="<%=GetCampusColorType()%>">
			<!-- 상단 학원로고 및 선택 탭// -->
			<!-- #include virtual="/library/include/common/top_campus_tab.asp" -->
			<!-- //상단 학원로고 및 선택 탭 -->
			
			<!-- 상단 대메뉴// -->
			<!-- #include virtual="/library/include/common/top_campus_detail_menu.asp" -->
			<!-- //상단 대메뉴 -->
		</div>
		
		<div id="container" style="padding-bottom:0px !important;">
			<div id="div_cont">
				<div id="div_full" class="div_con">
					<!-- 상단 공통 베너 -->
					<div class="top_wrap">
						<div class="act_wrap">
							<img class="act act01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_txt01.png" alt="">

							<div class="top_star">
								<img class="star3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_star03.png" alt="">
								<img class="star2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_star02.png" alt="">
								<img class="star1" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_star01.png" alt="">
								<img class="star2" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_star02.png" alt="">
								<img class="star3" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_star03.png" alt="">
							</div>

							<img class="act act02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_txt02.png" alt="">
							<img class="act act03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_txt03.png" alt="">

							<img class="act act04" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_img01.png" alt="">
							<img class="act act05" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_img02.png" alt="">
							<img class="act act06" src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/top_img03.png" alt="">
						</div>

						<div class="counter_area">
							<div class="counter_txt_wrap">
								<p class="counter_txt posi01">
									<strong>누적 장학생</strong>
									<span class="counter">10,077</span><em>명</em>
								</p>
								<p class="counter_txt posi02">
									<strong>누적 장학금</strong>
									<em>약</em> <span class="counter">267</span><em>억원</em>
								</p>
							</div>
	
							<p class="bottom_txt taC">※ 메가스터디학원 입학/모의고사/졸업 장학 전체 포함 (2020~2024학년도 누적)</p>
						</div>
					</div>
					<!-- // 상단 공통 베너 -->

					<!-- 우측 고정 배너 -->
					<div class="r_fixed_bn">
						<div class="r_banner_link">
							<a class="fixed_btn02" href="/mypage/teamplay_info/?g=sn_rec&arr_Child=">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/right_banner02_off.png" alt="실성적 등록하기">
							</a>
							<a class="fixed_btn03" href="/campus_common/2025/2025_teamplay_step/index.asp">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/right_banner03_off.png" alt="서류&합격수기 등록하기">
							</a>
							<a class="fixed_btn04" href="/campus_common/2025/2025_teamplay_step/apply/challenge_result.asp" style="display: block;">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/right_banner04_off.png" alt="합격증&통장사본 등록하기">
							</a>
							<a class="fixed_btn05" href="https://campus.megastudy.net/common/notice/notice_view.asp?code=25792" style="display: block;">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/right_banner05_off.png" alt="지원대학 등록하기">
							</a>
						</div>
					</div>

					<script>
						$(document).ready(function(){
							$(".r_fixed_bn img").mouseover(function(){
								this.src = this.src.replace("off.png", "on.png");
							})
							.mouseout(function(){
								this.src = this.src.replace("on.png", "off.png");
							});
						});
					</script>
					<!-- //우측 고정 배너 -->

					<div class="div_con1">
						<div class="con">
							<div class="img_wrap pt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con01_title.png" alt="" />
							</div>
							<div class="img_wrap mt40">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con01_txt.png" alt="" />
							</div>

							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con02_title.png" alt="" />
							</div>
							<div class="img_wrap mt40">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con02_txt.png" alt="" />
							</div>

							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con03_title.png" alt="" />
							</div>
							<div class="img_wrap mt40">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con03_table.png" alt="" />
							</div>
							<div class="img_wrap mt40 taL">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con03_txt.png" alt="" />
							</div>
						</div>
					</div>
					
					<div class="div_con2" style="height:400px;">
						<div class="con">
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con04_title.png" alt="" />
							</div>
							<!-- <div class="banner_link mt40">
								<div class="img_wrap link_area link01">
									<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con04_banner01.png" alt="" />

									<a href="https://campus.megastudy.net/teamplay/info/intro_2024.asp" target="_blank">자세히보기</a>
								</div>
								<div class="img_wrap link_area link02">
									<img src="<%=Application("img_path")%>/library/campus_common/2025/2025_teamplay_s/con04_banner02.png" alt="" />

									<a href="https://campus.megastudy.net/campus_common/2025/2025_final_gate/index.asp" target="_blank">자세히보기</a>
								</div>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="/public/js/TweenMax.min.js"></script>
	<script type="text/javascript">
		// var acObject = $(".act_wrap");

		var motion1 = new TimelineMax({delay:0.2,repeat:0});
			motion1.to(".act01", 0.5, {opacity:1});

		var motion2 = new TimelineMax({delay:0.5,repeat:0});
			motion2.to(".act02", 0.7, {opacity:1, top:265, ease:Power2.easeOut})

		var motion3 = new TimelineMax({delay:1.2,repeat:0});
			motion3.to(".act03", 0.6, {opacity:1, top:468, ease:Back.easeOut});

		var motion4 = new TimelineMax({delay:1.8,repeat:0});
			motion4.to(".act04", 0.4, {opacity:1, top:-55, scale:1, ease:Power3.easeOut});

		var motion5 = new TimelineMax({delay:1.9,repeat:0});
			motion5.to(".act05", 1.2, {opacity:1, ease:Power1.easeOut});

		var motion6 = new TimelineMax({delay:1.8,repeat:0});
			motion6.to(".act06", 0.3, {opacity:1, scale:1});
	</script>
	<!-- wrapper End --> 
	<!-- #include virtual="/library/include/common/bottom.asp" -->

	<script>
		/*
			작성 : 2023-11-10
			배너 버튼 노출 설정 JS 코드
			페이지 새로고침해야 새로운 시간 적용됨(TODAY_TIME)
		*/
		var unofficialScore = $(".fixed_btn01");
		var officialScore = $(".fixed_btn02");
		var teamplayApply = $(".fixed_btn03");
		var teamplayResult = $(".fixed_btn04");
		var univApply = $(".fixed_btn05");
		var TODAY_TIME = new Date();

		if(new Date("2024-11-14 14:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2024-11-22 23:59:59")){ //1번 배너버튼(가채점)
			unofficialScore.show();
		}
		else{
			unofficialScore.hide();
		};

		// if(new Date("2023-12-08 10:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2023-12-15 23:59:59")){  
		// 	officialScore.show();
		// }
		if(new Date("2024-12-06 10:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2024-12-13 10:00:00")){ //2번 배너버튼(실성적)
			officialScore.show();
		}
		else{
			officialScore.hide();
		};
		
		if(new Date("2024-12-06 10:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2025-01-05 23:59:59")){ //3번 배너버튼(서류&합격수기)
			teamplayApply.show();
		}
		else{
			teamplayApply.hide();
		};

		if(new Date("2025-01-06 10:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2025-02-28 23:59:59")){ //4번 배너버튼(합격증&통장사본)
			teamplayResult.show();
		}
		else{
			teamplayResult.hide();
		};

		if(new Date("2024-12-31 10:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2025-01-10 10:00:00")){ //정시지원대학 배너
			univApply.show();
		}
		else{
			univApply.hide();
		};

		<%If CSTr(GetServerGubun()) = "dev" Then '테스트 서버에서 일정 상관 없이 버튼 보여주기%>
			// unofficialScore.hide(); //가채점
			//officialScore.show(); //실성적
			//teamplayApply.show(); //서류&합격수기
			teamplayResult.show(); //합격증&통장사본
			//univApply.show(); //정시지원대학 배너
		<%End If%>
	</script>
</body>
</html>