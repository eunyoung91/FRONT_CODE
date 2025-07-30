var fnMoveLink = function(txt, aLink) {
	if (txt != "") {
		alert(txt);
	}
	$(location).attr("href", aLink);
};

var fnAlert = function(txt) {
	alert(txt);
};

var fnConfirmLink = function(txt, aLink) {
	if (confirm(txt)) {
		$(location).attr("href", aLink);
	}
};

// 진학정보 탭 지원대학 설정 클릭 함수
function goRegistAppUniv(type) {
	var objApp = document.getElementById("divAppUnivList");

	objApp.innerHTML = "";
	objApp.style.display = "block";

	var ajaxUrl = "../ajax/xmlAppUnivSearch.asp";
	ajaxUrl += "?g=" + topTabCode + "&getUnivType=" + type + "&arr_Child=";

	$.ajax({
		type: "GET",
		url: ajaxUrl,
		success: function(msg) {
			objApp.innerHTML = msg;
			toggleFindLayer();
			document.foAppUnivSearch.getUnivName.focus();
			document.foAppUnivSearch.getUnivName.select();
		},
		error: function(xhr, status, error) {
			alert("처리 중 오류가 발생하였습니다.");
		},
	});
}

//레이어 열기
function toggleFindLayer() {
	$("body").css("overflow-y", "hidden");
	var dim = $(".pop_team_dim");
	var targetPop = $("#divAppUnivList");

	dim.css("display", "block");

	$(targetPop).css({
		top: ($(window).height() - $(targetPop).outerHeight()) / 2 + $(window).scrollTop() + "px",
		left: ($(window).width() - $(targetPop).outerWidth()) / 2 + $(window).scrollLeft() + "px"
	});

	$(window).resize(function() {
		$(targetPop).css({
			top: ($(window).height() - $(targetPop).outerHeight()) / 2 + $(window).scrollTop() + "px",
			left: ($(window).width() - $(targetPop).outerWidth()) / 2 + $(window).scrollLeft() + "px"
		});
	});
}

//레이어 닫기
function toggleFindLayerClose() {
	var targetPop = $("#divAppUnivList");
	var dim = $(".pop_team_dim");

	$("body").css("overflow-y", "scroll");
	dim.css("display", "none");
	$(targetPop).css("display", "none");
}

// 진학정보 탭 대학 검색 버튼 함수
function goAppUnivSearch(type) {
	var fo = document.foAppUnivSearch;

	fo.getUnivName.value = spaceRemove2(fo.getUnivName.value);

	if (fo.getUnivName.value.length < 2) {
		alert("학교명을 두 자 이상 입력하세요.");
		fo.getUnivName.select();
		return;
	}
	/*
	if (fo.getCollectUnit.value == "") {
		alert("모집단위명을 입력하세요.");
		fo.getCollectUnit.focus();
		return;
	}*/
	if (fo.getUnivName.value == "서울") {
		fo.getUnivName.value = "서울대";
	}

	var ajaxUrl = "../ajax/xmlAppUnivSearch.asp";

	ajaxUrl += "?g=" + topTabCode + "&getUnivName=" + fo.getUnivName.value;
	ajaxUrl += "&getCollectUnit=" + fo.getCollectUnit.value;
	ajaxUrl += "&getUnivType=" + type;
	ajaxUrl += "&arr_Child=";

	var objApp = document.getElementById("divAppUnivList");

	$.ajax({
		type: "GET",
		url: ajaxUrl,
		success: function(msg) {
			objApp.innerHTML = msg;
			document.foAppUnivSearch.getUnivName.select();
		},
		error: function(xhr, status, error) {
			alert("처리 중 오류가 발생하였습니다.");
		},
	});
}

// 지원대학 내역 보여주기
function goApplyUnivList(type) {
	type = typeof type !== "undefined" ? type : "s";
	var divID = "divThisAppUnivSome";

	var ajaxUrl = "../ajax/xmlAppUnivList.asp";

	$.ajax({
		type: "POST",
		url: ajaxUrl,
		dataType: "html",
		data: { g: topTabCode, getUnivType: type },
		success: function(msg) {
			document.getElementById(divID).innerHTML = msg;
		},
		error: function(xhr, status, error) {
			alert("처리 중 오류가 발생하였습니다.");
		},
	});
}

function spaceRemove2(str) {
	while (str.indexOf(" ") >= 0)
		str = str.replace(" ", "");
	return str;
}

function keyEnterToFunc(strObj) {
	//eval 매우 좋지 않음!
	if (event.keyCode == 13) {
		event.keyCode = 9;
		eval(strObj);
	}
}

function keyEnterTab(strObj) {
	if (event.keyCode == 13) {
		event.keyCode = 9;
	}
}

function checkRecord(oElem, nMinVal, nMaxVal) {
	var val = oElem.value;

	if (val != "") {
		if (isNaN(val) == true) {
			alert("숫자만 입력해 주세요.");
			oElem.value = "";
			oElem.focus();
			return false;
		}

		if (!(val >= nMinVal && val <= nMaxVal)) {
			alert(nMinVal + "~" + nMaxVal + " 까지 입력할 수 있습니다.");
			oElem.value = "";
			oElem.focus();
		}
	}
}

function sn_tam_nest_chk(cnt) {
	var form1 = document.form_proc_my_univ;

	if (cnt == 1) {
		if (form1.tam1_nm.value != "") {
			if (form1.tam1_nm.value == form1.tam2_nm.value) {
				alert("이미 선택한 과목입니다.");
				form1.tam1_nm.value = "";
				return;
			}
		}
	}

	if (cnt == 2) {
		if (form1.tam2_nm.value != "") {
			if (form1.tam2_nm.value == form1.tam1_nm.value) {
				alert("이미 선택한 과목입니다.");
				form1.tam2_nm.value = "";
				return;
			}
		}
	}

	if (form1.tam1_nm.value == "3" || form1.tam2_nm.value == "3") {
		sn_tam_change();
	}
	else if (form1.tam1_nm.value == "4" || form1.tam2_nm.value == "4") {
		sn_tam_change();
	}
}

