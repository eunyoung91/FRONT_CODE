//------------------------------------------------------------------------------------------------------------
// 문자, 숫자 처리
//------------------------------------------------------------------------------------------------------------

$(function(){
	// 숫자만 입력
	$(".numberonly").css("imeMode","disabled").bind("keypress", function(e){
		if( (e.keyCode < 8 || e.keyCode > 9) && ( e.keyCode < 48 || e.keyCode > 57 )) { return false; }
	}).keyup(function(){
		if( $(this).val() != null && $(this).val() != '' ) {
			$(this).val( $(this).val().replace(/[^0-9]/g, '') );
		}
	});
});

// byte 길이 계산 함수 : String에 추가
String.prototype.byteLength = function(){
	var s = arguments[0] == undefined ? this.toString() : arguments[0];
	for(var b=i=0;c=s.charCodeAt(i++);b+=c>>7?2:1);
	return b;
}

// byte 길이로 자르기 함수 : String에 추가
String.prototype.byteCut = function(len) {
	var s = this.toString();
	for (var l=i=0; i<s.length; i++) {
	       l += (s.charCodeAt(i) > 128) ? 2 : 1;
	       if (l > len) return s.substring(0,i);
	}
	return s;
}

// Trim 함수 추가 : ie8 버전 호환용
if(typeof String.prototype.trim !== 'function') {
	String.prototype.trim = function() {
		return this.replace(/^\s+|\s+$/g, ''); 
	};
}

// 숫자형 값에 콤마 찍기
function addComma(v){ 
	var objRegExp = new RegExp('(-?[0-9]+)([0-9]{3})'); 
	while(objRegExp.test(v)) {
		v = v.replace(objRegExp, '$1,$2'); 
	}
	
	return v;
}

// 숫자형 값에 콤마 제거
function removeComma(v){
	return parseInt(v.replace(/,/g, "")); //,를 삭제한 정수 반환 
}

// 태그제거
function stripTag(str){
	return str.replace(/(<([^>]+)>)/ig,"");
}



//------------------------------------------------------------------------------------------------------------
// 날짜 & 시간
//------------------------------------------------------------------------------------------------------------
// 시간 추가 함수
function dateAdd(date, interval, units) {
	var ret = new Date(date); //don't change original date
	switch(interval.toLowerCase()) {
		case 'year'   :  ret.setFullYear(ret.getFullYear() + units);  break;
		case 'month'  :  ret.setMonth(ret.getMonth() + units);  break;
		case 'week'   :  ret.setDate(ret.getDate() + 7*units);  break;
		case 'day'    :  ret.setDate(ret.getDate() + units);  break;
		case 'hour'   :  ret.setTime(ret.getTime() + units*3600000);  break;
		case 'minute' :  ret.setTime(ret.getTime() + units*60000);  break;
		case 'second' :  ret.setTime(ret.getTime() + units*1000);  break;
		default       :  ret = undefined;  break;
	}
	return ret;
}



//------------------------------------------------------------------------------------------------------------
// URL, 팝업, 링크
//------------------------------------------------------------------------------------------------------------
// 현재 도메인 정보
function getDomain() {
	var dns, arrDns, str; 
	dns = document.location.href;
	arrDns = dns.split("//");
	str = arrDns[1].substring(0,arrDns[1].indexOf("/"));
	return str;
} 

// 페이지 이동
function goUrl(url){ location.href = url; }
function goMain(){ goUrl("http://" + getDomain() + "/main/main.asp"); }
function goLogin(rurl){ var r = rurl==null?"":("?r=" + rurl); goUrl("http://" + getDomain() + "/login/login.asp" + r); }
function goPUrl(url){ if(self==top){ goUrl(url); } else { parent.location.href = url; } }

// 새창 이동
function openwin(url){ return window.open(url); }
function openpop(url, winName, windWidth, winHeight){
	var x = (screen.width - windWidth) / 2;
	var y = (screen.height - winHeight) / 2;
	return window.open(url, winName, "toolbar=0,menubar=0,scrollbars=no,resizable=no,left="+ x +",top="+ y +",width="+ windWidth +",height="+ winHeight);
}

