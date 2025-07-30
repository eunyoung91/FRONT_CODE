<% ' inc_head.asp %>

<!--#include virtual="/common/inc/head_common.asp"-->

<%
Select Case GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_")
    Case "CD0208" ' 서초
        w_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편,  강남입시학원, 강남대입학원, 강남윈터스쿨추천, 강남윈터스쿨, 서초윈터스쿨, 강남겨울특강, 서초겨울특강, 서초메가스터디, 서초메가스터디학원"
        tel = "02-535-5678"
        campusName = "서초"
        campusBrand = "메가스터디학원"

    Case "CD0210" ' 강북
        w_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편,  강북입시학원, 강북대입학원, 강북윈터스쿨추천, 강북윈터스쿨, 강북겨울특강, 강북메가스터디, 강북메가스터디학원"
        tel = "02-935-3378"
        campusName = "강북"
        campusBrand = "메가스터디학원"

    Case "CD0211" ' 노량진
        w_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편,  노량진입시학원, 노량진대입학원, 노량진윈터스쿨추천, 노량진윈터스쿨, 노량진겨울특강, 노량진메가스터디, 노량진메가스터디학원"
        tel = "02-826-1555"
        campusName = "노량진"
        campusBrand = "메가스터디학원"

    Case "CD0213" ' 신촌
        w_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편,  신촌입시학원, 신촌대입학원, 신촌윈터스쿨추천, 신촌윈터스쿨, 신촌겨울특강, 신촌메가스터디, 신촌메가스터디학원"
        tel = "02-3144-1010"
        campusName = "신촌"
        campusBrand = "메가스터디학원"

    Case "CD0276" ' 송파
        w_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편,  송파입시학원, 송파대입학원, 송파윈터스쿨추천, 송파윈터스쿨, 송파겨울특강, 송파메가스터디, 송파메가스터디학원"
        tel = "02-428-8181"
        campusName = "송파"
        campusBrand = "메가스터디학원"

    Case "CD0251" ' 부천
        w_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편,  부천입시학원, 부천대입학원, 부천윈터스쿨추천, 부천윈터스쿨, 부천겨울특강, 부천메가스터디, 부천메가스터디학원"
        tel = "032-326-9900"
        campusName = "부천"
        campusBrand = "메가스터디학원"

    Case "CD0253" ' 분당
        w_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편, 분당입시학원, 분당대입학원, 분당윈터스쿨추천, 분당윈터스쿨, 분당겨울특강, 분당메가스터디, 분당메가스터디학원"
        tel = "031-781-3100"
        campusName = "분당"
        campusBrand = "메가스터디학원"

    Case "CD0255" ' 일산
        w_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편,  일산입시학원, 일산대입학원, 일산윈터스쿨추천, 일산윈터스쿨, 일산겨울특강, 일산메가스터디, 일산메가스터디학원"
        tel = "031-8073-9600"
        campusName = "일산"
        campusBrand = "메가스터디학원"

    Case "CD0217" ' 평촌
        w_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편,  평촌입시학원, 평촌대입학원, 평촌윈터스쿨추천, 평촌윈터스쿨, 평촌겨울특강, 평촌메가스터디, 평촌메가스터디학원"
        tel = "031-388-3141"
        campusName = "평촌"
        campusBrand = "메가스터디학원"

    Case "CD0214" ' 성북
        w_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 겨울방학, 겨울특강, 윈터스쿨, 고1입시, 고2입시, 고3입시, 2028학년도, 수능개편,  성북입시학원, 성북대입학원, 성북윈터스쿨추천, 성북윈터스쿨, 성북겨울특강, 성북메가스터디, 성북메가스터디학원"
        tel = "02-927-8001"
        campusName = "성북"
        campusBrand = "메가스터디학원"

    Case "CD0243" ' 자연계 전문관
        w_keywords = ""
        tel = "031-797-9332"
        campusName = "자연계 전문관"
        campusBrand = "러셀 기숙학원"

    Case Else
        w_keywords = ""
        tel = ""
        campusName = ""
        campusBrand = ""
End Select
%>

<!-- 윈터스쿨 메타태그 -->
<meta name="keywords" content="<%=w_keywords%>">
<meta name="description" content="공부습관을 담다, 대입성공에 닿다! <%= campusName & " " & campusBrand %> 메가스터디학원 2026 윈터스쿨">
<meta property="og:description" content="공부습관을 담다, 대입성공에 닿다! <%= campusName & " " & campusBrand %> 2026 윈터스쿨">

<!-- 라이브러리 CSS -->
<link rel="stylesheet" type="text/css" href="/common/css/aos.css">
<!-- 라이브러리 플러그인 -->
<script type="text/javascript" src="/common/js/aos.js"></script>
<script type="text/javascript" src="/common/js/gsap.min.js"></script>

<!-- 모집페이지별 전용 CSS -->
<link rel="stylesheet" type="text/css" href="/common/css/2026/winter.css"><!-- 2026 윈터스쿨 -->
<!-- 모집페이지별 전용 JS -->
<script type="text/javascript" src="/common/js/2026/winter.js"></script><!-- 2026 윈터스쿨 -->
<!-- 온라인 접수 관련 JS -->
<script type="text/javascript" src="/common/js/apply_info.js"></script><!-- 온라인 접수 관련 -->
