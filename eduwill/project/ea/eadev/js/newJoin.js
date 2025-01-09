$(function () {
	// event binding
	$(document).on("click", ".type-select .btn", function () {
		$(this).addClass("active").siblings(".btn").removeClass("active");

		showBenefit();
	});
	
	$(".terms-all input[type=checkbox]").change(function () {
		if ($(this).is(':checked')) {
			$(".terms-bx input[type=checkbox]").prop("checked", true);
			$(".terms-bx").slideUp();
		} else {
			$(".terms-bx input[type=checkbox]").prop("checked", false);
			$(".terms-bx").slideDown();
		}
	});

	$(".item-add-all input[type=checkbox]").change(function () {
		if ($(this).is(':checked')) {
			$(".item-add input[type=checkbox]").prop("checked", true);
		} else {
			$(".item-add input[type=checkbox]").prop("checked", false);
		}
	});

	$(".item-add input[type=checkbox]").change(function () {
		var a = $(".item-add input[type=checkbox]");
		if (a.length == a.filter(":checked").length) {
			$(".item-add-all input[type=checkbox]").prop("checked", true);
		} else {
			$(".item-add-all input[type=checkbox]").prop("checked", false);
		}
	});

	$(".terms-bx input[type=checkbox]").change(function () {
		var a = $(".terms-bx input[type=checkbox]");
		if (a.length == a.filter(":checked").length) {
			$(".terms-all input[type=checkbox]").prop("checked", true);
			$(".terms-bx").slideUp();
		}
	});
	
	$("#date, #hp, #certCode").keyup(function (event) {
		checkIsNum($(this).attr("id"));
	});
});

// 아이디 검증1
function usrIdCheck() {
	var usrId = $("#usrId").val();
	var pattern = /^[a-z0-9]{6,13}$/;
	if(usrId.length < 1) {
		$("#idChkResultMsg").text("아이디를 입력해주세요.");
		$("#idChkResultMsg").parent().show()
		$("#usrIdChk").hide();
		return false;
	} else {
		if(!pattern.test(usrId)) {
			$("#idChkResultMsg").text("영문 소문자, 숫자를 사용한 6~13자를 입력해주세요.");
			$("#idChkResultMsg").parent().show();
			$("#usrIdChk").hide();
			return false;
		} else {
			if(usrId.length >= 6 && usrId.length <= 13) {
				return this.sendIdCheck(usrId, 'join');
			}
		}
	}
};

// 추천인 아이디 검증
function targetIdCheck() {
	var usrId = $("#targetId").val();
	
	if(usrId.length >= 6 && usrId.length <= 13) {
		return this.sendIdCheck(usrId, 'reward');
	} else {
		$("#targetIdChkResultMsg").text("영문 소문자, 숫자를 사용한 6~13자를 입력해주세요.");
		$("#targetIdChkResultMsg").parent().show();
		return false;
	}
};

// 아이디 검증2
function sendIdCheck(usrId, type) {
	$.ajax({
		type : "POST",
		url : "/join/ajaxidcheck.action",
		dataType : "json",
		data : {
			'usrId' : usrId
		},
		success : function(responseJSON) {
			if(type == 'join') {
				// 회원가입
				if(responseJSON.result.code == '0000') {
					$("#idChkResultMsg").parent().hide();
					$("#usrIdChk").show();
					idCheck = "Y";
				} else {
					$("#idChkResultMsg").text("이미 사용 중인 아이디입니다.");
					$("#idChkResultMsg").parent().show();
					$("#usrIdChk").hide();
					idCheck = "N";
				}
			} else if(type == 'reward') {
				// 리워드
				if(responseJSON.result.activeCnt > '0') {
					$("#targetIdChkResultMsg").parent().hide();
					$("#targetIdChk").show();
					rewardCheck = "Y";
				} else {
					$("#targetIdChkResultMsg").text("존재하지 않는 아이디입니다.");
					$("#targetIdChkResultMsg").parent().show();
					$("#targetIdChk").hide();
					rewardCheck = "N";
				}
			}
		}
	});

	if(type == 'reward') {
		return (rewardCheck == "Y") ? true : false;
	} else {
		return (idCheck == "Y") ? true : false;
	}
};

