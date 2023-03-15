//Eduwill domain
document.domain = "eduwill.net";
	
//Eduwill Eco
(function() {
	function asyncECOLazyLoad(){
		var s = document.createElement('script');
		s.type = 'text/javascript';
		s.async = true;
		s.src = '//img.eduwill.net/resources/eco/library/eduwill.eco-2.0.0.min.js';
		var x = document.getElementsByTagName('script')[0];
		x.parentNode.insertBefore(s, x);
	}
	window.attachEvent ? window.attachEvent('onload', asyncECOLazyLoad) : window.addEventListener('load', asyncECOLazyLoad, false);
})();

//Url 이동
var goUrl = function(url, target){
	//target { "blank" : 새창, "" : 현재창}
	target = (typeof target === "undefined")? "" : target;
	if(target=="blank"){
		window.open(url);
	}else{
		document.location.href=url;
	}
}

//Url 이동(Login Check)
var goUrlWithLogin = function(url, target){
	var loginStatus = loginCheck();
	if(loginStatus){
		//target { "blank" : 새창, "" : 현재창}
		target = (typeof target === "undefined")? "" : target;
		if(target=="blank"){
			window.open(url);
		}else{
			document.location.href=url;
		}
	}
}

//loginCheck
function loginCheck(){	
	var loginStatus = false;
	if(typeof loginId !== "undefined" && loginId !=""){
		loginStatus = true;
	}else{
		window.location.href = eaDomain + "/login/login.action?systemCd=KIN&redirectUrl=" + redirectUrl;
	}
	return loginStatus;
}

function logout(){
	window.location.href = eaDomain + "/login/logout.action?systemCd=KIN&redirectUrl=" + kinDomain;
}

//내정보 layerPop
var showMyinfoLayer = function(){
		if($("#userInfoLayer").css("display")!="block"){
		$.ajax({
			url : "/menu/getUserInfoLayer",
			type : "post",
			dataType : "text",
			success : function(data){
				$("#layerArea").html(data);
				$("#userInfoLayer").fadeIn();
			},
			error : function(e){

			}
		});
	}
}

//관심정보 설정 layerPop
var showInterestLayer = function(){
		if($("#interestModal").css("display")!="block"){
		$.ajax({
			url : "/user/getInterestInfo",
			type : "post",
			dataType : "text",
			success : function(data){
				console.log(data);
				$("#layerArea").html(data);
				$("#interestModal").modal('show');
			},
			error : function(e){
				console.log(e);
			}
		});
	}
}

//LayerPop show
function showLayer(id){
	$("#"+id).fadeIn();
}

//LayerPop Hide (layerbox 영역 밖을 누르면 fadeout)
$(document).mouseup(function (e){	
	if($(".layer-box, .utility-my").has(e.target).length === 0){
		$(".layer-box").fadeOut();
	}
});