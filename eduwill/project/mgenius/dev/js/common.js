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

	
	$(document).on("keyup blur", ".validFormat", function(e) {
		var min = $(this).data("min");
		var max = $(this).data("max");
		var val = $(this).val();
		var format = $(this).data("format");
		var msg = $(this).data("msg");
		
		switch(format) {
			case "int" :
				val = val.replace(/[^0-9]/g, '');
                $(this).val(val);
				if(val < min || val > max) {
					$(this).addClass("error");
					if(msg != null) fnc_toastMsgForWarning(msg);
				} else {
					$(this).removeClass("error");
				}
				break;
			
			case "decimal1" :	//소수점 한자리 				
				var _pattern = /^-?(\d{1,10}([.]\d{0,1})?)?$/;
				if (!_pattern.test(val) || (val < min || val > max)) {
					$(this).addClass("error");
					if(msg != null) fnc_toastMsgForWarning(msg);
				} else {
					$(this).removeClass("error");
				}
				break;
			
			case "grade1" : 	//등급
				if(e.handleObj.type != "focusout") {
					if(val != "") {
						var _pattern = /^[E,V,G,N,U,e,v,g,n,u]{1}$/;
						if (!_pattern.test(val)) {
							$(this).addClass("error");
							if(msg != null) fnc_toastMsgForWarning(msg);
							$(this).select();
						} else {
							val = val.toUpperCase();
							$(this).val(val);
							$(this).removeClass("error");						
							var index = $(this).parents("tr").index();
							var name = $(this).attr("name");
							fnc_saveGrade(index);
							
							
							
							$(this).parents("table").find("tbody tr").each(function(i) {
								if(i > index) {
									if(!$(this).parents("tbody").find("tr").eq(i).find("input[name='"+name+"']").prop("disabled")) {
										$(this).parents("tbody").find("tr").eq(i).find("input[name='"+name+"']").select()
										return false; //break;
									}
								}
							});
						}
					} else {
						$(this).removeClass("error");
					}
				}
				break;
		}
		
		
		/*
		var maxLen = $(this).data("length");
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
		*/
	});
});



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
	
	$(".toast").each(function(i) {
		if($(this).find(".toast-message").html() == contents) {
			$(this).remove();
		}
	});

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

function fnc_toastMsgForWarning2(contents) {
	
	$(".toast").each(function(i) {
		if($(this).find(".toast-message").html() == contents) {
			$(this).remove();
		}
	});

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
        "hideMethod": "fadeOut",
		"sticky": true
    }
}

//jquery confirm for sync
/*
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
*/

