$(function(){
	frontInit();
});

function frontInit(){
	navMenuEvent();
	addEvent();
	slideEvent();

	//메인 공지사항 탭
	tabControl(".main-board");

	gsap.registerPlugin(ScrollTrigger);
	pageAnimation();
	
	//MainCountUp 메인에서만 실행
	var isVisible = false;
	$(window).on("scroll", function(){
		if (checkVisible($('.main-board'))&&!isVisible) {
			MainCountUp();
			isVisible=true;
		}
	});

	SubCountUp();
}

//메뉴
function navMenuEvent(){
	$("header .btn-menu, nav .btn-menu").click(function(){
		if($(".menu-wrap").hasClass("on")){
			$(".menu-wrap").removeClass("on")
			$(".menu-wrap").addClass("off");
			$("body").removeClass("over-hidden");
		}else{
			$(".menu-wrap").removeClass("off")
			$(".menu-wrap").addClass("on");
			$("body").addClass("over-hidden");
		}
	});

	$(".list_dep01 > li > a").click(function(){
		if($(this).parent("li").find("> ul").css("display") == "block"){
			$(this).parent("li").removeClass("on");
			$(this).parent("li").find("> ul").slideUp();
		}else{
			$(".list_dep01 li").removeClass("on");
			$(".list_dep01 li").find("> ul").slideUp();
			$(this).parent("li").addClass("on");
			$(this).parent("li").find("> ul").slideDown();
		}
	});

	$(".list_dep02 > li > a").click(function(){
		if($(this).parent("li").find("> ul").css("display") == "block"){
			$(this).parent("li").removeClass("on");
			$(this).parent("li").find("> ul").slideUp();
		}else{
			$(".list_dep02 > li").removeClass("on");
			$(".list_dep02 > li").find("> ul").slideUp();
			$(this).parent("li").addClass("on");
			$(this).parent("li").find("> ul").slideDown();
		}
	});
}

function addEvent(){

	//전화문의
	$(".quick-link-area .link-list .btn-layer").click(function(e){
		$(".bottom-quick-wrap").toggleClass("active");
		$(".quick-dimmed").toggleClass("active");
	});
	$(".quick-dimmed").click(function(e){
		$(".bottom-quick-wrap").removeClass("active");
		$(".quick-dimmed").removeClass("active");
	});

	//personal_policy
	$(".policy-link a").on('click', function(e){
		var _top = $($(this).attr('href')),
		$target = _top.offset().top - 50;
		e.preventDefault();
		$('html, body').animate({
			scrollTop: $target
		}, 500);
	});

	//footer
	$("footer .btn-detail").click(function(e){
		$(this).toggleClass("on");
		console.log($(document).scrollTop());
		console.log($(document).height());
		
		$(document).scrollTop($(document).height());
	});
}

function slideEvent(){
	var bullet = ['입시 전략<br/>컨설팅', '수시 전략<br/>컨설팅', '정시 전략<br/>컨설팅', '대입 면접<br/>컨설팅', '학생부 종합<br/>프로그램'];
	var visualSwiper = new Swiper('.main-visual-swiper .swiper-container', {
		loop: true,
		// effect: 'fade',
		// fadeEffect: {
		// 	crossFade: true,
		// },
		speed:1000,
		autoplay: {
			delay: 4000,
			disableOnInteraction: false,
		},
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		pagination: {
			el: '.main-visual-swiper .swiper-pagination',
			type: 'bullets',
			clickable: true,
			renderBullet: function (index, className) {
				return '<div class="' + className + '"><span>' + (bullet[index]) + '</span></div>';
			},
		},
	});

	//center_intro slide
	$(".facility-slider").slick({
		dots: false,
		arrows: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		autoplay: true,
		autoplaySpeed: 4000,
		speed: 1000,
	});
}

//MainCountUp
function MainCountUp($e){
	$('.body-main .count-board .animCounter').each(function(i){
		var _value = $(this).data('count');
		var scoreDisplay = this;
		var _count = { score: 0 };

		var _tween = new TimelineMax();
		_tween.to(_count, 2, {
			score: _value,
			roundProps: 'score',
			ease: Circ.easeOut,
			onUpdate: function(){
				scoreDisplay.innerHTML = setComma(Math.floor( _count.score ));
			}
		});
	});
}

//SubCountUp
function SubCountUp($e){
	$('.body-sub .count-board .animCounter').each(function(i){
		var _value = $(this).data('count');
		var scoreDisplay = this;
		var _count = { score: 0 };

		var _tween = new TimelineMax();
		_tween.to(_count, 2, {
			score: _value,
			roundProps: 'score',
			ease: Circ.easeOut,
			onUpdate: function(){
				scoreDisplay.innerHTML = setComma(Math.floor( _count.score ));
			}
		});
	});
}

function setComma(num){
	var len, point, str;
	num = num + "";
	point = num.length % 3 ;
	len = num.length;
	str = num.substring(0, point);
	while (point < len) {
		if (str != "") str += ",";
		str += num.substring(point, point + 3);
		point += 3;
	}
	return str;
}

function checkVisible( elm, eval ) {
    eval = eval || "object visible";
    var viewportHeight = $(window).height(), // Viewport Height
        scrolltop = $(window).scrollTop(), // Scroll Top
        y = $(elm).offset().top,
        elementHeight = $(elm).height();   
    
    if (eval == "object visible") return ((y < (viewportHeight + scrolltop)) && (y > (scrolltop - elementHeight)));
    if (eval == "above") return ((y < (viewportHeight + scrolltop)));
}

//탭
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

//page motion animation
function pageAnimation(){
	window.scrollTrigger = function(obj, options){
		var _options = $.extend({
			trigger: obj,
			start: 'top-=50px bottom',
			end: 'bottom top',
			scrub: true,
			onEnter: function(){},
			markers: false
		}, options)

		ScrollTrigger.create(_options)
	}

	$('.ui-animate').each(function(index, obj){
		scrollTrigger(obj, {
			onEnter: function(){
				$(obj).addClass('ui-animation')
			}
		})
	})
}

function pageMove($selector, $position){
	if($position == undefined) $position = 0;

	var selector = $selector;
	$(selector).on('click', function (e) {
		e.preventDefault();

		var _top = $($(this).attr('href'));
		if (typeof (_top) != 'undefined' && typeof (_top.offset()) != 'undefined') {
			var $target = _top.offset().top;

			$('html,body').animate({
				scrollTop: $target+$position
			}, 500);
		}
	});
}

function pageTopMove(){
	$('html,body').animate({
		scrollTop: 0
	}, 500);
}