// 패스워드 유효성 검사
function pwdCheck() {
	var pwdStr = $("#pwd").val().trim();
	var pattern = /^.*(?=^.{8,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]).*$/;

	if(pwdStr.length > 0) {
		if(!pattern.test(pwdStr)) {
			$("#pwdChkResultMsg").parent().show();
			$("#pwdChk").hide();
			return false;
		} else {
			$("#pwdChkResultMsg").parent().hide();
			$("#pwdChk").show();
			if($("#pwd").val().length > 0) {
				return this.repwCheck();
			} else {
				return true;
			}
		}
	} else {
		//alert('비밀번호를 입력해주세요.');
		$("#pwd").val('');
		return false;
	}
};

// 패스워드 유효성 검사2
function repwCheck() {
	//pwd가 유효하지 않은경우 일치여부 확인 안함.
	var result = false;
	var pwdStr = $("#pwd").val().trim();
	var pattern = /^.*(?=^.{8,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]).*$/;
	if(pwdStr.length > 0) {
		if(!pattern.test(pwdStr)) {
			return false;
		}
	}

	if($("#pwd").val().length > 0 && $("#pwd2").val().length > 0) {
		if($("#pwd").val() == $("#pwd2").val()) {
			// 비밀번호 일치 
			result = true;
			$("#pwd2ChkResultMsg").parent().hide();
			$("#pwd2Chk").show();
		} else {
			$("#pwd2ChkResultMsg").parent().show();
			$("#pwd2Chk").hide();
		}
	} else {
		$("#pwd2ChkResultMsg").parent().show();
		$("#pwd2Chk").hide();
	}
	return result;
}

// 실명 검사
function checkIsKorean() {
	var val_id = "usrNm";
	var regexp = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
	var regexp_kor = /[^가-힣]/g;
	var v = $("#usrNm").val();
	if(v.length>1) {
		if(regexp.test(v)) {
			$("#usrNm").val(v.replace(regexp, ''));
			$("#usrNm").val(v.replace(regexp_kor, ''));
			$("#usrNmChkResultMsg").text("이름이 올바르지 않습니다.");
			$("#usrNmChkResultMsg").parent().show();
			$("#usrNmChk").hide();
			return false;
		} else if(regexp_kor.test(v)) {
			$("#usrNm").val(v.replace(regexp_kor, ''));
			$("#usrNmChkResultMsg").text("이름이 올바르지 않습니다.");
			$("#usrNmChkResultMsg").parent().show();
			$("#usrNmChk").hide();
			return false;
		} else {
			$("#usrNmChkResultMsg").parent().hide();
			$("#usrNmChk").show();
			return true;
		}
	 } else {
		$("#usrNmChkResultMsg").text("이름을 입력해주세요.");
		$("#usrNmChkResultMsg").parent().show();
		$("#usrNmChk").hide();
		return false;
	}
}

// 성별 체크
function toggleSex(obj) {
	$(obj).toggleClass('in');
	if($(obj).hasClass("in")) {
		$("[name=sex]").val("F");
	} else {
		$("[name=sex]").val("M");
	}
}

// 이메일 유효성 검사
function emailCheck() {
	var email = $("#email01").val() + $("#email02").val();
	var pattern = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	if($("#email").val() == "" || !pattern.test(email)) {
		$("#emailChkResultMsg").parent().show();
		return false;
	} else {
		$("#emailChkResultMsg").parent().hide();
		return true;
	}
}

