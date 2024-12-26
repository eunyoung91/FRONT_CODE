// home 바로가기 버튼 삭제
$(".scroll-home-btn").remove();

// header 활성화
$(document).ready(function() {
    // 각 섹션의 ID와 해당 앵커 태그를 연결
    var sections = ['#camRussel', '#camMega', '#camGisuk', '#camInfo'];
    var navLinks = $('header ul li a');

    $(window).on('scroll', function() {
        var scrollTop = $(window).scrollTop();

        // 각 섹션의 위치를 확인하고 active 클래스를 추가/제거
        sections.forEach(function(section, index) {
            var sectionOffset = $(section).offset().top - 100; // 약간의 여유를 줌

            if (scrollTop >= sectionOffset) {
                navLinks.removeClass('active');
                navLinks.eq(index).addClass('active');
            }
        });
    });
});

/*------------------- 비주얼 스크롤 모션 -------------------*/
gsap.timeline({  
    scrollTrigger: {
        trigger: ".sec01", // 객체기준범위
        pin: true, // 고정
        start: "top top", // 시작점
        end: "+=8000", // 끝점
        scrub: 2, // 모션바운스
        markers: true, // 개발가이드선
        anticipatePin: 1,
    }
})

.to('.sec01 .scene01 .v-obj01', {duration: 10, delay: 0,  opacity: 0.1, y: 110, scale: 1.2})
.to('.sec01 .scene01 .v-obj02', {duration: 10, delay: 0, opacity: 1})
.to('.sec01 .scene01 .v-bg', {duration:0, delay: 2, animation:'bgScale02 10s infinite alternate'})
.to('.sec01 .scene01 .v-obj02 img', {duration:30, delay: 2, scale: 1, ease: "linear"})

.to('.sec01 .scene01 #myText', {duration: 0, delay: 0, opacity:1,  animation: 'typing 2s steps(30, end), blink-caret 1s step-end infinite'})
.to('.sec01 .scene01 #myText', {duration: 50, delay: 0,})

.to('.sec01 .scene01', {duration: 10, delay: 2, opacity: 0})
.to('.sec01 .scene02 .v-obj03', {duration: 20, delay: 0, y: 0, opacity: 1, ease: "linear"})
.to('.sec01 .scene02 .light', {duration: 10, delay: 2, y: 0, opacity: 1, ease: "linear"})
.to('.sec01 .scene02 .v-tit-wrap p', {duration: 5, animation: 'scaleIn 1s 1s ease forwards'}, "-=5")
.to('.sec01 .scene02 .v-tit-wrap h1 span', {duration: 5, animation: 'slideUp 1s 1s ease forwards'}, "-=5")
.to('.sec01 .scene02 *[class^="v-txt0"]', {duration: 5,  animation: 'fadeIn 1s 3s ease forwards'}, "-=5")
.to('.sec01 .scene02', {duration: 70, delay: 10});

/*------------------- //비주얼 스크롤 모션 -------------------*/
/* sec02 스크롤 모션 */
gsap.timeline({  
    scrollTrigger: {
        trigger: ".sec02", // 객체기준범위
        pin: true, // 고정
        start: "top top", // 시작점
        end: "+=4000px", // 끝점
        scrub: 1, // 모션바운스
        markers: false, // 개발가이드선
        anticipatePin: 1
    }
})
.to('.pro-wrap header', {duration: 1, delay: 0, display:'block', top: 0})
.to('.sec02', {duration: 0, delay: 1})
.to('.sec02 ul', {duration: 10, x: -2850})
.to('.sec02', {duration: 0, delay: 0})


/* sec03 스크롤 모션 */
gsap.timeline({  
    scrollTrigger: {
        trigger: ".sec03", // 객체기준범위
        pin: true, // 고정
        start: "top top", // 시작점
        end: "+=4000px", // 끝점
        scrub: 1, // 모션바운스
        markers: false, // 개발가이드선
        anticipatePin: 1
    }
})
.to('.sec03', {duration: 2, delay: 2})
.to('.sec03 ul', {duration: 10, y: -650 })
.to('.sec03', {duration: 2, delay: 2});

$(document).ready(function() {
    $(window).on('scroll', function() {
        $('.slide-wrap ul li').each(function() {
            // 현재 요소의 위치와 높이를 계산
            let offset = window.innerHeight * 0.3; // 뷰포트 높이의 30%
            let elementTop = $(this).offset().top - offset;
            let viewportTop = $(window).scrollTop();

            // 요소의 상단이 뷰포트의 최상단(스크롤 상단) 위치에 정확히 맞는지 확인
            if (elementTop <= viewportTop && elementTop + $(this).outerHeight() > viewportTop) {
                $('.slide-wrap ul li').removeClass('active');
                $(this).addClass('active');
                return false; // 하나의 요소만 활성화되도록 each 루프 중단
            }
        });
    });
});