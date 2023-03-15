"use strict";

var _isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;
var _agent = navigator.userAgent.toLowerCase();
var _trident = navigator.userAgent.match(/Trident\/(\d.\d)/i);

var _w = $(window);
var _winWidth = _w.width();
var _winHeight = _w.height();
var _winTop = _w.scrollTop();
var _breakpoint = 720;
var _breakpointDesktop = 1023;

$(function(){
	frontInit();
});

function frontInit(){
	introEvent();
	baseEvent();
}

function changeTimezone() {
	var todayCheck = new Date();

	var year = todayCheck.getFullYear();
	var month = ('0' + (todayCheck.getMonth() + 1)).slice(-2);
	var day = ('0' + todayCheck.getDate()).slice(-2);

	var todayFormat = year + '-' + month + '-' + day;
	var timeFormat = "23:59:59";
	return todayFormat + "T" + timeFormat;
}


var _twwen1Delay;

function introEvent(){
	var $unit = $('#header, #gnb, .view_menu, .sector-indicator');

	var esglMainIntro = getEsgMainCookie('esglMainIntro');
	if (esglMainIntro == "Y") {
		$('.main-item-0').hide();
		$('.main-item-1').addClass('show');
		$unit.show();
		$unit.addClass('white');
		_twwen1Delay = 0;
	} else {
		setEsgMainCookie('esglMainIntro', 'Y');
		$('.main-item-0').show();
		$unit.hide();
		_twwen1Delay = 1;
	}

	_w.on('load', function(){
		$unit.addClass('white');
		$('html,body').animate({
			scrollTop: 0
		});

		$('.main-item-3').removeClass('active');

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
			_twwen1Delay = 1;
		});
	});

	_w.on('scroll', function(){
		var _top = _w.scrollTop();
		var _standard = $('#moveSection4').offset().top - 10;

		if( _top < _standard ){
			$unit.addClass('white');
			// console.log('white2');
		} else {
			$unit.removeClass('white');
			// console.log('black2');
		}

		if( _top >= $('#moveSection4').offset().top ){
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
				TweenMax.fromTo( main0.find('.text-list-1'), .8, { opacity: 1, backgroundColor: '#ffbf00' }, { backgroundColor: '#ffffff', delay: .2, ease: Power2.easeOut, onComplete: function(){
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
var _tween1Duration = ( _isMobile || _winWidth < _breakpoint ) ? 10 : 0.1; // timeline 지속시간
var _tween1Duration2 = ( _isMobile || _winWidth < _breakpoint ) ? 10 : 1; // text-1
var _tween1Timeline = 2; // 실행되는 timeline
var moveSectionTween1 = new TimelineMax()
	.to('.main-item-1', 1, { delay: _twwen1Delay })
	.fromTo('.main-item-1 .text-1', _tween1Duration, { opacity: 1, duration: .1 }, { opacity: 0, scale: 8 })
	.fromTo('.main-item-2', _tween1Duration, { y: '100%', duration: .1 }, { y: '0%', delay: .5 })
	// .to('.main-item-3 .text-list', 1, { opacity: 0 })
	.fromTo('.main-item-3', _tween1Duration, { y: '100%', duration: .1 }, { y: '0%', delay: _tween1Duration2,
		onComplete: textMotion1
	})//, "=-1"
	.to('.main-item-4', .1, { delay: 1 });

new ScrollMagic.Scene({
	triggerElement: '#moveSection1',
	triggerHook: 'onLeave',
	offset: '0',
	duration: $("#moveSection1").height() * _tween1Timeline
})
.setPin('#moveSection1')
.setTween(moveSectionTween1)
.setClassToggle('.indicator-1', 'active') // add class toggle
// .addIndicators({name: "moveSectionTween1"})
.addTo(controller);

function textMotion1(){
	// TweenMax.fromTo( $('.main-item-3 .text-list'), 1.0, { opacity: 0, y: 50 }, { opacity: 1, y: 0, delay: .5, ease: Power2.easeOut });
	$('.main-item-3').addClass('active');
}


// moveSection2
var _tween2Timeline = 1; // 실행되는 timeline
var moveSectionTween2 = new TimelineMax()
	.fromTo('#moveSection2 .text-list-1 > div', .1, { y: '0%', duration: .1 }, { opacity: 0, y: '-10%', delay: .2 })
	.fromTo('#moveSection2 .text-list-2', .1, { opacity: 0, y: '10%', duration: .1 }, { opacity: 1, y: '0%', delay: 0, // })
	// .to('#moveSection2 .text-list-2', .1, { y: '0%', duration: .1, delay: .1,
		onComplete: playCount
	})
	.from('#moveSection3', .1, { y: '100%', duration: .1, delay: .1 });

new ScrollMagic.Scene({
	triggerElement: '#moveSection2',
	triggerHook: 0,
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
var _tween3Timeline = 1; // 실행되는 timeline
// var moveSectionTween3 = new TimelineMax()
// 	.to('#moveSection3', .1, { y: '0%', duration: .1, delay: .2 })
// 	.from('#moveSection4', .1, { y: '100%', duration: .1, delay: .1 });

new ScrollMagic.Scene({
	triggerElement: '#moveSection3',
	triggerHook: 0,
	duration: $("#moveSection3").height() // * _tween3Timeline
})
.setPin('#moveSection3')
// .setTween(moveSectionTween3)
.setClassToggle('#moveSection3, .indicator-3', 'active') // add class toggle
// .addIndicators({name: 'moveSectionTween3'})
.addTo(controller);

// moveSection4
var _tween4Timeline = ( _winWidth <= _breakpointDesktop ) ? 3 : 1; // 실행되는 timeline
if( _winWidth <= _breakpointDesktop ){
	var moveSectionTween4 = new TimelineMax()
		.to('#moveSection4', .1, { y: '0%', duration: .1, delay: .1 })
		.fromTo('#moveSection4 .text-list-1', .1, { opacity: 1, y: '0%' }, { opacity: 0, y: '-10%', duration: .1, delay: .1 })
		.fromTo('#moveSection4 .text-list-2', .1, { opacity: 0, y: '10%', duration: .1 }, { opacity: 1, y: '0%', delay: .1 });
}

// else {
// 	var moveSectionTween4 = new TimelineMax()
// 		.to('.main-item-7', .1, { y: '0%', duration: .1, delay: .2 });
// }

new ScrollMagic.Scene({
	triggerElement: '#moveSection4',
	triggerHook: 0,
	duration: $("#moveSection4").height() * _tween4Timeline
})
.setPin('#moveSection4')
.setTween(moveSectionTween4)
.setClassToggle('#moveSection4, .indicator-4', 'active') // add class toggle
// .addIndicators({name: 'moveSectionTween4'})
.addTo(controller);


// moveSection5
// var _tween5Timeline = 2; // 실행되는 timeline
var _tween5Timeline = ( _winWidth <= _breakpointDesktop ) ? 2 : 2; // 실행되는 timeline
var _tween5Hook = ( _winWidth <= _breakpointDesktop ) ? 0.8 : 1;
var moveSectionTween5 = new ScrollMagic.Scene({
	triggerElement: '#moveSection5',
	triggerHook: _tween5Hook,
	// duration: $("#moveSection5").height() * _tween5Timeline
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
