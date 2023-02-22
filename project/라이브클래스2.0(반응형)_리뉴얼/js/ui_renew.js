$(function(){

	"use strict";

	var $window = $(window),
		$html = $('html'),
		$body = $('body'),
		$document = $(document);

	// select option ellipsis
	var _maxLength = 24;
	$('.select option').each(function(){
		if($(this).text().length >= _maxLength){
			$(this).text($(this).text().substr(0,_maxLength)+'...');
		}
	});

	// modal
	$document.on('click', '[data-modal]', function(e){
		var _el = $(this).attr('href'),
			$target = $(_el);

		e.preventDefault();

		if ( !$target.hasClass('in')){
			//$('#wrap').append('<div class="white-dim"></div>');
			$body.addClass('fix');
			$target.addClass('in');
		} else {
			$('.white-dim').detach();
			$body.removeClass('fix');
			$target.removeClass('in');
		}
	});

	// mymenu active
	$('[data-toggle-menu]').on('click', function(e){
		e.preventDefault();

		var $myMenu = $('#myMenu');
		var _core = function() {
			$html.toggleClass('is-mymenu');
		};
		_core();
	});

	$('.gate-visual').slick({
		dots: true,
		infinite: true,
		speed: 2000,
		autoplay: true,
		autoplaySpeed: 3500,
		slidesToShow: 1,
		customPaging: function(slider, i) { 
			return '<button class="tab">' + $(slider.$slides[i]).attr('title') + '</button>';
		},
		arrows: false,
	});
 
	$('.variable-width').slick({
		dots: false,
		infinite: false,
		speed: 300,
		slidesToShow: 5,
		centerMode: false,
		variableWidth: true,
		responsive: [
			{
				breakpoint: 1280,
				settings: {
				arrows: true,
				slidesToShow: 5,
				slidesToScroll: 1
				}
			},
			{
				breakpoint: 1279,
				settings: "unslick"
			}
		]
	});

	if ( $('.slick-slide').length > 6 )	{
		$('.slick-arrow').show();
	} else {
		$('.slick-arrow').hide();
	}

	$document.on('click', '.question-section .list .subject a', function(i){
		var $base = $('html, body'),
			  $target = $(this).parents('.item');

		i.preventDefault();
		$target.toggleClass('in').siblings().removeClass('in');

		$base.animate({
			scrollTop: $target.offset().top
		}, 500);
	});

	speaker();
	tabControl(".gate-method");

	function speaker(){
		if ( $('.speaker > p').width() > $('.speaker').width() ){
			$('.speaker').children('p').addClass('marquee')
		} else 
			$('.speaker').children('p').removeClass('marquee');{;
		}
	}

	function tabControl($seletor){
		$($seletor).find(".tab-list").children("li").on("click", function(){
			var idx = $(this).index();
			var tabList = $($seletor).find(".tab-list").children("li");

			tabList.removeClass("on");
			tabList.eq(idx).addClass("on");
			
			$($seletor).find(".tab-view").hide();
			$($seletor).find(".tab-view").eq(idx).show();
		});
	}

	$window.on('resize', function(){
		speaker();
	});

});