// 생년월일 유효성 검사
function dateCheck() {
	var flag = false;
	var date = $("#date").val().replaceAll("-", "").trim();
	var dateStr = date.replace(/\s/gi,"");
	var formatNum = dateStr;

	var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
	var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
	var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
	var today = new Date(); // 날짜 변수 선언
	var yearNow = today.getFullYear(); // 올해 연도 가져옴

	if (dateStr.length == 8) {
		if (1900 > year || year > yearNow) {	// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
			flag = false;
		} else if (month < 1 || month > 12) {
			flag = false;
		} else if (day < 1 || day > 31) {
			flag = false;
		} else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
			flag = false;
		} else if (month == 2) {
			var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
			if (day>29 || (day==29 && !isleap)) {
				flag = false;
			} else {
				flag = true;
			} //end of if (day>29 || (day==29 && !isleap))
		} else {
			flag = true;
		}//end of if
	}
	else {
		//1.입력된 생년월일이 8자 초과할때 :  auth:false
		flag = false;
	}

	if(dateStr.length >= 5) {
		formatNum = dateStr.replace(/(\d{4})(\d{1})/, '$1-$2');
	}
	if(dateStr.length >= 7) {
		formatNum = dateStr.replace(/(\d{4})(\d{2})(\d{1})/, '$1-$2-$3');
	}

	$("#date").val(formatNum);

	if(!flag) {
		$("#dateChkResultMsg").text("생년월일을 정확하게 입력해주세요.");
		$("#dateChkResultMsg").parent().show();
		$("#dateChk").hide();
		return false;
	} else {
		var age = age_kor(dateStr);
		if(age < 14) {
			$("#dateChkResultMsg").text("만 14세 미만의 아동은 가입할 수 없습니다.");
			$("#dateChkResultMsg").parent().show();
			$("#dateChk").hide();
			return false
		} else {
			$("#dateChkResultMsg").parent().hide();
			$("#dateChk").show();
			return true;
		}
	}
}

// 생년월일 만 나이 개산
function age_kor(birthday) {
	birthday = Number(birthday.replace(/-/gi,'')); // '-' 문자 모두 '' 변경
	
	let today = new Date(); // 오늘 날짜를 가져옴
	let yearNow = String(today.getFullYear()); // Date 객체의 년도를 가져옵니다.
	let monthNow = String(today.getMonth() + 1); // 객체의 월 정보를 가져옵니다. 1월은 0으로 표현됨을 주의해야 합니다. (0~11)
	let dayNow = String(today.getDate()); // Date 객체의 일자 정보를 가져옵니다. (0~31)

	monthNow = (monthNow < 10) ? '0' + monthNow : monthNow;
	dayNow = (dayNow < 10) ? '0' + dayNow : dayNow;

	today = Number(yearNow + monthNow + dayNow);   // 오늘날짜 숫자형으로 변환
	let age = Math.floor((today - birthday) / 10000);  // 소수점 버림
	// console.log(age);
	return age;
}

// 휴대번호 인증
function hpCheck() {
	var hp = $("#hp").val();

	if(hp.length < 10 || hp.length > 11) {
		$("#hpChkResultMsg").text("휴대폰 번호를 정확히 입력해 주세요.");
		$("#hpChkResultMsg").parent().show();
		$("#hpChk").hide();
		$("#hp").focus();
		return false;
	}

	$.ajax({
		type : "POST",
		url : "/join/ajaxsms.action",
		dataType : "json",
		data : {
			'hp' : hp,
			'sendType' : 'join2'
		},
		success : function(responseJSON) {
			if(responseJSON.result.code == '0000') {
				alert(responseJSON.result.msg);
				sendSms = "Y";
				$("#hpChkBtn").text("다시발송");
				$("#hpChkResultMsg").parent().hide();
				// $("#hpChk").show();
				$("#certGroup").show();
				$("#certCode").focus();
				smsTimer();
				// 개발서버에서만 발송
				if(responseJSON.result.mobileCode) {
					alert(responseJSON.result.mobileCode);
				}
				return true;
			} else {
				$("#hpChkResultMsg").text(responseJSON.result.msg);
				$("#hpChkResultMsg").parent().show();
				$("#hpChk").hide();
			}
			$("#hp").val(hp);
		},
		error : function() {
			alert('인증번호를 전송하는 중에 오류가 발생했습니다.');
		}
	});
}