// 스크롤있는팝업
function openpopscroll(url, winName, windWidth, winHeight){
	var x = (screen.width - windWidth) / 2;
	var y = (screen.height - winHeight) / 2;
	return window.open(url, winName, "toolbar=0,menubar=0,scrollbars=yes,resizable=no,left="+ x +",top="+ y +",width="+ windWidth +",height="+ winHeight);
}

// 팝업창 크기 변경
function resizeWindow(w, h){
	var cw;
	var ch;

	// outerWidth / outerHeight 지원 브라우저 
	if ( window.outerWidth && window.outerHeight ) {
		cw = window.outerWidth + (window.outerWidth - w);
		ch = window.outerHeight + (window.outerHeight - h);
	}
	else {
		var strDocumentWidth = $(document).outerWidth();
		var strDocumentHeight = $(document).outerHeight();

		window.resizeTo ( strDocumentWidth, strDocumentHeight );

		var strMenuWidth = strDocumentWidth - $(window).width();
		var strMenuHeight = strDocumentHeight - $(window).height();

		cw = strDocumentWidth + strMenuWidth;
		ch = strDocumentHeight + strMenuHeight;
	}

	// resize 
	window.resizeTo( cw, ch );

	// location center
	var width = screen.width;
	var height = screen.height;
	var left = width / 2 - (w / 2);
	var top = height / 2 - (h / 2);
	window.left = left;
	window.top = top;
}



//------------------------------------------------------------------------------------------------------------
// 소셜 & 공유
//------------------------------------------------------------------------------------------------------------
// 주소 복사 기능
function copyURL(){
	var url = location.href;
	if(window.clipboardData){
		var c = window.clipboardData.setData('Text', url);
		alert('주소가 복사되었습니다.\n\n원하는 곳에 ctrl + v 하세요.');
	} else {
		prompt("이 글의 트랙백 주소입니다. Ctrl+C를 눌러 클립보드로 복사하세요", url);
	}
}

// 페이스북에 퍼가기
function shareFacebook(){
	//window.open('http://www.facebook.com/sharer.php?u=' + encodeURIComponent(location.href), 'ShareOnFacebook','toolbar=0,status=0,width=626,height=436');
	var u = encodeURIComponent(location.href);
	var t = $(".tbl_view .tit").text();
	t  = encodeURIComponent(t);
	var fbUrl = 'http://www.facebook.com/sharer.php?u=' + u + '&t=' + t;
	window.open(fbUrl,'share_facebook','toolbar=yes,location=no,directories=no,status=no,menubar=1,scrollbars=0,resizable=yes,width=650,height=500');
}

// 트위터에 퍼가기
function shareTwitter(){
	var u  = encodeURIComponent(location.href);
	var t  = $(".tbl_view .tit").text();
	var url = "http://twitter.com/intent/tweet?url=" + u + "&text=" + t;
	window.open(url);
}



//------------------------------------------------------------------------------------------------------------
// Cookie
//------------------------------------------------------------------------------------------------------------
// 쿠키 값 반환
function getCookieVal(offset) {
	var endstr = document.cookie.indexOf (";", offset);
	if (endstr == -1) endstr = document.cookie.length;
	return unescape(document.cookie.substring(offset, endstr));
}

// 쿠키 값 반환
function getCookie(name) {
	var arg = name + "=";
	var alen = arg.length;
	var clen = document.cookie.length;
	var i = 0;
	while (i < clen) {	//while open
		var j = i + alen;
		if (document.cookie.substring(i, j) == arg)
			return getCookieVal (j);
		i = document.cookie.indexOf(" ", i) + 1;
		if (i == 0) break; 
	}	//while close
	return null;
}

// 쿠키 값 반환
function getCookieLS(name) {
	var arg = name + "=";
	var alen = arg.length;
	var clen = document.cookie.length;
	var i = 0;
	while (i < clen) {	//while open
		var j = i + alen;
		if (document.cookie.substring(i, j) == arg)
			return getCookieVal (j);
		i = document.cookie.indexOf(" ", i) + 1;
		if (i == 0) break; 
	}	//while close
	return null;
}

