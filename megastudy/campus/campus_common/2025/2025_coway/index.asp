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

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css"> <!-- flatpickr ��Ÿ�� -->
    <link rel="stylesheet" type="text/css" href="web.css?v=6">

    <script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script> <!-- flatpickr ��ũ��Ʈ -->
    <script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script> <!-- �ѱ� ���� -->

</head>
<body>
<div id="wrapper"> 
    <!--  �ֻ�ܸ޴�//--> 
    <!--include virtual="/library/include/common/top.asp" --> 
    <!--  //�ֻ�ܸ޴�-->

    <div id="container">
        <div id="cowayApply" class="coway-apply">
            <!-- visual -->

            <div class="visual">

                <div class="visual-title">
                    <div class="title-main">
                        <div>���� ������ ��� ����</div>
                        <img class="pc-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/main_title.png" alt="" />
                        <img class="tablet-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/main_title_tablet.png" alt="" />
                        <img class="mo-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/main_title_mo.png" alt="" />
                    </div>

                    <!-- 20250528 -->
                    <%If Request.Cookies("param1") = "coway" Then%>
                        <!-- member -->
                        <div class="title-sub">
                            �ڿ��� ����� ���� ����<br>
                            <strong>������ ���� Ư�� ����</strong>����<br>
                            <strong>�ֻ��� ���� ���񽺸� �����ϼ���!</strong><br>
                        </div>
                    <%ElseIf Request.Cookies("param1") = "cowayls" Then%>
                        <!-- corasol -->
                        <div class="title-sub">
                            �ڿ��� ������ �ַ�� �����<br class="mo-only"> ���� ����<br>
                            <strong>������ ���� Ư�� ����</strong>����<br>
                            <strong>�ֻ��� ���� ���񽺸� �����ϼ���!</strong><br>
                        </div>
                    <%ElseIf Request.Cookies("param1") = "staff" Then%>
                        <!-- staff -->
                        <div class="title-sub">
                            �ڿ���&�ڿ��� ������ �ַ��<br class="mo-only"> �������� ����<br>
                            <strong>������ ���� Ư�� ����</strong>����<br>
                            <strong>�ֻ��� ���� ���񽺸� �����ϼ���!</strong><br>
                        </div>
                    <%ElseIf Request.Cookies("param1") = "cody" Then%>
                        <!-- cody -->
                        <div class="title-sub">
                            �ڿ��� �ڵ� ����<br>
                            <strong>������ ���� Ư�� ����</strong>����<br>
                            <strong>�ֻ��� ���� ���񽺸� �����ϼ���!</strong><br>
                        </div>
                    <%Else%>
                        <!-- member -->
                        <div class="title-sub">
                            �ڿ��� ����� ���� ����<br>
                            <strong>������ ���� Ư�� ����</strong>����<br>
                            <strong>�ֻ��� ���� ���񽺸� �����ϼ���!</strong><br>
                        </div>
                    <%End If%>
                    <!-- // 20250528 -->

                </div>

                <div class="visual-con">
                    <p>Ư�� ���� �޴� ���</p>
                    <div>
                        <img class="pc-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/step_common.png" alt="" />
                        <!-- <img class="tablet-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/step_tablet.png" alt="" /> -->
                        <img class="tablet-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/step_common.png" style="width:100%;" alt="" />
                        <img class="mo-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/step_mo.png" alt="" />
                    </div>
                </div>
            </div>
            <!-- // visual -->

            <!-- contents -->
            <div class="contents">
                <div id="contentsType1" class="contents-type contents-type-1">
                    <div class="contents-inner">
                        <div class="contents-title">
                            <div class="text">
                                <span>�ܰ� ������ �ǹ��ڽ��� �ѹ濡!</span>
                                <strong>
                                    �ֻ�����<br class="mo-only"> ���Լ����� �����<br>
                                    <em>����</em>
                                </strong>
                            </div>
                            <a href="" class="btn" id="russelBtn"><span>1:1 ��� ��û</span></a>
                        </div>
                        <div class="contents-list">
                            <div class="con">
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">01</em>
                                        <div class="txt">
                                            <span>�ֻ����� ������ �ܿ�, ����</span>
                                            <strong>
                                                6�� ���� ������ ����<sup>*</sup>
                                            </strong>
                                        </div>
                                        <div class="medal">
                                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/medal.png" alt="" />
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            <strong>
                                                2025 ���� ������ 3�� ����<sup>*</sup>
                                            </strong>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">02</em>
                                        <div class="txt">
                                            <span>���к������ �ҹ���</span>
                                            <strong>
                                                �ٸ����� �ڽ������
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            ���к������ ����<br>
                                            ���� �Խô����� �л� �������<br>
                                            �л��߽����� �����<br>
                                            ȿ������ �н� ������ ����
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">03</em>
                                        <div class="txt">
                                            <span>�ʿ��� ������ ���������� �����ϴ�</span>
                                            <strong>
                                                �ֻ�����<br>
                                                ���غ� ���� �ܰ�
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            ����/���غ�/������<br>
                                            <strong>������ ��������</strong><br>
                                            ü������ Ŀ��ŧ����<br>
                                            <strong>����� �ڽ��ð� Ȯ��</strong>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">04</em>
                                        <div class="txt">
                                            <span>������ ���Ƿ°� ������</span>
                                            <strong>
                                                �ް����͵�<br>
                                                ��&middot;���� ������
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            ����������� ������<br>
                                            ����&���� ���� ������
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="standard">
                                <div class="noti">
                                    ������ �������<span class="ico"></span>
                                    <div class="tooltip">
                                        *��/��/Ž2 ���� �� ��/�� 1��� ����<br>
                                        *2018~2022,2025���ɽ�ä������<br>
                                        **2025 ���� ��ä�� ����(��/��/Ž2���� �� ��/�� 1���)<br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="contentsType2" class="contents-type contents-type-2">
                    <div class="contents-inner">
                        <div class="contents-title">
                            <div class="text">
                                <span>���� ���, ���Լ����� �ٽ� ����!</span>
                                <strong>
                                    ������ �ٸ� ��.¥<br class="tablet-only"><br class="mo-only"> ���غ� ���� ���� �н�<br>
                                    <em>�ް����͵��п�</em>
                                </strong>
                            </div>
                            <a href="" class="btn" id="campusBtn"><span>1:1 ��� ��û</span></a>
                        </div>
                        <div class="contents-list">
                            <div class="con">
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">01</em>
                                        <div class="txt">
                                            <span>������ ���� ���� ġ���ϰ�</span>
                                            <strong>
                                                ���غ� ���� �н�
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            ��Ȯ�� �Ƿ� ������ ����<br>
                                            ������ ������ �ľ��ϰ� ������<br>
                                            <strong>���غ� ���� �н�</strong>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">02</em>
                                        <div class="txt">
                                            <span>������ �����Ӱ�! ������ ����ϰ�!</span>
                                            <strong>
                                                100% ���� �ð�ǥ<br>
                                                ���� ����
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            �ʿ��� ������, ������ ����,<br>
                                            ������ �ڱ��ֵ��н���<br>
                                            <strong>�����ο� ���� �ð�ǥ</strong>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">03</em>
                                        <div class="txt">
                                            <span>���� ������� �����ϰ�!</span>
                                            <strong>
                                                ���غ� ���� ����
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            �Ȱ��� ������ ���簡 �ƴ�<br>
                                            ���� �������<br>
                                            <strong>���غ�, ������ ���� ����</strong>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">04</em>
                                        <div class="txt">
                                            <span>�Ϻ� ���� ���� ���!</span>
                                            <strong>
                                                ���غ� ������Ƽ<br>
                                                ���ǰ��
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            �Ϻ��� ���� ��� ����<br>
                                            ���غ�, ���̵���, �ñ⺰<br>
                                            <strong>���� ���� ���ǰ��</strong>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="contentsType3" class="contents-type contents-type-3">
                    <div class="contents-inner">
                        <div class="contents-title">
                            <div class="text">
                                <span>�ֻ������� �����ϴ� ��Ȯ�� ����</span>
                                <strong>
                                    ���� �ִ�<br class="tablet-only"><br class="mo-only"> ���� ��ü �п� �� 1��<br>
                                    <em>���� ����п�</em>
                                </strong>
                            </div>
                            <a href="" class="btn" id="gisukBtn"><span>1:1 ��� ��û</span></a>
                        </div>
                        <div class="contents-list">
                            <div class="con">
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">01</em>
                                        <div class="txt">
                                            <span>�ް����͵� ��ü �п� ��</span>
                                            <strong>
                                                �ֻ����� ��ġ�Ѿ��<br>
                                                �԰� 1��<sup>*</sup>
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            2025�г⵵<br>
                                            <strong>��ġ�Ѿ�� + ����ī����</strong><br>
                                            651��**
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">02</em>
                                        <div class="txt">
                                            <span>�н�Ư���� �°� �����<br>�������/�հ� �ý���</span>
                                            <strong>
                                                ���غ� / ���� / �迭��<br>
                                                Ưȭ ������
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            �ֻ����� ����, <strong>�ֻ����� ������</strong><br>
                                            �ڿ��迭 �հ�, ���� Ưȭ�� <strong>�ڿ��� ������</strong><br>
                                            ���� Ưȭ�� ���� ���Ͽ�,<br>
                                            <strong>���л�/���л� ������</strong><br>
                                            ���бغ� Ưȭ ���α׷�, <strong>���л� ����������</strong>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">03</em>
                                        <div class="txt">
                                            <span>����� �������� ������ �н�������!</span>
                                            <strong>
                                                �ް����͵� �ΰ���<br>
                                                ��ġ�� �ܰ� ������ �Ⱝ
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            �л� ���������� ����� <strong>����/���غ� ����</strong><br>
                                            �ΰ�/���� �������� <strong>������ ����</strong><br>
                                            �ñ⺰ �����Ǵ� <strong>������ȭ ������</strong><br>
                                            <strong>(���� 50~100ȸ)</strong><br>
                                            ���忡�� ����Ǵ� <strong>�������� Ŭ����</strong>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <div class="top">
                                        <em class="tag">04</em>
                                        <div class="txt">
                                            <span>�پ��� ����� Ÿ��, �ֽŽü�</span>
                                            <strong>
                                                �Խ� ��������<br>
                                                ���߰�������
                                            </strong>
                                        </div>
                                    </div>
                                    <div class="bottom">
                                        <div class="desc">
                                            ����/���� ������ ��<br>
                                            24�ð� ���߰�����<br>
                                            <strong>��ƴ���� ���к����� ����</strong>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="standard">
                                <div class="noti">
                                    ������ �������<span class="ico"></span>
                                    <div class="tooltip">
                                        * ���� ����п� 2025�г⵵ �հݻ� 1,893��(�ߺ�����)<br>
                                        ** ������� (��)��-�Ǵ�� 307��, (��)��-�Ǵ�� 177��,(��)����ġ�� 184��,<br>
                                        (��)���� �ް����͵� ��� 788��, (��)���� �ް����͵� ��� 437�� ����<br>
                                        ** 2025�� 4�� 7�� ���� �����ڷ�<br>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="contents-map">
                    <div class="contents-inner">
                        <div class="map-title">
                            <strong>
                                ��ǥ, �� �̻���<br class="mo-only"> ������ ����<br>
                                ���� ��𿡼���<br class="tablet-only"><br class="mo-only"> �����а� �Բ� �մϴ�.
                            </strong>
                            <span>
                                �̹� ������ �հ��� ���� �����<br class="tablet-only"><br class="mo-only"> �Խ� ��<br class="pc-only">
                                ����&�ް����͵��п����� ������<br class="tablet-only"><br class="mo-only"> �н� �ý����� �����ϼ���.
                            </span>
                        </div>
                        <div class="map-info">
                            <div class="map">
                                <img class="pc-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/map.png" alt="" />
                                <img class="tablet-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/map_tablet.png" alt="" />
                                <img class="mo-only" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway/map_mo.png" alt="" />
                            </div>
                        </div>
                        <dl clsas="map-notice">
                            <dt>�� �ݵ�� Ȯ���ϼ���.</dt>
                            <dd><span>&bull;</span><span>�� ������ ���� ������ �ڿ��� ����� �� ���� �������� ���� 1:1 ��ȭ ��� ��û �� ����� ��쿡 ���� ����˴ϴ�.</span></dd>
                            <dd><span>&bull;</span><span>������ ���� ������ �п� ��� �� ���� ���� �ݾ� �� �������ᡯ�� ���� ����˴ϴ�.</span></dd>
                            <dd><span>&bull;</span><span>���� ������ ���� ������ �ٸ����� �ڽ������ ��� �ÿ��� ����˴ϴ�. (�ܰ��� ��� �� ���� �ȵ�)</span></dd>
                            <dd><span>&bull;</span><span>�ڿ��� ����� ���� ���� ������ ����&�ް����͵��п� Ÿ ���ð� �ߺ� ���� �Ұ� �մϴ�.</span></dd>
                            <dd><span>&bull;</span><span>�ڿ��� ����� �� ���� ������ ���� �� ���� �� ���� �ڿ��� ����� �ڰ��� Ȯ���� �� �ֽ��ϴ�.</span></dd>
                        </dl>
                    </div>
                </div>
            </div>
            <!-- //contents -->
        </div>
    </div>

    <!-- container End --> 
