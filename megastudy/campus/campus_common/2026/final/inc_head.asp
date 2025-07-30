<% ' inc_head.asp %>

<!--#include virtual="/common/inc/head_common.asp"-->

<%
Select Case GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_")
    Case "CD0208" ' 서초
        m_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027수능, 2028수능, 수능개편, 대입, 실전모의고사, 재수생, N수, 서초입시학원, 서초메가스터디, 서초메가스터디학원, 서초메가, 메가스터디학원서초, 메가스터디서초, 서초메가스터디학원파이널"
        tel = "02-535-5678"
        campusName = "서초"
        campusBrand = "메가스터디학원"

    Case "CD0210" ' 강북
        m_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027수능, 2028수능, 수능개편, 대입, 실전모의고사, 재수생, N수, 강북입시학원, 강북메가스터디, 강북메가스터디학원, 강북메가, 메가스터디학원강북, 메가스터디강북, 강북메가스터디학원파이널"
        tel = "02-935-3378"
        campusName = "강북"
        campusBrand = "메가스터디학원"

    Case "CD0211" ' 노량진
        m_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027수능, 2028수능, 수능개편, 대입, 실전모의고사, 재수생, N수, 노량진입시학원, 노량진메가스터디, 노량진메가스터디학원, 노량진메가, 메가스터디학원노량진, 메가스터디노량진, 노량진메가스터디학원파이널"
        tel = "02-826-1555"
        campusName = "노량진"
        campusBrand = "메가스터디학원"

    Case "CD0213" ' 신촌
        m_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027수능, 2028수능, 수능개편, 대입, 실전모의고사, 재수생, N수, 신촌입시학원, 신촌메가스터디, 신촌메가스터디학원, 신촌메가, 메가스터디학원신촌, 메가스터디신촌, 신촌메가스터디학원파이널"
        tel = "02-3144-1010"
        campusName = "신촌"
        campusBrand = "메가스터디학원"

    Case "CD0276" ' 송파
        m_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027수능, 2028수능, 수능개편, 대입, 실전모의고사, 재수생, N수, 송파입시학원, 송파메가스터디, 송파메가스터디학원, 송파메가, 메가스터디학원송파, 메가스터디송파, 송파메가스터디학원파이널"
        tel = "02-428-8181"
        campusName = "송파"
        campusBrand = "메가스터디학원"

    Case "CD0251" ' 부천
        m_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027수능, 2028수능, 수능개편, 대입, 실전모의고사, 재수생, N수, 부천입시학원, 부천메가스터디, 부천메가스터디학원, 부천메가, 메가스터디학원부천, 메가스터디부천, 부천메가스터디학원파이널"
        tel = "032-326-9900"
        campusName = "부천"
        campusBrand = "메가스터디학원"

    Case "CD0253" ' 분당
        m_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027수능, 2028수능, 수능개편, 대입, 실전모의고사, 재수생, N수, 서초입시학원, 분당메가스터디, 분당메가스터디학원, 분당메가, 메가스터디학원분당, 메가스터디분당, 분당메가스터디학원파이널"
        tel = "031-781-3100"
        campusName = "분당"
        campusBrand = "메가스터디학원"

    Case "CD0255" ' 일산
        m_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027수능, 2028수능, 수능개편, 대입, 실전모의고사, 재수생, N수, 일산입시학원, 일산메가스터디, 일산메가스터디학원, 일산메가, 메가스터디학원일산, 메가스터디일산, 일산메가스터디학원파이널"
        tel = "031-8073-9600"
        campusName = "일산"
        campusBrand = "메가스터디학원"

    Case "CD0217" ' 평촌
        m_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027수능, 2028수능, 수능개편, 대입, 실전모의고사, 재수생, N수, 평촌입시학원, 평촌메가스터디, 평촌메가스터디학원, 평촌메가, 메가스터디학원평촌, 메가스터디평촌, 평촌메가스터디학원파이널"
        tel = "031-388-3141"
        campusName = "평촌"
        campusBrand = "메가스터디학원"

    Case "CD0214" ' 성북
        m_keywords = "메가스터디, 메가스터디학원, 러셀, 입시학원, 수능, 문제풀이반, 파이널, 고1입시, 고2입시, 고3입시, 2026수능, 2027수능, 2028수능, 수능개편, 대입, 실전모의고사, 재수생, N수, 성북입시학원, 성북메가스터디, 성북메가스터디학원, 성북메가, 메가스터디학원성북, 메가스터디성북, 성북메가스터디학원파이널"
        tel = "02-927-8001"
        campusName = "성북"
        campusBrand = "메가스터디학원"

    Case Else
        m_keywords = ""
        tel = ""
        campusName = ""
        campusBrand = ""
End Select
%>

<!-- 2026 수능 파이널 문제풀이반 메타 태그 -->
<meta name="keywords" content="<%=m_keywords%>">
<meta name="description" content="수능의 정점에 도달하라! <%= campusName & " " & campusBrand %> 2026 수능 파이널 문제풀이반">
<meta property="og:description" content="수능의 정점에 도달하라! <%= campusName & " " & campusBrand %> 2026 수능 파이널 문제풀이반">

<!-- 라이브러리 CSS -->
<link rel="stylesheet" type="text/css" href="/common/css/aos.css">
<!-- 라이브러리 플러그인 -->
<script type="text/javascript" src="/common/js/aos.js"></script>
<script type="text/javascript" src="/common/js/gsap.min.js"></script>

<!-- 모집페이지 전용 CSS -->
<link rel="stylesheet" type="text/css" href="/common/css/2026/mojip.css">
<link rel="stylesheet" type="text/css" href="/common/css/2026/final.css"><!-- 2026 수능 파이널 문제풀이반 -->
<!-- 모집페이지 전용 JS -->
<script type="text/javascript" src="/common/js/2026/final.js"></script><!-- 2026 수능 파이널 문제풀이반 -->
<!-- 온라인 접수 관련 JS -->
<script type="text/javascript" src="/common/js/apply_info.js"></script><!-- 온라인 접수 관련 -->