// 쿠키 저장
function setCookie(name, value) {
	var argv = setCookie.arguments;
	var argc = setCookie.arguments.length;
	var expires = (2 < argc) ? argv[2] : null;
	var path = (3 < argc) ? argv[3] : null;
	var domain = (4 < argc) ? argv[4] : null;
	var secure = (5 < argc) ? argv[5] : false;
	document.cookie = name + "=" + escape (value) +
		((expires == null) ? "" : 
		("; expires=" + expires.toGMTString())) +
		((path == null) ? "" : ("; path=" + path)) +
		((domain == null) ? "" : ("; domain=" + domain)) +
		((secure == true) ? "; secure" : "");
}

// 쿠키 저장
function setCookieLS(name, value) {
	var argv = setCookieLS.arguments;
	var argc = setCookieLS.arguments.length;
	var expires = (2 < argc) ? argv[2] : null;
	var path = (3 < argc) ? argv[3] : null;
	var domain = (4 < argc) ? argv[4] : null;
	var secure = (5 < argc) ? argv[5] : false;
	document.cookie = name + "=" + escape (value) +
		((expires == null) ? "" : 
		("; expires=" + expires.toGMTString())) +
		((path == null) ? "" : ("; path=" + path)) +
		((domain == null) ? "" : ("; domain=" + domain)) +
		((secure == true) ? "; secure" : "");
}



//------------------------------------------------------------------------------------------------------------
// PC방
//------------------------------------------------------------------------------------------------------------
// Nexon PC방 확인
function chkNexonPC(){
	jQuery.ajax({
		url: "/common/ajax/nexon_pcbang.asp",
		type: "POST",
		dataType: "text",
		timeout: 2000,
		error: function(){
			//alert("넥슨 프리미엄PC방 혜택 확인 중입니다. 잠시만 기다려 주세요."); return false;
		},
		success: function(txtRtnVal){
			// 결과 페이지 확인
			if (txtRtnVal.indexOf("True") != -1) 	{
				onNexonPC();
			} else {
				offNexonPC();
			}
		}
	});
}

// PC방 혜택 on
function onNexonPC(){
	$("nexonpc").removeClass("pcOff").addClass("pcOn").text("PC방 혜택 적용 중");
}

// PC방 혜택 off
function offNexonPC(){
	$("nexonpc").removeClass("pcOn").addClass("pcOff").text("PC방 혜택 OFF");
}



//------------------------------------------------------------------------------------------------------------
// 로그인/아웃
//------------------------------------------------------------------------------------------------------------
// 로그인이 필요한 경우
function needLogin(){
	alert("로그인을 해주세요.");
}

// 로그아웃
function logout(r){
	location.href = "/login/logout.asp?r=" + r;
}

// 로그인 유지 실행
function keepSession(){
	$(function(){
		var ifrm = document.createElement("iframe");
		ifrm.setAttribute("id", "ifrmKeepSession");
		ifrm.style.width = 0;
		ifrm.style.height = 0;
		ifrm.style.display = "none";
		document.body.appendChild(ifrm);

		var k = setInterval("loadKeepSession()", 10 * 60 * 1000); // 10분마다 실행
	});
}

// 로그인 유지 페이지 로드
function loadKeepSession(){
	$("#ifrmKeepSession").prop("src", "/common/inc/keep_session.asp");
}



//------------------------------------------------------------------------------------------------------------
// 개인 정보 영역
//------------------------------------------------------------------------------------------------------------
// 로그인 기록 보기
function openLoginHistory(){
	openpop('/common/popup/login_history.asp', 'poploginlist', 540, 516);
}

// 대표 용병 선택 팝업
function openMyPhoto(){
	openpop('/common/popup/my_photo_sel.asp', 'popmyphoto', 667, 838);
}

// 제재 알림 팝업(레이어)
function openLimitInfo(){
	$.post("/common/ajax/limit_info.asp", "", function(data){
		var limitHtml = data.toString();
		$("body").append(limitHtml);
	});
}

