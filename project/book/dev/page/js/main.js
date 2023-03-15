var ClassBrowserUtil = function() {

	var addFavorite = function() {
		var title = document.title; // 현재 보고 있는 페이지의 TITLE
		var url = location.href; // 현재 보고 있는 페이지의 URL

		if (window.sidebar && window.sidebar.addPanel) { // FIREFOX
			window.sidebar.addPanel(title, url, "");
		} else if ( window.opera && window.print) { // OPERA 브라우저
			var elem = document.getElement('a');

			elem.setAttribute('href',url);
			elem.setAttribute('title',title);
			elem.setAttribute('rel','sidebar');
			elem.click();
		} else if (document.all ) { // MS IE
			window.external.AddFavorite( url, title);
		} else {
			alert("해당브라우저는 즐겨찾기 추가기능이 지원되지 않습니다.\n\n수동으로 즐겨찾기에 추가해주세요.");
			return true;
		}
	};

	return {

		addFavorite : addFavorite
	};
};

// Slide Menu
$(document).ready(function () {

	// GNB Tab Button
	/*$(".gnb_label a").mouseenter(function() {

		$(".gnb_label a").removeClass("active");
		$(".sub_menu").hide();
		$(this).addClass("active");

		var activeTab = $(this).attr("href");
		$(activeTab).show();
		$(".sub_wrap").show();
		return false;
	});

	$(".gnb").mouseleave(function(){
		$(".gnb_label a").removeClass("active");
		$(".sub_wrap").hide();
	});*/

	// GNB Tab Close
	/*$(".close_layer").click(function() {

		$(".sub_menu").hide();
		$(".sub_wrap").hide();
		$(".gnb_label a").removeClass("active");

		return false;
	});*/

	//footer (selectbox style)
	$('.toggle_box .toggle_cont').hide();
	$('.toggle_box .btn_toggle').click(function() {
		if(!$(this).is('.expanded')){
			$('.toggle_box .toggle_cont').hide();
			$('.toggle_box .btn_toggle').removeClass('expanded');
			$(this).next().show();
			$(this).addClass('expanded');
		}
		else{
			$(this).next().hide();
			$(this).removeClass('expanded');
		}
	});

	$(".sel_list ul li input[type=radio]").on("click", function(){
		var status = $(this).attr("checked");

		if(status == "checked"){
			$(".sel_list ul li").removeClass("checked");
			$(this).parent().addClass("checked");
		}else{
			$(".sel_list ul li").removeClass("checked");
		}
	});

	// 사이트맵
	$(".h_btn .btn1").on("click", function(){
		$(".sitemap").addClass('in');
		return false;
	});

	// 로그인
	$(".h_btn .btn2").on("click", function(){
		$(".h_login").addClass('in');
		return false;
	});

	// lnb
	$(".btn_lnb a").on("click", function(){
		$(".lnb").addClass('in');
		$('body, html').addClass('not_scroll');
		return false;
	});

	//레이어닫기
	$(".s_close a").on("click", function(){
		$(".sitemap, .h_login, .lnb").removeClass('in');
		$('body, html').removeClass('not_scroll');
		return false;
	});

	//마이페이지 드롭다운메뉴
	$('.tab_menu .depth01 > li > a').on('click', function(){
		$(this).parent().toggleClass('in').siblings('li').removeClass('in');
		return false;
	});

	//gnb스크롤 
	$('.gnb .btn_wrap .btn_next').on('click', function(){
		$('.gnb_scroll').stop().animate({scrollLeft: $('.gnb_scroll').scrollLeft() + 200 }, 500);
		return false;
	});

	$('.gnb .btn_wrap .btn_prev').on('click', function(){
		$('.gnb_scroll').stop().animate({scrollLeft: $('.gnb_scroll').scrollLeft() - 200 }, 500);
		return false;
	});

	$('.gnb .gnb_scroll').scroll(function(){
		var _scrollbox = $(this);
		var _btnPrev = $('.gnb .btn_wrap .btn_prev');
		var _btnNext = $('.gnb .btn_wrap .btn_next');
		var _maxScroll = -($(window).width() - $('.gnb .gnb_mobile ul.gnb_label').width() - 35); //lnb메뉴 사이즈만큼 -

		if( _scrollbox.scrollLeft() > 0) {
			_btnPrev.show();
		} else {
			_btnPrev.hide();
		}
		
		if( _scrollbox.scrollLeft() >= _maxScroll) { 
			_btnNext.hide();
		} else {
			_btnNext.show();
		}
	});

	//gnb 하위메뉴 토글
	$('.gnb_pc .gnb_label a').on('mouseenter', function(){
		var _target = $(this).attr('id');
		$('.gnb .sub_wrap').show();
		$('.gnb .sub_wrap').find(_target).show().siblings('.sub_menu').hide();
	});
	$('.gnb .sub_wrap').on('mouseleave', function(){
		$(this).hide().find('.gnb .sub_wrap').hide();
	});
	$('.close_layer').on('click', function(){
		$('.gnb .sub_wrap').hide();
		return false;
	});

	$('.gnb_mobile .gnb_label a').on('click', function(){
		if(!$(this).hasClass('linktype')) {
			var _target = $(this).attr('id');
			$('.gnb .sub_wrap').show();
			$('.gnb .sub_wrap').find(_target).show().siblings('.sub_menu').hide();
			return false;
		}		
	});

	// Top button scroll event
	$(window).scroll( function(){
		var $target = $('.bottom_fix_btn .top');

		$target.fadeOut();

		clearTimeout($.data(this, 'scrollTimer'));
		$.data(this, 'scrollTimer', setTimeout(function() {
			if( $(window).scrollTop() == 0 ){
				$target.fadeOut();
			} else {
				$target.fadeIn();
			}
		}, 250));
	});

	// Top button event
	$(document).on('click touch', '#goTop', function(e){
		e.preventDefault();
		$('html,body').animate({
			scrollTop: 0
		}, 500);
	});
	
});

