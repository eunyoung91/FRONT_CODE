$(function(){
    titleMotion();

    $(window).on('load', function () {
        aosEvent();
        pageLoadEvent();
        fixmenu();
    });
});


function titleMotion() {
    window.addEventListener("load", function () {
        let tl = gsap.timeline();

        tl.fromTo(".motion-wrap .circle p:nth-child(1) img", 
            { scale: 0.85, opacity: 0 }, 
            { scale: 1, opacity: 1, duration: 0.4, ease: "sine.out" }
        );

        tl.fromTo(".motion-wrap .circle p:nth-child(2) img", 
            { scale: 0.85, opacity: 0 }, 
            { scale: 1, opacity: 1, duration: 0.4, ease: "sine.out" }, "-=0.2"
        );

		tl.fromTo(".motion-wrap .circle p:nth-child(3) img", 
            { scale: 0.85, opacity: 0 }, 
            { scale: 1, opacity: 1, duration: 0.4, ease: "sine.out" }, "-=0.2"
        );

        tl.fromTo(".visual-wrap .typo p:nth-child(1) img",
            { y: 10, opacity: 0 }, 
            { y: 0, opacity: 1, duration: 0.5, ease: "sine.out" }, "-=0.3"
        );
        tl.fromTo(".visual-wrap .typo p:nth-child(2) img",
            { y: 10, opacity: 0 }, 
            { y: 0, opacity: 1, duration: 0.8, ease: "sine.out" }, "-=0.3"
        );

        tl.fromTo(".visual-wrap .typo p:nth-child(3) img", 
            { width: 0, opacity: 0 }, 
            { width: "100%", opacity: 1, duration: 0.7, ease: "sine.out" }, "-=0.4"
        );
        tl.fromTo(".visual-wrap .typo p:nth-child(4) img", 
            { opacity: 0 }, 
            { opacity: 1, duration: 0.6, ease: "sine.out" }, "-=0.2"
        );
        tl.fromTo(".visual-wrap .typo p:nth-child(5) img",
            { y: 10, opacity: 0 }, 
            { y: 0, opacity: 1, duration: 0.5, ease: "sine.out" }, "-=0.6"
        );

		tl.fromTo(".visual-wrap .cube p:nth-child(1) img",
			{ opacity: 0 }, 
			{ opacity: 1, scale: 1, duration: 0.9, ease: "power1.in" }, "-=0.4"
		);
		tl.fromTo(".visual-wrap .cube p:nth-child(2) img",
			{ opacity: 0 }, 
			{ opacity: 1, duration: 0.7, ease: "power1.in" }, "-=0.4"
		);
		tl.fromTo(".visual-wrap .cube p:nth-child(3) img",
			{ opacity: 0 }, 
			{ opacity: 1, duration: 0.7, ease: "power1.in" }, "-=0.4"
		);

    });
}

function pageLoadEvent(){
    var temp_s = $("#customWrap").offset().top;
    $('html, body').animate({ scrollTop: temp_s}, 400);
}

function aosEvent(){
    AOS.init({
        offset: 200,
        duration: 500,
        easing: 'ease-in-sine',
        delay: 0,
        once: true
    });
}

/* 고정메뉴, 스크롤 이벤트 */
function fixmenu(){
    var $doc = $('html, body');
    var $contWrap = $('.js-cont-wrap');
    var $cont = $('.js-cont');
    
    var $bt_fix = $('.fix-menu a');
    var $fix_h = $('.fix-menu').height();

	// fixmenu 클릭 시 이동 (부드러운 스크롤 적용)
	$bt_fix.on('click', function(e){
		e.preventDefault();
		var i = $(this).index();
        var $contWrap_i  = $contWrap.eq(i);
		var $contWrap_top = $contWrap_i.offset().top;
        
        if ( i === 0 ){
            $doc.animate({scrollTop:$contWrap_top }, 500);
        } else {
		    $doc.animate({scrollTop:$contWrap_top - $fix_h}, 500);
        }
	});

    // 스크롤 이벤트
    $(window).scroll(function(){
        var scroll = $(window).scrollTop();
        var $cont06_top = $('.cont06').offset().top;
        var $cont03_top = $('.cont03').offset().top;

        // 스크롤 시 fixmenu 활성화
        if(scroll >= $cont03_top){
            $('.fix-menu').addClass('fix');
        }else if(scroll === 0){
            $('.fix-menu a').removeClass('on');
            $('.fix-menu a').eq(0).addClass('on');    
        }else{
            $('.fix-menu').removeClass('fix')
        }

        // cont08이 화면에서 사라지면 fix-menu 숨기기
        if (scroll >= $cont06_top) {
            $('.fix-menu-wrap').hide();
        } else {
            $('.fix-menu-wrap').show();
        }

        $cont.each(function(i){
            var $target = $cont.eq(i);
            var $target_top  = Math.floor($target.offset().top - $fix_h);
            if(scroll >= $target_top){
                $target.addClass('active');
            }
        });

        // 스크롤 시 fixmenu 버튼에 클래스 'on' 추가
        $contWrap.each(function(i){
            var $target = $contWrap.eq(i);
            var $target_top  = Math.floor($target.offset().top - $fix_h);
            if(scroll >= $target_top){
                $bt_fix.eq(i).addClass('on').siblings().removeClass('on');
            }
        });
    });
}