// 인증번호 검사
function confirmMobileCheck() {
	if(sendSms == "N") {
		alert('휴대폰 번호 입력 후 인증번호 버튼을 눌러 인증번호를 확인해주세요.');
		return false;
	}

	if($("#certCode").val() =="") {
		alert("인증번호를 입력해 주세요.");
		return false;
	}

	$.ajax({
		type : "POST",
		url : "/join/ajaxDuplicatedUserCheck.action",
		dataType : "json",
		async: false,
		data : {
			'hp' : $("#hp").val(),
			'certiNo' : $("#certCode").val()
		},
		success : function(result) {
			if(result.code == '0000') {
				mobileCheck = "Y";
				$("#hp, #certCode").attr("readonly", true);
				$("#hpChkBtn").hide();
				$("#certBtn").hide();
				$("#certChk").show();
				$("#hpChk").show();
				$("#hpTimer").hide();
				
			} else if(result.code != '0000') {
				alert("인증번호가 일치하지 않습니다.");
				mobileCheck = "N";
				$("#hp, #certCode").attr("readonly", false);
				$("#hpChkBtn").show();
				$("#certBtn").show();
				$("#certChk").hide();

				$("#certCode").val('');
				$("#certCode").focus();
			}
		}
	});
	return (mobileCheck == "Y") ? true : false;
};

// 숫자만 입력
function checkIsNum(val_id) {
	var regexp = /[^0-9]/gi;
	if(val_id == 'date') {
		regexp = /[^0-9-]/gi;
	}
	var v = $("#"+val_id).val();
	if(regexp.test(v)) {
		$($("#"+val_id )).val(v.replace(regexp, ''));
	}
};

// 친구 추천 입력 값 세팅
function setRewardPoll(obj, val) {
	$("#"+obj).val(val);
}

// 1depth 선택
function findSubCategory(obj) {
	var value = $(obj).val();
	var title = $(obj).data("title");
	
	$("#progressCd").val('');
	$("#prgGroup").hide();	// 과정분류 숨김
	$("#prpGroupNm").text(title);
	$("#prpGroupNm").parents(".group").show();
	$("#searchText").parents(".group").hide();
	$(".search-list").hide();
	
	// 2depth 조회
	$.ajax({
		type : "POST",
		url : "/join/ajaxFindSubCategory.action",
		dataType : "json",
		async : false,
		data : {'groupNo' : value},
		success : function(responseJSON) {
			var result = responseJSON.result.progressList;
			var htmlTag = "";
			if($(result).size() > 0) {
				$.each(result, function(){
					var prgs = $(this)[0];
					htmlTag += '<button type="button" class="btn btn-default" onclick="findFavoritePart(this);" value="'+prgs.PROGRESS_CD+'" data-title="'+prgs.PROGRESS_NM+'">'+prgs.PROGRESS_NM+'</button>';
				});
			}
			$("#progressList").html(htmlTag);
			$("#progressGroup").show();
		}
	});
}

// 2depth 선택
function findFavoritePart(obj) {
	var progressCd = $(obj).val();
	var progressNm = $(obj).data("title");
	var groupCd = progressCd + "_FAV_";
	
	$("#progressGroup").hide();	// 중분류 선택 숨김 
	$("#progressCd").val(progressCd);
	$("#progressNm").text(progressNm);
	$("#progressNm").parents(".group").show();
	
	// 3depth 조회
	$.ajax({
		type : "POST",
		url : "/join/ajaxFindFavoritePart.action",
		dataType : "json",
		async : false,
		data : {'groupCd' : groupCd},
		success : function(responseJSON) {
			var result = responseJSON.result.favorSort;
			$("#favGroup").html('');
			
			if(result.length > 0) {
				
				$.each(result, function(index){
					var _this = $(this)[0];
					var inputNm = _this.GROUP_CODE.replace(groupCd, "");
					var htmlTag = "";
					
					htmlTag += '<div class="group">';
					htmlTag += '		<label class="form-label color-active">상세분류를 선택하세요</label>';
					htmlTag += '	<div class="search-box type-select tier-2 favoritePartList">';
					$.each(_this.favorPart, function(){
					htmlTag += '		<button type="button" class="btn btn-default '+inputNm+'" onclick="setFavoritePart(this,\''+inputNm+'\','+index+');" value="'+$(this)[0].CODE_VALUE+'" data-title="'+$(this)[0].CODE_TITLE+'" data-desc="'+$(this)[0].CODE_DESC+'">'+$(this)[0].CODE_TITLE+'</button>';
					});
					htmlTag += '	</div>';
					htmlTag += '</div>';
					htmlTag += '<div class="group" style="display: none;">';
					htmlTag += '	<div class="search-box type-result">';
					htmlTag += '		<label class="form-label">상세분류</label>';
					htmlTag += '		<div class="form-control favoritePartNm"></div>';
					htmlTag += '		<a href="#" class="action btn-circle-x" onclick="cancelProgress(\'favoritePart\',\''+inputNm+'\','+index+'); return false;"><i class="icon icon-circle-x"></i></a>';
					htmlTag += '	</div>';
					htmlTag += '</div>';
					
					if(htmlTag != "") {
						$("#favGroup").append(htmlTag);
					}
				});			
			}	
			$("#favGroup").show();
		}
	});
}

