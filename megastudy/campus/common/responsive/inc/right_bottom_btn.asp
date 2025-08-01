<!--
 	반응형 home/top버튼 공통파일  
-->
<!-- 홈버튼 추가될 시 활용 -->
<%
Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
	'Case "": campusNm = "gateway"                 '인트로
	'Case "CD0208": campusNm = "seocho"          '서초 재수
	'Case "CD0210": campusName = "gangbuk"       '강북 재수
	'Case "CD0211": campusName = "noryangjin"    '노량진 재수학원
	'Case "CD0213": campusName = "sinchon"       '신촌 재수학원
	'Case "CD0214": campusName = "seongbuks"     '성북 재수
	'Case "CD0217": campusName = "pyeongchon"    '평촌 재수
	'Case "CD0251": campusName = "bucheon"       '부천 재수
	'Case "CD0253": campusName = "bundang"       '분당 재수
	'Case "CD0255": campusName = "ilsan"         '일산 재수
	'Case "CD0276": campusName = "songpa"        '송파 재수
End Select
%>

<div class="<%=campusName%> scroll-btn">
    <!-- top버튼 -->
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

//  top버튼
$('.scroll-btn-top').on('click', function(){
	$('html, body').animate({ scrollTop: 0 }, 300);
});

</script>