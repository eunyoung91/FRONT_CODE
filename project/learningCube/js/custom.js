

//load event
$(window).load(function(){    
    if($(window).scrollTop() > 0) {
        $('.hd-wrap').addClass('sticky-fix')
    } else {
        $('.hd-wrap').removeClass('sticky-fix')
    }
});


$(document).ready(function(){
    includeLayout();

    //달력
    // if($('.datepicker').length > 0) { 
    //     $('.datepicker').datepicker({
    //         calendarWeeks: false,
    //         todayHighlight: true,
    //         autoclose: true,
    //         format: "yyyy-mm-dd",
    //         language: "kr"
    //     });  
    // }

    //파일선택
    var fileTarget = $('.filebox .upload-hidden');
    fileTarget.on('change', function(){
        if(window.FileReader){
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }

        $(this).siblings('.upload-name').val(filename);
    });

    // dropdown
    $(document).mouseup(function (e){
        var targetPopup = $(".dropdown");
        if(targetPopup.has(e.target).length === 0){
            targetPopup.removeClass("open");
        }
    });
    var dropdownTarget = $('.dropdown .btn');
    dropdownTarget.on('click', function(e){        
        $(this).parent().toggleClass("open");
        dropdownTarget.not(this).parent().removeClass("open");
    });

    $(".dropdown-select li").on('click', function(){
        $(this).addClass("select").siblings("li").removeClass("select")
    });

    $(window).scroll(function(){
		if($(window).scrollTop() > 0) {
			$('.hd-wrap').addClass('sticky-fix')
		} else {
			$('.hd-wrap').removeClass('sticky-fix')
		}
	})

    if($('.visual-slick').length > 0) {
		$('.visual-slick').on('init', function(event, slick) {
			$(this).append('<div class="slick-counter"><span class="current"></span><span class="slash"> / </span><span class="total"></span></div>');
			$('.current').text(slick.currentSlide + 1);
			$('.total').text(slick.slideCount);
		})
		.slick({
			slidesToShow: 1,
			slidesToScroll: 1,
			autoplay: true,
			autoplaySpeed: 7000,
			fade: true,
			infinite: true,
			dots:false,
			customPaging: function(slider, i) { 
				//console.log($(slider.$slides[i]).html());
			},
		})
		.on('beforeChange', function(event, slick, currentSlide, nextSlide) {
			$('.current').text(nextSlide + 1);
		});
	}

    if($('.reservation-slick').length > 0) {
        $('.reservation-slick').on('init', function(event, slick, nextSlide) {
            // if(slick.currentSlide == 0) {
            //     $(".slick-prev").hide();
            // }
		})
		.slick({
            infinite: false, 
            arrows: true,
            dots: false,
            fade: false,
            slidesToShow: 5,
            slidesToScroll: 1,
            autoplay: false,
            autoplaySpeed: 3000,
            speed:500, 
            responsive: [
                {
                    breakpoint: 1300,
                    settings: {
                        infinite: false,
                        slidesToShow: 4,
                    },
                },
                {
                    breakpoint: 1000,
                    settings: {
                        infinite: false,
                        slidesToShow: 2,
                    },
                },
                {
                    breakpoint: 600,
                    settings: {
                        infinite: false,
                        slidesToShow: 1,
                    },
                },
                
            ]
        }).on('beforeChange', function(event, slick, currentSlide, nextSlide) {
            // if(nextSlide == 0) {
            //     $(".slick-prev").fadeOut();
            // } else {
            //     $(".slick-prev").fadeIn();
            // }

            // if((slick.slideCount - 6) < nextSlide ) {
            //     $(".slick-next").fadeOut();
            // } else {
            //     $(".slick-next").fadeIn();
            // }

            // console.log(slick.slideCount -6)
            // console.log(nextSlide)
		});
	}
    

    var shape1 = new TweenMax.to('.icon-pointer', 0.5, {y: -10, x: -5, repeat:-1, yoyo:true, ease: Power3.easeOut})
});

function includeLayout() { 
    var includeArea = $('[data-include]'); 
    var self, url; 
    $.each(includeArea, function() { 
        self = $(this); 
        url = self.data("include"); 
        self.load(url, function() { 
            self.removeAttr("data-include"); 
        }); 
    }); 
    
}

// gotop
function goTopFnc() {
    $("html, body").animate( { scrollTop : 0 }, 100 );
    return false;
}

