$(function(){
	var $window = $(window),
		$html = $('html'),
		$body = $('body'),
		$document = $(document);

	// select option ellipsis
	var _maxLength = 18;
	$('.select option').each(function(){
		if($(this).text().length >= _maxLength){
			$(this).text($(this).text().substr(0,_maxLength)+'...');
		}
	});

	// search
	$document.on('click', '.search>a', function(){
		$('.search_layer').show();
		$('.search_layer input').focus();
		return false;
	});

	// tab
	$document.on('click', '.tab_list li a', function () {
		var $this = $(this),
			$tabList = $this.parents('ul'),
			_idx = $this.closest('li').index();

		$tabList.children().eq(_idx).addClass('in').siblings().removeClass('in');
		$tabList.next().children().eq(_idx).addClass('in').siblings().removeClass('in');
		return false;
	});
});
