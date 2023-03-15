//layerClose
var layerHide = function(id, day){
	if(day>0){
		//Cookie 생성
		setCookieCommonPopupAtMidnight(id,'N',day);
	}
	fadeOutAction(id);
}
//fadeOut
var fadeOutAction = function(id){
	$("#"+id).fadeOut();
}
//fadeIn
var fadeInAction = function(id){
	$("#"+id).fadeIn();
}
//modalShow
var modalShow = function(id){
	$("#"+id).modal("show");
}
//modalHide
var modalHide = function(id){
	$("#"+id).modal("hide");
}

var timer = function(reaminTime){
	var hour = 0;//시
	var min = 0; //분
	var sec = 0; //초
	
	//parseInt() : 정수를 반환
	hour = parseInt(remainTime/3600); 
	min = parseInt((remainTime/60)%60);	
	sec = remainTime%60; //나머지를 계산

	hour = (hour<10)? "0"+hour : hour;
	min = (min<10)? "0"+min : min;
	sec = (sec<10)? "0"+sec : sec;		
	
	$("#hour").text(hour);
	$("#min").text(min);
	$("#sec").text(sec);			
	//fadeInAction("timeQuiz");
	remainTime--;

	//타임아웃 시
	if (remainTime < 0) {
		clearInterval(interVal);
		console.log("시간 초과");
	}
}

var setUserQuizEnty = function(quizIdx, answer){	
	$.ajax({
		url : '/quiz/setUserQuizEnty',
		type : 'post',
		dataType : 'json',
		data : {quizIdx : quizIdx, answer : answer},
		success : function(data){
			if(data.responseCode=="1" || data.responseCode=="201"){
				$(".timequiz .clock").hide();
				$("#question").hide();
				$("#ask").show();
				if(data.responseCode=="1"){					
					alert("정답입니다. 내공 100 지급되었습니다. : )");
				}
			}else{
				if(data.responseCode=="400" || data.responseCode=="401"){
					alert('올바르지 않은 요청입니다. 잠시 후 다시시도해 주십시오.');
					return;
				}else if(data.responseCode=="301"){
					modalHide('modal-quiz');
					$(".timequiz .clock").hide();
					$("#question").hide();
					alert("이미 타임퀴즈에 참여하셨습니다. 다음 타임퀴즈에도 참여해주세요. : )");
					return;
				}else if(data.responseCode=="402"){
					$(".timequiz .clock").hide();
					alert('타임퀴즈 시간이 마감되었습니다. 다음 타임퀴즈를 기대해 주세요!');
					return;
				}
			}
		},
		error : function(e){
			console.log(e);
		}
	});
}

function timeQuiz(){
	//타이머
	var interVal = setInterval(function(){timer(remainTime);}, 1000);
	
	var stime = new Date(parseInt(timeStime));
	var etime = new Date(parseInt(timeEtime));
	
	$("#sdate").text((stime.getMonth()+1)+"월 "+stime.getDate()+"일");
	$("#stime").text(((stime.getHours()<10)? "0"+stime.getHours() : stime.getHours())+":"+((stime.getMinutes()<10)? "0"+stime.getMinutes() : stime.getMinutes()));
	$("#etime").text(((etime.getHours()<10)? "0"+etime.getHours() : etime.getHours())+":"+((etime.getMinutes()<10)? "0"+etime.getMinutes() : etime.getMinutes()));		
}
