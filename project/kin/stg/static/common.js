var StringBuilder = function () {
	this.buffer = new Array();
}

StringBuilder.prototype.Append = function(strValue) {
	this.buffer[this.buffer.length] = strValue;
}

StringBuilder.prototype.ToString = function () {
	return this.buffer.join("");
}


function checkEmail(emailStr) {
	var checkTLD = 1;
	var knownDomsPat = /^(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum|kr)$/;
	var emailPat = /^(.+)@(.+)$/;
	var specialChars = "\\(\\)><@,;:\\\\\\\"\\.\\[\\]";
	var validChars = "\[^\\s" + specialChars + "\]";
	var quotedUser = "(\"[^\"]*\")";
	var ipDomainPat = /^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/;
	var atom = validChars + '+';
	var word = "(" + atom + "|" + quotedUser + ")";
	var userPat = new RegExp("^" + word + "(\\." + word + ")*$");
	var domainPat = new RegExp("^" + atom + "(\\." + atom + ")*$");
	var matchArray = emailStr.match(emailPat);

	if (matchArray == null) {
		alert("E-mail이 형식에 맞지 않습니다. 예) 아이디@host.co.kr");
		return false;
	}
	var user = matchArray[1];
	var domain = matchArray[2];

	// Start by checking that only basic ASCII characters are in the strings
	// (0-127).

	for (i = 0; i < user.length; i++) {
		if (user.charCodeAt(i) > 127) {
			alert("이메일을 정확히 입력해 주세요.");
			return false;
		}
	}
	for (i = 0; i < domain.length; i++) {
		if (domain.charCodeAt(i) > 127) {
			alert("이메일을 정확히 입력해 주세요.");
			return false;
		}
	}

	// See if "user" is valid

	if (user.match(userPat) == null) {

		// user is not valid
		alert("이메일을 정확히 입력해 주세요.");
		return false;
	}

	var IPArray = domain.match(ipDomainPat);
	if (IPArray != null) {
		// this is an IP address

		for (var i = 1; i <= 4; i++) {
			if (IPArray[i] > 255) {
				alert("잘못된 IP 주소입니다.");
				return false;
			}
		}
		return true;
	}

	// Domain is symbolic name. Check if it's valid.

	var atomPat = new RegExp("^" + atom + "$");
	var domArr = domain.split(".");
	var len = domArr.length;
	for (i = 0; i < len; i++) {
		if (domArr[i].search(atomPat) == -1) {
			alert("이메일을 정확히 입력해 주세요.");
			return false;
		}
	}

	if (checkTLD && domArr[domArr.length - 1].length != 2
			&& domArr[domArr.length - 1].search(knownDomsPat) == -1) {
		alert("이메일을 정확히 입력해 주세요.");
		return false;
	}

	// Make sure there's a host name preceding the domain.

	if (len < 2) {
		alert("이메일을 정확히 입력해 주세요.");
		return false;
	}

	// If we've gotten this far, everything's valid!
	return true;
}
function isNumerics(str) {
	var checkStr = str;
	var checkOK = "0123456789";
	var isnumeric = false;
	for (i = 0; i < checkStr.length; i++) {
		ch = checkStr.charAt(i);
		isnumeric = false;
		for (j = 0; j < checkOK.length; j++) {
			if (ch == checkOK.charAt(j)) {
				isnumeric = true;
			}
		}
		if (isnumeric == false) {
			return false;
		}
	}
	return true;
}
function checkName(str) {
	if (str.length == 0) {
		alert("이름을 입력해 주세요!");
		return false;
	} else if (str.indexOf(" ") != -1) {
		alert("이름에 공백을 입력할 수 없습니다.");
		return false;
	}

	for (var i = 0; i < str.length; i++) {
		var ch = str.charAt(i);
		if ((ch >= "a" && "z" >= ch) || ch == "-" || ch == "_"
				|| (ch >= "0" && "9" >= ch) || (ch >= "a" && "z" >= ch)
				|| (ch >= "A" && "Z" >= ch) || ch == "!" || ch == "@"
				|| ch == "$" || ch == "%" || ch == "^" || ch == "&"
				|| ch == "*") {
			alert("이름에는 문자 " + ch + " 를 사용할 수 없습니다.");
			return false;
		}
	}
	return true;
}


