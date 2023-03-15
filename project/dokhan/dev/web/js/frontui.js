$(function(){
	// GNB
	$('#gnb').on('mouseenter focusin', function(){
		$('#header').addClass('on');
	});
	$('#gnb').on('mouseleave focusout', function(){
		$('#header').removeClass('on');
	});

	$('.fb img').on('mouseenter focusin', function(){
		$(this).attr("src", $(this).attr("src").replace("off","on"));
	});
	$('.fb img').on('mouseleave focusout', function(){
		$(this).attr("src", $(this).attr("src").replace("on","off"));
	});

	// mouseover img
	var $trigger = $('');

	$trigger.each(function(i){
		$(this).mouseover(function(){
			$(this).find("img").attr({
				"src" : $(this).find("img").attr("src").replace("_off","_on")
			});
		});

		$(this).mouseleave(function(){
			$(this).find("img").attr({
				"src" : $(this).find("img").attr("src").replace("_on","_off")
			});
		});
	});

	// �����̵�
	slider = $('#slider').bxSlider({
		auto:true,
		mode:'fade',
		pause:5000,
		speed:500,
		pager:false,
		controls:false,
		autoStart:true,
		autoControls:false,
		onSliderLoad: function() {
			$('.bar').css({"width":"0px"});
			$('.bar').stop().animate({"width":"100%"},5000);
		},
		onSlideBefore: function ($slideElement, oldIndex, newIndex) {
			$('.bar').css({"width":"0px"});
			if(oldIndex==0){
				$('.bar').stop().animate({"width":"100%"},5000);
			}else{
				$('.bar').css({"width":"0px"});
			}
			if(oldIndex==1){
				$('.bar').stop().animate({"width":"100%"},5000);
			}else{
				$('.bar').css({"width":"0px"});
			}
			if(oldIndex==2){
				$('.bar').stop().animate({"width":"100%"},5000);
			}else{
				$('.bar').css({"width":"0px"});
			}
			if(oldIndex==3){
				$('.bar').stop().animate({"width":"100%"},5000);
			}else{
				$('.bar').css({"width":"0px"});
			}
			if(oldIndex==4){
				$('.bar').stop().animate({"width":"100%"},5000);
			}else{
				$('.bar').css({"width":"0px"});
			}
			slider.startAuto();
		}
	});

	$('.btn_apply').each(function(i){
		$(this).mouseenter(function(){
			$(this).find('.square').animate({
				width: '100%'
			}, 400);
			$(this).find('span').animate({
				'border-color' : '#bf040d'
			}, 400);
		});

		$(this).mouseleave(function(){
			$(this).find('.square').animate({
				width: '0'
			}, 400);
			$(this).find('span').animate({
				'border-color' : '#fff'
			}, 400);
		});
	});

	$('#slider2').bxSlider({mode: 'horizontal',auto: true,pause: 5000,pagerCustom:'#pager'});
	$('#slider3').bxSlider({mode: 'horizontal',auto: true,pause: 5000,pagerCustom:'#pager2'});
	$('#slider4').bxSlider({mode: 'horizontal',auto: true,pause: 5000,pagerCustom:'#pager3'});

	if($('.dday ul li').length > 1){
		$('.dday ul').bxSlider({
			 mode: 'horizontal'
			,auto: true
			,pause: 5000
			,pager:false
			,controls:false
		});
	}

	// tab
	$('.tab_a li a').each(function(i){
		$(this).click(function(){
			$('.tab_a li').removeClass('current');
			$(this).parent().addClass('current');
			$('.tab_cont').hide();
			$('.tab_cont').eq(i).show();
			return false;
		});
	});

	$('.pshTab li a').each(function(idx){
		$(this).click(function(){
			var activeTab = $(this).attr('href');
			$('.psh_img').hide();
			$(activeTab).show();
			$('.pshTab li').removeClass('on');
			$(this).parent().addClass('on');
			return false;
		});
	});

	// titlebar
	var titleWidth = $('.title_group h2').width();
	$('.title_group h2 div.bu_bar_a:before').css('width',titleWidth+'px');

	// ranking slide
	var bx_num = $("#upSlide li").length;
	if ( bx_num > 5 ) {
		$('#upSlide').bxSlider({
			minSlides: 5,
			maxSlides:5,
			mode:'vertical',
			auto:true,
			pause:3000,
			pager:false,
			speed:1500
		});
	}

	$('#gradeRank').bxSlider({
		mode:'horizontal',
		pager: false,
		pause:5000,
		auto:true
	});

	$('#historyCal').datepicker({
		dateFormat: "yy-mm"
	});

	$('.applybtn>a').each(function(){
		$(this).mouseenter(function(){
			$(this).find('.square').animate({
				width: '100%'
			}, 400);
			$(this).find('span').animate({
				'border-color' : '#bf040d'
			}, 400);
		});

		$(this).mouseleave(function(){
			$(this).find('.square').animate({
				width: '0'
			}, 400);
			$(this).find('span').animate({
				'border-color' : '#fff'
			}, 400);
		});
	});


	$('.btn_mode01').click(function(){
		$('.sugang_slide').animate({
			left : -1100 + 'px'
		}, 1000);

		$('.sugang_gift').animate({
				left: '0'
		}, 1000);
		return false;
	});

	$('.btn_mode02').click(function(){
		$('.sugang_slide').animate({
			left : '0'
		}, 1000);

		$('.sugang_gift').animate({
				left : 1100 + 'px'
		}, 1000);
		return false;
	});

	if ( $('.intro01').length > 0 )
	{
		$(".fixQuick").css({
			'display' : 'block',
			//'top' : '50%',
			//'margin-top' : '-150px'
		});
		/*
		$(window).scroll(function(){
			if($(window).scrollTop() >= ($(".intro01").offset().top)) {
				$(".fixQuick").fadeIn();
			}else{
				$(".fixQuick").fadeOut();
			}
		});
		*/
	}
	
	if ( $('.faq_section').length > 0 )
	{
		$('.collapse_open').click(function(){
			$(this).hide();
			$('.faq_list').slideDown(500);
			return false;
		});
		$('.collapse_close').click(function(){
			$('.faq_list').slideUp(500);
			$('.collapse_open').show();
			$('html, body').animate({scrollTop : $('.faq_section').offset().top}, 500);
			return false;
		});

		// faq Tab
		$('.faq_tab li a').click(function(){
			var activetab = $(this).attr('href');
			$('.faq_con').hide();
			$(activetab).show();
			$('.faq_tab li').removeClass('on');
			$(this).parent().addClass('on');
			return false;
		});
	}

	// layer- close
	$('.plan_select_layer .close_layer').click(function(){
		$('.plan_select_layer, .dimm2').hide();
		return false;
	});
});
