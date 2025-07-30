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
</div>

<script src="/public/js/TweenMax.min.js"></script>
<script type="text/javascript">
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
<!-- // 상단 공통 베너 -->