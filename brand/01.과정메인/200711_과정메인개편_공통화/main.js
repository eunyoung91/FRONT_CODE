var $ = jQuery.noConflict();

var $this = new Vue({
    el: '#winnerSlider',
    data: {
        list: [],
        idx: '',
        name: '',
        contents: ''
    },
   created: function() {
        this.getData()
    },
    mounted: function(){},
    methods: {
        getData: function (){
            const url = '';

            axios.all([
                axios.get('https://img.eduwill.net/eduwill/live/json/L/L201930_SWINNER.min.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/X/X201900_WINNER.json')
            ]).then(function (response){
                var _itemCode;
                var _num = 0;

                if( $('body').hasClass('progress_math') ){
                    _num=1;
                } else {
                }

                $this.idx = response[_num].data.index;
                $this.list = response[_num].data.items;
                var timeId = setInterval(function(){
                    if($('[id=winnerSlider] p').length > 0){
                        $('#winnerSlider').slick({
                            slidesToShow: 15,
                            vertical:true,
                            autoplay: true,
                            autoplaySpeed: 0,
                            speed: 1000,
                            cssEase: 'linear',
                            dots: false,
                            arrows: false,
                            infinite: true,
                            slidesToScroll: 1,
                            vertical: true,
                            slidesPerRow: 3,
                        })
                        clearInterval(timeId);
                    }
                }, 100);
            });
        }
    }
});

