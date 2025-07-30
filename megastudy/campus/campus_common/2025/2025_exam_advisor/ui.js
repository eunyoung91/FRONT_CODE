
$(window).on('load', function () {
    titleTweenEvent();
    aosEvent();
    pageLoadEvent();

    /*-- Visual title --*/
    var i = 0;
    var slideStates = [
        { active: "#first", next: "#second", prev: "#third" },
        { active: "#second", next: "#third", prev: "#first" },
        { active: "#third", next: "#first", prev: "#second" }
    ];

    function updateSlider() {
        $(".cube").removeClass("active next prev");
        $(".icon_img").css("opacity", 0);

        $(slideStates[i].active).addClass("active");
        $(slideStates[i].next).addClass("next");
        $(slideStates[i].prev).addClass("prev");
        
        $(slideStates[i].active).find(".icon_img").css("opacity", 1);

        i = (i + 1) % slideStates.length;
        setTimeout(updateSlider, 1800);
    }

    setTimeout(updateSlider, 2000);

    /*-- Navi --*/
    var $nav = $(".nav_menu");
    // var navOffset = $nav.offset().top;
    var $target = $("#cont_advisor");
    var $menuItems = $(".nav_menu a");
    var sections = $menuItems.map(function () {
        return $($(this).data("target"));
    });

    $(window).on("scroll", function () {
        var scrollPos = $(window).scrollTop();
        var targetTop = $target.offset().top;

        // if (scrollPos >= navOffset) {
        if (scrollPos >= targetTop) {
            // $nav.addClass("fixed");
            $nav.fadeIn();
        } else {
            // $nav.removeClass("fixed");
            $nav.fadeOut();
        }

        sections.each(function (index) {
            var section = $(this);
            if (
                section.offset().top <= scrollPos + 100 &&
                section.offset().top + section.outerHeight() > scrollPos + 100
            ) {
                $menuItems.removeClass("on");
                $menuItems.eq(index).addClass("on");
            }
        });
    });

    $menuItems.on("click", function(e){
        e.preventDefault();
        $menuItems.removeClass('on');
        $(this).addClass('on');

        var target = $(this).data("target");
        if ($(target).length) {
            $("html, body").animate({ scrollTop: $(target).offset().top }, 500);
        }
    });

});

function pageLoadEvent(){
    var temp_s = $("#advisorWrap").offset().top;
    $('html, body').animate({ scrollTop: temp_s}, 400);
}

/*-- Visual title --*/
function titleTweenEvent(){
    var motion1 = new TimelineMax({delay:0.3, repeat:0})
        motion1.to(".motion.m01", 0.5, {opacity:1, ease:Sine.easeInOut});

    var motion2 = new TimelineMax({delay:0.5, repeat:0})            
        motion2.to(".motion.m02", 0.7, {opacity:1, delay:0.4, top:190, ease:Power2.easeOut});

    var motion3 = new TimelineMax({delay:0.8, repeat:0})            
        motion3.to(".motion.m03", 0.5, {opacity:1, delay:0.4, top:343, ease:Back.easeOut});

    var motion4 = new TimelineMax({delay:1.1, repeat:0})            
        motion4.to(".motion.m04", 0.6, {opacity:1, delay:0.4, scale:1, ease:Power3.easeOut});

    var motion5 = new TimelineMax({delay:0.3, repeat:0})            
        motion5.to(".motion.m05", 0.5, {opacity:1, ease:Sine.easeInOut});

    var motion6 = new TimelineMax({delay:1.5, repeat:-1, yoyo:true})
        motion6.to(".motion.m06", 1.2, {opacity:1, ease:Back.easeOut});

    var motion7 = new TimelineMax({delay:1.5, repeat:-1, yoyo:true})
        motion7.to(".motion.m07", 1, {opacity:1, ease:Back.easeOut});
}

function aosEvent(){
    AOS.init({
        duration: 500,
        delay: 0,
        easing: 'ease-in',
        offset:200,
        once: true,
        animatedClassName:'aos-animate',
    });
}