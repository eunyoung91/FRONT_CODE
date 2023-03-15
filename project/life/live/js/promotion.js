var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;

$(window).on('load', function(){
	checkResolution('.promotion');
});

$(function(){
	init();
	$(window).on('resize', function(){
		checkResolution('.promotion');
	});
});

function init(){
	onComplete();
	checkResolution('.promotion');
}

function checkResolution(e){
	if( isMobile || $(window).innerWidth() < 1280 ){
		replaceImagePaths(e, 'pc', 'mobile');
		replaceImagePaths2(e, 'pc', 'mobile');
		//console.log('mobile');
	} else {
		replaceImagePaths(e, 'mobile', 'pc');
		replaceImagePaths2(e, 'mobile', 'pc');
		//console.log('pc');
	}
}


function replaceImagePaths2(target, basic, change) { // new
	$(target + ' img').each(function(){
		var pcSrc = $(this).data('pcSrc');
		var mobileSrc = $(this).data('mobileSrc');
		$(this).attr('src', change == 'pc' ? pcSrc : mobileSrc);
	});
}

function replaceImagePaths(target, basic, change) { // old
	$(target + ' img').each(function(){
		$(this).attr('src', $(this).attr('src').replace(basic, change));
	});
}

function onComplete(){
	var $title = $('.promotion-title');

	TweenMax.fromTo( $title.find('.motion-1'), .5, { opacity: 0, y: 50 }, { opacity: 1, y: 0, delay: .3, ease: Back.easeInOut });
	TweenMax.fromTo( $title.find('.motion-2'), .5, { opacity: 0, y: 50 }, { opacity: 1, y: 0, delay: .4, ease: Back.easeInOut });
	TweenMax.fromTo( $title.find('.motion-3'), .5, { opacity: 0, y: 50 }, { opacity: 1, y: 0, delay: .5, ease: Back.easeInOut });
	TweenMax.fromTo( $title.find('.motion-4'), .5, { opacity: 0, y: 50 }, { opacity: 1, y: 0, delay: .6, ease: Power3.easeInOut });
	TweenMax.fromTo( $title.find('.motion-5'), .5, { opacity: 0, rotation: -30 }, { opacity: 1, rotation: 0, delay: 1.2, transformOrigin: 'center center', ease: Back.easeOut });
	TweenMax.fromTo( $title.find('.motion-6'), .5, { opacity: 0, rotation: 30 }, { opacity: 1, rotation: 0, delay: 1.2, transformOrigin: 'center center', ease: Back.easeOut });
	TweenMax.fromTo( $title.find('.motion-7'), .5, { opacity: 0, scale: .8 }, { opacity: 1, scale: 1, delay: .9, ease: Back.easeInOut});
	TweenMax.fromTo( $title.find('.period'), .5, { opacity: 0, scale: 1.1 }, { opacity: 1, scale: 1, delay: 1.0, ease: Power3.easeInOut });
	if( $('.motion-season').length > 0 ){
		TweenMax.fromTo( $title.find('.motion-season'), .5, { opacity: 0, scaleY: 0}, { opacity: 1, scaleY: 1, delay: 1.2, ease: Back.easeInOut });
	}
}
