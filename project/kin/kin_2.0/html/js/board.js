//질문 수정
function qustnModify(qustnIdx) {
	if(typeof qustnIdx !== "undefined") {
		goUrlWithLogin('/board/qustnForm?qustnIdx='+qustnIdx);
	}	
}

//답변 수정
function ansModify(qustnIdx, ansIdx) {
	if(typeof qustnIdx !== "undefined") {
		goUrlWithLogin('/board/ansForm?qustnIdx='+qustnIdx+"&ansIdx="+ansIdx);
	}	
}

//질문 마감
function qustnClose(qustnIdx) {
	var loginStatus = loginCheck();
	if(loginStatus){
		if(confirm("질문을 마감 하시겠습니까?\n마감 시 답변 채택이 불가하며, 더이상 답변이 등록되지 않습니다.")){
			$.ajax({
				type:"post"
				,url:"/board/updateAjaxQustnClose"
				,data: {"qustnIdx" : qustnIdx}
				,dataType:"json"
				,async: false
				,success: function(data) {
					if(data.result > 0){
						document.location.reload();
					}
				}
				,error: function(data, status, err) {
					console.log("err: " + err);
				}
			});
		}
	}
}

//질문 삭제
function qustnDelete(qustnIdx) {
	var loginStatus = loginCheck();
	if(loginStatus){
		if(confirm("질문을 삭제 하시겠습니까?")){
			$.ajax({
				type:"post"
				,url:"/board/deleteAjaxQustn"
				,data: {"qustnIdx" : qustnIdx}
				,dataType:"json"
				,async: false
				,success: function(data) {
					if(data.result > 0){
						document.location.href="/board/qustnList";
					}
				}
				,error: function(data, status, err) {
					console.log("err: " + err);
				}
			});
		}
	}
}

//답변 삭제
function ansDelete(ansIdx) {
	var loginStatus = loginCheck();
	if(loginStatus){
		var qustnIdx = $("#qustnIdx").val();
		var qustnAnsIdx = $("#qustnAnsIdx").val();
		var qustnRegId = $("#qustnRegId").val();
		var offerPT = $("#qustnOfferPT").val();
		var delChosenAnsYn ="N";
		if(ansIdx == qustnAnsIdx) delChosenAnsYn ="Y";

		if(confirm("답변을 삭제 하시겠습니까?")){
			$.ajax({
				type:"post"
				,url:"/board/deleteAjaxAns.action"
				,data: {ansIdx : ansIdx, qustnIdx : qustnIdx, qustnUserId : qustnRegId, offerPT : offerPT, delChosenAnsYn : delChosenAnsYn}
				,dataType:"json"
				,async: false
				,success: function(data) {
					if(data.result > 0){
						document.location.reload();
					}
				}
				,error: function(data, status, err) {
					console.log("err: " + err);
				}
			});
		}
	}
}

//질문 신고 팝업
function showQustnReportLayer(docTyp, docIdx){		
	$.ajax({
		type : "post",
		async : true,
		url: "/report/ajaxReportContent",
		dataType:"html",
		timeout:5000,
		data:{"docTyp":docTyp, "docIdx":docIdx},
		success:function(data, textStatus, jqXHR){
			$("#layerArea").html(data);
			$("#qustnReportModal").modal({backdrop: 'static', keyboard: false});
		},
		error:function(data, status, err){ console.log("err: " + err); }
	});
}

//답변 등록
function qustnAns(qustnIdx) {
	if(typeof qustnIdx !== "undefined") {
		goUrlWithLogin('/board/ansForm?qustnIdx='+qustnIdx);
	}
}


//질문 답변 List 조회
function getQustnAnsList(obj, qustnIdx){
	$("#ansSortDiv").find("button").removeClass("active");
	$.ajax({
		type : "post",
		url : "/board/ajaxQustnAnsList",
		data : {qustnIdx : qustnIdx, ansSortName : $(obj).data("sort")},
		dataType :"text",
		async : false,
		success: function(data) {
			console.log(data);
			$(obj).addClass("active");
			$("#qustnAnsArea").html(data);			
		},error : function(e){
			console.log("ajax fail ->");
			console.log(e);
		}
	});
}


