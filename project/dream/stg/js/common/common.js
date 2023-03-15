/* ===================================================================================
=	모의고사용으로 추가된 함수 
=	작성자 : 김성경
=================================================================================== */
/*
 * 	제목 : 모의고사용 년도 콤보박스 사용
 * 	일자 : 2015-11-25
 *  누가 : skkim2
 *  설명 : 	option 기준 : 현재년도 - 5 ~ 현재년도 + 1 년
 *			val1 값이 있는경우 selected 처리			
 */
function fn_Exam_Year_combo(obj1, val1) {	
	var nowDate = new Date();
	var curYear = nowDate.getFullYear();
	var fromYear = parseInt(curYear) - 5;
	var toYear = parseInt(curYear) + 1;
	/*for(var i = fromYear; i <= toYear; i++) {
		obj1.append("<option value='"+i+"'>"+ i +"</option>");
	}*/	
	for (var i = toYear; i >= fromYear; i--) {
		obj1.append("<option value='"+i+"'>"+ i +"</option>");
	}	
	if (val1 != null && val1 != "") {
		obj1.val(val1).attr('selected', true);
	}
	if (obj1.val() == '') {
		obj1.val(curYear);		
	}
}

//CKEDITOR 공통 옵션
var CKEDITOR_OPTION = {
	autoUpdateElement: true,
	//enterMode: CKEDITOR.ENTER_BR,
	//shiftEnterMode: CKEDITOR.ENTER_P
	toolbar:
	    [
	     	/* 기본제공 툴바
	     	['Source','-','NewPage','Preview','-','Templates'],
     		['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
 			['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
 			['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],
			 '/',
			 ['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
			 ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
			 ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
			 ['Link','Unlink','Anchor'],
			 ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
			 '/',
			 ['Styles','Format','Font','FontSize'],
			 ['TextColor','BGColor'],
			 ['Maximize', 'ShowBlocks','-','About']
			 */
	     	/* 위첨자, 아래첨자 추가 및 정렬
	     	['NewPage','Preview'],
	        ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Scayt'],
	        ['Undo','Redo'],
	        ['Image','Flash','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
	        '/',
	        ['Styles','Format'],
	        ['Bold','Italic','Underline','Strike','TextColor','BGColor'],
	        ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
	        ['Link','Unlink','Anchor','Maximize']
	        */
	     	['NewPage','Preview'],
	        ['Cut','Copy','Paste','PasteText','PasteFromWord','-','Scayt'],
	        ['Undo','Redo'],
	        ['Image','Flash','Table','HorizontalRule','Smiley','PageBreak'],
	        //['Styles','Format'],
	        ['Subscript','Superscript','SpecialChar','FMathEditor'],
	        '/',
	        ['Bold','Italic','Underline','Strike','-','TextColor','BGColor'],
	        ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
	        ['Link','Unlink','Anchor','Maximize','Source']
	    ]
};

//Common Selectbox 생성을 위한 공통 스크립트
function ajaxSuccessProcess(jsonData, selectId, selectedItem, title){
	var count = jsonData.length;
	var value;
	var sText;
	var text; //= '<option value="">선택하십시오.</option>';
	
	if(title == null){
		text = '<option value="">선택하십시오.</option>';
	}else{
		text = '<option value="">' + title + '</option>';
	}
	
	if(count > 0){
		for(var i=0; i<count; i++){
			value = jsonData[i].value;
			sText = jsonData[i].text;
						
			//if(value == selectedItem && selectedItem != ""){
			if(String(value) == selectedItem){				
				text += '<option value="' + value + '" selected>' + sText + '</option>';
			}else{
				text += '<option value="' + value + '">' + sText + '</option>';
			}
		}
	}
	$("select[id="+selectId+"]").html(text);
	
	
}



