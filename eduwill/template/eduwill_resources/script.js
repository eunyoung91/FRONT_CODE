
//페이지 로드시 한 번만 실행
window.onload = function(){

	var _paragraphWrap = document.querySelectorAll('.eduf-paragraph')

	if( _paragraphWrap.length > 0 ){

		_f_initPragraph();
	}

}

// $(document).on('ready', function(){
	

// 	var _paragraphWrap = $('.eduf-paragraph');

// 	if( _paragraphWrap.length > 0 ){

// 		_f_initPragraph();
// 	}


// })

// 단락구분 중앙 화살표 컨테이너
// 예시
// <div class="container promotion-cont paragraph" data-bg="#000" data-img="//img.eduwill.net/eduwill/img/2021/0/event/210817/pc/img_cont_5_1.png">
// <div class="container promotion-why paragraph" data-bg="#000">
// 모바일의 경우 타이틀 이미지 사이즈 별도 지정 필요
// 타이틀 이미지 배경없는 PNG
function _f_initPragraph(){

	var _paragraphWrap = $('.eduf-paragraph')

	_paragraphWrap.each(function(){

		var SELECTOR ={
			this : $(this),
			dataBg : $(this).data('bg'),
			dataBgImg : $(this).data('bgimg'),
			dataImg : $(this).data('img'),
			dataHeight : $(this).data('height'),
		}

		var _content = ''
		var _height = (SELECTOR.dataHeight == undefined ) ? 305: SELECTOR.dataHeight;

		if( SELECTOR.dataBgImg != undefined ){
			_content += '<div id="eduf-paragraph" style="background:'+ SELECTOR.dataBgImg +'; background-size: cover; background-color:'+ SELECTOR.dataBg +'; height: '+ _height +'px">';
		}else{
			_content += '<div id="eduf-paragraph" style="background-color:'+ SELECTOR.dataBg +'; height: '+ _height +'px">';
		}
		if( SELECTOR.dataImg != undefined ){
			_content += '<img src="'+ SELECTOR.dataImg +'" alt="">';
		}

		_content += '<svg width="315" height="95" class="icon" viewBox="0 0 315 95" fill="none" xmlns="http://www.w3.org/2000/svg">';
		_content += '<path d="M0 5.04743C2.98065 4.98565 6.15921 4.98274 9.5005 5.04743L154 0L298.544 5.04743C250.485 5.04743 161.286 18.1542 150.728 79.6833C143.092 21.5919 58.6722 5.99941 9.5005 5.04743H0Z" fill="'+ SELECTOR.dataBg +'"/>';
		_content += '</svg>';
		_content += '</div>';

		SELECTOR.this.prepend(_content);
		SELECTOR.this.removeAttr('data-bg').removeAttr('data-img');

		//return false;
	})
}

//레이어팝업(딤X)
// 예시 : layerClose('popup_open');
function layerClose($selector){
	var $popupLayer = $($selector);
	$popupLayer.hide();
}

// 예시 : layerOpen('.popup_open');
function layerOpen($selector){
	var $popupLayer = $($selector);
	$popupLayer.show();
}

// 팝업
// 예시 : popupClose('.dimmed','popup_open');
function popupClose($dimName, $idName){
	var dimName = $dimName;
	var $popupLayer = $("#"+$idName);
	$(dimName).hide();
	$popupLayer.hide();
}

// 예시 : popupOpen('.dimmed', 'popup_open');
/*
function popupOpen($dimName, $idName, $position){
	if($position == undefined) $position = 0;

	var dimName = $dimName;
	var $popupLayer = $("#"+$idName);
	$(dimName).show();
	$popupLayer.show();
	popupPosition($popupLayer, $position);
}
*/

function popupOpen($dimName, $idName, $position, $actionDim){
	if($actionDim == undefined) $actionDim = "N";
	if($position == undefined) $position = 0;

	var dimName = $dimName;
	var $popupLayer = $("#"+$idName);
	$(dimName).show();
	$popupLayer.show();

    popupPosition($popupLayer, $position);

	if($actionDim == "Y"){
		$(dimName).on("click",function(){
			$(dimName).hide();
			$popupLayer.hide();
		});
	}
}



