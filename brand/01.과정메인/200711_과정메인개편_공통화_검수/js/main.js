var $ = jQuery.noConflict();

var $this = new Vue({
    el: '#winnerSlider',
    data: {
        list: [],
        idx: '',
        name: '',
        contents: ''
    },
    created: function(){
        this.getData()
    },
    mounted: function(){},
    methods: {
        getData: function(){
            const url = '';

            axios.all([
                axios.get('https://img.eduwill.net/eduwill/live/json/L/L201930_SWINNER.min.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/X/X201900_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/Q/Q201900_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/S/S201900_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/B/B202000_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/Y/Y20200720_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/_106/_10620200804_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/_107/_10720200807_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/G/G201900_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/7/720200818_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/C/C202000_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/K/K202000_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/A/A202000_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/U/U202000_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/5/5202000_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/D/D202000_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/M/M202000_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/_104/_104202000_WINNER.json'),
                axios.get('https://img.eduwill.net/eduwill/live/json/Z/Z201013_WINNER.json')

            ]).then(function (response){
                var _itemCode;
                var _num;

                if ($('body').hasClass('progress_land') ){
                    _num = 0;
                } else if( $('body').hasClass('progress_math') ){
                    _num = 1;
                } else if ($('body').hasClass('progress_energy') ){
                    _num = 2;
                } else if ($('body').hasClass('progress_well') ){
                    _num = 3;
                } else if ($('body').hasClass('progress_black') ){
                    _num = 4;
                } else if ($('body').hasClass('progress_engin') ){
                    _num = 5;
                } else if ($('body').hasClass('progress_arch') ){
                    _num = 6;
                } else if ($('body').hasClass('progress_civ') ){
                    _num = 7;
                } else if ($('body').hasClass('progress_gov') ){
                    _num = 8;
                } else if ($('body').hasClass('progress_seven') ){
                    _num = 9;
                } else if ($('body').hasClass('progress_cop') ){
                    _num = 10;
                } else if ($('body').hasClass('progress_guard') ){
                    _num = 11;
                } else if ($('body').hasClass('progress_admin') ){
                    _num = 12;
                } else if ($('body').hasClass('progress_account') ){
                    _num = 13;
                } else if ($('body').hasClass('progress_erp') ){
                    _num = 14;
                } else if ($('body').hasClass('progress_road') ){
                    _num = 15;
                } else if ($('body').hasClass('progress_trans') ){
                    _num = 16;
                } else if ($('body').hasClass('progress_fire') ){
                    _num = 17;
                } else if ($('body').hasClass('progress_public') ){
                    _num = 18;
                } else {
                    _num = '';
                }

                if($('[id=winnerSlider]').length > 0){
                    $this.idx = response[_num].data.index;
                    $this.list = response[_num].data.items;
                }
                var timeId = setInterval(function(){
                    if($('[id=winnerSlider] p').length > 0){
                        $('#winnerSlider').slick({
                            slidesToShow: 10,
                            vertical:true,
                            autoplay: true,
                            autoplaySpeed: 2000,
                            speed: 1000,
                            cssEase: 'linear',
                            dots: false,
                            arrows: false,
                            infinite: true,
                            slidesToScroll: 1,
                            slidesPerRow: 3,
                            pauseOnHover: false,
                            pauseOnFocus: false,
                            verticalSwiping : true
                        })
                        clearInterval(timeId);
                    }
                }, 100);
            });
        }
    }
});

