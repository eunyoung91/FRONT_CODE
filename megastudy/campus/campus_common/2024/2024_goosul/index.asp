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
<!-- intro���� css -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
</head>

<body>
<div id="wrapper">

    <!--  �ֻ�ܸ޴�//-->
    <!--#include virtual="/library/include/common/top.asp" -->
    <!--  //�ֻ�ܸ޴�-->

    <div id="header" class="<%=GetCampusColorType()%>">

        <!--��� �п��ΰ� �� ���� ��//  -->
        <!--#include virtual="/library/include/common/top_campus_tab.asp" -->
        <!-- //��� �п��ΰ� �� ���� �� -->

        <!--  ��� ��޴�//-->
        <!--#include virtual="/library/include/common/top_campus_detail_menu.asp" -->
        <!-- //��� ��޴� -->

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
                        <li class="on"><span>2024 ��������</span></li>
                        <li><span>�������� �غ� TIP</span></li> 
                        <li><span>���� ���α׷�</span></li>
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
											<th>���и�</th>
											<th>������</th>
											<th>���� ���</th>
											<th>���� ���� ����</th>
											</tr>
										</thead>
										<tbody>
											<tr>
											<th>�Ǳ���</th>
											<td>KU�ڱ���õ</td>
											<td>1�ܰ�(3���): ���� 100, 2�ܰ�: 1�ܰ�70+����30</td>
											<td>X</td>
											</tr>
											<tr>
											<th>�����</th>
											<td>�׿����׻�</td>
											<td>1�ܰ�(3���): ����100, 2�ܰ�: 1�ܰ�70+����30</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="2">�����</th>
											<td>�о����</td>
											<td>����100</td>
											<td>X</td>
											</tr>
											<tr>
											<td>�迭����</td>
											<td>1�ܰ�(5���): ����100, 2�ܰ�: 1�ܰ�50+����50</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="4">������</th>
											<td rowspan="2">Do Dream</td>
											<td>1�ܰ�(4���): ����100, 2�ܰ�: 1�ܰ�70+����30</td>
											<td rowspan="2">X</td>
											</tr>
											<tr>
											<td class="boR">�� �濵, ������Ű���, ȭ���������� 1�ܰ�(3.5���)</td>
											</tr>
											<tr>
											<td rowspan="2">Do Dream<br>(����Ʈ����)</td>
											<td rowspan="2">1�ܰ�(2.5���): ����100, 2�ܰ�: 1�ܰ�70+����30</td>
											<td rowspan="2">X</td>
											</tr>
											<tr>
											</tr>
											<tr>
											<th>������</th>
											<td>�Ϲ�, ������ġ</td>
											<td>����100</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="2">�����</th>
											<td>�Ϲ�</td>
											<td>
												1�ܰ�(2���): ����100, 2�ܰ�: 1�ܰ�50+����50<br>
												- ������: 1�ܰ�(2���): ����100, 2�ܰ�: ����100<br>
												- �������: 1�ܰ�(2���): ����100, 2�ܰ�: 1�ܰ�50+����30+������&middot;��20<br>
												- ���Ǵ��� ���ǰ�: 1�ܰ�(2���): ����50+�Ǳ�50, 2�ܰ�: ����50+�Ǳ�40+����10<br>
											</td>
											<td>
												��<br>
												(������/ü��)
											</td>
											</tr>

											<tr>
											<td>��������</td>
											<td>1�ܰ�(3���): ����100, 2�ܰ�: 1�ܰ�70+����30</td>
											<td>��</td>
											</tr>
											<tr>
											<th rowspan="2">����ø���</th>
											<td>�л������ե�</td>
											<td>1�ܰ�(3���): ����100, 2�ܰ�: 1�ܰ�50+����50</td>
											<td>X</td>
											</tr>
											<tr>
											<td>�л������ե�</td>
											<td>����100</td>
											<td>��</td>
											</tr>
											<tr>
											<th rowspan="3">���հ���</th>
											<td>������</td>
											<td>����100</td>
											<td>X</td>
											</tr>
											<tr>
											<td>Ž����</td>
											<td>
												����100<br>
												- �ǿ�, ����, �ѹ�����, ���б���, ��ǻ�ͱ���, ����������:<br>
												1�ܰ�(3���): ����100, 2�ܰ�: 1�ܰ�70+����30<br>
											</td>
											<td>X</td>
											</tr>
											<tr>
											<td>��������</td>
											<td>1�ܰ�(7���): ����100, 2�ܰ�: 1�ܰ�70+����30</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="2">������</th>
											<td>Ȱ�������</td>
											<td>1�ܰ�(�ι� 3���/�ڿ� 4���): ����100, 2�ܰ�: 1�ܰ�60+����40</td>
											<td>��</td>
											</tr>
											<tr>
											<td>������-������</td>
											<td>1�ܰ�(3���): ����100, 2�ܰ�: 1�ܰ�60+����40</td>
											<td>��</td>
											</tr>
											<tr>
											<th rowspan="2">�߾Ӵ�</th>
											<td>CAU����������</td>
											<td>����100</td>
											<td>X</td>
											</tr>
											<tr>
											<td>CAUŽ��������</td>
											<td>1�ܰ�(3.5���): ����100, 2�ܰ�: 1�ܰ�70+����30</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="3">�ѱ��ܴ�</th>
											<td>�л�������(������)</td>
											<td>1�ܰ�(3���): ����100, 2�ܰ�: 1�ܰ�50+����50</td>
											<td>X</td>
											</tr>
											<tr>
											<td>�л�������(������)</td>
											<td>����100</td>
											<td>X</td>
											</tr>
											<tr>
											<td>�л�������(SW����)</td>
											<td>����100</td>
											<td>X</td>
											</tr>
											<tr>
											<th rowspan="3">�Ѿ��</th>
											<td>������</td>
											<td>�л���100</td>
											<td>X</td>
											</tr>
											<tr>
											<td>������</td>
											<td>1�ܰ�(5���): �л���100, 2�ܰ�: 1�ܰ�80+����20</td>
											<td>X</td>
											</tr>
											<tr>
											<td>��õ��</td>
											<td>�л���100</td>
											<td>��</td>
											</tr>
										</tbody>
									</table>

									<p class="bottom_txt">�� �ѱ����б�������ȸ���� ��ǥ�� 2025�г⵵ �������� 119 ����</p>
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
