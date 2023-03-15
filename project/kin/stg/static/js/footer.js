$(document).ready(function(){
	$("form[id=qustFrm_Form]").validate({
		errorElement: "span",
		errorPlacement: function ( error, element ) {
			// Add the `help-block` class to the error element
			error.addClass("invalid-tooltip");
			if ( element.prop( "type" ) === "radio" ) {
				$(element.parent().parent()).append(error);
				//error.insertAfter( element.parent().parent().parent() );
			}else if(element.prop( "type" ) === "checkbox"){
				error.insertAfter( element.next().next() );
			}else{
				error.insertAfter( element );
			}
		},
		submitHandler: function(form) {
			if(confirm("작성하신 내용을 보내시겠습니까?")) fn_QustSave();
		}
	});
});

//고객의견 layerPop open
function fn_OpenPop(){
	fn_QustFrmReset();
	$('#qustFrm').modal({backdrop: 'static', keyboard: false});		
}

//폼 초기화
function fn_QustFrmReset(){
	$("#qustFrm_Form")[0].reset();
	$("form[id=qustFrm_Form]").validate().resetForm();
}


//고객의견 layerPop close
function fn_ClosePop(){
	fn_QustFrmReset();
	$('#qustFrm').modal('hide');

}

//고객의견 등록
function fn_QustSave(){
	$.ajax({
		type : "POST",
		async : true,			// true-비동기, false-동기
		url: "/cs/gdbk/insertAjaxQust",
		dataType:"json",
		timeout:5000,
		data : $("form[id=qustFrm_Form]").serialize(),
		success:function(data, textStatus, jqXHR){
			if(data.successYn == "Y"){
				alert("전송되었습니다.");
				fn_ClosePop();
			}
		},
		error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}