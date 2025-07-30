$(document).ready(function () {
    // 1. �ʱ� ���� (��ũ �б�, swiper �ʱ�ȭ, �� �̺�Ʈ, AOS �Ӽ� ����)
    setResponsiveLinks();
    initSwipers();
    setResponsiveAOS();
    initTabs();

    // 2. Resize �̺�Ʈ ���
    $(window).on('resize', function () {
        setResponsiveLinks();
        setResponsiveAOS();
    });

    // 3. Scroll �̺�Ʈ ���
    $(window).on('scroll', function () {
        toggleFixedFloating();
    });
});

$(window).on('load', function () {
    // ��� ���ҽ� �ε� �� ������ �Լ�
    aosEvent();            
    titleTweenEvent();    
    toggleFixedFloating(); 
    pageLoadEvent();       
});

// ========================== Functions ==========================

// ��ũ �ڵ� �б�
function setResponsiveLinks() {
    var isMobile = window.innerWidth <= 767;

    $('.slide_link').each(function () {
        var pcHref = $(this).data('pc');
        var moHref = $(this).data('mo');
        var selectedHref = isMobile ? moHref : pcHref;

        if (selectedHref) {
            $(this).attr('href', selectedHref);
        }
    });
}

// Swiper �ʱ�ȭ
var swipers = [];
function initSwipers() {
    $('.swiper-container').each(function (index) {
        var swiper = new Swiper(this, {
            loop: true,
            slidesPerView: 1,
            speed: 600,
            pagination: {
                el: $(this).find('.swiper-pagination')[0],
                clickable: true,
            },
        });
        swipers[index] = swiper;
    });
}

// �� �̺�Ʈ ����
function initTabs() {
    $('.tabs .tab').on('click', function () {
        var index = $(this).data('index');

        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');

        $('.swiper-container').hide();
        $('.swiper-container[data-index="' + index + '"]').show();

        // ���� Swiper ���ʱ�ȭ (�� ��ȯ ��)
        if (swipers[index]) {
            swipers[index].destroy(true, true);
        }

        swipers[index] = new Swiper('.swiper-container[data-index="' + index + '"]', {
            loop: false, 
            slidesPerView: 1,
            slidesPerGroup: 1,
            speed: 600,
            pagination: {
                el: $('.swiper-container[data-index="' + index + '"]').find('.swiper-pagination')[0],
                clickable: true,
            },
        });
    });
}

// ������ AOS �Ӽ� ����
function setResponsiveAOS() {
    var isMobile = window.innerWidth <= 767;
    var aosType = isMobile ? 'fade-down' : 'fade-up';

    $('.aos-dynamic').each(function () {
        $(this).attr('data-aos', aosType);
    });

    AOS.refresh();
}

// Fixed Floating Banner ���
function toggleFixedFloating() {
    var $banner = $(".fixedFloating");
    var $bottom = $("#academyList");

    if ($bottom.length === 0) return;

    var scrollBottom = $(window).scrollTop() + $(window).height();
    var bottomOffsetTop = $bottom.offset().top;

    if (scrollBottom >= bottomOffsetTop) {
        $banner.fadeOut(200);
    } else {
        $banner.fadeIn(200);
    }
}

// ������ �ε� �� Ư�� ��ġ�� �̵�
function pageLoadEvent() {
    var temp_s = $("#topVisual").offset().top;
    $('html, body').animate({ scrollTop: temp_s }, 500);
}

// AOS �ʱ�ȭ
function aosEvent() {
    AOS.init({
        offset: 300,
        duration: 500,
        easing: 'ease-in-sine',
        delay: 0,
        once: true
    });
}

// GSAP Ÿ��Ʋ �ִϸ��̼�
function titleTweenEvent() {
    const tl = gsap.timeline();
    tl.set(".bg_overlay", { opacity: 0 })
        .to(".bg_overlay", { opacity: 1, duration: 1.5 }, 0.0);

    tl.set(".act.m01", { clipPath: "inset(0 100% 0 0)", opacity: 1 }, 0.0)
        .to(".act.m01", { clipPath: "inset(0 0% 0 0)", ease: "power4.out", duration: 1.1 }, 0.0);

    tl.fromTo(".act.m02",
        { opacity: 0, scale: 1.3, y: 20, filter: "blur(4px)" },
        { opacity: 1, scale: 1, y: 0, filter: "blur(0px)", ease: "expo.out", duration: 0.6 }, 0.6);

    tl.set(".act.m02_2", { clipPath: "inset(0 100% 0 0)", opacity: 1 }, 0.6)
        .to(".act.m02_2", { clipPath: "inset(0 0% 0 0)", ease: "power4.out", duration: 1.1 }, 0.6);

    tl.fromTo(".act.m04",
        { opacity: 0, scale: 0.95 },
        { opacity: 1, scale: 1, ease: "power2.out", duration: 0.5 }, 0.8);

    tl.fromTo(".act.m03",
        { opacity: 0, y: 40 },
        { opacity: 1, y: 0, ease: "power2.out", duration: 0.7 }, 1.3);
}

