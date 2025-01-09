$(window).load(function () {
			
        })

$(function() {
	
	"use strict";

	//jquery ui bug
    $.curCSS = function(element, prop, val) {
        return jQuery(element).css(prop, val);
    };
	

	// responsive layout	
	layoutFnc();
	//$('.activit_02 .lstBox .lst table tbody').width($('.activit_02 .lstBox .lst table').width());

	$(window).resize(function(){ 
		layoutFnc();
		//$('.activit_02 .lstBox .lst table tbody').width($('.activit_02 .lstBox .lst table').width());
	});
	
	//학습랭킹 스크롤
	/*;
	if($('.activit_02 .lstBox .lst .tb2').length >= 1) {
		$('.activit_02 .lstBox .lst .tb2').mCustomScrollbar({
			theme: 'minimal-dark',
			callbacks:{
				onScroll:function() {
					console.log(-(($('#mCSB_1_container').offset().top) - 684 - 799))
				}
			}
			
		});
	};
	*/
	

	// tab Init
	if($('.tabBtn').length) {
		tabMenuFnc();
	};
	
	//mouse Hover Init
	hoverFnc();

	// 시험일정 rolling
	ddayFnc();
	
	if($('.verticalSlide').length) {
		$('.verticalSlide').bxSlider({
			mode: 'vertical',
			auto: true,
			moveSlides : 1,
			autoControls: false,
			pager: false,
			controls:false 
		});
	};
	
	// 최근수강중인강의 rolling
	if($('.lectureRoll ul').length) {
		$('.lectureRoll ul').bxSlider({
			auto: false,
			moveSlides : 1,
			autoControls: false,
			pager: false,
			controls: ($('.lectureRoll ul li').length < 2) ? false : true,
			onSliderLoad: function(){
				if($('.lectureRoll .bx-controls').length == 1) {
					$('.lectureArea .sel_sbj').addClass('slideAc')
				}
			}
		});
	};
	
	//메인 포인트 넘버 슬라이드
	if($('.oneSlider').length) {
		$('.oneSlider span').animate({
			top : "-=26"
		}, 1000, function(){
			$('.oneSlider span').css('top','0')
		});
	};
	
	/*
	//공지사항 리스트
	$('.noticeList .default').click(function(){
		var idx = $(this).parent('li').index();
		$(this).parent('li').siblings('li').find('.detail').hide();
		
		$('.noticeList').animate({scrollTop:39*idx}, 200);
		
		if($(this).next('.detail').hasClass('open')) {
			$(this).next('.detail').hide().removeClass('open');
		} else {
			$(this).next('.detail').show().addClass('open');
		};

		console.log(idx);

	})
	*/

	//학습질문 리스트
	$("#questionLayer .list .text").hide();
	$("#questionLayer .list dt").click(function(){
		
		var listTxt = $(this).parent().find(".text");
		var rippleBtn = $(this).parent().next().find('.btn');

		if(listTxt.hasClass("open")){
			listTxt.removeClass("open").hide();

			rippleBtn.removeClass('open').text('자세히보기');
			rippleBtn.parents('.question').find('.detail').hide();
		} else {
			listTxt.addClass("open").show();
			rippleBtn.addClass('open').text('접기');
			rippleBtn.parents('.question').find('.detail').show();
		};
	});

	$('#questionLayer .question .btn').click(function(){
		if($(this).hasClass('open')) {
			$(this).removeClass('open').text('자세히보기');
			$(this).parents('.question').find('.detail').hide();
		} else {
			$(this).addClass('open').text('접기');
			$(this).parents('.question').find('.detail').show();
		};
	});


	//레이어 위치값
	$.fn.layerSetFnc = function(options) {
		return this.each(function() {
			var _topPosition = $(this).height()/2;
			var _leftPosition = $(this).width()/2;
			
			var _topMargin = 86;
			var _contMargin = 89;


			//레이어
			$('#noticeLayer').find('.box').height( $(window).height() - 255);	//20180813 작업
			$('#noticeLayer').find('.box2').height( $(window).height() - 255);	//20180813 작업


			$('#scheduleLayer').find('.box').height( $(window).height() - 308 - 20);
			$('#questionLayer').find('.questionList').height( $(window).height() - 176);
			$('#questionLayer.btnY').find('.questionList').height( $(window).height() - 246);
			$('#questionLayer.questionLayer2').find('.questionList').height( $(window).height() - 357); //2019-05-28 에지인 배너 삭제시 304
			//$('.mainWrap #questionLayer').find('.questionList').height( $(window).height() - 235 );
			$('#bookmarkLayer').find('.box').height( $(window).height() - 217);
			$('#mp3DownLayer').find('.mp3DownTb').height( $(window).height() - 235);
			$('#newlyListLayer').find('.box').height( $(window).height() - 175 );
			$('#questionWriteLayer').find('textarea').height( $(window).height() - 377 );
			$('#questionWriteLayer.questionWriteLayer2').find('textarea').css('height', '100%');
			$('#questionWriteLayer.questionWriteLayer2').find('.writeTb').height($(window).height() - 177);
			$('#alarmLayer').find('.alarmList').height( $(window).height() - 225);
			$('#subnoteDownLayer').find('.subnoteDownTb').height( $(window).height() - 235);
			//$('#counselLayer').find('.counselTb').height( $(window).height() - 177);

			$('#consultingResumeLayer').find('.questionList').height( $(window).height() - 357); // 2020-05-06 취업첨삭서비스

			$(this).css({
				//'margin-top' : -_topPosition,
				'margin-left' : -_leftPosition
			});

			if( $('#formContinueLayer1').css('display') == 'block' || $('#formContinueLayer2').css('display') == 'block' || $('#consultLayer').css('display') == 'block' ){
				$('body').css('overflow-y','auto');
			} else {
				$('body').css('overflow-y','hidden');
			};

			// 20180712 공지사항 레이어 추가
			if($(this).hasClass("layerWrap2")) {
				$(this).css({'marginLeft':'-394px'});
			};

			


		});
	};

	$(window).resize(function(){ 
		$('.layerWrap').layerSetFnc();
		if($('.layerDim').css('display') === 'none'){
			$('body').css('overflow-y','auto');
		};
	});

	//레이어초기셋팅
	$('.layerWrap').layerSetFnc();
	$('body').css('overflow-y','auto');

	//레이어 이외영역 닫기
	$('.layerDim, .dim, .layerWrap .closeBtn a').click(function(){
		//공지사항 검색필드 초기화
		$("#noticeLayer #Key option:eq(0)").prop("selected", true);
		$("#noticeLayer #KeyWD").val("");

		$('.layerWrap, .layerDim, .dim').hide();
		$('body').css('overflow-y','auto');
	});
	
	//셀렉트박스 이외영역 닫기
	$("body").click(function(e){
		var $selectBox = $('.sel_sbj');

		$selectBox.each(function() {
			var $layer = $(this).find('.filterLayer')
			var $layerBtn = $(this).find('.btnLayer')

			if( $layerBtn.hasClass('open') ){
				if( !$(this).has(e.target).length && !$layerBtn.has(e.target).length && !$layer.has(e.target).length ){
					$layerBtn.removeClass('open');
					$layer.hide();
				};
			};
		});
	});
	
	//셀렉트박스 스크롤
	if( $('.sel_sbj .filterBox').length >= 1 ){
		$('.sel_sbj .filterBox').mCustomScrollbar({
			theme: 'minimal-dark'
		});
	};

	$(".activityArea .infoTxt .btn_help").click(function(){
		if( $(this).hasClass('open') ){
			$(".activityArea .helpLayer").hide();
			$(".activityArea .btn_help").removeClass('open');

			return false;
		} else {
			$(".activityArea .helpLayer").css("display","block");
			$(".activityArea .btn_help").addClass('open');

			return false;
		};
	});

	$(".activityArea .helpLayer .closeLayer").click(function(){
		$(".activityArea .helpLayer").hide();
		$(".activityArea .btn_help").removeClass('open');

		return false;
	});


	/*
	$.fn.hasVerticalScrollBar = function() {
        return this.get(0) ? this.get(0).scrollHeight > this.innerHeight() : false;
    };
	$('.noticeList').hasVerticalScrollBar();
	*/

	
	
	//파일form
	var $fileBox = $('.filetype');

	$fileBox.each(function() {
		var $fileUpload = $(this).find('.input-file'),
			 $fileText = $(this).find('.file-text');

		$fileUpload.on('change', function(){
			var fileName = $(this).val();
			$fileText.attr('disabled', 'disabled').val(fileName);
		});
	});

	//엠보싱효과
	$('.effect_em').mouseenter(function(){
		$(this).stop().animate({
			boxShadow: '2px 2px 5px rgba(204, 204, 204, 0.5)',
			top: "-2px",
			left: '-2px'
		},'fast');
	}).mouseleave(function(){
		$(this).stop().animate({
			boxShadow: '0 0 0 rgba(204, 204, 204, 0)',
			top: "0",
			left: '0'
		},'fast');
	});

	//팝업 width 고정
	$('.rankingPopup').parents('body').css('min-width','1000px');
	
	//마이페이지 장바구니 detailView
	$('.cartWrap .detail .btn_itemView').click(function(){
		if( $(this).hasClass('open') ){
			$(this).removeClass('open').addClass('close').parents('.item').next('.itemView').slideDown(200);
		} else {
			$(this).removeClass('close').addClass('open').parents('.item').next('.itemView').slideUp(200);
		};

		return false;
	});
	
	//알람레이어 이벤트
	//if($('#alarmLayer').length >= 1) {
	//	alarmFnc();
	//};
	
	//수강료환급신청
	$('.refundWrap .infoBox dl dt').on('click', function(){
		$(this).toggleClass('in').nextAll('dd').toggleClass('in');
	})

	$('.popover-box .pop-btn').on('click', function(){
		$(this).next('.pop-box').fadeToggle(100);
	});
	$('.popover-box .pop-close').on('click', function(){
		$(this).closest('.pop-box').fadeToggle(100);
	});

});

