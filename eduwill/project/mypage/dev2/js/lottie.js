$(window).load(function () {
    var complete = bodymovin.loadAnimation({
        container : document.getElementById('complete'),
        renderer : 'svg',
        loop : false,
        autoplay : true,
        path: 'https://img.eduwill.net/resources/mypage/dev2/images/lottie/complete.json'
    });

	var complete = bodymovin.loadAnimation({
        container : document.getElementById('loading'),
        renderer : 'svg',
        loop : true,
        autoplay : true,
        path: 'https://img.eduwill.net/resources/mypage/dev2/images/lottie/loading.json'
    });
})