function onlyNumber() {
	if (window.event.keyCode < 48 || window.event.keyCode > 57) {
		window.event.keyCode = 0 ;
	}
}


function execDaumPostcode() {
	try {
		new daum.Postcode({
			oncomplete: function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullAddr = ''; // 최종 주소 변수
				var extraAddr = ''; // 조합형 주소 변수

				// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					fullAddr = data.roadAddress;

				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					fullAddr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
				if(data.userSelectedType === 'R'){
					//법정동명이 있을 경우 추가한다.
					if(data.bname !== ''){
						extraAddr += data.bname;
					}
					// 건물명이 있을 경우 추가한다.
					if(data.buildingName !== ''){
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
				} else {
					fullAddr = data.jibunAddress; // 최종 주소 변수
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('zip1').value = data.zonecode.substring(0, 3); //5자리 새우편번호 사용
				document.getElementById('zip2').value = data.zonecode.substring(3, 5)
				document.getElementById('addr1').value = fullAddr;
				document.getElementById('address1').value = '[' + data.zonecode.substring(0, 3) + '-' + data.zonecode.substring(3, 5) + ']' + fullAddr;

				// 커서를 상세주소 필드로 이동한다.
				document.getElementById('addr2').focus();
			}
		}).open();
	} catch(e) {
		alert("우편번호 로딩이 정상적으로 이루어 지지 않았습니다. 새로고침 해주세요.");
	}
}

// onkeydown="onlyNumber(this)"
function onlyNumber(obj) {
	$(obj).keyup(function() {
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	}); 
}



//동적 페이징 처리
function fn_setPagination(reFunction, currPage, pageSize, totCnt) {
	var maxLinks = 10; 
	
	var totalPages = parseInt( Math.ceil( totCnt / pageSize ));
	
	//var pgStart = parseInt(currPage/maxLinks) * maxLinks + 1;
	//var pgEnd = (parseInt(currPage/maxLinks) + 1) * maxLinks;
	
	var sPage = parseInt( ((currPage-1) / maxLinks ) + 1);
    var pgStart = parseInt( ((sPage-1) * maxLinks) + 1);
    var pgEnd = sPage * maxLinks;
	
	
	if(pgEnd > totalPages){
		pgEnd = totalPages;
	}
	
	var sb = new StringBuilder();
	
	
	sb.Append("<div class='pagination'>");
	
	if(currPage > maxLinks){
		sb.Append("<a href=\"javascript:"+ reFunction + "('" + (pgStart - 1) + "');\"  class='prev' >이전</a>");
	}
	
	for(var i = pgStart; i < (pgEnd + 1); i++){
		if(i == currPage){
			sb.Append("<a href='#' class=\"active\">" + i + "</a>");
		} else {
			sb.Append("<a href=\"javascript:" + reFunction + "('" + i + "');\">" + i + "</a>");
		}
	}
	
	if (pgEnd < totalPages) {
		sb.Append("<a class=\"next\" href=\"javascript:" + reFunction + "('" + (pgEnd + 1) + "');\">다음</a>");
		
	}

	sb.Append("</div>");
	return sb.ToString();
}

//콤마찍기
function comma(str) {
	str = String(str);
	return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

//콤마풀기
function uncomma(str) {
	str = String(str);
	return str.replace(/[^\d]+/g, '');
}

/**
* Data 객체에 대해 format 변경 메서드 재정의
* 사용방법
* 자바스크립트 new date() 객체에 대한 형식을 변경해준다.
* new Date().format("yyyy-MM-dd");
**/
Date.prototype.format = function(f) {
	    if (!this.valueOf()) return " ";
	 
	    var weekName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
	    var d = this;
	     
	    return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
	        switch ($1) {
	            case "yyyy": return d.getFullYear();
	            case "yy": return (d.getFullYear() % 1000).zf(2);
	            case "MM": return (d.getMonth() + 1).zf(2);
	            case "dd": return d.getDate().zf(2);
	            case "E": return weekName[d.getDay()];
	            case "HH": return d.getHours().zf(2);
	            case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
	            case "mm": return d.getMinutes().zf(2);
	            case "ss": return d.getSeconds().zf(2);
	            case "a/p": return d.getHours() < 12 ? "오전" : "오후";
	            default: return $1;
	        }
	    });
	}
