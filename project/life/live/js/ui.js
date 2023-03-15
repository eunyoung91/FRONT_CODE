var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;

var $window = $(window),
	$html = $('html'),
	$body = $('body'),
	$document = $(document);

$(function(){

	"use strict";

	// select option ellipsis
	var _maxLength = 18;
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

		$target.toggleClass('in');
//		$target.toggleClass('in').siblings().find('.modal').removeClass('in');
//		console.log('modal test');

		if ( $(this).attr('data-modal') == "allfalse" ){
			$('.modal-alert').removeClass('in');
		}

		if ( $(this) == false ){
			$target.removeClass('in');
		}

		if( $('.modal-tutorial').hasClass('in') ){
			$('.modal-tutorial').siblings().find('.modal-guide').removeClass('in');
			tutorialSlider.goToSlide(0);
		}
	});

	// modal-confirm scroll event
	if( $('#modalConfirm').length > 0 ){
		$window.scroll(function(){
			var $modal = $('#modalConfirm .modal-wrap'), 
				_parent = $('#modalConfirm').parent(),
				_top =_parent.offset().top,
				_bottom = _top + _parent.outerHeight() - $modal.outerHeight() - 100;

			if( $(this).scrollTop() >= _top && !($(this).scrollTop() >= _bottom) ){
				$modal.addClass('fixed');
				$modal.css('top', '');
			} else {
				$modal.removeClass('fixed');
				if( $(this).scrollTop() > _bottom ){
					$modal.css('top', _parent.outerHeight() - $modal.outerHeight() - 100 );
				}
			}
		});
	}

	// modal-plan scroll event
	$('#modalPlan input[type="text"]').on('focus click', function(){
		var _height = $('#modalPlan').prop('scrollHeight');
		$('#modalPlan').animate({
			scrollTop: _height
		}, 500);
	});

	// progress
	var _progressValue = $('#progressbar').data('value');
	$('#progressbar').progressbar({
		value: _progressValue
	});

	$('.progressbar').each(function(){
		$(this).progressbar({
			value: $(this).data('value')
		});
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

	// plan shortcut
	if( $('#planAction').length > 0 ){
		var _planTop = $('#planAction').offset().top;

		$('[data-shortcut]').on('click', function(e){
			e.preventDefault();
			$('html, body').animate({ scrollTop: _planTop }, 500);
		});

		$window.on({
			'resize' : function(){
				_planTop = $('#planAction').offset().top;
			},
			'scroll' : function(){
				var scrollHeight = $(document).height(),
					 windowHeight = $(window).height(),
					 scrollPosition = windowHeight + $(window).scrollTop();
				
				if( $(window).scrollTop() >= (_planTop-windowHeight) || (scrollHeight - scrollPosition) / scrollHeight === 0){
					$('[data-shortcut]').fadeOut();
				}else{
					$('[data-shortcut]').fadeIn();
				}
			}
		});
	}

	// tutorial slider
	if( $('#tutorialSlider').length > 0 ){
		var tutorialSlider = $('#tutorialSlider').bxSlider({
			mode: 'horizontal',
			infiniteLoop: false,
			auto: false,
			pause: 4000,
			controls: true,
			nextText: '다음으로',
			prevText: '이전으로',
			hideControlOnEnd: true,
			pagerCustom: $('#tutorialPager'),
		});
	}

	// lifeBannerSlider(common slider)
	_lifeBannerSliderInit();

	// edit action
	if( $('.edit-action').length > 0 ){
		$window.on('scroll', function(){
			var $action = $('.edit-action'),
				 windowHeight = $(window).height();

			var _top = $('.edit-action').offset().top;

			if( $(window).scrollTop() >= (_top-windowHeight) ){
				$action.removeClass('fixed');
			}else{
				$action.addClass('fixed');
			}
		});
	}

});

// lifeBannerSlider(common slider)
var _lifeBannerSliderInit = function(){
	var slider = '#lifeBannerSlider';
	if( $(slider).length > 0 ){
		checkResolution(slider);

		var _condition = ($(slider + ' li').length < 2) ? false : true // if only one slide
		$(slider).bxSlider({
			mode: 'horizontal',
			auto: _condition,
			pause: 4000,
			adaptiveHeight: true,
			controls: true,
			pager: _condition,
			touchEnabled: _condition,
			oneToOneTouch: _condition,
			onSliderResize: function(){
				checkResolution(slider);
			},
			onSliderLoad: function(){
				checkResolution(slider);
			}
		});
	}
}

// image change
function checkResolution(e){
	if( isMobile || $(window).innerWidth() < 1100 ){
		replaceImagePaths(e, 'pc', 'mobile');
		replaceImageLinks(e, 'pc', 'mobile');
		//console.log('mobile');
	} else {
		replaceImagePaths(e, 'mobile', 'pc');
		replaceImageLinks(e, 'mobile', 'pc');
		//console.log('pc');
	}
}

