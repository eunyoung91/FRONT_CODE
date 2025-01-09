var mypageUrl = "https://mypage.eduwill.net/basket/";
function popupCardList(){
	$.ajax({
		type : "POST",
		url : mypageUrl + "listCardDiv",
		dataType:"jsonp",
		crossDomain: true,
		success : fnPopupCard,
		error : function(e){
		}
	});
}

function fnPopupCard(data){
	var list = data.cardDivList;
	if(list != null) {
		if(list.length > 0){
			var left = 0;
			var top = 0;
			for(var i = 0; i<list.length; i++){
				var obj = list[i];
				var url = mypageUrl + "popupCardDiv?idx=" + obj.idx;
				var popup = window.open(url,"cardPopup","scrollbars=no,toolbar=no,resizable=no,width=514,height=851,left=" + left + ",top=" + top);
				left += 50;
				top += 50;

				if ( popup == null || popup == undefined ) {
					alert("현재 브라우저의 팝업이 차단되어 있습니다.\n차단된 팝업을 허용하여 주십시오.");
				}
			}
		}
	}
}