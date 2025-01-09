"use strict";

const _isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;
const _agent = navigator.userAgent.toLowerCase();
const _trident = navigator.userAgent.match(/Trident\/(\d.\d)/i);

const _w = $(window);
const _winWidth = _w.width();
const _winHeight = _w.height();
const _winTop = _w.scrollTop();
const _breakpoint = 720;
const _breakpointDesktop = 1023;

$(function(){
	frontInit();
});

function frontInit(){
	introEvent();
	baseEvent();
}

function changeTimezone() {
	const todayCheck = new Date();

	var year = todayCheck.getFullYear();
	var month = ('0' + (todayCheck.getMonth() + 1)).slice(-2);
	var day = ('0' + todayCheck.getDate()).slice(-2);

	var todayFormat = year + '-' + month + '-' + day;
	var timeFormat = "23:59:59";
	return todayFormat + "T" + timeFormat;
}

function introEvent(){
	var $unit = $('#header, #gnb, .view_menu, .sector-indicator');
	// var _mainLast = $('.main-item-8').offset().top;

	let esglMainIntro = getEsgMainCookie('esglMainIntro');
	if (esglMainIntro == "Y") {
		$('.main-item-0').hide();
		$('.main-item-1').addClass('show');
		$unit.show();
		$unit.addClass('white');
	} else {
		setEsgMainCookie('esglMainIntro', 'Y');
		$('.main-item-0').show();
		$unit.hide();
	}

	_w.on('load', function(){
		$unit.addClass('white');
		$('html,body').animate({
			scrollTop: 0
		});

		if ( $('.main-item-0').hasClass('hide') ){
			$unit.show();
		} else {
			if ( $('.main-item-1').hasClass('show') ){
				$unit.show();
			} else {
				$unit.hide();
			}
		}

		$(this).on('scroll', function(){
			$('.main-item-0').addClass('hide');
			$unit.show();
		});
	});

	_w.on('scroll', function(){
		var _top = _w.scrollTop();
		var _main4 = $('.main-item-4').offset().top - 50;
		var _main6 = $('#moveSection3').offset().top - 10;

		// console.log(_top);
		// console.log(_main4);
		if( _top < _main6 ){ // _top >= _main4 && 
			$unit.addClass('white');
			// console.log('white2');
		} else {
			$unit.removeClass('white');
			// console.log('black2');
		}

		if( _top >= $('#moveSection3').offset().top ){
			$('#header').addClass('bg-header');
		} else {
			$('#header').removeClass('bg-header');
		}
	});
}

function baseEvent(){
	_w.on('resize', resizeEvent);
	resizeEvent();
}

function resizeEvent(){
	$('.resize').each(function() {
		var $src = $(this).attr('src');
		var val = (_winWidth > _breakpointDesktop) ? $src.replace('mobile', 'pc') : $src.replace('pc', 'mobile');

		$(this).attr('src', val);
	});
}

// ScrollMagic Setting
var controller = new ScrollMagic.Controller();
TweenLite.defaultEase = Linear.easeNone;

// moveSection0
if( _isMobile ){
	var main0 = $('.main-item-0');
	TweenMax.to( main0.find('.text-list-1'), 1.0, { opacity: 1, backgroundColor: '#ffbf00', delay: 0, ease: Power2.easeOut, onComplete: function(){
		TweenMax.fromTo( main0.find('.text-list-1 .text-first'), 1.0, { opacity: 0, }, { opacity: 1, delay: .2, ease: Back.easeOut, onComplete: function(){
			TweenMax.fromTo( main0.find('.text-list-1 .text-first'), 1.0, { opacity: 1, }, { opacity: 0, delay: .2, ease: Back.easeOut, onComplete: function(){
				TweenMax.fromTo( main0.find('.text-list-1'), .8, { opacity: 1, backgroundColor: '#ffbf00'}, { backgroundColor: '#ffffff', delay: .2, ease: Power2.easeOut, onComplete: function(){
					TweenMax.fromTo( main0.find('.text-list-1 .text-second'), 1.0, { opacity: 0 }, { opacity: 1, delay: .2, ease: Back.easeOut, onComplete: function(){
						TweenMax.fromTo( main0.find('.arrow'), 1.0, { opacity: 0, y: 10 }, { opacity: 1, y: 0, delay: .2, ease: Back.easeOut, onComplete: function(){
							TweenMax.fromTo( main0.find('.arrow'), 1.0, { y: 0 }, { y: 15, repeat: -1, yoyo: true, ease: Sine.easeOut });
						}});
					}});
				}});
				
			}});
		}});
	}});
}

