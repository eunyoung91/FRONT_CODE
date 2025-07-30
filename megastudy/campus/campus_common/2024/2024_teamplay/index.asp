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
		.fixed_banner{position:fixed;top:370px;right:0%;width:194px;height:95px;z-index:100;}
		.fixed_btn01{display:none;width:100%;height:100%;}
		.fixed_btn02{display:none;width:100%;height:100%;}
		.fixed_btn03{display:none;width:100%;height:100%;}
		.fixed_btn04{display:none;width:100%;height:100%;}
		.fixed_btn05{display:none;width:100%;height:100%;}

		.div_con3 {height:auto; padding-bottom:100px;}
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
							<img class="act act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/top_txt01.png" alt="">
							<div style="position:absolute; top:206px; left:88px; width:857px; height:500px; overflow:hidden; z-index:9;">
								<img class="act act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/top_txt02.png" alt="">
								
								<img class="act act05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/light_01.png" alt="">	
								<img class="act act06" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/light_02.png" alt="">	
							</div>
							<img class="act act03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/top_txt03.png" alt="">
							<img class="act act04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/top_txt04.png" alt="">		
						</div>
					</div>
					<!-- // 상단 공통 베너 -->

					<!-- 우측 고정 배너 231110 -->
					<div class="r_fixed_bn">
						<div class="banner_link">
							<a class="fixed_btn01" href="/mypage/teamplay_info/?g=sn_rec&arr_Child=">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/right_banner_off.png" alt="가채점 등록하기">
							</a>
							<a class="fixed_btn02"href="/mypage/teamplay_info/?g=sn_rec&arr_Child=">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/right_banner01_off.png" alt="실성적 등록하기">
							</a>
							<a class="fixed_btn03"href="/campus_common/2024/2024_teamplay_step/index.asp">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/right_banner02_off.png" alt="서류&합격수기 등록하기">
							</a>
							<!-- 231228 추가 -->
							<a class="fixed_btn05"href="https://campus.megastudy.net/mypage/teamplay_info/Default.asp?g=regular&getUnivType=j&arr_Child=">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/right_banner04_off.png" alt="지원대학 등록하기">
							</a>
							<!-- 231228 추가 -->
							<a class="fixed_btn04"href="/campus_common/2024/2024_teamplay_step/apply/challenge_result.asp">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/right_banner03_off.png" alt="합격증&통장사본 등록하기">
							</a>
						</div>
					</div>

					<style>
						.r_fixed_bn {display:none;position:fixed;top:210px;right:0;opacity: 1;z-index:99;}
						.r_fixed_bn .banner_link a {display:block; width:190px;height:95px;}
						.r_fixed_bn .banner_link a + a {margin-top:20px}
						.r_fixed_bn .banner_link img{width:100%;}
					</style>

					<script>
						$(document).ready(function(){
							$(".r_fixed_bn img").mouseover(function(){
								this.src = this.src.replace("off.png", "on.png");
							})
							.mouseout(function(){
								this.src = this.src.replace("on.png", "off.png");
							});

							setTimeout(function() { 
								$(".r_fixed_bn").fadeIn(1000);
							}, 1000);

							// 스크롤시 고정배너
							// $(".r_fixed_bn").hide();

							//fixed_bn01.show(); //배너 버튼 보여주기
							// $(window).scroll(function(){
							// 	if($(this).scrollTop() > 190){
							// 		$(".r_fixed_bn").fadeIn();
							// 	}
							// 	else{
							// 		$(".r_fixed_bn").fadeOut(100);
							// 	} 
							// });
						});
					</script>
					<!-- 우측 고정 배너 231110 -->

					<style>
						.act05 .counter {font-size:70px; font-weight:bold; position:absolute; top:488px; color:#000;}
						.act05 .posi01 {left:260px;}
						.act05 .posi02 {left:735px;}
					</style>
					<style>
						.counter_txt_wrap {font-size:60px; font-weight:bold; color:#fff; width:100%; text-align:left; letter-spacing:0px; font-family: 'Noto Sans KR'; box-sizing:border-box; position:relative; padding:65px 0 35px; width:1160px; margin:0 auto; overflow:hidden; line-height:1;}
						.counter_txt_wrap::after, .counter_txt_wrap::before {position:absolute; top:35px; width:85px; height:161px; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/left_img.png') no-repeat; background-size:cover; content:''; display:block; clear:both;}
						.counter_txt_wrap::before {left:0;}
						.counter_txt_wrap::after {right:0 !important; background:url('<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/right_img.png') no-repeat; background-size:cover;}
						.counter_txt {display:inline-block; float:left; width:50%; box-sizing:border-box; text-align:left; padding:5px 0 15px 270px; position:relative;}
						.counter_txt + .counter_txt {border-left:1px solid #3c5481; padding-left:175px;}
						.counter_txt em {font-style:normal; font-size:51px; font-weight:100; vertical-align:2px; font-family: 'Noto Sans KR';}
						.counter_txt strong {font-size:25px; font-weight:bold; display:block; color:#baf2f3; padding-bottom:3px;}
						.counter_txt .ico_img {position:absolute; top:7px; left:165px;}
						.counter_txt + .counter_txt .ico_img {left:55px; top:9px;}
						.counter_txt .counter {font-family:'Gotham'; font-size:60px;}
						.bottom_txt {color:#8790a8; font-size:16px; position:relative; width:100%; text-align:center; padding:0; letter-spacing:0;}
						.posi01 {}
						.posi01 em {}
						.posi02 {}
						.posi02 em {margin-right:10px; }
						.posi02 .counter {margin-left:0;}
						.posi02 span + em {margin-right:0; margin-left:5px;}
					</style>

					<div style="position:relative; background:#1a366b; padding-bottom:45px;">
						<div class="counter_txt_wrap">
							<p class="counter_txt posi01">
								<img class="ico_img" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/ico_img01.png" alt="" class="img-responsive">
								<strong>누적 장학생</strong>
								<span class="counter">23,154</span><em>명</em>
							</p>
							<p class="counter_txt posi02">
								<img class="ico_img" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/ico_img02.png" alt="" class="img-responsive">
								<strong>누적 장학금</strong>
								<em>약</em><span class="counter">619</span><em>억원</em>
							</p>
						</div>

						<p class="bottom_txt taC">※ 메가스터디학원 입학/모의고사/졸업 장학금 전체 포함 (2011~2023학년도 누적)</p>
					</div>

					<div class="div_con1">
						<div class="img_wrap mt100">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/con01_title01.png" alt="" />
						</div>

						<div class="img_wrap mt50">
							<img style="margin-left:-85px;" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/con01_img01.png" alt="" />
						</div>
					</div>
					
					<div class="div_con2">
						<div class="con">
							<div class="img_wrap mt100">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/con02_title01.png" alt="" />
							</div>

							<div class="img_wrap mt60">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/con02_img01.png" alt="" />
							</div>

							<div class="img_wrap mt30 taL">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/con02_img02.png" alt="" />
							</div>
						</div>
					</div>

					<div class="div_con3">
						<div class="img_wrap mt100">
							<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/con03_title01.png" alt="" />
						</div>
						<!-- <div style="position:relative; width:1000px; margin:0 auto;">
							<a class="btn btn01" href="https://campus.megastudy.net/teamplay/info/intro_2023.asp">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/bottom_banner01.png" alt="팀플장학이 궁금하다면" class="img-responsive" style="width:100%">
							</a>
							<a class="btn btn02" href="https://campus.megastudy.net/campus_common/2025/2025_nsufirst_gate/index.asp">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/bottom_banner03.png" alt="" class="img-responsive" style="width:100%">
							</a>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="/public/js/TweenMax.min.js"></script>
	<script type="text/javascript">
		var motion1 = new TimelineMax({delay:0,repeat:0});
		motion1.to(".act01", 0.6, {opacity:1, top:110});

		var acObject = $(".act_wrap");
		
		var motion1_1 = new TimelineMax({delay:0.8,repeat:0});
		motion1_1.to(".act02", 0.6, {opacity:1, top:0});

		var motion2 = new TimelineMax({delay:1.5,repeat:0});
		motion2.to(".act03", 0.6, {opacity:1, top:640});
		
		var motion3_1 = new TimelineMax({delay:2.3,repeat:0});
		motion3_1.to(".act04", 0.6, {opacity:1, top:230, scale:1, ease:Power3.easeOut})
		
		var motion4_1 = new TimelineMax({delay:1.5,repeat:-1, yoyo:true});
		motion4_1.to(".act05", 0.6, {opacity:1});

		var motion4_2 = new TimelineMax({delay:2,repeat:-1, yoyo:true});
		motion4_2.to(".act06", 0.6, {opacity:1});
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

		if(new Date("2023-11-08 10:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2023-11-22 23:59:59")){ //1번 배너버튼(가채점)
			unofficialScore.show();
		}
		else{
			unofficialScore.hide();
		};

		if(new Date("2023-12-08 10:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2023-12-15 23:59:59")){ //2번 배너버튼(실성적)
			officialScore.show();
		}
		else{
			officialScore.hide();
		};

		if(new Date("2023-12-08 10:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2023-12-22 23:59:59")){ //3번 배너버튼(서류&합격수기)
			teamplayApply.show();
		}
		else{
			teamplayApply.hide();
		};

		if(new Date("2023-12-26 10:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2024-02-29 23:59:59")){ //4번 배너버튼(합격증&통장사본)
			teamplayResult.show();
		}
		else{
			teamplayResult.hide();
		};

		if(new Date("2024-01-03 10:00:00") < TODAY_TIME && TODAY_TIME <= new Date("2024-01-12 10:00:00")){ //정시지원대학 배너
			univApply.show();
		}
		else{
			univApply.hide();
		};

		<%If CSTr(GetServerGubun()) = "dev" Then '테스트 서버에서 일정 상관 없이 버튼 보여주기%>
			unofficialScore.hide(); //가채점
			officialScore.hide(); //실성적
			teamplayApply.hide(); //서류&합격수기
			teamplayResult.show(); //합격증&통장사본
			//univApply.show(); //정시지원대학 배너
		<%End If%>
	</script>
</body>
</html>