// 동의 기간 만료 안내(레이어)
function openAgreeEnd(){
	$.post("/common/ajax/agree_end.asp", "", function(data){
		var agreeHtml = data.toString();
		if($.trim(agreeHtml) != "") $("body").append(agreeHtml);
	});
}

// 실명 인증(CI) 안내(레이어)
function openNameCI(){
	$.post("/common/ajax/realname_info.asp", "", function(data){
		var nameHtml = data.toString();
		if($.trim(nameHtml) != "") $("body").append(nameHtml);
	});
}

// 본인 인증 팝업 띄우기( atype : 인증종류, alocation : 인증위치)
function openAuthWin(atype, alocation){
	var w, h;
	// M:핸드폰인증, X:공인인증서, C:신용카드, B:은행, I:아이핀
	if( atype == "M") { w = 425; h = 550; }
	else if( atype == "I") { w = 425; h = 550; }

	var nWin = openpop("", "popAuthWin", w, h);
	if (nWin != undefined) {
		var f = $("<form></form>")
			.append("<input type='hidden' name='type' value='" + atype + "' />")
			.append("<input type='hidden' name='location' value='" + alocation + "' />")
			.append("<input type='hidden' name='auth' value='" + atype + "' />")
			.attr({
				"method": "post",
				"action": "/common/auth/check_auth.asp",
				"target": "popAuthWin"
		});
		$("body").append(f);
		f.submit();
		nWin.focus();
	} else {
		alert("※ 본인인증을 위한 팝업이 차단되었습니다. \n\n 윈도우 XP SP2 또는 인터넷 익스플로러 7 사용자일 경우에는 \n 화면 상단에 있는 팝업 차단 알림줄을 클릭하여 팝업을 허용해 주시기 바랍니다. \n\n※ MSN,야후,구글등 팝업 차단 툴바가 설치된 경우 팝업허용을 해주시기 바랍니다.");
		return false;
	}
}

// 위메이드 골드 충전
function openWinBillingCharge(){
	var script = document.createElement("script");
	script.setAttribute("type", "text/javascript");
	script.setAttribute("src", "/common/auth/get_bill_url.asp");
	var hh = document.getElementsByTagName("head")[0];
	hh.appendChild(script);
}

// 위메이드 골드 충전 리스트
function openWinBillingChargeList(){
	var script = document.createElement("script");
	script.setAttribute("type", "text/javascript");
	script.setAttribute("src", "/common/auth/get_bill_url.asp?t=l");
	var hh = document.getElementsByTagName("head")[0];
	hh.appendChild(script);
}

// 보너스 골드 보기
function openBonusGold(){
	openpopscroll("/common/popup/bonus_gold.asp", "popBonusGold", 667, 838);
}



//------------------------------------------------------------------------------------------------------------
// 필터링 & 검색
//------------------------------------------------------------------------------------------------------------
// 금지어에 해당되는 단어가 있는지 체크
function CheckFilterWord(s, w){
	var arr_w = w.split(",");
	var rtnTF = false;
	if(s != ""){
		for(var i=0 ; i<arr_w.length ; i++){
			if(s.indexOf(arr_w[i]) >= 0){
				rtnTF = true;
				break;
			}
		}
	}
	return rtnTF;
}

// 금지어 변경 함수
function ReplaceBadWord(s, w){
	var arr_w = w.split(",");
	if(s != ""){
		for(var i=0 ; i<arr_w.length ; i++){
			var t = "*";
			if(arr_w[i].length > 1){
				for(var j=1;j<arr_w[i].length;j++){ t+="*"; }
			}
			s = s.split(arr_w[i]).join(t);
		}
	}
	return s;
}

// 검색어 필터링
function chkSearchWord(id, isEmptyTF){
	var o = $('#' + id);

	if( o[0] === undefined){
		return false;
	} else {
		var v = o.val();

		if(v == ""){
			if(isEmptyTF){
				return true;
			} else {
				alert("검색어를 입력해주세요."); return false;
			}
		} else {
			if( !REGEXP_PATTERN_SEARCH_WORD.test(v) ){
				alert("검색어에 특수문자는 사용 할 수 없습니다."); return false;
			} else if( CheckFilterWord(v, g_BoardFilterWord) ){
				alert("검색어에 욕설이나 비속어는 사용 할 수 없습니다."); return false;
			} else if(v.length < 2){
				alert("검색어는 두글자 이상 입력해주세요."); return false;
			}
		}
		return true;
	}
}



