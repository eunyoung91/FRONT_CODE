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

function xssEscape(ele) {
	var inputVal = $(ele).val();
	var replaceVal = inputVal.replace(/(<([^>]+)>)/ig,"");
	//replaceVal = replaceVal.replace(/\"|\'|\%|\;|\)|\(|\&|\+|\#|\=/ig, "");
	//$(ele).val(replaceVal);
}

$(document).ready(function () {
	
	
	//스크립트 블럭 제거용 (<script>, </script>... )
	$(document).on("blur", "input, textarea" ,function() {
		xssEscape($(this));
	});
	
	$(document).on("submit", "form" ,function() {
		$(this).find("input, textarea").each(function() {
			xssEscape($(this));
		});
	});
	
	//쿠키를 이용한 결과 토스트 메시지 노출
	var resultMsg = getCookie("resultMsg");
	if(resultMsg) {
		fnc_toastMsgForResult(resultMsg);
		delCookie("resultMsg");
	}
	
	//쿠키를 이용한 결과 토스트 메시지 노출
	var warningMsg = getCookie("warningMsg");
	if(warningMsg) {
		fnc_toastMsgForWarning(warningMsg);
		delCookie("warningMsg");
	}
	
	//검색시 페이지 이동
	$("#btnSearch").on("click" ,function() {
		$("#page").val(1);
	});

	
	/*
	$(document).on("keyup blur", ".validFormat", function() {
		ar maxLen = $(this).data("length");
		var limit = maxLen - $(this).val().length;
		var str = $(this).val();
		
		if(limit < 0) {
			//제한글자수 초과 노티
			//초과된 글자 제거			
			alert("글자 입력수가 초과하였습니다.");
			$(this).val(str.substr(0, maxLen));
			limit = 0;
			return false;
		}
		
		//console.log(str.replace(/(d{4})(d{2})/,"$1-$2"));
		var format = $(this).data("format");
		
		switch (format) {
			case "yyyymm" :
				str = str.replace(/[^0-9]/g, '');
                str = str.replace(/(\d{4})(\d{2})/, "$1-$2");
				$(this).val(str);
				break;
			case "yyyymmdd" :
				str = str.replace(/[^0-9]/g, '');
                str = str.replace(/(\d{4})(\d{2})(\d{2})/, "$1-$2-$3");
                $(this).val(str);
				break;
			case "phone" :
				str = str.replace(/[^0-9]/g, '');
                str = str.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/, "$1-$2-$3");
                $(this).val(str);
				break;
			case "number" :
                str = str.replace(/[^0-9]/g, '');
                $(this).val(str);
				break;
			case "dot" : 
                str = str.replace(/[^0-9^.]/g, '');
                $(this).val(str);
				break;
		}
	});
	*/
	
	/** Masked Input
	 ************************ **/
	var _container = jQuery('input.rct-masked');
	if(_container.length > 0) {
		var telOptions = {
			clearIfNotMatch: true,
			onKeyPress: function(c, e, field, options) { 
				var masks = ['000-000-00009', '000-0000-0000', '02-000-00009', '02-0000-0000'];
				//mask = (c.length > 12) ? masks[1] : masks[0];
				if(c.substring(0,2) == "02") {
					mask = (c.length > 11) ? masks[3] : masks[2];
				} else {
					mask = (c.length > 12) ? masks[1] : masks[0];
				}
				$(".tel").mask(mask, options);
			}
		};
			
		var phoneOptions = {
			clearIfNotMatch: true,
			onKeyPress: function(c, e, field, options) {
				var masks = ['000-000-00009', '000-0000-0000'];
				mask = (c.length > 12) ? masks[1] : masks[0];
				$(".phone").mask(mask, options);
			}
		};
			
		var moneyOption = {
			//clearIfNotMatch: true,
			reverse: true
			/*,
			onKeyPress: function(c, e, field, options) {
				var masks = ['0,0009', '00,000'];
				mask = (c.length > 5) ? masks[1] : masks[0];
				$(".money").mask(mask, options);
			}*/
		};
			
		_container.each(function() {
			
			var _t 				= jQuery(this);
			var _format = _t.data("format");
				
			if(_format != undefined) {
				var options;
				if(_t.hasClass("tel")) {
					options = telOptions;
				} else if(_t.hasClass("phone")) {
					options = phoneOptions;
				} else if(_t.hasClass("money")) {
					options = moneyOption;
				} else {
					options = {clearIfNotMatch: true};
				}
					
				_t.mask(_format, options);
					
			}
		});
	}
	
	/** Form Validate
	************************ **/
	if(jQuery('form.rct-validate').length > 0) {
		
		$("form.rct-validate").validate({
			errorElement: "em",
			errorPlacement: function(error, element) {
				// do nothing
				if($(element).is(":checkbox") || $(element).is(":radio")) {
					$(element).parent("label").addClass("error");
				}
			},
			invalidHandler: function(form, validator) {
				 var errors = validator.numberOfInvalids();
				 if (errors) {
					 //alert(validator.errorList[0].message);
					 fnc_toastMsgForWarning(validator.errorList[0].message);
					 validator.errorList[0].element.focus();
				 }
			},
			success: function(label, element) {
				if($(element).is(":checkbox") || $(element).is(":radio")) {
					$(element).parent("label").removeClass("error");
				}
			}
		});
		
		jQuery.extend(jQuery.validator.messages, {
			required: "필수입력값을 입력해주세요.",
			remote: "Please fix this field.",
			email: "이메일 주소를 정확히 입력해주세요.",
			url: "Please enter a valid URL.",
			date: "정확한 날짜를 입력해주세요.",
			dateISO: "정확한 날짜를 입력해주세요.",
			number: "숫자만 입력 가능 합니다.",
			digits: "숫자만 입력 가능 합니다.",
			creditcard: "Please enter a valid credit card number.",
			equalTo: "입력값이 서로 다릅니다.",
			accept: "Please enter a value with a valid extension.",
			maxlength: jQuery.validator.format("최대 {0} 글자까지 입력가능 합니다."),
			minlength: jQuery.validator.format("최소 {0} 글자이상 입력해주세요."),
			rangelength: jQuery.validator.format("{0}글자 이상 {1}글자 이하로 입력해주세요."),
			range: jQuery.validator.format("Please enter a value between {0} and {1}."),
			max: jQuery.validator.format("최대{0} 까지 입력가능합니다."),
			min: jQuery.validator.format("최소{0} 까지 입력가능합니다.")
		});
	
		jQuery.validator.addMethod("dateYM", function(value, element) {
			var re = /^\d{4}-((0\d)|(1[012]))$/;
			return (this.optional(element) || value.match(re));
		}, "정확한 날짜를 입력해주세요.");
		
		jQuery.validator.addMethod("dateYMD", function(value, element) {
			var re = /^\d{4}-((0\d)|(1[012]))-(([012]\d)|3[01])$/;
			return (this.optional(element) || value.match(re));
		}, "정확한 날짜를 입력해주세요.");
		
		jQuery.validator.addMethod("phone", function(value, element) {
			var re = /(01[016789])-([1-9]{1}[0-9]{2,3})-([0-9]{4})$/; //핸드폰번호
			return (this.optional(element) || value.match(re));
		}, "핸드폰번호를 정확히 입력해주세요.");
		
		$("form.rct-validate .required").each(function(i) {
			$(this).rules('add', {
				required: true,
				maxlength: $(this).data("maxlength"),
				minlength: $(this).data("minlength"),
				messages: {
					required: $(this).data("msg")			
				}
			});
		});
			
	}
});

