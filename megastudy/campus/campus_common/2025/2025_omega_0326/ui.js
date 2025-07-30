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

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
	var $contWrap = $('.js-cont-wrap');
	var $cont = $('.js-cont');
	// var $cont03_top = $('.cont03').offset().top;
	
	var $bt_fix = $('.fix-menu a');
	var $fix_h = $('.fix-menu').height();

	// fixmenu 클릭 시 이동
	$bt_fix.on('click',function(e){
		e.preventDefault();
		var i = $(this).index();
		var $cont_i  = $contWrap.eq(i);
		var $cont_top = $cont_i.offset().top;
		
        $('html, body').animate({scrollTop:$cont_top + 30}, 100);
	});

	// 스크롤 이벤트
	$(window).scroll(function(){
		var scroll = $(window).scrollTop();
		var $cont08_top = $('.cont08').offset().top;
		var $cont03_top = $('.cont03').offset().top;
        var $tbl_pos = $('.tbl-pos').offset().top;

		// 스크롤시 fixmenu 활성화
		if(scroll >= $cont03_top){
			$('.fix-menu').addClass('fix');

		}else if(scroll==0){
			$('.fix-menu a').removeClass('on');
			$('.fix-menu a').eq(0).addClass('on');	
		}else{
			$('.fix-menu').removeClass('fix')
		}

		// cont08가 화면에서 사라지면 fix-menu 숨기기
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
        
		// 스크롤시 fixmenu 버튼에 클래스 'on'추가
		$contWrap.each(function(i){
			var $target = $contWrap.eq(i);
			var $target_top  = Math.floor($target.offset().top - $fix_h);
			if(scroll >= $target_top){
				$bt_fix.eq(i).addClass('on').siblings().removeClass('on');
			}
		});

        // 시행일정 fix
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
            trigger: ".cont04", // 객체기준범위
            pin: true, // 고정
            start: "bottom bottom",
            end: "+=200%", // 트리거 요소 높이의 2배만큼 스크롤
            // end: "bottom center",
            scrub: 0.1, // 모션바운스
            markers: false, // 개발가이드선
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
            trigger: ".cont05", // 객체기준범위
            pin: true, // 고정
            start: "bottom bottom",
            end: "+=200%", // 트리거 요소 높이의 2배만큼 스크롤
            scrub: 1, // 모션바운스
            markers: false, // 개발가이드선
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
            trigger: ".cont07", // 객체기준범위
            pin: true, // 고정
            start: "bottom bottom",
            end: "+=200%", // 트리거 요소 높이의 2배만큼 스크롤
            scrub: 1, // 모션바운스
            markers: false, // 개발가이드선
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