$(document).ready(function () {    
    $('.tab_menu li a').on('click', function (e) {
        e.preventDefault();

        $('.tab_menu li').removeClass('active');
        $(this).parent().addClass('active');

        var target = $(this).attr('href');
        $('.tab_ct').removeClass('active');
        $(target).addClass('active');
    });

    $('.btnTop').on('click', function () {
        $('html, body').stop().animate({ scrollTop: 0 }, 500);
    });
 
    // ´« ³»¸®´Â ¸ð¼Ç
    var snowCount = 100;
    for (var i = 0; i < snowCount; i++) {
        $('<div class="snow"></div>').appendTo('.snow-fall');
    }

 
 
});
 

$(window).on("load", function () {
    pageLoadEvent();
    aosEvent();
    titleTweenEvent();
    btnTop();
 
});
 

$(window).on("scroll", function () { 
    var $banner = $("#fixedFloating");
    var $bottom = $("#bottom_cont");

    var scrollBottom = $(window).scrollTop() + $(window).height();
    var bottomOffsetTop = $bottom.offset().top;

    // #bottom_cont¿¡ µé¾î°¡¸é ¼û±è
    if (scrollBottom >= bottomOffsetTop) { 
        $banner.css({
            display: "none"
        });
    } else {
        $banner.css({ 
            display: "block",
            position: "fixed",
            bottom: "48px"  
        }); 
    }

    // ¹öÆ° º¸ÀÌ±â/¼û±â±â
    if ($(this).scrollTop() > 100) {
        $('.btnTop').stop().animate({ 'opacity': "1" }, 50);
    } else {
        $('.btnTop').stop().animate({ 'opacity': "0" }, 50);
    }
});

 

function pageLoadEvent(){
    var temp_s = $("#topTitle").offset().top;
    $('html, body').animate({ scrollTop: temp_s}, 500);
}

function btnTop() {
    var winH = $(window).height();
    var scrT = $(window).scrollTop();
    
	if ($(document).height() - (winH + scrT) < 91) {
		$('.btnTop').css({
			bottom: '30px', "position": "fixed"
		});
	} else {
		$('.btnTop').css({
			bottom: '30px', "position": "fixed"
		});
	}
}

function aosEvent(){
    AOS.init({
        duration: 4000,
        easing: 'ease-in',
        once: true,
        animatedClassName: 'aos-animate',
    });
}

function titleTweenEvent(){
    var motion1 = new TimelineMax({delay:0.5,repeat:0}) 
        motion1.to(".act1", 0.7, {opacity:1, ease: Power4.easeOut});

    var motion2 = new TimelineMax({delay:0.9,repeat:0})
        motion2.to(".act2", 0.7, {opacity:1, delay:0.2,  y:0, ease: Power2.easeOut});

    var motion3 = new TimelineMax({delay:0.9,repeat:0})
        motion3.to(".act3", 0.7, {opacity:1, delay:0.5, y:0, ease: Power2.easeOut});

 
}
 
