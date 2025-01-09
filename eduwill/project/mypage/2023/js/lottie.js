$(window).load(function () {
    var complete = bodymovin.loadAnimation({
        container : document.getElementById('complete'),
        renderer : 'svg',
        loop : false,
        autoplay : true,
        path: '../images/lottie/complete.json'
    });
})
