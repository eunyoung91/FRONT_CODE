
$(document).ready(function(){
    
    includeLayout();
    headerAffix();
    headerInit();
    toggleInit();

    
    $('.sub-question .q-title input').focus().after('<label></label>');
    /*
    $('.sub-question .q-title input').on('keydown', function(){
        $('.sub-question .q-title label').hide();
    })
    $('.sub-question .q-title label').on('click', function(){
        $('.sub-question .q-title label').hide();
        $('.sub-question .q-title input').focus();
    });*/

    //달력
    if($('.datepicker').length > 0) { 
        $('.datepicker').datepicker({
            calendarWeeks: false,
            todayHighlight: true,
            autoclose: true,
            format: "yyyy-mm-dd",
            language: "kr"
        });
    }

    //실시간 검색어 슬라이드
    if($('#bxslider-realtime').length > 0) {
        $('#bxslider-realtime').bxSlider({
            mode: 'vertical',// 가로 방향 수평 슬라이드
            speed: 300,        // 이동 속도를 설정
            pager: false,      // 현재 위치 페이징 표시 여부 설정
            moveSlides: 1,     // 슬라이드 이동시 개수
            auto: true,        // 자동 실행 여부
            autoHover: true,   // 마우스 호버시 정지 여부
            controls: false    // 이전 다음 버튼 노출 여부
        });
    }

    //메인중간배너
    if($('#bxslider-main').length > 0) {
        $('#bxslider-main').bxSlider({
            mode: 'horizontal',// 가로 방향 수평 슬라이드
            speed: 300,        // 이동 속도를 설정
            pager: false,      // 현재 위치 페이징 표시 여부 설정
            moveSlides: 1,     // 슬라이드 이동시 개수
            auto: true,        // 자동 실행 여부
            autoHover: true,   // 마우스 호버시 정지 여부
            controls: false    // 이전 다음 버튼 노출 여부
        });
    }

    //모바일용 베스트질문
    if($('#bxslider-bestqna').length > 0) {
        $('#bxslider-bestqna').bxSlider({
            mode: 'horizontal',// 가로 방향 수평 슬라이드
            speed: 300,        // 이동 속도를 설정
            pager: true,      // 현재 위치 페이징 표시 여부 설정
            moveSlides: 1,     // 슬라이드 이동시 개수
            auto: true,        // 자동 실행 여부
            autoHover: true,   // 마우스 호버시 정지 여부
            controls: false    // 이전 다음 버튼 노출 여부
        });
    }

    //메인 리스트형/컨텐츠형 분리
    $('.cont .util .type button').on('click', function(){
        var dataType= $(this).data('type');
        $(this).parent('.type').attr('data-type', dataType);
        $(this).parents('.util').next('.data').attr('data-type', dataType);
    });

    //메인 컨텐츠형 답변버튼
    $('.section-qnatab .data li').mouseenter(function(){
        $(this).find('.link').addClass('in');
    });
    $('.section-qnatab .data li').mouseleave(function(){
        $(this).find('.link').removeClass('in');
    });

    //질문,답변보기 댓글 toggle
    $('.sub-question .btn-comment').on('click', function(){
        $(this).toggleClass('in').parents('.action').next('.comment-body').toggleClass('in');
        $(this).nextAll().find('.alert').hide();
    });

    $('.sub-question .btn-urlcopy, .sub-question .btn-clipping').on('click', function(){
		$('.sub-question .comment-body').removeClass('in');
	});

    //질문옵션선택
    $('.sub-question .option .option-btn label').on('click', function(){
        $(this).parents('tr').siblings('tr').find('.option-layer').removeClass('in');

        var target = $(this).data('target');
        $(target).toggleClass('in').siblings('.option-layer').removeClass('in');
        if(target == undefined) {
            $(this).parent().next('.option-layer').removeClass('in');
        }
    });
    
    $('body').click(function(e) { 
        if(!$('.sub-question .option').has(e.target).length) { 
            $('.option-layer').removeClass('in');
        }
    });

    //item toggle
    $('.sub-guide .item-q').on('click', function(){
        $(this).toggleClass('in').next('.item-a').toggleClass('in');
    });

    //파일찾기
    var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }
        $(this).siblings('.upload-name').val(filename);
    });

    //마이페이지 뱃지
    $('.sub-mypage .badge-in li').on('mouseenter', function(){
        $(this).find('.tooltip-in').addClass('in');
        $(this).siblings('li').find('.tooltip-in').removeClass('in');
    })
    $('.sub-mypage .badge-in').on('mouseleave', function(){
        $('.tooltip-in').removeClass('in');
    })

    //마이페이지 프로필관리버튼
    $('.sub-mypage .btn-profile').on('click', function(){
        $('.sub-mypage .list .tab-link a[id=link-tab7]').parent().addClass('active').siblings().removeClass('active');
    });

    //게시물신고하기
    $('.popup-report .item-q input').on('click', function(){
       if($(this).is(':checked')) {
           $(this).parents('.item-q').addClass('in').next('.item-a').addClass('in');
       }
    });
    $('.popup-report .item-q .btn-close').on('click', function(){
        if($(this).parents('.item-q').hasClass('in')) {
            $(this).parents('.item-q').removeClass('in').next('.item-a').removeClass('in');
        } else {
            $(this).parents('.item-q').addClass('in').next('.item-a').addClass('in');
        }
     });

    
});

//scroll event
$(window).scroll(function(){
    headerAffix();
});

function includeLayout(){ 
	var includeArea = $('[data-include]'); 
	var self, url; 
	$.each(includeArea, function() { 
		self = $(this); 
		url = self.data('include'); 
		self.load(url, function() {

		}); 

		if(self.attr('role') == 'header') {
			self.load(url, function() { 
                headerInit();
                toggleInit();
			}); 
		}
	}); 
}

function toggleInit() {
    var collapseToggle = $('[data-hover]');

	$.each(collapseToggle, function() {
        var collapseTarget = $(this).data('target');

        collapseToggle.mouseenter(function(event){
            var collapseTarget = $(this).data('target');
            $(collapseTarget).addClass('in');
            event.preventDefault();
        });

        $(collapseTarget).mouseleave(function(event){
            $(collapseTarget).removeClass('in');
            event.preventDefault();
        });
    });

}

function headerAffix() {
    if($(window).scrollTop() == 0) {
        $('#header').removeClass('affix-top');
    } else {
        $('#header').addClass('affix-top');
    }
}

function headerInit() {

    //검색 포커스 액션
    $('#header .search .form-control').on('focus', function(){
        $('#header').addClass('in');
        $('#header .search .glyphicon').addClass('in');
    });

    $('body').click(function(e) { 
        if(!$('#header').has(e.target).length) { 
            $('#header').removeClass('in'); 
            $('#header .search .glyphicon').removeClass('in');
        }
    });
    
    $('#header .btn-close').on('click', function(){
        $(this).parents('.in').removeClass('in');
    });
    
}

