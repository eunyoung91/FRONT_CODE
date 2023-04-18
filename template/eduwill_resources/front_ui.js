jQuery(function($){

	"use strict";

	var $html = $('html'),
		 $window = $(window),
		 $document = $(document);
	
	
	if($('.gnb').length > 0) {
		$('.gnb li').each( function(i) {
			i = i + 4;
			if($('.gnb li:eq('+ i +')').find('a').hasClass('active')) {
				$('.gnb ul').scrollLeft($('.gnb .active').offset().left);	
			}
		});
	}
	


	// header menu scrollFix
	$('[data-scrollfix="top"]').scrollFix({
		side: 'top'
	});

	// contents scroll menu scrollFix
	$('[data-scrollfix="middle"]').scrollFix({
		side: 'top',
		topPosition: 48 // after the top bar
	});

	// mypage menu open event
	$('.btn_mypage').on('click', function(){
		$('#mypage').show();
		$('#mypage .dim').show();
		$('#wrap').addClass('fixed');
		$('#mypage .wrap').animate({
			right: 0
		}, 500);
		return false;
	});

	// mypage menu close event
	$('.close_mypage, .dim').on('click', function(){
		$('#wrap').removeClass('fixed');
		$('#mypage .wrap').animate({
			right: '-100%'
		}, 300, function(){
			$('#mypage').hide();
		});
		return false;
	});

	// family site // 2017-08-21 footer_v3.js 페이지 내 스크립트 삽입

	// layer
	$document.on('click', '[data-layer]', function(e){
		var _el = $(this).attr('href'),
			 $target = $(_el);

		e.preventDefault();

		$target.toggleClass('in');
		$html.removeClass('unfold_option');
		if ( $(this) == false ){
			$target.removeClass('in');
		}
	});

	// login keypad view
	$('.key_btn').each(function(i){
		$(this).on("click", function(){
			$('.key_pic div').hide();
			$('.key_pic div').eq(i).show();
		});
	});

	// tabmenu control
	$('.g_tab_a li a, .g_tab_b li a, .g_tab_c li a').each(function(i){
		$(this).on('click', function(){
			$('.tab_cont').hide();
			$('.tab_cont').eq(i).show();
			$('.g_tab_a li, .g_tab_b li, .g_tab_c li').removeClass('on');
			$(this).parent().addClass('on');
			return false;
		});
	});

	// change contents when selecting payment
	$('.radio_list li input').each(function(i){
		$(this).on('click', function(){
			if($(this).attr('checked') == 'checked'){
				$('.pay .g_list_d').hide();
				$('.pay .g_list_d').eq(i).show();
				$('.radio_list li div').removeClass('on');
				$(this).next().next().children('div').addClass('on');
			}
		});
	});

	// discount benefit tabs
	$('.coupon_tab li a').each(function(idx){
		$(this).on("click", function(){
			$('.coupon_tab li').removeClass('current');
			$(this).parent().addClass('current');
			$('.coupon_con').hide();
			$('.coupon_con').eq(idx).show();
			return false;
		});
	});

	// apply checking
	$('.toggle_title a').click(function(){
		$(this).toggleClass('open');
		$('.toggle_con').toggle();
		return false;
	});

	// visual banner list
	$document.on('click', '[data-banner]', function(e){
		var _el = $(this).data('banner'),
			$target = $('.visual_banner_list');

		e.preventDefault();
		if ( _el == true ){
			$('#wrap').addClass('fixed');
			$target.fadeIn(500);
		} else {
			$('#wrap').removeClass('fixed');
			$('.visual_banner_list ul').scrollTop(0);
			$target.fadeOut(500);
		}
	});

	// toggle event
	$document.on('click touch', '.toggler', function(e){
		e.preventDefault();

		var $parent = $(this).parent();
	
		$parent.toggleClass('in open').siblings().removeClass('in open');

		// category for academy
		if( $('html').hasClass('touchScrollMenu-open') || $('#menuAll').hasClass('active') || $('#menu4').hasClass('active') ){
			$('.iScrollVerticalScrollbar').resize(); // scrollbar resizing
		}
	});

	// Top button scroll event
	$('.bottom_fix_btn .top').hide();
	$window.scroll( function(){
		var $target = $('.bottom_fix_btn .top');

		$target.fadeOut();

		clearTimeout($.data(this, 'scrollTimer'));
		$.data(this, 'scrollTimer', setTimeout(function() {
			if( $(window).scrollTop() == 0 ){
				$target.fadeOut();
			} else {
				$target.fadeIn();
			}
		}, 100));
	});

	// Top button event for webview
	var _webviewTop = function(){
		var $target = $('.ddakpul_top');

		$window.scroll( function(){
			$target.fadeIn();

			if( $(window).scrollTop() == 0 ) $target.fadeOut();
		});

		$document.on('click touch', '.ddakpul_top #goTop', function(e){
			e.preventDefault();

			$('html,body').animate({
				scrollTop: 0
			}, 500);
		});
	}();

	// virtual keyboard issue for android
	$('input[type="text"], input[type="password"], input[type="number"], input[type="tel"], textarea').focus(function(){
		$('#footer .bottom_fix_btn, #footer .bottom_fix_btn .top').css('position', 'absolute');
		//console.log('focus in');
	}).focusout(function(){
		$('#footer .bottom_fix_btn, #footer .bottom_fix_btn .top').css('position', 'fixed');
		//console.log('focus out');
	});

	// category menu open
	$document.on('click touch', '.btn_category', function(e){
		e.preventDefault();
		$('#category').touchScrollMenu();
	});

	// category menu event
	$document.on('click touch', '#category .menu_list a', function(e){
		var _el = $(this).attr('href'),
			 $target = $(_el),
			 $parent = $(this).parents('li');

		e.preventDefault();
		$('#menuAll').removeClass('active');
		$parent.addClass('active').siblings().removeClass('active'); // menu active
		$target.addClass('active').siblings().removeClass('active'); // contents active
		$('.iScrollVerticalScrollbar').resize(); // scrollbar resizing
		$('.category .toggler').next().slideUp().parent().removeClass('in'); // folding academy list

		// for all menu
		if( $parent.hasClass('nth_child_all') ){
			$('#menuAll').addClass('active').children().removeClass('active');
		}

	});

	// category event
	var TouchScrollMenu = function(element, _options){
		this.options  = _options;
		this.$element = $(element);
		this.$layout;
		this.$backdrop;

		this.create();
	}

	TouchScrollMenu.DEFAULTS = {}

	TouchScrollMenu.prototype.create = function(){
		this.$backdrop = $('<div class="touchScrollMenu-backdrop"/>').appendTo('body');
		if( !this.$element.parent().hasClass('touchScrollMenu-layout') ) this.$layout = this.$element.wrap('<div class="touchScrollMenu-layout"/>').parent();

		// iscroll
		this.iscroll = new IScroll('#category .category_body .menu_wrap', {
			click: true,
			mouseWheel: true,
			scrollbars: true,
			fadeScrollbars: true
		});

		this.iscroll2 = new IScroll('#category .category_body .item_wrap', {
			click: true,
			mouseWheel: true,
			scrollbars: true,
			fadeScrollbars: true
		});

		this.iscroll2.indicators.defaultScrollbars = true;

		// window - resize
		$(window).on('resize.TouchScrollMenu', $.proxy(function(e){
			this.$element.height( this.$element.closest('.touchScrollMenu-layout').height() );
			this.iscroll.refresh();
			this.iscroll2.refresh();
			//this.iscroll2.scrollTo(0, 0);
		}, this));

		// scrollTo event for category menu, not toggler
		$(window).on('click touch', $.proxy(function(e){
			if( !$(e.target).hasClass('toggler') ){
				this.iscroll2.scrollTo(0, 0);
			}
			//console.log( $(e.target) );
		}, this));

		window.onorientationchange = function() {
			$(window).trigger('resize');
		}

		// layout
		this.layoutTouch();

		// active image
		var $img = $('#closeCategory').on('click', $.proxy(this.hide, this));

		this.$element.append($img);

		$(window).trigger('resize.TouchScrollMenu');
	}

	TouchScrollMenu.prototype.show = function(){
		$('html, body').addClass('touchScrollMenu-open');

		this.$backdrop.fadeIn();
		this.$layout.show();
		var th = this;
		setTimeout(function(){
			th.$element.show().stop(true).animate({marginLeft : 0}, 400, function(){
				$(window).trigger('resize.TouchScrollMenu');
			});
			$('#wrap').stop(true).animate({left : th.$element.width()}, 400, function(){ /* ... */ });
		},100);
	}

	TouchScrollMenu.prototype.hide = function(){
		// 2018-04-04 category not working
		// mainClickEvent('전체메뉴','닫기');

		$('html, body').removeClass('touchScrollMenu-open');

		this.$element.stop(true).animate({marginLeft :  this.$element.width()*-1}, 400, $.proxy(function(){
			$(this).hide();
			this.$backdrop.fadeOut();
			this.$layout.hide();

			// refresh
			$('#menuWrap .nth_child_all').addClass('active').siblings().removeClass('active');
			$('#menuAll').addClass('active').children().removeClass('active');
			$('.category .toggler').next().slideUp().parent().removeClass('in');
					
		}, this));

		$('#wrap').stop(true).animate({left : 0}, 400, function(){ /* ... */ });
	}

	TouchScrollMenu.prototype.layoutTouch = function(){
		var that = this,
			 flickingStart,
			 isScroll;

		this.$layout.on('touchstart', function(e){
			var touch = e.originalEvent.touches[0] || e.originalEvent.changedTouches[0];

			$(document).off('touchmove', onMove)
						   .off('touchend', onEnd);

			flickingStart = { pageX : touch.pageX, pageY : touch.pageY };
			isScroll      = false;

			$(document).on('touchmove', onMove)
						   .on('touchend', onEnd);

			e.target === that.$layout[0] && e.preventDefault();
		});

		function onMove(e){
			var touch = e.originalEvent.touches[0] || e.originalEvent.changedTouches[0];

			if(!isScroll && Math.abs(touch.pageY - flickingStart.pageY) >= 20){
				// console.log( "isScroll ~~");
				isScroll = true;
			}
			if(isScroll) e.preventDefault();
		}

		function onEnd(e){
			var touch = e.originalEvent.touches[0] || e.originalEvent.changedTouches[0],
				dx = touch.pageX-flickingStart.pageX,
				dy = touch.pageY-flickingStart.pageY,
				direction;

			if(isScroll){}

			if( Math.sqrt(dx*dx+dy*dy) < 10 ){ // click
				e.target === that.$layout[0] && that.hide();
			}

			$(document).off('touchmove').off('touchend');
		}
	}

	$.fn.touchScrollMenu = function(_options){
		return this.each(function(){
			var $this   = $(this),
				data    = $this.data('ui.touchScrollMenu'),
				options = $.extend({}, TouchScrollMenu.DEFAULTS, $this.data(), typeof _options == 'object' && _options);

			if(!data) $this.data('ui.touchScrollMenu', (data = new TouchScrollMenu(this, options)));
			if(typeof _options == 'string') data[_options]();
			else data.show();
		});
	};

	// product tabs
	$.fn.tabMenuFnc = function(link, target){
		var btn = $(link),
			 obj = $(target);

		btn.find('li').eq(0).addClass('active');
		obj.eq(0).show().siblings(target).hide();

		btn.find('li').click(function(){
			var idx = $(this).index();

			btn.find('li').eq(idx).addClass('active').siblings().removeClass('active');
			obj.eq(idx).show().siblings(target).hide();

			return false;
		});
	};

	

});