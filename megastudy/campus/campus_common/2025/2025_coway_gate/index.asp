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
    <link rel="stylesheet" type="text/css" href="web.css">

    <script type="text/javascript" src="/common/js/jquery-1.8.3.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</head>
<body>
<div id="wrapper"> 
    <!--  �ֻ�ܸ޴�//--> 
    <!--include virtual="/library/include/common/top.asp" --> 
    <!--  //�ֻ�ܸ޴�-->

    <div id="container">
        <div id="cowayGate" class="coway-gate">
            <!-- visual -->
            <div class="visual">
                <div class="visual-inner">
                    <h1 data-aos="fade-up" data-aos-delay="0">�ް����͵���</h1>

                    <!-- 20250528 -->
                    <!-- member -->
                    <%If Request.QueryString("param1") = "coway" Then%>
                        <div class="title title-member">
                            <img class="pc-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title.png" alt="" />
                            <img class="tablet-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_tablet.png" alt="" />
                            <img class="mo-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_mo.png" alt="" />
                        </div>
                    <%ElseIf Request.QueryString("param1") = "cowayls" Then%>
                        <!-- corasol -->
                        <div class="title title-corasol">
                            <img class="pc-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_corasol.png" alt="" />
                            <img class="tablet-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_corasol_tablet.png" alt="" />
                            <img class="mo-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_corasol_mo.png" alt="" />
                        </div>
                    <%ElseIf Request.QueryString("param1") = "staff" Then%>
                        <!-- staff -->
                        <div class="title title-staff">
                            <img class="pc-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_staff.png" alt="" />
                            <img class="tablet-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_staff_tablet.png" alt="" />
                            <img class="mo-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_staff_mo.png" alt="" />
                        </div>
                    <%ElseIf Request.QueryString("param1") = "cody" Then%>
                        <!-- cody -->
                        <div class="title title-cody">
                            <img class="pc-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_cody.png" alt="" />
                            <img class="tablet-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_cody_tablet.png" alt="" />
                            <img class="mo-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_cody_mo.png" alt="" />
                        </div>
                    <%Else%>
                        <div class="title title-member">
                            <img class="pc-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title.png" alt="" />
                            <img class="tablet-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_tablet.png" alt="" />
                            <img class="mo-only" data-aos="fade-up" data-aos-delay="100" src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/title_mo.png" alt="" />
                        </div>
                    <%End If%>
                    <!-- // 20250528 -->

                    <h2 data-aos="fade-up" data-aos-delay="200">
                        ����ü�� ��û�� �ص�<br>
                        <span>���̹����� 1���� ����</span>���� <span>������<br class="mo-only"> �ִ�<br class="tablet-only"> 12% ����</span>����!
                    </h2>
                    
                    <div class="list">
                        <div class="gift" data-aos="fade-up" data-aos-anchor-placement="bottom-bottom" data-aos-delay="300">
                            <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/gift.png" alt="">
                        </div>
                        <div id="benefit" class="benefit" data-aos="fade-up" data-aos-delay="300">
                            <div>
                                <span>
                                    ���ƺ��� �ߵ����<br>
                                    ���ۺ��� �ռ����� 1�� ����
                                </span>
                                <strong>
                                    ����Ʈ �н� 1��<br>
                                    ��������&Ű��, ������Ʈ
                                </strong>
                            </div>
                            <div>
                                <span>
                                    �հ��� ���� ����<br>
                                    �հ� �Һ��� ��Ģ
                                </span>
                                <strong>
                                    ��� �ΰ���<br>
                                    �ܿ��� �ް��н�
                                </strong>
                            </div>
                            <div>
                                <span>
                                    ���ϴ� ���� �����̵�
                                </span>
                                <strong>
                                    ���Լ����� ��� ����<br>
                                    ����&�ް����͵��п�
                                </strong>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- // visual -->

            <!-- contents -->
            <div class="contents">
                <div class="contents-inner">
                    <h3 data-aos="fade-up" data-aos-delay="0">
                        �ڿ���X�ް����͵���<br class="tablet-only"><br class="mo-only">���� �귣��
                    </h3>

                    <h4 data-aos="fade-up" data-aos-delay="100">
                        ���ѹα� No.1 ���� �ε��<br class="mo-only"> ���ް����͵�������<br class="tablet-only"> �پ��� ���񽺸�<br class="mo-only"> Ư���� �������� ����������.
                    </h4>

                    <div class="brand" data-aos="fade-up" data-aos-delay="200">
                        
                        
                        <div class="brand-row">
                            <div>
                                <p class="flag">���Ʊ���</p>
                                <div class="logo logo-1">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/@�������� Ű��.svg" alt="���Ʊ���">
                                </div>
                                <a href="javascript:();" class="link"><span>�ٷΰ���</span><i class="icon"></i></a>
                            </div>
                            <div>
                                <p class="flag">�ʵ��</p>
                                <div class="logo logo-2">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/@��������.svg" alt="�ʵ��">
                                </div>
                                <a href="javascript:();" class="link"><span>�ٷΰ���</span><i class="icon"></i></a>
                            </div>
                            <div>
                                <p class="flag">�ߵ��</p>
                                <div class="logo logo-3">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/@������Ʈ.svg" alt="�ߵ��">
                                </div>
                                <a href="javascript:();" class="link"><span>�ٷΰ���</span><i class="icon"></i></a>
                            </div>
                        </div>


                        <div class="brand-row">
                            <div>
                                <p class="flag">����</p>
                                <div class="logo logo-4">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/@�ް����͵� BI.svg" alt="����">
                                </div>
                                <!-- <a href="javascript:alert('�غ����Դϴ�.');" class="link"><span>�ٷΰ���</span><i class="icon"></i></a> -->
                                <a href="javascript:();" class="link"><span>�ٷΰ���</span><i class="icon"></i></a>
                            </div>
                            <div>
                                <p class="flag">��N�� �п�</p>
                                <div class="logo logo-5">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/@����BI.svg" alt="��N�� �п�">
                                </div>
                                <a href="/campus_common/2025/2025_coway/index.asp#contentsType1" class="link"><span>�ٷΰ���</span><i class="icon"></i></a>
                            </div>
                            <div>
                                <p class="flag">N�� �п�</p>
                                <div class="logo logo-6">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/@�ް����͵� �п�.svg" alt="N�� �п�">
                                </div>
                                 <a href="/campus_common/2025/2025_coway/index.asp#contentsType2" class="link"><span>�ٷΰ���</span><i class="icon"></i></a>
                            </div>
                            <div>
                                <p class="flag">N�� �п�</p>
                                <div class="logo logo-7">
                                    <img src="<%=Application("img_path")%>/library/campus_common/2025/2025_coway_gate/@���� ���.svg" alt="N�� �п�">
                                </div>
                                <a href="/campus_common/2025/2025_coway/index.asp#contentsType3" class="link"><span>�ٷΰ���</span><i class="icon"></i></a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- //contents -->
        </div>
    </div>

    <!-- container End --> 