//질문 Comment List 조회
function getQustnCmntList(qustnIdx, page){
	alert();
	if(page ==="undefined"){ page = 1; }
	$.ajax({
		type : "post",
		url : "/board/ajaxQustnCmntList",
		data : {qustnIdx : qustnIdx, page : page},
		dataType :"text",
		async : false,
		success: function(data) {
			$("#qustnCmntMoreBtn").remove();
			if(page==1){
				$("#qustnCmntDiv").html(data);
			}else{
				$("#qustnCmntDiv").append(data);
			}
		},error : function(e){
			console.log("ajax fail ->");
			console.log(e);
		}
	});
	
}

//답변 Comment List 조회
function getAnsCmntList(ansIdx, page){
	if(page ==="undefined"){ page = 1; }

	var loginStatus = loginCheck();
	if(loginStatus){
		$.ajax({
			type : "post",
			url : "/board/ajaxAnsCmntList",
			data : {ansIdx : ansIdx, page : page},
			dataType :"text",
			async : false,
			success: function(data) {
				$("#ansCmntMoreBtn-"+ansIdx).remove();
				if(page==1){
					$("#ansCmntDiv-"+ansIdx).html(data);
				}else{
					$("#ansCmntDiv-"+ansIdx).append(data);
				}
			},error : function(e){
				console.log("ajax fail ->");
				console.log(e);
			}
		});
	}
}


//질문 Comment 등록(1depth)
function setQustnCmnt(qustnIdx) {
	var loginStatus = loginCheck();
		if(loginStatus){
		if($("#qustnCmnt").val() == ""){
			alert("내용을 입력해 주세요.");
			$("#qustnCmnt").focus();
			return;
		}else{
			$.ajax({
				type : "post",
				url : "/board/insertAjaxQustnCmnt",
				data : {qustnIdx : qustnIdx, content : $("#qustnCmnt").val()},
				dataType :"json",
				async : false,
				success : function(data) {
					if(data.result > 0){
						$("#qustnCmnt").val("");
						$("[name$='CmntWdCnt']").text("0");
						if(data.result<100){
							$("#qustnCmntCnt").text(data.result);
						}
						getQustnCmntList(qustnIdx, 1);
					}else{
						alert('잘못된 요청입니다. 잠시 후 다시 시도해주십시오.');
						document.location.href='/';
					}
				}
				,error: function(data, status, err) {
					console.log("err: " + err);
				}
			});
		}
	}
}


//답변 Comment 등록(1depth)
function setAnsCmnt(ansIdx){
	var loginStatus = loginCheck();
	if(loginStatus){
		if($("#ansCmnt-"+ansIdx).val() == ""){
			alert("내용을 입력해 주세요.");
			$("#ansCmnt-"+ansIdx).focus();
			return;
		}else{
			$.ajax({
				type:"post"
				,url:"/board/insertAjaxAnsCmnt"
				,data: {ansIdx : ansIdx, content : $("#ansCmnt-"+ansIdx).val()}
				,dataType:"json"
				,async: false
				,success: function(data) {
					if(data.result > 0){
						$("#ansCmnt-"+ansIdx).val("");
						$("[name$='CmntWdCnt']").text("0");
						$("#ansCmntCnt-"+ansIdx).html(data.result);
						getAnsCmntList(ansIdx, 1);
					}
				}
				,error: function(data, status, err) {
					console.log("err: " + err);
				}
			});
		}
	}	
}


