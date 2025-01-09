

   
    
//load event
$(window).load(function(){    
    // Hide Header on on scroll down
   var didScroll;
   var lastScrollTop = 0;
   var delta = 5;
   var navbarHeight = $('.hd-wrap').outerHeight();

   $(window).scroll(function(event){
       didScroll = true;
   });

   setInterval(function() {
       if (didScroll) {
           hasScrolled();
           didScroll = false;
       }
   }, 250);

   function hasScrolled() {
       var st = $(this).scrollTop();
       
       // Make sure they scroll more than delta
       if(Math.abs(lastScrollTop - st) <= delta)
           return;
       
       // If they scrolled down and are past the navbar, add class .nav-up.
       // This is necessary so you never see what is "behind" the navbar.
       if (st > lastScrollTop && st > navbarHeight){
           // Scroll Down
           $('.hd-wrap').removeClass('nav-down').addClass('nav-up');
           //$('.item-top').removeClass('nav-down').addClass('nav-up');
       } else {
           // Scroll Up
           if(st + $(window).height() < $(document).height()) { 
               //$('.item-top').removeClass('nav-up').addClass('nav-down');
           }
           if(st === 0) {
               $('.hd-wrap').removeClass('nav-up').addClass('nav-down');
               
           }
       }
       
       lastScrollTop = st;
   }


   // gnb
   $(".gnb-wrap .gnb a").on("mouseenter", function(){
       $(".gnb-wrap-expand").fadeIn(200);
       $(".section-item-top .item-list-top").hide();
   });
   $(".gnb-wrap").on("mouseleave", function(){
       $(".gnb-wrap-expand").fadeOut(200);
       $(".section-item-top .item-list-top").show();
   });
   

   // board-list-collapse
    $(".board-list-collapse .list").on("click", function(){
        $(this).parent("li").toggleClass("active").siblings("li").removeClass("active");
        /*
        if($(this).parent("li").hasClass("active")) {
           var scrollTop = $(this).offset().top;
           $("html, body").animate( { scrollTop : scrollTop }, 100 );
        }
        */
    });

     //table-list-collapse
     $(document).on('click','.table-list-collapse .item-q', function(){
		if($(this).hasClass("in")){
			$(this).removeClass('in').next('.item-a').removeClass('in');
		}else{
			//이전 게시물 모두 닫은 후
			$('.table-list-collapse .item-q').each(function(){
				$(this).removeClass('in').next('.item-a').removeClass('in');
			});
		
			$(this).toggleClass('in').next('.item-a').toggleClass('in');
		}
		
    });
   

   // list rolling
   if($(".item-list-rolling").length > 0) {       
       setInterval(function() { 
        var rollingItem = $('.item-list-rolling:not(".notUsedCommonJs")'); 
           var self; 
           $.each(rollingItem, function() { 
               self = $(this); 
           
                if(self.find("li:last-child").hasClass("active")) {
                    self.find('li:first-child').addClass("active").siblings("li").removeClass("active");
                }  else {
                    self.find('li.active').next("li").addClass("active").siblings("li").removeClass("active");
                }
            });
       }, 2000);

       setInterval(function() { 
            $('.section-item1 .roll-over').toggleClass("up")
        }, 10000);
   }

   $(window).scroll(function() {
        var limit = $(".footer-wrap").height();
        if ($(window).scrollTop() >= $(document).height() - $(window).height() -limit ) {
            $(".footer-wrap .item-top").addClass("limit")
        } else {
            $(".footer-wrap .item-top").removeClass("limit")
        }

        if($(window).scrollTop() > 200) {
            $(".footer-wrap .item-top").fadeIn()
        } else {
            $(".footer-wrap .item-top").fadeOut()
        }
    });

   // 모바일 네비
   $('.modal-menu .item-nav a').on("click", function(){
        $(this).parent().addClass("active").siblings("li").removeClass("active");
        var target = $(this).data("target");
        var scroll = ($('.item-nav-scroll').scrollTop() + $("#" + target).offset().top) - 172 - $(window).scrollTop();
        $(".item-nav-scroll").animate( { scrollTop : scroll }, 100 );
    });     
	/*
    $('div.modal').on('shown.bs.modal', function() {
        var modal = this;
        var hash = modal.id;
        window.location.hash = hash;
        window.onhashchange = function() {
            if (!location.hash){
                $(modal).modal('hide');
            }
        }
    });
    
    $('div.modal').on('hide.bs.modal', function() {
        var hash = this.id;
        history.pushState('', document.title, window.location.pathname);
    });
	*/
    $('.modal-search').on('shown.bs.modal', function(e){
        $(".modal-search .search-bar .form-control").focus();
        $(".modal-search .modal-body").scrollTop(0);   
        $("body").addClass("modal-fixed");      
    });
    
    $('.modal-search').on('hide.bs.modal', function(e){
        $(".modal-search .search-bar .form-control").blur();
        $("body").removeClass("modal-fixed");
    }); 
    $('[data-target=".modal-search"]').on('touchstart click', function(event){
        $(".modal-search .search-bar .form-control").focus();        
    })
    
    // appbar hidden
    $("input[type='text'], textarea").on("focus", function(){ 
        $(".item-actionbar").addClass("none");
        $(".footer-wrap .item-top").hide();
     }).blur(function(){
        $(".item-actionbar").removeClass("none");
        $(".footer-wrap .item-top").show();
     });

    

});


