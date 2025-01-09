document.addEventListener("DOMContentLoaded", function(){
	var allElements = document.getElementsByTagName('*');
	Array.prototype.forEach.call(allElements, function(el) {
		var includePath = el.dataset.includePath;
		if (includePath) {
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function () {
				if (this.readyState == 4 && this.status == 200) {
					el.outerHTML = this.responseText;
				}
			};
			xhttp.open('GET', includePath, true);
			xhttp.send();
		}
	});
});

window.addEventListener('load', function() {
	getEcoDynamicForClass(4166, 'eco-4166');
	getEcoDynamicForClass(3172, 'eco-3172');

	var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;

	var app = new Vue({
		el: '#productApp',
		data: {
			services: [
				{num: 1, object: '전기기사 취득 후 일반적으로 초봉은 어떻게 되나요?', reply:10},
				{num: 2, object: '과년도 몇년치 공부하면 될까요?', reply:11},
				{num: 3, object: '전기기사는 어떤 과목부터 시작해야 하나요?', reply:11},
				{num: 4, object: '기사, 산업기사 실기 동회차 응시 가능한가요?? ', reply:10},
				{num: 5, object: '전기산업기사 적중예상문제 풀어주는 강의 있어요?', reply:10},
				{num: 6, object: '전기기사 실기 답안지 작성방법 궁금합니다', reply:8},
				{num: 1, object: '전기기사 취득 후 일반적으로 초봉은 어떻게 되나요?', reply:10},
				{num: 2, object: '과년도 몇년치 공부하면 될까요?', reply:11},
				{num: 3, object: '전기기사는 어떤 과목부터 시작해야 하나요?', reply:11},
				{num: 4, object: '기사, 산업기사 실기 동회차 응시 가능한가요?? ', reply:10},
				{num: 5, object: '전기산업기사 적중예상문제 풀어주는 강의 있어요?', reply:10},
				{num: 6, object: '전기기사 실기 답안지 작성방법 궁금합니다', reply:8},
			],
			reviewList: [
				{num: 'BEST', text: '고득점 한번에 합격하였습니다!', name: '최*우', count:2292},
				{num: 'BEST', text: '문과=>예술대 출신/ 전기산업기사, 전기기사 최종합격했습니다. 조금 현실적인 공부법을 말씀드리려고 해요', name: '송*용', count:2005},
				{num: 'BEST', text: '전기기사 2회 실기 68점으로 합격했습니다.', name: '이*빈', count:1774},
				{num: 'BEST', text: '전기기사 동차 합격했습니다!!', name: '박*욱', count:1611},
				{num: 'BEST', text: '2020년 전기기사 2회 동회차 합격', name: '이*성', count:1456},
				{num: '1253', text: '늦었지만 비전공자 합격 수기를 올립니다.', name: '박*성', count:1277},
				{num: '1252', text: '4학년 대학생 합격수기', name: '진*선', count:1438},
				{num: '1251', text: '전기기사 최종 합격!', name: '김*건', count:1317},
				{num: '1250', text: '2020년 전기기사 최종합격했습니다.', name: '조*건', count:1161},
				{num: '1249', text: '덕분에 합격했네요', name: '채*만', count:1144},
				{num: '1248', text: '합격했습니다', name: '손*선', count:1092},
				{num: '1247', text: '전기산업기사 합격했습니다', name: '오*령', count:1244},
				{num: '1246', text: '2020 4,5회 전기실기 최종합격했습니다.', name: '김*식', count:1136},
				{num: '1245', text: '특징잇는 여러 교수님들의 교차 강의 수강으로 합격', name: '지*환', count:1173},
				{num: '1244', text: '전기기사 붙었습니다', name: '이*건', count:1080},
				{num: '1243', text: '전기기사 합격 후기', name: '김*래', count:1132},
				{num: '1242', text: '전기기사 실기 에듀윌로 3주만에 끝냈습니다..!!!!', name: '최*종', count:1139},
				{num: '1241', text: '전기기사 5회차 합격 했습니다!!!', name: '서*덕', count:1057},
				{num: '1240', text: '수시 5회 합격', name: '김*헌', count:1048},
				{num: '1239', text: '에듀윌 덕분에 합격 했습니다...^^', name: '지*천', count:1038},
				{num: '1238', text: '전기기사 최종합격! ', name: '이*환', count:1062},
				{num: '1237', text: '필기, 실기 한 번에 합격했습니다', name: '홍*우', count:1149},
				{num: '1236', text: '비전공자) 전기산업기사 필기/실기 최종합격 수기', name: '김*라', count:1186},
				{num: '1235', text: '전기산업기사 합격수기', name: '김*수', count:1084},
				{num: '1234', text: '전기기사 5회 실기 68점으로 합격했습니다.!!', name: '고*현', count:1101},
				{num: '1233', text: '합격은 했는데', name: '김*호', count:1160},
				{num: '1232', text: '합격했습니다.', name: '이*환', count:1027},
				{num: '1231', text: '조마조마했는데 다행히 합격했습니다~!', name: '최*희', count:1077},
				{num: '1230', text: '전기산업기사 실기 한번만에 합격했습니다', name: '강*구', count:1091},
			],
			videoContent : [
				{
					source: 'https://www.youtube.com/embed/oUD7RdRxNkw?amp;autoplay=1&playlist=oUD7RdRxNkw&loop=1', 
					imgUrl: 'https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/thumb/video_thum_1.png'
				},
				{
					source: 'https://www.youtube.com/embed/UI1_9rjEf00?amp;autoplay=1&playlist=UI1_9rjEf00&loop=1', 
					imgUrl: 'https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/thumb/video_thum_2.png'
				},
				{
					source: 'https://www.youtube.com/embed/dkEhx0PPA2w?amp;autoplay=1&playlist=dkEhx0PPA2w&loop=1', 
					imgUrl: 'https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/thumb/video_thum_3.png'
				},
				{
					source: 'https://www.youtube.com/embed/NcCSTKek73M?amp;autoplay=1&playlist=NcCSTKek73M&loop=1', 
					imgUrl: 'https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/thumb/video_thum_4.png'
				},
				{
					source: 'https://www.youtube.com/embed/QjdBWLbHfZw?amp;autoplay=1&playlist=QjdBWLbHfZw&loop=1', 
					imgUrl: 'https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/thumb/video_thum_5.png'
				},
				{
					source: 'https://pmp.eduwill.net/eduwillpmp/eduwill/flv/20190805/yFire_Lkh.mp4', 
					imgUrl: 'https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/thumb/video_thum_6.png'
				},
				{
					source: 'https://www.youtube.com/embed/Nd-3vIirpB4?amp;autoplay=1&playlist=Nd-3vIirpB4&loop=1', 
					imgUrl: 'https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/thumb/video_thum_7.png'
				},
				
			]
		},

		methods: {
			
			
		},
		
	});

	_f_initTyping('에듀윌  ');
	_f_initVideoCommon();
	_f_initLinkHand();
	_f_initTabMenu();
	winnerList();
	pageMove('.page-move');

	//SLICK VIDEO LIB slider-video
	$('.slideTable').slick({
		autoplay: true,
		autoplaySpeed: 0,
		slidesToShow: 6,
		slidesToScroll: 1,
		speed: 1500,
		infinite: true,
		arrows: false,
		dots: false,
		vertical: true,            	
	});
	
	$('.slide4046_2').slick({
		autoplay: false,
		autoplaySpeed: 6000,
		speed: 800,
		infinite: true,
		arrows: true,
		dots: false
	});

	$('.review-list').slick({
		autoplay: true,
		autoplaySpeed: 0,
		infinite: true,
		cssEase: 'linear',
		arrows: false,
		slidesToScroll: 1,
		speed: 1500,
		slidesToShow: 14,
		vertical: true,
		pauseOnHover: false,
		pauseOnFocus: false,
	});

	//ecocont2 slide show
	document.querySelector('.popup-body').insertAdjacentHTML('afterbegin', '<div data-popupcont="1"><img data-show="1" alt="" src="https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/eco4046/ecoCont2_slide1_view.png"></div>');
	document.querySelector('.popup-body').insertAdjacentHTML('afterbegin', '<div data-popupcont="2"><img data-show="2" alt="" src="https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/eco4046/ecoCont2_slide2_view.png"></div>');
});
	

	//tab
	function _f_initTabMenu(){
		var _tabWrap = document.querySelector('.tab-list')
		var _tabButton = _tabWrap.getElementsByTagName('button')
		
		for(var i=0; i < _tabButton.length; i++ ){

			_tabButton[i].onclick = function(e){

				var _target = e.target;
				var _parent = _target.parentNode;
				var _index = [].indexOf.call(_parent.children, _target);
				var _tabContent = document.getElementsByClassName('tab-cont');

				if( !this.classList.contains('on') ){
					
					document.querySelector('button.on').classList.remove('on')
					document.querySelector('div.on').classList.remove('on')

					this.classList.add('on')
					_tabContent[_index].classList.add('on')	
					
				}
			}

		}
	}
	// $(window).on('load', function(){
	// 	//SLICK VIDEO LIB slider-video
	// 	$('.slideTable').slick({
	// 		autoplay: true,
	// 		autoplaySpeed: 0,
	// 		slidesToShow: 6,
	// 		slidesToScroll: 1,
	// 		speed: 1500,
	// 		infinite: true,
	// 		arrows: false,
	// 		dots: false,
	// 		vertical: true,            	
	// 	});
		
	// 	$('.slide4046_2').slick({
	// 		autoplay: false,
	// 		autoplaySpeed: 6000,
	// 		speed: 800,
	// 		infinite: true,
	// 		arrows: true,
	// 		dots: false
	// 	});

	// 	$('.review-list').slick({
	// 		autoplay: true,
	// 		autoplaySpeed: 0,
	// 		infinite: true,
	// 		cssEase: 'linear',
	// 		arrows: false,
	// 		slidesToScroll: 1,
	// 		speed: 1500,
	// 		slidesToShow: 14,
	// 		vertical: true,
	// 		pauseOnHover: false,
	// 		pauseOnFocus: false,
	// 	});

	// 	//ecocont2 slide show
	// 	document.querySelector('.popup-body').insertAdjacentHTML('afterbegin', '<div data-popupcont="1"><img data-show="1" alt="" src="https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/eco4046/ecoCont2_slide1_view.png"></div>');
	// 	document.querySelector('.popup-body').insertAdjacentHTML('afterbegin', '<div data-popupcont="2"><img data-show="2" alt="" src="https://img.eduwill.net/eduwill/img/2022/Q/product/module/pc/eco4046/ecoCont2_slide2_view.png"></div>');
		
	// });

	function winnerList(){
		var options = {
			jsonFileNm: 'Q202012_WINNER.min',
		};

		var slickOptions = {
			speed: 1000,
			slidesPerRow: 6,
			slidesToShow: 10,
		};

		eduf.UI.Winner('.winner-list', options, slickOptions);
		
	}