$(function() {

	var $document = $(document),
		 $window = $(window),
		 $html = $('html');

	// bxSlider : visual
	$('#visualSlider').bxSlider({
		mode: 'fade',
		speed: 3000,
		//pager: ($('#visualSlider li').length < 2) ? false : true,
		//controls: ($('#visualSlider li').length < 2) ? false : true,
		pager: false,
		controls: false,
		auto: true
	});

	// Get the current slide
	var _latest = $('#shareSlider').index(this) - 1;
	$('#shareSlider').slick({
		centerMode: true,
		centerPadding: '0',
		slidesToShow: 3,
		initialSlide: _latest,
		variableWidth: true,
		prevArrow: '.slider-controler .slider-prev',
		nextArrow: '.slider-controler .slider-next',
		responsive: [
		{
			breakpoint: 2000,
			settings: {
				arrows: false,
				centerMode: true,
				centerPadding: '0',
				slidesToShow: 7
			}
		},
		{
			breakpoint: 768,
			settings: {
				arrows: false,
				centerMode: true,
				centerPadding: '0',
				slidesToShow: 5
			}
		},
		]
	});

	$('.item-2020').addClass('active');
	$('#shareSlider').on('afterChange', function(event, slick, currentSlide, nextSlide){
		$('.slick-slide').removeClass('active');
		$('.slick-current').addClass('active');
	});


	// count 
	$('.count').countTo({
		from: 0,
		speed: 2000,
		formatter: function (value, options) {
			return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
		}
	});

	// 보도자료
	$document.on('click', '.bbs_collapse .item a.subject', function(e){
		var $this = $(this),
			 $parent = $this.parents('.item');

		e.preventDefault();
		$parent.addClass('in').siblings().removeClass('in');
	});

	// 보도자료 다중 말줄임
	$('.ellipsis').ellipsis({
		lines: 3,            // force ellipsis after a certain number of lines. Default is 'auto'
		ellipClass: 'ellip',  // class used for ellipsis wrapper and to namespace ellip line
		responsive: true  // set to true if you want ellipsis to update on window resize. Default is false
	});

});