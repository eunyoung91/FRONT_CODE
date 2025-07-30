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

// �������� �� �������� ���� Ŭ�� �Լ�
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
			alert("ó�� �� ������ �߻��Ͽ����ϴ�.");
		},
	});
}

//���̾� ����
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

//���̾� �ݱ�
function toggleFindLayerClose() {
	var targetPop = $("#divAppUnivList");
	var dim = $(".pop_team_dim");

	$("body").css("overflow-y", "scroll");
	dim.css("display", "none");
	$(targetPop).css("display", "none");
}

// �������� �� ���� �˻� ��ư �Լ�
function goAppUnivSearch(type) {
	var fo = document.foAppUnivSearch;

	fo.getUnivName.value = spaceRemove2(fo.getUnivName.value);

	if (fo.getUnivName.value.length < 2) {
		alert("�б����� �� �� �̻� �Է��ϼ���.");
		fo.getUnivName.select();
		return;
	}
	/*
	if (fo.getCollectUnit.value == "") {
		alert("������������ �Է��ϼ���.");
		fo.getCollectUnit.focus();
		return;
	}*/
	if (fo.getUnivName.value == "����") {
		fo.getUnivName.value = "�����";
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
			alert("ó�� �� ������ �߻��Ͽ����ϴ�.");
		},
	});
}

// �������� ���� �����ֱ�
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
			alert("ó�� �� ������ �߻��Ͽ����ϴ�.");
		},
	});
}

function spaceRemove2(str) {
	while (str.indexOf(" ") >= 0)
		str = str.replace(" ", "");
	return str;
}

