var maxLinks = 5; // ����¡ ����

function pageCommNavi(totCnt, currPage, pageSize, resourceUrl){

	if ( totCnt > 1 ) {
		var totalPages = totCnt == 0 ? 1 : Math.ceil( totCnt / pageSize );
		
		if( totalPages < maxLinks ) {
			maxLinks = totalPages;
		}

		var pgStart = ( parseInt( ( currPage - 1 ) / maxLinks ) * maxLinks ) + 1; // ���ۺ����� (1~5�������ϰ�� 1, 6~10�ϰ�� 6)
		var pgEnd = ( parseInt( ( currPage - 1 ) / maxLinks ) * maxLinks ) + maxLinks; // �� �� ���� (1~5�� ��� 5, 6~10�ϰ�� 10)
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
		html += "<a href=\"javascript:goPage(1);\" class=\"btn first\"><img src=\""+resourceUrl+"/images/board/paging_first.png\" alt=\"\" /></a>";  //ù������
		html += "<a href=\"javascript:goPage('"+ (pgStart-1)+"');\" class=\"btn prev\"><img src=\""+resourceUrl+"/images/board/paging_prev.png\" alt=\"\" /></a>";  //����
	}

	for (var i = pgStart; i < (pgEnd + 1); i++) {
		if (i == currPage) {
			html += "<a href=\'#\' class=\'on\'><span>" + i + "</span></a>";
		} else {
			html += "<a href=\"javascript:goPage('" + i + "');\" class=\"\"><span>" + i + "</span></a>";
		}
	}

	if (pgEnd < totalPages) {
		html += "<a href=\"javascript:goPage('" + (pgEnd + 1) + "');\" class=\"btn next\"><img src=\""+resourceUrl+"/images/board/paging_next.png\" alt=\"\" /></a>";  //����
		html += "<a href=\"javascript:goPage('" + totalPages + "');\" class=\"btn last\"><img src=\""+resourceUrl+"/images/board/paging_last.png\" alt=\"\" /></a>";  //������������
	}

	$("#paging").html(html);
}

// ������ �̵�
function goPage(page) {
	createList(page);
}