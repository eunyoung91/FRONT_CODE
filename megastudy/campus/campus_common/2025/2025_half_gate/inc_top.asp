<%
    Select Case GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") 

        Case "" ' INTRO (https://campus.megastudy.net)
            tel = ""
        Case "CD0208" ' 서초 재수학원 (https://seocho.megastudy.net)
            tel = "02-3144-1111"
            campus_txt ="서초"
        Case "CD0210" ' 강북 재수학원 (https://gangbuk.megastudy.net)
            tel = ""
        Case "CD0211" ' 노량진 재수학원 (https://noryangjin.megastudy.net)
            tel = ""
        Case "CD0213" ' 신촌 재수학원 (https://sinchon.megastudy.net)
            tel = "02-3144-1010"
            campus_txt ="신촌"
        Case "CD0214" ' 성북 재수학원 (https://seongbuks.megastudy.net)
            tel = ""
        Case "CD0217" ' 평촌 재수학원 (https://pyeongchon.megastudy.net)
            tel = ""
        Case "CD0243" ' 자연계 전문관 (구. 서초기숙) (https://yangjim.megastudy.net)
            tel = ""
        Case "CD0251" ' 부천 재수학원 (https://bucheon.megastudy.net)
            tel = ""
        Case "CD0253" ' 분당 재수학원 (https://bundang.megastudy.net)
            tel = ""
        Case "CD0255" ' 일산 재수학원 (https://ilsan.megastudy.net)
            tel = ""
        Case "CD0276" ' 송파 재수학원 (https://songpa.megastudy.net)
            tel = ""
    End Select 
%>

<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" type="text/css" href="/library/css/css_2025/public_2025_half_pre.css" />
<link rel="stylesheet" type="text/css" href="/library/css/common_new.css?v20180124001" />

<script>
	$(function(){
		var num = $( '.lec_tab' ).offset().top;
		menuTop();
		$(window).bind('scroll', function() {
			menuTop();
		});
	
		function menuTop() {
			if ($(this).scrollTop() > num) {
				$('.lec_tab').css({
					top: '0px', "position": "fixed"
				});
				$('.r_quickMn').show();
			} else {
				$('.lec_tab').css({
					"position": "relative"
				});
				$('.r_quickMn').hide();
			}
		}
	});
</script>

<div class="lec_top">
    <div class="wide_top_wrap">
    	<div class="top_wrap">
        
        	<!-- left_menu_wrap -->
        	<div class="left_menu_wrap">
            	<!--  레프트 메뉴//-->
                <div class="sideArea <%=GetCampusColorType()%>">
					<!--#include virtual="/library/include/common/sub_menu.asp" -->
				</div>
                <!-- //레프트 메뉴 -->
                <h3><%=campus_txt%><br>메가스터디학원</h3>
            </div>
            <!-- //left_menu_wrap -->
            
            <!-- right_wrap -->
			<div class="right_wrap">
                <div class="act_wrap">
					<img class="act _01" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_pre/top_txt01_1.png" alt="" />
					<img class="act _02" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_pre/top_txt01_2.png" alt="" />
					<img class="act _03" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_pre/top_txt01_3.png" alt="" />
					<img class="act _04" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_pre/top_txt01_4.png" alt="" />
 
					<img class="act _05" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_pre/pre_title_2025.png" alt="2025" />
                    <img class="act _06" src="<%=Application("img_path")%>/library/campus_common/2025/2025_half_pre/title_half_sc.png" alt="반수편입반" />  
				</div>
            	<div class="btn_wrap col4">
                	<p class="box typeA">결원생 모집 중</p>
					<a class="box typeB" href="javaScript:goApplySimple(284,'')"><span>온라인 원서접수</span></a>
					<a class="box typeC" href="javaScript:goApplySimpleView(284)"><span>접수 내역 확인</span></a>
					<!-- 
                    <p class="box">문의전화<br>02-3144-1010</p>
					<a class="box typeB" href="javascript:location_aca_trek('1');" alt="온라인원서접수" onfocus="this.blur();" onclick="ga('campusTracker.send', 'event', 'seochobnsu', 'pc', 'apply');" ><strong>온라인<br>원서접수</strong></a>
					<a href="https://form.office.naver.com/form/responseView.cmd?formkey=Nzg4MzdmMGMtYjdhNi00NGUyLTg4YTItNzMyODJhOTY5Yjgz&sourceId=urlshare" class="box typeA">셔틀버스<br>수요조사</a> -->
                </div>
            </div>
            <!-- //right_wrap -->

			<% If CDbl(getYmdhmin()) < CDbl(201906051700) Then %>			
			<!-- 원대꿈대event -->
			<div class="floatb_wrap" style="position:absolute; top:20px; right:56px; z-index:10;display:none;" id="divFloat190515">
				<a href="/event/2020_event/index.asp" target="_self" style="display:block; cursor:pointer;">
					<img src="<%=Application("img_path")%>/library/event/2020_event/flt_banner_img.png" alt="" border="0" />
				</a>
			</div>
			<!-- //원대꿈대event -->
			<% End If %>
        </div>
    </div>
    <a name="01"></a>
    
    <!--// 탭 --> 
