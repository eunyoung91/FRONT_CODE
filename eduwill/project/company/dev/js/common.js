$(function(){
	
	/******** À±¸®°æ¿µ *********/

	//top rolling
	$('#company_item01 .bg_rolling').bxSlider({
		mode: 'fade',
		speed : 1500,
		auto: true,
		pause: 4000,
		moveSlides : 1,
		autoControls: false,
		pager: false,
		controls:false 
	});

	//start action
	$('#company_item01 .item01 .sprite').addClass("action")

	$(window).scroll(function(){
		var value = $(this).scrollTop();
		
		//gnb scroll
		var gnbScroll = $("#company_item01 #section01").offset().top
		if(value > gnbScroll - 70) {
			$("#company_item01 #gnb").addClass("scroll").fadeIn(500)
		} else if (value > 70){
			$("#company_item01 #gnb").hide()
		} else {
			$("#company_item01 #gnb").removeClass("scroll").show()
		}
		
		//content action
		$('#company_item01 .sprite').each(function(index) {
			var $sprite = $(this);				

			if($sprite.offset().top - 700 < value) {
				 $sprite.addClass("action")
			} else {
				 $sprite.removeClass("action")
			}			
		});		
	});

	/******** À±¸®°æ¿µ *********/



})
