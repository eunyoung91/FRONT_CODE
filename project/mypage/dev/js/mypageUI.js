$(function(){
	// responsive layout	
	layoutFnc()
	$(window).resize(function(){ 
		layoutFnc() 
	})

	// tab Init
	if($('.tabBtn').length) {
		tabMenuFnc()
	}
	
	//mouse Hover Init
	hoverFnc()

	// 시험일정 rolling
	ddayFnc()
	$('.verticalSlide').bxSlider({
		mode: 'vertical',
		auto: true,
		moveSlides : 1,
		autoControls: false,
		pager: false,
		controls:false
    });
	
	// 최근수강중인강의 rolling
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
	
	//메인 포인트 넘버 슬라이드
	if($('.oneSlider').length) {
		$('.oneSlider span').animate({
			top : "-=26"
		}, 1000, function(){
			$('.oneSlider span').css('top','0')
		})
	}
	
	/*
	//공지사항 리스트
	$('.noticeList .default').click(function(){
		var idx = $(this).parent('li').index()
		$(this).parent('li').siblings('li').find('.detail').hide()
		
		$('.noticeList').animate({scrollTop:39*idx}, 200);
		
		if($(this).next('.detail').hasClass('open')) {
			$(this).next('.detail').hide().removeClass('open')
		} else {
			$(this).next('.detail').show().addClass('open')
		}

		console.log(idx)
		
	})
	*/

	//학습질문 리스트
	$('.questionList .question .btn').click(function(){
		if($(this).hasClass('open')) {
			$(this).removeClass('open').text('자세히보기')
			$(this).parents('.question').find('.detail').hide();
		} else {
			$(this).addClass('open').text('접기')
			$(this).parents('.question').find('.detail').show();
			
		}
	})

	
	//레이어 위치값
	$.fn.layerSetFnc = function(options) {
		return this.each(function() {	
				
			var _topPosition = $(this).height()/2;
			var _leftPosition = $(this).width()/2 ;
			
			var _topMargin = 86
			var _contMargin = 89


			//레이어
			$('#noticeLayer').find('.noticeList').height( $(window).height() - 225)
			$('#scheduleLayer').find('.box').height( $(window).height() - 308 )
			$('#questionLayer').find('.questionList').height( $(window).height() - 235)
			//$('.mainWrap #questionLayer').find('.questionList').height( $(window).height() - 235 )
			$('#bookmarkLayer').find('.box').height( $(window).height() - 217)
			$('#mp3DownLayer').find('.mp3DownTb').height( $(window).height() - 235)
			$('#newlyListLayer').find('.box').height( $(window).height() - 175 )
			$('#questionWriteLayer').find('textarea').height( $(window).height() - 377 )


			$(this).css({
				//'margin-top' : -_topPosition,
				'margin-left' : -_leftPosition
			});
				
			if($('#formContinueLayer1').css('display') == 'block' || $('#formContinueLayer2').css('display') == 'block') {
				$('body').css('overflow-y','auto')
			} else {
				$('body').css('overflow-y','hidden')	
			}			

			
		});
	};

	$(window).resize(function(){ 
		$('.layerWrap').layerSetFnc();
		if($('.layerDim').css('display') === 'none'){
			$('body').css('overflow-y','auto')
		}
	})

	//레이어초기셋팅
	$('.layerWrap').layerSetFnc();
	$('body').css('overflow-y','auto')
	
	//레이어 이외영역 닫기
	$('.layerDim, .dim, .layerWrap .closeBtn a').click(function(){
		$('.layerWrap, .layerDim, .dim').hide();
		$('body').css('overflow-y','auto')
	})
	
	/*
	$.fn.hasVerticalScrollBar = function() {
        return this.get(0) ? this.get(0).scrollHeight > this.innerHeight() : false;
    }
	$('.noticeList').hasVerticalScrollBar()
	*/

	
	
	//파일form
	var $fileBox = $('.filetype');

	$fileBox.each(function() {
	var $fileUpload = $(this).find('.input-file'),
		$fileText = $(this).find('.file-text')
		$fileUpload.on('change', function() {
			var fileName = $(this).val();
			$fileText.attr('disabled', 'disabled').val(fileName);
		})
	})

});