function sn_tam_select() {
	var f = document.form_proc_my_univ;
	if (f.tam_gb.value == "사회탐구") {
		sn_tam_change();
	}
	else if (f.tam_gb.value == "과학탐구") {
		sn_tam_change();
	}
	else if (f.tam_gb.value == "직업탐구") {
		sn_tam_change();
	}
}

// *************************************************************
// 텍스트박스 입력폼에 숫자만 입력을 허용한다.
// *************************************************************
function is_int_press(evt) {
	var oEvent = evt || window.event;

	var key = oEvent.keyCode;

	if (!(
			key == 8 ||
			key == 9 ||
			key == 13 ||
			key == 46 ||
			key == 144 ||
			(key >= 48 && key <= 57) ||
			key == 110 ||
			key == 190
		)) {
		if (oEvent.preventDefault) {
			oEvent.preventDefault(); //IE11용
		}
		else {
			oEvent.returnValue = false;
		}
	}
}

var oPicWin = null;

function openPicWin(filetype, objnm) {
	oPicWin = window.open(
		"../apply/popup_pic.asp?filetype=" + filetype + "&objnm=" + objnm,
		"",
		"left=" + ((screen.width / 2) - (600 / 2)) + ", top=" + ((screen.height / 2) - (380 / 2)) + ", width=425, height=310, statusbar=no,scrollbars=no,toolbar=no,resizable=no"
	);
}

var oPicViewWin = null;

function openPicViewWin(filetype, filepath) {
	oPicViewWin = window.open(
		filepath,
		"",
		"left=" + ((screen.width / 2) - 425) + ", top=" + ((screen.height / 2) - 310) + ", width=425, height=310, statusbar=no,scrollbars=no,toolbar=no,resizable=yes"
	);
}

var oSnSampleWin = null;

function openSampleWin(filepath) {
	oSnSampleWin = window.open(
		filepath,
		"",
		"left=0, top=0, width=425, height=310, statusbar=no,scrollbars=no,toolbar=no,resizable=yes"
	);
}

// 이미지삭제
function delPicView(tid, filetype) {
	if(confirm("등록된 파일을 삭제하시겠습니까?") == false){
		return;
	}

	document.getElementById(tid + "_FILENM").value = "";
	document.getElementById(tid + "_YN").value = "N";
	document.getElementById(tid + "_REALFILENM").innerText = "";

	if(filetype == "EXAMSNLAST" || filetype == "EXAMSN"){
		controlSaveButton1();
	}
	else if(filetype == "MEMPIC" ){
		controlSaveButton2();
	}

	TpCompleteCheckMain("");
}

function fnChkByte(objnm, objtxt, maxBytei) {
	var maxByte = maxBytei; //최대 입력 바이트 수
	var str = document.getElementById(objnm).value;
	var str_len = str.length;

	var rbyte = 0;
	var rlen = 0;
	var one_char = "";
	var str2 = "";

	for (var i = 0; i < str_len; i++) {
		one_char = str.charAt(i);

		if (escape(one_char).length > 4) {
			rbyte += 2; //한글2Byte
		}
		else {
			rbyte++; //영문 등 나머지 1Byte
		}

		if (rbyte <= maxByte) {
			rlen = i + 1; //return할 문자열 갯수
		}
	}

	controlSaveButton3($("textarea[name^=SW_CONTENT]").length);

	if (rbyte > maxByte) {
		var byteWithComma1 = new Intl.NumberFormat().format(maxByte);
		var byteWithComma2 = new Intl.NumberFormat().format(maxByte / 2);
		// alert("한글 " + maxByte / 2 + "자 / 영문 " + maxByte + "자를 초과 입력할 수 없습니다.");
		alert("입력 가능한 글자수를 초과했습니다.\n최대 " + byteWithComma2 + "자(" + byteWithComma1 + "byte)까지 입력 가능합니다.");
		str2 = str.substr(0, rlen); //문자열 자르기
		document.getElementById(objnm).value = str2;
		fnChkByte(objnm, objtxt, maxBytei);
	}
	else {
		var byteWithComma = new Intl.NumberFormat().format(rbyte);
		document.getElementById(objtxt).innerText = byteWithComma;
		// document.getElementById(objtxt).innerText = rbyte + " / " + maxBytei + "byte";
	}
}

function fnChkMinByte(objtxt, minByte) {
	var str = objtxt;
	var str_len = str.length;

	var rbyte = 0;
	var rlen = 0;
	var one_char = "";
	var str2 = "";

	for (var i = 0; i < str_len; i++) {
		one_char = str.charAt(i);

		if (escape(one_char).length > 4) {
			rbyte += 2; //한글2Byte
		}
		else {
			rbyte++; //영문 등 나머지 1Byte
		}

		if (rbyte <= minByte) {
			rlen = i + 1; //return할 문자열 갯수
		}
	}

	if (rbyte < minByte) {
		return true;
	}
	else {
		return false;
	}
}

// 이용약관 모두 체크
function Private_All_AgreeFN() {
	if ($("#Private_All_Agree").is(":checked")) {
		$("#private_info_agree11").prop("checked", false);
		$("#private_info_agree21").prop("checked", false);
		$("#private_info_agree31").prop("checked", false);

		$("#private_info_agree12").prop("checked", true);
		$("#private_info_agree22").prop("checked", true);
		$("#private_info_agree32").prop("checked", true);
	}
	else {
		$("#private_info_agree11").prop("checked", true);
		$("#private_info_agree21").prop("checked", true);
		$("#private_info_agree31").prop("checked", true);

		$("#private_info_agree12").prop("checked", false);
		$("#private_info_agree22").prop("checked", false);
		$("#private_info_agree32").prop("checked", false);
	}
}

// 이용약관 동의안함 체크시 전체동의 해제
function Private_AgreeFN(mode) {
	if (mode == "N") {
		$("#Private_All_Agree").prop("checked", false);
	}
	else if (mode == "Y") {
		if ($("#private_info_agree12").is(":checked") && $("#private_info_agree22").is(":checked")) {
			$("#Private_All_Agree").prop("checked", true);
		}
	}
}

function fnScrollMove(area) {
	var offset = $(area).offset();
	$("html, body").animate({ scrollTop: offset.top - 20 }, 400);
}

