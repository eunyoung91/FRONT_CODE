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
<link rel="stylesheet" type="text/css" href="web.css">
<!-- intro전용 css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
</head>

<body>
<div id="wrapper">

    <!--  최상단메뉴//-->
    <!--#include virtual="/library/include/common/top.asp" -->
    <!--  //최상단메뉴-->

    <div id="header" class="<%=GetCampusColorType()%>">

        <!--상단 학원로고 및 선택 탭//  -->
        <!--#include virtual="/library/include/common/top_campus_tab.asp" -->
        <!-- //상단 학원로고 및 선택 탭 -->

        <!--  상단 대메뉴//-->
        <!--#include virtual="/library/include/common/top_campus_detail_menu.asp" -->
        <!-- //상단 대메뉴 -->

    </div>
    <!-- // header -->
    <div id="container">
        <div id="div_cont">

            <div id="div_full" class="div_con taL">
                <div class="top_wrap" style="background: #1a777e url('<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/top_bg.jpg') center top no-repeat;">
                    <div class="con">
	                    <div class="act_wrap">
	                    	<div class="img_wrap">
		                    	<img class="act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/top_txt01.png" alt="" />
		                    	<img class="act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/top_txt02.png" alt="" />
		                    </div>
	                    	<img class="act04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/top_img02.png" alt="" />
	                    	<img class="act05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/top_img03.png" alt="" />
	                    	<img class="act06" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/top_img04.png" alt="" />
	                    	<img class="act03" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/top_img01.png" alt="" />
	                    </div>
                    </div>
                </div>

                <div class="fix_menu_wrap">
                    <ul class="fix_menu">
                        <li class="on"><span>2024 구술면접</span></li>
                        <li><span>구술면접 준비 TIP</span></li> 
                        <li><span>면접 프로그램</span></li>
                    </ul>
                </div>

				<div class="fix_contents on contents01">
	                <div id="con1" class="div_con1">
	                    <div class="taC">
	                    	<img class="mt80" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con01_title.png" alt="" />

							<div class="mt75 img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con01_01_title.png" alt="" />
							</div>

							<div class="mt50 img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con01_img01_2.png" alt="" />
							</div>
							
							<div class="mt100 img_wrap">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con01_02_title.png" alt="" />
								<img class="mt100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con01_03_title.png" alt="" />

								<div class="border_area mt50">
									<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con01_table_title.png" alt="" />

									<table cellspacing="0" cellpadding="0" border="0" class="lec_info_tstyle4 mt30">
										<colgroup>
											<col width="10%">
											<col width="16%">
											<col width="auto">
											<col width="8%">
										</colgroup>

										<thead>
											<tr>
											<th>대학명</th>
											<th>전형명</th>
											<th>전형 방법</th>
											<th>수능 최저 적용</th>
											</tr>
										</thead>
										<tbody>
											<tr>
											<th>건국대</th>
											<td>KU자기추천</td>
											<td>1단계(3배수): 서류 100, 2단계: 1단계70+면접30</td>
											<td>X</td>
											</tr>
											<tr>
											<th>경희대</th>
											<td>네오르네상스</td>
											<td>1단계(3배수): 서류100, 2단계: 1단계70+면접30</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="2">고려대</th>
											<td>학업우수</td>
											<td>서류100</td>
											<td>X</td>
											</tr>
											<tr>
											<td>계열적합</td>
											<td>1단계(5배수): 서류100, 2단계: 1단계50+면접50</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="4">동국대</th>
											<td rowspan="2">Do Dream</td>
											<td>1단계(4배수): 서류100, 2단계: 1단계70+면접30</td>
											<td rowspan="2">X</td>
											</tr>
											<tr>
											<td class="boR">※ 경영, 정보통신공학, 화공생물공학 1단계(3.5배수)</td>
											</tr>
											<tr>
											<td rowspan="2">Do Dream<br>(소프트웨어)</td>
											<td rowspan="2">1단계(2.5배수): 서류100, 2단계: 1단계70+면접30</td>
											<td rowspan="2">X</td>
											</tr>
											<tr>
											</tr>
											<tr>
											<th>서강대</th>
											<td>일반, 서강가치</td>
											<td>서류100</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="2">서울대</th>
											<td>일반</td>
											<td>
												1단계(2배수): 서류100, 2단계: 1단계50+면접50<br>
												- 디자인: 1단계(2배수): 서류100, 2단계: 면접100<br>
												- 사범대학: 1단계(2배수): 서류100, 2단계: 1단계50+면접30+교직적&middot;인20<br>
												- 음악대학 국악과: 1단계(2배수): 서류50+실기50, 2단계: 서류50+실기40+면접10<br>
											</td>
											<td>
												△<br>
												(디자인/체교)
											</td>
											</tr>

											<tr>
											<td>지역균형</td>
											<td>1단계(3배수): 서류100, 2단계: 1단계70+면접30</td>
											<td>○</td>
											</tr>
											<tr>
											<th rowspan="2">서울시립대</th>
											<td>학생부종합Ⅰ</td>
											<td>1단계(3배수): 서류100, 2단계: 1단계50+면접50</td>
											<td>X</td>
											</tr>
											<tr>
											<td>학생부종합Ⅱ</td>
											<td>서류100</td>
											<td>○</td>
											</tr>
											<tr>
											<th rowspan="3">성균관대</th>
											<td>융합형</td>
											<td>서류100</td>
											<td>X</td>
											</tr>
											<tr>
											<td>탐구형</td>
											<td>
												서류100<br>
												- 의예, 교육, 한문교육, 수학교육, 컴퓨터교육, 스포츠과학:<br>
												1단계(3배수): 서류100, 2단계: 1단계70+면접30<br>
											</td>
											<td>X</td>
											</tr>
											<tr>
											<td>과학인재</td>
											<td>1단계(7배수): 서류100, 2단계: 1단계70+면접30</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="2">연세대</th>
											<td>활동우수형</td>
											<td>1단계(인문 3배수/자연 4배수): 서류100, 2단계: 1단계60+면접40</td>
											<td>○</td>
											</tr>
											<tr>
											<td>국제형-국내고</td>
											<td>1단계(3배수): 서류100, 2단계: 1단계60+면접40</td>
											<td>○</td>
											</tr>
											<tr>
											<th rowspan="2">중앙대</th>
											<td>CAU융합형인재</td>
											<td>서류100</td>
											<td>X</td>
											</tr>
											<tr>
											<td>CAU탐구형인재</td>
											<td>1단계(3.5배수): 서류100, 2단계: 1단계70+면접30</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="3">한국외대</th>
											<td>학생부종합(면접형)</td>
											<td>1단계(3배수): 서류100, 2단계: 1단계50+면접50</td>
											<td>X</td>
											</tr>
											<tr>
											<td>학생부종합(서류형)</td>
											<td>서류100</td>
											<td>X</td>
											</tr>
											<tr>
											<td>학생부종합(SW인재)</td>
											<td>서류100</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="3">한양대</th>
											<td>서류형</td>
											<td>학생부100</td>
											<td>X</td>
											</tr>
											<tr>
											<td>면접형</td>
											<td>1단계(5배수): 학생부100, 2단계: 1단계80+면접20</td>
											<td>X</td>
											</tr>
											<tr>
											<td>추천형</td>
											<td>학생부100</td>
											<td>○</td>
											</tr>
										</tbody>
									</table>

									<p class="bottom_txt">※ 한국대학교육협의회에서 발표한 2025학년도 대입정보 119 기준</p>
								</div>
							</div>
	                    </div>
	                </div>

	                <div id="con2" class="div_con2">
	                    <div class="con taC">
	                    	<img class="mt80" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con02_title.png" alt="" />
	                        <div class="img_wrap mt80">
								<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con02_img01.png" alt="" />
								<img class="mt100" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con02_img02.png" alt="" />
	                        </div>
	                    </div>
	                </div>
	            </div>

	            <div class="fix_contents contents02">
	                <div id="con3" class="div_con3">
	                    <div class="con taC">
	                    	<img class="mt80" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con03_title.png" alt="" />
	                        <img class="mt65" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con03_img01.png" alt="" />
	                    </div>
	                </div>
	                <div id="con4" class="div_con4">
	                    <div class="taC">
	                    	<img class="mt80" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con04_title.png" alt="" />
	                    </div>
	                    <div class="img_wrap mt70 taC">
	                    	<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con04_img01.png" alt="" />
	                    </div>
	                </div>
	            </div>

				<div class="fix_contents contents03">
	                <div id="con5" class="div_con5">
	                    <div class="taC">
	                    	<img class="mt80" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con05_title.png" alt="" />
	                    </div>
	                    <div class="img_wrap mt70 taC">
	                    	<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con05_img01.png" alt="" />
	                    </div>
	                </div>
	                <div id="con6" class="div_con6">
	                	<div class="taC">
	                    	<img class="mt80" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con06_title.png" alt="" />
	                    </div>
	                    <div class="img_wrap mt70 taC">
	                    	<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con06_img01.png" alt="" />
	                    </div>
	                </div>
	                <div id="con7" class="div_con7">
						<div class="taC">
	                    	<img class="mt80" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con07_title.png" alt="" />
	                    </div>
	                    <div class="img_wrap mt70 taC">
	                    	<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con07_img01.png" alt="" />
	                    </div>
	                </div>
					<div id="con8" class="div_con8">
						<div class="taC">
	                    	<img class="mt80" src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con08_title.png" alt="" />
	                    </div>
	                    <div class="img_wrap mt70 taC">
	                    	<img src="<%=Application("img_path")%>/library/campus_common/2024/2024_goosul/con08_img01.png" alt="" />
	                    </div>
	                </div>
	            </div>

            </div>
        </div>
    </div>

    <!-- container End -->
    <script src="/public/js/TweenMax.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			titleMotion();
			
			$(".fix_menu li").on('click', function(e){
				var idx = $(this).index()+1;
				console.log(idx);

				$(".fix_menu li").removeClass("on");
				$(this).addClass("on");
	
				$(".fix_contents").removeClass("on");
				$(".contents0"+idx).addClass("on");
	
				var _top = $(".contents0"+idx), 
					$target = _top.offset().top - 0;
	
				e.preventDefault();
	
				$('html, body').animate({ scrollTop : $target - 0 }, 500);
			});
		});
	
		function fix_menu_move() {
			var qstart = $(".top_wrap").height() + 100;
			if ($(this).scrollTop() > qstart) {
				$('.fix_menu_wrap').css({
					"top" : "0", "position" : "fixed"
				});
			}else {
				$('.fix_menu_wrap').css({
					"top" : "720px", "position" : "absolute"
				});
			}
		}

		function titleMotion(){
			var motion1 = new TimelineMax({delay:0.5,repeat:0})
			motion1.to(".act02", 0.5, {opacity:1, left:0});
			var motion = new TimelineMax({delay:0.5,repeat:0})
			motion.to(".act01", 0.5, {opacity:1});
			var motion2 = new TimelineMax({delay:1.2,repeat:0})
			motion2.to(".act03", 2.5, {opacity:1, left:630});
			var motion3 = new TimelineMax({delay:1.2,repeat:0})
			motion3.to(".act04", 0.5, {opacity:1});
			var motion4 = new TimelineMax({delay:1.2,repeat:0})
			motion4.to(".act05", 2, {opacity:1, left:320});
			var motion5 = new TimelineMax({delay:1.2,repeat:0})
			motion5.to(".act06", 2.0, {opacity:1, top:500});
		}
		
		$(window).on({ 
			"load":function(){ },
			"resize":function(){ },
			"scroll":function(){
				fix_menu_move();
			}
		});
	</script>


</div>
<!-- wrapper End -->
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