</div>
    
<!-- 학원별 탭 --> 
<div class="lec_tab">
    <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0208" Then '서초 %>
	<ul class="col5">
		<li><a href="half_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">반수는<br>서초 메가스터디학원</a></li>
		<li><a href="half_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">시스템</a></li>
		<li><a href="half_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">학습 환경 미리보기</a></li>
		<li><a href="half_04.asp#01" class="<%if tabmenu_flg=4 then%>on<%else%><%end if%>">모집안내</a></li>
		<li><a href="half_05.asp#01" class="<%if tabmenu_flg=5 then%>on<%else%><%end if%>">팀플장학혜택</a></li>
	</ul>
    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '신촌 %>
	<ul class="col5">
		<li><a href="half_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">반수는<br>신촌 메가스터디학원</a></li>
		<li><a href="half_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">시스템</a></li>
		<li><a href="half_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">학습 환경 미리보기</a></li>
		<li><a href="half_04.asp#01" class="<%if tabmenu_flg=4 then%>on<%else%><%end if%>">모집안내</a></li>
		<li><a href="half_05.asp#01" class="<%if tabmenu_flg=5 then%>on<%else%><%end if%>">팀플장학혜택</a></li>
	</ul>
    <% End If %>
</div>
<!-- //탭 -->

<div class="r_quickMn">
	<ul class="q_menu">
		<!-- <li>
			<a href="/campus_common/campus/visit_consult.asp">
				<strong><img src="<%=Application("img_path")%>/library/campus_common/2022_winter/r_quickMn_icon03.png" alt="" />방문상담 예약</strong>
			</a>
		</li> -->
		<li><a href="/help/qna.asp" target="_blank"><strong><img src="<%=Application("img_path")%>/library/campus_common/2022_jaejung/r_quickMn_icon01.png" alt="" />온라인 상담</strong></a></li>
		<li><strong><img src="<%=Application("img_path")%>/library/campus_common/2022_jaejung/r_quickMn_icon02.png" alt="" />전화 상담</strong><br><span><%=tel%></span></li>
	</ul>
</div>

<script src="/public/js/TweenMax.min.js"></script> 
<script type="text/javascript">

var motion1 = new TimelineMax({delay:0.5,repeat:0})
var motion1_1 = new TimelineMax({delay:0.2, repeat:0})
			.to(".act._01", 0.3, {opacity:1, ease: Power2.easeIn, top:135 })
			.to(".act._02", 0.3, {opacity:1, ease: Power2.easeIn, top:135 })
			.to(".act._03", 0.3, {opacity:1, ease: Power2.easeIn, top:135 })
			.to(".act._04", 0.3, {opacity:1, ease: Power2.easeIn, top:135 })

			.to(".act._05", 0.4, {opacity:1, left:68, ease: Power1.easeIn, marginLeft:0})
			.to(".act._06", 0.4, {opacity:1, left:68, ease: Power1.easeIn, marginLeft:0})

	
	//.to(".act.event_flag", 0.5, {opacity:1});

</script>

<!-- #include virtual="/apply/common/apply_layer_pop.asp" -->
<script type='text/javascript'>
    function RMtrkButton(rmTrkSrc, clickurl, target) { var RMtrkBtnArray = rmTrkSrc.split("://"); try { var RMbtnNewScript = document.createElement('script'); var RMbtnScriptElement = document.getElementsByTagName('script')[0]; RMbtnNewScript.type = 'text/javascript'; var RMbtn_rn = new String(Math.random()); var RMbtn_rns = RMbtn_rn.substring(2, 12); RMbtnNewScript.id = 'rmtrkBtn_' + RMbtn_rns; RMbtnNewScript.src = "//" + RMtrkBtnArray[1] + "?" + (document.referrer.split("/"))[2]; RMbtnScriptElement.parentNode.insertBefore(RMbtnNewScript, RMbtnScriptElement); RMbtnScriptElement = null; RMbtnNewScript = null; } catch (e) { }; if (typeof clickurl == "undefined") { return false; } else { if (target == "self") { setTimeout(function () { goRMlink(clickurl); }, 300); } else { window.open(clickurl, "_blank"); } } }
    function goRMlink(url) { top.location.href = url; }

    function location_aca_trek(gb) {
        if (gb == "1") {
            RMtrkButton('http://tech.realmedia.co.kr/RMTECH/imp.ads/201512/mega_1512@x15,ADV_mega_1512_TRK,x15_mega_1512_TRK.html', '/apply/jaejung/apply.asp?app_cd=221&return=<%=getLink()%>', 'self');
        }
    }
</script>