//------------------------------------------------------------------------------------------------------------
// iframe Submit
//------------------------------------------------------------------------------------------------------------
// iframe 생성
function createIFrame(id, name, width, height, src, parentObj){
	var ifrm = document.createElement("iframe");
	ifrm.setAttribute("id", id);
	ifrm.setAttribute("name", name);
	ifrm.style.width = width + "px";
	ifrm.style.height = height + "px";
	ifrm.src = src==""?"about:blank":src;

	parentObj.appendChild(ifrm);

	return ifrm;
}

// iframe 에서 form 처리하기
function submitIframe(formid, acturl){
	if($("#ifrmProc")[0] == undefined){
		var i = createIFrame("ifrmProc", "ifrmProc", 0, 0, "", document.body);
	}
	if(acturl == "" || acturl == null){
		$("#" + formid).attr("target", "ifrmProc").submit();
	} else {
		$("#" + formid).attr("target", "ifrmProc").attr("action", acturl).submit();
	}
	return i;
}



//------------------------------------------------------------------------------------------------------------
// 컨텐츠 표시
//------------------------------------------------------------------------------------------------------------
// 기존 컨텐츠에서 사용
function embedFlash(url,w,h,objID){
	var obj = '';

	obj = obj + '<object id="'+objID+'" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,42,34" width='+ w +' height='+ h +'>';
	obj = obj + '<param name=movie value='+ url +'>';
	obj = obj + '<param name="play" value="true">';
	obj = obj + '<param name="loop" value="true">';
	obj = obj + '<param name=allowScriptAccess value=always>';
	obj = obj + '<param name=wmode value=transparent>';
	obj = obj + '<param name=quality value=high>';
	obj = obj + '<embed src='+ url +' quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" allowScriptAccess="always" type="application/x-shockwave-flash" wmode="transparent" width=' + w + ' height=' + h + '></embed>';
	obj = obj + '</object>';

	document.write(obj);
}