//동적으로 로딩되는 폼 마스킹이 필요한경우 사용
function fnc_bindMasking(frmID) {
    var form = $("#" + frmID);
    if (form) {
        var _container = form.find("input.rct-masked"); //jQuery( 'input.rct-masked');
        if (_container.length > 0) {
            var telOptions = {
                clearIfNotMatch: true,
                onKeyPress: function (c, e, field, options) {
                    var masks = ['000-000-00009', '000-0000-0000', '02-000-00009', '02-0000-0000'];
                    //mask = (c.length > 12) ? masks[1] : masks[0];
                    if (c.substring(0, 2) == "02") {
                        mask = (c.length > 11) ? masks[3] : masks[2];
                    } else {
                        mask = (c.length > 12) ? masks[1] : masks[0];
                    }
                    $(".tel").mask(mask, options);
                }
            };

            var phoneOptions = {
                clearIfNotMatch: true,
                onKeyPress: function (c, e, field, options) {
                    var masks = ['000-000-00009', '000-0000-0000'];
                    mask = (c.length > 12) ? masks[1] : masks[0];
                    $(".phone").mask(mask, options);
                }
            };

            var moneyOption = {
                //clearIfNotMatch: true,
                reverse: true
                /*,
                onKeyPress: function(c, e, field, options) {
                    var masks = ['0,0009', '00,000'];
                    mask = (c.length > 5) ? masks[1] : masks[0];
                    $(".money").mask(mask, options);
                }*/
            };

            _container.each(function () {

                var _t = jQuery(this);
                var _format = _t.data("format");

                if (_format != undefined) {
                    var options;
                    if (_t.hasClass("tel")) {
                        options = telOptions;
                    } else if (_t.hasClass("phone")) {
                        options = phoneOptions;
                    } else if (_t.hasClass("money")) {
                        options = moneyOption;
                    } else {
                        options = { clearIfNotMatch: true };
                    }

                    _t.mask(_format, options);

                }
            });
        }
    }
}

