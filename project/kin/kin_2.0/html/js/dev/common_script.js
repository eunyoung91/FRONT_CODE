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

//검색Dashboard layerPop
var showSearchLayer = function(){
	if($("#searchLayer").css("display")!="block"){
		$.ajax({
			url : "/srch/getAjaxDashboard",
			type : "post",
			dataType : "text",
			timeout:5000,
			success : function(data){
				$("#searchLayer").html(data);
				$("#searchLayer").fadeIn();
			},
			error : function(e){

			}
		});
	}
}

//모바일 검색 Dashboard layerPop
var showSearchLayerMobile = function(){

	$.ajax({
		url : "/srch/getAjaxDashboard",
		type : "post",
		dataType : "text",
		timeout:5000,
		success : function(data){
			$("#layerArea").html(data);
			showModal("mobileSearchModal");
		},
		error : function(e){

		}
	});

}
//통합검색
var searchValue = function(ctgryIdx, srchInput, progressCd){
	var url = "/srch/getResult";

	if(typeof ctgryIdx === "undefined"){ ctgryIdx = ""; }
	if(typeof srchInput === "undefined"){ srchInput = ""; }
	if(typeof progressCd === "undefined"){ progressCd = ""; }
	if(ctgryIdx == "" && srchInput == "" && progressCd == ""){ return; }

	var $form = $('<form></form>');
	$form.attr("action", url);
	$form.attr("method", "post");
	$form.appendTo('body');

	var srchText = $('<input type="hidden" value="'+srchInput+'" name="srchText">');
	var srchColect = $('<input type="hidden" value="'+ctgryIdx+'" name="srchColect">');
	var srchColectprogressCd = $('<input type="hidden" value="'+progressCd+'" name="srchColectProgress">');
	var insertYn = $('<input type="hidden" value="Y" name="insertYn">');

	$form.append(srchText).append(srchColect).append(srchColectprogressCd).append(insertYn);
	$form.submit();	
}

//통합검색(카테고리)
var ctgrySearch = function(ctgryIdx){
	searchValue(ctgryIdx, '', '');
}

//통합검색(과정)
var progressSearch = function(progressCd){
	searchValue('', '', progressCd);
}

//통합검색(키워드)
var keywdSearch = function(keywd){
	var srchInput = (typeof keywd === "undefined")? $("#srchText").val() : keywd;
	searchValue('', srchInput, '');
}

//통합검색_모바일(키워드)
var keywdSearchMobile = function(ele){
	var srchInput = $(ele).closest(".search-bar").find('input[name=srchText]').val();
	searchValue('', srchInput, '');
}

//통합검색 검색기록 삭제
function keywdDelete(delTyp, srch_text, obj){
	$.ajax({
		url: "/srch/deleteAjaxSrchwd",
		type : "post",
		data : {"delTyp" : delTyp, "srch_text" : srch_text},
		dataType:"json",
		timeout:5000,
		success:function(data, textStatus, jqXHR){			
			$(obj).parent().remove();
			if($("#srchHistory > li").length < 1) $("<li>최근검색 기록이 없습니다.</li>").insertAfter("#srchHistory");
		},
		error:function(data, status, err){
			console.log("err: " + err);
		}
	});
}

//통합검색창 keyEvent 감지
var detectSrchInput = function(event, obj){
	//if(!$(obj).val() == "") $("#searchLayer").hide();

	//Enter
	if(event.keyCode == 13){
		keywdSearch($(obj).val());
	}
}


//내정보 layerPop
var showMyinfoLayer = function(){
	isMyInfoLayerFocus = true;
	if($("#userInfoLayer").css("display")!="block"){
		$.ajax({
			url : "/menu/getUserInfoLayer",
			type : "post",
			dataType : "text",
			beforeSend : function(){
				$("#layerArea").html("");
			},
			success : function(data){
				$("#layerArea").html(data);
				$("#userInfoLayer").fadeIn();
			},
			error : function(e){

			}
		});
	}
}

//알람 layerPop
var showAlarmLayer = function(){
	var loginStatus = loginCheck();
	if(loginStatus){
		$.ajax({
			url : "/menu/getUserAlarmInfoLayer",
			type : "post",
			dataType : "text",
			timeout:5000,
			beforeSend : function(){
				$("#layerArea").html("");
			},
			success : function(data){
				$("#layerArea").html(data);
				showModal("alarmModal");
			},
			error : function(e){
				console.log(e);
			}
		});
	}
}