function replaceImagePaths(target, basic, change) {
	$(target + ' img').each(function(){
		var pcSrc = $(this).data("pcSrc");
		var mobileSrc = $(this).data("mobileSrc");
		$(this).attr("src", change == "pc" ? pcSrc : mobileSrc);
	});
}

function replaceImageLinks(target, basic, change) {
	$(target + ' img').each(function(){
		var pcLink = $(this).parent().data("pcLink");
		var mobileLink = $(this).parent().data("mobileLink");
		$(this).parent().attr("href", change == "pc" ? pcLink : mobileLink);
	});
}

/* bxSlider 콘텐츠 초기화 - ECO로부터 배너를 로드 후 초기화 할 수 있도록 함수로 변경.*/
var bxSliderInit = function(){
	var _condition = ($('[id=bannerSlider] li').length < 2) ? false : true // if only one slide
	$('[id=bannerSlider]').bxSlider({
		mode: 'horizontal',
		auto: _condition,
		pause: 4000,
		controls: true,
		pager: _condition,
		touchEnabled: _condition,
		oneToOneTouch: _condition
	});

}

/* 합격계획표 차트 초기화 - 각 요소값을 설정하여 차트를 그릴 수 있도록 변경. */
var planChartInit = function(names, values){
	var config = {
		type: 'doughnut',
		data: {
			datasets: [{
				data: values,
				backgroundColor: [
					'#fed637',
					'#fe8e2e',
					'#ed7066',
					'#a26fd8',
					'#5286e2',
					'#1abb77',
					'#42d9b4',
					'#fed637',
					'#fe8e2e',
					'#ed7066',
					'#a26fd8',
					'#5286e2',
					'#1abb77',
					'#42d9b4',
					'#fed637',
					'#fe8e2e',
					'#ed7066',
					'#a26fd8',
					'#5286e2',
					'#1abb77',
					'#42d9b4',
					'#fed637',
					'#fe8e2e',
					'#ed7066',
					'#a26fd8',
					'#5286e2',
					'#1abb77',
					'#42d9b4'
				],
				hoverBackgroundColor: [
					'#fed637',
					'#fe8e2e',
					'#ed7066',
					'#a26fd8',
					'#5286e2',
					'#1abb77',
					'#42d9b4',
					'#fed637',
					'#fe8e2e',
					'#ed7066',
					'#a26fd8',
					'#5286e2',
					'#1abb77',
					'#42d9b4',
					'#fed637',
					'#fe8e2e',
					'#ed7066',
					'#a26fd8',
					'#5286e2',
					'#1abb77',
					'#42d9b4',
					'#fed637',
					'#fe8e2e',
					'#ed7066',
					'#a26fd8',
					'#5286e2',
					'#1abb77',
					'#42d9b4'
				],
				hoverBorderColor: '#fff'
			}],
			labels: names,
		},
		options: {
			responsive: true,
			legendCallback: function(chart) {
				var text = [];
				//text.push('<ul class="' + chart.id + '-legend">');
				text.push('<ul class="legend">');

				var data = chart.data;
				var datasets = data.datasets;
				var labels = data.labels;

				if (datasets.length) {
					for (var i = 0; i < datasets[0].data.length; ++i) {
						text.push('<li><span style="background-color:' + datasets[0].backgroundColor[i] + '"></span>');
						if (labels[i]) {
							//text.push(labels[i] + ' ' +datasets[0].data[i] + '%');
							text.push(labels[i]);
						}
						text.push('</li>');
					}
				}
				text.push('</ul>');
				return text.join('');
			},
			legend: {
				// since you're providing your own legend
				display: false,
			},
			title: {
				display: false,
				//text: 'Chart.js Doughnut Chart'
			},
			tooltips: {
				bodyFontSize: 16
			},
			cutoutPercentage: 65, // chart width
			animation: {
				animateScale: true,
				animateRotate: true,
				onComplete: (function(){
					$('#grapthInfo').fadeIn(); // info show
				})
			}
		}
	};

	var $doughnutChart =  document.getElementById('doughnutChart');

	if (typeof($doughnutChart) != 'undefined' && $doughnutChart != null){
		var ctx = document.getElementById('doughnutChart').getContext('2d');
		window.myDoughnut = new Chart(ctx, config);
		var legend = myDoughnut.generateLegend();
		document.getElementById('doughnutChartLegend').innerHTML = legend;
	
	}else{
		//console.log("$doughnutChart is undefined or null!");
	}
}

$(window).load(function(){
	// 마이메뉴 > 고객센터 링크 텍스트 변경(의견남기기 -> 에듀윌에 바란다.) : 임시처리 - 2차 오픈시 제거예정.
	$("div[class=menu-footer] div[class~=comment] a span").text("에듀윌에 바란다");
});