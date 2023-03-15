


/**========================================================================================================
* 용  도 : ajaxUtil Util
* 작성자 : 안치성
* 작성일 : 2015-03-30
*========================================================================================================*/
var AjaxUtil = (function(){
	
	function AjaxUtil_(){
		
	}

	AjaxUtil_.prototype.commonAjaxPost = function (callUrl, param, selectId, selectedItem, title) {
		$.ajax({
			type:"POST",
			async:true,			// true-비동기, false-동기
			url:callUrl,
			crossDomain:false,
			dataType:"json",
			timeout:5000,
			cache:false,
			data:param,
			success: function (data, textStatus, jqXHR) {
				try{					
				    ajaxSuccessProcess(data.list, selectId, selectedItem, title);
			    }catch(e){}
			},
			error:function(xhr, msg, e){
				//alert(xhr + "|" + msg + "|" + e);
			}
		});
	};

	/**========================================================================================================
	* 용  도 : Ajax for Json - Post
	* 적  용 : promise로 callback메소드 호출시 활용
	* 예  시 : ajaxUtil.commonPromisePost(callUrl, param, selectId, selectedItem, title).then(function(){alert(1); //AJAX완료시 호출	});
	* 작성자 : 김영배
	*========================================================================================================*/
	AjaxUtil_.prototype.commonPromisePost = function (callUrl, param, selectId, selectedItem, title) {
		return new Promise(function(resolve, reject){
			$.ajax({
				type:"POST",
				async:true,			// true-비동기, false-동기
				url:callUrl,
				crossDomain:false,
				dataType:"json",
				timeout:5000,
				cache:false,
				data:param,
				success: function (data, textStatus, jqXHR) {
					ajaxSuccessProcess(data.list, selectId, selectedItem, title);
					resolve();
				},
				error:function(xhr, msg, e){
					//alert(xhr + "|" + msg + "|" + e);
					reject(msg);
				}
			});
		});
	};

	function ajaxSuccessProcess(jsonData, element, selectedItem, title) {
	    var count = jsonData.length;
	    var value;
	    var sText;
	    var text;

	    if (title == null) {
	        text = '<option value="">선택하십시오.</option>';
	    } else {
	        text = '<option value="">' + title + '</option>';
	    }

	    if (count > 0) {
	        for (var i = 0; i < count; i++) {
	            value = jsonData[i].value;
	            sText = jsonData[i].text;

	            if (String(value) == selectedItem) {
	                text += '<option value="' + value + '" selected>' + sText + '</option>';
	            } else {
	                text += '<option value="' + value + '">' + sText + '</option>';
	            }
	        }
	    }
	    $(element).html(text);
	}

	return AjaxUtil_;
})();