
$(document).ready(function () {
    aosEvent();
    pageLoadEvent();

    const targetOffset = $('#schol_info').offset().top;

    $(window).on("scroll", function () {
        var scrollPos = $(this).scrollTop();

        /* cont1 */
        var targetTop = $(".cont1").offset().top - 500;

        if (scrollPos >= targetTop && !$(".cont1").hasClass("active")) {
            $(".cont1").addClass("active");
        }

        /* fixed button */
        if (scrollPos >= targetOffset - 110) {
            $('.fix_btn').addClass('hide');
        } else {
            $('.fix_btn').removeClass('hide');
        }
    });
});




function pageLoadEvent(){
    var temp_s = $("#jdsmWrap").offset().top;
    $('html, body').animate({ scrollTop: temp_s}, 400);
}

function aosEvent(){
    AOS.init({
        duration:500,
        delay:0,
        easing: 'ease-in',
        offset:200,
        once:true,
        animatedClassName:'aos-animate',
    });
}