// 3depth 선택
function setFavoritePart(obj, inputNm, index) {
	var value = $(obj).val();
	var title = $(obj).data("title");
	
	$(".favoritePartList").eq(index).parent().hide();
	$(".favoritePartNm").eq(index).text(title);
	$(".favoritePartNm").eq(index).parents(".group").show();
	
	fnAddElement('formStepInfo', inputNm, 'favoritePart', value);
}

// input 생성
function fnAddElement(fNm, nm, classNm, value) {
	var theForm = document.forms[fNm];
	if (theForm.elements[nm] == null){
		var input = document.createElement('input');
		input.type = 'hidden';
		input.name = nm;
		input.className = classNm;
		input.id = nm;
		input.value = value;
		theForm.appendChild(input);
	} else {
		$("[name="+nm+"]").val(value);
	}
}

// 관심과정 선택 취소
function cancelProgress(type, inputNm, index) {
	$(".type-select .btn").removeClass("active");
	
	if(type == 'all') {
		// 1depth 초기화
		$("#prpGroupNm").parents(".group").hide();	// 과정분류
		$("#progressGroup").hide();
		$("#progressNm").parents(".group").hide();	// 중분류
		$("#prgGroup").show();
		$("#favGroup").hide();						// 상세분류
		$("#favGroup").html('');
		
		$(".search-list").hide();					// 검색영역
		$("#searchText").parents(".group").show();
		$("#searchText").val('');

		$("#progressCd").val('');
		$(".favoritePart").val('');
		$(".join-benefit").hide();
		
	} else if(type == 'progress') {
		// 2depth 초기화
		$("#progressGroup").show();  
		$("#progressNm").parents(".group").hide();
		$("#favGroup").hide();
		$("#favGroup").html('');
		
		$("#progressCd").val('');
		$(".favoritePart").val('');
		$(".join-benefit").hide();
		
	} else if(type == 'favoritePart') {
		// 3depth 초기화
		$(".favoritePart").eq(index).val('');
		$(".favoritePartList").eq(index).parent().show();
		$(".favoritePartNm").eq(index).parents(".group").hide();
		
		$("[name="+inputNm+"]").val('');
		$(".join-benefit").hide();
	}
}

// 관심과정 검색
function searchProgress(e, obj) {
	var searchText = $(obj).val().trim();
	
	if (e.keyCode != 38 && e.keyCode != 40 && e.keyCode != 13) {	//상,하,엔터키 아닌경우만
		if(searchText.length >= 2) {
			$.ajax({
				type:"post"
				,url:"/join/ajaxSearchProgressAutocomplete"
				,data: {
					searchText : searchText
				}
				,dataType:"json"
				,success: function(data) {
					var result = data;
					var html = '';
					
					if(result.length > 0) {
						$.each(result, function(index){
							this.searchText = this.searchText.replaceAll(searchText, '<em>'+searchText+'</em>');
							html += '<a href="#" onclick="setProgress(\''+this.refGroupNo+'\', \''+this.progressCd+'\', \''+this.favoritePart +'\', \''+this.groupCode +'\'); return false;">' + this.searchText +'</a>'
						});
						$(".search-list").html(html);
						$(".search-list").show();
						$("#search-error").hide();
						
					} else {
						$(".search-list").hide();
						$("#search-error").show();
					}
					
				}
				,error: function(responseJSON, status, err) {
					//alert(err);
				}
			});
		}
	}
}