// moveSection1
var _tween1Duration = ( _isMobile || _winWidth < _breakpoint ) ? 10 : .2; // timeline 지속시간
var _tween1Duration2 = ( _isMobile || _winWidth < _breakpoint ) ? 4 : .2; // text-1
var _tween1Duration3 = ( _isMobile || _winWidth < _breakpoint ) ? 1 : .2; // cover
var _tween1Duration4 = ( _isMobile || _winWidth < _breakpoint ) ? 3 : .2; // main-item-5
var _tween1Timeline = 7; // 실행되는 timeline 갯수
var moveSectionTween1 = new TimelineMax()
	// .fromTo('.main-item-1 .cover', .3, { opacity: .6, duration: _tween1Duration3 }, { opacity: .4, delay: 0 })
	.fromTo('.main-item-1 .text-1', _tween1Duration2, { opacity: 1, duration: 4 }, { opacity: 0, scale: 8, delay: .2 }, "-=.5")
	.fromTo('.main-item-2', _tween1Duration, { y: '100%', duration: .1 }, { y: '0%', delay: 2 }, "-=.5")
	.fromTo('.main-item-3', _tween1Duration, { y: '100%', duration: .1 }, { y: '0%', delay: 1.5 }, "-=.5")
	.fromTo('.main-item-4', _tween1Duration, { y: '100%', duration: .1 }, { y: '0%', delay: 1.5 }, "-=.5")
	.fromTo('.main-item-4 .cover', 1, { opacity: .6, duration: 2 }, { opacity: .4, delay: 1.5  }, "-=.5")
	.fromTo('.main-item-4 .text-list', 1, { opacity: 0, y: '10%', duration: 1 }, { y: '0%', opacity: 1, delay: 0 }, "-=1.0")
	.fromTo('.main-item-5', 1, { y: '100%', duration: 1 }, { y: '0%', delay: _tween1Duration4 }, "-=.5");

new ScrollMagic.Scene({
	triggerElement: '#moveSection1',
	triggerHook: 'onLeave',
	offset: '0',
	// duration: '1000%' // 값이 클 수록 천천히 덮어씀
	duration: $("#moveSection1").height() * _tween1Timeline
})
.setPin('#moveSection1')
.setTween(moveSectionTween1)
.setClassToggle('.indicator-1', 'active') // add class toggle
// .addIndicators({name: "moveSectionTween1"})
.addTo(controller);