//자동 필수값 체크 모듈
function validation(){
	var result = true;							// 유효성 검사 결과(성공-True, 실패-False)
	
	var alertColor = "#FFA2A2";			// 입력되지 않은 필수항목 오브젝트 배경색을 변경할 컬러값
	var normalColor = "#FFFFFF";		// 정상 오브젝트 배경색을 변경할 컬러값
	
	//===============================================================
	// input text required check
	$("input[type=text][required=true]").each(function(idx){
		if($(this).val() == ""){
			$(this).css("background-color", alertColor);
			result = false;
		}else{
			$(this).css("background-color", normalColor);
		}
	});
	//===============================================================
	
	
	//===============================================================
	// input radio required check
	var name = "";
	$("input[type=radio][required=true]").each(function(idx){
		name = $(this).attr("name");
		
		if($("input[type=radio][required=true][name=" + name +"]:checked").length == 0){
			$(this).css("background-color", alertColor);
			result = false;
		}else{
			$(this).css("background-color", normalColor);
		}
	});
	//===============================================================
	
	
	//===============================================================
	// input checkbox required check
	var checkboxCount = 0;
	$("input[type=checkbox][required=true]").each(function(idx){
		var checkboxName = $(this).attr("name");
		checkboxCount = $("input[type=checkbox][name=" + checkboxName + "]:checked").length;
		
		if(checkboxCount == 0){
			$(this).css("background-color", alertColor);
			result = false;
		}else{
			$(this).css("background-color", normalColor);
		}
	});
	//===============================================================
	
	
	//===============================================================
	// select required check
	$("select[required=true]").each(function(idx){
		if($(this).val() == ""){
			$(this).css("background-color", alertColor);
			result = false;
		}else{
			$(this).css("background-color", normalColor);
		}
	});
	//===============================================================
	
	// textarea required check
	$("textarea[required=true]").each(function(){
		if($(this).val() == ""){
			$(this).css("background-color", alertColor);
			result = false;
		}else{
			$(this).css("background-color", normalColor);
		}
	});
	
	return result;
}

//TextBox 에서 엔터 입력 시 검색버튼 onclick 이벤트 발생
function fnTextBoxEvent(e, targetObj){
	if (e.keyCode == 13) document.getElementById(targetObj).click();
}

//숫자만, 영문만, 한글만 등등 정규식 반환
function validateInputString(inputString, workType){
	 var v_normal = '';
	// alert("input : "+ inputString);
	 if(workType == "onlyNumber"){
	  v_normal = /[^0-9]/g; 
	 }//아래로
	 else if(workType == "onlyAlphabet"){
	  v_normal = /[^a-zA-Z]/g;
	 }//아래로
	 else if(workType == "onlySmallAlphabet"){
	  v_normal = /[^a-z]/g;
	 }//아래로
	 else if(workType == "onlyCapitalAlphabet"){
	  v_normal = /[^A-Z]/g;
	 }//아래로
	 else if(workType == "onlyHangul"){ // 한글(초성 포함)만 가능
	  v_normal = /[^ㄱ-ㅎ가-힣]/g; //본래는 '히+ㅎ'까지 체크해야 하나 euc-kr은 '힝'까지만 가능
	 }//아래로
	 else if(workType == "onlyHangulWhiteSpace"){ // 한글, 공백만 가능
	  v_normal = /[^ㄱ-ㅎ가-힣\s]/g;
	 }//아래로
	 else if(workType == "onlyPerfectHangul"){ // 한글(초성 제외)만 가능
	  v_normal = /[^가-힣]/g;
	 }//아래로
	 else if(workType == "onlyEmail"){ // 이메일 주소(영문자, 숫자, dot(.))만 가능
	  v_normal = /[^a-zA-Z0-9.]/g;
	 }//아래로
	 else{
	  alert("정규식 선택이 부적합합니다.");
	  return "";
	 }
	 if(v_normal.test(inputString)){
	  var v_result = inputString.replace(v_normal, '');
	//  alert("result : "+ v_result);
	  return v_result;
	 }//아래로
	 else{
	  return inputString;
	 }
}

//한글만 사용
function onlyHangul(inputObj){
	inputObj.value = validateInputString(inputObj.value, "onlyHangul");	
}

//숫자만 사용
function onlyNumber(inputObj){
	inputObj.value = validateInputString(inputObj.value, "onlyNumber");
}

//영문만 사용
function onlyAlphabet(inputObj){
	inputObj.value = validateInputString(inputObj.value, "onlyAlphabet");
}

//이메일 형태만 사용
function onlyEmail(inputObj){
	inputObj.value = validateInputString(inputObj.value, "onlyEmail");
}


/****************************************************
* 특정 오브젝트의 위치로 스크롤 이동
****************************************************/
function documentVerticalMove(objectId, anmationTime){
	anmationTime = 0;
	//alert(anmationTime);
	var topPostion = $("#" + objectId).offset().top;
	$('html, body').animate({scrollTop : topPostion}, anmationTime);	// 특정위치로 화면스크롤 이동
}

