var $ = jQuery.noConflict();

// 주소창 없애기
window.addEventListener('load', function(){
    document.body.style.height = (document.documentElement.clientHeight + 5) + 'px';
    window.scrollTo(0, 1);
}, false);

$(function(){

	//gnb
	$('#gnb').scrollFix({})

	//js tab
	if($('.js_tab').length > 0) {
		$('.js_tab > a').on("click", function() {
			var _index = $(this).index();
			$(this).parent().find('> a').eq(_index).addClass('active').siblings().removeClass('active')
			$(this).parent().next('.js_tab_cont').find('> div').eq(_index).show().siblings().hide();
			return false;
		});
	}

	//js toggle
	$('.js_toggle').on("click", "li", function(){
		$(this).addClass('open').find('.detail').toggle().parent().siblings('li').removeClass('open').find('.detail').hide();
		if($(this).find('.detail').css('display') === 'none') $(this).removeClass('open');
		return false;
	})

	$('.plan .change').on("click", ".tit", function(){
		$(this).addClass('down').parent().find('.planlist').toggle();
		if($(this).parent().find('.planlist').css('display') === 'none') $(this).removeClass('down');
		return false;
	})

	$('.plan .change .detail').on("click", "dl", function(){
		$(this).parent().prev('.more').addClass('down').next('.detail').find('.list').toggle().parents('li').addClass('active');
		if($(this).next('.list').css('display') === 'none') $(this).parent().prev('.more').removeClass('down').parents('li').removeClass('active');
		return false;
	})
	/*
	$('.plan .change').on("click", ".more", function(){
		$(this).addClass('down').next('.detail').find('.list').toggle().parents('li').addClass('active');
		if($(this).next('.detail').find('.list').css('display') === 'none') $(this).removeClass('down').parents('li').removeClass('active');
		return false;
	})
	*/
	$('.plan .change .detail .list').on("click", "a", function(){
		$(this).toggleClass('check');
		//return false;
	})

	$('.js_alarm_02 button').on("click", function() {
		$(this).addClass('on').siblings('button').removeClass('on')
	});

	$('.js_alarm_01 button').on("click", function() {
		$(this).toggleClass('on')
		if($(this).hasClass('on')) {
			$(this).text('켬');
		} else {
			$(this).text('끔');
		}
	});

	//question active
	if($('.js_sel').length > 0) {
		$('.js_sel li').on("click", function() {
			$(this).addClass('active').siblings('li').removeClass('active')
			return false;
		});
	}

	$('.qna .list .qArea').on("click", function(){
		$('.qna .list .aArea').slideUp(200);
		$(this).next('.aArea').slideDown(200)
		
		return false;
	})

	//layer close
	$('.layer_wrap .close').click(function(){
		$(this).parents('.layer_wrap').hide();
		$('.dim').hide()
		return false;
	})

	// 패밀리사이트
	$('.footer_btn li.btn2>a').click(function(){
		if ( $('.footer_btn li.btn2').is(".over") ){
			$('.family_site').hide();
			$('.footer_btn li.btn2').removeClass('over');
		} else {
			$('.family_site').show();
			$('.footer_btn li.btn2').addClass('over');
		}
		return false;
	});

	//랭킹 슬라이더
	var bx_num01 = $("#rankSlider > li").length;
	if ( bx_num01 > 3) {
		$('#rankSlider').bxSlider({
			minSlides: 10,
			maxSlides: 100,
			slideWidth: 900,
			slideMargin: 0,
			ticker: true,
			mode: 'vertical',
			tickerHover: true,
			speed:500*bx_num01
		});
	}

	$('#vsslider').bxSlider({
		  mode:'horizontal', //default : 'horizontal', options: 'horizontal', 'vertical', 'fade'
		  pager: true,
		  auto: false,
		  pause: 5000,
		  touchEnabled: true
	});
/*
	$(".datepicker").datepicker({
		showOtherMonths: true,
		selectOtherMonths: true,
		showButtonPanel:true,
		dateFormat: "yy.mm.dd",
		dayNamesMin:
        [ "일", "월", "화", "수", "목", "금", "토" ] ,
		monthNames:
        [ "1월", "2월", "3월", "4월", "5월", "6월",
        "7월", "8월", "9월", "10월", "11월", "12월" ] ,
		closeText: "닫기",
		currentText: '오늘 날짜' ,
		showMonthAfterYear: true,
			beforeShow: function(input) {
		    var i_offset= $(input).offset();
		    setTimeout(function(){
		       $('#ui-datepicker-div').css({'top':i_offset.top, 'bottom':'', 'left':'50%', 'margin-left':'-123px'});
		    })

		}
	});
*/
	$('.visual_wrap .txtRoll').bxSlider({
		auto:true,
		mode:'fade',
		pause:5000,
		speed:250,
		pager:false,
		controls:false,
		autoStart:true,
		autoControls:false,
		onSliderLoad: function() {
		}
	});

	if($('.dday ul li').length > 1){
		$('.dday ul').bxSlider({
			mode: 'horizontal',
			auto: true,
			pause: 5000,
			pager:false,
			controls:false,
			onSliderLoad: function() {
				
			}
		});
	}
	/*
	if($('.btn_apply').length > 0) {
		$(window).scroll(function() {
			if(($(window).scrollTop() + $(window).height()) > $("#footer").offset().top) {
				$('.btn_apply').fadeOut(200)
			} else {
				$('.btn_apply').fadeIn(200)
			}
		});
	}*/

	$('img[usemap]').rwdImageMaps();

	


});

layerFnc = function (obj, param) {//레이어
	var _obj = $(obj);
	var _target = $(param);
	var _height = _target.height()

	$('.dim').show();

	_target.show().css('top', $(document).scrollTop() + 120);

	/*
	if(_target.hasClass('full_layer')) {
		_target.show().css('margin-top', 120);
		_target.height($(window).height())
	} else if (_target.hasClass('scroll_layer')){
		_target.show().css('margin-top', 120);
		_target.height($(window).height() - 16)
	} else {
		_target.show().css('top', $(document).scrollTop() + 120);
	}
	*/

};//레이어

//컨텐츠 내부 레이어팝업 20180627
layerFnc2 = function (obj, param) {
	var _obj = $(obj);
	var _target = $(param);
	var _height = _target.height()

	$('.dim').show();

	_target.show().css('top', $(document).scrollTop() + 20);

};
