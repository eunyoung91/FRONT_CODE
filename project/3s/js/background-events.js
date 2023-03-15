"use strict";

var KTCalendarBackgroundEvents = function() {

    return {
        //main function to initiate the module
        init: function() {
            var todayDate = moment().startOf('day');
            var YM = todayDate.format('YYYY-MM');
            var YESTERDAY = todayDate.clone().subtract(1, 'day').format('YYYY-MM-DD');
            var TODAY = todayDate.format('YYYY-MM-DD');
            var TOMORROW = todayDate.clone().add(1, 'day').format('YYYY-MM-DD');

            $('#kt_calendar').fullCalendar({
                isRTL: KTUtil.isRTL(),
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: ''
                },
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                navLinks: true,
                businessHours: true, // display business hours

				// 한글포멧
				titleFormat: 'YYYY년 MM월',
				monthNames: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
				monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
				dayNames: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
				dayNamesShort: ["일","월","화","수","목","금","토"],
				buttonText: {
				today : "오늘",
				month : "월별",
				week : "주별",
				day : "일별",
				},

                events: [
                    {
                        title: '1. 총예약 : 00',
                        start: YM + '-02',
                        end: YM + '-02',
						url: 'html/healingcube_admin.html',
                    },
					{
                        title: '2. 체크인 : 00',
                        start: YM + '-02',
                        end: YM + '-02',
						url: 'html/healingcube_admin.html',
                    },
					{
                        title: '3. 노쇼 : 00',
                        start: YM + '-02',
                        end: YM + '-02',
						url: 'html/healingcube_admin.html',
                    },
					{
                        title: '1. 총예약 : 00',
                        start: YM + '-09',
                        end: YM + '-09',
						url: 'html/healingcube_admin.html',
                    },
					{
                        title: '2. 체크인 : 00',
                        start: YM + '-09',
                        end: YM + '-09',
						url: 'html/healingcube_admin.html',

                    },
					{
                        title: '3. 노쇼 : 00',
                        start: YM + '-09',
                        end: YM + '-09',
						url: 'html/healingcube_admin.html',
                    },
					{
                        start: TODAY,
                        className: "fc-event-accent",
                        rendering: 'background',
                        color: KTApp.getStateColor('success')
                    },
                ],

                eventRender: function(event, element) {
                    if (element.hasClass('fc-day-grid-event')) {
                        element.data('content', event.description);
                        element.data('placement', 'top');
                        KTApp.initPopover(element);
                    } else if (element.hasClass('fc-time-grid-event')) {
                        element.find('.fc-title').append('<div class="fc-description">' + event.description + '</div>'); 
                    } else if (element.find('.fc-list-item-title').lenght !== 0) {
                        element.find('.fc-list-item-title').append('<div class="fc-description">' + event.description + '</div>'); 
                    }
                }
            });
        }
    };
}();

jQuery(document).ready(function() {
    KTCalendarBackgroundEvents.init();
});