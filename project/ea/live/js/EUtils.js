var EUtils = {
	/**
	 * 폼멤버들의 값을 가져올 때 사용된다.
	 * 예 EUtils.formValue(formData, "usrNm")
	 * memberValue값을 입력하면 해당 멤버의 해당 값이 맞다면 문자열 true를 리턴 한다.
	 * (체크 박스에서 해당 값이 체크되어있는 지 확인하고 싶을 때 사용된다.)
	 * 예 EUtils.formValue(formData, "checkBoxName", "value1")
	 * @param  formData: serializeArray 된 폼 멤버들
	 * @param  memberName: 검색할 폼 멤버 이름
	 * @param  memberValue: memberName 검색 값
	 */
	formValue : function(formData, memberName, memberValue) {
		var returnValue = null;

		for (var i = 0; i < formData.length; i++) {
			var name = formData[i].name;
			var value = formData[i].value;
//			console.log(name );
			if(name == memberName){
				if(memberValue == null || memberValue ==""){
					returnValue = EUtils.trim(value);
					break;
				}else{
					if(memberValue == value){
						returnValue = true;
						break;
					}
				}
			}
		}
		return returnValue;
	},

	/**
	 * 폼멤버들의 값이 있는지 또는 최소값, 최대 값에 따른 선택이 되었는지 확인한다.
	 * text 경우 trim을 하기에 rowCount 1 로 주면된다.
	 * 예 EUtils.formValueFlag(formData, "checkBoxName", 1, 3)
	 * @param  formData: serializeArray 된 폼 멤버들
	 * @param  memberName: 검색할 폼 멤버 이름
	 * @param rowCount 최소 값
	 * @param highCount 최대 값
	 * @returns {String}
	 */
	formValueFlag : function(formData, memberName, rowCount, highCount) {
		var returnValue = false;
		var fcnt = 0;
		for (var i = 0; i < formData.length; i++) {
			var name = formData[i].name;
			var value = formData[i].value;
//			console.log(name  +" = "+ value );
			if(name == memberName){
				if(EUtils.trim(value) != ""){
					fcnt = fcnt + 1;
				}
			}
		}
//		console.log(returnValue);

		if(rowCount <= fcnt){
			if(highCount > 0 ){
				if(highCount >= fcnt){
					returnValue = true;
				}
			}else{
				returnValue = true;
			}
		}
		return returnValue;
	},

	checkInput : function(targets){
		var result = 1;
		$("input[type=text],input[type=password],input[type=radio]").each(function(){
			if($(this).val() == "" && $.inArray($(this).attr("id"), targets) > -1) {
				alert($(this).attr("alt")+"를 입력해 주세요.");
				if($(this).attr("type") != "password") {
					$(this).focus();
				}
				//$(this).focus();
				result =0;
				return false;
			}
			/**
			 * 라디오 버튼의 경우
			 */
			if($(this).attr("type") == "radio" && $.inArray($(this).attr("name"), targets) > -1){
				//var targetNm = $(this).attr("name");
				if($(this).parent().find("input[type=radio]").is(":checked") == false) {
					alert($(this).attr("alt")+"를 체크해 주세요.");
					$(this).focus();
					result =0;
					return false;
				}

			}

		});
		return result;
	},

	isNumeric : function(input) {
		var chars = "0123456789";
		for(var i=0; i< input.length; i++) {
			if(chars.indexOf(input.charAt(i)) == -1)
				return false;
		}
		return true;
	},

	/**
	 * trim 함수
	 * 예 EUtils.trim(value)
	 * @param str
	 * @returns
	 */
	trim : function(str){
		return str.replace(/\s/g, "");
	},

	dummyFunction : function() {
//		console.log("dummyFunction");
	}
};
