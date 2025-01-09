var ua 	= new String(navigator.userAgent);
var isAppName		= "false";

var isFromApp    = "false";
if (ua.search("promoteWebView") > -1 || isAppName =="true" ) {
	if(location.pathname.indexOf("intro.will") > -1) {
		$("#headerlayer").hide();
		$("div .quick").hide();
		isFromApp = "true";
	}
}


// Google Analysis
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-36712803-1']);
//_gaq.push(['_setDomainName', 'm.eduwill.net']);
_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();


function gachk() {
   	if(isFromApp == "true") {
		_gaq.push(['_trackEvent', '브랜드', '에듀윌소개', '브랜드 > 에듀윌소개 > 전화상담_앱']);
	} else {
		_gaq.push(['_trackEvent', '브랜드', '에듀윌소개', '브랜드 > 에듀윌소개 > 전화상담_웹']);
	}
	callcenter();
}

function talkKaKao() { 
	if(isFromApp == "true") {
	 _gaq.push(['_trackEvent', '브랜드', '에듀윌소개', '브랜드 > 에듀윌소개 > 카톡상담_앱']);
	} else {
	 _gaq.push(['_trackEvent', '브랜드', '에듀윌소개', '브랜드 > 에듀윌소개 > 카톡상담_웹']);
	}
   location.href="http://goto.kakao.com/@에듀윌고객센터";
}

function counsel() {
	if(isFromApp == "true") {
		 _gaq.push(['_trackEvent', '브랜드', '에듀윌소개', '브랜드 > 에듀윌소개 > 상담예약_앱']);
	} else {
		 _gaq.push(['_trackEvent', '브랜드', '에듀윌소개', '브랜드 > 에듀윌소개 > 상담예약_웹']);  
	}
		location.href="http://brand.eduwill.net/counseling/counseling.will";
} 

function callcenter() {
		
	var today = new Date();
	var H = today.getHours();
	var ampm;
	var isEnableCall = false;
	  
	var M = today.getMinutes(), dat = today.getDate();
	var week = new Array('일','월','화','수','목','금','토');
	
	if(week[today.getDay()].toString().match('토')|| week[today.getDay()].toString().match('일')) {
		if(9 < H && H < 17) isEnableCall = true;
		else isEnableCall = false;
	} else {
		if(9 < H && H < 19) isEnableCall = true;
		else isEnableCall = false;
	}
	
	if(isEnableCall) {
		 location.href="tel:1600-6700";
	} else {
		if(confirm("평일, 오전9시 ~ 오후 9시 까지 \n 주말(공휴일), 오전 9시~ 오후5시 까지\n 전화상담이 가능합니다. \n 통화 가능하신 시간대로 남겨주시면, 연락 드리겠습니다.\n 전화상담을 예약하시겠습니까?")) {
			location.href="http://brand.eduwill.net/counseling/counseling.will";
		} 
	}
}