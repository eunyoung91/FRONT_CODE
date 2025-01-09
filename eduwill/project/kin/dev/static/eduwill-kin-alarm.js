
/*********************************************************************************************************
* 알림
*********************************************************************************************************/

var alarmParam = {};
var alarmPageSize = "15";
var alarmPage = 1;
var alarmKeyField = "";
var alarmKeyWord = "";
var idx = "";

// 알림 내용보기
$(document).on("click", "#alarmContent li", function() {
	var _this = this;
	if($(_this).hasClass("close")) {
		$("#alarmContent li").removeClass("open").addClass("close");;
		$("#alarmContent li").find('dd').hide();
		
		$(_this).removeClass("close").addClass("open");
		$(_this).find('dd').slideDown();
		
		// 수신처리
		if($(_this).hasClass("unchecks")){
			$.ajax({
				type : "POST",
				url : "/alarm/insertNoticeRecv",
				data : {"noticeIdx" : $(this).data("idx")},
				success : function(data){
					setAlarmCnt(data.alarmCnt);
					$(_this).removeClass("unchecks").addClass("checks");
				}
			});
		}
	} else {
		$(_this).removeClass("open").addClass("close");
		$(_this).find('dd').slideUp();
	}
});

function deleteNoticeRecv(delType, idx){
	var delFlag = false;
	var msg = "";
	var nodata = $(".alarmList .nodata").length;
	var checkData = $("li.checks").length;
	
	// 전체 알림삭제
	if(delType == "A") {
		msg = "알림을 모두 삭제하시겠습니까?";
		msg2 = "알림이 삭제되었습니다.";
		if(nodata == 1) {
			alert("삭제할 알림이 없습니다.");
			return false;
		}
	}
	// 읽은 알림삭제
	if(delType == "B") {
		msg = "읽은 알림을 삭제하시겠습니까?";
		msg2 = "읽은 알림을 삭제하였습니다.";
		if(checkData == 0) {
			alert("읽은 알림이 없습니다.");
			return false;
		}
	}
	// 단일 알림삭제
	if(delType == "C") {
		delFlag = true;
		msg = "";
	}
	
	if(msg != "") {
		if(confirm(msg)){
			delFlag = true;
		}
	}
	
	if(delFlag) {
		$.ajax({
			type : "POST",
			url : "/alarm/deleteNoticeRecv",
			data : {
				"noticeIdx" : idx,
				"delType"	: delType
			},
			success : function(data){
				setAlarmCnt(data.alarmCnt);
				
				if(delType == 'C') {
					$("[data-idx=" + idx +"]").remove();
					if($("#alarmContent li").length == 0){
						if($("#alarmMoreBtn").css("display") == 'none'){
							$(".alarmList").html("<div class='nodata'><p>알림내역이 없습니다.</p></div>");
						} else {
							alarmPage-1;
							getAlarm('');
						}
					}
				} else {
					alert(msg2);
					getAlarm('');
				}
			}
		});
	}
	
}

// 알림 레이어 열기
function openAlarmLayer(bIdx){
	alarmPage = 1;
	alarmKeyField = "";
	alarmKeyWord = "";
	$('#alarmWrap, #alarmLayer, .dim').show();
//	$('.layerWrap').layerSetFnc();
	getAlarm('',bIdx);
}

// 알림 레이어 닫기
function closeAlarmLayer(){
	$("select[id=alarmKeyField]").val("");
	$("input[id=alarmKeyWord]").val("");
	$('#alarmWrap, #alarmLayer, .dim').hide();
	$('body').css('overflow-y','auto')
}

// 알림 내용 뿌리기
function getAlarm(printFlag,bIdx){
	
	if(userId == "") {
		$(".alarmList").html("<div class='nodata'><p>알림내역이 없습니다.</p></div>");
		return false;
	}
	
	alarmParam = {
		"pageSize" : alarmPageSize,
		"page" : alarmPage,
		"keyField" : alarmKeyField, 
		"keyWord" : alarmKeyWord,
	};
	
	$.ajax({
		type : "POST",
		url : "/alarm",
		data : alarmParam,
		success : function(data){
			
			var text = "";
			var list = data.alarmList;
			var totalCount = data.totalCount;
			var appendCount = data.appendCount;
			
			setAlarmCnt(data.alarmCnt);
			
			if(list.length > 0) {
				for(var i = 0; i<list.length; i++ ){
					
					var obj = list[i];
					var checksYn = "checks";
					if(obj.recvDate == null) {
						checksYn = 	"unchecks";
					}
					text += "<li class='close " + checksYn + "' data-idx="+obj.noticeIdx+">";
					text += 	"<dl>"
					text += 		"<dt>"
					text += 			"<div class='subj'>" + obj.title + "</div>"
					text += 			"<div class='date'>" + obj.sendDate + "</div>"
					text += 		"</dt>"
					text += 		"<dd onclick='event.cancelBubble=true;'>"
					text += 			"<div class='text'>" + obj.content + "</div>"
					text += 		"</dd>"
					text += 	"</dl>"
					text += 	"<a href=\"#\" class=\"delete\" onclick=\"deleteNoticeRecv('C', "+ obj.noticeIdx +"); return false;\">삭제</a>"
					text += "</li>";
				}
			} else {
				$(".alarmList").html("<div class='nodata'><p>알림내역이 없습니다.</p></div>");
			}
			
			if(printFlag == "more") {
				$("ul[id=alarmContent]").append(text);
			}else{
				$("ul[id=alarmContent]").html(text);
			}
			
			if(appendCount > 0){
				$("div[id=alarmMoreBtn]").show();
			}else{
				$("div[id=alarmMoreBtn]").hide();
			}
			
			$(".alarmList").height($(window).height()*0.75);
		},
		complete : function(){
			_common.hasVerticalScrollBar('alarmLayer');
			$('.detail table').attr('align','');
			if(bIdx != undefined){
				$("li[data-idx="+bIdx+"]").trigger('click');
				if($("li[data-idx="+bIdx+"]").length == 0){
					alert('삭제된 알림입니다.');
				}
			}
		}
	});
}

// 공지사항 검색
function searchAlarm(){
	alarmKeyField = $("select[id=alarmKeyField]").val();
	alarmKeyWord = $("input[id=alarmKeyWord]").val();
	alarmPage = 1;
	$(".alarmList").scrollTop(0);
	getAlarm('');
}

// 공지사항 더보기
function moreAlarm(){
	alarmPage ++;
	getAlarm("more");
}

function setAlarmCnt(aCnt){
	$(".is_alarm em").remove();
	if(aCnt > 0) {
		$(".is_alarm").append("<em>" + aCnt + "</em>");
	}
}
