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
		var _tabIdx = $('.tab-nav .active').parent().index();
		var _tabWid = $('.tab-nav > ul > li').width();
		var _tabTotalWid = $('.tab-nav > ul').width();
		var _tabLengh = $('.tab-nav > ul > li').length;
		if($(window).width() < 768) {
			$('.tab-nav > ul > li').each(function(){
				if((_tabIdx +1) !== _tabLengh){
					if($(this).children().hasClass('active')){
						$(this).addClass('swiper-slide-active');
					}else{
						$(this).removeClass('swiper-slide-active');
					}
					$( '.tab-nav > ul' ).css('transform', 'translateX(-' + _tabWid * _tabIdx + 'px');
				}else if((_tabIdx +1) <= 2){
					$( '.tab-nav > ul' ).css('transform', 'translateX(0');
				}else if((_tabIdx +1) == 3){
					$( '.tab-nav > ul' ).css('transform', 'translateX(-50%');
				}else if((_tabIdx +1) == 4){
					$( '.tab-nav > ul' ).css('transform', 'translateX(-' + _tabTotalWid + 'px');
				}else{
					$( '.tab-nav > ul' ).css('transform', 'translateX(-' + (_tabTotalWid + _tabWid) + 'px');
				}
			});
		}else {
			$( '.tab-nav > ul' ).css('transform', 'translateX(0');
		}
	}).resize();
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