// moveSection2
var _tween2Timeline = ( _isMobile || _winWidth < _breakpoint ) ? 7 : 4; // 실행되는 timeline
if( _isMobile || _winWidth < _breakpoint ){
	var moveSectionTween2 = new TimelineMax()
		.fromTo("#moveSection2 .cover", 2, { opacity: 1, duration: 2 }, { opacity: .6, delay: 2 })
		.to('#moveSection2 .text-1', 2, { x: '-100%', duration: 2, delay: 2 }, "-=1.0")
		.fromTo('#moveSection2 .text-2', 2, { opacity: 0, x: '100%' }, { opacity: 1, x: '0%', duration: 2 , delay: 1 }, "-=1.0")
		.to('#moveSection2 .text-2', 2, { x: '-100%', duration: 2, delay: 1 }, "-=1.0")
		.fromTo('#moveSection2 .text-list-2', 2, { x: '100%', duration: 2 }, { x: '0%', delay: 1 }, "-=1.0")
		.to('#moveSection2 .text-list-2', 2, { duration: 2, delay: 2,
			onComplete: playCount
		}, "-=.5")
		.fromTo('#moveSection2', 2, { opacity: 1, duration: 2 }, { opacity: 0, delay: 5, }, "-=.5")
} else {
	var moveSectionTween2 = new TimelineMax()
		.fromTo("#moveSection2 .cover", .1, { opacity: 1, duration: .1 }, { opacity: .6, delay: 0 }, "-=2.0")
		.to("#moveSection2 .text-1", .1, { opacity: 1 })
		.to('#moveSection2 .text-1', .8, { x: '0%', width: '50%', duration: .3, delay: .1 }, "-=2.0")
		.fromTo('#moveSection2 .text-2', .8, { opacity: 0, x: '150%', duration: .1 }, { opacity: 1, x: '100%', delay: 0 }, "-=2.0")
		.to('#moveSection2 .text-1', .8, { x: '-100%', duration: 1, delay: .3 }, "-=2.0")
		.to('#moveSection2 .text-2', .8, { x: '0%', duration: 1, delay: .1 }, "-=2.0")
		.fromTo('#moveSection2 .text-list-2', .4, { opacity: 0, x: '120%', duration: 1 }, { opacity: 1, x: '0%', delay: .1 }, "-=1.5")
		.to('#moveSection2 .text-2', .8, { x: '-100%', duration: 1, delay: .3 }, "-=2.0")
		.to('#moveSection2 .text-list-2', .1, { duration: 1, delay: .1,
			onComplete: playCount
		}, "-=1.5")
		.fromTo('#moveSection2', .1, { opacity: 1, duration: .5 }, { opacity: 0, delay: .9, }, "-=0.9")
}

// console.log(_tween2Timeline);
new ScrollMagic.Scene({
	triggerElement: '#moveSection2',
	triggerHook: 0,
	// duration: '600%'
	duration: $("#moveSection2").height() * _tween2Timeline
})
.setPin('#moveSection2')
.setTween(moveSectionTween2)
.setClassToggle('#moveSection2, .indicator-2', 'active') // add class toggle
// .addIndicators({name: 'moveSectionTween2'})
.addTo(controller);

// count
function playCount(){
	$('#moveSection2 .text-list-2 .counter').each(function(i) {
		let _max = $(this).data('count'); // 카운트 될 값
		var _score = this;
		var count = { score: 0 };

		var tweenCounter = TweenMax.to( count, 1, { score: _max, roundProps: 'score', onUpdate: function(){
				_score.innerHTML = addComa(Math.ceil(count.score));
			}, ease: Linear.easeNone
		});

		new ScrollMagic.Scene({
			triggerElement: $('#moveSection2 .text-list-2')
		}).setTween(tweenCounter).addTo(controller);
	});
}

// comma
function addComa(number) {
	return number.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
}


// moveSection3
var _tween3Timeline = 13; // 실행되는 timeline
var moveSectionTween3 = new TimelineMax()
	.to("#moveSection3 .text-1", .1, { opacity: 1, y: '100%', duration: .1, delay: 0 })
	.fromTo("#moveSection3 .grow-list .grow-1", .2, { y: '100%', duration: .1 }, { y: '10%', delay: 0 })
	.to("#moveSection3 .grow-list .grow-1", .2, { y: '-200%', delay: 1 })

	.fromTo("#moveSection3 .grow-list .grow-2", .2, { y: '100%', duration: .1 }, { y: '10%', delay: 0 })
	.to("#moveSection3 .grow-list .grow-2", .2, { y: '-200%', delay: 1 })
	.fromTo("#moveSection3 .grow-list .grow-3", .2, { y: '100%', duration: .1 }, { y: '10%', delay: 0 })
	.to("#moveSection3 .grow-list .grow-3", .2, { y: '-200%', delay: 1 })
	.fromTo("#moveSection3 .grow-list .grow-4", .2, { y: '100%', duration: .1 }, { y: '10%', delay: 0 })
	.to("#moveSection3 .grow-list .grow-4", .2, { y: '-200%', delay: 1 })
	.fromTo("#moveSection3 .grow-list .grow-5", .2, { y: '100%', duration: .1 }, { y: '10%', delay: 0 })
	.to("#moveSection3 .grow-list .grow-5", .2, { y: '-200%', delay: 1 })

	.to("#moveSection3 .text-1", 1, { y: '0%', delay: 1 })
	.fromTo("#moveSection3 .text-2", 3, { opacity: 0, duration: 10 }, { opacity: 1, delay: 2 });