// 관심과정 선택
function setProgress(refGroupNo, progressCd, favoritePart, groupCode) {
	var classNm = groupCode.replace(progressCd+"_FAV_", "");
	$(".search-list").hide();
	$("#prgGroup button[value=" + refGroupNo + "]").click();
	$("#progressList button[value=" + progressCd + "]").click();
	$("button."+classNm+"[value="+favoritePart+"]").click();
}

// 가입혜택 


// 회원가입
function sendStepInfo() {
	// 약관동의 
	if(!$("input[name=agree01]").is(":checked") || !$("input[name=agree02]").is(":checked")) {
		alert("필수 약관에 동의해주세요."); 
		return false;
	}
	
	if(snsCheck == "N") {
		// 아이디
		if(!usrIdCheck()) {
			$("#usrId").focus();
			return false;
		}
		// 비밀번호
		if(!pwdCheck()) {
			$("#pwd").focus();
			return false;
		}
		// 비밀번호확인
		if(!repwCheck()) {
			$("#pwd2").focus();
			return false;
		}
		// 이름
		if(!checkIsKorean()){
			$("#usrNm").focus();
			return false;
		}
		// 생년월일
		if(!dateCheck()){
			$("#date").focus();
			return false;
		}
		// 휴대번호
		if(jType != "foreign" || snsCheck == "Y") {
			// 인증번호 발송 체크
			if(sendSms == 'N') {
				if(!this.hpCheck()) {
					return false;
				}
			}
			// 인증번호 체크
			if(confirmMobileCheck()) {
				if(mobileCheck == "N") {
					$("#certCode").focus();
					return false;
				}
			} else {
				return false;
			}
		}
		//이메일 수신동의 시 이메일 주소 체크
		if($("#mailling").is(":checked")) {
			if($("#email01").val() == '') {
				alert("이용약관 동의 항목 중 이메일 수신에 동의하셨습니다.\n이메일 주소를 입력해주세요.");
				$("#email01").focus();
				return false;
			} else if(!emailCheck()) {
				$("#email01").focus();
				return false;
			}
		}
	}
	
	// 관심과정 검증
	if(checkInterestYn == "Y") {
		// 관심과정 체크
		if($("#progressCd").val() == "") {
			alert("관심과정을 선택해 주세요.");
			return false;
		}
	}
	
	// 추천인
	if ($("#targetId").val().trim() != '') {
		if(!targetIdCheck()) {
			$("#targetId").focus();
			return false;
		}

		if($("#targetId").val().trim() == $("#usrId").val().trim()) {
			alert("본인 아이디를 추천할수 없습니다.");
			$("#targetId").focus();
			return false;
		}
	}
	
	// 회원가입
	if($("#mrktReceptArgee").is(":checked")) {
		// 마케팅 수신 동의
		fn_submit();
	} else {
		// 마케팅 수신 거절 
		$("#modal-marketing").modal("show")
	}
};

function fn_submit(val) {
	if(val == 'Y') {
		$("#sms, #mailling, #mrktReceptArgee").prop("checked", true);
		$("#modal-marketing").modal("hide");
	}
	
	if(snsCheck == "N") {
		if($("#mailling").is(":checked")) {
			if($("#email01").val() == '') {
				alert("이용약관 동의 항목 중 이메일 수신에 동의하셨습니다.\n이메일 주소를 입력해주세요.");
				$("#email01").focus();
				return false;
			} else if(!emailCheck()) {
				$("#email01").focus();
				return false;
			}
		}
	}

	if(confirm('회원가입을 하시겠습니까?')){
		var formData = $("form[name=formStepInfo]").serializeArray();
		$.ajax({
			type:"post"
			,url:"/join/ajaxStepInfoSubmit"
			,data: formData
			,dataType:"json"
			,success: function(responseJSON) {
				if(responseJSON.result.code == '0000'){
					alert(responseJSON.result.msg);
					$("#joinId").val(responseJSON.result.usrId);
					$("#progress").val($("#progressCd").val());
					$("#formsendStepEnd").attr("action", "/join/stepend");
					$('#formsendStepEnd').submit();
				} else {
					alert(responseJSON.result.msg);
				}
			}
			,error: function(responseJSON, status, err) {
				alert(err);
			}
		});
	}
}

