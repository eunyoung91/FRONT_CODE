<!--
 	������ home/top��ư ��������  
-->
<!-- Ȩ��ư �߰��� �� Ȱ�� -->
<%
Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
	'Case "": campusNm = "gateway"                 '��Ʈ��
	'Case "CD0208": campusNm = "seocho"          '���� ���
	'Case "CD0210": campusName = "gangbuk"       '���� ���
	'Case "CD0211": campusName = "noryangjin"    '�뷮�� ����п�
	'Case "CD0213": campusName = "sinchon"       '���� ����п�
	'Case "CD0214": campusName = "seongbuks"     '���� ���
	'Case "CD0217": campusName = "pyeongchon"    '���� ���
	'Case "CD0251": campusName = "bucheon"       '��õ ���
	'Case "CD0253": campusName = "bundang"       '�д� ���
	'Case "CD0255": campusName = "ilsan"         '�ϻ� ���
	'Case "CD0276": campusName = "songpa"        '���� ���
End Select
%>

<div class="<%=campusName%> scroll-btn">
    <!-- top��ư -->
    <div class="scroll-btn-top"><img src="<%=Application("img_path")%>/library/common/btn/btn_scroll_top.svg" alt=""></div>
</div>


<script>
$(document).ready(function() {
    $(window).scroll(function(){
		var scrollTop = $(window).scrollTop();	
		if (scrollTop > 0) {
			$('.scroll-btn-top').addClass('on')
		}
        else{
            $('.scroll-btn-top').removeClass('on');
        }
    });
});

//  top��ư
$('.scroll-btn-top').on('click', function(){
	$('html, body').animate({ scrollTop: 0 }, 300);
});

</script>