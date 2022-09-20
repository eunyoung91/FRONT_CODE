$(function(){
    "use strict";

    $(window).on('load', function(){
        academyInit();
    });
});

function academyInit(){
    academyPopup();
    academyScroll();
    academyIntro();
    academySlide();

	//주택 gnb 임시 셋팅
	$(".progress-J").find("#headerTop").removeClass("header-top");

}

function academyIntro(){
    if( $('.section-intro').length == 1 ){
        $('body').addClass('has-intro');

        $('.section-intro a').on('click', function(){
            $('html, body').animate({
                scrollTop: $('.section-visual').offset().top - 50
            }, 500);
        });
    } else {
        $('body').removeClass('has-intro');
    }
}

function academyScroll(){
    var previousScroll = 0;
    var _headerBottom = $('.header-bottom').offset().top - 48;

    $(window).scroll(function(){
        var $body = $('body');
        var currentScroll = $(this).scrollTop();
		
		//주택 gnb 임시 셋팅
		if ( $body.hasClass('progress-J') ){
			if(currentScroll < $(".progress-J").find(".section-top").height()){
				$(".progress-J").find("#headerTop").removeClass("header-top");
			}else{
				$(".progress-J").find("#headerTop").addClass("header-top");
			}
		}

        if ( !$body.hasClass('in_app') ){
            // brand
            // console.log('brand');
        } else {
            // webview
            // console.log('webview');
        }

        if ( currentScroll > previousScroll ){
            // console.log('down');
            if ( currentScroll >= _headerBottom ){
                $body.removeClass('header-original').addClass('header-sticky');


                // 컨텐츠 메뉴 내 depth3있을 때
                if( $body.children().find('.scroll_menu').length == 1 ){
                    $body.addClass('header-sticky-scroll');
                }

                // 취업
                if ( $body.hasClass('progress-Z') ){
                    $('.gnb > ul').css('display', 'none');
                }
            }
        } else {
            // console.log('up');
            $body.removeClass('header-sticky').addClass('header-original');
            if ( currentScroll <= _headerBottom ){
                $body.removeClass('header-original'); 
            }

            if ( currentScroll == 0 ){
                $body.removeClass('header-sticky').removeClass('header-original').removeClass('header-sticky-scroll');

                // 취업
                if ( $body.hasClass('progress-Z') ){
                    $('.gnb > ul').css('display', 'block');
                }
            }
        }
        previousScroll = currentScroll;
    });
}

function academySlide(){
    $('[data-slide="swiper"]').each(function(index, element){
        var $this = $(this),
             options = {},
            _type = $this.data('slideType'),
            _party = $this.data('slideParty'),
            $scrollbar = $this.children('.swiper-scrollbar'),
            $pagination = $this.children('.swiper-pagination');

        if( $this.children().find('.swiper-slide').length == 1 ){
            // one slide
            options = {
                loop: false,
                autoplay: false,
                allowTouchMove: false,
                scrollbar: false,
                pagination: false
            }

            // $('.swiper-scrollbar').css('display', 'none');
            // $('.swiper-pagination').css('display', 'none');
        } else {
            if( _type == 'single' ){
                options = {
                    speed: 500,
                    loop: true,
                    autoplay: {
                        delay: 3000,
                        disableOnInteraction: false,
                    },
                    pagination: {
                        el: $pagination
                    },
                }
            } else if( _type == 'multiple' ){
                options = {
                    slidesPerView: 'auto',
                    spaceBetween: 12,
                    speed: 500,
                    // loop: true,
                    // autoplay: {
                    //     delay: 3000,
                    //     disableOnInteraction: false,
                    // },
                    pagination: {
                        el: $pagination,
                        type: 'fraction',
                    },
                    scrollbar: {
                        el: $scrollbar
                    },
                    // breakpoints: {
                    //     520: {
                    //         slidesPerView: 2
                    //     },
                    //     640: {
                    //         slidesPerView: 2.5
                    //     },
                    //     720: {
                    //         slidesPerView: 3
                    //     }
                    // },
                    on: {
                        reachEnd: function() {
                            this.snapGrid = [...this.slidesGrid];
                        }
                    }
                }
            }
        }

        var swiper = new Swiper(this, options);
    });
}

function academyPopup(){
    $('.popup-close').on('click', function(){
        $('.popup-video-box').empty();
        popupClose('.popup-dim', 'popupVideo');
    });
}

function popupVideo($url){
    $('.popup-video-box').empty();
    if( $url.indexOf('.mp4') != -1 ){
        $('.popup-video-box').html('<video autoplay loop controls playsinline="" class="video-background"><source src="'+$url+'" type="video/mp4"></video>');
    } else {
        $('.popup-video-box').html('<iframe src="'+$url+'" frameborder="no" scrolling="no" marginwidth="0" marginheight="0" width="100%" height="100%" allowfullscreen></iframe><img src="https://img.eduwill.net/eduwill/img/common/popup/blank.png" alt="">');
    }

    setTimeout(function(){
        popupOpen('.popup-dim', 'popupVideo');
    },500);
}