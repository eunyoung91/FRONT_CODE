$(function(){
	$(window).on('load', function () {
        pageLoadEvent();
        aosEvent();
	});
	fixmenu()
});
function pageLoadEvent(){
    var temp_s = $("#omegaWrap").offset().top;
    $('html, body').animate({ scrollTop: temp_s}, 400);
}
function aosEvent(){
	AOS.init({
		offset: 300,
		duration: 500,
		easing: 'ease-in-sine',
		delay: 0,
		once: true
	});
}

/* �����޴�, ��ũ�� �̺�Ʈ */
function fixmenu(){
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	// var $cont03_top = $('.cont03').offset().top;
	
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();

	// fixmenu Ŭ�� �� �̵�
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $contWrap.eq(i);
		var $cont_top = $cont_i.offset().top;
		
        $('html, body').animate({scrollTop:$cont_top + 30}, 100);
	});

	// ��ũ�� �̺�Ʈ
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		var $cont08_top = $('.cont08').offset().top;
		var $cont03_top = $('.cont03').offset().top;
        var $tbl_pos = $('.tbl-pos').offset().top;

		// ��ũ�ѽ� fixmenu Ȱ��ȭ
		if(scroll >= $cont03_top){
			$('.fix-menu').addClass('fix');

		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');	
		}else{
			$('.fix-menu').removeClass('fix')
		}

		// cont08�� ȭ�鿡�� ������� fix-menu �����
		if (scroll >= $cont08_top) {
			$('.fix-menu-wrap').css('display', 'none');
		} else {
			$('.fix-menu-wrap').css('display', 'block');
		}

		$cont.each(function(i){
			var $target = $cont.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$target.addClass('active');
			}
		});
        
		// ��ũ�ѽ� fixmenu ��ư�� Ŭ���� 'on'�߰�
		$contWrap.each(function(i){
			var $target = $contWrap.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

        // �������� fix
		if(scroll >= $tbl_pos){
			$('.tbl-pos').addClass('fix');
		}
		else{
			$('.tbl-pos').removeClass('fix');
		}
	});
}

$(window).on('load', function() {
    gsap.timeline({  
        scrollTrigger: {
            trigger: ".cont04", // ��ü���ع���
            pin: true, // ����
            start: "bottom bottom",
            end: "+=200%", // Ʈ���� ��� ������ 2�踸ŭ ��ũ��
            // end: "bottom center",
            scrub: 0.1, // ��ǹٿ
            markers: false, // ���߰��̵弱
            anticipatePin: 1
        }
    })
    
    .to(".cont04 .slide01", {opacity: 1, duration: 0})
    .to(".cont04 .slide02, .cont04 .slide03", {opacity: 0.2, duration: 0.1})
    .to(".cont04 .slide02", {opacity: 1, duration: 0})
    .to(".cont04 .slide01, .cont04 .slide03", {opacity: 0.2, duration: 0.1})
    .to(".cont04 .slide03", {opacity: 1, duration: 0})
    .to(".cont04 .slide01, .cont04 .slide02", {opacity: 0.2, duration: 0.1})
    
    gsap.timeline({  
        scrollTrigger: {
            trigger: ".cont05", // ��ü���ع���
            pin: true, // ����
            start: "bottom bottom",
            end: "+=200%", // Ʈ���� ��� ������ 2�踸ŭ ��ũ��
            scrub: 1, // ��ǹٿ
            markers: false, // ���߰��̵弱
            anticipatePin: 1
        }
    })
    .to(".cont05 .slide01", {opacity: 1, duration: 0})
    .to(".cont05 .slide02, .cont05 .slide03", {opacity: 0.2, duration: 0.1})
    .to(".cont05 .slide02", {opacity: 1, duration: 0})
    .to(".cont05 .slide01, .cont05 .slide03", {opacity: 0.2, duration: 0.1})
    .to(".cont05 .slide03", {opacity: 1, duration: 0})
    .to(".cont05 .slide01, .cont05 .slide02", {opacity: 0.2, duration: 0.1})
    
    gsap.timeline({  
        scrollTrigger: {
            trigger: ".cont07", // ��ü���ع���
            pin: true, // ����
            start: "bottom bottom",
            end: "+=200%", // Ʈ���� ��� ������ 2�踸ŭ ��ũ��
            scrub: 1, // ��ǹٿ
            markers: false, // ���߰��̵弱
            anticipatePin: 1
        }
    })
    .to(".cont07 .slide01", {opacity: 1, duration: 0})
    .to(".cont07 .slide02, .cont07 .slide03", {opacity: 0.2, duration: 0.1})
    .to(".cont07 .slide02", {opacity: 1, duration: 0})
    .to(".cont07 .slide01, .cont07 .slide03", {opacity: 0.2, duration: 0.1})
    .to(".cont07 .slide03", {opacity: 1, duration: 0})
    .to(".cont07 .slide01, .cont07 .slide02", {opacity: 0.2, duration: 0.1})
    });