//알람 layerPop 리스트 더보기
var showAlarmMoreList = function(page){
	$("#alarmModal .btn-more").hide();
	var totalPage = $("input[name='alarmTotalPage']").val();

	if(typeof page === "undefined"){
		page = parseInt($("input[name='alarmNowPage']").val())+1;
	}

	if(page > totalPage){
		alert('마지막 페이지 입니다.');
		return;
	}
	
	var loginStatus = loginCheck();
	if(loginStatus){
		$.ajax({
			url : "/alarm/getAlarmList",
			type : "post",
			dataType : "text",
			data : { page : page },
			timeout:5000,
			success : function(data){
				$("#alarmModal #myAlarmList").append(data);
				$("input[name='alarmNowPage']").val(page);
				if(page<totalPage){
					$("#alarmModal .btn-more").show();
				}
			},
			error : function(e){
				console.log(e);
			}
		});
	}
}

//알람 layerPop 새로고침
var showAlarmRefreshList = function(page){
	var totalPage = $("input[name='alarmTotalPage']").val();

	if(typeof page === "undefined"){
		page = 1;
	}

	if(page > totalPage){
		alert('마지막 페이지 입니다.');
		return;
	}
	
	var loginStatus = loginCheck();
	if(loginStatus){
		$.ajax({
			url : "/alarm/getAlarmList",
			type : "post",
			dataType : "text",
			timeout:5000,
			data : { page : page },
			success : function(data){
				$("#alarmModal #myAlarmList").html(data);
				$("input[name='alarmNowPage']").val(page);
				if(page<totalPage){
					$("#alarmModal .btn-more").show();
				}
			},
			error : function(e){
				console.log(e);
			}
		});
	}
}


//알람 읽기처리
var readAlarm = function(titleIdx){
	$.ajax({
		url : "/alarm/ajaxRead",
		type : "post",
		dataType : "json",
		timeout:5000,
		data : { titleIdx : titleIdx },
		success : function(data){
			var successYn = data.successYn;
			if(successYn == "Y"){
				$("li#alarm_" + titleIdx).removeClass("in");
			}	
		},
		error : function(e){
			console.log(e);
		}
	});	
}


//알람 삭제처리
var deleteAlarm = function(delTyp, titleIdx){
	var msg = "";
	if(delTyp == "B"){
		msg = "읽은 소식을 모두 삭제하시겠습니까?";
	}else if(delTyp == "A"){
		msg = "모든 소식을 삭제하시겠습니까?";
	}else if(delTyp == "C"){
		msg = "삭제하시겠습니까?";
	}else{
		return;
	}

	if(msg != "" && confirm(msg)){
		$.ajax({
			type : "POST",
			async : true,			
			url: "/alarm/ajaxDelete",
			dataType:"json",
			timeout:5000,
			data:{"delTyp":delTyp, "titleIdx":titleIdx},
			success:function(data, textStatus, jqXHR){
				var successYn = data.successYn;
				if(successYn == "Y"){
					if(delTyp == "C"){
						$("#alarm_" + titleIdx).remove();
					}else{
						showAlarmRefreshList();
					}
				}
			},
			error:function(data, status, err){ console.log("err: " + err); }
		});
	}
}

//알람 옵션설정 layerPop
var showAlarmSettingLayer = function(){
	var loginStatus = loginCheck();
	if(loginStatus){
		$.ajax({
			url : "/menu/getUserAlarmSettingInfoLayer",
			type : "post",
			dataType : "text",
			timeout:5000,
			beforeSend : function(){
				$("#alarmSettingModal").html("");
			},
			success : function(data){
				$("#alarmSettingModal").html(data);
				showMultiModal("alarmSettingModal");
			},
			error : function(e){
				console.log(e);
			}
		});
	}
}

//알림 옵션버튼 Toggle
var toggleOption = function(target) {
	var onOff = $(target).text();
	if(onOff == "ON") {
		$(target).removeClass("toggle-on");
		$(target).removeClass("btn-primary");
		$(target).addClass("toggle-off");
		$(target).addClass("btn-default");
		$(target).text("OFF");
	} else {
		$(target).removeClass("toggle-off");
		$(target).removeClass("btn-default");
		$(target).addClass("toggle-on");
		$(target).addClass("btn-primary");
		$(target).text("ON");
	}
}

