$(function(){
	brandTopBannerList();
	brandUnbreakableList();
	brandSlideList();

	brandScrollJobListener( null );
	$(window).on( "scroll", brandScrollJobListener );
});

function brandSlideList(){
	var swiper = new Swiper(".swiper-progress", {
		slidesPerView: "auto",
        spaceBetween: 20,
        pagination: {
          el: ".progress-pagination",
          type: "progressbar",
        }
      });

}

function brandUnbreakableList(){
	$('.unbreakable-list').slick({
		vertical: true,
		autoplay: true,
		autoplaySpeed: 0,
		speed: 1500,
		cssEase: 'linear',
		arrows: false,
		slidesToShow: 2,
		pauseOnHover: false,
		pauseOnFocus: false,
		verticalSwiping : true
	});
}

function brandTopBannerList(){
	if($('.sector-main-top .swiper-slide').length == 1) {
		$('.sector-main-top .swiper-wrapper').addClass('disabled');
	}
	// promotion banner
	var swiperPromotion = new Swiper('.sector-main-top', {
		slidesPerView: 1,
		speed: 500,
		autoplay: { 
			delay: 1000,
			disableOnInteraction: false
		},
		pagination: {
			el: $('.topbanner-pagination'),
			draggable: true,
		},
		loop: true
	});
}

function brandLayerOpen($selector){
	$($selector).show();
	console.log($(window).height(), $($selector).find(".brand-layer-wrap").outerHeight());
	if($(window).height() <= $($selector).find(".brand-layer-wrap").outerHeight()){
		// 팝업이클때는 
		var st = $(window).scrollTop();
		$($selector).addClass("wide").css({top:st});
		$("body").append('<div class="brand-layer-dim"></div>');
	}else{
		// 팝업이 작을때는  ok
		$($selector).removeClass("wide");
		$($selector).css({display:"flex"});
	}
}

function brandLayerClose($selector){
	$($selector).hide();

	if($(".brand-layer-dim").is(':visible')){
		$(".brand-layer-dim").remove();
	}
}

var _isJobScroll = false;
function brandScrollJobListener(){
	var scrollTop = $(window).scrollTop();
	var offsetTop = $(".sector-main-job").offset().top;

	if(scrollTop > offsetTop-600){
		if(_isJobScroll == true) return;
		
		TweenMax.fromTo( $('.count-box1 .count-bar .bar'), 0.35, { opacity: 0, width:0 }, { opacity: 1, width:"100%", ease:  Power1.easeInOut, onComplete: function(){
			TweenMax.fromTo($('.count-box1 .count-bar .text'), .35, { opacity:0 }, {opacity:1, ease: Power3.easeInOut });
			TweenMax.fromTo( $('.count-box2 .count-bar .bar'), 0.35, { opacity: 0, width:0 }, { opacity: 1, width:"100%", ease:  Power1.easeInOut, onComplete: function(){
				TweenMax.fromTo($('.count-box2 .count-bar .text'), .35, { opacity:0 }, {opacity:1, ease: Power3.easeInOut });
			}});
		}});

	

		_isJobScroll = true;
	}else{
		if(_isJobScroll == false) return;
					
		TweenMax.set( $('.count-bar  .bar'), { opacity: 0, width:0 });
		TweenMax.set( $(".count-bar .text"),{opacity:0});
	
		_isJobScroll = false;
	}
}