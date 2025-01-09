/** ********************************************** **
	Your Custom Javascript File
	Put here all your custom functions
*************************************************** **/



/** Remove Panel
	Function called by app.js on panel Close (remove)
 ************************************************** **/
	function _closePanel(panel_id) {
		/** 
			EXAMPLE - LOCAL STORAGE PANEL REMOVE|UNREMOVE

			// SET PANEL HIDDEN
			localStorage.setItem(panel_id, 'closed');
			
			// SET PANEL VISIBLE
			localStorage.removeItem(panel_id);
		**/	
	}
	
//for datepicker 
$.fn.datepicker.dates['en'] = {
    days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
    daysShort: ["일", "월", "화", "수", "목", "금", "토"],
    daysMin: ["일", "월", "화", "수", "목", "금", "토"],
    months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    today: "오늘",
    clear: "Clear",
    format: "yyyy-mm-dd",
    titleFormat: "yyyy년 MM", 
    weekStart: 0
};

var datepicker;
$(document).ready(function() {
	
	datepicker = $('.dpset .input-daterange').datepicker({
		language: "kr"
		,autoclose:true
	});
	
});	