// 플래시 표시
function GnxFlashActivate( strFlashUrl , n4Witdh , n4Height , strWmode , strId , strClassName , strFlashvar, strFullScreen ){
	//width,height 여부 & 묶음 (width,height가 없을때는 0 으로 선언)
	if (n4Witdh != 0) {
		objSize_attribute = " width='"+ n4Witdh +"' height='"+ n4Height +"'";
	} else {
		objSize_attribute = "";
	}
	//id 여부 (ID 셀렉렉터가 없을경우 0으로선언)
	if (strId != 0) {
		objId_attribute = " id='" + strId + "'";
		objId_IE_attribute = " id='" + strId + "'";
	} else {
		objId_attribute = "";
		objId_IE_attribute = "";
	}
	//class 여부 (class가 없을때는 0 으로 선언)
	if (strClassName != 0) {
		className_attribute = " class='" + strClassName + "'";
	} else {
		className_attribute = "";
	}
	//wmode 여부 (wmode가 없을때는 0 으로 선언)
	if (strWmode != 0) {
		wmode_param = "<param name='wmode' value='" + strWmode + "' />";
		wmode_attribute = " wmode='" + strWmode + "'";
	} else {
		wmode_param = "";
		wmode_attribute = "";
	}
	//Flashvar 여부 (wmode가 없을때는 0 으로 선언)
	if (strFlashvar != 0) {
		Flashvar_param = "<param name='flashvars' value='" + strFlashvar + "' />";
		Flashvar_attribute = " Flashvars='" + strFlashvar + "'";
	} else {
		Flashvar_param = "";
		Flashvar_attribute = "";
	}
	// allowFullScreen 여부 
	if (strFullScreen != undefined){
		FullScreen_param = "<param name='allowFullScreen' value='" + strFullScreen + "' />";
		FullScreen_attribute = " allowFullScreen='" + strFullScreen + "'";
	}else{
		FullScreen_param = "";
		FullScreen_attribute = "";
	}
	
	getBrowserType = getBrowserType();
	
	
	if(getBrowserType == 'IE11'){
		document.writeln( "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,42,34' " + objSize_attribute + objId_IE_attribute + className_attribute + " data='"+ strFlashUrl +"'" + Flashvar_attribute + objSize_attribute + objId_attribute + wmode_attribute + className_attribute + FullScreen_attribute + ">" );
	}else{
		document.writeln( "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,42,34' " + objSize_attribute + objId_IE_attribute + className_attribute + ">" );
	}
	document.writeln( "<param name='movie' value='"+ strFlashUrl +"' />" );
	document.writeln( "<param name='quality' value='high' />" );
	document.writeln( "<param name='menu' value='0' />" );
	document.writeln( "<param name='name' value='pdsMovie' />" );
	document.writeln( "<param name='allowScriptAccess' value='always' />" );
	document.writeln( "<param name='scale' value='scale' />" );
	document.writeln( "<param name='salign' value='t' />" );
	document.writeln( wmode_param );
	document.writeln( Flashvar_param );
	document.writeln( FullScreen_param );
	if(getBrowserType != 'IE7~5' && getBrowserType != 'IE8' && getBrowserType != 'IE9' && getBrowserType != 'IE10'){
		if(getBrowserType == 'IE11'){
			//console.log(getBrowserType);
		}else{
			//console.log(getBrowserType);
			document.writeln( "<object type='application/x-shockwave-flash' showLiveConnect='true' allowScriptAccess='always' scale='scale' data='"+ strFlashUrl +"'" + Flashvar_attribute + objSize_attribute + objId_attribute + wmode_attribute + className_attribute + FullScreen_attribute + "></object>" );
		}
	}
	
	document.writeln( "</object>" );
}

function getBrowserType(){
	var ua = navigator.userAgent;
	var rv = -1;
	
	if(ua.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || ua.match(/LG|SAMSUNG|Samsung/) != null){
		return 'Mobile Contact';
	}else{
		if(navigator.appName == 'Microsoft Internet Explorer'){
			var re = new RegExp('MSIE ([0-9]{1,}[\.0-9]{0,})');
			if(re.exec(ua) != null) var rv = parseFloat(RegExp.$1);
			switch(rv){
				default : var rv = 'IE7~5'; break;
				case 8 : var rv = 'IE8'; break;
				case 9 : var rv = 'IE9'; break;
				case 10 : var rv = 'IE10'; break;
			}
		}else{
			var re  = new RegExp('Trident/.*rv:([0-9]{1,}[\.0-9]{0,})');
			if(re.exec(ua) != null) var rv = parseFloat(RegExp.$1);
			if(rv != -1){
				switch(rv){
					case 11 : var rv = 'IE11'; break;
				}
			}else{
				var agent = ua.toLowerCase();
				if(agent.indexOf('chrome') != -1) return 'Chrome';
				else if(agent.indexOf('opera') != -1) return 'Opera'; 
				else if(agent.indexOf('staroffice') != -1) return 'Star Office'; 
				else if(agent.indexOf('webtv') != -1) return 'WebTV'; 
				else if(agent.indexOf('beonex') != -1) return 'Beonex'; 
				else if(agent.indexOf('chimera') != -1) return 'Chimera'; 
				else if(agent.indexOf('netpositive') != -1) return 'NetPositive'; 
				else if(agent.indexOf('phoenix') != -1) return 'Phoenix'; 
				else if(agent.indexOf('firefox') != -1) return 'Firefox'; 
				else if(agent.indexOf('safari') != -1) return 'Safari'; 
				else if(agent.indexOf('skipstone') != -1) return 'SkipStone'; 
				else if(agent.indexOf('netscape') != -1) return 'Netscape'; 
				else if(agent.indexOf('mozilla/5.0') != -1) return 'Mozilla';
			}
		}
		
		return rv;
	}
}

