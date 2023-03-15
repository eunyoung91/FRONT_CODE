var maxLinks = 5; // 페이징 갯수

function pageCommNavi(totCnt, currPage, pageSize, resourceUrl){

	if ( totCnt > 1 ) {
		var totalPages = totCnt == 0 ? 1 : Math.ceil( totCnt / pageSize );
		
		if( totalPages < maxLinks ) {
			maxLinks = totalPages;
		}

		var pgStart = ( parseInt( ( currPage - 1 ) / maxLinks ) * maxLinks ) + 1; // 시작블럭숫자 (1~5페이지일경우 1, 6~10일경우 6)
		var pgEnd = ( parseInt( ( currPage - 1 ) / maxLinks ) * maxLinks ) + maxLinks; // 끝 블럭 숫자 (1~5일 경우 5, 6~10일경우 10)
		if ( pgEnd > totalPages ) {
			pgEnd = totalPages;
		}

		getFrontFormater( totalPages, currPage, pgStart, pgEnd, resourceUrl );

	} else {
		$("#paging").html("");
	}
}

function getFrontFormater( totalPages, currPage, pgStart, pgEnd, resourceUrl ) {
	var html = "";

	if (currPage > maxLinks) {
		html += "<a href=\"javascript:goPage(1);\" class=\"btn first\"><img src=\""+resourceUrl+"/images/board/paging_first.png\" alt=\"\" /></a>";  //첫페이지
		html += "<a href=\"javascript:goPage('"+ (pgStart-1)+"');\" class=\"btn prev\"><img src=\""+resourceUrl+"/images/board/paging_prev.png\" alt=\"\" /></a>";  //이전
	}

	for (var i = pgStart; i < (pgEnd + 1); i++) {
		if (i == currPage) {
			html += "<a href=\'#\' class=\'on\'><span>" + i + "</span></a>";
		} else {
			html += "<a href=\"javascript:goPage('" + i + "');\" class=\"\"><span>" + i + "</span></a>";
		}
	}

	if (pgEnd < totalPages) {
		html += "<a href=\"javascript:goPage('" + (pgEnd + 1) + "');\" class=\"btn next\"><img src=\""+resourceUrl+"/images/board/paging_next.png\" alt=\"\" /></a>";  //다음
		html += "<a href=\"javascript:goPage('" + totalPages + "');\" class=\"btn last\"><img src=\""+resourceUrl+"/images/board/paging_last.png\" alt=\"\" /></a>";  //마지막페이지
	}

	$("#paging").html(html);
}

// 페이지 이동
function goPage(page) {
	createList(page);
}