//댓글 Comment 등록(2depth)
function setCmntCmnt(type, qustnIdx, ansIdx, cmntIdx) {
	var ajaxUrl="", content="", param={};
	var loginStatus = loginCheck();
		if(loginStatus){
		if($("#cmntCmntContent-"+cmntIdx).val() == ""){
			alert("내용을 입력해 주세요.");
			$("#cmntCmnt-"+cmntIdx).focus();
			return;
		}else{		
			content = $("#cmntCmntContent-"+cmntIdx).val();

			if(type=="qustn"){//질문 댓글 Commnet 일때
				ajaxUrl = "/board/insertAjaxQustnCmnt";
				param = { qustnIdx : qustnIdx, cmntIdx : cmntIdx, content : content };
			}else if(type=="ans"){//답변 댓글 Commnet 일때
				ajaxUrl = "/board/insertAjaxAnsCmnt";
				param = { qustnIdx : qustnIdx, ansIdx : ansIdx, cmntIdx : cmntIdx, content : content };
			}			

			$.ajax({
				type : "post",
				url : ajaxUrl,
				data : param,
				dataType : "json",
				async : false,
				success : function(data) {
					if(data.result > 0){
						$("#cmntCmntContent-"+cmntIdx).val('');
						$("#cmntCmntContent-"+cmntIdx).parent().parent().find("[name$='CmntCmntWdCnt']").text("0");
						$("#cmntCmntCnt-"+cmntIdx).text(parseInt($("#cmntCmntCnt-"+cmntIdx).text())+1);
						getCmntCmntList(type, qustnIdx, ansIdx, cmntIdx);

					}else{
						alert('잘못된 요청입니다. 잠시 후 다시 시도해주십시오.');
						document.location.href='/';
					}
				},
				error : function(data, status, err) {
					console.log("err: " + err);
				}
			});
		}
	}
}


//질문 commnet 삭제
function qustnCmntDelete(type, qustnIdx, ansIdx, cmntIdx){
	var loginStatus = loginCheck();
	if(loginStatus){		
		if(confirm("삭제 하시겠습니까?")){
			$.ajax({
				type : "post",
				url : "/board/ajaxCmntDelYN",
				data : { type : type, qustnIdx : qustnIdx, ansIdx : ansIdx, cmntIdx : cmntIdx },
				dataType : "json",
				async : false,
				success : function(data) {
					if(data.result > 0){
						var target = (type=="qustn")? "qustnCmntCnt" : "ansCmntCnt-"+cmntIdx;							
						$("#"+target).text(parseInt($("#"+target).text())-1);
						getQustnCmntList(qustnIdx, 1);
					}else{
						alert('잘못된 요청입니다. 잠시 후 다시 시도해주십시오.');
						document.location.href='/';
					}
				},
				error : function(data, status, err) {
					console.log("err: " + err);
				}
			});
		}
	}
}


//댓글 Comment 영역 Toggle
function showCmntCmntArea(type, qustnIdx, ansIdx, cmntIdx){	
	if(type=="qustn"){
		$("#qustnCmntCmntDiv-"+cmntIdx).on('show.bs.collapse', function () {
			getCmntCmntList(type, qustnIdx, ansIdx, cmntIdx);
			$("#qustnCmntCmntDiv-"+cmntIdx).off();
		});
		
		$("#qustnCmntCmntDiv-"+cmntIdx).on('hide.bs.collapse', function () {
			$("[name='cmntCmnt-"+cmntIdx+"']").remove();
			$("#qustnCmntCmntDiv-"+cmntIdx).off();
		});	
	}else if(type=="ans"){
		$("#ansCmntCmntDiv-"+cmntIdx).on('show.bs.collapse', function () {
			getCmntCmntList(type, qustnIdx, ansIdx, cmntIdx);
			$("#ansCmntCmntDiv-"+cmntIdx).off();
		});
		
		$("#ansCmntCmntDiv-"+cmntIdx).on('hide.bs.collapse', function () {
			$("[name='cmntCmnt-"+cmntIdx+"']").remove();
			$("#ansCmntCmntDiv-"+cmntIdx).off();
		});	
	}
}


//댓글 Comment List 조회
function getCmntCmntList(type, qustnIdx, ansIdx, cmntIdx){
	var ajaxUrl="", param={};
	var loginStatus = loginCheck();
	if(loginStatus){
		if(type=="qustn"){//질문 댓글 Commnet 일때
			ajaxUrl = "/board/ajaxQustnCmntList";
			param = { qustnIdx : qustnIdx, cmntIdx : cmntIdx};
		}else if(type=="ans"){//답변 댓글 Commnet 일때
			ajaxUrl = "/board/ajaxAnsCmntList";
			param = { qustnIdx : qustnIdx, ansIdx : ansIdx, cmntIdx : cmntIdx};
		}

		$.ajax({
			type : "post",
			url : ajaxUrl,
			data : param,
			dataType :"text",
			async : false,
			success: function(data) {
				$("[name='cmntCmnt-"+cmntIdx+"']").remove();
				if(type=="qustn"){
					$("#qustnCmnt-"+cmntIdx).after(data);
				}else if(type=="ans"){
					$("#ansCmnt-"+cmntIdx).after(data);
				}
			},error : function(e){
				console.log("ajax fail ->");
				console.log(e);
			}
		});
	}
}