new ScrollMagic.Scene({
	triggerElement: '#moveSection3',
	triggerHook: 0,
	// duration: '1500%'
	duration: $("#moveSection3").height() * _tween3Timeline
})
.setPin('#moveSection3')
.setTween(moveSectionTween3)
.setClassToggle('.indicator-3', 'active') // add class toggle
// .addIndicators({name: 'moveSectionTween3'})
.addTo(controller);

// moveSection4
// var _tween4Duration = ( _isMobile || _winWidth < _breakpoint ) ? 1.5 : .2;
var _tween4Timeline = 4; // 실행되는 timeline
var moveSectionTween4 = new TimelineMax()
	.to("#moveSection4 .sub-text-1", 1, { opacity: 0, x: '100%', delay: 2, ease: Linear.easeOut })
	.to("#moveSection4 .sub-text-2", 1, { opacity: 0, x: '100%', delay: 2, ease: Linear.easeOut })
	.to("#moveSection4 .sub-text-3", 1, { opacity: 0, x: '100%', delay: 2, ease: Linear.easeOut })
	.fromTo("#moveSection4 .text-2", 5, { opacity: 0, y: 50, duration: 2 }, { opacity: 1, y: 0, delay: 2, ease: Power4.easeOut });

new ScrollMagic.Scene({
	triggerElement: '#moveSection4',
	triggerHook: 0,
	// duration: '1000%'
	duration: $("#moveSection4").height() * _tween4Timeline
})
.setPin('#moveSection4')
.setTween(moveSectionTween4)
.setClassToggle('#moveSection4, .indicator-4', 'active') // add class toggle
// .addIndicators({name: 'moveSectionTween4'})
.addTo(controller);


// moveSection5
// var _tween5Duration = ( _isMobile || _winWidth < _breakpoint ) ? 1.5 : .2;
var _tween5Timeline = 2; // 실행되는 timeline
var moveSectionTween5 = new ScrollMagic.Scene({
	triggerElement: '#moveSection5',
	triggerHook: 1,
	duration: $("#moveSection5").height() * _tween3Timeline
})
	.setClassToggle('#moveSection5, .indicator-5', 'active') // add class toggle
// .addIndicators({name: 'moveSectionTween5'})
.addTo(controller);



// indicatorEvent
// assume the feature isn't supported
var supportsPassive = false;
// create options object with a getter to see if its passive property is accessed
var opts = Object.defineProperty && Object.defineProperty({}, 'passive', { get: function(){ supportsPassive = true }});
// create a throwaway element & event and (synchronously) test out our options
document.addEventListener('test', function() {}, opts);

// var allowScroll = true;

