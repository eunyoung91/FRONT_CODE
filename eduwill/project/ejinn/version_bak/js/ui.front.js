$(document).ready(function(){
    //전체선택
    var $selectBtn = $('.code-select');
    $selectBtn.bind({
        'click' : function(e){
            e.preventDefault();
            var $targetXmp= $(this).parent().next();
            var xmpID = $(this).parent().parent().attr('id')+'_xmp';
            $targetXmp.attr('id',xmpID);
            selectALL(xmpID);
        }
    });

    //include
    includeLayout(); 

    //gnb scroll
    $(window).scroll(function(){
        if($(window).scrollTop() == 0) {
            $("#header").removeClass('scroll-fix');
        } else {
            $("#header").addClass('scroll-fix'); 
        }
    });

    //search-form
    $('.search-form .search-input').focus(function() {
        $('.search-list').show();
        $(this).parents('.focus-box').addClass('focus-in');
    });
    $('.search-form .search-input').blur(function() {
        $('.search-list').hide();
        $(this).parents('.focus-box').removeClass('focus-in');
    });


    //실시간검색 rolling
    if($('.realtime .rolling ul').length) {
		$('.realtime .rolling ul').bxSlider({
			mode: 'vertical',
			auto: true,
			moveSlides : 1,
			autoControls: false,
			pager: false,
			controls:false 
		});
    }

    $('.realtime .rolling').on('mouseenter', function(){
        $(this).next('.layer').fadeIn(100);
    });
    $('.realtime .layer').on('mouseleave', function(){
        $(this).fadeOut(100);
    });
    
    
    
    

    //footer
    var $window = $(window),
        $document = $(document),
        $base = $('html, body');

    // Open Family site list
    $document.on('click', '#viewList', function (e) {
        var $this = $(this),
        $parent = $this.parent();

        e.preventDefault();
        $parent.toggleClass('in').siblings().removeClass('in');

        if ($parent.hasClass('in')) {
            $("body").click(function (e) {
                $parent.each(function () {
                if (!$parent.has(e.target).length) {
                    $parent.removeClass('in')
                }
                })

            });
        }
    });

    // Top Button event
    $document.on('click', '#moveTop', function (e) {
        e.preventDefault();

        $base.animate({
        scrollTop: 0
        }, 500);
    });
    
});

//전체선택
function selectALL(element){
    var doc = document
        , text = doc.getElementById(element)
        , range, selection
    ;    
    if (doc.body.createTextRange) {
        range = document.body.createTextRange();
        range.moveToElementText(text);
        range.select();
    } else if (window.getSelection) {
        selection = window.getSelection();        
        range = document.createRange();
        range.selectNodeContents(text);
        selection.removeAllRanges();
        selection.addRange(range);
    }
}

//include
function includeLayout(){ 
	var includeArea = $('[data-include]'); 
	var self, url; 
	$.each(includeArea, function() { 
		self = $(this); 
		url = self.data("include"); 
		self.load(url, function() { 
			self.removeAttr("data-include"); 	
			
			//ajax success 후 ui function
						
		});
		if(self.attr("role") == "layer") {
			self.load(url, function() { 
				
			}); 
		}
	}); 
}
