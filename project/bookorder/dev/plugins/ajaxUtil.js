


/**========================================================================================================
* 용  도 : ajaxUtil Util
* 작성자 : 안치성
* 작성일 : 2015-03-30
*========================================================================================================*/
var AjaxUtil = (function(){
	
	function AjaxUtil_(){
		
	}

    AjaxUtil_.prototype.commonAjaxPost = function (callUrl, param, selectId, selectedItem, title, async) {
        $.ajax({
			type:"POST",
            async: (async == undefined) ? true : async,			// true-비동기, false-동기
			url:callUrl,
			crossDomain:false,
			dataType:"json",
			timeout:5000,
			cache:false,
			data:param,
            success: function (data, textStatus, jqXHR) {
                
				try{					
                    ajaxSuccessProcess(data, selectId, selectedItem, title);
                } catch (e) { }
			},
			error:function(xhr, msg, e){
				//alert(xhr + "|" + msg + "|" + e);
				try{
					ajaxFailProcess();
				}catch(e){}
            },
            complete: function () {
                //alert("c");
            }
		});
	};

    function ajaxSuccessProcess(jsonData, element, selectedItem, title) {
	    var count = jsonData.length;
	    var value;
	    var sText;
	    var text = "";
		var addOpt = "";

	    if (title == null) {
	        //text = '<option value="">선택하십시오.</option>';
	    } else {
	        text = '<option value="">' + title + '</option>';
	    }
		
	    if (count > 0) {
	        for (var i = 0; i < count; i++) {
	            value = jsonData[i].value;
				sText = jsonData[i].text;
				var rfval1 = jsonData[i].rfval1;
				if(rfval1 != null && rfval1 != "undefined") {
					addOpt = "data-rfval1='" + rfval1 + "'";
				}

				var rfval2 = jsonData[i].rfval2;
				if(rfval2 != null && rfval2 != "undefined") {
					addOpt += "data-rfval2='" + rfval2 + "'";
				}

	            if (String(value) == selectedItem) {
	                text += '<option value="' + value + '" ' + addOpt + ' selected>' + sText + '</option>';
	            } else {
	                text += '<option value="' + value + '" ' + addOpt + '>' + sText + '</option>';
	            }
				
				addOpt = "";
	        }
	    }
		$(element).html(text);
	}

	return AjaxUtil_;
})();