function popupPosition($popupLayer, $position) {
	var st = $(window).scrollTop();
	var winHeight = $(window).height();
	var popupHeight = $popupLayer.outerHeight();

	var topValue = (st + ( winHeight / 2 - popupHeight / 2 ));
	var url = window.location.href;
    var eventStr = 'mevent.eduwill.net';
    var checkUrl = url.indexOf(eventStr);

	var brandStr = 'brand.eduwill.net';
    var checkUrl2 = url.indexOf(brandStr);
	
	var ecoBanner = 0;
	var minus = 0;
	var upper = 0;
	var lower = 0;
	
	if($(window).height() < popupHeight){	
		topValue = st;

		// 모바일일 경우
		if(checkUrl != -1 || checkUrl2 != -1){
			$("#wrap").children("[data-eduwill-eco-content]:first").not("#hidefooter").each(function(i){
				 var $target = $(this);			
				ecoBanner += Number($target.height());					 
			});
						
			if($("#header").find(".upper:visible").length> 0){
				upper =$("#header").find(".upper").height();
			}

			if($("#header").find(".lower:visible").length> 0){
				lower =$("#header").find(".lower").height();
			}

			minus = upper + lower;
		}


		$popupLayer.css({
			position:"absolute",
			marginTop:0,
			top:topValue-ecoBanner-minus+$position
		});


	}else{
		
		$popupLayer.css({
			top:"50%",
			position:"fixed",
			marginTop:-($popupLayer.height()/2)
		});

	}


}


function openScalePopup($popupLayer){
	TweenMax.killTweensOf( $popupLayer );
	TweenMax.set( $popupLayer, { scale : 0.5, opacity:0});
	TweenMax.to( $popupLayer, 0.4, { scale: 1, opacity:1, ease:Expo.easeInOut });
}

// 타이머설정
// 예시: getTimer('.banner-timer','May 29,2020,20:59');
function getTimer($selector, $dateTime){
	var selector = $selector;
	var delay = 10;
	var end = new Date($dateTime).getTime(); 
	var _second = 1000;
	var _minute = _second * 60;
	var _hour = _minute * 60;
	var _day = _hour * 24;
 
	function showSec() {
		var now = new Date();
		var distance = end - now;
		if (distance < 0 ) {
			$(selector).find(".day").text("0");
			$(selector).find(".hour").text("00");
			$(selector).find(".min").text("00");
			$(selector).find(".sec").text("00");
			$(selector).find(".msec").text("00");
		} else {
			var days = Math.floor(distance / _day);
			var hours = Math.floor( (distance % _day ) / _hour );
			var minutes = Math.floor( (distance % _hour) / _minute );
			var seconds = Math.floor( (distance % _minute) / _second );
			var mseconds =  "00";
			try { mseconds = Math.floor( (distance % _minute) % 1000).toString().substring(0,2); } catch(e) {}

			$(selector).find(".day").text((days.toString().length == 1) ? days : days);
			$(selector).find(".hour").text((hours.toString().length == 1) ? "0"+hours : hours);
			$(selector).find(".min").text((minutes.toString().length == 1) ? "0"+minutes : minutes);
			$(selector).find(".sec").text((seconds.toString().length == 1) ? "0"+seconds : seconds);
			$(selector).find(".msec").text(mseconds);
 
			setTimeout(showSec, delay);
		}
	}

	setTimeout(showSec, delay);
}

// 예시: getTimerNew('.banner-timer','May 29,2020,20:59');
function getTimerNew($selector, $dateTime){
	var selector = $selector;
	var delay = 10;
	var end = new Date($dateTime).getTime(); 
	var _second = 1000;
	var _minute = _second * 60;
	var _hour = _minute * 60;
	var _day = _hour * 24;

	function showSecNew() {
		var now = new Date();
		var distance = end - now;
		if (distance < 0 ) {
			$(selector).find(".day").html("<span>0</span><span>0</span>");
			$(selector).find(".hour").html("<span>0</span><span>0</span>");
			$(selector).find(".min").html("<span>0</span><span>0</span>");
			$(selector).find(".sec").html("<span>0</span><span>0</span>");
			$(selector).find(".msec").html("<span>0</span><span>0</span>");
		} else {
			var days = Math.floor(distance / _day).toString();
			var hours = Math.floor( (distance % _day ) / _hour ).toString();
			var minutes = Math.floor( (distance % _hour) / _minute ).toString();
			var seconds = Math.floor( (distance % _minute) / _second ).toString();
			var mseconds =  "00";
			try { mseconds = Math.floor( (distance % _minute) % 1000).toString().substring(0,2); } catch(e) {}

			$(selector).find(".day").html((days.length == 1) ? "<span>"+days+"</span>" : 
			"<span>"+ days.charAt(0)+"</span><span>"+ days.charAt(days.length-1) +"</span>");

			$(selector).find(".hour").html((hours.length == 1) ? "<span>0</span><span>"+hours+"</span>" :
			 "<span>"+ hours.charAt(0)+"</span><span>"+ hours.charAt(hours.length-1) +"</span>");

			$(selector).find(".min").html((minutes.length == 1) ? "<span>0</span><span>"+minutes+"</span>"  : "<span>"+ minutes.charAt(0)+"</span><span>"+ minutes.charAt(minutes.length-1) +"</span>");

			$(selector).find(".sec").html((seconds.length == 1) ? "<span>0</span><span>"+seconds+"</span>" : "<span>"+ seconds.charAt(0)+"</span><span>"+ seconds.charAt(seconds.length-1) +"</span>");

			$(selector).find(".msec").html((mseconds.length == 1) ? "<span>0</span><span>"+mseconds+"</span>" : "<span>"+ mseconds.charAt(0)+"</span><span>"+ mseconds.charAt(mseconds.length-1) +"</span>");

			setTimeout(showSecNew, delay);
		}
	}

	setTimeout(showSecNew, delay);
}

