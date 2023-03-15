//for datepicker
$.fn.datepicker.dates['en'] = {
    days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
    daysShort: ["일", "월", "화", "수", "목", "금", "토"],
    daysMin: ["일", "월", "화", "수", "목", "금", "토"],
    months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    today: "오늘",
    clear: "Clear",
    format: "yyyy-mm-dd",
    titleFormat: "yyyy년 MM",
    weekStart: 0
};

//파일 다운로드 처리
function fnc_fileDownload(fileIdx, type) {
    $("#frmFileDownload input[name=fileIdx]").val(fileIdx);
    $("#frmFileDownload input[name=type]").val(type);
    $("#frmFileDownload").attr("action", "/common/fileDownload").submit();
}

//토스트 노티
function fnc_toastMsgForNoti(contents) {
    toastr.info(contents, '');

    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": false,
        "progressBar": false,
        "positionClass": "toast-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
}

//토스트 결과
function fnc_toastMsgForResult(contents) {
    toastr.success(contents, '');

    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": false,
        "progressBar": false,
        "positionClass": "toast-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
}

//토스트 경고
function fnc_toastMsgForWarning(contents) {
    toastr.warning(contents, '');

    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": false,
        "progressBar": false,
        "positionClass": "toast-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    }
}

//인덱스찾기
String.prototype.nthIndexOf = function (searchElement, n, fromElement) {
    n = n || 0;
    fromElement = fromElement || 0;
    while (n > 0) {
        fromElement = this.indexOf(searchElement, fromElement);
        if (fromElement < 0) {
            return -1;
        }
        --n;
        ++fromElement;
    }
    return fromElement - 1;
};


$(document).ready(function () {
    //스핀버튼
    $(function () {
        $('.ladda-button').click(function (e) {
            var l = Ladda.create(this);
            l.start();
            setTimeout(function () {
                l.stop();
            }, 1000);
        });
    });

	//검색시 페이지 이동
	$("#btnSearch").on("click" ,function() {
		$("#page").val(1);
	});

    ////스위얼럿
    //SweetAlert.init();
});

//var SweetAlert = function () {
//    return {
//        init: function () {
//            $(".mt-sweetalert").each(function () {
//                var t = $(this).data("title"), a = $(this).data("message"), s = $(this).data("type"), e = $(this).data("allow-outside-click"),
//                    n = $(this).data("show-confirm-button"), c = $(this).data("show-cancel-button"), o = $(this).data("close-on-confirm"),
//                    i = $(this).data("close-on-cancel"), l = $(this).data("confirm-button-text"), u = $(this).data("cancel-button-text"),
//                    h = $(this).data("popup-title-success"), d = $(this).data("popup-message-success"), r = $(this).data("popup-title-cancel"),
//                    f = $(this).data("popup-message-cancel"), p = $(this).data("confirm-button-class"), m = $(this).data("cancel-button-class");
//                $(this).click(function () {
//                    swal({
//                        title: t, text: a, type: s, allowOutsideClick: e, showConfirmButton: n, showCancelButton: c, confirmButtonClass: p,
//                        cancelButtonClass: m, closeOnConfirm: o, closeOnCancel: i, confirmButtonText: l, cancelButtonText: u
//                    }, function (t) { t ? swal(h, d, "success") : swal(r, f, "error") })
//                })
//            })
//        }
//    }
//}();

function escapeXml(unsafe) {
    return unsafe.replace(/[<>&'"]/g, function (c) {
        switch (c) {
            case '<': return '&lt;';
            case '>': return '&gt;';
            case '&': return '&amp;';
            case '\'': return '&apos;';
            case '"': return '&quot;';
        }
    });
}

function fnc_showHelpText(obj) {
    var helpMessage = $(obj).data("help");
    App.alert({
        container: "#helpContainer", // alerts parent container
        place: 'prepent', // append or prepent in container
        type: 'success', // alert's type
        message: helpMessage, // alert's message
        close: true, // make alert closable
        reset: true, // close all previouse alerts first
        focus: true, // auto scroll to the alert after shown
        closeInSeconds: 10//, // auto close after defined seconds
        //icon: 'fa fa-question-circle' // put icon class before the message
    });
}

//ajax Error handle
function fnc_ajaxErrorHandle(data, status, err) {
    var needLogin = getCookie("needLogin") == "1";
	console.log(needLogin);
    if (needLogin) {
        delCookie("needLogin");
        alert("로그인 정보가 만료되어, 로그인 페이지로 이동합니다.");
		location.href = "/login/login.idea";

    } else {
        //alert(err);
		//bAlert("Error<br/>" + err + status).done(function() {
		alert("접속이 원활하지 않습니다.<br/>잠시 후 다시 시도해주세요.<br/>문제가 지속될 시 관리자에 문의해 주세요.");
    }
}

//쿠키조회
function getCookie(name) {
    var name = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return unescape(c.substring(name.length, c.length));
        }
    }
    return "";
}

//쿠키삭제
function delCookie(name) {
    document.cookie = name + '=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}
