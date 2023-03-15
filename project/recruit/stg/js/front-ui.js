$(function(){
	// 로그아웃 버튼 애니메이션
	$('#header .login-box .logout > a').click(function(){
		if ( $('#header .login-box .logout button').is(':hidden')){
			$('#header .login-box .logout button').slideDown('fast');
		} else {
			$('#header .login-box .logout button').slideUp();
		}
	});
	if ( $(window).width() > 999 ) {
		
		$('.fullheight').css('height', $(window).innerHeight() + 'px');

		$('#topMain.nav li.depth>a').each(function(e){
			$(this).on('mouseenter', function(){
				$('#header #topNav ul.dropdown-menu').hide();
				$('#header #topNav ul.dropdown-menu').eq(e).show();
			});
			$('#topMain.nav li.depth').on('mouseleave', function(){
				$('#header #topNav ul.dropdown-menu').hide();
			});
		});
	}

	// 채용공고 상세 세로값 해상도에 따라 변경
	function colWidth(){
		if ( $(window).width() > 999 ) {
			$('.recruit-table>ul>li>div.col-title').each(function(){
				$(this).css('height', $(this).next('div').outerHeight() + 'px')
			});
		} else {
			$('.recruit-table>ul>li>div.col-title').css('height', 'auto');
		}
	}
	colWidth();

	$(window).resize(function(){
		colWidth();
		if ( $(window).width() < 999) {
			$('.fullheight').css('height', 100 + '%');
		} else {
			$('.fullheight').css('height', $(window).innerHeight() + 'px');
		}
	});

	/*
	$(document).on('click', '#viewList', function(e){
		var $this = $(this),
			 $parent = $this.parent();

		e.preventDefault();
		$parent.toggleClass('in').siblings().removeClass('in');
	});
	*/

	/* renew 2020-10-08 */	
	$('.hd-wrap-pc .gnb-wrap .tit').mouseenter(function(){
		$(this).addClass('active').next('.gnb_dep2').show().closest('li').siblings().find('.tit').removeClass('active').next('.gnb_dep2').hide()
	})

	$('.hd-wrap-pc').mouseleave(function(){
		$('.hd-wrap-pc .gnb_dep2').hide()
	})

	$('.hd-wrap-pc.hd-main').mouseleave(function(){
		$(".hd-wrap-pc .gnb-wrap a").removeClass('active')
	})

	$(window).scroll(function(){
		if($(window).scrollTop() > 0) {
			$('.hd-wrap.sticky').addClass('sticky-fix')
		} else {
			$('.hd-wrap.sticky').removeClass('sticky-fix')
		}


	})
	
	$('.hd-wrap-mobile .menu-trigger').on('click', function(){
		$(this).toggleClass('active-1').parent().next('.nav-wrap').toggleClass('in'); 
		$('body').toggleClass('modal-open');
	}) 
	
	$('.hd-wrap-mobile .gnb-wrap .depth-down').on('click', function(){
		$(this).toggleClass('in').next('ul').slideToggle();
		return false;
	}) 
		
	

	if($('.container-main .visual-slick').length > 0) {
		$('.visual-slick').on('init', function(event, slick) {
			$(this).append('<div class="slick-counter"><span class="current"></span><span class="total"></span></div>');
			$(this).find('.current').text(slick.currentSlide + 1);
			$(this).find('.total').text(slick.slideCount);
		})
		.slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			autoplay: true,
			autoplaySpeed: 7000,
			fade: true,
			infinite: true,
			dots:true,
			customPaging: function(slider, i) { 
				//console.log($(slider.$slides[i]).html());
			},
		})
		.on('beforeChange', function(event, slick, currentSlide, nextSlide) {
			$(this).find('.current').text(nextSlide + 1);
		});
	}

	if($('.container-sub .visual-slick').length > 0) {
		$('.visual-slick').on('init', function(event, slick) {
			$(this).append('<div class="slick-counter"><span class="current"></span><span class="total"></span></div>');
			$(this).find('.current').text(slick.currentSlide + 1);
			$(this).find('.total').text(slick.slideCount);
		})
		.slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			autoplay: false,
			autoplaySpeed: 7000,
			fade: true,
			infinite: true,
			dots:true,
			customPaging: function(slider, i) { 
				//console.log($(slider.$slides[i]).html());
				return '<button class="tab">' + $(slider.$slides[i]).attr('data-dot-title') + '</button>';
			},
		})
		.on('beforeChange', function(event, slick, currentSlide, nextSlide) {
			$(this).find('.current').text(nextSlide + 1);
			$('.section-visual').removeClass('video-play');
			$('html, body').stop().animate({scrollTop: 0}, 200, function() {});
		});
		$('.slick-dots').wrap('<div class="slick-dots-wrap"></div>');
		$('.slick-dots button').on('click', function(){
			$('html, body').stop().animate({scrollTop: 0}, 200, function() {});
		});
	}
	

	
	$('.section-visual .btn-play').on('click', function(){
		$('.section-visual').addClass('video-play')
	})
	$('.section-visual .btn-stop').on('click', function(){
		$('.section-visual').removeClass('video-play')
	})
});