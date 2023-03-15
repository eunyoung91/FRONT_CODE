window.onload = function(){

// mobile top 슬라이더
$('.slick').on('init', function(event, slick) {
    $(this).append('<div class="slick-counter" data-toggle="modal" data-target=".modal-banner"><span class="current"></span> / <span class="total"></span></div>');
    $(this).find('.current').text((slick.currentSlide + 1));
    $(this).find('.total').text(slick.slideCount);
})
.slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: false,
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
    $(this).find('.current').text((nextSlide + 1));
});


}


$(document).mousemove(function(e) {     
    
});

$(document).ready(function(){

    $(window).scroll(function() { 
                
       
    });

});

        