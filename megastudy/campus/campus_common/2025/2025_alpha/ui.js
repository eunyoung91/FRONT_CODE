$(function() {
	
	/*==============================고정============================= */
	// //gnb틀고정용
	$(window).load(function(){
		//페이지 로드 시 스크롤 visual로 이동
		$('html, body').animate({
			scrollTop : $('.visual-wrap').offset().top + 1		
		});
	});	
    
	//페이지 로드 후 1초 동안 스크롤 중지 후 1초 지나면 스크롤 가능하도록
	function delay(){
		setTimeout(enableScroll ,1000);
	}

	//스크롤 시 스크롤 안 되게 하는 이벤트 제거
	function enableScroll(){
		$(window).off("scroll", disableScroll);
	}

	//스크롤 안 되게 하는 이벤트
	function disableScroll(){
		//페이지 상단 위치값 찾기
		var target = document.querySelector('.visual-wrap');
		var endY = target.getBoundingClientRect().top + window.pageYOffset;

		////스크롤 Y값 이동
		window.scrollTo(0, endY);
	}
	$(window).on("load", delay);
	$(window).on("scroll", disableScroll);
	/*==============================//고정============================= */
	// cont02 시험지 슬라이드
	paperSlide()
});
// cont02 시험지 슬라이드
function paperSlide() {

	const pswiper = new Swiper('.paper-slide', {
		loop: true,
		autoplay: {
			delay: 7000,
			disableOnInteraction: false,
		},
		loopAdditionalSlides: 1,
		speed: 500,
		grabCursor: true,
		slidesPerView: 1,
		spaceBetween: 20, 
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
	});
    $('.paper-slide').hover(
		function(){
			pswiper.autoplay.stop();
    },
		function(){
			pswiper.autoplay.start();
		}
	);

}