/*
$(document).mouseup(function (e) {
	if (!$(".filterLayer, #filterLecture_btn").is(e.target) && $(".filterLayer, #filterLecture_btn").has(e.target).length === 0){
		$(".filterLayer").css("display","none");
		$("#filterLecture_btn, .btnLayer").removeClass('open')
	}	
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

	if(_screenWidth < _maxWidth && _screenWidth > _scrollWidth) {
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
			
			
	}else if (_screenWidth > _maxWidth) {
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

//toggle close js
function toggleClsoeFnc(btn, target) {
	var _btn = $(btn)
	var _target = $(target)

	_btn.removeClass('open')
	_target.hide();

	if(_target.hasClass('layerWrap')) {
		$('.layerDim').hide()
		$('body').css('overflow-y','auto')
	}
}

//tab js
function tabMenuFnc() {
	
	
	$('.tabBtn > div.active').next('div').addClass('nextTab')

	$('.tabBtn > div').click(function(){
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
$(document).on('click', '.section_link a.action' , function(e){
	var $this = $(this),
		 $target = $this.parents('.item');

	e.preventDefault();

	if ( $this.hasClass('is_view') ){
		$target.toggleClass('in').siblings().removeClass('in');
	} else if( $this.hasClass('is_close') ) {
		$target.removeClass('in');
	}
});


//교육과정안내 top메뉴 layer
function writeLayer1(){
	var str = '';
	str += '	<div class="category_list"> ';
	str += '		<dl> ';
	str += '			<dt>자격증 분야</dt> ';
	str += '			<dd> ';
	str += '				<ul> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/license2/Main.asp">공인중개사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Jutek/Main.asp">주택관리사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/blackgosi2/main_100419.asp">검정고시</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Vocation/Main.asp">직업상담사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Social/Main.asp">사회복지사1급</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/aHaengjung/Main.asp">행정사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/flow/Main_100419.asp">유통관리사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Mulyu/Main.asp">물류관리사</a></li> ';
	str += '					<li><a href="http://www2.eduwill.net/main/main?progress_cd=_101">국제무역사/무역영어</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Xat/Main.asp">전산세무회계</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Uaccount/Main.asp">재경관리사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/3nergy/">전기기능사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Quark/">전기기사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/yFire/">소방설비기사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/yFire/">소방시설관리사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/History/">한국사능력검정</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/easyHanja/">한자능력검정</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/5rp/">ERP정보관리사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/kyb/Main.asp">경비지도사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/IT2/Main.asp">IT자격증</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/doro/Main.asp">도로교통사고감정사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/1nvest/">매경TEST/TESAT</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/4teen/">청소년상담사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/6uild/">건축기사/토목기사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/8lang/">ToKL/KBS/글쓰기</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/9arden/">조경기사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/poomjil/">농산물품질관리사</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Oat/">AT자격시험</a></li> ';
	str += '					<li><a href="http://cook.eduwill.net/">한식조리기능사 <span class="icon_new"><em>새로 생긴 교육강좌</em></span></a></li> ';
	str += '				</ul>';
	str += '			</dd>';
	str += '			<dt>공무원 분야</dt> ';
	str += '			<dd> ';
	str += '				<ul> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Gov2/Main_100419.asp">9급공무원</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/7even/Main.asp">7급공무원</a></li>';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Cop/Main_100419.asp">경찰공무원</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/premain.asp?eurl=/Ten/Main_100419.asp">계리직공무원</a></li> ';
	//str += '					<li class="t2"><a href="http://www.eduwill.net/premain.asp?eurl=/officer2/Main_100419.asp">예비전력관리<br>업무담당자</a></li> ';
	str += '				</ul>';
	str += '			</dd>';
	str += '			<dt>공기업·대기업 취업</dt> ';
	str += '			<dd> ';
	str += '				<ul> ';
	str += '					<li><a href="http://www.eduwill.net/zPublic/default.asp">공기업 취업</a></li> ';
	str += '					<li><a href="http://www.eduwill.net/zPublic/default.asp">대기업 취업</a></li> ';
	str += '				</ul>';
	str += '			</dd>';
	str += '			<dt>학점은행제</dt>';
	str += '			<dd> ';
	str += '				<ul> ';
	str += '					<li><a href="http://www.studywill.net/" target="_blank" title="새 창 열림">원격평생교육원</a></li> ';
	str += '				</ul>';
	str += '			</dd>';
	str += '			<dt>B2B 교육</dt>';
	str += '			<dd> ';
	str += '				<ul> ';
	str += '					<li><a href="http://www.eduwill.net/common/company/hrd.asp" target="_blank" title="새 창 열림">콘텐츠 제휴 · 위탁교육</a></li> ';
	str += '				</ul>';
	str += '			</dd>';
	str += '			<dt>무료교육</dt>';
	str += '			<dd> ';
	str += '				<ul> ';
	str += '					<li><a href="http://free.eduwill.net/course/courseSearch.will?Navp=2&Navs=1&category_code=LN" target="_blank" title="새 창 열림">외국어</a></li>';
	str += '					<li><a href="http://free.eduwill.net/course/courseSearch.will?Navp=2&Navs=2&category_code=CT" target="_blank" title="새 창 열림">자격증/취업</a></li> ';
	str += '					<li><a href="http://free.eduwill.net/course/courseSearch.will?Navp=2&Navs=3&category_code=IT" target="_blank" title="새 창 열림">정보기술</a></li>';
	str += '					<li><a href="http://free.eduwill.net/course/courseSearch.will?Navp=2&Navs=4&category_code=BS" target="_blank" title="새 창 열림">비즈니스/경제</a></li> ';
	str += '					<li><a href="http://free.eduwill.net/course/courseSearch.will?Navp=2&Navs=7&category_code=ET" target="_blank" title="새 창 열림">기타</a></li>';
	str += '				</ul>';
	str += '			</dd>';
	str += '		</dl> ';
	str += '		<div class="layer_close"><a class="action is_close" href="javascript:;"><span>Close</span></a></div>';
	str += '	</div>';
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
	str +='					<li><a href="http://ch.eduwill.net/" target="_blank" title="새 창 열림">서울천호</a></li> ';
	str +='					<li><a href="http://db.eduwill.net/" target="_blank" title="새 창 열림">서울대방</a></li> ';
	str +='					<li><a href="http://nw.eduwill.net/" target="_blank" title="새 창 열림">서울노원</a></li> ';
	str +='					<li><a href="http://sm.eduwill.net/" target="_blank" title="새 창 열림">부산서면</a></li> ';
	str +='					<li><a href="http://bp.eduwill.net/" target="_blank" title="새 창 열림">인천부평</a></li> ';
	str +='					<li><a href="http://sw.eduwill.net/" target="_blank" title="새 창 열림">경기수원</a></li> ';
	str +='					<li><a href="http://bc.eduwill.net/" target="_blank" title="새 창 열림">경기부천</a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='			<dt>주택관리사 직영 학원</dt> ';
	str +='			<dd> ';
	str +='				<ul> ';
	str +='					<li><a href="http://dbj.eduwill.net/" target="_blank" title="새 창 열림">서울대방</a></li> ';
	str +='					<li><a href="http://nwj.eduwill.net/" target="_blank" title="새 창 열림">서울노원</a></li> ';
	str +='					<li><a href="http://smj.eduwill.net/" target="_blank" title="새 창 열림">부산서면</a></li> ';
	str +='					<li><a href="http://bpj.eduwill.net/" target="_blank" title="새 창 열림">인천부평</a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='			<dt>9급 공무원 직영 학원</dt> ';
	str +='			<dd>';
	str +='				<ul>';
	str +='					<li><a href="http://dbg.eduwill.net/" target="_blank" title="새 창 열림">서울대방</a></li> ';
	str +='					<li><a href="http://nwg.eduwill.net/" target="_blank" title="새 창 열림">서울노원</a></li> ';
	str +='					<li><a href="http://smg.eduwill.net/" target="_blank" title="새 창 열림">부산서면</a></li> ';
	str +='					<li><a href="http://bpg.eduwill.net/" target="_blank" title="새 창 열림">인천부평</a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='			<dt>경찰 공무원 직영 학원</dt>';
	str +='			<dd>';
	str +='				<ul>';
	str +='					<li><a href="http://nwc.eduwill.net/" target="_blank" title="새 창 열림">서울노원</a></li> ';
	str +='					<li><a href="http://smc.eduwill.net/" target="_blank" title="새 창 열림">부산서면</a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='			<dt>소방 공무원 직영 학원</dt>';
	str +='			<dd>';
	str +='				<ul>';
	str +='					<li><a href="http://nwgso.eduwill.net/" target="_blank" title="새 창 열림">서울노원 <span class="icon_new"><em>새로 생긴 학원</em></span></a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='			<dt>전기기사 직영 학원</dt>';
	str +='			<dd>';
	str +='				<ul>';
	str +='					<li><a href="http://dbq.eduwill.net/" target="_blank" title="새 창 열림">서울대방</a></li> ';
	str +='				</ul> ';
	str +='			</dd> ';
	str +='		</dl> ';
	str += '		<div class="layer_close"><a class="action is_close" href="javascript:;"><span>Close</span></a></div>';
	str +='	</div>';
	document.write(str);
}



