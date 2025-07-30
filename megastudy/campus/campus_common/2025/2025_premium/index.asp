<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<meta name="author" content="�ް����͵��п�" />
<meta name="keywords" content="�ް����͵��п�, �����п�, ����п�, �Խ�, �������п�, �ް����͵𷯼�, �ް����͵�, N��, ����, ����, ���ǰ��, �� �����̾� ���ǰ��" />
<meta name="description" content="�� ���� �� ���� ���ǰ��� �Ϻ��� ���� ���� ����, �� ��ü�� �����̾��� ���ǰ��"/>
<meta property="og:type" content="website">
<meta property="og:title" content="�ް����͵��п�">
<meta property="og:description" content="�� ���� �� ���� ���ǰ��� �Ϻ��� ���� ���� ����, �� ��ü�� �����̾��� ���ǰ��">
<meta property="og:url" content="https://campus.megastudy.net/campus_common/2025/2025_premium/index.asp">
<meta property="og:site_name" content="�ް����͵��п�">
<%
	pageOgMeta = "<meta property='og:image' content='https://img.megastudy.net/campus/library/v2015/library/campus_common/2025/2025_premium/thumb.jpg'>"
	response.write pageOgMeta
%>
<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->

<title><%=gMGC_Campus_Title%></title>
<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
<!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/report_2015.css" />
<link rel="stylesheet" type="text/css" href="/library/css/style.css" />
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css">
<link rel="stylesheet" type="text/css" href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="web.css"><!-- 2025_premium CSS -->

