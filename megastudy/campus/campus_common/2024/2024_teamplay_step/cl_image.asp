<%
	'img 이름 / 각 파일에서 이미지 이름 지정
	If cs1_img = "" Then
		cs1_img = "close"
	End If
	If cs2_img = "" Then
		cs2_img = "close"
	End If
	If cs3_img = "" Then
		cs3_img = "close"
	End If
	If cs4_img = "" Then
		cs4_img = "close"
	End If
	If cs5_img = "" Then
		cs5_img = "close"
	End If
%>
<!-- 상단 공통 베너 -->
<div class="top_wrap">
	<div class="act_wrap">
		<img class="act act01" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/top_txt01.png" alt="">
		<div style="position:absolute; top:206px; left:88px; width:857px; height:500px; overflow:hidden; z-index:9;">
			<img class="act act02" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/top_txt02.png" alt="">

			<img class="act act05" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/light_01.png" alt="">	
			<img class="act act06" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay/light_02.png" alt="">	
		</div>
		<img class="act act04" src="<%=Application("img_path")%>/library/campus_common/2024/2024_teamplay_step/top_txt04.png" alt="">		
		
	</div>
</div>
<!-- // 상단 공통 베너 -->