$(function(){
	if( $('body').hasClass('progress_house') ){
		houseEvent();
	}

	
    $(window).on('load', function(){
		if($('body').hasClass('progress_land')){
			landEvent();
		} else if( $('body').hasClass('progress_gov') || $('body').hasClass('progress_cop') || $('body').hasClass('progress_seven') || $('body').hasClass('progress_fire') || $('body').hasClass('progress_post') ){
			teacherEvent();
			pocketIcon();
		}

        showMonth();
        winner();

        if($('.section-top-promotion .swiper-slide').length == 1) {
            $('.section-top-promotion .swiper-wrapper').addClass('disabled');
        }

		if ($('.section-visual .swiper-slide').length == 1) {
            $('.section-visual .swiper-wrapper').addClass('disabled');
            $('.section-visual .visual-pagination').hide();
        }

        // promotion banner
        var swiperPromotion = new Swiper('.section-top-promotion', {
            slidesPerView: 1,
            speed: 500,
            autoplay: { 
                delay: 1500,
                disableOnInteraction: false
            },
			pagination: {
				el: $('.promotion-pagination'),
				draggable: true,
			},
            loop: true
        });

        // section-visual
        var swiperPromotion = new Swiper('.swiper-banner', {
            slidesPerView: 1,
            speed: 500,
            autoplay: { 
                delay: 1500,
                disableOnInteraction: false
            },
            loop: true,
			pagination: {
				el: $('.visual-pagination'),
				draggable: true,
			}
        });

		// swiper-card
		var swiperCard = new Swiper('.swiper-card', {
			slidesPerView: '1.1',
			spaceBetween: 20,
			speed: 500,
			loop: true,
			autoplay: {
				delay: 1500,
			},
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
            
            if( $('body').hasClass('progress_public') || $('body').hasClass('progress_gov') || $('body').hasClass('progress_cop') || $('body').hasClass('progress_seven') ){
                swiper.autoplay.start();
            } else {
                swiper.autoplay.stop();
            }
        });

		// swiper-review
        $('.swiper-review2').each(function(index, element){
            var $this = $(this);
            var swiper = new Swiper(this, {
                slidesPerView: 1,
                speed: 500,
                loop: true,
				autoplay: {
                    delay: 2500,
                },
                pagination: {
                    el: $this.siblings('.swiper-pagination'),
                    draggable: true,
                }
            });
        });

        //swiper-content
        $('.swiper-content').each(function(index, element){
            var $this = $(this);
            var swiper = new Swiper(this, {
                slidesPerView: "auto",
                centeredSlides: true,
                loop: true,
                autoplay: {
                    delay: 2500,
                },
            });
        });

        //swiper-service
        $('.swiper-service').each(function(index, element){
            var $this = $(this);
            var swiper = new Swiper(this, {
                slidesPerView: "auto",
                centeredSlides: true,
                loop: true,
                autoplay: {
                    delay: 2500,
                },
            });
        });

        // swiper-picture
        $('.swiper-picture').each(function(index, element){
            var $this = $(this),
                _data = $this.data('swiper'),
                _space;
            //console.log(_data);

            if( _data == 'winner'){
                _perview = 1.1;
                _space = 20;
            } else if( _data == 'book'){
                _perview = 1.5;
                _space = 50;
            } else if( _data == 'network'){
                _perview = 1.5;
                _space = 28;
            } else if( _data == 'system'){
                _perview = 1.1;
                _space = 28;
            } else if( _data == 'fact'){
                _perview = 1.1;
                _space = 26;
            } else if( _data == 'govlab'){
                _perview = 1.1;
                _space = 26;
            } else if( _data == 'story'){
                _perview = 1.1;
                _space = 20;
            } else if( _data == 'ulecture'){
                _perview = 1.1;
                _space = 20;
            } else if( _data == 'qna'){
                _perview = 1.1;
                _space = 20;
            }

            var swiper = new Swiper(this, {
                slidesPerView: 1.5,
                spaceBetween: _space,
                loop: true,
                breakpoints: {
                    375: {
                        slidesPerView: _perview,
                        spaceBetween: _space,
                    },
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

            if( $('body').hasClass('progress_public') ){
                if( _data == 'book'){
                    swiper.autoplay.start();
                }
            } else if($('body').hasClass('progress_land')){
				if( _data == 'winner'){
					swiper.autoplay.start();
				}
			} else if($('body').hasClass('progress_gov')){
				if( _data == 'life'){
					_perview = 1;
					_space = 80;
				}
			}else{
                swiper.autoplay.stop();
            }
        });

        // notice
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
        $('.swiper-greeting').each(function(num){
            $(this).find('li').on('click', function(){
                var idx = $(this).index();
                //console.log(num,idx);
                
                // 태그 복사 후 팝업에 추가한다.
                var tag = $('.swiper-greeting').eq(num).find('.swiper-wrapper').clone();
                $('#layerSlide').prepend(tag);

                // layer open
                popupOpen('.layer-dimmed', 'layerOpen');

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
                    $('#layerSlide').find('.video-box').each(function(i){
                        videoStop(i);
                    });
                });

                // 영상플레이 버튼 눌렀을때 실행
                $('#layerOpen').find('.btn-play').on('click', function(){
                    $(this).hide();
                    $(this).prev('video').show();
                    $(this).prev('video')[0].play();
                });

            });
        });

        // layer close
        $('.layer-close').on('click', function(){
            $('#layerSlide').children('.swiper-wrapper').remove();
            $('#layerSlide').find('.video-box').empty();
            $('.layer-box').empty();
            popupClose('.layer-dimmed','layerOpen');
            popupClose('.layer-dimmed','layerVideo');
        });
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
        if ($src.indexOf('.mp4') != -1) {
            $(this).parent().append('<video autoplay loop controls playsinline="" class="video-background" poster="https://img.eduwill.net/Img2/mobile/brand/item/main/common/video_poster.png"><source src="'+$src+'" type="video/mp4"></video>');
            $(this).siblings('iframe').hide();
        }else{
            $(this).siblings('iframe').attr('src', $src); 
        }
    });
}

// video reset
function videoStop(idx){
    $('#layerOpen').find('.btn-play').show();
    $('#layerOpen').find('video')[idx].pause();
    $('#layerOpen').find('video')[idx].currentTime = 0;
}

// eduf.js winner
function winner(){
    var _bodyClass = ['land', 'math', 'energy', 'well', 'black', 'engin', 'arch', 'civ', 'gov', 'seven', 'cop', 'guard', 'admin', 'account', 'erp', 'road', 'trans', 'fire', 'post', 'job', 'flow', 'public','history','house', 'safety']
    var _json = ['L202000_WINNER.min', 'X202000_WINNER.min', 'Q202012_WINNER.min', 'S202000_WINNER.min', 'B202000_WINNER.min', 'Y202109_WINNER.min', '_106202109_WINNER.min', '_107202109_WINNER.min', 'G202201_WINNER.min', '7202201_WINNER.min', 'C202201_WINNER.min', 'K202000_WINNER.min', 'A202000_WINNER.min', 'U202000_WINNER.min', '5202000_WINNER.min', 'D202000_WINNER.min', 'M202000_WINNER.min', '_104202208_WINNER.min', 'T20220824_WINNER.min', 'V202109_WINNER.min', 'F202000_WINNER.min', 'Z201013_WINNER.min', 'H201016_WINNER.min','J201230_WINNER.min', '_108202109_WINNER.min']

    var _row;
	var _show;

    for( var i = 0; i < _bodyClass.length; i++ ){
        var options = {
            jsonFileNm: _json[i],
        };

        if( $('body').hasClass('progress_public') ){
            _row = 2;
        } else {
            _row = 3;
        }

		if( $('body').hasClass('progress_land') ){
			_show = 7;
		}else if( $('body').hasClass('progress_house') ){
			_show = 10;
		}else{
			_show = 11;
		}
        
        var slickOptions = {
            speed: 1000,
            slidesToShow: _show,
            slidesPerRow: _row,
        };

        var _winnerList = '.progress_'+ _bodyClass[i] + ' .winner-list';

        if( $('body').hasClass('progress_' + _bodyClass[i]) && $('.winner-list').length > 0 ){
            eduf.UI.Winner(_winnerList, options, slickOptions);
            return false;
        }
    }
}

function showMonth(){
    var date = new Date(); 
    var month = date.getMonth()+1; 
    var day = date.getDate(); 
    if (month < 10) {
         month = "0" + month; 
    } 
    
    if (day < 10) { 
        day = "0" + day; 
    }
 
    $(".nextMonth").text(setMonth("2014-08"));
	$(".houseMonth").text(setMonth("2012-05"));
    $(".nextMonth2").text(date.getMonth()+1);
    $(".nextMonth3").text(date.getMonth()+92);
}

function setMonth(sdate){
    var edate = getTodayType();

	var arr1 = sdate.split('-');
	var arr2 = edate.split('-');

	var sYear = arr1[0];
	var sMonth = arr1[1];
	var eYear = arr2[0];
	var eMonth = arr2[1];

	var result = ((eYear-sYear)*12)+(eMonth-sMonth);
	return result;
}

function getTodayType(){
    var date = new Date(); 
	var year = date.getFullYear(); 
    var month = date.getMonth()+1; 

	return year + "-" + month;
}

function houseEvent(){
	popupEvent();
	visualEvent();
	interviewEvent();
	reviewEvent();
	videoEvent();
	roadmapEvent();
	houseSlideTabList();
}

function visualEvent(){
	var $slider = $('.visual-list');

	if ($slider.length) {
		var currentSlide;
		var slidesCount;
		var sliderCounter = document.createElement('div');
		sliderCounter.classList.add('slider-counter');
		
		var updateSliderCounter = function(slick, currentIndex) {
			currentSlide = slick.slickCurrentSlide() + 1;
			slidesCount = slick.slideCount;

			if(slidesCount == null) slidesCount = 4;
			$(sliderCounter).html(currentSlide + '<span class="total">/' +slidesCount+ '</span>')
		};

		$slider.on('init', function(event, slick) {
			$slider.append(sliderCounter);
			updateSliderCounter(slick);
		});

		$slider.on('afterChange', function(event, slick, currentSlide) {
			updateSliderCounter(slick, currentSlide);

			var dataId = $('.visual-list .slick-current').attr("data-slick-index");    
			$('.visual-indicator li').removeClass("on");
			$('.visual-indicator li').eq(dataId).addClass("on");
		});

		$slider.on('swipe', function(event, slick, direction){
			if ($('.visual-control').hasClass("play")) { 
				$slider
				.slick('slickPause')
				.slick('slickSetOption', 'pauseOnDotsHover', false);
				clearInterval(tick);
			}

			var dataId = $('.visual-list .slick-current').attr("data-slick-index");    
				
			$('.visual-progressBar .progressBar').each(function (index) {
			
				if(index == dataId){	
					$('.visual-progressBar .inProgress').css({width:0});			
					$('.visual-progressBar .inProgress' + dataId).css({
						width: "100%"
					});
				}
			
			});
		 });

		//	$slider.slick();
		$slider.slick({
			infinite: true,
			arrows: false,
			dots: false,
			autoplay: false,
			speed: 500,
			slidesToShow: 1,
			slidesToScroll: 1,
			pauseOnDotsHover: true
		});
		
		//ticking machine
		var percentTime;
		var tick;
		var time = 1;
		var progressBarIndex = 0;

		$('.visual-progressBar .progressBar').each(function (index) {
			var progress = "<div class='inProgress inProgress" + index + "'></div>";
			$(this).html(progress);
		});

		function startProgressbar() {
			resetProgressbar();
			percentTime = 0;
			tick = setInterval(interval, 10);
		}

		function interval() {
			if (($slider.find('.slick-track div[data-slick-index="' + progressBarIndex + '"]').attr("aria-hidden")) === "true") {
				progressBarIndex = $slider.find('.slick-track div[aria-hidden="false"]').data("slickIndex");
				
				startProgressbar();

			} else {

				percentTime += 1 / (time + 2);
				$('.inProgress' + progressBarIndex).css({
					width: percentTime + "%"
				});

				if (percentTime >= 100) {
					$slider.slick('slickNext');

					progressBarIndex++;

					if (progressBarIndex > 3) {
						progressBarIndex = 0;
					}
					
					$('.visual-indicator li').removeClass("on");
					$('.visual-indicator li').eq(progressBarIndex).addClass("on");

					startProgressbar();
				}

			}
		}

		function resetProgressbar() {
			$('.inProgress').css({
				width: 0 + '%'
			});
			clearInterval(tick);
		}
		
		startProgressbar();
		// End ticking machine

		$('.visual-progressBar div').click(function () {
			clearInterval(tick);
			var goToThisIndex = $(this).find("span").data("slickIndex");
			$slider.slick('slickGoTo', goToThisIndex, false);
			startProgressbar();
		});

		$('.visual-control').on('click', function(e) {
			if ($(this).hasClass("pause")) { // add class where you want to add class active for process
				$(this).removeClass("pause");
				$(this).addClass("play");
				$slider
				.slick('slickPause')
				.slick('slickSetOption', 'pauseOnDotsHover', false);
				clearInterval(tick);

				var idx = $(".visual-indicator li.on").index();
				$('.visual-progressBar .inProgress' + idx).css({
					width: "100%"
				});
			} else {
				$(this).removeClass("play");
				$(this).addClass("pause");
				$slider
				.slick('slickPlay')
				.slick('slickSetOption', 'pauseOnDotsHover', true);

				startProgressbar();
			}
		});

		$('.visual-indicator li').on('click', function(e) {
			var idx = $(this).index();
			$slider.slick('slickGoTo', idx, false);

			$('.visual-indicator li').removeClass("on");
			$(this).addClass("on");

			if ($('.visual-control').hasClass("play")) { 
				var dataId = $('.visual-list .slick-current').attr("data-slick-index");    
				$('.visual-progressBar .progressBar').each(function (index) {
				
					if(index == dataId){	
						$('.visual-progressBar .inProgress').css({width:0});			
						$('.visual-progressBar .inProgress' + dataId).css({
							width: "100%"
						});
					}
				});
			
			}else{
				startProgressbar();
			}
		});

	}
}

function interviewEvent(){
	var videoList= [
		{src:'https://pmp.eduwill.net/eduwillpmp/eduwill/flv/20210412/jutek_interview1.mp4',poster:'https://img.eduwill.net/Img2/mobile/brand/item/main/house/2021/thumb_interview1_211005.png' },
		{src:'https://pmp.eduwill.net/eduwillpmp/eduwill/flv/20210412/jutek_interview2.mp4',poster:'https://img.eduwill.net/Img2/mobile/brand/item/main/house/2021/thumb_interview2_211005.png' },
		{src:'https://pmp.eduwill.net/eduwillpmp/eduwill/flv/20210412/jutek_interview3.mp4',poster:'https://img.eduwill.net/Img2/mobile/brand/item/main/house/2021/thumb_interview3_211005.png'}
	];

	var _player = $(".section-main-interview #player");
	var _poster = $(".section-main-interview .btn-video");

	$(".interview-group .play-list").each(function(i){
		$(this).on('click',function(){
			$(".interview-group .play-list .btn-play").removeClass("on");
			$(this).children(".btn-play").addClass("on");

			var allImg;
			for(var j= 0; j<3; j++){
				allImg = $(".interview-group .play-list").eq(j).find(".btn-play").find("img");
				allImg.attr('src', allImg.attr('src').replace('_on','_off'));
			}

			var changImg = $(this).children(".btn-play").find("img");
			if(	$(this).children(".btn-play").hasClass("on")){
				changImg.attr('src', changImg.attr('src').replace('_off','_on'));
			}

			_poster.show();
			_player.get(0).pause();
			_player.get(0).currentTime = 0;

			_poster.children("img").attr('src',videoList[i].poster);
			_player.attr('poster',videoList[i].poster);
			_player.children("source").attr('src',videoList[i].src);
			_player.load();

		});
	});

	_poster.on("click", function(){	
		$(this).hide();
		_player.get(0).play();
	});
}

function reviewEvent(){
	$('.typeC .review-list').each(function(key, item) {
		var sliderIdName = 'slider' + key;
			this.id = sliderIdName;
		var sliderId = '#' + sliderIdName;

		$(sliderId).slick({
			infinite: true,
			arrows: false,
			dots: true,
			autoplay: true,
			autoplaySpeed: 2000,
			speed: 500,
			slidesToShow: 1,
			slidesToScroll: 1
		});

	});


	new Swiper('.typeC .swiper-card2', {
		slidesPerView: '1.1',
		spaceBetween: 0,
		speed: 500,
		loop: true,
		autoplay: {
			delay: 3000,
		},
		pagination: {
			el: ".swiper-pagination",
		},
	});


}

function videoEvent(){
	$(".section-main-job .btn-video").on("click", function(){
		$(this).hide();
		$(this).prev("video").get(0).play();
	});
}

function roadmapEvent(){
	var $slider = $('.roadmap-list');

	if ($slider.length) {
		//	$slider.slick("unslick");
		//	$slider.slick();
		$slider.slick({
			infinite: true,
			arrows: false,
			dots: false,
			autoplay: false,
			speed: 500,
			slidesToShow: 1,
			slidesToScroll: 1,
			pauseOnDotsHover: true
		});

		
		$slider.on('afterChange', function(event, slick, currentSlide) {
			var dataId = $('.roadmap-list .slick-current').attr("data-slick-index");   

			$('.roadmap-indicator li').removeClass("on");
			$('.roadmap-indicator li').eq(dataId).addClass("on");
			
		});


		$slider.on('swipe', function(event, slick, direction){
			if ($('.roadmap-control').hasClass("play")) { 
				$slider
				.slick('slickPause')
				.slick('slickSetOption', 'pauseOnDotsHover', false);
				clearInterval(tick2);
			}

			var dataId = $('.roadmap-list .slick-current').attr("data-slick-index");    
				
			$('.roadmap-progressBar .progressBarNew').each(function (index) {
			
				if(index == dataId){	
					$('.roadmap-progressBar .inProgressNew').css({width:0});			
					$('.roadmap-progressBar .inProgressNew' + dataId).css({
						width: "100%"
					});
				}
			
			});
		 });

		//ticking machine
		var percentTime2;
		var tick2;
		var time2 = 1;
		var progressBarIndex2 = 0;

		$('.roadmap-progressBar .progressBarNew').each(function (index) {
			var progress2 = "<div class='inProgressNew inProgressNew" + index + "'></div>";
			$(this).html(progress2);
		});

		function startProgressbar() {
			resetProgressbar();
			percentTime2 = 0;
			tick2 = setInterval(interval, 10);
		}

		function interval() {
			if (($slider.find('.slick-track div[data-slick-index="' + progressBarIndex2 + '"]').attr("aria-hidden")) === "true") {
				progressBarIndex2 = $slider.find('.slick-track div[aria-hidden="false"]').data("slickIndex");
				
				startProgressbar();

			} else {

				percentTime2 += 1 / (time2 + 2);
			
				$('.inProgressNew' + progressBarIndex2).css({
					width: percentTime2 + "%"
				});

				if (percentTime2 >= 100) {
					$slider.slick('slickNext');

					progressBarIndex2++;

					if (progressBarIndex2 > 5) {
						progressBarIndex2 = 0;
					}

					$('.roadmap-indicator li').removeClass("on");
					$('.roadmap-indicator li').eq(progressBarIndex2).addClass("on");

					startProgressbar();
				}

			}
		}

		function resetProgressbar() {
			$('.inProgressNew').css({
				width: 0 + '%'
			});
			clearInterval(tick2);
		}
		
		startProgressbar();
		// End ticking machine

		$('.roadmap-progressBar div').click(function () {
			clearInterval(tick2);
			var goToThisIndex = $(this).find("span").data("slickIndex");
			$slider.slick('slickGoTo', goToThisIndex, false);
			startProgressbar();
		});

		$('.roadmap-control').on('click', function(e) {
			if ($(this).hasClass("pause")) { // add class where you want to add class active for process
				$(this).removeClass("pause");
				$(this).addClass("play");
				$slider
				.slick('slickPause')
				.slick('slickSetOption', 'pauseOnDotsHover', false);
				clearInterval(tick2);

				var idx = $(".roadmap-indicator li.on").index();
				$('.roadmap-progressBar .inProgressNew' + idx).css({
					width: "100%"
				});

			} else {
				$(this).removeClass("play");
				$(this).addClass("pause");
				$slider
				.slick('slickPlay')
				.slick('slickSetOption', 'pauseOnDotsHover', true);

				startProgressbar();
			}
		});

		$('.roadmap-indicator li, .roadmap-link li').on('click', function(e) {
			var idx = $(this).index();
			$slider.slick('slickGoTo', idx, false);

			$('.roadmap-indicator li').removeClass("on");
			$('.roadmap-indicator li').eq(idx).addClass("on");

			if ($('.roadmap-control').hasClass("play")) { 
				var dataId = $('.roadmap-list .slick-current').attr("data-slick-index");    
				
				$('.roadmap-progressBar .progressBarNew').each(function (index) {
				
					if(index == dataId){	
						$('.roadmap-progressBar .inProgressNew').css({width:0});			
						$('.roadmap-progressBar .inProgressNew' + dataId).css({
							width: "100%"
						});
					}
				
				});
			}else{
				startProgressbar();
			}

		});

	}
}

function popupEvent(){
	$(".progress_house.typeC .btn-text").on("click", function(){
		popupOpen('.dimmed', 'popupBase');
	});
}


function landEvent(){
	$(".progress_land .item-list").slick({
		vertical: true,
		autoplay: true,
		autoplaySpeed: 0,
		speed: 1000,
		cssEase: 'linear',
		dots: false,
		arrows: false,
		infinite: true,
		slidesToShow: 3,
		slidesToScroll: 1,
		slidesPerRow: 1,
		pauseOnHover: false,
		pauseOnFocus: false,
		verticalSwiping : true
	});
}

function teacherEvent(){
	$('.teacher-list .col a').on('click', function(){
		$('.teacher-list .col a').children('.name').fadeOut();
		$(this).children('.name').fadeIn();
	});
}


function pocketIcon(){
	function pocket(){
		var delay = 800;
		$('.fix-free-icon a').each(function(i, e) {
			setTimeout(function() {
				$('.fix-free-icon a').removeClass('on');
				$(e).toggleClass('on');
			}, i * delay);
		});
	}

	setInterval(function(){
		pocket();
	}, 3000);
}

function houseSlideTabList(){
	$('.progress_house.typeC .tab-contents').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: false,
		infinite: true,
		arrows: false,
		autoplaySpeed: 2000,
		adaptiveHeight: true,
		asNavFor: '.tab-list',
		pauseOnHover: true,
		pauseOnFocus: true,
	});

	$('.progress_house.typeC .tab-list').slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		autoplay: false,
		infinite: true,
		asNavFor: '.tab-contents',
		arrows: true,
		dots: false,
		autoplaySpeed: 2000,
		centerMode: false,
		focusOnSelect: true
	});

	$('.progress_house.typeC .tab-list').on("afterChange", function(){
		var tabList = $(".progress_house.typeC .tab-list").find(".slick-slide");
		tabList.each(function(){
			$(this).find("img").attr('src', $(this).find('img').attr('src').replace('_on','_off'));
		});

		var currentList = $(".progress_house.typeC .tab-list").find(".slick-current");
		currentList.find("img").attr('src', currentList.find("img").attr('src').replace('_off','_on'));
	});
}