/*
$(document).mouseup(function (e) {
	if (!$(".filterLayer, #filterLecture_btn").is(e.target) && $(".filterLayer, #filterLecture_btn").has(e.target).length === 0){
		$(".filterLayer").css("display","none");
		$("#filterLecture_btn, .btnLayer").removeClass('open');
	};
});
*/

function layoutFnc() {
	var _maxWidth = 1540;
	var _minWidth = 1100;
	var _scrollWidth = 1280;
	var _McontentMaxWidth = 1040;
	var _McontentMinWidth = 600;

	var _contentMaxWidth = 1340;
	var _contentMinWidth = 900;
	
	var _screenWidth = $(window).width();

	if(_screenWidth < _maxWidth && _screenWidth >= _scrollWidth) {
			$('#container, #header .inner').width((_maxWidth - (_maxWidth - _screenWidth)) - 180)
			
			if($('#content').hasClass('mainWrap')){
				$('#content').width(_McontentMaxWidth - (_maxWidth - _screenWidth) - 180)
			} else {
				$('#content').width(_contentMaxWidth - (_maxWidth - _screenWidth) - 180)
			}
			
			
	}else if(_screenWidth < _scrollWidth) {
			$('#container, #header .inner').width(_minWidth)
			

			if($('#content').hasClass('mainWrap')){
				$('#content').width(_McontentMinWidth)
			} else {
				$('#content').width(_contentMinWidth)
			}
			
			
	}else if (_screenWidth >= _maxWidth) {
			$('#container, #header .inner').width(_maxWidth - 180)
			$('#content').width(_contentMaxWidth -180 )
			
			if($('#content').hasClass('mainWrap')){
				$('#content').width(_McontentMaxWidth -180 )
			} else {
				$('#content').width(_contentMaxWidth -180 )
			}
	}
}

