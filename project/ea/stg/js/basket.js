


/**========================================================================================================
* 용  도 : Basket Util
* 작성자 : 안치성
* 작성일 : 2015-03-30
*========================================================================================================*/
var BasketUtil = (function(){
	
	function BasketUtil_(){
		
	}
		
	/**========================================================================================================
	* 용  도 : Ajax for Json
	* 작성자 : 안치성
	*========================================================================================================*/
	BasketUtil_.prototype.commonAjax = function(callUrl){
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
					ajaxSuccessProcess(data);
				}catch(e){}
			},
			error:function(xhr, msg, e){
				alert(xhr + "|" + msg + "|" + e);
				try{
					ajaxFailProcess();
				}catch(e){}
			}
		});
	};
	
	/**========================================================================================================
	* 용  도 : Ajax for Json - Post
	* 작성자 : 안치성
	*========================================================================================================*/
	BasketUtil_.prototype.commonAjaxPost = function(callUrl, param){
		$.ajax({
			type:"POST",
			async:true,			// true-비동기, false-동기
			url:callUrl,
			crossDomain:false,
			dataType:"json",
			timeout:5000,
			cache:false,
			data:param,
			success:function(data, textStatus, jqXHR){
				try{
					ajaxSuccessProcess(data);
				}catch(e){}
			},
			error:function(xhr, msg, e){
				alert(xhr + "|" + msg + "|" + e);
				try{
					ajaxFailProcess();
				}catch(e){}
			}
		});
	};
	
	
	/**========================================================================================================
	* 용  도 : Ajax for Json
	* 작성자 : 안치성
	*========================================================================================================*/
	BasketUtil_.prototype.commonAjax2 = function(callUrl, gubun){
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
					ajaxSuccessProcess2(data, gubun);
				}catch(e){}
			},
			error:function(xhr, msg, e){
				//alert(xhr + "|" + msg + "|" + e);
				try{
					ajaxFailProcess2(gubun);
				}catch(e){}
			}
		});
	};


	/**========================================================================================================
	* 용  도 : 페이지 특정위치로 이동
	* 작성자 : 안치성
	*========================================================================================================*/
	BasketUtil_.prototype.verticalMove = function(topPostion, anmationTime){
		$('html, body').animate({scrollTop : topPostion}, anmationTime);	// 특정위치로 화면스크롤 이동
	};
	
	
	/**========================================================================================================
	* 용  도 : 텍스트 바이트 계산
	* 작성자 : 안치성
	*========================================================================================================*/
	BasketUtil_.prototype.getTextByte = function(text){
		var _byte = 0;
		if(text.length > 0){
			for(var i=0; i<text.length; i++){
				var str = text.charAt(i);
				if(escape(str).length > 4){
					_byte += 2;
				}else{
					_byte++;
				}
			}
		}
		return _byte;
	};
	
	
	/**========================================================================================================
	* 용  도 : 텍스트 자르기
	* 작성자 : 안치성
	*========================================================================================================*/
	BasketUtil_.prototype.cut = function(len) {
		var str = this;
		var l = 0;
		for (var i=0; i<str.length; i++) {
			l += (str.charCodeAt(i) > 128) ? 2 : 1;
			if (l > len) return str.substring(0,i);
		}
		
		return str;
	}
	
	
	/*********************************************************************************************************
	* 가격 - 3자리 콤마
	*********************************************************************************************************/
	BasketUtil_.prototype.numberFormat = function(num) {
		num = (num.replace(/\,/g,""));;
		var pattern = /(-?[0-9]+)([0-9]{3})/;
		while(pattern.test(num)){
			num = num.replace(pattern,"$1,$2");
		}

		return num;
	}

	return BasketUtil_;
})();