/****************************************************
* 자식창의 높이로 부모 iframe 높이조절
****************************************************/
function frameAutoReSize(){
	var strHeight = $("body").css("height");
	var h = parseInt(strHeight.replace("px", "")) + 10;
	
	$("iframe[id=contentFrame]", parent.document).animate({
		height:h
	}, 0, function(){
		//
	});
	
	//$("#contentFrame", parent.document).attr("height", height);
}

/****************************************************
* 자식창의 높이로 부모 iframe 높이조절
****************************************************/
function frameAutoReSize2(index){
	var strHeight = $("body").css("height");
	var h = parseInt(strHeight.replace("px", "")) + 10;
	$("iframe[id=contentFrame" + index + "]", parent.document).animate({
		height:h
	}, 0, function(){
		//
	});
}


$(function(){
	
	$(".ready").on("click", function(){
		alert("준비중입니다.");
	});
	
	/****************************************************
	* 이용안내 Toggle
	****************************************************/
	$("a[id=openInfoZone]").on("click", function(){
		$("div[id=infomationZone]").slideDown();
		$("a[id=closeInfoZone]").show();
		$("a[id=openInfoZone]").hide();
	});
	
	$("a[id=closeInfoZone]").on("click", function(){
		$("div[id=infomationZone]").slideUp();
		$("a[id=closeInfoZone]").hide();
		$("a[id=openInfoZone]").show();
	});
	
	/****************************************************
	* Submit 시 progress 아이콘 노출
	****************************************************/
	//$("form[id=searchForm]").on("submit", function(){
	$("form").on("submit", function(){
		try{
			$("div[class=loadingArea]").show(); //조회시 로딩바 노출
		}catch(e){
		}
	});
	
	try{
		//$("input[type=text]:nth(0)").focus();			// 페이지 로딩 후 검색어 입력란으로 자동 포커싱 처리
	}catch(e){
		
	}
});


/*********************************************************************************************************
* 가격 - 3자리 콤마
*********************************************************************************************************/
function numberFormat(num) {
	num = unNumberFormat(num);
	var pattern = /(-?[0-9]+)([0-9]{3})/;
	while(pattern.test(num)){
		num = num.replace(pattern,"$1,$2");
	}

	return num;
}

/*********************************************************************************************************
* 콤마 제거
*********************************************************************************************************/
function unNumberFormat(num) {
	return (num.replace(/\,/g,""));
}

/*********************************************************************************************************
* CTI 전화 걸기
*********************************************************************************************************/
function fnClickToCall(CallNum, ExtId) {
	//ajax 내선번호 가져오기
	var userIntraNum = "";
	$.ajax({
	    type:"post"
	    ,url:"/common/ajaxGetIntraNum.json"
	    ,data: {"userId" : ExtId}
	    ,dataType:"json"
	    ,success: function(data) {
    		userIntraNum = data[0].userIntraNum;
    		if (userIntraNum=="") {
    			alert("내선번호가 등록되어 있지 않거나 CTI 시스템과 연결되어 있지 않습니다");
    			return;
    		} else {
    			if (confirm(CallNum+" 번호로 연결하시겠습니까?"))
    			{
    				ClickToCallHP.location.href = "http://124.137.30.145/t-motion/contents/Statistics/callback/TMotion_SendDialPacket.php?Customer_Num="+CallNum+"&Ext="+userIntraNum+"&userid="+userIntraNum;
    			}
    		}
	     }
	    ,error: function(data, status, err) {
	    	alert(err);
	     }
	});
	
	
}

/**
 * 글자수(바이트 체크)
 * @param oid : 글자를 받을 Textarea ID
 * @param tid : 바이트 체크된 값 리턴될 엘리먼트 ID
 * @param len : 바이트 제한 길이
 */
function pubByteCheckTextarea(oid,tid,len){		 
	$(oid).on("keyup",function(){
		var byteTxt = "";
		var byte = function(str){
			var byteNum=0;
			for(i=0;i<str.length;i++){
				byteNum+=(str.charCodeAt(i)>127)?2:1;
				//if(byteNum<(len*2)){
				if(byteNum<=len){
					byteTxt+=str.charAt(i);
				};
			};
			
			var results = escape(str).match(/%0A/g);
			if (results != null){
				byteNum+=results.length;
			}
			
			//return Math.round( byteNum/2 );
			return Math.round( byteNum );
		};
		if(byte($(this).val())>len){
			alert(len+" byte 이하 입력");
			$(this).val("");
			$(this).val(byteTxt);
		}else{
			$(tid).html( byte($(this).val()) )
		}
	});
};