//toggle js
function toggleFnc(obj, target) {
	var _this = $(obj)
	var _target = $(target)

	_this.toggleClass('open')
	
	if(_this.hasClass('open')) {
		_target.show()
	}else{
		_target.hide()
	}
	/*
	onclick="javascript:toggleFnc(this,'#target')"
	*/
}


// 2019-11-27 toggle js for updateArea
function toggleFnc2(obj, target) {
	var _this = $(obj),
		 _target = $(target),
		 _a = _this.parent();

	_this.toggleClass('open');

	if(_this.hasClass('open')) {
		_target.show();
			
		_a.attr('class', _a.attr('class').replace('_off', '_on'));
		_a.siblings().attr('class', _a.siblings().attr('class').replace('_on', '_off'));
	}else{
		_target.hide();

		_a.attr('class', _a.attr('class').replace('_on', '_off'));
		_a.siblings().attr('class', _a.siblings().attr('class').replace('_off', '_on'));
	}

	/*
	onclick="javascript:toggleFnc2(this,'#target')"
	*/
}


//toggle close js
function toggleClsoeFnc(btn, target) {
	var _btn = $(btn)
	var _target = $(target)

	_btn.removeClass('open')
	_target.hide();

	if(target=="#noticeLayer") {
		$("#noticeLayer #Key option:eq(0)").prop("selected", true);
		$("#noticeLayer #KeyWD").val("");
	}

	if(_target.hasClass('layerWrap')) {
		$('.layerDim').hide()
		$('body').css('overflow-y','auto')
	}
}

