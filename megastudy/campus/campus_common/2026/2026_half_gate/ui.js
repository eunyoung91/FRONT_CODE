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
});

$(window).on("load", function () {
    pageLoadEvent();
    aosEvent();
    titleTweenEvent();
    btnTop();
});

// $(window).on("scroll", function () {
//     var $banner = $("#academyList");
//     var scrollPosition = $(window).scrollTop();
//     var pageHeight = $(document).height() - $(window).height();
//     var scrollPercentage = (scrollPosition / pageHeight) * 100;

//     if (scrollPercentage >= 96) {
//         $banner.css({
//             position: "fixed",
//             bottom: "268px"
//         });
//     } else {
//         $banner.css({
//             position: "fixed",
//             bottom: "48px"
//         });
//     }

//     if ($(this).scrollTop() > 100) {
//         $('.btnTop').stop().animate({ 'opacity': "1" }, { "duration": "50" });
//     } else {
//         $('.btnTop').stop().animate({ 'opacity': "0" }, { "duration": "50" });
//     }
// });

$(window).on("scroll", function () {
    var $banner = $("#academyList");
    var $bottom = $("#bottom_bnr");

    var scrollBottom = $(window).scrollTop() + $(window).height();
    var bottomOffsetTop = $bottom.offset().top;
    var bottomHeight = $bottom.outerHeight();

    if (scrollBottom >= bottomOffsetTop + bottomHeight) {
        $banner.css({
            position: "absolute",
            bottom: "60px"
        });
    } else {
        $banner.css({
            position: "fixed",
            bottom: "48px"
        });
    }

    if ($(this).scrollTop() > 100) {
        $('.btnTop').stop().animate({ 'opacity': "1" }, { "duration": "50" });
    } else {
        $('.btnTop').stop().animate({ 'opacity': "0" }, { "duration": "50" });
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
    var motion1 = new TimelineMax({delay:0.2,repeat:0})
        motion1.to(".act1_1", 0.2, {opacity:1, scale:1, ease: Power2.easeIn})
        motion1.to(".act1_2", 0.4, {opacity:1, scale:1, ease: Power2.easeIn});

    var motion2 = new TimelineMax({delay:0.9,repeat:0})
        motion2.to(".act2", 0.4, {opacity:1, y:0, ease: Power2.easeOut});

    var motion3 = new TimelineMax({delay:0.9,repeat:0})
        motion3.to(".act3", 0.4, {opacity:1, y:0, ease: Power2.easeOut});

    var motion4 = new TimelineMax({delay:1,repeat:0})
        motion4.to(".act4", 0.4, {opacity:1, scale:1, ease: Power4.easeOut});

    var motion4_1 = new TimelineMax({delay:1.5,repeat:0})
        motion4_1.to(".act4_1", 0.4, {opacity:1, y:0, ease: Power4.easeOut});

    var motion4_2 = new TimelineMax({delay:1.5,repeat:0})
        motion4_2.to(".act4_2", 0.4, {opacity:1, x:0, ease: Power4.easeOut});
    
    var motion4_3 = new TimelineMax({delay:1.5,repeat:0})
        motion4_3.to(".act4_3", 0.4, {opacity:1, x:0, ease: Power4.easeOut});             

    var motion5 = new TimelineMax({delay:1.7,repeat:0})
        motion5.to(".act5", 0.4, {opacity:1, ease: Power4.easeOut});   
}