 $(document).ready(function(){
	//Main banner rolling
	$('.item-summary-slick, .item-banner-slick').slick({
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
	
	//Main news rolling
	$('.item-news-slick').slick({
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
