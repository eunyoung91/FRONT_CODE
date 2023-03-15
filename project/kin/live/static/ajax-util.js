/**========================================================================================================
* 용  도 : ajaxUtil Util
* 작성일 : 2016-10-17
*========================================================================================================*/

// 여기 추가했어요 by 안치성
var AjaxUtil = (function(){
	
	function AjaxUtil_(){
		
	}
	
	/**========================================================================================================
	* 용  도 : Ajax for Json
	* 작성자 : 안치성
	*========================================================================================================*/
	
	// 예지가 한번 더 수정
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