//알림 옵션 저장
var updateAlarmSetting = function() {
	var notiCds ="";	
	$("button.toggle-off").next("input[name='notiCd']").each(function(i){			
		if(i != 0) notiCds += ","
		notiCds += $(this).val();
	});

	$.ajax({
		type : "POST",
		async : true,
		url: "/alarm/insertUserNotiSet",
		dataType:"json",
		timeout:5000,
		data:{"notiCds" : notiCds},
		success:function(data, textStatus, jqXHR){
			if(data.result == 1) {
				alert("저장되었습니다.");
				$("#alarmSettingModal").modal("hide");
			} else {
				alert("실패하였습니다.");
			}
		},
		error:function(data, status, err){ console.log("err: " + err); }
	});
}

//타임퀴즈 layerPop
var showTimeQuizLayer = function(){
	var loginStatus = loginCheck();
	if(loginStatus){
		showModal("timeQuizModal");
	}
}

//LayerPop show
function showLayer(id){
	$("#"+id).fadeIn();
}

//ModalPop show
function showModal(id){
	//modal backdrop이 중복 된경우 제거 한다. 
	if ($('.modal-backdrop').length > 0) {
		$('.modal-backdrop').remove();
	}
	$("#"+id).modal('show');
}

//MultiModalPop show
function showMultiModal(id){
	//modal backdrop이 2개 이상인경우 마지막 요소를 제거 한다. 
	if ($('.modal-backdrop').length > 2) {
		$('.modal-backdrop').last().remove();
	}
	$("#"+id).modal('show');
}


//LayerPop Hide (layerbox 영역 밖을 누르면 fadeout)
$(document).mouseup(function (e){	
	if($(".layer-box, .utility-my, .search-bar, .share-box").has(e.target).length === 0){
		$(".layer-box, .share-box").fadeOut();
	}
});


//관심분야 설정 layerPop
var showInterestLayer = function(){
	var loginStatus = loginCheck();
	if(loginStatus){	
		if($("#interestModal").css("display")!="block"){
			$.ajax({
				url : "/user/getInterestInfo",
				type : "post",
				dataType : "text",
				timeout:5000,
				beforeSend : function(){
					$("#layerArea").html("");
				},
				success : function(data){
					$("#layerArea").html(data);
					showModal("interestModal");
				},
				error : function(e){
					console.log(e);
				}
			});
		}
	}
}

//관심분야 button click
var selectInterestCtgry = function(obj){	
	var progressCd = $(obj).next().val();
	$(obj).removeClass('collapsed').parent().siblings().find('.btn').addClass('collapsed');
	$("[id^=subCtgryDiv_]").hide();
	$("#subCtgryDiv_"+progressCd).show();	
}

//관심 세부분야 선택
var selectInterestSubCtgry = function(obj){	
	var progressNm = $("#ctgryDiv .btn").not(".collapsed").text();
	var ctgryNm = $(obj).siblings("span").text();
	var ctgryIdx = $(obj).val();	
	var html = "";

	$("#myInterestCtgryList .nodata").remove();
	if($("#myInterestCtgryList").children().find("input[name='ctgryIdx']").length >= 5){
		alert('관심과정은 5개까지 설정이 가능합니다.');
		return;
	}

	$("#interestCtgryCnt").text(parseInt($("#interestCtgryCnt").text())+1);

	html += "<li>";
	html += "<span class=\"txt\">"+progressNm+" > "+ctgryNm+"</span><button class=\"btn btn-link btn-delete\" onClick=\"deleteInterestCtgry(this);\"></button>";
	html += "<input type='hidden' name='ctgryIdx' value='"+ctgryIdx+"' >";
	html += "</li>"

	$("#myInterestCtgryList").append(html);

	$('.custom-button .btn').addClass('collapsed');
	$("[id^=subCtgryDiv_]").hide();
	$(obj).attr("checked", false);
}

//관심분야 삭제
var deleteInterestCtgry = function(obj){
	$(obj).parent().remove();
	$("#interestCtgryCnt").text(parseInt($("#interestCtgryCnt").text())-1);
}

