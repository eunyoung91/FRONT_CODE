<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- #Include Virtual = "/library/include/reload/favicon.asp" -->
    <title><%=gMGC_Campus_Title%></title>
    <!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
    <!-- #Include Virtual = "/library/include/reload/css_table.asp" -->
    <!-- #include virtual="/public/jquery.asp" -->
    <!-- #Include Virtual = "/library/include/reload/js_common.asp" -->

    <link rel="stylesheet" type="text/css" href="web.css">
    <script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<div id="wrapper"> 
    <!--  최상단메뉴//--> 
    <!--include virtual="/library/include/common/top.asp" --> 
    <!--  //최상단메뉴-->
    <div id="container">
        <div id="cowayForbidden" class="coway-forbidden">
            <div class="forbid-top">
                <div class="top-bi">
                    <img class="pc-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/BI.png" alt="" />
                    <img class="tablet-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/BI_tablet.png" alt="" />
                    <img class="mo-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/BI_mo.png" alt="" />
                </div>
                <div class="top-desc">
                    본 페이지는<br class="tablet-only"><br class="mo-only">
                    코웨이/코웨이 라이프 솔루션 멤버십 고객,<br class="tablet-only"><br class="mo-only">
                    임직원, 판매인 전용 페이지 입니다.<br>
                    <strong>코웨이 멤버스 클럽 또는<br class="tablet-only"><br class="mo-only">
                    코웨이 라이프 솔루션<br class="mo-only">
                    멤버십 혜택 페이지를 통해<br class="tablet-only"><br class="mo-only">
                    이용해 주시기 바랍니다.</strong>
                </div>
            </div>

            <div class="pc-only">
                <div class="forbid-btn">
                    <a href="https://www.coway.com/event/partnership/list" target="_blank">
                        <span><em>코웨이닷컴</em><br>바로가기</span>
                    </a>
                    <a href="https://cowayls.com/benefit/main" target="_blank">
                        <span><em>코웨이 라이프 솔루션</em><br>바로가기</span>
                    </a>
                </div>
            </div>
            <div class="tablet-only">
                <div class="forbid-btn">
                    <a href="https://m.coway.com/event/partnership/list" target="_blank">
                        <span><em>코웨이닷컴</em><br>바로가기</span>
                    </a>
                    <a href="https://m.cowayls.com/benefit/main" target="_blank">
                        <span><em>코웨이 라이프 솔루션</em><br>바로가기</span>
                    </a>
                </div>
            </div>
            <div class="mo-only">
                <div class="forbid-btn">
                    <a href="https://m.coway.com/event/partnership/list" target="_blank">
                        <span><em>코웨이닷컴</em><br>바로가기</span>
                    </a>
                    <a href="https://m.cowayls.com/benefit/main" target="_blank">
                        <span><em>코웨이 라이프 솔루션</em><br>바로가기</span>
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