$(document).ready(function(){
    includeLayout();

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

    $(document).mouseup(function (e){
        var targetPopup = $(".layer-box, .search-bar");
        var LayerPopup = $(".layer-box");
        if(targetPopup.has(e.target).length === 0){
            LayerPopup.fadeOut();

        }
    });

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

     //snow
    // if($("#snow").length > 0) {
    //     var w = window.innerWidth , h = window.innerHeight,
    //     container = document.getElementById('snow'),
    //     sizes = ["Small", "Medium", "Large"],
    //     types = ["round", "star", "real", "sharp", "ring"],
    //     snowflakes = 100;

    //     for (var i = 0; i < snowflakes; i++) {
    //             var snowflakeDiv = document.createElement('div');
    //             var sizeIndex = Math.ceil(Math.random() * 3) -1; 
    //             var size = sizes[sizeIndex]; 
    //             var typeIndex = Math.ceil(Math.random() * 5) -1;
    //             var type = types[typeIndex];
    //             TweenMax.set(snowflakeDiv, {attr: {class: type + size}, x: R(0,w), y: R(0, 0) });
    //             container.appendChild(snowflakeDiv);
    //             snowing(snowflakeDiv);
    //     }
                
    //     function snowing(element) {
    //         TweenMax.to(element, R(15,36), {y: h+100, ease: Linear.easeNone, repeat:-1, delay: -15});
    //         TweenMax.to(element, R(8,24), {x: '+=100', repeat: -1, yoyo: true, ease: Sine.easeInOut});
    //         TweenMax.to(element, R(4,24), {rotation: R(0,360), repeat: -1, yoyo: true, ease:Sine.easeInOut, delay: -5});
    //     };

    //     function R(min,max) {
    //         return min + Math.random() * (max-min)
    //     };
    // }
    
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

// layer action
function openLayer(obj, target) {
    var _this = $(obj);
    var _target = $(target);
    $(".layer-box").fadeOut(100);
    _target.fadeIn(100);
}
function toggleLayer(obj, target) {
    var _this = $(obj);
    var _target = $(target);
    $(".layer-box").fadeOut(100);
    if ( _target.css('display') === 'none' ) { 
        _target.fadeIn(); 
    } else { 
        _target.fadeOut(); 
    }
}
function closeLayer(obj) {
    var _this = $(obj);
    _this.parents(".layer-box").fadeOut(100);
}
function boardAccordionNav(obj) {
    var _this = $(obj);
    _this.toggleClass('on').next('.a2').slideToggle(100);
    return false;
}