//댓글 commnet 삭제
function cmntCmntDelete(type, qustnIdx, ansIdx, cmntIdx, parentIdx){
	var loginStatus = loginCheck();
	if(loginStatus){		
		if(confirm("삭제 하시겠습니까?")){
			$.ajax({
				type : "post",
				url : "/board/ajaxCmntDelYN",
				data : { type : type, qustnIdx : qustnIdx, ansIdx : ansIdx, cmntIdx : cmntIdx },
				dataType : "json",
				async : false,
				success : function(data) {
					if(data.result > 0){
						$("#cmntCmntCnt-"+cmntIdx).text(parseInt($("#cmntCmntCnt-"+cmntIdx).text())-1);
						getCmntCmntList(type, qustnIdx, ansIdx, parentIdx);
					}else{
						alert('잘못된 요청입니다. 잠시 후 다시 시도해주십시오.');
						document.location.href='/';
					}
				},
				error : function(data, status, err) {
					console.log("err: " + err);
				}
			});
		}
	}
}



//댓글 Comment 길이 제한
function chkCmnt(obj, maxByte){
	var strValue = obj.value;
	var strLen = strValue.length;
	var totalByte = 0;
	var len = 0;
	var oneChar = "";
	var str2 = "";
	var target = $(obj).data("target");

	for(var i = 0; i < strLen; i++){
		oneChar = strValue.charAt(i);
		if (escape(oneChar).length > 4){
			totalByte += 2;
		}else{
			totalByte++;
		}
		if (totalByte <= maxByte){
			len = i + 1;
			$(obj).parent().parent().find("[name='"+target+"']").text(totalByte);
		}
	}
	if(totalByte > maxByte){		
		str2 = strValue.substr(0, len);
		obj.value = str2;
		chkword(obj, 4000);
	}
}

//질문관련 추가 컨텐츠 조회
function getQustnRelatedList(qustnIdx, ctgryIdx) {
	$.ajax({
		type: "POST",
		url: "/board/qustnMoreList",
		crossDomain: false,
		dataType: "json",
		timeout: 50000,
		cache: false,
		data: {qustnIdx : qustnIdx, ctgryIdx : ctgryIdx},
		success: function (data,textStatus,jqXHR) {
			if(data != null) {
				var moreQustnList = data.moreQustnList;
				var qustnList = data.qustnList;

				if(qustnList.length > 0) {
					$.each(qustnList, function(){
						var content = "";
						if($(this)[0].content != null) {
							content = $(this)[0].content.replace(/&lt;/gi, "<").replace(/&gt;/gi, ">").replace(/(<([^>]+)>)/ig,"");
						}						
						var tmpl = $("#qustnTmpl").tmpl({
							qustnIdx		:	$(this)[0].qustnIdx
							, title 		: 	$(this)[0].title
							, ansCnt 		:	$(this)[0].ansCnt
							, content		:	content
						});						
						$("#qustnWaitingAnsList").html(tmpl);
					});
					$("[id^='qustnWaitingAns']").show();
				}

				if(moreQustnList.length > 0) {
					$.each(moreQustnList, function(){
						var content = "";
						if($(this)[0].content != null) {
							content = $(this)[0].content.replace(/&lt;/gi, "<").replace(/&gt;/gi, ">").replace(/(<([^>]+)>)/ig,"");
						}						
						var tmpl = $("#qustnTmpl").tmpl({
							qustnIdx		:	$(this)[0].qustnIdx
							, title 		: 	$(this)[0].title
							, ansCnt 		:	$(this)[0].ansCnt
							, content		:	content
						});
						$("#qustnMoreList").html(tmpl);
					});
					$("[id^='qustnMore']").show();
				}
			}
		},
		error: function (xhr,msg, e) {console.log("e: " + e);}
	});
}

