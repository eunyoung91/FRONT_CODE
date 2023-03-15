$(function(){
    //jquery ui bug
    $.curCSS = function(element, prop, val) {
        return jQuery(element).css(prop, val);
    };
    

    //video play or pause
	var vid = document.getElementById("itemVideo"); 
    function playVid() { 
        vid.play(); 
    }
    function pauseVid() { 
        vid.pause(); 
    }

    $('#visual').mousewheel(function(event, delta) {
        if(delta === -1) {
            pauseVid();
            $('html,body').stop().animate({ scrollTop : $('#page1').offset().top - 89}, 'slow');
        } else if(delta === 1) {
			window.setTimeout(playVid, 1000);
            $('html,body').stop().animate({ scrollTop : 0}, 'slow');
        }
        event.stopPropagation();
        event.preventDefault();
        event.returnValue = false;
        return false;
    });
    $('#page1').mousewheel(function(event, delta) {
        if(delta === 1) {
            window.setTimeout(playVid, 1000);
        } else {
        }
    });

    //페이지 스크롤
    var ele;
	var html='html,body';
	var speed = 100;
	var children = 'li';
	var scrolltopdata = [];
	var diff = 0;
	
	$.fn.pageScroll = function(opt){
        ele = $(this);		
		if(opt.speed) speed = opt.speed;
		if(opt.children) children = opt.children;
			
		$(ele).find(children).click(function(event){ 
			
			if($(this).attr('title')){
				pageele = '#'+$(this).attr('title'); 
				
				$(html).animate({scrollTop:getOffsetTop(pageele)},speed,'easeOutExpo');
				
				if(opt.compleate){
					compleate($(this),opt.compleate);
                }
                
                $('#header .menu li[title='+ $(this).attr('title') +']').addClass('active').siblings('li').removeClass('active');
			}
        });

		if(opt.scrollmove){

			//높이구하기
			$(document).ready(function(){
				$(ele).find(children).each(function(){
				
					pageele = '#'+$(this).attr('title'); 
					offset = $(pageele).offset();
					
					scrolltopdata.push(Math.floor(offset.top));
				});

				scrollmove(scrolltopdata,opt.scrollmove);
				
			});
			
		}

		function getOffsetTop(pageele){	
			toppx = 0;			
			offset = $(pageele).offset();
			
			if(opt.diff>0){
				offset.top = (offset.top-opt.diff);
			}

			return Math.floor(offset.top);
		} 

		function compleate(data,callback){
            callback(data);
		}

		function scrollmove(data,callback){
            callback(data);
        }
        
        $(window).scroll(function(){
            $('.section').each(function (index, value) {
				if ($(window).scrollTop() > ($("#page" + (index + 1)).offset().top) - 100) {
                    $(".menu ul li").eq(index).addClass('active').siblings('li').removeClass('active');
				}
			});
        });
    }
    
    $('.menu ul').pageScroll({
        speed:500,
        diff:50,
        compleate:function(){
            $("input:checkbox[id='btn-nav']").prop("checked", false);
        }
    });
    $(".slide").swipe({ 
        fingers:'all', 
        swipeLeft:swipe1, 
        swipeRight:swipe1, 
        allowPageScroll:"auto"
    });
    function swipe1(event, direction, distance, duration, fingerCount) {
        if(direction == 'right') {
            $("input:checkbox[id='btn-nav']").prop("checked", false);
        }
        //$(this).text( "You have swiped " + direction +' with ' + fingerCount +' fingers' );
    }

    // 타이틀애니메이션
    $('.visual-title').addClass('animated fadeInUp');

    // 타이틀 마우스 휠 애니메이션
    // setInterval(function() {
    //     $('.visual-btn').animate({'margin-bottom':'-40px'},600).animate({'margin-bottom':'-29px'},600);
    // }, 500);

    $('.visual-btn').click(function(){
        $('html,body').animate({ scrollTop : $('#page1').offset().top - 50}, 'slow');
        return false;
    });

    //layerClose
    layerCloseFnc();

    //포트폴리오
    if($('.layer-portfolio .text').length >= 1) {
        $('.layer-portfolio .text').mCustomScrollbar({
            theme: 'minimal-dark'
        });
    }

    if($('.layer-price').length >= 1) {
        $('.layer-price').mCustomScrollbar({
            theme: 'minimal-dark'
        });
    }

    if($('.layer-contact').length >= 1) {
        $('.layer-contact').mCustomScrollbar({
            theme: 'minimal-dark'
        });
    }

/*
    var slider1 = $('.layer-portfolio .bx-slide').bxSlider( {
        mode: 'horizontal',// 가로 방향 수평 슬라이드
        speed: 500,        // 이동 속도를 설정
        pager: false,      // 현재 위치 페이징 표시 여부 설정
        moveSlides: 1,     // 슬라이드 이동시 개수
        auto: false,        // 자동 실행 여부
        autoHover: true,   // 마우스 호버시 정지 여부
        controls: true    // 이전 다음 버튼 노출 여부
    });
    $('.portfolio .list li').click(function() {
        slider1.goToSlide($(this).index());
    });
*/
/*
    //스튜디오
    var slider2 = $('.layer-studio .bx-slide').bxSlider( {
        mode: 'horizontal',// 가로 방향 수평 슬라이드
        speed: 500,        // 이동 속도를 설정
        pager: false,      // 현재 위치 페이징 표시 여부 설정
        moveSlides: 1,     // 슬라이드 이동시 개수
        auto: false,        // 자동 실행 여부
        autoHover: true,   // 마우스 호버시 정지 여부
        controls: true    // 이전 다음 버튼 노출 여부
    });
    $('.studio .list li').click(function() {
        slider2.goToSlide($(this).index());
    });
*/
});

function layerCloseFnc() {
	var layerEle = $('.layer-inner');    
	$('.layer .layer-dim, .layer .layer-close').click(function(){
		$('.layer .layer-dim').fadeOut();
		$(layerEle).animate({ top : '-300%', opacity: 0}, 'slow', 'easeInOutQuart', function () { });		
		$('body').css('overflow-y', 'inherit');
		fnc_stop();
	});
}

function layerOpenFnc(obj, type) {    

    var target = $(obj);

    $('.layer .layer-dim').fadeIn();
    target.siblings('.layer-inner').animate({ top : '-300%', opacity: 0}, 'slow', 'easeInOutQuart', function () {  });
    target.fadeIn().animate({ top : 0, opacity: 1}, 'slow', 'easeInOutQuart', function () {  });

}