//tab js
function tabMenuFnc() {
	
	

	$('.tabBtn > div.active').next('div').addClass('nextTab')

	$('.tabBtn > div').click(function(){
		if($(this).hasClass('linkType')) {
			return false
		}
		var _idx = $(this).index()
		$(this).addClass('active').siblings().removeClass('active');
		$(this).parent().siblings('.tabCont').hide().eq(_idx).show();
		$(this).parent().find('div').removeClass('nextTab');
		$(this).addClass('active').next('div').addClass('nextTab');
		
	})
	/*
		
		<div class="tabBtn">
			<div class="active">tab btn1</div>
			<div>tab btn2</div>
		</div>
		<div class="tabCont">
			tabCont1
		</div>
		<div class="tabCont" style="display:none">
			tabCont2
		</div>
	*/
}

function ddayFnc() {
	$('.ddayArea').mouseenter(function(){
		$(this).find('dl').addClass('open')
		$('.ddayArea .ddayAdd').show()
	}).mouseleave(function(){
		$(this).find('dl').removeClass('open')
		$('.ddayArea .ddayAdd').hide()
	});
}

function hoverFnc() {
	$('.hoverInit').mouseenter(function(){
		$(this).addClass('hover')
	}).mouseleave(function(){
		$(this).removeClass('hover')
	})
}

$(document).on('click', '.section_link a.action, .section2 a.action' , function(e){
	var $this = $(this),
		 $target = $this.parents('.item');

	e.preventDefault();

	if ( $this.hasClass('is_view') ){
		$target.toggleClass('in').siblings().removeClass('in');
	} else if( $this.hasClass('is_close') ) {
		$target.removeClass('in');
	}
});

$(document).on('click', '.section2 a.btn-endList' , function(e){
	e.preventDefault();
	$(this).toggleClass("active");
	$(".end_list").slideToggle();
});


$(document).on('click', '.section2 .setting_list li .icon-pin' , function(e){
	e.preventDefault();

	if($(this).hasClass('active')){
		$(this).find("img").attr('src', $(this).find('img').attr('src').replace('_active','_off'));
		$(this).removeClass('active');
	}else{
		 $(this).find('img').attr('src', $(this).find('img').attr('src').replace('_off','_active'));
		 $(this).addClass('active');
	}


});