// 성적 유효성 검사 (최종지원 버튼 활성화 체크위해 type 값 추가해서 처리)
var snScoreCheck = function(type, mode, hakYear, hakPrevYear) {
	//type != "" alert 띄우지 않는다

	var oForm = document.getElementById("form_proc_my_univ");
	var yecheneungF = oForm.yecheneungF.value;

	// 작년 수능성적 체크 S
	if (mode == "11") {
		//N수 일때만 체크
		var LastExamEnterYN = oForm.LastExamEnterYN.value;

		if (LastExamEnterYN == "Y") {
			if (oForm.sel_1.value.length < 1 && oForm.not_take_2.checked == false) {
				if (type == "") {
					alert("수학 유형을 선택하세요.");
					oForm.sel_1.focus();
				}
				return false;
			}

			if (oForm.sel_2.value.length < 1 && (oForm.not_take_4.checked == false || oForm.not_take_5.checked == false)) {
				if (type == "") {
					alert("탐구 유형을 선택하세요.");
					oForm.sel_2.focus();
				}
				return false;
			}

			if (oForm.sel_4.value.length < 1 && oForm.not_take_4.checked == false) {
				if (type == "") {
					alert("탐구1 과목을 선택하세요.");
					oForm.sel_4.focus();
				}
				return false;
			}

			if (oForm.sel_5.value.length < 1 && oForm.not_take_5.checked == false) {
				if (type == "") {
					alert("탐구2 과목을 선택하세요.");
					oForm.sel_5.focus();
				}
				return false;
			}

			// 제2외국어 체크
			if (oForm.sel_8.value.length > 0) {
				if (oForm.W_8.value.length < 1) {
					if (type == "") {
						alert("표준점수가 입력되지 않았습니다.");
						oForm.W_8.focus();
					}
					return false;
				}
				if (oForm.Percent_8.value.length < 1) {
					if (type == "") {
						alert("백분위가 입력되지 않았습니다.");
						oForm.Percent_8.focus();
					}
					return false;
				}
				if (oForm.Grade_8.value.length < 1) {
					if (type == "") {
						alert("등급이 입력되지 않았습니다.");
						oForm.Grade_8.focus();
					}
					return false;
				}
			}

			if (oForm.W_8.value.length > 0 || oForm.Percent_8.value.length > 0 || oForm.Grade_8.value.length > 0) {
				if (oForm.sel_8.value.length < 1) {
					if (type == "") {
						alert("제2외국어를 선택해주세요.");
						oForm.sel_8.focus();
					}
					return false;
				}
			}
			if (oForm.W_1.value.length < 1 && oForm.not_take_1.checked == false) {
				if (type == "") {
					alert("국어 표준점수가 입력되지 않았습니다.");
					oForm.W_1.focus();
				}
				return false;
			}
			else {
				if ((oForm.W_1.value < 1 || oForm.W_1.value > 200) && oForm.not_take_1.checked == false) {
					if (type == "") {
						alert("점수는 1~200까지 입력 가능합니다.");
						oForm.W_1.focus();
					}
					return false;
				}
			}

			if (oForm.W_2.value.length < 1 && oForm.not_take_2.checked == false) {
				if (type == "") {
					alert("수학 표준점수가 입력되지 않았습니다.");
					oForm.W_2.focus();
				}
				return false;
			}
			else {
				if ((oForm.W_2.value < 1 || oForm.W_2.value > 200) && oForm.not_take_2.checked == false) {
					if (type == "") {
						alert("점수는 1~200까지 입력 가능합니다.");
						oForm.W_2.focus();
					}
					return false;
				}
			}

			if (oForm.W_4.value.length < 1 && oForm.not_take_4.checked == false) {
				if (type == "") {
					alert("탐구1 표준점수가 입력되지 않았습니다.");
					oForm.W_4.focus();
				}
				return false;
			}
			else {
				if ((oForm.W_4.value < 1 || oForm.W_4.value > 100) && oForm.not_take_4.checked == false) {
					if (type == "") {
						alert("점수는 1~100까지 입력 가능합니다.");
						oForm.W_4.focus();
					}
					return false;
				}
			}

			if (oForm.W_5.value.length < 1 && oForm.not_take_5.checked == false) {
				if (type == "") {
					alert("탐구2 표준점수가 입력되지 않았습니다.");
					oForm.W_5.focus();
				}
				return false;
			}
			else {
				if ((oForm.W_5.value < 1 || oForm.W_5.value > 100) && oForm.not_take_5.checked == false) {
					if (type == "") {
						alert("점수는 1~100까지 입력 가능합니다.");
						oForm.W_5.focus();
					}
					return false;
				}
			}

			if (oForm.Percent_1.value.length < 1 && oForm.not_take_1.checked == false) {
				if (type == "") {
					alert("국어 백분위가 입력되지 않았습니다.");
					oForm.Percent_1.focus();
				}
				return false;
			}
			else {
				if ((oForm.Percent_1.value < 1 || oForm.Percent_1.value > 100) && oForm.not_take_1.checked == false) {
					if (type == "") {
						alert("백분위는 1~100까지 입력 가능합니다.");
						oForm.Percent_1.focus();
					}
					return false;
				}
			}

			if (oForm.Percent_2.value.length < 1 && oForm.not_take_2.checked == false) {
				if (type == "") {
					alert("수학 백분위가 입력되지 않았습니다.");
					oForm.Percent_2.focus();
				}
				return false;
			}
			else {
				if ((oForm.Percent_2.value < 1 || oForm.Percent_2.value > 100) && oForm.not_take_2.checked == false) {
					if (type == "") {
						alert("백분위는 1~100까지 입력 가능합니다.");
						oForm.Percent_2.focus();
					}
					return false;
				}
			}

			if (oForm.Percent_4.value.length < 1 && oForm.not_take_4.checked == false) {
				if (type == "") {
					alert("탐구1 백분위가 입력되지 않았습니다.");
					oForm.Percent_4.focus();
				}
				return false;
			}
			else {
				if ((oForm.Percent_4.value < 1 || oForm.Percent_4.value > 100) && oForm.not_take_4.checked == false) {
					if (type == "") {
						alert("백분위는 1~100까지 입력 가능합니다.");
						oForm.Percent_4.focus();
					}
					return false;
				}
			}

			if (oForm.Percent_5.value.length < 1 && oForm.not_take_5.checked == false) {
				if (type == "") {
					alert("탐구2 백분위가 입력되지 않았습니다.");
					oForm.Percent_5.focus();
				}
				return false;
			}
			else {
				if ((oForm.Percent_5.value < 1 || oForm.Percent_5.value > 100) && oForm.not_take_5.checked == false) {
					if (type == "") {
						alert("백분위는 1~100까지 입력 가능합니다.");
						oForm.Percent_5.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_1.value.length < 1 && oForm.not_take_1.checked == false) {
				if (type == "") {
					alert("국어 등급이 입력되지 않았습니다.");
					oForm.Grade_1.focus();
				}
				return false;
			}
			else {
				if ((oForm.Grade_1.value < 1 || oForm.Grade_1.value > 9) && oForm.not_take_1.checked == false) {
					if (type == "") {
						alert("등급은 1~9까지 입력 가능합니다.");
						oForm.Grade_1.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_2.value.length < 1 && oForm.not_take_2.checked == false) {
				if (type == "") {
					alert("수학 등급이 입력되지 않았습니다.");
					oForm.Grade_2.focus();
				}
				return false;
			}
			else {
				if ((oForm.Grade_2.value < 1 || oForm.Grade_2.value > 9) && oForm.not_take_2.checked == false) {
					if (type == "") {
						alert("등급은 1~9까지 입력 가능합니다.");
						oForm.Grade_2.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_3.value.length < 1 && oForm.not_take_3.checked == false) {
				if (type == "") {
					alert("영어 등급이 입력되지 않았습니다.");
					oForm.Grade_3.focus();
				}
				return false;
			}
			else {
				if ((oForm.Grade_3.value < 1 || oForm.Grade_3.value > 9) && oForm.not_take_3.checked == false) {
					if (type == "") {
						alert("등급은 1~9까지 입력 가능합니다.");
						oForm.Grade_3.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_11.value.length < 1) {
				if (type == "") {
					alert("한국사 등급이 입력되지 않았습니다.");
					oForm.Grade_11.focus();
				}
				return false;
			}
			else {
				if (oForm.Grade_11.value < 1 || oForm.Grade_11.value > 9) {
					if (type == "") {
						alert("등급은 1~9까지 입력 가능합니다.");
						oForm.Grade_11.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_4.value.length < 1 && oForm.not_take_4.checked == false) {
				if (type == "") {
					alert("탐구1 등급이 입력되지 않았습니다.");
					oForm.Grade_4.focus();
				}
				return false;
			}
			else {
				if ((oForm.Grade_4.value < 1 || oForm.Grade_4.value > 9) && oForm.not_take_4.checked == false) {
					if (type == "") {
						alert("등급은 1~9까지 입력 가능합니다.");
						oForm.Grade_4.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_5.value.length < 1 && oForm.not_take_5.checked == false) {
				if (type == "") {
					alert("탐구2 등급이 입력되지 않았습니다.");
					oForm.Grade_5.focus();
				}
				return false;
			}
			else {
				if ((oForm.Grade_5.value < 1 || oForm.Grade_5.value > 9) && oForm.not_take_5.checked == false) {
					if (type == "") {
						alert("등급은 1~9까지 입력 가능합니다.");
						oForm.Grade_5.focus();
					}
					return false;
				}
			}
		}
		else {
			if (oForm.sn_exam_reason_sel.value.length < 1) {
				if (type == "") {
					alert("수능미응시 사유를 선택하세요.");
					oForm.sn_exam_reason_sel.focus();
				}
				return false;
			}

			if (oForm.sn_exam_reason_sel.value == "기타(직접입력)") {
				if (oForm.sn_exam_reason_etc.value.length < 1) {
					if (type == "") {
						alert("수능미응시 사유를 입력하세요.");
						oForm.sn_exam_reason_etc.focus();
					}
					return false;
				}
			}
		}
	}
	// 작년 수능성적 체크 E

	// 이번년도 성적등록 S
	if (oForm.lang_sel_nm.value.length < 1 && oForm.lang_not_take.checked == false) {
		if (type == "") {
			alert("국어 과목을 선택해 주세요.");
			oForm.lang_sel_nm.focus();
		}
		return false;
	}

	if (yecheneungF == "N") {
		if (oForm.math_sel_nm.value.length < 1 && oForm.math_not_take.checked == false) {
			if (type == "") {
				alert("수학 과목을 선택해 주세요.");
				oForm.math_sel_nm.focus();
			}
			return false;
		}
	}

	if (oForm.tam1_nm.value.length < 1 && oForm.tam1_not_take.checked == false) {
		if (type == "") {
			alert("탐구1 과목을 선택해 주세요.");
			oForm.tam1_nm.focus();
		}
		return false;
	}

	if (oForm.tam2_nm.value.length < 1 && oForm.tam2_not_take.checked == false) {
		if (type == "") {
			alert("탐구2 과목을 선택해 주세요.");
			oForm.tam2_nm.focus();
		}
		return false;
	}

	//국어 미응시가 아니라면
	oForm.lang_sel_cd.value = oForm.lang_sel_nm.value.split("||")[0]; // 국어 선택 코드값 넣기
	if (oForm.lang_not_take.checked == false) {
		if (oForm.lang_spt.value.length < 1) {
			if (type == "") {
				alert("국어 성적을 입력해 주세요.");
				oForm.lang_spt.focus();
			}
			return false;
		}
		if (oForm.lang_ppt.value.length < 1) {
			if (type == "") {
				alert("국어 성적을 입력해 주세요.");
				oForm.lang_ppt.focus();
			}
			return false;
		}
		if (oForm.lang_gpt.value.length < 1) {
			if (type == "") {
				alert("국어 성적을 입력해 주세요.");
				oForm.lang_gpt.focus();
			}
			return false;
		}
	}

	if (yecheneungF == "N") {
		//수학 미응시가 아니라면
		oForm.math_sel_cd.value = oForm.math_sel_nm.value.split("||")[0]; // 수학 선택 코드값 넣기
		if (oForm.math_not_take.checked == false) {
			if (oForm.math_spt.value.length < 1) {
				if (type == "") {
					alert("수학 성적을 입력해 주세요.");
					oForm.math_spt.focus();
				}
				return false;
			}
			if (oForm.math_ppt.value.length < 1) {
				if (type == "") {
					alert("수학 성적을 입력해 주세요.");
					oForm.math_ppt.focus();
				}
				return false;
			}
			if (oForm.math_gpt.value.length < 1) {
				if (type == "") {
					alert("수학 성적을 입력해 주세요.");
					oForm.math_gpt.focus();
				}
				return false;
			}
		}
	}

	//영어 미응시가 아니라면
	if (oForm.eng_not_take.checked == false) {
		if (oForm.eng_gpt.value.length < 1) {
			if (type == "") {
				alert("영어 성적을 입력해 주세요.");
				oForm.eng_gpt.focus();
			}
			return false;
		}
	}

	if (oForm.tam3_gpt.value.length < 1) {
		if (type == "") {
			alert("한국사 성적을 입력해 주세요.");
			oForm.tam3_gpt.focus();
		}
		return false;
	}

	//탐구영역1 미응시가 아니라면
	if (oForm.tam1_not_take.checked == false) {
		if (oForm.tam1_spt.value.length < 1) {
			if (type == "") {
				alert("탐구1 성적을 입력해 주세요.");
				oForm.tam1_spt.focus();
			}
			return false;
		}
		if (oForm.tam1_ppt.value.length < 1) {
			if (type == "") {
				alert("탐구1 성적을 입력해 주세요.");
				oForm.tam1_ppt.focus();
			}
			return false;
		}
		if (oForm.tam1_gpt.value.length < 1) {
			if (type == "") {
				alert("탐구1 성적을 입력해 주세요.");
				oForm.tam1_gpt.focus();
			}
			return false;
		}
	}

	//탐구영역2 미응시가 아니라면
	if (oForm.tam2_not_take.checked == false) {
		if (oForm.tam2_spt.value.length < 1) {
			if (type == "") {
				alert("탐구2 성적을 입력해 주세요.");
				oForm.tam2_spt.focus();
			}
			return false;
		}
		if (oForm.tam2_ppt.value.length < 1) {
			if (type == "") {
				alert("탐구2 성적을 입력해 주세요.");
				oForm.tam2_ppt.focus();
			}
			return false;
		}
		if (oForm.tam2_gpt.value.length < 1) {
			if (type == "") {
				alert("탐구2 성적을 입력해 주세요.");
				oForm.tam2_gpt.focus();
			}
			return false;
		}
	}

	if (oForm.for_nm.value.length > 0 && oForm.for_gpt.value.length < 1) {
		if (type == "") {
			alert("제2외국어 성적을 입력해 주세요.");
			oForm.for_gpt.focus();
		}
		return false;
	}
	if (oForm.for_nm.value.length == 0 && (oForm.for_gpt.value.length > 0)) {
		if (type == "") {
			alert("제2 외국어 과목을 선택해 주세요.");
			oForm.for_nm.focus();
		}
		return false;
	}
	// 이번년도 성적등록 E

	if (mode == "11") {
		//N수 일때만 체크
		if ($("input:radio[name='sn_exam_yn']:checked").val() == "Y") {
			if (oForm.TP_EXAMSNLAST_YN.value != "Y") {
				if (type == "") {
					// alert(hakPrevYear + "학년도 수능 성적표를 등록하세요.");
					alert("수능 성적표를 모두 등록해 주세요");
					fnScrollMove("#examArea1");
				}
				return false;
			}
		}
	}

	if (oForm.TP_EXAMSN_YN.value != "Y") {
		if (type == "") {
			// alert(hakYear + "학년도 수능 성적표를 등록하세요.");
			alert("수능 성적표를 모두 등록해 주세요");
			fnScrollMove("#examArea2");
		}
		return false;
	}
};

function goAppUnivSelCssOff(idx) {
	$("#AppUnivList_" + idx).removeClass("on");
}

function fnNumberChk(object) {
	var v = object.value;
	var pattern = /[^0-9]/gi;
	if (pattern.test(v)) {
		object.value = v.replace(pattern, "");
	}
}

// 국어/수학 선택과목 선택시 공통과목 코드값 셋팅
function sn_sel_nest_chk(sel) {
	var form1 = document.form_set_sn_score;
	var vSrcSel = document.getElementsByName(sel + "_sel_nm")[0];
	var vSrcCom = document.getElementsByName(sel + "_com_cd")[0];

	var vSrcSelVal = vSrcSel.value.split("||")[1];
	if (typeof vSrcSelVal != "undefined") {
		vSrcCom.value = vSrcSelVal;
	}
	else {
		vSrcCom.value = "";
	}
}

function sn_sel_select() {
	sn_sel_nest_chk("lang");
	sn_sel_nest_chk("math");
}

// 미응시 disabled 처리 2020-12-18
function fnDisableChk(lec) {
	var vSrcType = document.getElementsByName(lec + "_nm")[0];
	var vSrcPyo = document.getElementsByName(lec + "_spt")[0];
	var vSrcBack = document.getElementsByName(lec + "_ppt")[0];
	var vSrcRank = document.getElementsByName(lec + "_gpt")[0];
	var vSrcNotTake = Number($(vSrcType).val());

	//미응시라면
	if (vSrcNotTake >= 94 && vSrcNotTake <= 99) {
		if (lec != "eng") {
			$(vSrcPyo).val("").prop("disabled", true);
			$(vSrcBack).val("").prop("disabled", true);
		}
		$(vSrcRank).val("").prop("disabled", true);
	}
	else {
		if (lec != "eng") {
			$(vSrcPyo).prop("disabled", false);
			$(vSrcBack).prop("disabled", false);
		}
		$(vSrcRank).prop("disabled", false);
	}
}

//성적 미응시 입력
function fnDisableChk2022(lec, type) {
	if (lec == "lang" || lec == "math") {
		fnDisableChkSel(lec, type);
	}
	else {
		fnDisableChkOrg(lec, type);
	}
}

function fnDisableChkSel(lec, type) {
	var vSrcType = document.getElementsByName(lec + "_not_take")[0];
	var vSrcCom = document.getElementsByName(lec + "_com_cd");
	var vSrcSel = document.getElementsByName(lec + "_sel_cd");
	var vSrcSelNm = document.getElementsByName(lec + "_sel_nm")[0];
	var vSrcSpt = document.getElementsByName(lec + "_spt")[0];
	var vSrcPpt = document.getElementsByName(lec + "_ppt")[0];
	var vSrcGpt = document.getElementsByName(lec + "_gpt")[0];

	if (vSrcType.checked) {
		vSrcCom.value = "";
		vSrcSel.value = "";
		vSrcSelNm.value = "";
		vSrcSelNm.disabled = "true";

		vSrcSpt.value = "";
		vSrcPpt.value = "";
		vSrcGpt.value = "";
		vSrcSpt.disabled = "true";
		vSrcPpt.disabled = "true";
		vSrcGpt.disabled = "true";
	}
	else {
		vSrcSelNm.disabled = "";
		vSrcSpt.disabled = "";
		vSrcPpt.disabled = "";
		vSrcGpt.disabled = "";
	}
}

// 국어/수학이외 미응시 선택시
function fnDisableChkOrg(lec, type) {
	var vSrcType = document.getElementsByName(lec + "_not_take")[0];
	var vSrcNm = document.getElementsByName(lec + "_nm")[0];
	var vSrcSpt = document.getElementsByName(lec + "_spt")[0];
	var vSrcPpt = document.getElementsByName(lec + "_ppt")[0];
	var vSrcGpt = document.getElementsByName(lec + "_gpt")[0];

	if (vSrcType.checked) {
		vSrcNm.value = "";
		vSrcNm.disabled = "true";

		if (lec != "eng") {
			//영어는 표준점수, 백분위가 없는 "절대평가"
			vSrcSpt.value = "";
			vSrcSpt.disabled = "true";
			vSrcPpt.value = "";
			vSrcPpt.disabled = "true";
		}
		vSrcGpt.value = "";
		vSrcGpt.disabled = "true";
	}
	else {
		vSrcNm.disabled = "";

		if (lec != "eng") {
			//영어는 표준점수, 백분위가 없는 "절대평가"
			vSrcSpt.disabled = "";
			vSrcPpt.disabled = "";
		}
		vSrcGpt.disabled = "";
	}
}

//전년도 성적 미응시 입력
function fnDisableChkSelPrevScore(subjectCheckbox, subjectSelectbox, sptInput, pptInput, gptInput) {
	var subjectCheckboxElement = document.getElementById(subjectCheckbox);
	var subjectSelectboxElement = document.getElementById(subjectSelectbox);
	var sptInputElement = document.getElementById(sptInput);
	var pptInputElement = document.getElementById(pptInput);
	var gptInputElement = document.getElementById(gptInput);

	if (subjectCheckboxElement.checked) {
		if (subjectSelectbox != "") {
			subjectSelectboxElement.value = "";
			subjectSelectboxElement.disabled = "true";
		}
		if (sptInput != "") {
			sptInputElement.value = "";
			sptInputElement.disabled = "true";
		}
		if (pptInput != "") {
			pptInputElement.value = "";
			pptInputElement.disabled = "true";
		}
		if (gptInput != "") {
			gptInputElement.value = "";
			gptInputElement.disabled = "true";
		}
	}
	else {
		if (subjectSelectbox != "") {
			subjectSelectboxElement.disabled = "";
		}
		if (sptInput != "") {
			sptInputElement.disabled = "";
		}
		if (pptInput != "") {
			pptInputElement.disabled = "";
		}
		if (gptInput != "") {
			gptInputElement.disabled = "";
		}
	}
}

// 인증자료 등록하기
var snScoreX = function(mode, area) {
	var oForm = document.getElementById("form_proc_my_univ");
	oForm.form_mode.value = mode;

	if (oForm.TP_MEMPIC_YN.value != "Y") {
		alert("증명사진을 등록해 주세요");
		fnScrollMove("#examArea3");
		return false;
	}
	// 단위별 저장인지 전체 저장인지 체크(A: 전체저장, P: 단위저장)
	if (area == "P") {
		oForm.target = "runSource";
		oForm.action = "./challenge_write_save.asp";
		oForm.submit();
	}
	return true;
}

// 수기 등록
function SW_REGCHECK(mode, area, questionCount) {
	if (questionCount == 0) { //검사할 문항이 없으므로
		return true;
	}

	var isSugiEmpty = true;
	var problemSugiID = "";
	
	for (index = 1; index <= questionCount; index++) {
		if ($("#SW_CONTENT" + index).val() != "") {
			isSugiEmpty = false;
			break;
		}
	}
	if(isSugiEmpty == true){ //수기를 모두 미입력한 경우
		alert("합격수기를 모두 등록해 주세요.");

		$("html").animate({
			scrollTop : $("#info_step3").offset().top - 20 //합격수기 섹션으로 이동
		}, 500);

		return false;
	}

	for (index = 1; index <= questionCount; index++) {
		if ($("#SW_CONTENT" + index).val() == "") {
			problemSugiID = "SW_CONTENT" + index;
			break;
		}
		else {
			if (fnChkMinByte($("#SW_CONTENT" + index).val(), $("#ANSWER_MIN" + index).val())) {
				var byteWithComma1 = new Intl.NumberFormat().format($("#ANSWER_MIN" + index).val());
				var byteWithComma2 = new Intl.NumberFormat().format($("#ANSWER_MIN" + index).val() / 2);

				// alert("최소 " + $("#ANSWER_MIN" + index).val() + "byte 이상 등록해 주세요.");
				alert("최소 " + byteWithComma2 + "자(" + byteWithComma1 + "byte) 이상 입력해 주세요.");

				$("html").animate({
					scrollTop : $("#SW_CONTENT" + index).offset().top - (screen.height / 2) + ($("#SW_CONTENT" + index).height())
				}, 500);
				$("#SW_CONTENT" + index).focus();

				return false;
			}

			if (index == 2) {
				if ($("#SW_CONTENT" + index).val().indexOf("덕분에") == -1) {
					alert("\"덕분에\" 키워드를 포함해 작성해 주세요.");

					$("html").animate({
						scrollTop : $("#SW_CONTENT" + index).offset().top - (screen.height / 2) + ($("#SW_CONTENT" + index).height())
					}, 500);
					$("#SW_CONTENT" + index).focus();

					return false;
				}
			}
		}
	}

	if (problemSugiID != "") {
		alert("합격수기를 모두 등록해 주세요.");

		$("html").animate({
			scrollTop : $("#" + problemSugiID).offset().top - (screen.height / 2) + ($("#" + problemSugiID).height())
		}, 500);
		$("#" + problemSugiID).focus();

		return false;
	}

	var oForm = document.getElementById("form_proc_my_univ");
	oForm.form_mode.value = mode;

	// 단위별 저장인지 전체 저장인지 체크(A: 전체저장, P: 단위저장)
	if (area == "P") {
		oForm.target = "runSource";
		oForm.action = "./challenge_write_save.asp";
		oForm.submit();
	}
	return true;
}

// 최종지원하기 버튼 활성화 시키기
var TpCompleteCheckMain = function(type) {
	if (TpCompleteCheck(type) == true) {
		$("#TpCompleteBtn").attr("class", "btn_apply on");
	}
	else {
		$("#TpCompleteBtn").attr("class", "btn_apply");
	}
}

// 최종지원하기
function TPCOMPLETEREG(questionCount) {
	var frmInfo = document.getElementById("form_proc_my_univ");

	var univChk = procMyUniv('proc_univ_state', 's', 'A'); // 지원 대학과 성적 입력 체크
	if (!univChk) {
		return false;
	}
	var scrChk = snScoreX('proc_mega_state', 'A'); // 인증 파일 유무 체크
	if (!scrChk) {
		return false;
	}
	var srChk = SW_REGCHECK('proc_mega_state', 'A', questionCount); // 수기 작성 체크
	if (!srChk) {
		return false;
	}
	// 약관 동의
	var PrivateInfoAgree = $(':radio[name="private_info_agree1"]:checked').val();

	if (PrivateInfoAgree == "N") {
		alert("개인정보 활용 동의에 모두 동의하셔야 최종 제출이 가능합니다.");
		frmInfo.private_info_agree1[0].focus();
		return false;
	}

	var maketInfoAgree = $(':radio[name="private_info_agree2"]:checked').val();

	if (maketInfoAgree == "N") {
		alert("개인정보 활용 동의에 모두 동의하셔야 최종 제출이 가능합니다.");
		frmInfo.private_info_agree2[0].focus();
		return false;
	}

	if (confirm("최종 제출 후에는 수정이 불가합니다.\n제출하시겠습니까?")) {
		frmInfo.form_mode.value = "proc_mega_state";
		frmInfo.target = "runSource";
		frmInfo.action = "./challenge_write_save.asp";
		frmInfo.submit();
	}
	else {
		return false;
	}
}

function goAppUnivSelect(idx, type) {
	var oForm = document.getElementById("form_reg_univ");

	oForm.getUnivCode.value = idx;
	oForm.getUnivType.value = type;
	$("#AppUnivList_" + idx).addClass("on");

	oForm.target = "runSource";
	oForm.action = "./challenge_write_save.asp";
	oForm.submit();
}

// N수 작년도 수능 성적 관련 ==========================================================================================================
//특정 채널을 선택하면 해당 카테고리를 생성 ; sbk 2013-11-22
function BuildCatsSBK(num) {
	var fo = document.form_proc_my_univ;

	fo.sel_4.length = Cats[num].length;
	fo.sel_5.length = Cats[num].length;

	// 2014학년도부터 탐구 2과목 ; sbk 2013-11-25
	if (fo.ExamYear.value <= 2013) {
		fo.sel_6.length = Cats[num].length;
		fo.sel_7.length = Cats[num].length;
	}

	for (i = 0; i < Cats[num].length; i++) {
		str = Cats[num][i], [i];
		arr = str.split("/");
		fo.sel_4.options[i] = new Option(arr[0]);
		fo.sel_4.options[i].value = arr[1];
		fo.sel_5.options[i] = new Option(arr[0]);
		fo.sel_5.options[i].value = arr[1];
		// 2014학년도부터 탐구 2과목 ; sbk 2013-11-25
		if (fo.ExamYear.value <= 2013) {
			fo.sel_6.options[i] = new Option(arr[0]);
			fo.sel_6.options[i].value = arr[1];
			fo.sel_7.options[i] = new Option(arr[0]);
			fo.sel_7.options[i].value = arr[1];
		}
	}
}

function fnconchr(objNm) {
	var myform = document.form_proc_my_univ;
	if (objNm == "sel_1") { //수리영역
		myform.sel_3.selectedIndex = 0; //선택항목으로 이동
		if (myform.sel_1.value == "2100") {
			myform.sel_3.disabled = false; //수리가 (선택)
		}
		else {
			myform.sel_3.disabled = true; //수리나 (선택)
		}
	}
	if (objNm == "sel_2") { //탐구영역
		// 2014학년도부터 과목 변경 ; sbk 2013-11-22
		var catIdx = 2;
		if (myform.ExamYear.value <= 2013) {
			if (myform.sel_2.value == "4100") catIdx = 0;
			else if (myform.sel_2.value == "4200") catIdx = 1;
		}
		else if (myform.ExamYear.value >= 2017) {
			if (myform.sel_2.value == "4100") catIdx = 5;
			else if (myform.sel_2.value == "4200") catIdx = 4;
			else if (myform.sel_2.value == "4300") catIdx = 6;
		}
		else {
			if (myform.sel_2.value == "4100") catIdx = 3;
			else if (myform.sel_2.value == "4200") catIdx = 4;
		}

		BuildCatsSBK(catIdx);
	}
}

// 2014학년도 탐구과목 2개 비교 함수 ; sbk 2013-11-25
function compareSbj(obj) {
	var fo = document.form_proc_my_univ;
	if (obj.value > "" && fo.sel_4.value == fo.sel_5.value) {
		alert('이미 선택한 과목입니다.');
		obj.selectedIndex = 0;
		obj.focus();
		return false;
	}
}

function jsLecSelect() {
	var f = document.form_proc_my_univ;

	fnconchr('sel_2'); // 탐구 선택박스 내용 채우기

	// 탐구 선택박스 기존 저장내용 세팅 ; sbk 2013-11-22
	for (i = 0; i < f.sel_4.length; i++)
		if (f.sel_4[i].value == f.txtSaveSel_4SelectIndex.value)
			f.sel_4.selectedIndex = i;
	for (i = 0; i < f.sel_4.length; i++)
		if (f.sel_5[i].value == f.txtSaveSel_5SelectIndex.value)
			f.sel_5.selectedIndex = i;

	// 2014학년도부터 탐구 2과목 ; sbk 2013-11-25
	if (f.ExamYear.value <= 2013) {
		for (i = 0; i < f.sel_6.length; i++)
			if (f.sel_6[i].value == f.txtSaveSel_6SelectIndex.value)
				f.sel_6.selectedIndex = i;
		for (i = 0; i < f.sel_7.length; i++)
			if (f.sel_7[i].value == f.txtSaveSel_7SelectIndex.value)
				f.sel_7.selectedIndex = i;
	}
}

function LastExamEnterCH(selval) {
	if (selval == "기타(직접입력)") {
		//document.getElementById('sn_exam_span_sel').style.display ="none";
		document.getElementById('sn_exam_span_etc').style.display = "inline";
	}
	else {
		//document.getElementById('sn_exam_span_sel').style.display ="inline";
		document.getElementById('sn_exam_span_etc').style.display = "none";
	}
}

function LastExamEnterCheck(chkval) {
	//전년도 수능 응시-미응시
	if (chkval == "Y") {
		document.getElementById('sn_exam_span_etc').style.display = "none";
		document.getElementById('LastExamEnterYN').value = "Y";
		document.getElementById('sn_exam_span_sel').style.display = "none";
		$('#examuInputArea1').removeClass("disabled");
		$('#TP_EXAMSNLAST_REALFILENM').removeClass("disabled");
		$('#TP_EXAMSNLAST_REALFILENM_BTN').removeClass("disabled");
		$('#TP_EXAMSNLAST_REALFILENM_BTN').attr("href", "javascript:openPicWin('EXAMSNLAST','TP_EXAMSNLAST')");

		//id^='abcd_' -> "abcd_"로 시작하는 ID 값
		for (var index = 0; index < $("select[id^='sel_']").length; index++) { //선택 과목
			$("select[id^='sel_']").eq(index).attr("disabled", false);
		}
		for (var index = 0; index < $("input[id^='W_']").length; index++) { //표준점수
			$("input[id^='W_']").eq(index).attr("disabled", false);
		}
		for (var index = 0; index < $("input[id^='Percent_']").length; index++) { //백분위
			$("input[id^='Percent_']").eq(index).attr("disabled", false);
		}
		for (var index = 0; index < $("input[id^='Grade_']").length; index++) { //등급
			$("input[id^='Grade_']").eq(index).attr("disabled", false);
		}
		for (var index = 0; index < $("input[id^='not_take_']").length; index++) { //과목별 미응시
			$("input[id^='not_take_']").eq(index).attr("disabled", false);
		}

		document.getElementById('sn_exam_reason_etc').value = "";
		document.getElementById('sn_exam_reason_sel')[0].selected = true;
	}
	else {
		document.getElementById('LastExamEnterYN').value = "N";
		document.getElementById('sn_exam_span_sel').style.display = "inline";
		$('#examuInputArea1').addClass("disabled");
		$('#TP_EXAMSNLAST_REALFILENM').addClass("disabled");
		$('#TP_EXAMSNLAST_REALFILENM_BTN').addClass("disabled");
		$('#TP_EXAMSNLAST_REALFILENM_BTN').attr("href", "javascript:void(0)");

		//id^='abcd_' -> "abcd_"로 시작하는 ID 값
		for (var index = 0; index < $("select[id^='sel_']").length; index++) { //선택 과목
			$("select[id^='sel_']").eq(index).attr("disabled", true);
		}
		for (var index = 0; index < $("input[id^='W_']").length; index++) { //표준점수
			$("input[id^='W_']").eq(index).attr("disabled", true);
		}
		for (var index = 0; index < $("input[id^='Percent_']").length; index++) { //백분위
			$("input[id^='Percent_']").eq(index).attr("disabled", true);
		}
		for (var index = 0; index < $("input[id^='Grade_']").length; index++) { //등급
			$("input[id^='Grade_']").eq(index).attr("disabled", true);
		}
		for (var index = 0; index < $("input[id^='not_take_']").length; index++) { //과목별 미응시
			$("input[id^='not_take_']").eq(index).attr("disabled", true);
			$("input[id^='not_take_']").eq(index).attr("checked", false);
		}
	}
}
// N수 작년도 수능 성적 관련 ==========================================================================================================

//임시 저장 버튼 1
function controlSaveButton1(){
	if($("span[id^=TP_EXAMSN]")[0].innerText != "" && $("span[id^=TP_EXAMSN]")[1].innerText != ""){ //전년도, 현재 년도 수능 파일 확인
		$("#partialSaveButton1").addClass("active"); //활성화
	}
	else{
		$("#partialSaveButton1").removeClass("active"); //비활성화
	}
}

//임시 저장 버튼 2
function controlSaveButton2(){
	if($("span[id^=TP_MEMPIC]")[0].innerText != ""){ //전년도, 현재 년도 수능 파일 확인
		$("#partialSaveButton2").addClass("active"); //활성화
	}
	else{
		$("#partialSaveButton2").removeClass("active"); //비활성화
	}
}

//임시 저장 버튼 3
function controlSaveButton3(questionCount){
	var isOkay = true;

	for (var index = 1; index <= questionCount; index++) {
		if(fnChkMinByte($("#SW_CONTENT" + index).val(), $("#ANSWER_MIN" + index).val())){
			isOkay = false;
			break;
		}
	}

	if(isOkay){ //전년도, 현재 년도 수능 파일 확인
		$("#partialSaveButton3").addClass("active"); //활성화
	}
	else{
		$("#partialSaveButton3").removeClass("active"); //비활성화
	}
}