<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/common/js/gsap.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script type="text/javascript" src="/public/js/intro.js"></script>
<!-- #Include Virtual = "/library/include/reload/js_basic.asp" -->
<script type="text/javascript" src="/Public/js/CommonUtil.js"></script>

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
        
		<div id="premiumWrap" class="premium-wrap">

			<!--visual-->
			<div class="visual">
				<div class="bg"></div>
				<div class="bgOn"></div>
				<div class="inner">
					<p class="v-tit01"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/v_tit01.png" alt=""></p>
					<p class="v-tit02"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/v_tit02.png" alt=""></p>
					<p class="v-tit03"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/v_tit03.png" alt=""></p>
					<p class="v-obj01"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/v_obj03.png" alt=""></p>
				</div>
			</div>
			<!--//visual-->

			<div class="cont01">
				<div class="inner">
					<div class="tit-num" data-aos="flip-left"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/ico_num01.png" alt="01"></div>
					<p class="tit" data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/tit01.png" alt="�ް�X�뼺 �� �����̾� ���ǰ��"></p>
					<div class="detail-wrap">
						<p class="plus"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/ico_plus.png" alt="�÷���"></p>
						<div class="box">
							<p>
								<strong>THE �Ϻ��ϰ�</strong>
								���� ������ �ֽ� ���� ������ ����
							</p>
							<span>���� ���� �������� �� ȸ�� ����� <br>
								ź���� ������Ƽ ����
							</span>
							<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/d_img01.png" alt="detail_img01"></p>
						</div>
						<div class="box">
							<p>
								<strong>THE ǳ���ϰ�</strong>
								�� �ϳ��� �������� ��� ������ ����
							</p>
							<span>
								����/����(���ð��� ����), ����, �ѱ���, <br>
								Ž������(17�� ����)���� <br>
								�� ����&middot;�� ���� ����
							</span>
							<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/d_img02.png" alt="detail_img02"></p>
						</div>
						<div class="box">
							<p>
								<strong>THE ��Ȯ�ϰ�</strong>
								���� �Ƿ��� Ȯ���� �� �ֵ���
							</p>
							<span>
								���� �����п�/�ް����͵��п�/�뼺�п� <br>
								����� ��ü ���� �����Ͽ� <br>
								���� �� ���� �� �м�
							</span>
							<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/d_img03.png" alt="detail_img03"></p>
						</div>
						<div class="box">
							<p>
								<strong>THE ����ϰ�</strong>
								������ ���� �Ʒ��� �� �� �ֵ���
							</p>
							<span>
								���� �� 6ȸ �������� Ȯ���� ���� �Ʒ� <br>
								6&middot;9�� ������� ���ɱ��� �Ϻ� ���
							</span>
							<p><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/d_img04.png" alt="detail_img04"></p>
						</div>
					</div>
				</div>
			</div>

			<div class="cont02">
				<div class="inner">
					<div class="tit-num" data-aos="flip-left"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/ico_num02.png" alt="02"></div>
					<p class="tit" data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/tit02.png" alt="2026�г⵵ ���� ����"></p>
					
					<div class="tbl-sub">
						<p>6�� �򰡿� ������ ���</p>
						<p>9�� �򰡿� ������ ���</p>
						<p>���� ���дɷ½��� ���</p>
					</div>
					<table class="tbl-01">
						<colgroup>
							<col style="width:10%" span="10">
						</colgroup>
						<thead>
							<tr>
								<th>����</th>
								<th>3��</th>
								<th>4��</th>
								<th>5��</th>
								<th>6��</th>
								<th>7��</th>
								<th>8��</th>
								<th>9��</th>
								<th>10��</th>
								<th>11��</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>�޴��� <br> ���ǰ��</th>
								<td>3. 18(ȭ)</td>
								<td>4. 17(��)</td>
								<td></td>
								<td></td>
								<td>7. 16(��)</td>
								<td>8. 21(��)</td>
								<td></td>
								<td>10. 22(��)</td>
								<td>11. 3(��)</td>
							</tr>
							<tr>
								<th>�򰡿� <br> ������</th>
								<td></td>
								<td></td>
								<td></td>
								<td class="bg-sky">6. 4(��)</td>
								<td></td>
								<td></td>
								<td class="bg-purple">9. 3(��)</td>
								<td></td>
								<td class="bg-red">11. 13(��) <br> ����</td>
							</tr>
						</tbody>
					</table>
					<p class="r-txt">*��� ������ �򰡿� ���� ��ȹ �� �п��� �л������� ���� ���� �� ������ �� �ֽ��ϴ�.</p>
				</div>
			</div>

			<div class="cont03">
				<div class="inner">
					<div class="tit-num" data-aos="flip-left"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/ico_num03.png" alt="03"></div>
					<p class="tit" data-aos="fade-up"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/tit03.png" alt="����� �ı�"></p>
					<div class="review-wrap">
						<div class="box" data-aos="flip-left">
							<p class="label"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/label01.png" alt="����� �ǿ��� �հ�"></p>
							<p class="profile"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/stu_img01.png" alt="�л� ������"></p>
							<p class="tit">
								<strong>���� �����п�</strong>
								��OO �л�
							</p>
							<div class="txt">
								�ް�X�뼺 �� �����̾� ���ǰ�縦 <br>
								<strong>�� �޸��� ���� ���� ���� ������ �����ϴ� �� <br>
								����</strong>�� �ƽ��ϴ�. <br>
								������ ���� �� ����ǥ��  <br>
								�� ����� ������ ������ �ڼ��� ���ͼ�  <br>
								<strong>���� �������� ��ġ�� Ȯ���� �� �־���, <br>
								���� �ο��� ���� �� �־����ϴ�.</strong>
							</div>
						</div>
						<div class="box" data-aos="flip-left">
							<p class="label"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/label02.png" alt="���縯�� �ǿ��� �հ�"></p>
							<p class="profile"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/stu_img02.png" alt="�л� ������"></p>
							<p class="tit">
								<strong>����CORE ����</strong>
								��OO �л�
							</p>
							<div class="txt">
								�ް�X�뼺 �� �����̾� ���ǰ�� ���� <br>
								���� ���ɽð��� ���缭 Ǯ�� �� �� �־����ϴ�. <br>
								�Ŵ� ���ǰ�縶�� <strong>�ڽ��� ������� üũ�ϰ� <br>
								��� ȯ���̾��� �� ������ ���߾����� ��  <br>
								������ �ǵ���� �ϸ鼭  <br>
								������ �κ��� ������ �� �� �־����ϴ�.</strong>
							</div>
						</div>
						<div class="box" data-aos="flip-left">
							<p class="label"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/label03.png" alt="����� ���а� �հ�"></p>
							<p class="profile"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/stu_img03.png" alt="�л� ������"></p>
							<p class="tit">
								<strong>���� �߰��п�</strong>
								��OO �л�
							</p>
							<div class="txt">
								�Ŵ� ���� �ް�X�뼺 �� �����̾� ���ǰ�簡 <br>
								ū ������ �Ǿ����ϴ�. <br>
								�� ������ ���� ���� �ð�ǥ��� Ǯ�鼭 <br>
								���� ������ �ϱ⿡ ���Ұ�,  <br>
								<strong>�缳 ���ǰ�� �߿� <br>
								�����ڰ� ���� ���� �����̱� ������ ����ǥ�� ���� <br>
								���� ��ġ�� �����ϴ� ������ ������ �Ǿ����ϴ�.</strong>                         
							</div>
						</div>
						<div class="box" data-aos="flip-left">
							<p class="label"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/label04.png" alt="���հ��� ���а� �հ�"></p>
							<p class="profile"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/stu_img04.png" alt="�л� ������"></p>
							<p class="tit">
								<strong>�д� �ް����͵��п�</strong>
								��OO �л�
							</p>
							<div class="txt">
								�ް�X�뼺 �� �����̾� ���ǰ��� <br>
								���� ������ ��� �����ϴ� ������ �ƴ� <br>
								<strong>�ٸ� ���ǿ��� �ٸ� �� �л���� �Բ� <br>
								������ ������ ���� ������ <br>
								���� ���� �ӿ��� ���� �Ʒ�</strong>�� �� �� �־���, <br>
								���п� ���� ���Ͽ� <strong>ū ���� ���� <br>
								������ ġ�� �� �־����ϴ�.</strong>
							</div>
						</div>
						<div class="box" data-aos="flip-left">
							<p class="label"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/label05.png" alt="������ ġ�ǿ��� �հ�"></p>
							<p class="profile"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/stu_img05.png" alt="�л� ������"></p>
							<p class="tit">
								<strong>�ϻ� �ް����͵��п�</strong>
								��OO �л�
							</p>
							<div class="txt">
								<strong>�ް�X�뼺 �� �����̾� ���ǰ���  <br>
								������� �߿��� ���� ��ġ�� ����������  <br>
								�ľ��� �� �ְ� ����</strong>�� �־����ϴ�. <br>
								���п� ������ �� ���� <strong>�������� �ʰ� <br>
								���������� ������ ġ�� �� �־����ϴ�.</strong>
							</div>
						</div>
						<div class="box" data-aos="flip-left">
							<p class="label"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/label06.png" alt="������ �ǿ��� �հ�"></p>
							<p class="profile"><img src="<%=Application("img_path")%>/library/campus_common/2025/2025_premium/stu_img06.png" alt="�л� ������"></p>
							<p class="tit">
								<strong>��õ �ް����͵��п�</strong>
								��OO �л�
							</p>
							<div class="txt">
								���� �ο��� ���� �缳 ���ǰ���� <br>
								�ް�X�뼺 �� �����̾� ���ǰ�縦 �ǽ��ϹǷ� <br>
								<strong>��ü ����� ǥ�� �� �� ��ġ�� ���� ��Ȯ�� <br>
								Ȯ���� �� �ִٰ� �����Ͽ����ϴ�.</strong>
								
							</div>
						</div>
					</div>
					<p class="r-txt">�� �����п� �� �ް����͵��п� ������� ���� �ۼ��� �ı��Դϴ�.</p>
				</div>
			</div>

		</div>
    </div>
</div>

<script type="text/javascript">	
	$(function(){
		$(window).on('load', function () {
			pageLoadEvent();
			initAOS();

			$('.visual').addClass('on');
		});
	});

    function pageLoadEvent(){
        var temp_s = $("#premiumWrap").offset().top;
        $('html, body').animate({ scrollTop: temp_s}, 400);
    }

    function initAOS(){
        AOS.init({
            offset: 200,
            duration: 500,
            easing: 'ease-in-sine',
            delay: 0,
            once: true
        });
    }
</script>

<!-- wrapper End --> 
<!--#include virtual="/library/include/common/bottom.asp" -->
</body>
</html>
