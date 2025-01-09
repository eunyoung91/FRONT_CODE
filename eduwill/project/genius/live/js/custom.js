//for datepicker 
$.fn.datepicker.dates['kr'] = {
    days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
    daysShort: ["일", "월", "화", "수", "목", "금", "토"],
    daysMin: ["일", "월", "화", "수", "목", "금", "토"],
    months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    today: "오늘",
    clear: "Clear",
    format: "yyyy-mm-dd",
    titleFormat: "yyyy년 MM월", 
    weekStart: 0
};

$(document).ready(function () {
    $('.datepicker').datepicker({
		language: "kr"
        , autoclose: true
	});	
	
	$('.datepicker-month').datepicker({
		format: 'yyyy-mm',
		autoclose: true,
		startView: 1,
		minViewMode: 1,
		maxViewMode: 1,
		language: 'kr'
	});
		
	$('.datepicker-year').datepicker({
		format: 'yyyy',
		autoclose: true,
		startView: 2,
		minViewMode: 2,
		maxViewMode: 2,
		language: 'kr'
	});

	/* aside init */
	_aside();

	//gnb - genius
	$(".hd-wrap .gnb").on("mouseenter", function(){
		$(".hd-wrap-expand").fadeIn(100);
	});
	$(".hd-wrap-expand").on("mouseleave", function(){
		$(".hd-wrap-expand").fadeOut(100);
	});

	//aside - genius
	$("#aside .btn-collapse").on("click", function(){
		$('#aside').hide(); 
		$('#expand-wrap').show();

		$("#middle").addClass("collapsed"); 
	});
	$('#expand-wrap .btn-expand').on("click", function(){
		$('#aside').show(); 
		$('#expand-wrap').hide(); 
		
		$("#middle").removeClass("collapsed");  
	}); 
});	

$(document).ajaxComplete(function () {
    $('.datepicker').datepicker({
        language: "kr" 
        ,autoclose: true
    });
});