String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
Number.prototype.zf = function(len){return this.toString().zf(len);};


function getTotalByte(strValue) {
	var strLen = strValue.length;
	var totalByte =0;
	for (var i = 0; i < strLen; i++) {
	        oneChar = strValue.charAt(i);
	        if (escape(oneChar).length > 4) {
	            totalByte += 2;
	        } else {
	            totalByte++;
	        } 
	 }
	 return totalByte
}

function setCookiepop( name, value, expiredays ) {
			var todayDate = new Date();
			todayDate.setDate( todayDate.getDate() + expiredays );
			document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

function getCookiepop(name) {
	var from_idx = document.cookie.indexOf(name+'=');
	if (from_idx != -1) {
		from_idx += name.length + 1
		to_idx = document.cookie.indexOf(';', from_idx)
			if (to_idx == -1) {
				to_idx = document.cookie.length
			}
		return unescape(document.cookie.substring(from_idx, to_idx))
	}
}

/**
* 작성글 byte 제한
* 사용방법
* $("[아이디]").chkword([제한 숫자],[표시 대상 ID (있을 경우에만)]);
* $("#nickName").chkword(20,"nickNmCnt");
**/
jQuery.fn.extend({
  chkword: function(maxByte, targetId) {
    if($(this).val() != "") {
		
		var _totalByte = 0;
		var _strLen = $(this).val().length;
		for (var i = 0; i < _strLen; i++) {
			_oneChar = $(this).val().charAt(i);
			if (escape(_oneChar).length > 4) {
				_totalByte += 2;
			} else {
				_totalByte++;
			} 
		}
		
		if(typeof targetId !== "undefined") {
	 	    	$("#"+targetId).text(_totalByte);
	 	}
	}
	
	this.on("blur keyup", function(){
		var strValue = $(this).val();
	    var strLen = strValue.length;
	    var totalByte = 0;
	    var len = 0;
	    var oneChar = "";
	    var str2 = "";
	    for (var i = 0; i < strLen; i++) {
	        oneChar = strValue.charAt(i);
	        if (escape(oneChar).length > 4) {
	            totalByte += 2;
	        } else {
	            totalByte++;
	        }

	        // 입력한 문자 길이보다 넘치면 잘라내기 위해 저장
	        if (totalByte <= maxByte) {
	            len = i + 1;
	        }
	    }

	    // 넘어가는 글자는 자른다.
	    if (totalByte > maxByte) {
	        str2 = strValue.substr(0, len);
	        //this.value = str2;
	        $(this).val(str2);
	        $("#"+targetId).text(getTotalByte(str2));
	    } else {
	    	if(typeof targetId !== "undefined") {
	 	    	$("#"+targetId).text(totalByte);
	 	    }
	    }
	});
  }
});
 
/**
$.prototype.chkword = function(maxByte, targetId){
	
	if($(this).val() != "") {
		
		var _totalByte = 0;
		var _strLen = $(this).val().length;
		for (var i = 0; i < _strLen; i++) {
			_oneChar = $(this).val().charAt(i);
			if (escape(_oneChar).length > 4) {
				_totalByte += 2;
			} else {
				_totalByte++;
			} 
		}
		
		if(typeof targetId !== "undefined") {
	 	    	$("#"+targetId).text(_totalByte);
	 	}
	}
	
	this.on("blur keyup", function(){
		var strValue = $(this).val();
	    var strLen = strValue.length;
	    var totalByte = 0;
	    var len = 0;
	    var oneChar = "";
	    var str2 = "";
	    for (var i = 0; i < strLen; i++) {
	        oneChar = strValue.charAt(i);
	        if (escape(oneChar).length > 4) {
	            totalByte += 2;
	        } else {
	            totalByte++;
	        }

	        // 입력한 문자 길이보다 넘치면 잘라내기 위해 저장
	        if (totalByte <= maxByte) {
	            len = i + 1;
	        }
	    }

	    // 넘어가는 글자는 자른다.
	    if (totalByte > maxByte) {
	        str2 = strValue.substr(0, len);
	        //this.value = str2;
	        $(this).val(str2);
	        $("#"+targetId).text(getTotalByte(str2));
	    } else {
	    	if(typeof targetId !== "undefined") {
	 	    	$("#"+targetId).text(totalByte);
	 	    }
	    }
	});
};
**/