function keyEnterToFunc(strObj) {
	//eval �ſ� ���� ����!
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
			alert("���ڸ� �Է��� �ּ���.");
			oElem.value = "";
			oElem.focus();
			return false;
		}

		if (!(val >= nMinVal && val <= nMaxVal)) {
			alert(nMinVal + "~" + nMaxVal + " ���� �Է��� �� �ֽ��ϴ�.");
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
				alert("�̹� ������ �����Դϴ�.");
				form1.tam1_nm.value = "";
				return;
			}
		}
	}

	if (cnt == 2) {
		if (form1.tam2_nm.value != "") {
			if (form1.tam2_nm.value == form1.tam1_nm.value) {
				alert("�̹� ������ �����Դϴ�.");
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
	if (f.tam_gb.value == "��ȸŽ��") {
		sn_tam_change();
	}
	else if (f.tam_gb.value == "����Ž��") {
		sn_tam_change();
	}
	else if (f.tam_gb.value == "����Ž��") {
		sn_tam_change();
	}
}

// *************************************************************
// �ؽ�Ʈ�ڽ� �Է����� ���ڸ� �Է��� ����Ѵ�.
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
			oEvent.preventDefault(); //IE11��
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

// �̹�������
function delPicView(tid, filetype) {
	if(confirm("��ϵ� ������ �����Ͻðڽ��ϱ�?") == false){
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
	var maxByte = maxBytei; //�ִ� �Է� ����Ʈ ��
	var str = document.getElementById(objnm).value;
	var str_len = str.length;

	var rbyte = 0;
	var rlen = 0;
	var one_char = "";
	var str2 = "";

	for (var i = 0; i < str_len; i++) {
		one_char = str.charAt(i);

		if (escape(one_char).length > 4) {
			rbyte += 2; //�ѱ�2Byte
		}
		else {
			rbyte++; //���� �� ������ 1Byte
		}

		if (rbyte <= maxByte) {
			rlen = i + 1; //return�� ���ڿ� ����
		}
	}

	controlSaveButton3($("textarea[name^=SW_CONTENT]").length);

	if (rbyte > maxByte) {
		var byteWithComma1 = new Intl.NumberFormat().format(maxByte);
		var byteWithComma2 = new Intl.NumberFormat().format(maxByte / 2);
		// alert("�ѱ� " + maxByte / 2 + "�� / ���� " + maxByte + "�ڸ� �ʰ� �Է��� �� �����ϴ�.");
		alert("�Է� ������ ���ڼ��� �ʰ��߽��ϴ�.\n�ִ� " + byteWithComma2 + "��(" + byteWithComma1 + "byte)���� �Է� �����մϴ�.");
		str2 = str.substr(0, rlen); //���ڿ� �ڸ���
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
			rbyte += 2; //�ѱ�2Byte
		}
		else {
			rbyte++; //���� �� ������ 1Byte
		}

		if (rbyte <= minByte) {
			rlen = i + 1; //return�� ���ڿ� ����
		}
	}

	if (rbyte < minByte) {
		return true;
	}
	else {
		return false;
	}
}

// �̿��� ��� üũ
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

// �̿��� ���Ǿ��� üũ�� ��ü���� ����
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

// ���� ��ȿ�� �˻� (�������� ��ư Ȱ��ȭ üũ���� type �� �߰��ؼ� ó��)
var snScoreCheck = function(type, mode, hakYear, hakPrevYear) {
	//type != "" alert ����� �ʴ´�

	var oForm = document.getElementById("form_proc_my_univ");
	var yecheneungF = oForm.yecheneungF.value;

	// �۳� ���ɼ��� üũ S
	if (mode == "11") {
		//N�� �϶��� üũ
		var LastExamEnterYN = oForm.LastExamEnterYN.value;

		if (LastExamEnterYN == "Y") {
			if (oForm.sel_1.value.length < 1 && oForm.not_take_2.checked == false) {
				if (type == "") {
					alert("���� ������ �����ϼ���.");
					oForm.sel_1.focus();
				}
				return false;
			}

			if (oForm.sel_2.value.length < 1 && (oForm.not_take_4.checked == false || oForm.not_take_5.checked == false)) {
				if (type == "") {
					alert("Ž�� ������ �����ϼ���.");
					oForm.sel_2.focus();
				}
				return false;
			}

			if (oForm.sel_4.value.length < 1 && oForm.not_take_4.checked == false) {
				if (type == "") {
					alert("Ž��1 ������ �����ϼ���.");
					oForm.sel_4.focus();
				}
				return false;
			}

			if (oForm.sel_5.value.length < 1 && oForm.not_take_5.checked == false) {
				if (type == "") {
					alert("Ž��2 ������ �����ϼ���.");
					oForm.sel_5.focus();
				}
				return false;
			}

			// ��2�ܱ��� üũ
			if (oForm.sel_8.value.length > 0) {
				if (oForm.W_8.value.length < 1) {
					if (type == "") {
						alert("ǥ�������� �Էµ��� �ʾҽ��ϴ�.");
						oForm.W_8.focus();
					}
					return false;
				}
				if (oForm.Percent_8.value.length < 1) {
					if (type == "") {
						alert("������� �Էµ��� �ʾҽ��ϴ�.");
						oForm.Percent_8.focus();
					}
					return false;
				}
				if (oForm.Grade_8.value.length < 1) {
					if (type == "") {
						alert("����� �Էµ��� �ʾҽ��ϴ�.");
						oForm.Grade_8.focus();
					}
					return false;
				}
			}

			if (oForm.W_8.value.length > 0 || oForm.Percent_8.value.length > 0 || oForm.Grade_8.value.length > 0) {
				if (oForm.sel_8.value.length < 1) {
					if (type == "") {
						alert("��2�ܱ�� �������ּ���.");
						oForm.sel_8.focus();
					}
					return false;
				}
			}
			if (oForm.W_1.value.length < 1 && oForm.not_take_1.checked == false) {
				if (type == "") {
					alert("���� ǥ�������� �Էµ��� �ʾҽ��ϴ�.");
					oForm.W_1.focus();
				}
				return false;
			}
			else {
				if ((oForm.W_1.value < 1 || oForm.W_1.value > 200) && oForm.not_take_1.checked == false) {
					if (type == "") {
						alert("������ 1~200���� �Է� �����մϴ�.");
						oForm.W_1.focus();
					}
					return false;
				}
			}

			if (oForm.W_2.value.length < 1 && oForm.not_take_2.checked == false) {
				if (type == "") {
					alert("���� ǥ�������� �Էµ��� �ʾҽ��ϴ�.");
					oForm.W_2.focus();
				}
				return false;
			}
			else {
				if ((oForm.W_2.value < 1 || oForm.W_2.value > 200) && oForm.not_take_2.checked == false) {
					if (type == "") {
						alert("������ 1~200���� �Է� �����մϴ�.");
						oForm.W_2.focus();
					}
					return false;
				}
			}

			if (oForm.W_4.value.length < 1 && oForm.not_take_4.checked == false) {
				if (type == "") {
					alert("Ž��1 ǥ�������� �Էµ��� �ʾҽ��ϴ�.");
					oForm.W_4.focus();
				}
				return false;
			}
			else {
				if ((oForm.W_4.value < 1 || oForm.W_4.value > 100) && oForm.not_take_4.checked == false) {
					if (type == "") {
						alert("������ 1~100���� �Է� �����մϴ�.");
						oForm.W_4.focus();
					}
					return false;
				}
			}

			if (oForm.W_5.value.length < 1 && oForm.not_take_5.checked == false) {
				if (type == "") {
					alert("Ž��2 ǥ�������� �Էµ��� �ʾҽ��ϴ�.");
					oForm.W_5.focus();
				}
				return false;
			}
			else {
				if ((oForm.W_5.value < 1 || oForm.W_5.value > 100) && oForm.not_take_5.checked == false) {
					if (type == "") {
						alert("������ 1~100���� �Է� �����մϴ�.");
						oForm.W_5.focus();
					}
					return false;
				}
			}

			if (oForm.Percent_1.value.length < 1 && oForm.not_take_1.checked == false) {
				if (type == "") {
					alert("���� ������� �Էµ��� �ʾҽ��ϴ�.");
					oForm.Percent_1.focus();
				}
				return false;
			}
			else {
				if ((oForm.Percent_1.value < 1 || oForm.Percent_1.value > 100) && oForm.not_take_1.checked == false) {
					if (type == "") {
						alert("������� 1~100���� �Է� �����մϴ�.");
						oForm.Percent_1.focus();
					}
					return false;
				}
			}

			if (oForm.Percent_2.value.length < 1 && oForm.not_take_2.checked == false) {
				if (type == "") {
					alert("���� ������� �Էµ��� �ʾҽ��ϴ�.");
					oForm.Percent_2.focus();
				}
				return false;
			}
			else {
				if ((oForm.Percent_2.value < 1 || oForm.Percent_2.value > 100) && oForm.not_take_2.checked == false) {
					if (type == "") {
						alert("������� 1~100���� �Է� �����մϴ�.");
						oForm.Percent_2.focus();
					}
					return false;
				}
			}

			if (oForm.Percent_4.value.length < 1 && oForm.not_take_4.checked == false) {
				if (type == "") {
					alert("Ž��1 ������� �Էµ��� �ʾҽ��ϴ�.");
					oForm.Percent_4.focus();
				}
				return false;
			}
			else {
				if ((oForm.Percent_4.value < 1 || oForm.Percent_4.value > 100) && oForm.not_take_4.checked == false) {
					if (type == "") {
						alert("������� 1~100���� �Է� �����մϴ�.");
						oForm.Percent_4.focus();
					}
					return false;
				}
			}

			if (oForm.Percent_5.value.length < 1 && oForm.not_take_5.checked == false) {
				if (type == "") {
					alert("Ž��2 ������� �Էµ��� �ʾҽ��ϴ�.");
					oForm.Percent_5.focus();
				}
				return false;
			}
			else {
				if ((oForm.Percent_5.value < 1 || oForm.Percent_5.value > 100) && oForm.not_take_5.checked == false) {
					if (type == "") {
						alert("������� 1~100���� �Է� �����մϴ�.");
						oForm.Percent_5.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_1.value.length < 1 && oForm.not_take_1.checked == false) {
				if (type == "") {
					alert("���� ����� �Էµ��� �ʾҽ��ϴ�.");
					oForm.Grade_1.focus();
				}
				return false;
			}
			else {
				if ((oForm.Grade_1.value < 1 || oForm.Grade_1.value > 9) && oForm.not_take_1.checked == false) {
					if (type == "") {
						alert("����� 1~9���� �Է� �����մϴ�.");
						oForm.Grade_1.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_2.value.length < 1 && oForm.not_take_2.checked == false) {
				if (type == "") {
					alert("���� ����� �Էµ��� �ʾҽ��ϴ�.");
					oForm.Grade_2.focus();
				}
				return false;
			}
			else {
				if ((oForm.Grade_2.value < 1 || oForm.Grade_2.value > 9) && oForm.not_take_2.checked == false) {
					if (type == "") {
						alert("����� 1~9���� �Է� �����մϴ�.");
						oForm.Grade_2.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_3.value.length < 1 && oForm.not_take_3.checked == false) {
				if (type == "") {
					alert("���� ����� �Էµ��� �ʾҽ��ϴ�.");
					oForm.Grade_3.focus();
				}
				return false;
			}
			else {
				if ((oForm.Grade_3.value < 1 || oForm.Grade_3.value > 9) && oForm.not_take_3.checked == false) {
					if (type == "") {
						alert("����� 1~9���� �Է� �����մϴ�.");
						oForm.Grade_3.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_11.value.length < 1) {
				if (type == "") {
					alert("�ѱ��� ����� �Էµ��� �ʾҽ��ϴ�.");
					oForm.Grade_11.focus();
				}
				return false;
			}
			else {
				if (oForm.Grade_11.value < 1 || oForm.Grade_11.value > 9) {
					if (type == "") {
						alert("����� 1~9���� �Է� �����մϴ�.");
						oForm.Grade_11.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_4.value.length < 1 && oForm.not_take_4.checked == false) {
				if (type == "") {
					alert("Ž��1 ����� �Էµ��� �ʾҽ��ϴ�.");
					oForm.Grade_4.focus();
				}
				return false;
			}
			else {
				if ((oForm.Grade_4.value < 1 || oForm.Grade_4.value > 9) && oForm.not_take_4.checked == false) {
					if (type == "") {
						alert("����� 1~9���� �Է� �����մϴ�.");
						oForm.Grade_4.focus();
					}
					return false;
				}
			}

			if (oForm.Grade_5.value.length < 1 && oForm.not_take_5.checked == false) {
				if (type == "") {
					alert("Ž��2 ����� �Էµ��� �ʾҽ��ϴ�.");
					oForm.Grade_5.focus();
				}
				return false;
			}
			else {
				if ((oForm.Grade_5.value < 1 || oForm.Grade_5.value > 9) && oForm.not_take_5.checked == false) {
					if (type == "") {
						alert("����� 1~9���� �Է� �����մϴ�.");
						oForm.Grade_5.focus();
					}
					return false;
				}
			}
		}
		else {
			if (oForm.sn_exam_reason_sel.value.length < 1) {
				if (type == "") {
					alert("���ɹ����� ������ �����ϼ���.");
					oForm.sn_exam_reason_sel.focus();
				}
				return false;
			}

			if (oForm.sn_exam_reason_sel.value == "��Ÿ(�����Է�)") {
				if (oForm.sn_exam_reason_etc.value.length < 1) {
					if (type == "") {
						alert("���ɹ����� ������ �Է��ϼ���.");
						oForm.sn_exam_reason_etc.focus();
					}
					return false;
				}
			}
		}
	}
	// �۳� ���ɼ��� üũ E

	// �̹��⵵ ������� S
	if (oForm.lang_sel_nm.value.length < 1 && oForm.lang_not_take.checked == false) {
		if (type == "") {
			alert("���� ������ ������ �ּ���.");
			oForm.lang_sel_nm.focus();
		}
		return false;
	}

	if (yecheneungF == "N") {
		if (oForm.math_sel_nm.value.length < 1 && oForm.math_not_take.checked == false) {
			if (type == "") {
				alert("���� ������ ������ �ּ���.");
				oForm.math_sel_nm.focus();
			}
			return false;
		}
	}

	if (oForm.tam1_nm.value.length < 1 && oForm.tam1_not_take.checked == false) {
		if (type == "") {
			alert("Ž��1 ������ ������ �ּ���.");
			oForm.tam1_nm.focus();
		}
		return false;
	}

	if (oForm.tam2_nm.value.length < 1 && oForm.tam2_not_take.checked == false) {
		if (type == "") {
			alert("Ž��2 ������ ������ �ּ���.");
			oForm.tam2_nm.focus();
		}
		return false;
	}

	//���� �����ð� �ƴ϶��
	oForm.lang_sel_cd.value = oForm.lang_sel_nm.value.split("||")[0]; // ���� ���� �ڵ尪 �ֱ�
	if (oForm.lang_not_take.checked == false) {
		if (oForm.lang_spt.value.length < 1) {
			if (type == "") {
				alert("���� ������ �Է��� �ּ���.");
				oForm.lang_spt.focus();
			}
			return false;
		}
		if (oForm.lang_ppt.value.length < 1) {
			if (type == "") {
				alert("���� ������ �Է��� �ּ���.");
				oForm.lang_ppt.focus();
			}
			return false;
		}
		if (oForm.lang_gpt.value.length < 1) {
			if (type == "") {
				alert("���� ������ �Է��� �ּ���.");
				oForm.lang_gpt.focus();
			}
			return false;
		}
	}

	if (yecheneungF == "N") {
		//���� �����ð� �ƴ϶��
		oForm.math_sel_cd.value = oForm.math_sel_nm.value.split("||")[0]; // ���� ���� �ڵ尪 �ֱ�
		if (oForm.math_not_take.checked == false) {
			if (oForm.math_spt.value.length < 1) {
				if (type == "") {
					alert("���� ������ �Է��� �ּ���.");
					oForm.math_spt.focus();
				}
				return false;
			}
			if (oForm.math_ppt.value.length < 1) {
				if (type == "") {
					alert("���� ������ �Է��� �ּ���.");
					oForm.math_ppt.focus();
				}
				return false;
			}
			if (oForm.math_gpt.value.length < 1) {
				if (type == "") {
					alert("���� ������ �Է��� �ּ���.");
					oForm.math_gpt.focus();
				}
				return false;
			}
		}
	}

	//���� �����ð� �ƴ϶��
	if (oForm.eng_not_take.checked == false) {
		if (oForm.eng_gpt.value.length < 1) {
			if (type == "") {
				alert("���� ������ �Է��� �ּ���.");
				oForm.eng_gpt.focus();
			}
			return false;
		}
	}

	if (oForm.tam3_gpt.value.length < 1) {
		if (type == "") {
			alert("�ѱ��� ������ �Է��� �ּ���.");
			oForm.tam3_gpt.focus();
		}
		return false;
	}

	//Ž������1 �����ð� �ƴ϶��
	if (oForm.tam1_not_take.checked == false) {
		if (oForm.tam1_spt.value.length < 1) {
			if (type == "") {
				alert("Ž��1 ������ �Է��� �ּ���.");
				oForm.tam1_spt.focus();
			}
			return false;
		}
		if (oForm.tam1_ppt.value.length < 1) {
			if (type == "") {
				alert("Ž��1 ������ �Է��� �ּ���.");
				oForm.tam1_ppt.focus();
			}
			return false;
		}
		if (oForm.tam1_gpt.value.length < 1) {
			if (type == "") {
				alert("Ž��1 ������ �Է��� �ּ���.");
				oForm.tam1_gpt.focus();
			}
			return false;
		}
	}

	//Ž������2 �����ð� �ƴ϶��
	if (oForm.tam2_not_take.checked == false) {
		if (oForm.tam2_spt.value.length < 1) {
			if (type == "") {
				alert("Ž��2 ������ �Է��� �ּ���.");
				oForm.tam2_spt.focus();
			}
			return false;
		}
		if (oForm.tam2_ppt.value.length < 1) {
			if (type == "") {
				alert("Ž��2 ������ �Է��� �ּ���.");
				oForm.tam2_ppt.focus();
			}
			return false;
		}
		if (oForm.tam2_gpt.value.length < 1) {
			if (type == "") {
				alert("Ž��2 ������ �Է��� �ּ���.");
				oForm.tam2_gpt.focus();
			}
			return false;
		}
	}

	if (oForm.for_nm.value.length > 0 && oForm.for_gpt.value.length < 1) {
		if (type == "") {
			alert("��2�ܱ��� ������ �Է��� �ּ���.");
			oForm.for_gpt.focus();
		}
		return false;
	}
	if (oForm.for_nm.value.length == 0 && (oForm.for_gpt.value.length > 0)) {
		if (type == "") {
			alert("��2 �ܱ��� ������ ������ �ּ���.");
			oForm.for_nm.focus();
		}
		return false;
	}
	// �̹��⵵ ������� E

	if (mode == "11") {
		//N�� �϶��� üũ
		if ($("input:radio[name='sn_exam_yn']:checked").val() == "Y") {
			if (oForm.TP_EXAMSNLAST_YN.value != "Y") {
				if (type == "") {
					// alert(hakPrevYear + "�г⵵ ���� ����ǥ�� ����ϼ���.");
					alert("���� ����ǥ�� ��� ����� �ּ���");
					fnScrollMove("#examArea1");
				}
				return false;
			}
		}
	}

	if (oForm.TP_EXAMSN_YN.value != "Y") {
		if (type == "") {
			// alert(hakYear + "�г⵵ ���� ����ǥ�� ����ϼ���.");
			alert("���� ����ǥ�� ��� ����� �ּ���");
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

// ����/���� ���ð��� ���ý� ������� �ڵ尪 ����
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

// ������ disabled ó�� 2020-12-18
function fnDisableChk(lec) {
	var vSrcType = document.getElementsByName(lec + "_nm")[0];
	var vSrcPyo = document.getElementsByName(lec + "_spt")[0];
	var vSrcBack = document.getElementsByName(lec + "_ppt")[0];
	var vSrcRank = document.getElementsByName(lec + "_gpt")[0];
	var vSrcNotTake = Number($(vSrcType).val());

	//�����ö��
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

//���� ������ �Է�
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

// ����/�����̿� ������ ���ý�
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
			//����� ǥ������, ������� ���� "������"
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
			//����� ǥ������, ������� ���� "������"
			vSrcSpt.disabled = "";
			vSrcPpt.disabled = "";
		}
		vSrcGpt.disabled = "";
	}
}

//���⵵ ���� ������ �Է�
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

// �����ڷ� ����ϱ�
var snScoreX = function(mode, area) {
	var oForm = document.getElementById("form_proc_my_univ");
	oForm.form_mode.value = mode;

	if (oForm.TP_MEMPIC_YN.value != "Y") {
		alert("��������� ����� �ּ���");
		fnScrollMove("#examArea3");
		return false;
	}
	// ������ �������� ��ü �������� üũ(A: ��ü����, P: ��������)
	if (area == "P") {
		oForm.target = "runSource";
		oForm.action = "./challenge_write_save.asp";
		oForm.submit();
	}
	return true;
}

// ���� ���
function SW_REGCHECK(mode, area, questionCount) {
	if (questionCount == 0) { //�˻��� ������ �����Ƿ�
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
	if(isSugiEmpty == true){ //���⸦ ��� ���Է��� ���
		alert("�հݼ��⸦ ��� ����� �ּ���.");

		$("html").animate({
			scrollTop : $("#info_step3").offset().top - 20 //�հݼ��� �������� �̵�
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

				// alert("�ּ� " + $("#ANSWER_MIN" + index).val() + "byte �̻� ����� �ּ���.");
				alert("�ּ� " + byteWithComma2 + "��(" + byteWithComma1 + "byte) �̻� �Է��� �ּ���.");

				$("html").animate({
					scrollTop : $("#SW_CONTENT" + index).offset().top - (screen.height / 2) + ($("#SW_CONTENT" + index).height())
				}, 500);
				$("#SW_CONTENT" + index).focus();

				return false;
			}

			if (index == 2) {
				if ($("#SW_CONTENT" + index).val().indexOf("���п�") == -1) {
					alert("\"���п�\" Ű���带 ������ �ۼ��� �ּ���.");

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
		alert("�հݼ��⸦ ��� ����� �ּ���.");

		$("html").animate({
			scrollTop : $("#" + problemSugiID).offset().top - (screen.height / 2) + ($("#" + problemSugiID).height())
		}, 500);
		$("#" + problemSugiID).focus();

		return false;
	}

	var oForm = document.getElementById("form_proc_my_univ");
	oForm.form_mode.value = mode;

	// ������ �������� ��ü �������� üũ(A: ��ü����, P: ��������)
	if (area == "P") {
		oForm.target = "runSource";
		oForm.action = "./challenge_write_save.asp";
		oForm.submit();
	}
	return true;
}

// ���������ϱ� ��ư Ȱ��ȭ ��Ű��
var TpCompleteCheckMain = function(type) {
	if (TpCompleteCheck(type) == true) {
		$("#TpCompleteBtn").attr("class", "btn_apply on");
	}
	else {
		$("#TpCompleteBtn").attr("class", "btn_apply");
	}
}

// ���������ϱ�
function TPCOMPLETEREG(questionCount) {
	var frmInfo = document.getElementById("form_proc_my_univ");

	var univChk = procMyUniv('proc_univ_state', 's', 'A'); // ���� ���а� ���� �Է� üũ
	if (!univChk) {
		return false;
	}
	var scrChk = snScoreX('proc_mega_state', 'A'); // ���� ���� ���� üũ
	if (!scrChk) {
		return false;
	}
	var srChk = SW_REGCHECK('proc_mega_state', 'A', questionCount); // ���� �ۼ� üũ
	if (!srChk) {
		return false;
	}
	// ��� ����
	var PrivateInfoAgree = $(':radio[name="private_info_agree1"]:checked').val();

	if (PrivateInfoAgree == "N") {
		alert("�������� Ȱ�� ���ǿ� ��� �����ϼž� ���� ������ �����մϴ�.");
		frmInfo.private_info_agree1[0].focus();
		return false;
	}

	var maketInfoAgree = $(':radio[name="private_info_agree2"]:checked').val();

	if (maketInfoAgree == "N") {
		alert("�������� Ȱ�� ���ǿ� ��� �����ϼž� ���� ������ �����մϴ�.");
		frmInfo.private_info_agree2[0].focus();
		return false;
	}

	if (confirm("���� ���� �Ŀ��� ������ �Ұ��մϴ�.\n�����Ͻðڽ��ϱ�?")) {
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

// N�� �۳⵵ ���� ���� ���� ==========================================================================================================
//Ư�� ä���� �����ϸ� �ش� ī�װ��� ���� ; sbk 2013-11-22
function BuildCatsSBK(num) {
	var fo = document.form_proc_my_univ;

	fo.sel_4.length = Cats[num].length;
	fo.sel_5.length = Cats[num].length;

	// 2014�г⵵���� Ž�� 2���� ; sbk 2013-11-25
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
		// 2014�г⵵���� Ž�� 2���� ; sbk 2013-11-25
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
	if (objNm == "sel_1") { //��������
		myform.sel_3.selectedIndex = 0; //�����׸����� �̵�
		if (myform.sel_1.value == "2100") {
			myform.sel_3.disabled = false; //������ (����)
		}
		else {
			myform.sel_3.disabled = true; //������ (����)
		}
	}
	if (objNm == "sel_2") { //Ž������
		// 2014�г⵵���� ���� ���� ; sbk 2013-11-22
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

// 2014�г⵵ Ž������ 2�� �� �Լ� ; sbk 2013-11-25
function compareSbj(obj) {
	var fo = document.form_proc_my_univ;
	if (obj.value > "" && fo.sel_4.value == fo.sel_5.value) {
		alert('�̹� ������ �����Դϴ�.');
		obj.selectedIndex = 0;
		obj.focus();
		return false;
	}
}

function jsLecSelect() {
	var f = document.form_proc_my_univ;

	fnconchr('sel_2'); // Ž�� ���ùڽ� ���� ä���

	// Ž�� ���ùڽ� ���� ���峻�� ���� ; sbk 2013-11-22
	for (i = 0; i < f.sel_4.length; i++)
		if (f.sel_4[i].value == f.txtSaveSel_4SelectIndex.value)
			f.sel_4.selectedIndex = i;
	for (i = 0; i < f.sel_4.length; i++)
		if (f.sel_5[i].value == f.txtSaveSel_5SelectIndex.value)
			f.sel_5.selectedIndex = i;

	// 2014�г⵵���� Ž�� 2���� ; sbk 2013-11-25
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
	if (selval == "��Ÿ(�����Է�)") {
		//document.getElementById('sn_exam_span_sel').style.display ="none";
		document.getElementById('sn_exam_span_etc').style.display = "inline";
	}
	else {
		//document.getElementById('sn_exam_span_sel').style.display ="inline";
		document.getElementById('sn_exam_span_etc').style.display = "none";
	}
}

function LastExamEnterCheck(chkval) {
	//���⵵ ���� ����-������
	if (chkval == "Y") {
		document.getElementById('sn_exam_span_etc').style.display = "none";
		document.getElementById('LastExamEnterYN').value = "Y";
		document.getElementById('sn_exam_span_sel').style.display = "none";
		$('#examuInputArea1').removeClass("disabled");
		$('#TP_EXAMSNLAST_REALFILENM').removeClass("disabled");
		$('#TP_EXAMSNLAST_REALFILENM_BTN').removeClass("disabled");
		$('#TP_EXAMSNLAST_REALFILENM_BTN').attr("href", "javascript:openPicWin('EXAMSNLAST','TP_EXAMSNLAST')");

		//id^='abcd_' -> "abcd_"�� �����ϴ� ID ��
		for (var index = 0; index < $("select[id^='sel_']").length; index++) { //���� ����
			$("select[id^='sel_']").eq(index).attr("disabled", false);
		}
		for (var index = 0; index < $("input[id^='W_']").length; index++) { //ǥ������
			$("input[id^='W_']").eq(index).attr("disabled", false);
		}
		for (var index = 0; index < $("input[id^='Percent_']").length; index++) { //�����
			$("input[id^='Percent_']").eq(index).attr("disabled", false);
		}
		for (var index = 0; index < $("input[id^='Grade_']").length; index++) { //���
			$("input[id^='Grade_']").eq(index).attr("disabled", false);
		}
		for (var index = 0; index < $("input[id^='not_take_']").length; index++) { //���� ������
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

		//id^='abcd_' -> "abcd_"�� �����ϴ� ID ��
		for (var index = 0; index < $("select[id^='sel_']").length; index++) { //���� ����
			$("select[id^='sel_']").eq(index).attr("disabled", true);
		}
		for (var index = 0; index < $("input[id^='W_']").length; index++) { //ǥ������
			$("input[id^='W_']").eq(index).attr("disabled", true);
		}
		for (var index = 0; index < $("input[id^='Percent_']").length; index++) { //�����
			$("input[id^='Percent_']").eq(index).attr("disabled", true);
		}
		for (var index = 0; index < $("input[id^='Grade_']").length; index++) { //���
			$("input[id^='Grade_']").eq(index).attr("disabled", true);
		}
		for (var index = 0; index < $("input[id^='not_take_']").length; index++) { //���� ������
			$("input[id^='not_take_']").eq(index).attr("disabled", true);
			$("input[id^='not_take_']").eq(index).attr("checked", false);
		}
	}
}
// N�� �۳⵵ ���� ���� ���� ==========================================================================================================

//�ӽ� ���� ��ư 1
function controlSaveButton1(){
	if($("span[id^=TP_EXAMSN]")[0].innerText != "" && $("span[id^=TP_EXAMSN]")[1].innerText != ""){ //���⵵, ���� �⵵ ���� ���� Ȯ��
		$("#partialSaveButton1").addClass("active"); //Ȱ��ȭ
	}
	else{
		$("#partialSaveButton1").removeClass("active"); //��Ȱ��ȭ
	}
}

//�ӽ� ���� ��ư 2
function controlSaveButton2(){
	if($("span[id^=TP_MEMPIC]")[0].innerText != ""){ //���⵵, ���� �⵵ ���� ���� Ȯ��
		$("#partialSaveButton2").addClass("active"); //Ȱ��ȭ
	}
	else{
		$("#partialSaveButton2").removeClass("active"); //��Ȱ��ȭ
	}
}

//�ӽ� ���� ��ư 3
function controlSaveButton3(questionCount){
	var isOkay = true;

	for (var index = 1; index <= questionCount; index++) {
		if(fnChkMinByte($("#SW_CONTENT" + index).val(), $("#ANSWER_MIN" + index).val())){
			isOkay = false;
			break;
		}
	}

	if(isOkay){ //���⵵, ���� �⵵ ���� ���� Ȯ��
		$("#partialSaveButton3").addClass("active"); //Ȱ��ȭ
	}
	else{
		$("#partialSaveButton3").removeClass("active"); //��Ȱ��ȭ
	}
}