// 예시: getTimerWithDateStr('.banner-timer','2022-08-08T17:59:59');
function getTimerWithDateStr($selector, dateStr){
	var selector = $selector;
	var delay = 10;
	let end = new Date(dateStr).getTime();
	var _second = 1000;
	var _minute = _second * 60;
	var _hour = _minute * 60;
	var _day = _hour * 24;

	function showSecNew() {
		var now = new Date();
		var distance = end - now;
		if (distance < 0 ) {
			$(selector).find(".day").html("<span>0</span><span>0</span>");
			$(selector).find(".hour").html("<span>0</span><span>0</span>");
			$(selector).find(".min").html("<span>0</span><span>0</span>");
			$(selector).find(".sec").html("<span>0</span><span>0</span>");
			$(selector).find(".msec").html("<span>0</span><span>0</span>");
		} else {
			var days = Math.floor(distance / _day).toString();
			var hours = Math.floor( (distance % _day ) / _hour ).toString();
			var minutes = Math.floor( (distance % _hour) / _minute ).toString();
			var seconds = Math.floor( (distance % _minute) / _second ).toString();
			var mseconds =  "00";
			try { mseconds = Math.floor( (distance % _minute) % 1000).toString().substring(0,2); } catch(e) {}

			$(selector).find(".day").html((days.length == 1) ? "<span>"+days+"</span>" : 
			"<span>"+ days.charAt(0)+"</span><span>"+ days.charAt(days.length-1) +"</span>");

			$(selector).find(".hour").html((hours.length == 1) ? "<span>0</span><span>"+hours+"</span>" :
			 "<span>"+ hours.charAt(0)+"</span><span>"+ hours.charAt(hours.length-1) +"</span>");

			$(selector).find(".min").html((minutes.length == 1) ? "<span>0</span><span>"+minutes+"</span>"  : "<span>"+ minutes.charAt(0)+"</span><span>"+ minutes.charAt(minutes.length-1) +"</span>");

			$(selector).find(".sec").html((seconds.length == 1) ? "<span>0</span><span>"+seconds+"</span>" : "<span>"+ seconds.charAt(0)+"</span><span>"+ seconds.charAt(seconds.length-1) +"</span>");

			$(selector).find(".msec").html((mseconds.length == 1) ? "<span>0</span><span>"+mseconds+"</span>" : "<span>"+ mseconds.charAt(0)+"</span><span>"+ mseconds.charAt(mseconds.length-1) +"</span>");

			setTimeout(showSecNew, delay);
		}
	}

	setTimeout(showSecNew, delay);
}

// 페이지이동
// 예시 : pageMove('.page_move');
// pageMove('.page_move', -100);
function pageMove($selector, $position){
	if($position == undefined) $position = 0;

	var selector = $selector;
	$(selector).on('click', function (e) {
		e.preventDefault();

		var _top = $($(this).attr('href'));
		if (typeof (_top) != 'undefined' && typeof (_top.offset()) != 'undefined') { // 대상 체크
			var $target = _top.offset().top;

			$('html,body').animate({
				scrollTop: $target+$position
			}, 500);
		}
	});
}

function pageTopMove(){
	$('html,body').animate({
		scrollTop: 0
	}, 500);
}

// 파라미터처리
//  예시 var param = getParameter("p");
//    if(param != ""){
//        if(param = "value"){실행할이벤트적용}
//    }
function getParameter(sName) {
    var sPath = location.href;
    var oQS;
    var i;
    var oTemp;
    var sResult = '';

    sName = sName.toUpperCase();

    if(sPath.indexOf('?') > -1) {
        sPath = sPath.split('?')[1];

        if(sPath != '') {
            oQS = sPath.split('&');

            for(i=0; i<oQS.length; i++) {
                oTemp = oQS[i].split('=');

                if(oTemp[0].toUpperCase() == sName) {
                sResult = oTemp[1];
                break;
                }
            }
        }
    }

    return sResult;
}

