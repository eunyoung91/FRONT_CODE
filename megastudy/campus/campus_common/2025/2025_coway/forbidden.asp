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
    <!--  �ֻ�ܸ޴�//--> 
    <!--include virtual="/library/include/common/top.asp" --> 
    <!--  //�ֻ�ܸ޴�-->
    <div id="container">
        <div id="cowayForbidden" class="coway-forbidden">
            <div class="forbid-top">
                <div class="top-bi">
                    <img class="pc-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/BI.png" alt="" />
                    <img class="tablet-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/BI_tablet.png" alt="" />
                    <img class="mo-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/BI_mo.png" alt="" />
                </div>
                <div class="top-desc">
                    �� ��������<br class="tablet-only"><br class="mo-only">
                    �ڿ���/�ڿ��� ������ �ַ�� ����� ��,<br class="tablet-only"><br class="mo-only">
                    ������, �Ǹ��� ���� ������ �Դϴ�.<br>
                    <strong>�ڿ��� ����� Ŭ�� �Ǵ�<br class="tablet-only"><br class="mo-only">
                    �ڿ��� ������ �ַ��<br class="mo-only">
                    ����� ���� �������� ����<br class="tablet-only"><br class="mo-only">
                    �̿��� �ֽñ� �ٶ��ϴ�.</strong>
                </div>
            </div>

            <div class="pc-only">
                <div class="forbid-btn">
                    <a href="https://www.coway.com/event/partnership/list" target="_blank">
                        <span><em>�ڿ��̴���</em><br>�ٷΰ���</span>
                    </a>
                    <a href="https://cowayls.com/benefit/main" target="_blank">
                        <span><em>�ڿ��� ������ �ַ��</em><br>�ٷΰ���</span>
                    </a>
                </div>
            </div>
            <div class="tablet-only">
                <div class="forbid-btn">
                    <a href="https://m.coway.com/event/partnership/list" target="_blank">
                        <span><em>�ڿ��̴���</em><br>�ٷΰ���</span>
                    </a>
                    <a href="https://m.cowayls.com/benefit/main" target="_blank">
                        <span><em>�ڿ��� ������ �ַ��</em><br>�ٷΰ���</span>
                    </a>
                </div>
            </div>
            <div class="mo-only">
                <div class="forbid-btn">
                    <a href="https://m.coway.com/event/partnership/list" target="_blank">
                        <span><em>�ڿ��̴���</em><br>�ٷΰ���</span>
                    </a>
                    <a href="https://m.cowayls.com/benefit/main" target="_blank">
                        <span><em>�ڿ��� ������ �ַ��</em><br>�ٷΰ���</span>
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>
</body>
</html>
