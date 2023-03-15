var $ = jQuery.noConflict();

$(function(){

	$('#photoslider').bxSlider({
		  mode:'horizontal', //default : 'horizontal', options: 'horizontal', 'vertical', 'fade'
		  pager: true,
		  auto: true,
		  pause: 5000,
		  touchEnabled: true,
		  pagerCustom: '#photoslider-pager',
		  onSliderLoad: function() {
		    $('#photoslider').css(
			  "-webkit-transform",
			  "translate3d(-" + $('#photoslider li:eq(0)').width() + "px, 0, 0)"
		    );
		  }
	});

	$('.statewrap .tb_style td:first-child').addClass('sun')
	$('.statewrap .tb_style td:last-child').addClass('sat')


	$('.statewrap .tb_style td').mouseenter(function(){

		if($(this).find('.tip').length > 0) {
			$('.statewrap .tb_style td').removeClass('active')
			$('.statewrap .tb_style .tip').hide();
			$(this).addClass('active').find('.tip').show();
		} else {
			return false;
		}

	})

	$('.statewrap .resview .btn').click(function(){
		$(this).next('.tip').show();
	})

	$('.tip .close').click(function(){
		$(this).parent().hide();
		$('.statewrap .tb_style td').removeClass('active')
	})

	$('.closeWrite').click(function(){
		$(this).parents('.formWrite').hide();
	})

	$('.section_main .item01 .area').mouseenter(function(){
		$(this).addClass('active').find('.over').slideDown(100)
	}).mouseleave(function(){
		$(this).removeClass('active').find('.over').slideUp(100)
	})


	$('.section_main .item02 .area').height($('.section_main .item02 .area02 img').height());
	$(window).resize(function(){
		$('.section_main .item02 .area').height($('.section_main .item02 .area02 img').height());
	})

	$('#familysite .openbtn').click(function(){
		$(this).next('.fs_layer').show(); return false;
	})

	$('#familysite .closebtn a').click(function(){
		$(this).parents('.fs_layer').hide(); return false;
	})

	$('#header .info dl dt').click(function(){
		$(this).next('dd').toggleClass('on').parent('dl').siblings('dl').find('dd').removeClass('on');
	})

	$('#header #gnb .btn').click(function(){
		$(this).toggleClass('on');
	})

});