//관심분야, 키워드 등록
var insertInterestInfo = function(){
	var ctgryIdxs ="", keywd = "";

	var loginStatus = loginCheck();
	if(loginStatus){		
		$("#myInterestCtgryList").children().find("input[name='ctgryIdx']").each(function(i){			
			if(i != 0) ctgryIdxs += ","
			ctgryIdxs += $(this).val();
		});

		$("#myInterestKeywdList").children().find("input[name='keywd']").each(function(i){			
			if(i != 0) keywd += ","
			keywd += $(this).val();
		});

		$.ajax({
			url : "/user/setInterestInfo",
			type : "post",
			dataType : "json",
			timeout:5000,

			data : { ctgryIdxs : ctgryIdxs, keywd : keywd },
			success : function(data){
				if(data.resultCd=="200"){
					$("#interestModal").modal("hide");
					location.reload();
				}else{
					alert("등록 중 오류가 발생하였습니다. 잠시 후 다시 시도해 주십시오.");
					return;
				}
			},
			error : function(e){
				console.log(e);
			}
		});
	}	
}

//관심 키워드 keyEvent 감지
var detectInterestKeywdInput = function(event, obj){
	//Enter
	if($(obj).val() != "" && event.keyCode == 13){
		selectInterestKeywd();
	}
}

//관심단어 선택
var selectInterestKeywd = function(){
	var keywd = $("#interestKeywdInput").val();
	var html = "";

	$("#myInterestKeywdList .nodata").remove();
	if($("#myInterestKeywdList").children().find("input[name='keywd']").length >= 5){
		alert('관심단어는 5개까지 설정이 가능합니다.');
		return;
	}

	$("#interestKeywdCnt").text(parseInt($("#interestKeywdCnt").text())+1);

	html += "<li>";
	html += "<span class=\"txt\">"+keywd+"</span><button class=\"btn btn-link btn-delete\" onClick=\"deleteInterestKeywd(this);\"></button>";
	html += "<input type='hidden' name='keywd' value='"+keywd+"' >";
	html += "</li>"

	$("#myInterestKeywdList").append(html);
	$("#interestKeywdInput").val('');

}

//관심단어 삭제
var deleteInterestKeywd = function(obj){
	$(obj).parent().remove();
	$("#interestKeywdCnt").text(parseInt($("#interestKeywdCnt").text())-1);
}

//관심정보 초기화
var resetInterestInfo = function(){
	$("#myInterestKeywdList").html("<p class=\"nodata\">저장된 관심 검색어가 없습니다.</p>");
	$("#myInterestCtgryList").html("<p class=\"nodata\">선택된 관심 자격증/유형이 없습니다.</p>");
	$("#interestKeywdCnt").text(0);
	$("#interestCtgryCnt").text(0);
}

//게시글 스크랩
var insertScrapInfo = function(obj){
	var loginStatus = loginCheck();
	if(loginStatus){	
		$.ajax({
			url : '/board/setScrap',
			type : 'post',
			dataType : 'json',
			data : { qustnIdx : $(obj).data('qustn-idx') },
			success : function(data){
				$(obj).find('i').toggleClass('icon-scrap-disabled');
				$(obj).find('i').toggleClass('icon-scrap');
			},
			error : function(e){
				console.log(e);
			}
		});
	}
}

//공유하기 popup
var showShareArea = function(obj){
	if ($("[name='shareArea']").css("display")=="block") {
		$("[name='shareArea']").hide();	
	} else {
		$(obj).next("[name='shareArea']").fadeToggle();		
	}
}