var bConfirm = function (msg) {
	var deferred = $.Deferred();
    try {
		jQuery.confirm({			
			title: '',
			content: msg,
			theme: 'material',
			type: 'orange',
			columnClass: 'col-md-3 col-md-offset-4',
			animation: 'rotateY',
			closeAnimation: 'scale',
			animateFromElement: false,
			buttons: {
				yes: {
					text: '확인',
					btnClass: 'btn-info',
					action: function() {
						deferred.resolve(true);
					}
				},
				no: {
					text: '취소',
					//btnClass: 'btn-dark',
					action: function() {
						deferred.resolve(false);
					}
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
		bAlert("Error<br/>" + err + status).done(function() {
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

//로딩프로그래스 노출
function fnc_divLoader(target) {
    $(target).html('<div class="panel panel-default"><div class="loading"></div></div>');
}

//영역 딤처리
function fnc_divDimmed(target, msg) {
    var str1 = '';
    str1 += '<div class="dim" style="display:block;">';
    if (msg != null && msg != undefined && msg != "") {
        str1 += '   <p><i class="fa fa-exclamation-circle"><em class="sr-only">주의</em></i> ' + msg + '</p>';
    }
    str1 += '</div >'
    $(target).append(str1);
}

//영역 딤처리
function fnc_divDimmed2(target) {
    var str1 = '';
    str1 += '<div class="dim" style="display:block;">';
    str1 += '   <p><div class="loading"></div></p>';
    str1 += '</div >'
    $(target).append(str1);
}

//영역 딤처리
function fnc_divDimmed3(target) {
    var str1 = '';
    str1 += '<div class="dim" style="display:block;">';
    str1 += '   <p><div class="loading"></div></p>';
	str1 += '   <p class="msg">다운로드 진행중... <label></label></p>';
    str1 += '</div >'
    $(target).append(str1);
}

//영역 딤처리
function fnc_divDimmed4(target) {
    var str1 = '';
    str1 += '<div class="dim" style="display:block;">';
    str1 += '   <p><div class="loading"></div></p>';
	str1 += '   <p class="msg">저장 진행중... <label></label></p>';
    str1 += '</div >'
    $(target).append(str1);
}

//영역 딤제거
function fnc_divDimmedRemove(target) {
	$(target).find('.dim').remove();
}


//영역 읽기 전용, 버튼 비활성
function fnc_inputReadonly(target) {
	$(target).find("input, textarea, button, select").each(function(i) {
		if($(this)[0].tagName == "BUTTON") {
			if($(this).attr("id") != "btnPreview" && $(this).attr("id") != "btnViewDetail") {
				$(this).attr("disabled", true);
			}
		} else {
			$(this).attr("readonly", true);
		}
	});
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
    return new Date(retDate);
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
		var f = new Date($("input#fromdt").datepicker('getDate'));
		var t = new Date($("input#todt").datepicker('getDate'));
		var diff = dayDiff(f,t);                 
		if(diff > range) {
			var to =  addDays(f, range);
			$("input#todt").datepicker('setDate',to);
            fnc_toastMsgForResult("검색 범위는 " + range +"일을 초과 할 수 없습니다.");
			return false;
		}
	}

	if(base == "to") {
		var f = new Date($("input#fromdt").datepicker('getDate'));
		var t = new Date($("input#todt").datepicker('getDate'));
		var diff = dayDiff(f,t);                 
		if(diff > range) {
			var from =  addDays(t, -range);
			$("input#fromdt").datepicker('setDate',from);
            fnc_toastMsgForResult("검색 범위는 " + range +"일을 초과 할 수 없습니다.");
			return false;
		}
	}
}

//한글완성
function fnc_regExKorean(value) {
	var pattern = /^[가-힣]+$/;
	if(!pattern.test(value)) {
		return false;
	}
	return true;
}

//인쇄
function pagePrint(){
	$('#pagePrint').printThis();
}


// 
function fnc_unescapeXml(str1) {
	return str1.replace(/&#39;/g, "'")
               .replace(/&quot;/g, '"')
               .replace(/&gt;/g, '>')
               .replace(/&lt;/g, '<')
               .replace(/&amp;/g, '&');	
}

function fnc_roundNumber(num, scale) {
	if(!("" + num).includes("e")) {
		return +(Math.round(num + "e+" + scale)  + "e-" + scale);
	} else {
	var arr = ("" + num).split("e");
	  var sig = ""
	  if(+arr[1] + scale > 0) {
		sig = "+";
	  }
	  return +(Math.round(+arr[0] + "e" + sig + (+arr[1] + scale)) + "e-" + scale);
	}
}	

// both parameters can be string or number
function toFixed(number, decimals) {
	var x = Math.pow(10, Number(decimals) + 1);
	return (Number(number) + (1 / x)).toFixed(decimals)
}


//부서 셀렉트 조회
function fnc_initTeamSelectbox(parent_idx, current_idx, selectId, lvl) {
	var title = null;
	lvl = (parent_idx == "") ? lvl-1 : lvl;
	switch(lvl){
		case 0 : title = "부서 선택"; break;
		case 1 : title = "실/팀 선택"; break;
		case 2 : title = "팀/파트 선택"; break;
		case 3 : title = "파트 선택"; break;
	}
	
	if (parent_idx != "") {
		callUrl = "/common/ajaxDepartmentList";
		param = { "parent_idx" : parent_idx };
		ajaxUtil.commonAjaxPost(callUrl, param, $(selectId), current_idx, title);
	} else {
		$(selectId+" option").not(":first").remove();
	}
}

//부서 셀렉트 조회(평가)
function fnc_initTeamSelectboxForAss(parent_idx, current_idx, selectId, lvl) {
	var title = "";
	lvl = (parent_idx == "") ? lvl-1 : lvl;
	switch(lvl){
		case 0 : title = "부서 선택"; break;
		case 1 : title = "실/팀 선택"; break;
		case 2 : title = "팀/파트 선택"; break;
		case 3 : title = "파트 선택"; break;
	}
	if (parent_idx != "") {
		callUrl = "/common/ajaxDepartmentList";
		param = { "parent_idx" : parent_idx, ispart : "N" };
		ajaxUtil.commonAjaxPost(callUrl, param, $(selectId), current_idx, title);
	} else {
		$(selectId+" option").not(":first").remove();
	}
}

//부서 셀렉트 조회(근태)
function fnc_initTeamSelectboxForAtt(parent_idx, current_idx, selectId) {
	if (parent_idx != "") {
		callUrl = "/attendance/ajaxSelectTeamList";
		param = { parent_idx : parent_idx };
		
		$.post(callUrl, param, function(data) {
			var count = data.length;
			var value;
			var sText;
			var text = "";
			var addOpt = "";
			
			if(count > 1){
				var title = "";
				switch(selectId.charAt(selectId.length-1)){
					case "2" : title = "실/팀 선택"; break;
					case "3" : title = "팀/파트 선택"; break;
					case "4" : title = "파트 선택"; break;
				}
				text = '<option value="">' + title + '</option>';
			}

			if (count > 0) {
				for (var i = 0; i < count; i++) {
					value = data[i].value;
					sText = data[i].text;
					var rfval1 = data[i].rfval1;
					if(rfval1 != null && rfval1 != "undefined") {
						addOpt = "data-rfval1='" + rfval1 + "'";
					}

					var rfval2 = data[i].rfval2;
					if(rfval2 != null && rfval2 != "undefined") {
						addOpt += "data-rfval2='" + rfval2 + "'";
					}

					if (String(value) == current_idx) {
						text += '<option value="' + value + '" ' + addOpt + ' selected>' + sText + '</option>';
					} else {
						text += '<option value="' + value + '" ' + addOpt + '>' + sText + '</option>';
					}
					
					addOpt = "";
				}
			}
			$(selectId).html(text);
		});
	} else {
		$(selectId+" option").remove();
	}
}

//인사관리
function fnc_initTeamSelectboxForHr(parent_idx, current_idx, selectId, url) {
	if (parent_idx != "") {
		callUrl = url;
		param = { parent_idx : parent_idx};
		
		$.post(callUrl, param, function(data) {
			var count = data.length;
			var value;
			var sText;
			var text = "";
			var addOpt = "";
			
			if(count > 1){
				var title = "";
				switch(selectId.charAt(selectId.length-1)){
					case "2" : title = "실/팀 선택"; break;
					case "3" : title = "팀/파트 선택"; break;
					case "4" : title = "파트 선택"; break;
				}
				text = '<option value="">' + title + '</option>';
			}

			if (count > 0) {
				for (var i = 0; i < count; i++) {
					value = data[i].value;
					sText = data[i].text;
					var rfval1 = data[i].rfval1;
					if(rfval1 != null && rfval1 != "undefined") {
						addOpt = "data-rfval1='" + rfval1 + "'";
					}

					var rfval2 = data[i].rfval2;
					if(rfval2 != null && rfval2 != "undefined") {
						addOpt += "data-rfval2='" + rfval2 + "'";
					}

					if (String(value) == current_idx) {
						text += '<option value="' + value + '" ' + addOpt + ' selected>' + sText + '</option>';
					} else {
						text += '<option value="' + value + '" ' + addOpt + '>' + sText + '</option>';
					}
					
					addOpt = "";
				}
			}
			$(selectId).html(text);
		});
	} else {
		$(selectId+" option").remove();
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
			fnc_initTeamSelectbox(selectedItem, "", formId+" #"+target_id, lvl);
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

//부서 셀렉트 박스 변경 이벤트(평가용)
function fnc_changeDeptSelectBoxForAss(formId, index, selectedItem){
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
			fnc_initTeamSelectboxForAss(selectedItem, "", formId+" #"+target_id, lvl);
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

//부서 셀렉트 박스 세팅(근태용)
function fnc_changeDeptSelectBoxForAtt(formId, index, selectedItem){
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
			fnc_initTeamSelectboxForAtt(selectedItem, "", formId+" #"+target_id, lvl);
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

//부서 셀렉트 박스 세팅(인사)
function fnc_changeDeptSelectBoxForHr(formId, index, selectedItem, type_cd){
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
			
			switch(type_cd) {
				case "ATT" :
					// 근태
					fnc_initTeamSelectboxForHr(selectedItem, "", formId+" #"+target_id, "/attendance/ajaxSelectTeamList");
					break;
				case "LDR" :
					// 부서장
					fnc_initTeamSelectboxForHr(selectedItem, "", formId+" #"+target_id, "/common/ajaxDeptListForLeader");
					break;	
			}
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