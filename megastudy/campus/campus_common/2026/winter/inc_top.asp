<div class="lec_top">
    <div class="wide_top_wrap">
		<div class="bg_overlay"></div>
		<div class="snow-container"></div>
        <!-- top_wrap -->
		<div class="top_wrap">
			<!-- left_menu_wrap -->
			<div class="left_menu_wrap">
				<!--  ����Ʈ �޴�//-->
				<div class="sideArea <%=GetCampusColorType()%>">
					<!--#include virtual="/library/include/common/sub_menu.asp" -->
				</div>
				<!-- //����Ʈ �޴� -->
                <!-- <h3><%=campusName%><br><%=campusBrand%></h3> -->
			</div>
			<!-- //left_menu_wrap -->

            <!-- right_wrap -->
            <div class="right_wrap">
                <div class="act_wrap">
                    <img class="act m01" src="<%=Application("img_path")%>/library/campus_common/2026/winter/top_tit1.png" alt="���ν����� ���, ���Լ����� ���!" />
                    <img class="act m02" src="<%=Application("img_path")%>/library/campus_common/2026/winter/top_tit2.png" alt="2026" />
                    <img class="act m03" src="<%=Application("img_path")%>/library/campus_common/2026/winter/top_tit3.png" alt="���ͽ���" />
                </div>
                <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0208" Then '���� %>
                <div class="btn_wrap">
                    <p class="box typeA">1. 5(��) ����</p>
                    <a class="box typeB" href="javaScript:goApplySimple(314,'')"><span>�¶��� ��������</span></a>
                    <a class="box typeC" href="javaScript:goApplySimpleView(314)"><span>���� ���� Ȯ��</span></a>
                </div>
                <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0210" Then '���� %>
                <div class="btn_wrap">
                    <p class="box typeA">1. 5(��) ����</p>
                    <a class="box typeB" href="javaScript:goApplySimple(314,'')"><span>�¶��� ��������</span></a>
                    <a class="box typeC" href="javaScript:goApplySimpleView(314)"><span>���� ���� Ȯ��</span></a>
                </div>
                <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0211" Then '�뷮�� %>
                <div class="btn_wrap">
                    <p class="box typeA">1. 5(��) ����</p>
                    <a class="box typeB" href="javaScript:goApplySimple(314,'')"><span>�¶��� ��������</span></a>
                    <a class="box typeC" href="javaScript:goApplySimpleView(314)"><span>���� ���� Ȯ��</span></a>
                </div>
                <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '���� %>
                <div class="btn_wrap">
                    <p class="box typeA">1. 5(��) ����</p>
                    <a class="box typeB" href="javaScript:goApplySimple(314,'')"><span>�¶��� ��������</span></a>
                    <a class="box typeC" href="javaScript:goApplySimpleView(314)"><span>���� ���� Ȯ��</span></a>
                </div>
                <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0276" Then '���� %>
                <div class="act_wrap">
                    <p class="act m04 copy">�� ��3, ��1, ��2 ���  |  ��������� 5�� �ܱ� �Ӽ� Ŀ��ŧ��</p>
                </div>
                <div class="btn_wrap">
                    <p class="box typeA">1. 5(��) ����</p>
                    <a class="box typeB" href="javaScript:goApplySimple(314,'')"><span>�¶��� ��������</span></a>
                    <a class="box typeC" href="javaScript:goApplySimpleView(314)"><span>���� ���� Ȯ��</span></a>
                </div>
                <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0251" Then '��õ %>
                <div class="btn_wrap">
                    <p class="box typeA">1. 5(��) ����</p>
                    <a class="box typeB" href="javaScript:goApplySimple(314,'')"><span>�¶��� ��������</span></a>
                    <a class="box typeC" href="javaScript:goApplySimpleView(314)"><span>���� ���� Ȯ��</span></a>
                </div>
                <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0253" Then '�д� %>
                <div class="btn_wrap">
                    <p class="box typeA">1. 5(��) ����</p>
                    <a class="box typeB" href="javaScript:goApplySimple(314,'')"><span>�¶��� ��������</span></a>
                    <a class="box typeC" href="javaScript:goApplySimpleView(314)"><span>���� ���� Ȯ��</span></a>
                </div>
                <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0255" Then '�ϻ� %>
                <div class="btn_wrap">
                    <p class="box typeA">1. 5(��) ����</p>
                    <a class="box typeB" href="javaScript:goApplySimple(314,'')"><span>�¶��� ��������</span></a>
                    <a class="box typeC" href="javaScript:goApplySimpleView(314)"><span>���� ���� Ȯ��</span></a>
                </div>
                <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0214" Then '���� %>
                <div class="btn_wrap">
                    <p class="box typeA">1. 2(��) ����</p>
                    <a class="box typeB" href="javaScript:goApplySimple(314,'')"><span>�¶��� ��������</span></a>
                    <a class="box typeC" href="javaScript:goApplySimpleView(314)"><span>���� ���� Ȯ��</span></a>
                </div>
                <% Else %>
                <% End If %>
            </div>
            <!-- // right_wrap -->
		</div> 
        <!-- //top_wrap -->
    </div>
    <!-- �� --><a name="01"></a><!--// �� --> 