function alarmFnc() {
	var alarmElement = $(".is_alarm em");
	var alarmShown = true;	
	setInterval(alarmToggle, 500);
	function alarmToggle() {
	   if(alarmShown) {
		   alarmElement.addClass('blink');
		   alarmShown = false;
	   } else {
		   alarmElement.removeClass('blink');
		   alarmShown = true;
	   }
	}
	
	$('#alarmLayer .alarmList').mCustomScrollbar({
		theme: 'minimal-dark',
		callbacks:{
			onScroll:function() {
				
			}
		}			
	});

	$("#alarmLayer li").on("click", function(){
		if($(this).hasClass("close")) {
			$(this).addClass("open").removeClass("close").find("dd").slideDown(200).parents("li").siblings("li").addClass("close").removeClass("open").find("dd").hide()
		} else {
			$(this).addClass("close").removeClass("open").find("dd").slideUp(200)
		}
	})
}


//교육과정안내 top메뉴 layer
function writeLayer1(){
	var str = '';
	str += '<div class="category_list category_list_2">';
	str += '	<dl>';
	str += '		<dt class="group_1">자격증 분야</dt>';
	str += '		<dd class="group_1">';
	str += '			<p class="group_title">전문자격</p>';
	str += '			<ul>';
	str += '				<li><a href="//land.eduwill.net"><span>공인중개사</span></a></li>';
	str += '				<li><a href="//house.eduwill.net"><span>주택관리사</span></a></li>';
	str += '				<li><a href="//guard.eduwill.net"><span>경비지도사</span></a></li>';
	str += '				<li><a href="//trade.eduwill.net"><span>국제무역사</span></a></li>';
	str += '			</ul>';
	str += '			<ul>';
	str += '				<li><a href="//road.eduwill.net"><span>도로교통사고감정사</span></a></li>';
	str += '				<li><a href="//trans.eduwill.net"><span>물류관리사</span></a></li>';
	str += '				<li><a href="//well.eduwill.net"><span>사회복지사1급</span></a></li>';
	str += '				<li><a href="//flow.eduwill.net"><span>유통관리사</span></a></li>';
	str += '			</ul>';
	str += '			<ul>';
	str += '				<li><a href="//job.eduwill.net"><span>직업상담사</span></a></li>';
	str += '				<li><a href="//admin.eduwill.net"><span>행정사</span></a></li>';
	str += '			</ul>';
	str += '			<p class="group_title">기술자격</p>';
	str += '			<ul>';
	str += '				<li><a href="//energy.eduwill.net"><span>전기기사</span></a></li>';
	str += '				<li><a href="//elec.eduwill.net"><span>전기기능사</span></a></li>';
	str += '				<li><a href="//engin.eduwill.net"><span>소방시설관리사</span></a></li>';
	str += '				<li><a href="//engin.eduwill.net"><span>소방설비기사</span></a></li>';
	str += '			</ul>';
	str += '			<ul>';
	str += '				<li><a href="//safety.eduwill.net"><span>산업안전기사</span></a></li>';
	str += '				<li><a href="//arch.eduwill.net"><span>건축기사</span></a></li>';
	str += '				<li><a href="//civ.eduwill.net"><span>토목기사</span></a></li>';
	str += '				<li><a href="//garden.eduwill.net"><span>조경기사/기능사</span></a></li>';
	str += '			</ul>';
	str += '			<ul>';
	str += '				<li><a href="//it.eduwill.net"><span>IT자격증</span></a></li>';
	str += '			</ul>';
	str += '			<p class="group_title">능력검정</p>';
	str += '			<ul>';
	str += '				<li><a href="//math.eduwill.net"><span>전산세무회계</span></a></li>';
	str += '				<li><a href="//account.eduwill.net"><span>재경관리사</span></a></li>';
	str += '				<li><a href="//erp.eduwill.net"><span>ERP정보관리사</span></a></li>';
	str += '				<li><a href="//invest.eduwill.net"><span>매경TEST</span></a></li>';
	str += '			</ul>';
	str += '			<ul>';
	str += '				<li><a href="//invest.eduwill.net"><span>한경TESAT</span></a></li>';
	str += '				<li><a href="//black.eduwill.net"><span>검정고시</span></a></li>';
	str += '				<li><a href="//trade.eduwill.net"><span>무역영어</span></a></li>';
	str += '				<li><a href="//kor.eduwill.net"><span>ToKL/KBS/글쓰기</span></a></li>';
	str += '			</ul>';
	str += '			<ul>';
	str += '				<li><a href="//history.eduwill.net"><span>한국사능력검정</span></a></li>';
	str += '			</ul>';
	str += '		</dd>';
	str += '		<dt class="group_2">공무원 분야</dt>';
	str += '		<dd class="group_2">';
	str += '			<ul>';
	str += '				<li><a href="//gov.eduwill.net"><span>9급 공무원</span></a></li>';
	str += '				<li><a href="//seven.eduwill.net"><span>7급 공무원</span></a></li>';
	str += '				<li><a href="//cop.eduwill.net"><span>경찰공무원</span></a></li>';
	str += '				<li><a href="//fire.eduwill.net"><span>소방공무원</span></a></li>';
	str += '				<li><a href="//post.eduwill.net"><span>계리직 공무원</span></a></li>';
	str += '			</ul>';
	str += '		</dd>';
	str += '		<dt class="group_3">공기업&middot;대기업 취업</dt>';
	str += '		<dd class="group_3">';
	str += '			<ul>';
	str += '				<li><a href="//public.eduwill.net"><span>공기업 취업</span></a></li>';
	str += '				<li><a href="//public.eduwill.net"><span>대기업 취업</span></a></li>';
	str += '			</ul>';
	str += '		</dd>';
	str += '		<dt class="group_4">학점은행제</dt>';
	str += '		<dd class="group_4">';
	str += '			<ul>';
	str += '				<li><a href="//www.studywill.net" target="_blank" title="새 창 열림"><span>원격평생교육원</span></a></li>';
	str += '			</ul>';
	str += '		</dd>';
	str += '		<dt class="group_5">B2B 교육</dt>';
	str += '		<dd class="group_5">';
	str += '			<ul>';
	str += '				<li><a href="//www.eduwill.net/common/company/hrd.asp" target="_blank" title="새 창 열림"><span>콘텐츠 제휴 &middot; 위탁교육</span></a></li>';
	str += '			</ul>';
	str += '		</dd>';
	str += '		<dt class="group_6">교육서비스+</dt>';
	str += '		<dd class="group_6">';
	str += '			<ul>';
	str += '				<li><a href="//uland.eduwill.net/Home/Main" target="_blank" title="새 창 열림"><span>부동산 아카데미</span></a></li>';
	str += '			</ul>';
	str += '		</dd>';
	str += '	</dl>';
	str += '	<div class="layer_close">';
	str += '		<a class="action is_close" href="javascript:;"><span>Close</span></a>';
	str += '	</div>';
	str += '</div>';
	document.write(str);

}
//직영학원 top메뉴 layer
function writeLayer2(){
	var str = '';
	str +='	<div class="category_list"> ';
	str +='		<dl> ';
	str +='			<dt>공인중개사 직영 학원</dt> ';
	str +='			<dd> ';
	str +='				<ul> ';
	str +='					<li><a href="//db.eduwill.net/" target="_blank" title="새 창 열림"><span>서울대방</span></a></li> ';
	str +='					<li><a href="//nw.eduwill.net/" target="_blank" title="새 창 열림"><span>서울노원</span></a></li> ';
	str +='					<li><a href="//jr.eduwill.net/" target="_blank" title="새 창 열림"><span>서울종로</span></a></li> ';
	str +='					<li><a href="//ch.eduwill.net/" target="_blank" title="새 창 열림"><span>서울천호</span></a></li> ';
	str +='					<li><a href="//bp.eduwill.net/" target="_blank" title="새 창 열림"><span>인천부평</span></a></li> ';
	str +='					<li><a href="//bc.eduwill.net/" target="_blank" title="새 창 열림"><span>경기부천</span></a></li> ';
	str +='					<li><a href="//sw.eduwill.net/" target="_blank" title="새 창 열림"><span>경기수원</span></a></li> ';
	str +='					<li><a href="//sn.eduwill.net/" target="_blank" title="새 창 열림"><span>경기성남</span></a></li> ';
	str +='					<li><a href="//pc.eduwill.net/" target="_blank" title="새 창 열림"><span>경기평촌</span></a></li> ';
	str +='					<li><a href="//dj.eduwill.net/" target="_blank" title="새 창 열림"><span>대전</span></a></li> ';
	str +='					<li><a href="//sm.eduwill.net/" target="_blank" title="새 창 열림"><span>부산서면</span></a></li> ';
	str +='					<li><a href="//hu.eduwill.net/" target="_blank" title="새 창 열림"><span>부산해운대</span></a></li> ';
	str +='					<li><a href="javascript:;"><span>서울신림 (10월오픈)</span></a></li> ';
	str +='					<li><a href="javascript:;"><span>경기일산 (8월오픈)</span></a></li> ';
	str +='					<li><a href="javascript:;"><span>광주 (8월오픈)</span></a></li> ';
	str +='					<li><a href="javascript:;"><span>대구 (8월오픈)</span></a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='			<dt>주택관리사 직영 학원</dt> ';
	str +='			<dd> ';
	str +='				<ul> ';
	str +='					<li><a href="//dbj.eduwill.net/" target="_blank" title="새 창 열림"><span>서울대방</span></a></li> ';
	str +='					<li><a href="//nwj.eduwill.net/" target="_blank" title="새 창 열림"><span>서울노원</span></a></li> ';
	str +='					<li><a href="//smj.eduwill.net/" target="_blank" title="새 창 열림"><span>부산서면</span></a></li> ';
	str +='					<li><a href="//bpj.eduwill.net/" target="_blank" title="새 창 열림"><span>인천부평</span></a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='			<dt>9급 공무원 직영 학원</dt> ';
	str +='			<dd>';
	str +='				<ul>';
	str +='					<li><a href="//dbg.eduwill.net/" target="_blank" title="새 창 열림"><span>서울대방</span></a></li> ';
	str +='					<li><a href="//nwg.eduwill.net/" target="_blank" title="새 창 열림"><span>서울노원</span></a></li> ';
	str +='					<li><a href="//smg.eduwill.net/" target="_blank" title="새 창 열림"><span>부산서면</span></a></li> ';
	str +='					<li><a href="//bpg.eduwill.net/" target="_blank" title="새 창 열림"><span>인천부평</span></a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='			<dt>경찰 공무원 직영 학원</dt>';
	str +='			<dd>';
	str +='				<ul>';
	str +='					<li><a href="//nwc.eduwill.net/" target="_blank" title="새 창 열림"><span>서울노원</span></a></li> ';
	str +='					<li><a href="//smc.eduwill.net/" target="_blank" title="새 창 열림"><span>부산서면</span></a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='			<dt>소방 공무원 직영 학원</dt>';
	str +='			<dd>';
	str +='				<ul>';
	str +='					<li><a href="//nwgso.eduwill.net/" target="_blank" title="새 창 열림"><span>서울노원</span> <span class="icon_new"><em>새로 생긴 학원</em></span></a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='			<dt>전기기사 직영 학원</dt>';
	str +='			<dd>';
	str +='				<ul>';
	str +='					<li><a href="//dbq.eduwill.net/" target="_blank" title="새 창 열림"><span>서울대방</span></a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='		</dl> ';
	str += '		<div class="layer_close"><a class="action is_close" href="javascript:;"><span>Close</span></a></div>';
	str +='	</div>';
	document.write(str);
}



//20180712 공지사항 레이어 
function toggleClsoeFnc2(btn, target) {
	var _btn = $(btn)
	var _target = $(target)

	_btn.removeClass('open')
	_target.hide();

	if(_target.hasClass('layerWrap2')) {
		$('.layerDim').hide()
		$('body').css('overflow-y','auto')
	}
}