//동적으로 로딩되는 폼 유효성 체크가 필요한경우 사용
function fnc_bindValidation(frmID) {    
    var form = $("#" + frmID);   
    if (form) {
        $(form).validate({
            ignore: ":disabled",
			errorElement: "em",
            errorPlacement: function (error, element) {
                // do checkbox and radio's label
				if($(element).is(":checkbox") || $(element).is(":radio")) {
					$(element).parent("label").addClass("error");
				}
            },
            invalidHandler: function (form, validator) {
                var errors = validator.numberOfInvalids();
                if (errors) {
                    //alert(validator.errorList[0].message);
                    fnc_toastMsgForWarning(validator.errorList[0].message);
                    validator.errorList[0].element.focus();
                }
            },
			success: function(label, element) {
				if($(element).is(":checkbox") || $(element).is(":radio")) {
					$(element).parent("label").removeClass("error");
				}
			}
        });

        jQuery.extend(jQuery.validator.messages, {
            //required: "필수입력값을 입력해주세요.",
            required: "필수입력 항목을 확인해주세요.",
            remote: "Please fix this field.",
            email: "이메일 주소를 정확히 입력해주세요.",
            url: "Please enter a valid URL.",
            date: "정확한 날짜를 입력해주세요.",
            dateISO: "정확한 날짜를 입력해주세요.",
            number: "숫자만 입력 가능 합니다.",
            digits: "숫자만 입력 가능 합니다.",
            creditcard: "Please enter a valid credit card number.",
            equalTo: "입력값이 서로 다릅니다.",
            accept: "Please enter a value with a valid extension.",
            maxlength: jQuery.validator.format("최대 {0} 글자까지 입력가능 합니다."),
            minlength: jQuery.validator.format("최소 {0} 글자이상 입력해주세요."),
            rangelength: jQuery.validator.format("{0}글자 이상 {1}글자 이하로 입력해주세요."),
            range: jQuery.validator.format("Please enter a value between {0} and {1}."),
            max: jQuery.validator.format("최대{0} 까지 입력가능합니다."),
            min: jQuery.validator.format("최소{0} 까지 입력가능합니다.")
        });

        jQuery.validator.addMethod("dateYM", function (value, element) {
            var re = /^\d{4}-((0\d)|(1[012]))$/;
            return (this.optional(element) || value.match(re));
        }, "정확한 날짜를 입력해주세요.");

        jQuery.validator.addMethod("dateYMD", function (value, element) {
            var re = /^\d{4}-((0\d)|(1[012]))-(([012]\d)|3[01])$/;
            return (this.optional(element) || value.match(re));
        }, "정확한 날짜를 입력해주세요.");

        jQuery.validator.addMethod("phone", function (value, element) {
            var re = /(01[016789])-([1-9]{1}[0-9]{2,3})-([0-9]{4})$/; //핸드폰번호
            return (this.optional(element) || value.match(re));
        }, "핸드폰번호를 정확히 입력해주세요.");

        $(form).find(".required").each(function (i) {
            $(this).rules('add', {
                required: true,
                maxlength: $(this).data("maxlength"),
                minlength: $(this).data("minlength"),
                messages: {
                    required: $(this).data("msg")
                }
            });
        });
    }    
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

//jquery confirm for sync
var bConfirm = function (msg) {
    var deferred = $.Deferred();
    try {
        $.confirm({
            title: '',
            content: msg,
            buttons: {
                "확인": function () {
                    deferred.resolve(true);
                },
                "취소": function () {
                    deferred.resolve(false);
                }
            }
        });
    } catch (err) {
        deferred.reject(err);
    }
    return deferred.promise();
};

//jquery alert for sync
var bAlert = function (msg) {
    var deferred = $.Deferred();
    try {
        $.confirm({
            title: '',
            content: msg,
            buttons: {
                "확인": function () {
                    deferred.resolve(true);
                }
            }
        });
    } catch (err) {
        deferred.reject(err);
    }
    return deferred.promise();
};

//ajax Error handle
function fnc_ajaxErrorHandle(data, status, err) {
	fnc_hideLoader();
	
    var needLogin = getCookie("needLogin") == "1";    
    if (needLogin) {
        delCookie("needLogin");
        bAlert("로그인 정보가 만료되어, 로그인 페이지로 이동합니다.").done(function() {
			location.href = "/login/login";
		});
    } else {
        //alert(err);
		//bAlert("Error<br/>" + err + status).done(function() {
		bAlert("접속이 원활하지 않습니다.<br/>잠시 후 다시 시도해주세요.<br/>문제가 지속될 시 관리자에 문의해 주세요.").done(function() {
			return false;
		});
    }
}

//쿠키를 이용한 결과토스트 메시지
function fnc_cookieResultMsg(msg) {
	setCookie("resultMsg", msg, 1);
}

//쿠키를 이용한 경고토스트 메시지
function fnc_cookieWarningMsg(msg) {
	setCookie("warningMsg", msg, 1);
}

//쿠키생성
function setCookie(cName, cValue, cDay){
	var expire = new Date();
	expire.setDate(expire.getDate() + cDay);
	cookies = cName + '=' + escape(cValue) + '; path=/ ';
	if(typeof cDay != 'undefined') cookies += ';expires=' + expire.toGMTString() + ';';
	document.cookie = cookies;
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

//전체페이지 딤처리된 로딩노출
function fnc_showLoader() {
    var loading = '<div id="preloader"><div class="inner"><span class="loader"></span></div></div>';
    $("#wrapper").append(loading);
}

//전체페이지 딤처리된 로딩제거
function fnc_hideLoader() {
    $("#wrapper").find("#preloader").remove();
}

//서버시간 불러오기
function srvTime() {
    var xmlHttp;
    var retDate;

    if (window.XMLHttpRequest) {//분기하지 않으면 IE에서만 작동된다.
        xmlHttp = new XMLHttpRequest(); // IE 7.0 이상, 크롬, 파이어폭스 등
        xmlHttp.open('HEAD', "/l4_hr.jsp", false);
        xmlHttp.setRequestHeader("Content-Type", "text/html");
        xmlHttp.send('');
        retDate = xmlHttp.getResponseHeader("Date");
    } else if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
        xmlHttp.open('HEAD', "/l4_hr.jsp", false);
        xmlHttp.setRequestHeader("Content-Type", "text/html");
        xmlHttp.send('');
        retDate = xmlHttp.getResponseHeader("Date");
    }
	var d = new Date(Date.parse(retDate));
	//console.log(d.getFullYear() + "-" + d.getMonth() + "-" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds());
    //return new Date(retDate);
	return d.getFullYear() + "-" + (d.getMonth()+1) + "-" + d.getDate();
}

function addDays(date, days) {
	var result = new Date(date);
	result.setDate(result.getDate() + days);
	return result;
}

function dayDiff(first, second) {
   return Math.round((second-first)/(1000*60*60*24));
}

function setDateRanges(base, range) {
	if(base == "from") {
		var f = new Date($("input#from").datepicker('getDate'));
		var t = new Date($("input#to").datepicker('getDate'));
		var diff = dayDiff(f,t);                 
		if(diff > range) {
			var to =  addDays(f, range);
			$("input#to").datepicker('setDate',to);
            fnc_toastMsgForResult("검색 범위는 " + range +"일을 초과 할 수 없습니다.");
			return false;
		}
	}

	if(base == "to") {
		var f = new Date($("input#from").datepicker('getDate'));
		var t = new Date($("input#to").datepicker('getDate'));
		var diff = dayDiff(f,t);                 
		if(diff > range) {
			var from =  addDays(t, -range);
			$("input#from").datepicker('setDate',from);
            fnc_toastMsgForResult("검색 범위는 " + range +"일을 초과 할 수 없습니다.");
			return false;
		}
	}
}


//unescape
function fnc_unescapeXml(str1) {
	return str1.replace(/&#39;/g, "'")
               .replace(/&quot;/g, '"')
               .replace(/&gt;/g, '>')
               .replace(/&lt;/g, '<')
               .replace(/&amp;/g, '&');	
}

//maxlength 
function fnc_maxLengthCheck(obj) {
	if(obj.value.length > obj.maxLength) {
		obj.value = obj.value.slice(0, obj.maxLength);
		return false;
	}
}

//부서 셀렉트 박스 변경 이벤트
function fnc_changeDeptSelectBox(formId, index, selectedItem){
	var current_id = $(formId+" .dept").eq(index).attr("id");
	var target_id = $(formId+" .dept").eq(index+1).attr("id");
	var lvl = Number(index)+1;
	
	$(formId+" .dept").each(function(i){
		// 현재 부서 선택값
		$(formId+" #dept_idx").val(($(this).val() == "" || $(this).val() == null) ? $(formId+" #dept_idx").val() : $(this).val());
		
		$(this).show();
		if(index < i){
			//다음 셀렉트 박스 옵션 삭제
			$(this).find("option").remove();
		}
	});
	
	if(selectedItem != ""){
		// 다음부서 존재 여부
		var isNext = ($(formId+" #"+current_id+" option:selected").data("rfval1") == "Y") ? true : false;
		if (isNext) {
			fnc_initDepartment2ForSearch(selectedItem, "", formId+" #"+target_id, lvl);
		}
	} else {
		// 1레벨일 경우만 빈값
		$(formId+" #dept_idx").val((lvl == 1) ? "" : $(formId+" #dept_idx").val() );
	}
	
	//다음 셀렉트박스 option 0 hide
	$(formId+" .dept").each(function(i){
		if(i > index && $(this).eq(i).find("option").length == 0 ){
			$(this).hide();
		}
	});
}

//datepicker 바인딩
function fnc_bindDatepicker() {
	$('.datepicker__day').datepicker({
		language: "kr",
		format: "yyyy-mm-dd",
		autoclose: true,
	});
	$('.datepicker__month').datepicker({
		language: "kr",
		autoclose: true,
		format: "yyyy-mm",
		minViewMode: 1,
	});
	$('.datepicker__year').datepicker({
		language: "kr",
		autoclose: true,
		format: "yyyy",
		minViewMode: 2,
	});
}