// 가입혜택 
function showBenefit() {
	var display = 'none';
	$.each($(".type-select .btn").parents('.group'), function() {
		if($(this)[0].style.display != "none") {
			display = 'block';
		}
	});

	if(display == 'none') {
		// 할인 혜택 불러오기
		$.ajax({
			type : "POST",
			url : "/join/ajaxFindJoinBenefit.action",
			dataType : "json",
			async : false,
			data : {'progressCd' : $("#progressCd").val()},
			success : function(responseJSON) {
				var couponList = responseJSON.couponList;
				var sugangProgressNm = responseJSON.sugangProgressNm;
				var htmlTag = "";
				
				if(couponList.length > 0) {
					htmlTag += '<div class="group slick-slider">';
					
					$.each(couponList, function(index) {
						var _this = this;
						var amountText = '';
						var amountText2 = '';
						var validText = '';

						var date = new Date();
						var month = date.getMonth() + 1;
						if(month.toString().length < 2) month = '0' + month;

						var title = date.getFullYear() + '년 ' + month + '월';
						var title2 = '회원가입 기념 할인권';

						if(_this.amount > 0) {
							amountText = '할인 금액 : <strong>' + _this.amount.toLocaleString('ko-KR') + '원</strong>';
							amountText2 = _this.amount.toLocaleString('ko-KR') + '<span>원</span>';
						} 
						if(_this.amount == 0) {
							amountText = '할인율 : <strong>' + _this.discountPercent + '%</strong>';
							amountText2 = _this.discountPercent + '<span>%</span>';
						}
						if(_this.endDateFlag == 'M') {
							validText = '유효 기간 : <strong>' + _this.validDate + '까지</strong>';
						} 
						if(_this.endDateFlag == 'S') {
							validText = '유효 기간 : <strong>발급일로부터 ' + _this.vaildMonth + '일 이내</strong>';
						}
						
						htmlTag += '<div class="item-slick">';
						htmlTag += '	<div class="text">';
						htmlTag += '		<em class="text-highlight">' + title + '</em>';
						htmlTag += '	</div>';
						htmlTag += '	<div class="text">' + title2 + '</div>';
						htmlTag += '	<div class="info">';
						htmlTag += '		<div>' + amountText + '</div>';
						htmlTag += '		<div>' + validText + '</div>';
						htmlTag += '	</div>';
						htmlTag += '	<div class="img coupon coupon-1">';
						htmlTag += '		<div class="title">수강할인</div>';
						htmlTag += '		<div class="amount">' + amountText2 + '</div>';
						htmlTag += '	</div>';
						htmlTag += '</div>';
					});
					
					htmlTag += '</div>';
				}
				
				if(sugangProgressNm != null) {
					htmlTag += '<div class="group">';
					htmlTag += '	<div class="num"><span>가입혜택 '+(couponList.length == 0 ? '' : '2')+'</span></div>';
					htmlTag += '	<div class="text">'+sugangProgressNm+' <span>무료강의</span>가 등록됩니다.</div>';
					htmlTag += '	<div class="img">';
					htmlTag += '		<img src="//img.eduwill.net/resources/join/dev/images/img_benefit_1.png" width="200">';
					htmlTag += '	</div>';
					htmlTag += '</div>';
				}
				
				if(htmlTag != '') {
					$(".join-benefit").html(htmlTag);
					$(".join-benefit").show();
					slickSlider();
				}
				
			}
		});
	}
}

function slickSlider() {
	$('.slick-slider').slick({
		infinite: true,
		arrows: true,
		dots: true,
		fade: false,
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: false,
		autoplaySpeed: 3000,
		speed: 500,
	});
}

function smsTimer() {
	clearInterval(smsInterval);
	var time = 600;
	var min = '';
	var sec = '';
	var html = '';

	smsInterval = setInterval(function() {
		min = parseInt(time/60);
		sec = time%60;

		if(min < 10) {
			min = '0' + min;
		}
		if(sec < 10) {
			sec = '0' + sec;
		}

		html = min + ':' + sec;
		time--;

		if(time < 0) {
			clearInterval(smsInterval);
			html = '00:00';
		}
		$("#hpTimer").html(html);
	}, 50);
	$("#hpTimer").show();
}