</div>

<!-- ���̾� -->
<div class="popup-overlay">
    <div>
        <div class="popup-content">
            <div class="popup-content-scroll">
                <h1>1:1 ��ȭ ��� ��û</h1>
                <h2>��û�Ͻ� �п� ����ڰ� Ȯ�� ��<br class="mo-only"> ���� Ȯ�� ���ڰ� �߼۵˴ϴ�.</h2>
                <small>�� �� ��û�� �кθ� �����ϸ� �����Ͻ� �кθ� ����ó�� �����帳�ϴ�.</small>
                <a href="javascript:();" class="popup-close"><span></span></a>

                <div class="form-list">
                    <div class="form-group">
                        <label for="academy">�п� ���� <span class="req">*</span></label>
                        <div class="select-wrap">
                            <select id="layerAca">
                                <option value="0">�п� ����</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name1">�кθ� �̸� <span class="req">*</span></label>
                        <div class="input-wrap">
                            <input type="text" id="name1" placeholder="�кθ� �̸� �Է�" value="" maxlength="60">
                        </div>
                    </div>
                    <div class="form-group cert">
                        <label for="phone1">�кθ� �޴���ȭ��ȣ <span class="req">*</span></label>
                        <div class="align">
                            <div class="input-wrap">
                                <input type="text" id="phone1" placeholder="'-' ���� ���ڸ� �Է�" maxlength="13" pattern="[0-9]*">
                            </div>
                            <div class="num-btn" id="sendBtn" onclick="javascript:smsAuthSend();"><span id="sendBtnSpan">������ȣ�߼�</span></div>
                            <div class="num-text" style="display:none;"><span>�����Ϸ�</span></div>
                        </div>
                    </div>
                    <div class="form-group cert" id="smsCheck" style="display:none;">
                        <label for="num1">������ȣ �Է� <span class="req">*</span></label>
                        <div class="align">
                            <div class="input-wrap">
                                <input type="text" id="num1" placeholder="������ȣ 6�ڸ� �Է�" maxlength="6" oninput="this.value = this.value.replace(/[^0-9]/g, '');">
                                <span class="timer"></span>
                            </div>
                            <div class="num-btn" id="numCheck" onclick="javascript:smsAuthCheck();"><span>������ȣȮ��</span></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name2">�л� �̸� <span class="req">*</span></label>
                        <div class="input-wrap">
                            <input type="text" id="name2" placeholder="�л� �̸� �Է�" value="" maxlength="60">
                        </div>
                    </div>
                    <div class="form-group cert">
                        <label for="phone2">�л� �޴���ȭ��ȣ <span class="req">*</span></label>
                        <div class="input-wrap">
                            <input type="text" id="phone2" placeholder="'-' ���� ���ڸ� �Է�" maxlength="13" pattern="[0-9]*">
                        </div>
                    </div>
                    <div class="form-group date">
                        <label for="datepicker"><span class="dot">�����Ͻ�</span> <span class="req">*</span></label>
                        <div class="align">
                            <div class="input-wrap">
                                <input type="text" id="datepicker" class="datepicker-with-icon" placeholder="��¥ ����" />
                            </div>
                            <div>
                                <div class="select-wrap">
                                    <select id="datetime">
                                        <option value="00:00">�ð� ����</option>
                                        <option value="10:00">10:00</option>
                                        <option value="11:00">11:00</option>
                                        <option value="13:00">13:00</option>
                                        <option value="14:00">14:00</option>
                                        <option value="15:00">15:00</option>
                                        <option value="16:00">16:00</option>
                                        <option value="17:00">17:00</option>
                                        <option value="18:00">19:00</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="date">�г� <span class="req">*</span></label>
                        <div class="radio-wrap">
                            <div>
                                <input type="radio" class="" name="grade" id="grade1" value="11"><label for="grade1">��1</label>
                            </div>
                            <div>
                                <input type="radio" class="" name="grade" id="grade2" value="12"><label for="grade2">��2</label>
                            </div>
                            <div>
                                <input type="radio" class="" name="grade" id="grade3" value="13"><label for="grade3">��3</label>
                            </div>
                            <div>
                                <input type="radio" class="" name="grade" id="grade4" value="21"><label for="grade4">N��</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="date">�迭 <span class="req">*</span></label>
                        <div class="radio-wrap">
                            <div>
                                <input type="radio" class="" name="type" id="type1" value="11"><label for="type1">�ι���</label>
                            </div>
                            <div>
                                <input type="radio" class="" name="type" id="type2" value="12"><label for="type2">�ڿ���</label>
                            </div>
                            <div>
                                <input type="radio" class="" name="type" id="type3" value="14"><label for="type3">��Ÿ</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group only">
                        <label for="content"><span class="dot">���� ����</span><span class="req">*</span></label>
                        <textarea id="content" placeholder="���� �Է�"></textarea>
                    </div>
                    <div class="form-group only">
                        <label><span class="dot">�������� ���� �� �̿�</span></label>
                        <div class="text-wrap">
                            <strong>�������� ���� �� �̿� �������� ��ȣ�� ��15�� ��1�� 4ȣ�� ���� ������ü�� ü���� 
                            ������� ������ü�� ���Ǿ��� ���������� ���� �� �̿��մϴ�.</strong><br>
                            �����׸� : ��ȣ�� �̸�, ��ȣ�� �޴���ȭ��ȣ, �л� �̸�, �л� �޴���ȭ��ȣ, �г�, �迭, ���� ����<br>
                            ó������ : �湮��� ���� �� ����Ȯ��, ����Ȯ��, �湮��� ���� �ȳ�<br>
                            ���� �� �̿�Ⱓ : <em class="under">1��</em>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="popup-btn">
            <div>
                <a class="cancel-btn"><span>���</span></a>
                <a class="apply-btn"><span>��û</span></a>
            </div>
        </div>
    </div>
