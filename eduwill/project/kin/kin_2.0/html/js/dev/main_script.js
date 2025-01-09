//인생투표 참여
function setSurvey(surveyIdx, surveyQstIdx){
	var loginStatus = loginCheck();
	if(loginStatus){
		if(typeof surveyIdx === "undefined" || typeof surveyQstIdx === "undefined"){
			return;
		}		
		$.ajax({
			url : "/survey/apply",
			type : "POST",
			async : true,			
			data : { "surveyIdx":surveyIdx, "surveyQstIdx":surveyQstIdx },
			dataType : "json",
			timeout:5000,
			success:function(data, textStatus, jqXHR){				
				if(data.result.resultCode == -1) {
					if(data.result.resultMessage == "ENTRY EXIST") {
						alert("이미 투표에 참여하셨습니다.");
					} else {
						alert("투표 참여에 실패 하셨습니다.");
					}
					return false;
				} else {
					window.location.reload();
				}					
			},
			error:function(data, status, err){ console.log("err: " + err); }
		});		
	}	
}


//youtube layerPop show
var showYutubeLayerPop = function(link){
	$.ajax({
		url : "/ytube/ytubeLayer",
		type : "post",
		dataType : "text",
		timeout:5000,
		data : { link : link },
		success : function(data){
			console.log(data);
			$("#layerArea").html(data);
			$("#ytubeLayer").modal("show");			
		},
		error : function(e){
			console.log(e);
		}
	});
}

//main 질문글 조회
var getMainQustnList = function(ctgryIdx, ele){
	if(typeof ctgryIdx === "undefined" && typeof $("#mainQustnListCtgryIdx").val() === "undefined"){
		ctgryIdx = "all";
	}else if(typeof ctgryIdx === "undefined" && typeof $("#mainQustnListCtgryIdx").val() !== "undefined"){
		ctgryIdx = $("#mainQustnListCtgryIdx").val();
	}

	if(typeof ele !== "undefined" ){
    	$(".board-list-nav").find('li').removeClass("on");
    	$(ele).parent("li").addClass("on");
    }


	$.ajax({
		url : "/main/getAjaxMainQustnList",
		type : "post",
		async : true,		
		dataType : "text",
		data : { ctgryIdx : ctgryIdx },		
		timeout:10000,
		success:function(data){
			$("#mainQustnListDiv").html(data);
			$(this).addTrackingArea({
				callback: function(data) {
					insertClickLog(data);
				}
			});
		},
		error:function(data, status, err){ console.log("err: " + err); }
	});
}

//메인 질문 리스트 정렬
var mainQustnSort = function(obj){
	$(obj).siblings().removeClass("active");
	$(obj).addClass("active");
	setCookiepop( "sortName", $(obj).data("sort"), 9999 );
	getMainQustnList();
}

//Click log 등록
var insertClickLog = function(ret) {
	if (ret.action == "") {
		return false;
	}
	$.ajax({
		type : "POST",
		async : true,			
		url: "/common/insertClickLog",
		dataType:"json",
		timeout:3000,
		data : { 
			"procsCd" : "1",
			"label": ret.label, 
			"action": ret.action,
			"os": ret.os,
		},
		success:function(data, textStatus, jqXHR){;},
		error:function(data, status, err){;}
	});
}

//3분영어 퀴즈
function quizPop() {
	window.open('//puri.eduwill.net/qs/quiz/attempt?service=1&progress=1','3mQuiz','width=660,height=800,resizable=yes,scrollbars=yes');
}