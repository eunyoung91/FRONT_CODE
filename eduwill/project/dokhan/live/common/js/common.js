/**========================================================================================================
* 용  도 : ajaxUtil Util
* 작성자 : 안치성 정예지 수정  치성 또 수정
* 작성일 : 2016-10-17
*========================================================================================================*/


// 여기 추가했어요 by 안치성
var AjaxUtil = (function(){
	
	function AjaxUtil_(){
		
	}

	AjaxUtil_.prototype.ajaxForFormCallback = function(apiUrl, formElementId, successCallback, failCallback){
		var formData = $("form[id=" + formElementId + "]").serialize();

		$.ajax({
			url:apiUrl,
			type:'POST',
			data:formData,
			async:true,
			cache:false,
			dataType:'json',
			success:function(data){
				if (typeof successCallback == "function") {
					successCallback(data);
				}
			},
			error:function(e){
				if (typeof failCallback == "function") {
					failCallback(e);
				}
			}
		});
	};

	AjaxUtil_.prototype.getAjaxCallback = function(apiUrl, jsonParam, successCallback, failCallback){
		$.ajax({
			type:"GET",
			async:true,
			url:apiUrl,
			crossDomain:false,
			dataType:"json",
			timeout:5000,
			cache:false,
			data:jsonParam,
			success:function(data){
				successCallback(data);
			},
			error:function(xhr, msg, e){
				failCallback(e);
			}
		});
	};

	AjaxUtil_.prototype.getHtmlAjaxCallback = function(apiUrl, jsonParam, successCallback, failCallback){
		$.ajax({
			type:"GET",
			async:true,			// true-鍮꾨룞湲�, false-�숆린
			url:apiUrl,
			crossDomain:false,
			dataType:"html",
			timeout:5000,
			cache:false,
			data:jsonParam,
			success:function(data){
				successCallback(data);	// �깃났�� �⑥닔 �ㅽ뻾
			},
			error:function(xhr, msg, e){
				failCallback(e);		// �ㅽ뙣�� �⑥닔 �ㅽ뻾
			}
		});
	}

	AjaxUtil_.prototype.postAjaxCallback = function(apiUrl, jsonParam, successCallback, failCallback){
		$.ajax({
			type:"POST",
			async:true,			
			url:apiUrl,
			crossDomain:false,
			dataType:"json",
			timeout:5000,
			cache:false,
			data:jsonParam,
			success:function(data){
				successCallback(data);
			},
			error:function(xhr, msg, e){
				failCallback(e);
			}
		});
	};

	//
	AjaxUtil_.prototype.postSyncAjaxCallback = function(apiUrl, jsonParam, successCallback, failCallback){
		$.ajax({
			type:"POST",
			async:false,			
			url:apiUrl,
			crossDomain:false,
			dataType:"json",
			timeout:5000,
			cache:false,
			data:jsonParam,
			success:function(data){
				successCallback(data);
			},
			error:function(xhr, msg, e){
				failCallback(e);
			}
		});
	};
	
	/**========================================================================================================
	* 용  도 : Ajax for Json
	* 작성자 : 안치성
	*========================================================================================================*/
	AjaxUtil_.prototype.commonAjax = function(callUrl){
		$.ajax({
			type:"GET",
			async:true,			// true-비동기, false-동기
			url:callUrl,
			crossDomain:false,
			dataType:"json",
			timeout:5000,
			cache:false,
			data:"",
			success:function(data, textStatus, jqXHR){
				try{
					ajaxResult(data);
				}catch(e){}
			},
			error:function(xhr, msg, e){
				try{
					ajaxFail();
				}catch(e){}
			}
		});
	};
	
	
	/**========================================================================================================
	* 용  도 : Ajax for Json
	* 작성자 : 안치성
	*========================================================================================================*/
	AjaxUtil_.prototype.commonAjax2 = function(callUrl, gubun){
		$.ajax({
			type:"GET",
			async:true,			// true-비동기, false-동기
			url:callUrl,
			crossDomain:false,
			dataType:"json",
			timeout:5000,
			cache:false,
			data:"",
			success:function(data, textStatus, jqXHR){
				try{
					ajaxResult2(data, gubun);
				}catch(e){}
			},
			error:function(xhr, msg, e){
				try{
					ajaxFail2();
				}catch(e){}
			}
		});
	};
	
	
	return AjaxUtil_;
})();

// 현재콘텐츠의 높이를 기준으로 부모창 Frame 높이 조절
function parentFrameAutoReSize(contentId, parentFrameId, addHeight){
	var minHeight = 150;

	try{
		var strContentHeight = $("#" +contentId).css("height");
		var contentHeight = parseInt(strContentHeight.replace("px", "")) + parseInt(addHeight);

		if (contentHeight < minHeight){
			contentHeight = minHeight;
		}

		$("iframe[id=" + parentFrameId + "]", parent.document).css("height",contentHeight);
	
	}catch(e){
		alert(e);	////
	}
}

// 문자열 자르기 prototype
	String.prototype.cut = function(limit) {
		var str = this;
		var textCount = 0;

		for (var i=0; i<str.length; i++) {
			textCount += (str.charCodeAt(i) > 128) ? 2 : 1;

			if(textCount > limit){
				return str.substring(0,i);
			}
		}

		return str;
	}



// SMS 바이트 계산
function textLimitCheck(objId, textLimit){
	var text = $("[id=" + objId + "]").val();
	var _byte = 0;

	for(var i=0; i<text.length; i++){
		var str = text.charAt(i);

		if(escape(str).length > 4 || escape(str) == "%0A"){
			_byte += 2;
		}else{
			_byte++;
		}
	}

	if(_byte > textLimit){
		alert(textLimit + " byte까지 입력하실 수 있습니다.");
		var newText = text.cut(textLimit);
		$("[id=" + objId + "]").val(newText);
	}

	text = $("[id=" + objId + "]").val();
	_byte = 0;

	for(var i=0; i<text.length; i++){
		var str = text.charAt(i);

		if(escape(str).length > 4 || escape(str) == "%0A"){
			_byte += 2;
		}else{
			_byte++;
		}
	}

	if(_byte > textLimit){
		_byte = textLimit;
	}

	//$("#byteCnt").html(_byte);
}

var CommonUtil = (function(){
	
	function CommonUtil_(){
		
	}
	
	// 쿠키 조회
	CommonUtil_.prototype.getCookie = function(name){
		var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
    	return value? value[2] : null;
	}
	
	// 쿠키 설정
	CommonUtil_.prototype.setCookie = function(name, value, exp){
		var date = new Date();
    	date.setTime(date.getTime() + exp*24*60*60*1000);
    	document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
	}
	
	return CommonUtil_;
	
})();