/** Aside
 **************************************************************** **/
	function _aside() {
		
		// Mobile Button
		jQuery("#mobileMenuBtn").bind("click", function(e) {
			e.preventDefault();

			jQuery(this).toggleClass('active');

			if(window.width > 768) {

				if(jQuery('body').hasClass('min')) {

					jQuery('body').removeClass('min');
					jQuery("#sideNav>h3").show();
					jQuery("#middle").css({"margin-left":""});

				} else {

					jQuery("#middle").css({"margin-left":"0"});
					jQuery('body').addClass('min');

					if(jQuery('#aside nav li.el_primary.menu-open ul.sub-menu').prop('style')) {
						jQuery('#aside nav li.el_primary.menu-open ul.sub-menu').prop('style').removeProperty("display");
					}

					jQuery("#sideNav>h3").hide();
					jQuery('#aside nav li.el_primary').removeClass('menu-open');

				}

			} else {

				if(jQuery('body').hasClass('menu-open')) {

					jQuery('body').removeClass('menu-open');
					jQuery("#sideNav>h3").show();
					jQuery("#middle").css({"margin-left":""});

				} else {

					jQuery("#middle").css({"margin-left":"0"});
					jQuery('body').addClass('menu-open');

					if(jQuery('#aside nav li.el_primary.menu-open ul.sub-menu').prop('style')) {
						jQuery('#aside nav li.el_primary.menu-open ul.sub-menu').prop('style').removeProperty("display");
					}

					jQuery("#sideNav>h3").show();
					jQuery('#aside nav li.el_primary').removeClass('menu-open');

				}

			}
		});



		/** -------------------------------------------------------------------------------------- **/
		// Add an ID for each primary LI element (first dropdown)
		count = 0;
		jQuery('#aside ul.nav a').removeClass('active')
		jQuery('#aside ul.nav > li').each(function() {
			jQuery(this).addClass('el_primary');
			jQuery(this).attr('id', 'el_' + count);
			count++;
		});
		
		jQuery('#aside ul.nav > li').each(function() {
			if($(this).find('ul').length) {
				$(this).addClass('el_sub');
			}

			if($(this).hasClass('menu-open')) {
				$(this).find('ul').show();
			} else {
				$(this).find('ul').hide();
			}
		})

		// Multilevel Navigation
		jQuery('#aside ul.nav li a.d1').bind("click", function(e) {
			
			if(jQuery(this).parent().hasClass('menu-open')) {
				jQuery(this).parent().removeClass('menu-open');
				jQuery(this).next('.d2').slideUp(200);
			} else {
				jQuery(this).parent().addClass('menu-open');
				jQuery(this).next('.d2').slideDown(200);
			}
			
			/*
			var _t 		= jQuery(this),
				_href 	= _t.attr('href');

			if(_href == '#') {
				e.preventDefault();
			}

			var find_li = jQuery(this).closest('li');

			if(!find_li.hasClass('always-open')) {

				var _id		= find_li.attr('id');

				
				if(find_li.hasClass('el_primary')) {
					jQuery("#aside ul.nav>li>ul").each(function() {
						var __id = jQuery(this).closest('li').attr('id');
						if(__id != _id) {
							jQuery(this).slideUp(200, function() {
								jQuery(this).parent().removeClass('menu-open');
							});
						}
					});

				}


				
				jQuery(this).next().slideToggle(200, function() {

					if(jQuery(this).is(":visible")) {
						find_li.addClass('menu-open');
					} else {
						find_li.removeClass('menu-open active');
					}

				});

			}
			*/

		});
		/** -------------------------------------------------------------------------------------- **/
		
		/*
		setTimeout(function() {
			if($('#aside .d1').hasClass('active')) {
				$('#aside').animate({scrollTop:$('#aside .d1.active').offset().top - 60}, '100');
			}		  
		}, 1000)
		*/

		/** -------------------------------------------------------------------------------------- **/
		// menu active
		var _currentNav = jQuery(location).attr('pathname');

		jQuery("#gnb li").each(function () {
			jQuery(this).removeClass("on");
		});

		jQuery("#sideNav a").each(function() {
			var idx = "";
			if(jQuery(this).attr("href") != undefined) {
				if(jQuery(this).attr("href").indexOf(_currentNav) == 0 ||
						(jQuery(this).data("add") != null && _currentNav.indexOf(jQuery(this).data("add")) == 0) ) {
					jQuery(this).parents("li").addClass("active");
					idx = jQuery(this).data("parent_idx");
				}
			}
			jQuery("#gnb li[data-idx='"+idx+"']").addClass("on");
		});

		// menu title
		jQuery("#gnb li").each(function () {
			if(jQuery(this).hasClass("on")){
				var gnb_title = jQuery(this).find("button").text();
				var idx = jQuery(this).data("idx");
				jQuery(".location > strong").text(gnb_title);
				//jQuery("#divGnb").addClass( (idx == 38) ? "type1" : "" );
			}
		});
		
		var _menuNavTitle = "";
		jQuery("nav li").each(function () {
			//1depth
			if(jQuery(this).hasClass("d1") && jQuery(this).hasClass("active")){
				_menuNavTitle += "<li>" + jQuery(this).find("a.d1 > span").text() + "</li>"; 
				
				// 2depth
				jQuery(this).find(".d2 > li").each(function name() {
					if(jQuery(this).hasClass("active")){
						_menuNavTitle += "<li>" + jQuery(this).find("span").first().text() + "</li>";
						
						//3depth
						jQuery(this).find(".d3 > li").each(function () {
							if(jQuery(this).hasClass("active")){
								_menuNavTitle += "<li>" + jQuery(this).find("a").text() + "</li>";
							}
						});
					}
				});
			}
		});
		jQuery(".location > ul").html(_menuNavTitle);
		
		// GNB menul click event
		jQuery(".location > strong").bind("click", function () {
			jQuery('.item_category ul').fadeToggle();
			//jQuery(this).toggleClass("in");
			jQuery("#gnb").show();
		});

		// body click event
		jQuery("body").bind("click", function(e){
			var $target = jQuery(e.target);
			if(!$target.closest("div").hasClass("location")){
				jQuery("#gnb").hide();
			}
		});
		/** -------------------------------------------------------------------------------------- **/
	}

	function _asideFix() {

		if(window.width > 768) {

			if(jQuery("body").hasClass('menu-open')) {
				jQuery("#middle").css({"margin-left":""});
			}

		}
	}