</div>
<!-- // ���̾� -->

<script>

    $(document).ready(function () {
        //param1�� ����
        var param1 = getCookie("param1");
        var param2 = getCookie("param2");

        //�߸��� ���� �����̷�Ʈ
        if(param2 != "Y" || (param1 != "cowayls" && param1 != "cody" && param1 != "coway" && param1 != "staff")) {
            //�׽�Ʈ����, ����
            if(window.location.hostname != "campus.megastudy.net" && (window.location.hostname == "tmcampus.megastudy.net" || window.location.hostname == "localhost")) {
                confirm("���� �׽�Ʈ����������, ���� �Ұ� �������� �̵��Ͻðڽ��ϱ�?\n��� Ŭ���� �ӽ÷� ��󱸺��� �ڶ�� ������ �Էµ˴ϴ�.") ? window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp" : param1 = "cowayls";
            }else{
                window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp"
            };
        };

        // flatpickr �ʱ�ȭ
        const fp = flatpickr("#datepicker", {
            locale: "ko",
            dateFormat: "Y-m-d",
            allowInput: true,
            disableMobile: true
        });

        // �޷� ������ Ŭ�� �� �޷� ����
        var calendarIcon = document.getElementById("calendar-icon");
        if (calendarIcon) {
            calendarIcon.addEventListener("click", function () {
                fp.open();
            });
        }

        // �˾� ����
        $('.btn').on('click', function (e) {
            applyLayerAcaSet(e.currentTarget.id);
            e.preventDefault();
            $('body').addClass('popup-open');
            $('.popup-overlay').fadeIn(300);
        });

        // �˾� �ݱ� (��� ��ư �Ǵ� X ��ư)
        $('.popup-overlay .cancel-btn, .popup-overlay .popup-close').on('click', function(e) {
            if(confirm("����Ͻø� �Է��� ��� ������ �ʱ�ȭ�˴ϴ�. ��� �����Ͻðڽ��ϱ�?")) {
                applyLayerDown();
            }
        });

        //�޴���ȭ��ȣ üũ
        $("#phone1, #phone2").on('keyup', function() {
            $(this).val($(this).val().replace(/[^0-9]/g, "")
            .replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3")
            .replace("--", "-") );
        });

        //��û ��ư
        $(".apply-btn").on('click', function() {
            var vMobileRule = /01(0|1|6|7|8|9)[-](\d{4}|\d{3})[-]\d{4}$/; //�޴���ȭ��ȣ ���
            var layerAca = $("#layerAca").val(); //�п� �ڵ�
            var name1 = $("#name1").val(); //�кθ� �̸�
            var phone1 = $("#phone1").val(); //�кθ� �޴���ȭ��ȣ
            var name2 = $("#name2").val(); //�л� �̸�
            var phone2 = $("#phone2").val(); //�л� �޴���ȭ��ȣ
            var datepicker = $("#datepicker").val(); //�����Ͻ� ��¥
            var datetime = $("#datetime").val(); //�����Ͻ� �ð�
            var appdate = datepicker + " " + datetime + ":00"//�����Ͻ�
            var grade = $('input[name="grade"]:checked').val(); //�г�
            var type = $('input[name="type"]:checked').val(); //�迭
            var content = $("#content").val(); //���� ����
            
            //��ȿ�� üũ
            if(layerAca == 0 || typeof layerAca === 'undefined' || layerAca == "") {
                alert("�п��� �������ּ���.");
                return false;
            }else if(name1 == "" || typeof name1 === "undefined") {
                alert("�кθ� �̸��� �Է����ּ���.");
                return false;
            }else if(!vMobileRule.test(phone1) || phone1 == "" || typeof phone1 === "undefined") {
                alert("�кθ� �޴���ȭ��ȣ�� �Է��Ͻð�, ������ �����ϼ���.");
                return false;
            }else if($('.num-text').css('display') == 'none') {
                alert("������ �����Ͻð� ������ȣ�� �Է��ϼ���.");
                return false;
            }else if(name2 == "" || typeof name2 === "undefined") {
                alert("�л� �̸��� �Է����ּ���.");
                return false;
            }else if(!vMobileRule.test(phone2) || phone2 == "" || typeof phone2 === "undefined") {
                alert("�л� �޴���ȭ��ȣ�� �Է����ּ���.");
                return false;
            }else if(datetime == "" || typeof datetime === "undefined" || datepicker == "" || typeof datepicker === "undefined" || datetime == "00:00") {
                alert("���� �ð��� �������ּ���.");
                return false;
            }else if(typeof grade === "undefined") {
                alert("�г��� �������ּ���.");
                return false;
            }else if(typeof type === "undefined") {
                alert("�迭�� �������ּ���.");
                return false;
            }else if(content == "") {
                alert("������ �Է����ּ���.");
                return false;
            };

            var param = {
                layerAca : layerAca,
                name1 : escape(name1),
                phone1 : phone1,
                name2 : escape(name2),
                phone2 : phone2,
                appdate1 : appdate,
                grade1 : grade,
                type1 : type,
                content1 : escape(content),
                param1 : param1
            };

            if(confirm("�Է��Ͻ� ������ ��û�Ͻðڽ��ϱ�?")) {
                $.ajax({
                    type:"POST",
                    url: "apply.asp", 
                    data: param,
                    dataType : "html",
                    success: function(result) {
                        var data = JSON.parse(result);
                        if(data.RESULT == 0) {
                            alert("��û�� �Ϸ�Ǿ����ϴ�. ������ �п����� ��ȭ��� ���� Ȯ���� ���� �Է��Ͻ� �кθ�� �޴���ȭ��ȣ�� ���� �帮�ڽ��ϴ�.");
                            applyLayerDown();
                        }else{
                            alert("��û ���� ���� �߻� (" + data.RESULT + ")");
                            // applyLayerDown();
                        }
                        return;
                    },
                    error: function(error) {
                        alert("��û ���� ���� �߻�");
                    }
                });
            };
        });
    });

    function pageLoadEvent() {
        var temp_s = $("#cowayApply").offset().top;
        $('html, body').animate({ scrollTop: temp_s }, 400);
    }

    function aosEvent() {
        AOS.init({
            duration: 500,
            delay: 0,
            easing: 'ease-in',
            offset: 200,
            once: true,
            animatedClassName: 'aos-animate'
        });
    }

    function applyLayerAcaSet(type) {
        var options = []
        if(type == "russelBtn") {
            options = [
                {value: 70, text: "���� ����"},
                {value: 56, text: "���� ��ġ"},
                {value: 66, text: "���� ��"},
                {value: 73, text: "���� ��õ"},
                {value: 65, text: "���� �д�"},
                {value: 72, text: "���� ����"},
                {value: 101, text: "���� �߰�"},
                {value: 71, text: "���� ����"},
                {value: 129, text: "���� �뱸"},
                {value: 127, text: "���� ����"},
                {value: 69, text: "���� ����"},
                {value: 245, text: "���� ���"},
                {value: 124, text: "CORE ����"},
                {value: 136, text: "CORE ����"},
                {value: 133, text: "CORE ����"},
                {value: 134, text: "CORE â��"},
                {value: 135, text: "CORE û��"},
            ];
        }else if(type == "campusBtn") {
            options = [
                {value: 12, text: "���� �ް����͵��п�"},
                {value: 17, text: "���� �ް����͵��п�"},
                {value: 41, text: "�뷮�� �ް����͵��п�"},
                {value: 27, text: "���� �ް����͵��п�"},
                {value: 41, text: "�뷮�� �ް����͵��п�"},
                {value: 27, text: "���� �ް����͵��п�"},
                {value: 115, text: "���� �ް����͵��п�"},
                {value: 74, text: "��õ �ް����͵��п�"},
                {value: 75, text: "�д� �ް����͵��п�"},
                {value: 76, text: "�ϻ� �ް����͵��п�"},
                {value: 45, text: "���� �ް����͵��п�"},
            ];
        }else if(type == "gisukBtn") {
            options = [
                {value: 148, text: "���� ���(�ֻ����� ������)"}
            ];
        }else {
        };
        
        $("#layerAca").find("option:not(:first)").remove();
        for(i = 0; i<options.length; i++) {
            var opt = $("<option></option>")
                .attr("value", options[i].value)
                .text(options[i].text);
            
            $("#layerAca").append(opt);
        };
    };

    //������ȣ Ÿ�̸� �������� ����
    var setTimeSMS = 180;
    var nowTimeSMS = setTimeSMS;
    // ������ȣ Ȯ�� Ÿ�̸�
    function fnSmsTimer() {
        var vMin = ("0" + Math.floor(nowTimeSMS / 60)).slice(-2) + ":" + ("0" + (nowTimeSMS % 60)).slice(-2);
        
        nowTimeSMS--;
        if (nowTimeSMS < 0) {
            $("#smsCheck").hide();
            vMin = "";
            clearInterval(timerSMS);
            $("#num1").val("");
            $("#phone1").prop("disabled", false);
            $("#sendBtn").attr("onclick", "javascript:smsAuthSend();");  
        }
        $(".timer").html(vMin);
    }

    //������ȣ �߼�
    function smsAuthSend() {
        var phone1 = $("#phone1").val();
        var vMobileRule = /01(0|1|6|7|8|9)[-](\d{4}|\d{3})[-]\d{4}$/g;

        if($("#phone1").val() == "" ) {
            alert("�޴���ȭ��ȣ�� �Է��� �ּ���.");
            $("#phone1").focus();
            return false;
        } else if ($("#phone1").val().length < 12) {
            alert("�޴���ȭ��ȣ ������ �ùٸ��� �ʽ��ϴ�.");
            $("#phone1").focus();
            return false;
        } else if (!vMobileRule.test($("#phone1").val())){
            alert("�޴���ȭ��ȣ ������ �ùٸ��� �ʽ��ϴ�.");
            $("#phone1").focus();
            return false;
        } else{
            var param = {
                phone1 : phone1,
                mode : "SEND"
            };

            $.ajax({
                type:"POST",
                url: "confirm_auth_num.asp", 
                data: param,
                dataType : "html",
                success: function(result) {
                    var data = JSON.parse(result);
                    if (data.RESULT == "S") {
                        <% If IsDevSvr() Then %>
                        $("#num1").val(data.RESULT_MSG); //������ȣ ����
                        <% End If%>
                        nowTimeSMS = setTimeSMS; //�ʱ�ȭ
                        timerSMS = setInterval("fnSmsTimer()", 1000); //Ÿ�̸� ����
                        $("#smsCheck").show();
                        alert("�Է��Ͻ� �޴���ȭ��ȣ�� ������ȣ�� �߼۵Ǿ����ϴ�.");
                        $("#phone1").prop("disabled", true);
                        $("#sendBtn").attr("onclick", "javascript:alert('������ȣ�� ��߼��� �� �����ϴ�.');");
                    }else if(data.RESULT == "A") {
                        nowTimeSMS = setTimeSMS; //�ʱ�ȭ
                        alert("�̹� ��û�� �̷��� �ֽ��ϴ�.");
                        $("#phone1").val("");
                        $("#phone1").focus();
                    }else{
                        alert("SMS �߼� �� ������ �߻��Ͽ����ϴ�.(" + data.RESULT +")");
                    }
                },
                error: function(error) {
                    alert("SMS �߼� �� ������ �߻��Ͽ����ϴ�.");
                }
            });
        };
    };

    //������ȣ Ȯ��
    function smsAuthCheck() {
        var phone1 = $("#phone1").val();
        var num1 = $("#num1").val().replace(/-/gi,"");

        if(num1 == "" || num1.length < 6 ) {
            alert("������ȣ 6�ڸ��� �Է��� �ּ���.");
            $("#num1").focus();
            return;  
	    };

        var param = {
            phone1 : phone1,
            mode : "CHECK",
            num1 : num1
        };

        $.ajax({
            type:"POST",
            url: "confirm_auth_num.asp", 
            data: param,
            dataType : "html",
            success: function(result) {
                var data = JSON.parse(result);
                if(data.RESULT == "S"){ //���� �Ϸ�
                    $("#smsCheck").hide();
                    $("#sendBtn").hide();
                    $(".num-text").show();
                    alert("������ �Ϸ�Ǿ����ϴ�.");
                    clearInterval(timerSMS);
                }else if(data.RESULT == "N"){
                    alert("������ȣ �߼� ������ �����ϴ�.");
                }else if(data.RESULT == "X"){
                    alert("������ȣ�� ��ġ���� �ʽ��ϴ�.");
                }else{
                    alert("������ȣ Ȯ�� �� ������ �߻��Ͽ����ϴ�.(" + data.RESULT +")");
                }
            },
            error: function(error) {
                alert("������ȣ Ȯ�� �� ������ �߻��Ͽ����ϴ�.else");
            }
        });
    };

    function getCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) === ' ') c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length, c.length));
        }
        return null;
    }

    function applyLayerDown() {
        $("#layerAca").val(""); //�п� �ڵ�
        $("#name1").val(""); //�кθ� �̸�
        $("#phone1").val(""); //�кθ� �޴���ȭ��ȣ
        $("#name2").val(""); //�л� �̸�
        $("#phone2").val(""); //�л� �޴���ȭ��ȣ
        $("#datepicker").val(""); //�����Ͻ� ��¥
        $("#datetime").val(""); //�����Ͻ� �ð�
        $('input[name="grade"]:checked').prop("checked", false); // �г� üũ ����
        $('input[name="type"]:checked').prop("checked", false); // �迭 üũ ����
        $("#content").val(""); //���� ����
        $("#smsCheck").hide(); //������ȣ Ȯ�ζ�
        $("#num1").val(""); //������ȣ
        $("#phone1").prop("disabled", false); //�кθ� �޴���ȭ��ȣ
        $("#sendBtn").attr("onclick", "javascript:smsAuthSend();"); //������ȣ �߼� ��ư Ȱ��ȭ
        $("#sendBtn").show(); //������ȣ �߼� ��ư ����
        $(".num-text").hide(); //�����Ϸ� ���� �����

        if (typeof timerSMS !== 'undefined' && timerSMS) {
            clearInterval(timerSMS); //Ÿ�̸Ӱ� �����ִٸ� Ŭ����
            timerSMS = null;
        }

        // e.preventDefault();
        $('.popup-overlay').fadeOut(300, function() {
            $('body').removeClass('popup-open');
        });
    };

</script>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // PC ȯ���̸� ��ũ��Ʈ �������� ����
    if (window.matchMedia('(hover: hover) and (pointer: fine)').matches) return;

    // ��� .noti ��� ��������
    var notiList = document.querySelectorAll('.noti');

    notiList.forEach(function(noti) {
        var tooltip = noti.querySelector('.tooltip');
        var isTooltipVisible = false;

        noti.addEventListener('click', function (e) {
            e.stopPropagation();

            // ��� ���� �ݱ�
            document.querySelectorAll('.tooltip').forEach(function(tip) {
                tip.style.display = 'none';
            });

            // ���� ���� ����
            tooltip.style.display = 'block';
            isTooltipVisible = true;
        });

        tooltip.addEventListener('click', function (e) {
            e.stopPropagation();
            tooltip.style.display = 'none';
            isTooltipVisible = false;
        });
    });

    // �ٱ� ���� Ŭ�� �� ���� ��� �ݱ�
    // document.addEventListener('click', function () {
    //     document.querySelectorAll('.tooltip').forEach(function(tip) {
    //         tip.style.display = 'none';
    //     });
    // });
});
</script>


</body>
</html>