</div>

<!-- �п��� �� -->
<div class="lec_tab">
    <% If GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0208" Then '���� %>
    <ul class="col3">
		<li><a href="winter_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">2026 ���ͽ���</a></li>
        <li><a href="winter_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">�����䰭</a></li>
		<li><a href="winter_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">Ŀ��ŧ��</a></li> 
    </ul>
    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0210" Then '���� %>
    <ul class="col4">
		<li><a href="winter_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">2026 ���ͽ���</a></li>
        <li><a href="winter_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">�����䰭</a></li>
		<li><a href="winter_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">Ŀ��ŧ��</a></li>
		<li><a href="winter_04.asp#01" class="<%if tabmenu_flg=4 then%>on<%else%><%end if%>">��������</a></li>
    </ul>
    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0211" Then '�뷮�� %>
    <ul class="col4">
		<li><a href="winter_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">2026 ���ͽ���</a></li>
        <li><a href="winter_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">�����䰭</a></li>
		<li><a href="winter_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">Ŀ��ŧ��</a></li>
		<!-- <li><a href="winter_04.asp#01" class="<%if tabmenu_flg=4 then%>on<%else%><%end if%>">��������</a></li> -->
        <li><a href="javascript:alert('���� ���� �����Դϴ�.');" class="<%if tabmenu_flg=4 then%>on<%else%><%end if%>">��������</a></li>
    </ul>
    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0213" Then '���� %>
    <ul class="col3">
		<li><a href="winter_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">2026 ���ͽ���</a></li>
        <li><a href="winter_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">�����䰭</a></li>
		<li><a href="winter_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">Ŀ��ŧ��</a></li> 
    </ul>
    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0276" Then '���� %>
    <ul class="col4">
		<li><a href="winter_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">2026 ���ͽ���</a></li>
        <li><a href="winter_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">�����䰭</a></li>
		<li><a href="winter_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">Ŀ��ŧ��</a></li>
		<li><a href="winter_04.asp#01" class="<%if tabmenu_flg=4 then%>on<%else%><%end if%>">��������</a></li>
    </ul>
    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0251" Then '��õ %>
    <ul class="col4">
		<li><a href="winter_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">2026 ���ͽ���</a></li>
        <li><a href="winter_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">�����䰭</a></li>
		<li><a href="winter_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">Ŀ��ŧ��</a></li> 
        <li><a href="javascript:alert('���� ���� �����Դϴ�.');" class="<%if tabmenu_flg=4 then%>on<%else%><%end if%>">��������</a></li>
		<!-- <li><a href="winter_04.asp#01" class="<%if tabmenu_flg=4 then%>on<%else%><%end if%>">��������</a></li> -->
    </ul>
    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0253" Then '�д� %>
    <ul class="col3">
		<li><a href="winter_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">2026 ���ͽ���</a></li>
        <li><a href="winter_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">�����䰭</a></li>
		<li><a href="winter_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">Ŀ��ŧ��</a></li> 
    </ul>
    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0255" Then '�ϻ� %>
     <ul class="col4">
        <li><a href="winter_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">2026 ���ͽ���</a></li>
        <li><a href="winter_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">�����䰭</a></li>
        <li><a href="winter_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">Ŀ��ŧ��</a></li>
        <!-- <li><a href="winter_04.asp#01" class="<%if tabmenu_flg=4 then%>on<%else%><%end if%>">��������</a></li> -->
        <li><a href="javascript:alert('���� ���� �����Դϴ�.');" class="<%if tabmenu_flg=4 then%>on<%else%><%end if%>">��������</a></li>
    </ul>
    <% ElseIf GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") = "CD0214" Then '���� %>
    <ul class="col3">
		<li><a href="winter_01.asp#01" class="<%if tabmenu_flg=1 then%>on<%else%><%end if%>">2026 ���ͽ���</a></li>
        <li><a href="winter_02.asp#01" class="<%if tabmenu_flg=2 then%>on<%else%><%end if%>">�����䰭</a></li>
		<li><a href="winter_03.asp#01" class="<%if tabmenu_flg=3 then%>on<%else%><%end if%>">Ŀ��ŧ��</a></li> 
    </ul>
    <% Else %>
    <% End If %>