function layeropenFnc(obj) {
	var target = $(obj);
	target.addClass('in')
}

///20160718 강수연 
function over(e){
	$(".gnb_label a").removeClass("active");
	$(".sub_menu").hide();
	$(this).addClass("active");

	var activeTab = $(e).attr("id");
	$(activeTab).show();
	$(".sub_wrap").show();
	return false;
}
function out(){
	$(".sub_menu").hide();
	$(".sub_wrap").hide();
	$(".gnb_label a").removeClass("active");
	return false;
}
///

var browserUtil = new ClassBrowserUtil();

// aquaNplayer
function launch(url, options) {
	var params = "";
	var option;

	for (option in options)
		params += option + "=" + options[option] + "&";

	var href = "nplayer://launch?" + params + "url=" + encodeURIComponent(url);

	launchUri(href, function(){}
		, function() { indicateDownload() }
		, function() { }
	);
}

function player(url) {
	var deviceType = deviceCheck();
	
	if(deviceType == "mac"){
		window.open(url, '', 'width=920, height=691, scrollbars=0, location=0');
	} else {
		if (navigator.appVersion.substr(navigator.appVersion.indexOf('MSIE ')+5,3)=='6.0') {
			window.open(url, '', 'width=920, height=691, scrollbars=0, location=0');
		} else {
			launch(url,{width: 920, height: 691, title:'AquaNPlayer' });
		}
	}
}

function indicateDownload() {
	var deviceType = deviceCheck(); // 기기 체크
	
	if(confirm("AquaNPlayer 설치가 필요합니다.\n설치파일을 다운로드하시겠습니까?")){
		//var url = "http://book.eduwill.net/pds/Common/program/AquaNPlayer_2.0.335.4630_1027_proxy_1.0.0.30.exe";
		var url = "";
		
		if(deviceType == "mac"){
			//mac
			url = "http://dist2.dwa.cdnetworks.com/cdndist/aquanplayer/AquaNAgent_1.0.0.36.dmg";
		} else {
			//windows
			url = "http://book.eduwill.net/pds/Common/program/AquaNPlayer_2.0.335.4630_1027_proxy_1.0.0.30.exe";
		}
		
		window.location.assign(url);
	}
}

function deviceCheck() {
	var filter = "win16|win32|win64|mac|macintel";
	var navi = "pc";
	var url = "";
	
	if (navigator.platform) {
		if(filter.indexOf(navigator.platform.toLocaleLowerCase())<0){
			navi = "m";
		}else{
			if(navigator.platform.toLocaleLowerCase().indexOf("mac") >= 0){
				navi = "mac";
			} else {
				navi = "pc";
			}
		}
	}
	
	return navi;
}
// -- aquaNplayer