//load event

$(document).ready(function(){
	
    includeLayout();
    //headerAffix();
    //headerInit();
	$("#header").headroom();
    toggleInit();
    $('.sub-question .q-title input').after('<label></label>');
    byteInit();
	infiniteClass();

	//모바일 질문하기 toggle
    $('.sub-question .text-input .area').on('focus', function(){
        $("#header .btn-link .btn-q").addClass('out');
    });
    $('.sub-question .text-input .area').on('blur', function(){
        $("#header .btn-link .btn-q").removeClass('out');
    });


	//메인중간배너
    if($('#bxslider-main').length > 0) {
        $('#bxslider-main').bxSlider({
            mode: 'horizontal',
            speed: 300,        
            pager: ($("#bxslider-main li").length < 2) ? false:true,      
            moveSlides: 1,     
            auto: ($("#bxslider-main li").length < 2) ? false:true,
			//auto: false,
            autoHover: true,   
            controls: false    
        });
    }

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
    $('.cont .util .type button').click(function(){
        var dataType= $(this).data('type');
        $(this).parent('.type').attr('data-type', dataType);
        $(this).parents('.util').next('.data').attr('data-type', dataType);
    });

    //메인 컨텐츠형 답변버튼
    $(document).on('mouseenter', '.section-qnatab .data li', function(){
        $(this).find('.link').addClass('in');
    });
    $(document).on('mouseleave', '.section-qnatab .data li', function(){
        $(this).find('.link').removeClass('in');
    });

    //질문,답변보기 댓글 toggle
    $('.sub-question .btn-comment').on('click', function(){
		$('.text-input').show();
        $(this).toggleClass('in').parents('.action').next('.comment-body').toggleClass('in');
		$(this).nextAll().find('.alert').hide();
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
    $(document).on('click','.sub-guide .item-q', function(){
		if($(this).hasClass("in")){
			$(this).removeClass('in').next('.item-a').removeClass('in');
		}else{
			//이전 게시물 모두 닫은 후
			$('.sub-guide .item-q').each(function(){
				$(this).removeClass('in').next('.item-a').removeClass('in');
			});
		
			$(this).toggleClass('in').next('.item-a').toggleClass('in');
		}
		
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
    $(document).on('click','.popup-report .item-q input', function(){
		//이전 게시물 모두 닫은 후
		$('.popup-report .item-q').each(function(){
			$(this).removeClass('in').next('.item-a').removeClass('in');
		});	
		
		
       if($(this).is(':checked')) {
           $(this).parents('.item-q').addClass('in').next('.item-a').addClass('in');
       }
    });
	
    $(document).on('click','.popup-report .item-q .btn-close', function(){
		
		var obj = $(this).parents('.item-q');
		var index = $('.item-q').index(obj);
		
		//이전 게시물 모두 닫은 후 
		$('.popup-report .item-q').each(function(){
			if( $('.item-q').index($(this)) != index ){
				$(this).removeClass('in').next('.item-a').removeClass('in');
			}
			
		});	
		
        if(obj.hasClass('in')) {
            obj.removeClass('in').next('.item-a').removeClass('in');
        } else {
            obj.addClass('in').next('.item-a').addClass('in');
        }
     });

    
});

//scroll event
$(window).scroll(function(){
    //headerAffix();
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

function byteInit() {
    var textarea = $("textarea.area");
    $.each(textarea, function() {        
        $(this).on('keyup', function(){
            if($(this).val().length > 0) {
                $(this).next().find('u').addClass('in')
            } else {
                $(this).next().find('u').removeClass('in')
            }
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


function infiniteClass() {
    var infinite;
    var num = 0;

    infinite = setInterval(function(){   // 반복하기

        $('#aside .section-recommend ul li').eq(num).addClass('currunt').siblings().removeClass('currunt');
        if (num == $('#aside .section-recommend ul li').length ) { 
            num = -1;
        }
        num++;
    },1000);
}