$(function(){
	$(window).on('load', function(){
		if($('.section-top-promotion .swiper-slide').length == 1) {
			$('.section-top-promotion .swiper-wrapper').addClass( "disabled" );
			$('.section-top-promotion .promotion-pagination').addClass( "disabled" );
		}

		// promotion banner
		var swiperPromotion = new Swiper('.section-top-promotion', {
			slidesPerView: 1,
			speed: 500,
			autoplay: { delay: 4000,},
			autoplayDisableOnInteraction: false,
			loop: true,
			pagination: {
				el: '.promotion-pagination',
				draggable: true,
			}
		});

        // swiper-review
        $('.swiper-review').each(function(index, element){
            var $this = $(this);
            var swiper = new Swiper(this, {
                slidesPerView: 1,
                speed: 500,
                loop: true,
                pagination: {
                    el: $this.siblings('.swiper-pagination'),
                    draggable: true,
                }
            });
        });

        // swiper-picture
        $('.swiper-picture').each(function(index, element){
            var $this = $(this),
                 _data = $this.data('swiper'),
                 _space;
            //console.log(_data);

            if( _data == 'winner'){
                _space = 20;
            } else if( _data == 'book'){
                _space = 50;
            } else if( _data == 'network'){
                _space = 28;
            } else if( _data == 'system'){
                _space = 10;
            } else if( _data == 'fact'){
                _space = 26;
            }

            var swiper = new Swiper(this, {
                slidesPerView: 1.5,
                spaceBetween: _space,
                loop: false,
                breakpoints: {
                    640: {
                        slidesPerView: 1.5,
                        spaceBetween: _space,
                    },
                    768: {
                        slidesPerView: 2.5,
                        spaceBetween: _space,
                    },
                    1024: {
                        slidesPerView: 3.5,
                        spaceBetween: _space,
                    }
                }
            });
        });

		// 공지사항
		var swiperNotice = new Swiper('.swiper-notice', {
			slidesPerView: 1,
			direction: 'vertical',
			speed: 800,
			autoplay: { delay: 4000,},
			autoplayDisableOnInteraction: false,
			loop: true
		});

		var layerSwiper = new Swiper('#layerSlide', {
			loop:true,
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
			initialSlide: 0
		});

		// 슬라이드 리스트 클릭시 팝업 설정
		$(".swiper-greeting").each(function(num){
			$(this).find("li").on("click", function(){
				var idx = $(this).index();
				//console.log(num,idx);
				
				// 태그 복사 후 팝업에 추가한다.
				var tag = $(".swiper-greeting").eq(num).find(".swiper-wrapper").clone();
				$("#layerSlide").prepend(tag);

				// 팝업오픈
				popupOpen('.layer-dimmed','layerOpen');

				// 슬라이드 생성 및 팝업 바로가기 설정
				layerSwiper.destroy();
				layerSwiper = new Swiper('#layerSlide', {
					loop: false,
					navigation: {
						nextEl: '.swiper-button-next',
						prevEl: '.swiper-button-prev',
					},
					initialSlide:idx
				});

				// 이벤트 발생 시 영상 설정 리셋
				layerSwiper.on('slideChange', function() {
					$("#layerSlide").find(".video-box").each(function(i){
						videoStop(i);
					});
				});

				// 영상플레이 버튼 눌렀을때 실행
				$("#layerOpen").find(".btn-play").on("click", function(){
					$(this).hide();
					$(this).prev("video").show();
					$(this).prev("video")[0].play();
				});

			});
		});

		// 레이어 팝업 닫기
		$(".layer-close").on("click", function(){
			$("#layerSlide").children(".swiper-wrapper").remove();
			$("#layerSlide").find(".video-box").empty();
			$(".layer-box").empty();
			popupClose('.layer-dimmed','layerOpen');
			popupClose('.layer-dimmed','layerVideo');
        });

        // 영상 슬라이드
		/*
		$('.swiper-picture .btn-play').on('click', function(event){
			event.preventDefault();

			var val = $(this).data('videoSrc'),
				idx = $(this).parent().index();
		

				popupOpen('.layer-dimmed', 'layerVideo');

// 				if ( idx==0 ) {
// //					val = 'https://tv.naver.com/embed/14138566?autoPlay=false';
// 				} else if ( idx==1) {
// //					val = 'https://tv.naver.com/embed/14233196?autoPlay=false';
// 				} else if ( idx==2) {
// //					val = 'https://tv.naver.com/embed/14138700?autoPlay=false';
// 				} else if ( idx==3) {
// //					val = 'https://tv.naver.com/embed/14138720?autoPlay=false';
// 				} else if ( idx==4) {
// //					val = 'https://tv.naver.com/embed/14138744?autoPlay=false';
// 				} else if ( idx==5) {
// //					val = 'https://tv.naver.com/embed/14138869?autoPlay=false';
// 				} else if ( idx==6) {
// //					val = 'https://tv.naver.com/embed/14138799?autoPlay=false';
// 				}

            $('.layer-box').find('iframe').attr('src', val);
			return false;
		});

        // $('.video-single').click(function(){ 
        //     $(this).hide(); 
        //     $('#iframe-single').attr('src', 'https://www.youtube.com/embed/-EJ-YFbmTNo?amp;autoplay=1'); 
        //     return false; 
        // });
*/
	

	});
});

function layerVideo($url){
	 $('.layer-box').empty();
	if ($url.indexOf('.mp4') != -1) {
		$('.layer-box').html('<video autoplay loop controls playsinline="" class="video-background" poster="https://img.eduwill.net/Img2/mobile/brand/item/main/common/video_poster.png"><source src="'+$url+'" type="video/mp4"></video>');
	}else{
		$('.layer-box').html('<iframe src="'+$url+'" frameborder="no" scrolling="no" marginwidth="0" marginheight="0" width="100%" height="100%" allowfullscreen></iframe><img src="https://img.eduwill.net/Img2/mobile/brand/item/main/land/naver.png" alt="">');
	}

	setTimeout(function(){
		popupOpen('.layer-dimmed', 'layerVideo');
	},500);
}

function videoSingle($target, $src){
    $('.'+$target).click(function(e){
        e.preventDefault();

        $(this).hide(); 
        $(this).siblings('iframe').attr('src', $src); 
    });
}

// 영상 리셋 함수
function videoStop(idx){
	$("#layerOpen").find(".btn-play").show();
	$("#layerOpen").find("video")[idx].pause();
	$("#layerOpen").find("video")[idx].currentTime = 0;
}