//질문 신고 창 닫기
function qustnReportClose(){
	if(confirm("창을 닫겠습니까? 신고하지 않은 내용은 모두 삭제됩니다.")){
		$('#qustnReportModal').modal("hide");	
	}
}

//질문 신고 등록
function qustnReportInsert(){
	if(typeof $("form[name=reportForm]").find("input:radio[name=notifCd]:checked").val() == "undefined"){
			alert("신고사유를 선택해 주세요");
			return false;
	}else{
		if(confirm("신고하시겠습니까?")){
			
			if($("form[name=reportForm]").find("input:radio[name=notifCd]:checked").val() != "NC004" ){
				$("form[name=reportForm]").find("textarea[name=etcResn]").val("");	
			}			
			$.ajax({
				type : "POST",
				async : true,			// true-비동기, false-동기
				url : "/report/ajaxInsert",
				dataType : "json",
				timeout : 5000,
				data : $("form[name=reportForm]").serialize(),
				success:function(data, textStatus, jqXHR){
					var returnCode = data.returnCode;
					if(returnCode == 0){
						alert("정상적으로 신고되었습니다.");
						$('#qustnReportModal').modal("hide");
						
					}else if(returnCode == 2){
						alert("이미 신고를 했습니다.");
						$('#qustnReportModal').modal("hide");
						
					}else{
						alert("신고처리시 문제가 발생했습니다. 관리자에게 문의하세요");
						$('#qustnReportModal').modal("hide");	
					}
				},
				error:function(data, status, err){ 
					console.log("err: " + err);
					$('#qustnReportModal').modal("hide");	
				}
			});	
		}
			
	}
}


//답변 추천
function ansRecmd(obj, ansIdx){
	var loginStatus = loginCheck();
	if(loginStatus){	
		if($(obj).data("recmd")=="Y"){
			alert('이미 추천하셨습니다.');
			return
		}else{
			$.ajax({
			type:"post"
			,url:"/board/insertAjaxAnsRecmd.action"
			,data: {"ansIdx" : ansIdx}
			,dataType:"json"
			,async: false
			,success: function(data) {
				console.log($(obj).find("i").hasClass("icon-heart-disabled"));
				if($(obj).find("i").hasClass("icon-heart-disabled")){
					$(obj).removeClass("btn-heart-disabled");
					$(obj).addClass("btn-heart");

					$(obj).find("i").removeClass("icon-heart-disabled");
					$(obj).find("i").addClass("icon-heart");
				}
				$(obj).data("recmd","Y");
				if($("#ansRecmdCnt-"+ansIdx).html()==""){
					$("#ansRecmdCnt-"+ansIdx).html("1");
				}else{
					$("#ansRecmdCnt-"+ansIdx).html(parseInt($("#ansRecmdCnt-"+ansIdx).html())+1);
				}
			}
			,error: function(data, status, err) {
				console.log("err: " + err);
			}
		});
		}
	}
}



//질문 신고 옵션 선택 action
$(document).on('click','.modal-report .item-q input', function(){
	//이전 게시물 모두 닫은 후
	$('.modal-report .item-q').each(function(){
		$(this).removeClass('in').next('.item-a').removeClass('in');
	});	
	
	
	if($(this).is(':checked')) {
		$(this).parents('.item-q').addClass('in').next('.item-a').addClass('in');
	}
});

$(document).on('click','.modal-report .item-q .btn-link', function(){            
	var obj = $(this).parents('.item-q');
	var index = $('.item-q').index(obj);            
	//이전 게시물 모두 닫은 후 
	$('.modal-report .item-q').each(function(){
		if( $('.item-q').index($(this)) != index ){
			$(this).removeClass('in').next('.item-a').removeClass('in');
		}                
	});	
	
	if(obj.hasClass('in')) {
		obj.removeClass('in').next('.item-a').removeClass('in');
	} else {
		obj.addClass('in').next('.item-a').addClass('in');
	}
});