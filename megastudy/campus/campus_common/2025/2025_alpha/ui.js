$(function() {
	
	/*==============================����============================= */
	// //gnbƲ������
	$(window).load(function(){
		//������ �ε� �� ��ũ�� visual�� �̵�
		$('html, body').animate({
			scrollTop : $('.visual-wrap').offset().top + 1		
		});
	});	
    
	//������ �ε� �� 1�� ���� ��ũ�� ���� �� 1�� ������ ��ũ�� �����ϵ���
	function delay(){
		setTimeout(enableScroll ,1000);
	}

	//��ũ�� �� ��ũ�� �� �ǰ� �ϴ� �̺�Ʈ ����
	function enableScroll(){
		$(window).off("scroll", disableScroll);
	}

	//��ũ�� �� �ǰ� �ϴ� �̺�Ʈ
	function disableScroll(){
		//������ ��� ��ġ�� ã��
		var target = document.querySelector('.visual-wrap');
		var endY = target.getBoundingClientRect().top + window.pageYOffset;

		////��ũ�� Y�� �̵�
		window.scrollTo(0, endY);
	}
	$(window).on("load", delay);
	$(window).on("scroll", disableScroll);
	/*==============================//����============================= */
	// cont02 ������ �����̵�
	paperSlide()
});
// cont02 ������ �����̵�
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