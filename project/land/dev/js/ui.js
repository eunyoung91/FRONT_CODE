$(function(){

	//common function	
	includeLayout(); //include
	bxslideFnc(); //bx슬라이드	

	$(window).resize(function(){ 
	});	
	

	

	var filter = "win16|win32|win64|mac";

	if(navigator.platform){
		if(0 > filter.indexOf(navigator.platform.toLowerCase())){

		} else {

			if($('.officeMap .lst').length >= 1) {
				$('.officeMap .lst').mCustomScrollbar({
					theme: 'minimal-dark'
				});
			}
		}
	}
	
	//input file
    /*
	var fileTarget = $('.files .upload-hidden');

	$(document).on('change', fileTarget, function(){
        if(window.FileReader){
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }

        $(this).siblings('.upload-name').val(filename);
    });
	*/
});

function includeLayout(){ 
	var includeArea = $('[data-include]'); 
	var self, url; 
	$.each(includeArea, function() { 
		self = $(this); 
		url = self.data("include"); 
		self.load(url, function() { 
			self.removeAttr("data-include"); 	
			
			//ajax success 후 ui function
			gnbFnc()			
		}); 

		if(self.attr("role") == "layer") {
			self.load(url, function() { 
				layerFnc()			
			}); 
		}
	}); 
}


function bxslideFnc(){ 	
	var bxslideArea = $('[data-bxslide]')
	var self; 

	$.each(bxslideArea, function() { 
		self = $(this);
		slide = self.data("bxslide");
		
		//bxslider option
		self.bxSlider({
			mode: slide.mode,
			auto: slide.auto,
			pause: slide.pause,
			speed: slide.speed,
			controls: slide.controls,
			pager: slide.pager,
			moveSlides: slide.moveSlides,
			slideWidth: slide.slideWidth,
			minSlides: slide.minSlides,
			maxSlides: slide.maxSlides
		});

		
	}); 
}

function layerFnc(){ 	
	var layerArea = $('[data-layer-body]')
	var self; 
	var layerClose = layerArea.find(".layerClose");	

	$.each(layerArea, function() { 
		self = $(this); 
		_top = self.data("layerBody")._top;		
		type = self.data("layerBody").type;
		dimYn = self.data("layerBody").dimYn;
		display = self.data("layerBody").display;

		
		// layer option
		switch (type) {
			case "fixed" :
				self.css({
					"position":type,
					"display":display
				});
			break;
			case "absolute" :
				self.css({
					"position":type,
					"display":display,
					"top":_top
				});
			break;
			case "custom" :
				self.css({
					"display":display
				});
			break;
			default :
				return false;
			break;
		}
		
		// 배경 dim처리 유무
		if(dimYn === "Y") {
			var dim = $("<div class='layerDim'></div>")
			self.append(dim);
		}
	
	}); 

	// close
	layerClose.on('click', function(e){
		e.preventDefault();
		$(this).parents('[data-layer-body]').hide();		
	});

	if(layerArea.find('.layerDim').length > 0) {
		$('.layerDim').on('click', function(e){
			e.preventDefault();
			$(this).parents('[data-layer-body]').hide();		
		});
	}
	
	//open
	$('[data-layerOpen-id]').on({
		"click" : function(){
			var layerId = $(this).data("layeropenId");
			$("#" + layerId).show();
			return false;			
		}
	})
	
}

function gnbFnc(){ 	
	var gnbArea = $('[data-gnb-idx]')
	var self; 

	$.each(gnbArea, function() { 
		self = $(this);
		depth1 = self.data("gnbIdx").depth1;
		depth2 = self.data("gnbIdx").depth2;

		if(depth1 === false) {
			$("#gnb li").removeClass("current")
			$("#gnb .depth2").hide()
		} else {
			$("#gnb .depth1 li").eq(depth1 - 1).addClass("current")
			
			$("#gnb .depth2").eq(depth1 - 1).show().siblings(".depth2").hide()
			$("#gnb .depth2").eq(depth1 - 1).find("li").eq(depth2 - 1).addClass("current")
		}
		
	}); 
}

