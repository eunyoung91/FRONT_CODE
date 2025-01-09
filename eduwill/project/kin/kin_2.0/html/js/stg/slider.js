
$(document).ready(function(){
    // default 슬라이더
    $('.item-slick-default').slick({
        infinite: true, 
        arrows: false,
        dots: true,
        fade: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        speed:500, 
    });    
	
	$('.item-slick-default-2').slick({
        infinite: true, 
        arrows: false,
        dots: true,
        fade: false,
        slidesToShow: 2,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 4500,
        speed:500, 
    }); 

    // mobile responsive 슬라이더
    $('.item-responsive-slick').slick({
        infinite: true, 
        arrows: false,
        dots: false,
        fade: false,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay: false,
        autoplaySpeed: 3000,
        speed:500, 
        centerMode: true,
        
        responsive: [
            {
                
                breakpoint: 1100,
                settings: {
                    infinite: false,
                    slidesToShow: 1,
                }
            },
            
        ]
    });
    
    // 공통 footer 공지사항
    $('.footer-wrap .item-news-slick, .eduwill-header .item-news-slick').slick({
        infinite: true, 
        arrows: false,
        dots: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed:1500,
        speed:1000, 
        vertical:true,
    });

    // mobile footer 검색
    $('.search-box').slick({
        infinite: true, 
        arrows: false,
        dots: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: false,
        autoplaySpeed:1500,
        speed:300, 
        centerMode: true,
    });

    //pc 메인 딤 배너 슬라이더
    $('.popup-banner-dim .slick').on('init', function(event, slick) {
        $(this).append('<div class="slick-counter"><span class="current"></span> / <span class="total"></span></div>');
        $(this).find('.current').text(+ (slick.currentSlide + 1));
        $(this).find('.total').text(+ slick.slideCount);
    })
    .slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: false,
        autoplaySpeed: 2000,
        fade: false,
        infinite: true,
        dots: false,
        arrows: true,
        prevArrow : "<button type='button' class='slick-prev'>이전</button>",
        nextArrow : "<button type='button' class='slick-next'>다음</button>",
        customPaging: function(slider, i) { 
            // console.log($(slider.$slides[i]).html());
        }
    })
    .on('beforeChange', function(event, slick, currentSlide, nextSlide) {
        $(this).find('.current').text(+ (nextSlide + 1));
    });
    // 배너이외영역 click close
    $('html').click(function(e){ 
        if($(e.target).parents('.popup-banner-dim-inner').length < 1){ 
            $('.popup-banner-dim').fadeOut(100);
        } 
    });

    // mobile top 슬라이더
    $('.item-summary-slick-m').on('init', function(event, slick) {
        $(this).append('<div class="slick-counter" data-toggle="modal" data-target=".modal-banner"><span class="current"></span> / <span class="total"></span></div>');
        $(this).find('.current').text("0" + (slick.currentSlide + 1));
        $(this).find('.total').text("0" + slick.slideCount);
    })
    .slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        fade: false,
        infinite: true,
        dots:true,
        arrows:false,
        customPaging: function(slider, i) { 
            //console.log($(slider.$slides[i]).html());
        },
    })
    .on('beforeChange', function(event, slick, currentSlide, nextSlide) {
        $(this).find('.current').text("0" + (nextSlide + 1));
    });

    
	// 모바일 지인씨 PICK! rolling
    var mHeight = parseInt($(".ranking-list").css("height"));
    var num = 0;
    function display(){
        $("#ranking-list1:not('.notUsedCommonJs')").animate({
            "top" : "-"+mHeight+"px"
        },5000, "easeOutExpo",function(){
            $(this).css("top", "0px");
            $(this).append($(this).find("li:lt(5)"));
        });
        if(num == 0){
            num = 1;
        }else if(num == 1){
            // 20210203 modify
            num = 2;
        }else{
            num = 0;
        }
        $(".ranking_bnr a").hide();
        $(".ranking_bnr a").eq(num).fadeIn();
        $(".go_btn_wrap a").hide();
        $(".go_btn_wrap a").eq(num).fadeIn();
    }
    function auto(){
        display();
    }
	
    var sid = setInterval(auto, 5000);

    $(".ranking_list").on("mouseenter", function(){
        clearInterval(sid);
    });

    $(".ranking_list").on("mouseleave", function(){
        sid = setInterval(auto, 5000);
    });
	
	$('.item-slick-default-arrow').slick({
        infinite: true, 
        arrows: true,
        dots: true,
        fade: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        speed:1000, 
    });

    $('.item-knowledge-slick').on('init', function(event, slick) {
        $(this).append('<div class="slick-counter" data-toggle="modal" data-target=".modal-banner"><span class="current"></span> / <span class="total"></span></div>');
        $(this).find('.current').text(slick.currentSlide + 1);
        $(this).find('.total').text(slick.slideCount);
    })
    .slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        fade: false,
        infinite: true,
        dots:false,
        arrows:false,
        customPaging: function(slider, i) { 
            //console.log($(slider.$slides[i]).html());
        },
    })
    .on('beforeChange', function(event, slick, currentSlide, nextSlide) {
        $(this).find('.current').text(nextSlide + 1);
    });
		
});