</div>
<!-- // �п��� �� -->

<!-- #include virtual="/apply/common/apply_layer_pop.asp" -->
<script type='text/javascript'>
    function RMtrkButton(rmTrkSrc, clickurl, target) { var RMtrkBtnArray = rmTrkSrc.split("://"); try { var RMbtnNewScript = document.createElement('script'); var RMbtnScriptElement = document.getElementsByTagName('script')[0]; RMbtnNewScript.type = 'text/javascript'; var RMbtn_rn = new String(Math.random()); var RMbtn_rns = RMbtn_rn.substring(2, 12); RMbtnNewScript.id = 'rmtrkBtn_' + RMbtn_rns; RMbtnNewScript.src = "//" + RMtrkBtnArray[1] + "?" + (document.referrer.split("/"))[2]; RMbtnScriptElement.parentNode.insertBefore(RMbtnNewScript, RMbtnScriptElement); RMbtnScriptElement = null; RMbtnNewScript = null; } catch (e) { }; if (typeof clickurl == "undefined") { return false; } else { if (target == "self") { setTimeout(function () { goRMlink(clickurl); }, 300); } else { window.open(clickurl, "_blank"); } } }
    function goRMlink(url) { top.location.href = url; }
    function location_aca_trek(gb) {
        if (gb == "1") {
            RMtrkButton('http://tech.realmedia.co.kr/RMTECH/imp.ads/201512/mega_1512@x15,ADV_mega_1512_TRK,x15_mega_1512_TRK.html', '/apply/jaejung/apply.asp?app_cd=189&return=<%=getLink()%>', 'self');
        }
    }
</script>

<!-- �п��� ��� ���޴� -->
<div class="r_quickMn">
	<ul class="q_menu">
		<li>
			<a href="/help/qna.asp" target="_blank">
				<strong>
					<img src="<%=Application("img_path")%>/library/campus_common/2022_jaejung/r_quickMn_icon01.png" alt="�¶��� ��� ������" />
					�¶��� ���
				</strong>
			</a>
		</li>
		<li>
			<strong>
				<img src="<%=Application("img_path")%>/library/campus_common/2022_jaejung/r_quickMn_icon02.png" alt="��ȭ ��� ������" />
				��ȭ ���
			</strong><br>
			<span><%=tel%></span>
		</li>
	</ul>
</div>
<!-- // �п��� ��� ���޴� -->

<script type="text/javascript">
$(function () {
	if ($('.lec_tab').length === 0 || $('.r_quickMn').length === 0) return;

	$('.r_quickMn').hide();

	var num = $('.lec_tab').offset().top;
	var isVisible = false;
	var ticking = false;

	menuTop();

	$(window).on('scroll', function () {
		if (!ticking) {
			ticking = true;
			requestAnimationFrame(function () {
				menuTop();
				ticking = false;
			});
		}
	});

	function menuTop() {
		if ($(window).scrollTop() > num) {
			$('.lec_tab').css({
				top: '0px',
				position: 'fixed'
			});

			if (!isVisible) {
				$('.r_quickMn').stop(true, true).fadeIn(300);
				isVisible = true;
			}
		} else {
			$('.lec_tab').css({
				position: 'relative'
			});

			if (isVisible) {
				$('.r_quickMn').stop(true, true).fadeOut(300);
				isVisible = false;
			}
		}
	}
});
</script>