// SNS 공유하기
function sendSnsShare(obj) {
	var title = $(obj).parents("[name='shareArea']").find("[name='shareTitle']").val();
	var contents = $(obj).parents("[name='shareArea']").find("[name='shareContent']").val();
	var qustnIdx = $(obj).parents("[name='shareArea']").find("[name='shareQustnIdx']").val();
	var link = "https:"+$(obj).parents("[name='shareArea']").find("[name='shareUrlLink']").val();
	var snsType = $(obj).data('share-type');

	var snsPopUp;
	var _width = '500';
	var _height = '450';
	var _left = Math.ceil(( window.screen.width - _width )/2);
	var _top = Math.ceil(( window.screen.height - _height )/2);
		
	switch(snsType){
		case 'facebook':
			snsPopUp = window.open("http://www.facebook.com/sharer/sharer.php?u=" + link, '', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
			break;

		case 'kakao_talk' :			
			Kakao.Link.sendDefault({
				objectType: 'feed',
				content: {
				  title: title,
				  description: contents,
				  imageUrl: 'https://img.eduwill.net/resources/kin/live/static/knight_og.png',
				  link: {
					mobileWebUrl: link,
					webUrl: link
				  }
				}
			});
			break;

		case 'kakao_story' :
			snsPopUp = window.open("https://story.kakao.com/share?url=" + link, '', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
			break;

		case 'twitter' :
			snsPopUp = window.open("http://twitter.com/intent/tweet?url=" + link + "&text=" + title, '', 'width='+ _width +', height='+ _height +', left=' + _left + ', top='+ _top);
			break;

		case 'url_copy' :
			$(obj).next(".popover").show();
			setTimeout(function() {
			  $(obj).next(".popover").fadeOut();
			}, 3000);

			var dummy = document.createElement("textarea");
			document.body.appendChild(dummy);
			dummy.value = link;
			dummy.select();
			document.execCommand("copy");
			document.body.removeChild(dummy);			
			break;
	}

	// SNS 공유버튼 클릭 이력 등록 
	$.ajax({
		url:"/board/insertAjaxSnsShare"
		,type:"post"
		,dataType:"json"
		,data: {"qustnIdx" : qustnIdx, "snsType" : snsType}
		,async: false
		,success: function(data) {}
		,error: function(data, status, err) {
			console.log("err: " + err);
		}
	});
}


//배너 클릭시 이동
var bannerLinkHref = function(linkUrl, target) {
	target = (typeof target === "undefined")? "" : target;
	if(target=="_blank"){
		var openNewWindow = window.open("about:blank");
		openNewWindow.location.href = linkUrl;
	}else{
		document.location.href=linkUrl;
	}		

}

//배너 클릭시 팝업
var bannerLinkPop = function(linkUrl, title) {
	var popUrl =linkUrl;
    var popOption = "left=0,top=0,width=660,height=800,resizable=yes,scrollbars=yes;"    
    window.open(popUrl,title,popOption);   	
}

//질문카테고리 slide
function ctgryShow(obj) {
    var _this = $(obj);
	_this.parent("li.a1").siblings().children('a').each(function(){
		if($(this).has('.on')){
			$(this).removeClass('on').next('.a2').slideUp(100);
		}
	});
    _this.toggleClass('on').next('.a2').slideToggle(100);
    return false;
}


//타임퀴즈 layer popup show
var showTimeQuizLayer = function(userId){
	if($("#timeQuizYn").val()=="Y"){
		var loginStatus = loginCheck();
		if(loginStatus){
			$.ajax({
				type : "POST",
				async : true,			
				url: "/quiz/getQuizInfo",
				dataType:"text",
				timeout:3000,
				data : { userId : userId },
				success:function(data){
					$("#layerArea").html(data);
					showModal("timeQuizModal");
				},
				error:function(data, status, err){;}
			});
		}
	}else{
		alert('이미 참여하셨거나 타임퀴즈 참여 시간이 아닙니다.');
	}
}


//타임퀴즈 참여
var setUserQuizEnty = function(quizIdx, answer){	
	$.ajax({
		url : '/quiz/setUserQuizEnty',
		type : 'post',
		dataType : 'json',
		data : {quizIdx : quizIdx, answer : answer},
		success : function(data){
			if(data.responseCode=="1" || data.responseCode=="201"){				
				$("#question").hide();			
				$("#ask").show();				
				if(data.responseCode=="1"){					
					alert("정답입니다. 내공 100 지급되었습니다. :)");
				}				
			}else{
				if(data.responseCode=="400" || data.responseCode=="401"){
					alert('올바르지 않은 요청입니다. 잠시 후 다시시도해 주십시오.');
					return;
				}else if(data.responseCode=="301"){
					alert("이미 타임퀴즈에 참여하셨습니다. 다음 타임퀴즈에도 참여해주세요. : )");
					return;
				}else if(data.responseCode=="402"){
					alert('타임퀴즈 시간이 마감되었습니다. 다음 타임퀴즈를 기대해 주세요!');					
					return;
				}
			}
			$("#timeQuizYn").val("N");
		},
		error : function(e){
			console.log(e);
		}
	});
}
