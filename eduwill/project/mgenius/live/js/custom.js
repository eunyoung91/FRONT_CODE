
//load event
$(window).load(function(){  
    

});


$(document).ready(function(){
    includeLayout();

    $(".datepicker, .input-piker").on('click', function(){
        $(this).blur();
    })

    
    
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

    //달력
    $('.datepicker').datepicker({
        calendarWeeks: false,
        todayHighlight: true,
        autoclose: true,
        format: "yyyy-mm-dd",
        language: "kr",
    });

    $('.datepicker-month').datepicker({
        startView: 1,
        minViewMode: 1,
        calendarWeeks: false,
        todayHighlight: true,
        autoclose: true,
        format: "yyyy년 mm월",
        language: "kr",
    });

    $(window).scroll(function() {
        if($(window).scrollTop() > 163) {
            $(".wrap-main .hd-wrap").addClass("sticky");
        } else {
            $(".wrap-main .hd-wrap").removeClass("sticky");
        }

        if($(window).scrollTop() > 0) {
            $(".wrap-sub .hd-wrap").addClass("sticky");
        } else {
            $(".wrap-sub .hd-wrap").removeClass("sticky");
        }

        if($(window).scrollTop() > 72) {
            $(".wrap-apprv .hd-wrap").addClass("sticky-apprv");
        } else {
            $(".wrap-apprv .hd-wrap").removeClass("sticky-apprv");
        }

        
    });

    $(".modal").scroll(function() {
        if($(".modal-content").offset().top < 48) {
            $(".modal-header").addClass("sticky");
        } else {
            $(".modal-header").removeClass("sticky");
        }
    })

    $('.item-slick-default').slick({
        infinite: true, 
        arrows: false,
        dots: true,
        fade: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: false,
        autoplaySpeed: 3000,
        speed:500, 
    });

    $('.item-slick-vertical').slick({
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
});

function includeLayout() { 
    var includeArea = $('[data-include]');     
    var self, url, title; 
    $.each(includeArea, function() { 
        self = $(this); 
        url = self.data("include"); 
        self.load(url, function() { 
            self.removeAttr("data-include"); 
            
            title = self.data("title");
            $(".sub-title").html(title);
        }); 
        
        
    }); 
    
}


