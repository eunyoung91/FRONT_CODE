$(function(){

    var _window = $(window),
        body = $("body"),
        tabNav = $(".tab-nav"),
        tabBtnList = $(".tab-button-list");

    // GNB (M)
    var gnb_m_d1Link = $("#gnb_m .gnb_depth_1 > li > span");
    gnb_m_d1Link.click(function(e){
        gnb_m_d1Link.removeClass("focus");
        $(this).addClass("focus");
    });

    // GNB (D)
    var gnb_d_d1Link = $("#gnb_d .gnb_depth_1 > li > .link");
    gnb_d_d1Link.each(function(e){
        var link = $(this);
        // 서브 메뉴가 있을 경우
        if(link.next(".gnb_depth_2").length > 0){
            link.addClass("dropdown");
        }
    });
    gnb_d_d1Link.on("mouseenter", function(e){
        gnb_d_d1Link.removeClass("hover");
        $(this).addClass("hover");
		if($(this).hasClass("no-depth")){
			$('.gnb-bg').hide();
		}else{
			$('.gnb-bg').show();
		}
    });
    $("#gnb_d .gnb_depth_1").on("mouseleave", function(e){
        gnb_d_d1Link.removeClass("hover");
		$('.gnb-bg').hide();
    });

    // SIDEBAR
    $(".sidebar-open").click(function(e){
        body.addClass("sidebar-visible");
    });
    $(".sidebar-close").click(function(e){
        body.removeClass("sidebar-visible");
    });
    new Swiper("#sidebar .banner .slider", {
        observer:true,
        observeParents:true,
        autoplay:{
            delay:4000,
            disableOnInteraction:false
        },
        loop:true,
        pagination:{
            el:"#sidebar .banner .slider_pagination",
            type:"bullets"
        }
    });

    // PAGE BAR
    $(".page-bar .back").click(function(e){
        history.back();
    });

    // TAB NAV
    if(tabNav.length > 0){
		new Swiper(".tab-nav", {
			observer:true,
			observeParents:true,
			freeMode: true,
			slidesPerView: "auto",
			breakpoints:{
				768:{
					slidesPerView: "auto",
					noSwiping: true
				}
			}
		}).slideTo(tabNav.find(".active").parent().index(), 0, false);
    }
	$(window).resize(function(){
		var _tabIdx = $('.tab-nav-new .active').parent().index();
		var _tabWid = $('.tab-nav-new > ul > li').width();
		if($(window).width() <= 768) {
			$('.tab-nav-new> ul > li').each(function(){
				var _left = _tabWid * _tabIdx;
				$('.tab-nav-new> ul').scrollLeft(_left);
			});
		}
	}).resize();
	//2022-10-11 TAB RENEWAL
	$('.tab-nav-new button').on('click', function () {
		$('.tab-nav-new').toggleClass('open');
		$('.tab-nav-tag').toggleClass('open');

		//딤높이
		var _moHeight01 = $('.tab-nav-tag').outerHeight();
		var _moHeight02 = $('.contents_header').outerHeight();
		var _moHeight03 = $('#header_m').outerHeight();
		$('.tab-dim').css('top', _moHeight01 + _moHeight02 + _moHeight03);

		$('.tab-dim').toggleClass('show');
		$('body').toggleClass('scroll-hidden');
	});
	$('.tab-dim').on('click', function () {
		$('.tab-nav-new').removeClass('open');
		$('.tab-nav-tag').removeClass('open');
		$('.tab-dim').removeClass('show');
		$('body').removeClass('scroll-hidden');
	});
	$('.tab-nav-tag ul li').on('click', function () {
		$('.tab-nav-tag ul li a').removeClass('active');
		$(this).children('a').addClass('active');
	});

	//드래그 스크롤 삽입
	var _x,_left,_down;
	$(".tab-nav-new> ul").mousedown(function(e){
	  e.preventDefault();
	  _down = true;
	  _x = e.pageX;
	  _left = $(this).scrollLeft();
	});
	
	$("body").mousemove(function(e){
	  if(_down){
		var newX = e.pageX;
		$(".tab-nav-new> ul").scrollLeft(_left - newX + _x);
	  }
	});
	
	$("body").mouseup(function(e){_down = false;});

    // TAB BUTTON LIST
    if(tabBtnList.length > 0){
        new Swiper(".tab-button-list", {
            observer:true,
            observeParents:true,
            freeMode: true,
            slidesPerView: "auto",
            breakpoints:{
                768:{
                    noSwiping: true
                }
            }
        }).slideTo(tabBtnList.find(".active").parent().index(), 0, false);
    }

    // TOP BUTTON
    $(".footer-bar .top").click(function(e){
        $("html, body").animate({scrollTop:0});
    });

    // FLOATING (M)
    $(".floating_m > button").click(function(e){
        body.toggleClass("floating-visible");
    });

    // FLOATING (D)
    $(".floating_d").on({
        mouseenter:function(e){
            $(this).addClass("hover");
        },
        mouseleave:function(e){
            $(this).removeClass("hover");
        }
    });
    /* 210907 : 플로팅 버튼 스크롤 모션 추가 */
    _window.scroll(function(e){
        $(".floating_d").stop().animate({
            "top":(_window.scrollTop() + (_window.height() * 62 / 100)) + "px"
        }, 400);
    }).scroll();
    /* //210907 : 플로팅 버튼 스크롤 모션 추가 */

    /* 210909 : 함수 개선 */
    // CONST
    var PREV_DEVICE,
        CURRENT_DEVICE,
        Device = {
            MOBILE:"mobile",
            TABLET:"tablet",
            DESKTOP:"desktop"
        };

    // MEDIA QUERY
    _window.resize(function(e){
        if(window.matchMedia("(min-width: 1024px)").matches){
            CURRENT_DEVICE = Device.DESKTOP;
        }else if(window.matchMedia("(min-width: 768px)").matches){
            CURRENT_DEVICE = Device.TABLET;

			//20221011 탭 리뉴얼 모바일 제어
			$('.tab-nav-new').removeClass('open');
			$('.tab-nav-tag').removeClass('open');
			$('.tab-dim').removeClass('show');
			$('body').removeClass('scroll-hidden');
        }else{
            CURRENT_DEVICE = Device.MOBILE;
        }
        if(PREV_DEVICE !== CURRENT_DEVICE){
            $(".mobile-visible, .tablet-visible, .desktop-visible").addClass("hidden");
            if(CURRENT_DEVICE === Device.DESKTOP){
                // DESKTOP
                body.removeClass("sidebar-visible floating-visible");
                tabNav.addClass("swiper-no-swiping");
                tabBtnList.addClass("swiper-no-swiping");
                $(".desktop-visible").removeClass("hidden");
            }else if(CURRENT_DEVICE === Device.TABLET){
                // TABLET
                tabNav.addClass("swiper-no-swiping");
                tabBtnList.removeClass("swiper-no-swiping");
                $(".tablet-visible").removeClass("hidden");
            }else{
                // MOBILE
                tabNav.removeClass("swiper-no-swiping");
                tabBtnList.removeClass("swiper-no-swiping");
                $(".mobile-visible").removeClass("hidden");

				
            }
            // RESPONSIVE IMAGE
            $("img.responsive").each(function(e){
                $(this).attr("src", $(this).data("src-" + CURRENT_DEVICE));
            });
            // body.removeClass(Device.MOBILE + " " + Device.TABLET + " " + Device.DESKTOP).addClass(CURRENT_DEVICE);
        }
        PREV_DEVICE = CURRENT_DEVICE;
    }).resize();
    /* //210909 : 함수 개선 */

    // SEARCH FORM
    /* 210907 : 코드 삭제
    $(".search-form .reset").click(function(e){
        $(this).closest("form")[0].reset();
    });
    //210907 : 코드 삭제 */

    // ACCORDION
    $(".accordion:not(.expand) .accordion_content").slideUp(0);
    $(".accordion .accordion_toggle").click(function(e){
        var container = $(this).closest(".accordion"),
            content = container.find(".accordion_content");
        $(".accordion").not(container).removeClass("expand");
        $(".accordion_content").not(content).slideUp();
        container.toggleClass("expand");
        content.slideToggle();
        return false;
    });

    // MODAL
    $(".modal-open").click(function(e){
        var href = $(this).attr("href");
        var target = $(href);
        if(target.length > 0){
            target.addClass("visible");
        }
        return false;
    });
    $(".modal-close").click(function(e){
        var href = "#" + $(this).closest(".modal").attr("id");
        var target = $(href);
        if(target.length > 0){
            target.removeClass("visible");
        }
        return false;
    });

	   /* 220914 : 플로팅 버튼 수정 */
	   _window.scroll(function(e){
			$(".floating_d.quick_d ").stop().animate({
				"top":(_window.scrollTop() + (_window.height() * 55 / 100)) + "px"
			}, 400);
		}).scroll();
		/* 220914 : 메인 top 버튼 추가 */
		$(".floating_d.quick_d .btn-top a").click(function(e){
			$("html, body").stop().animate({ scrollTop: 0 }, 300);
		});
});