// 모바일기기체크
function isMobileCheck(){
	var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;
	return isMobile;
}


// Pointer button
// A TAG LINK HAND POINTER COMMON MODULE
// icon : HAND 사용여부 추후 다른형식의 확장성 고려
// pointer : Pointer 공통 이미지 네임 설정
// style : (bottonm, right, width, 효과관련 클래스)
function _f_initPointButton(){

	if( $('[data-icon="hand"]').length ) {

		$('[data-icon]').each(function(){
			var _this = $(this);
			var _pointer = _this.data('pointer');
			var _disabled = _this.attr('disabled');
			var _baseUrl = '//img.eduwill.net/Img2/Common/icon/pointer/'+ _pointer +'.png';

			if( isMobile ){
				var _datastylemo = _this.data('stylemo');
				var _arraryMo = _datastylemo.split(',');
				
				if( !_disabled ){
					_this.append('<img src="'+ _baseUrl +'" class="'+ _arraryMo[3] +'" style="bottom: '+_arraryMo[0]+'px; right: '+_arraryMo[1]+'px; width: '+_arraryMo[2]+'px" alt="" />')
				}
				
			}else{

				var _dataStyle = _this.data('style');
				var _arrary = _dataStyle.split(',');

				if( !_disabled ){
					_this.append('<img src="'+ _baseUrl +'" class="'+ _arrary[3] +'" style="bottom: '+_arrary[0]+'px; right: '+_arrary[1]+'px; width: '+_arrary[2]+'px" alt="" />')
				}
			}

		});
	}
}


// layer video
// <link rel="stylesheet" href="//img.eduwill.net/eduwill/dev/css/common/eduf.css">
// edufLayerVideoOpen($url, "autoplay loop controls muted");
function edufLayerVideoOpen($url, $options){
	if(typeof $options == "undefined"){
		$options = "autoplay loop controls";
	}

	var _body = $("body");
	_body.append('<div class="eduf-layer" id="edufLayerVideo"><div class="eduf-layer-wrap"><a href="javascript:edufLayerVideoClose();" class="eduf-layer-close"></a><div class="eduf-layer-content"></div></div></div>');

	var _edufLayerContent = $("#edufLayerVideo .eduf-layer-content");
    if ($url.indexOf('.mp4') != -1) {
        _edufLayerContent.html('<video playsinline="" controlslist="nodownload" '+$options+'><source src="'+$url+'" type="video/mp4"></video>');
    }else{
        _edufLayerContent.html('<iframe src="'+$url+'" frameborder="no" scrolling="no" marginwidth="0" marginheight="0" width="100%" height="100%" allowfullscreen></iframe>');
    }

    $("#edufLayerVideo").addClass("show");
}

function edufLayerVideoClose(){
	$("#edufLayerVideo").remove();
}

// edufLayerOpen('#brandLayerEvent');
function edufLayerOpen($selector){
	$($selector).show();

	if($(window).height() <= $($selector).find(".eduf-layer-wrap").outerHeight()){
		// 팝업이클때는 

		$($selector).css({display:"flex"});
		var minus =  isMobileCheck()?300:250;
		var popupHeight =$(window).height()-minus;
		$(".eduf-layer-content").css({
			"height": popupHeight+"px",
			"overflow-y": "auto"
		});

	}else{
		// 팝업이 작을때는
		$($selector).removeClass("wide");
		$($selector).css({display:"flex"});
	}
}


// edufLayerClose('#brandLayerEvent');
function edufLayerClose($selector){
	$($selector).hide();
	$(".eduf-layer-content").css({'height':'auto'});

	if($(".eduf-layer-dim").is(':visible')){
		$(".eduf-layer-dim").remove();
	}
}

function bookmarkAlert(){

	var OsNo = navigator.userAgent.toLowerCase();
	jQuery.os = {
		Linux: /linux/.test(OsNo),
		Unix: /x11/.test(OsNo),
		Mac: /mac/.test(OsNo),
		Windows: /win/.test(OsNo)
	}
	if ($.os.Mac) {
		alert("Command+D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
	} else {
		alert("Ctrl+D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
	}
}

function edufLayerDimClose(objId){
	$(document).click(function (e){
		var LayerPopup = $(objId);
		if(LayerPopup.has(e.target).length === 0){
			LayerPopup.hide();
		}
	});
}