function preventDefault(e) {
	e = e || window.event;
	if (e.preventDefault) {
		e.preventDefault();
	}
	//	if (e.stopImmediatePropagation) {
	//		e.stopImmediatePropagation();
	//	}
	if (e.stopPropagation) {
		e.stopPropagation();
	}
	e.returnValue = false;
}
function getBodyScrollTop() {
	var el = document.scrollingElement || document.documentElement;
	return el.scrollTop;
	// return window.pageYOffset
}
function setBodyScrollTop(scrollTop) {
	var el = document.scrollingElement || document.documentElement;
	el.scrollTop = scrollTop;
	// window.pageYOffset = scrollTop;
}
function addMousewheelListener() {
	if (e.addEventListener)
	{
		// IE9, Chrome, Safari, Opera
		e.addEventListener("mousewheel", preventScroll, supportsPassive ? { passive: false } : false);
		// Firefox
		e.addEventListener("DOMMouseScroll", preventScroll, supportsPassive ? { passive: false } : false);
	}
	// IE 6/7/8
	else
	{
		e.attachEvent("onmousewheel", preventScroll);
	}
}
function removeMousewheelListener() {
	if (e.removeEventListener)
	{
		// IE9, Chrome, Safari, Opera
		e.removeEventListener("mousewheel", preventScroll, supportsPassive ? { passive: false } : false);
		// Firefox
		e.removeEventListener("DOMMouseScroll", preventScroll, supportsPassive ? { passive: false } : false);
	}
	// IE 6/7/8
	else
	{
		e.detachEvent("onmousewheel", preventScroll);
	}
}
function removeTouchListeners(e) {
	window.removeEventListener("scroll",     preventScroll);
	window.removeEventListener("touchmove",  preventScroll);
	window.removeEventListener("touchstart", removeTouchListeners);
	window.removeEventListener("touchend",   removeTouchListeners);
}
function preventScroll(e) {
	// if(TweenMax.isTweening(window) || !allowScroll) {
		// e.preventDefault();
		// e.stopImmediatePropagation();
		preventDefault(e)
	// }
}
function deactivateScroll() {
	// allowScroll = false;
	console.log('fired 1');
	// window.addEventListener("touchstart", preventScroll, { passive: false });
	window.addEventListener("touchmove", preventScroll, { passive: false });
	window.addEventListener("scroll", preventScroll, { passive: false });
	addMousewheelListener();
}
function activateScroll() {
	// allowScroll = true;
	removeMousewheelListener();
	// var scrollTop = y;
	// var scrollTop = getBodyScrollTop;
	// setBodyScrollTop(scrollTop);
	window.addEventListener("touchstart", removeTouchListeners, { passive: false });
	window.addEventListener("touchend", removeTouchListeners, { passive: false });
	// var event1 = new Event('touchstart');
	// var event2 = new Event('touchmove'); 
	// var event3 = new Event('touchend'); 
	// window.dispatchEvent(event1); 
	// window.dispatchEvent(event2); 
	// window.dispatchEvent(event3);
}

if(_isMobile){
	// change behaviour of controller to animate scroll instead of jump
	controller.scrollTo(function (newpos) {
		TweenMax.to(window, 0.5, {
			scrollTo: {
				y: newpos,
				autoKill: false
			},
		});
		// scrollTo: {
		// 	y: "#content",
		// 	autoKill: false
		//   },
		//   onStart: deactivateScroll,
		//   onComplete: activateScroll
	});

	//  bind scroll to anchor links
	$(document).on('click', '.sector-indicator a[href^="#"]', function (e) {
		var id = $(this).attr('href');
		if ($(id).length > 0) {
			e.preventDefault();

			// trigger scroll
			controller.scrollTo(id);

				// if supported by the browser we can even update the URL.
			if (window.history && window.history.pushState) {
				history.pushState('', document.title, id);
			}
		}
	});
} else {
	controller.scrollTo(function (newpos) {
		TweenMax.to(window, .5, { scrollTo: { y: newpos }});
	});

	var $indicator = document.querySelector('.sector-indicator');
	$indicator.addEventListener('click', function (e) {
		var id = e.target.hash;
		e.preventDefault();

		controller.scrollTo(id);

		$(e.target).addClass('active').siblings().removeClass('active');
		// console.log(e.target);

		if( window.history && window.history.pushState ){
			history.pushState('', document.title, id);
		}
	});
}


// cookie
function setEsgMainCookie(name, value) {
	var esglMainIntroEndDate = changeTimezone();

	var date = new Date(esglMainIntroEndDate);
	date.setTime(date.getTime());
	var expires = "; expires=" + date.toGMTString();
	//console.log("setEsgMainCookie = expires =" + expires);
	document.cookie = name + "=" + value + expires + "; path=/";
}
function getEsgMainCookie(name) {
	var i, x, y, ARRcookies = document.cookie.split(";");

	for (i = 0; i < ARRcookies.length; i++) {
		x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
		y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);

		x = x.replace(/^\s+|\s+$/g, "");

		if (x == name) {
			return unescape(y);
		}
	}
}
function setEsgMainCookieInit(name, value, days) {
	if (days) {
		var date = new Date();
		date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
		var expires = "; expires=" + date.toGMTString();
	} else {
		var expires = "";
	}
	//console.log("setEsgMainCookieInit - expires =" + expires);
	document.cookie = name + "=" + value + expires + "; path=/";
}