</div>
<script>
    //�ڶ�� API
    var urlParams = new URLSearchParams(window.location.search);
    var param1 = urlParams.get('param1');
    var param2 = urlParams.get('param2');
    var device = navigator.userAgent.match(/Mobile|Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i) ? "M" : "P"; //M:Mobile, P:PC

    function insertLog() {
        var param = {
            "device" : device
        };
        $.ajax({
            type:"POST",
            url: "log.asp", 
            data: param,
            dataType : "html",
            success: function(result) {
            },
            error: function(error) {
                console.log("�α� ����");
            }
        });
    };

    if(param1 == "cowayls") {
        $.ajax({
            // url: 'https://www.cowayls.blue/inapi/membership/check',
            url: 'https://www.cowayls.com/inapi/membership/check',
            type: 'POST',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({
                "param1": param1,
                "param2": param2
            }),
            success: function (data) {
                if(data.code == 0) {
                    setCookie("param1", param1, 30);
                    setCookie("param2", "Y", 30);
                    //�׽�Ʈ����, ����
                    if(window.location.hostname != "campus.megastudy.net" && (window.location.hostname == "tcampus.megastudy.net" || window.location.hostname == "localhost")) {
                        alert("�ڶ�� ���� ���� �����: (" + data.code + ")");
                    };
                    insertLog();
                }else{
                    if(getCookie("param2") !== null && param1 == getCookie("param1")) {
                        //�׽�Ʈ����, ����
                        if(window.location.hostname != "campus.megastudy.net" && (window.location.hostname == "tcampus.megastudy.net" || window.location.hostname == "localhost")) {
                            alert("������ ����������, ��Ű ����");
                        };
                    }else{
                        setCookie("param1", "N", 0.000005);
                        setCookie("param2", "N", 0.000005);
                        //�׽�Ʈ����, ����
                        if(window.location.hostname != "campus.megastudy.net" && (window.location.hostname == "tcampus.megastudy.net" || window.location.hostname == "localhost")) {
                            alert("�ڶ�� ���� ���� �����: (" + data.code + ")");
                            confirm("���� �׽�Ʈ����������, ���� �Ұ� �������� �̵��Ͻðڽ��ϱ�?") ? window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp" : "";
                        }else{
                            window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp"
                        };
                    };
                };
            },
            error: function (xhr, status, error) {
                setCookie("param1", "N", 0.000005);
                setCookie("param2", "N", 0.000005);
                //�׽�Ʈ����, ����
                if(window.location.hostname != "campus.megastudy.net" && (window.location.hostname == "tcampus.megastudy.net" || window.location.hostname == "localhost")) {
                    alert("�ڶ�� ���� ���� �����: (" + data.code + ")");
                    confirm("���� �׽�Ʈ����������, ���� �Ұ� �������� �̵��Ͻðڽ��ϱ�?") ? window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp" : "";
                }else{
                    window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp"
                };
            }
        });
    }else if(param1 == "coway") {
        var cowayURL = "";
        //�׽�Ʈ�� ���� ��� �ڿ��� ��������ó�� / �ֹμ� / 2025-06-18
        // setCookie("param1", param1, 30);
        // setCookie("param2", "Y", 30);
        // insertLog();

        // device == "P" ? cowayURL = 'https://www.coway.dev/api/v1/mega/member' : cowayURL = 'https://m.coway.dev/api/v1/mega/member'; //����
        device == "P" ? cowayURL = 'https://www.coway.com/api/v1/mega/member' : cowayURL = 'https://m.coway.com/api/v1/mega/member';

        $.ajax({
            url: cowayURL,
            type: 'POST',
            headers: {
                "CW-CLIENT-ID": "megastudy.com"
            },
            dataType: 'json',
            contentType: 'application/json; charset=UTF-8',
            data: JSON.stringify({
                "token": param2
            }),
            success: function (data) {
                if(data.code == 200) {
                    setCookie("param1", param1, 30);
                    setCookie("param2", "Y", 30);
                    insertLog();
                    //�׽�Ʈ����, ����
                    if(window.location.hostname != "campus.megastudy.net" && (window.location.hostname == "tcampus.megastudy.net" || window.location.hostname == "localhost")) {
                        alert("�ڿ��� ���� ���� �����: (" + data.code + ")");
                    };
                    console.log("�ڿ��� ���� ����");
                }else{
                    if(getCookie("param2") !== null && param1 == getCookie("param1")) {
                        //�׽�Ʈ����, ����
                        if(window.location.hostname != "campus.megastudy.net" && (window.location.hostname == "tcampus.megastudy.net" || window.location.hostname == "localhost")) {
                            alert("������ ����������, ��Ű ����");
                        };
                        console.log("�ڿ��� ���� ����, ��Ű ����");
                    }else{
                        setCookie("param1", "N", 0.000005);
                        setCookie("param2", "N", 0.000005);
                        //�׽�Ʈ����, ����
                        if(window.location.hostname != "campus.megastudy.net" && (window.location.hostname == "tcampus.megastudy.net" || window.location.hostname == "localhost")) {
                            alert("�ڶ�� ���� ���� �����: (" + data.code + ")");
                            confirm("���� �׽�Ʈ����������, ���� �Ұ� �������� �̵��Ͻðڽ��ϱ�?") ? window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp" : "";
                        }else{
                            window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp"
                        };
                        console.loe.log("�ڿ��� ���� ����");
                    };
                };
            },
            error: function (xhr, status, error) {
                // console.log('xhr: ', xhr);
                // console.log('status: ', status);
                // console.error("Error:", error);
                // console.log("�ڿ��� ��� ����");
                
                setCookie("param1", "N", 0.000005);
                setCookie("param2", "N", 0.000005);
                window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp"
            }
        });
    }else{
        if(getCookie("param2") !== null && param1 == getCookie("param1")) {
            //�׽�Ʈ����, ����
            if(window.location.hostname != "campus.megastudy.net" && (window.location.hostname == "tcampus.megastudy.net" || window.location.hostname == "localhost")) {
                alert("������ ����������, ��Ű ����");
            };
        }else{
            setCookie("param1", "N", 0.000005);
            setCookie("param2", "N", 0.000005);
            //�׽�Ʈ����, ����
            if(window.location.hostname != "campus.megastudy.net" && (window.location.hostname == "tcampus.megastudy.net" || window.location.hostname == "localhost")) {
                alert("param1 ���� �ùٸ��� �ʽ��ϴ�.");
                confirm("���� �׽�Ʈ����������, ���� �Ұ� �������� �̵��Ͻðڽ��ϱ�?") ? window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp" : "";
            }else{
                window.location.href = "https://campus.megastudy.net/campus_common/2025/2025_coway/forbidden.asp"
            };
        }
    };

    $(function () {
        // ��ũ ���� ����
        var links = {
            PC: {
                '���Ʊ���': 'http://elikids.mbest.co.kr/mcorp/?pcode=C6200',
                '�ʵ��': 'http://junior.mbest.co.kr/mcorp/?pcode=C6202',
                '�ߵ��': 'http://www.mbest.co.kr/mcorp/?pcode=C6204',
                '����': 'https://www.megastudy.net/event/2025/0611_coway/main.asp?param1=' + param1 + '&param2=Y'

            },
            MOBILE: {
                '���Ʊ���': 'http://mkids.mbest.co.kr/ad/?ptname=C6199',
                '�ʵ��': 'http://m.mbest.co.kr/ad/?ptname=C6201',
                '�ߵ��': 'http://m.mbest.co.kr/ad/?ptname=C6203',
                '����': 'https://www.megastudy.net/event/2025/0611_coway/main.asp?param1=' + param1 + '&param2=Y'
            }
        };

        function updateLinks() {
            //1199
            var device = (window.innerWidth <= 1199) ? 'MOBILE' : 'PC';
            // alert(device);
            $('.brand-row > div').each(function () {
                var label = $(this).find('.flag').text().trim();
                var href = links[device][label];

                if (href) {
                    $(this).find('a.link')
                    .attr('href', href)
                    .attr('target', '_blank'); // �� â ���� ����
                }
            });
        }

        updateLinks();

        $(window).on('resize', function () {
            clearTimeout(window.linkUpdateTimer);
            window.linkUpdateTimer = setTimeout(updateLinks, 200);
        });
    });

    function setCookie(name, value, minutes) {
        var date = new Date();
        date.setTime(date.getTime() + (minutes * 60 * 1000));
        var expires = "expires=" + date.toUTCString();
        document.cookie = name + "=" + encodeURIComponent(value) + "; " + expires + "; path=/";
    }

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

</script>

<script>
    $(document).ready(function () {
        aosEvent();
        pageLoadEvent();
    });

    function pageLoadEvent(){
        var temp_s = $("#cowayGate").offset().top;
        $('html, body').animate({ scrollTop: temp_s}, 400);
    }

    function aosEvent(){
        AOS.init({
            duration: 500,
            delay:0,
            easing: 'ease-in',
            offset: 200,
            once:true,
            animatedClassName:'aos-animate',
        });
    }
</script>

</body>
</html>
