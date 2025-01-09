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

$(document).ready(function(){

});


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
	alert(loginCheck);
	if(loginCheck){
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
	if(loginId!=""){
		loginStatus=true;
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
	if($("#userInfoLayer").css("display")=="none"){
		$.ajax({
			url : "/menu/getUserInfoLayer",
			type : "post",
			dataType : "text",
			success : function(data){
				$("#layerArea").html(data);
			},
			error : function(e){

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
	if($(".layer-box").has(e.target).length === 0){
		$(".layer-box").fadeOut();
	}
});