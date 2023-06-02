function submit(){
  $.ajax({
    type: 'post',
    url:  './ajax.php',
    data: $("form[name=mailto]").serialize(),
    success: function (data) {
      //console.log($("form[name=mailto]").serialize());
      if(data=="success"){
        $("form[name=mailto] input").val("");
        alert("메세지가 전송되었습니다.");
      }else{
        console.log(data.split("|")[1]);
        var r=data.split("|")[1]
        alert("필수 내용을 입력해주세요.");
        $("form[name=mailto] input[name='"+r+"']").focus();
      }
    },
    error: function (xhr, status, error) {
      alert(error);
    },
  });
}
function anchor(aid){
    if($('gnb').hasClass('active')){
      $('header, gnb').toggleClass('active')
    }
    var aTag = $("."+aid);
    var w=$('#app').height();
    //var w=$(window).height();
    // if(aid=="second"){
    //   var h=$('.main-visual').height() + w/2;
    // }else if(aid=="fourth"){
    //   var h=$('.fourth').offset().top + w/1.2;
    // }else if(aid=="fourth"){
    //   var h=$('.fourth').offset().top + w/1.2;
    // }else if(aid=="six"){
    //   var h=$('.six').offset().top + (w*2);
    // }else if(aid=="seven"){
    //   var h=$('.six').offset().top + $('.six').height();
    // }
    if(aid=="home"){
      var h=0;
    }else if(aid=="second"){
      var h=w*0.09;
    }else if(aid=="fourth"){
      var h=w*0.4;
    }else if(aid=="six"){
      var h= w*0.75;
    }else if(aid=="seven"){
      var h=w*0.86;
    }else if(aid=="contact"){
      var h=w*0.92;
    }
    $('body').animate({scrollTop: h},1000);
}
$(function(){
  // $(window).bind("scroll",function(){
  //   var a = Math.floor($('#app').height())
  //   var b = $(window).scrollTop();
  //   $('.guide').text(b+":"+a+"/ ratio :"+(b/a).toFixed(4))
  // });
  var brandSwiper = new Swiper(".slide", {
      slidesPerView: "auto",
      freeMode: true,
      mousewheel: false,
      scrollbar: {
          el: ".swiper-scrollbar",
          draggable: true,
          hide:false,
      },
  });
  $(window).on("scroll",function(){
    var t=$('body').scrollTop();

  })
  // $('gnb li').on("click",function(){
  //   var i = $(this).index();
  //   if(i==0){
  //     tl2.progress(0.3).play();
  //   }
  // })
  //$('html').css('overflow','hidden')

  //  var slide_x_width = 0;
  // $(window).bind("resize",function(){
  //   var w=$(this).width();
  //   $('.guide').text(w);
  //   var sl_w=parseInt($('.slide .flex >div').width());
  //   var sl_gap=parseInt($(this).height()* 0.02);
  //   var l =$('.slide .flex >div').length;
  //   slide_x_width = (((sl_w+sl_gap)*l) - w  ) *-1;
  // }).trigger("resize")


  // gsap.registerPlugin(ScrollTrigger, ScrollSmoother);
  // const smoother = ScrollSmoother.create({
  //   content: "#app",
  //   smooth: 2,
  //   normalizeScroll: true,
  //   ignoreMobileResize: false,
  // 	effects: true,
  //   //preventDefault: true,
  //   //ease: 'power4.out',
  //   //smoothTouch: 0.1,
  // });

  gsap.registerPlugin(ScrollTrigger);

  const tl1 = gsap.timeline({
    scrollTrigger: {
      trigger: ".main-visual",
      start: '+=2% 0%',
      end: '+=100%',
      scrub: true,
      pinSpacing: false,
      invalidateOnRefresh: true,
    }
  });
  tl1
  .to('.bg_black', {duration:0,opacity : '1'},0)
  .to('.bg_black', {duration:1, opacity : '0'}, 1.3)
  .to('gnb ul li a', {duration:1, color : '#333'},0)
  .to('.logo #txt path', {duration:1, fill : '#333'},0)
  const tl2 = gsap.timeline({
    scrollTrigger: {
      trigger: ".second",
      pin: true,
      start: 'top 0%',
      end: 'bottom bottom',
      scrub: true,
      pinSpacing: false,
      // onUpdate: (timeline)=>{
      //   console.log(timeline.progress); //this works
      // },
    }
  });

  //tl.to('.graphic .half1', {top: '100%'})
  tl2
  .to('gnb ul li a', {duration:0, color : '#333'},0.3)
  .to('.bg_black', {duration:0, opacity :'0' },0.3)
  .to('.bg_black', {duration:0, opacity :'0' },5)
  .to('.txt1 h4', { duration:0, top : '0px',opacity:'1'},0.2)
  .to('.txt1 h2', { duration:0, top : '0px',opacity:'1'},0.4)
  .to('.txt1 p', { duration:1, top : '0px',opacity:'1'},0.6)
  .to('.graphic  svg.cir1 .shape', { duration:1, strokeDashoffset : '0'},0)
  .to('.graphic  svg.cir1', { duration:1, top:'calc(50vh - 50px)'},0)
  .to('.graphic  svg.cir1', { duration:3, top:'-100px'},1)
  .to('.graphic  svg.cir2', {duration:0, opacity:'1'},1)
  .to('.graphic  svg.cir2.st2', {duration:1, top:'calc(50vh - 50px - 100px)'},1)
  .to('.graphic  svg.cir2.st3', {duration:1.8, top:'calc(50vh - 50px - 300px)'},1)
  .to('.graphic  svg.cir2.st4', {duration:2.8, top:'calc(50vh - 50px - 420px)'},1)
  .to('.graphic  svg.cir2 .shape', {duration:2, strokeDashoffset : '1000'},1)
  .to('.graphic  svg.cir2', { duration:2, top:'-100px'},3.8)
  .to('.graphic .circle3', {duration:0.5,opacity:'1'},0)
  .to('.graphic .circle3', {duration:1,top:'calc(50vh - 150px)'},0.5)
  .to('.graphic .circle3', {duration:1,top:'55vh',opacity:'0'},3)
  .to('.txt1 h4', { duration:1, opacity:'0'},3.2)
  .to('.txt1 h2', { duration:1, opacity:'0'},3.4)
  .to('.txt1 p', { duration:1, opacity:'0'},3.6)
  .to('gnb ul li a', {duration:1, color : '#fff'},5)
  const tl3 = gsap.timeline({
    scrollTrigger: {
      trigger: ".third",
      pin: true,
      start: 'top 130%',
      end: 'bottom 0%',
      scrub: true,
      pinSpacing: false,
    }
  });
  tl3
  .to('.bg_black', {duration:0, opacity :'1' },0.3)
  .to('.bg_gradient_green', {duration:0.5, opacity:'1'},0)
  .to('.txt2 h2', { duration:1, top : '0px',opacity:'1'},0.4)
  .to('.txt2 p', { duration:1, top : '0px',opacity:'1'},0.6)
  .to('.circle4', {duration:1,top:'-10vw',left:'40%', width:'80vw',height:'80vw'},0)
  .to('.circle4', {duration:2,top:'-40vw',left:'30%', width:'100vw',height:'100vw'},1)
  .to('.circle4', {duration:1,top:'-50vw',left:'50%', width:'40vw',height:'40vw'},3)
  .to('.txt2 h2', { duration:1, opacity:'0'},2)
  .to('.txt2 p', { duration:1, opacity:'0'},2.2)
  .to('.bg_gradient_green', {duration:1, opacity:'0'},3)
  .to('.bg_black', {duration:1, opacity:'1'},3)
  .to('gnb ul li a', {duration:1, color : '#fff'},3)
  .to('.logo #txt path', {duration:1, fill : '#fff'},3)
  const tl4 = gsap.timeline({
    scrollTrigger: {
      trigger: ".fourth",
      pin: true,
      start: 'top top',
      end: '+=200%',
      scrub: true,
      pinSpacing: false,
    }
  });
  tl4
    .to('.bg_black', {duration:0, opacity :'1' },0)
  .to('gnb ul li a', {duration:0, color : '#fff'},0.01)
  .to('.logo #txt path', {duration:0, fill : '#fff'},0.01)
  .to('.txt3 h4', { duration:2, top : '0px',opacity:'1'},0.2)
  .to('.chart0', {duration:2,opacity:'1'},0)
  .to('.chart0', {duration:1,filter:'blur(0px)'},2)
  .to('.wave_wrap', {duration:1, opacity:'1'},2.1)
  .to('.chart0 .box:nth-of-type(1)', {duration:1,opacity:'1'},2)
  .to('.chart0 .box:nth-of-type(2)', {duration:1,opacity:'1'},2.2)
  .to('.chart0 .box:nth-of-type(3)', {duration:1,opacity:'1'},2.4)
  .to('.txt3 h4', {duration:2,opacity:'0'},6)
  .to('.chart0', {duration:2,opacity:'0'},6.2)
  .to('.wave_wrap', {duration:2, opacity:'0'},6.4)
  const tl5 = gsap.timeline({
    scrollTrigger: {
      trigger: ".five",
      pin: 'true',
      start: 'top top',
      end: '+=200%',
      scrub: true,
      pinSpacing: false,
    }
  });
  tl5
  // .to('.logo #txt path', {duration:0.1, fill : '#fff'},0.1)
  .to('.txt4 h4', { duration:2, top : '0px',opacity:'1'},0.2)
  .to('.txt4 p', { duration:2, top : '0px',opacity:'1'},0.4)
  .to('.chart1', {duration:2,opacity:'1'},0)
  .to('#earth', {duration:2,opacity:'1'},0)
  .to('.txt5', {duration:2,opacity:'1'},0.5)
  .to('.txt5', {duration:2,opacity:'0'},6)
  .to('#earth', {duration:2,opacity:'0'},6)
  .to('.chart1', {duration:2,opacity:'0'},6.2)
  .to('.txt4 h4', { duration:2, opacity:'0'},6.2)
  .to('.txt4 p', { duration:2, opacity:'0'},6.4)
  const tl6 = gsap.timeline({
    scrollTrigger: {
      trigger: ".six",
      pin: true,
      start: 'top 0%',
      end: 'bottom +=150%',
      scrub: true,
      pinSpacing: false,
    }
  });
  tl6
  .to('.txt6 h4', { duration:2, top : '0px',opacity:'1'},0.2)
  .to('.txt6 p', { duration:2, top : '0px',opacity:'1'},0.4)
  .to('.chart2 >.bottom_line >div', { duration:1, width :'100%' },1.0)
  .to('.chart2 .table', { duration:0.5,opacity:'1' },1.0)
  .to('.chart2 .table .item .line i', { duration:2, rotation :0 },1.2)
  .to('.chart2 .table .item .line', { duration:0, overflow :'inherit' },3.4)
  .to('.chart2 .table .item .line h4', { duration:1, opacity :'1' },3.4)
  const tl7 = gsap.timeline({
    scrollTrigger: {
      trigger: ".seven",
      pin: true,
      start: 'top 0%',
      end: 'bottom bottom',
      scrub: true,
      pinSpacing: true,
    }
  });

  tl7
  //.to('.slide', {duration:0.1, left :slide_x_width},0)
  var draw_mode= 0;
  if(draw_mode){
    $('.bg_black').addClass('top')
    $('.txt6, .chart2').css({'opacity':'1','z-index':'101'});
  }
})
