$(document).ready(function () {
    // 1. 초기 셋팅 (링크 분기, swiper 초기화, 탭 이벤트, AOS 속성 설정)
    setResponsiveLinks();
    initSwipers();
    setResponsiveAOS();
    initTabs();

    // 2. Resize 이벤트 등록
    $(window).on('resize', function () {
        setResponsiveLinks();
        setResponsiveAOS();
    });

    // 3. Scroll 이벤트 등록
    $(window).on('scroll', function () {
        toggleFixedFloating();
    });
});

$(window).on('load', function () {
    // 모든 리소스 로드 후 실행할 함수
    aosEvent();            
    titleTweenEvent();    
    toggleFixedFloating(); 
    pageLoadEvent();       
});

// ========================== Functions ==========================

// 링크 자동 분기
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

// Swiper 초기화
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

// 탭 이벤트 설정
function initTabs() {
    $('.tabs .tab').on('click', function () {
        var index = $(this).data('index');

        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');

        $('.swiper-container').hide();
        $('.swiper-container[data-index="' + index + '"]').show();

        // 현재 Swiper 재초기화 (탭 전환 시)
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

// 반응형 AOS 속성 설정
function setResponsiveAOS() {
    var isMobile = window.innerWidth <= 767;
    var aosType = isMobile ? 'fade-down' : 'fade-up';

    $('.aos-dynamic').each(function () {
        $(this).attr('data-aos', aosType);
    });

    AOS.refresh();
}

// Fixed Floating Banner 토글
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

// 페이지 로드 시 특정 위치로 이동
function pageLoadEvent() {
    var temp_s = $("#topVisual").offset().top;
    $('html, body').animate({ scrollTop: temp_s }, 500);
}

// AOS 초기화
function aosEvent() {
    AOS.init({
        offset: 300,
        duration: 500,
        easing: 'ease-in-sine',
        delay: 0,
        once: true
    });
}

// GSAP 타이틀 애니메이션
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

