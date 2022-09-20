var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;

$(function(){
    "use strict";

    guideInit();
    
});

function guideInit(){
    tabControl('.tab-section');
    dropdownbox();
    slidebox();
}

// tab
function tabControl($seletor){
    $($seletor).find('.tab-list li').children('a').on('click', function(){
        var idx = $(this).parents('li').index();
        //console.log(idx);
        $(this).parents('li').addClass('active').siblings().removeClass('active');

        $($seletor).find('.tab-view').hide();
        $($seletor).find('.tab-view').eq(idx).show();
    });
}

//eduf.js video
function playVideo(){
    var playerSrc = [];
    for(var o in obj){
        playerSrc.push(obj[o]);
    };
 
    var videoOption = {
        playerSrc: playerSrc,
        preview: true,
        playerClass: 'eduwill-video-player',
        playerPlayClass: 'eduwill-video-play'
    };
 
    eduf.UI.Player(videoOption);
}

//drop_down_box.js

function dropdownbox(){
    $('.select_name').click(function(){
        $('.drop_box').toggleClass('active'); 
    });

    $('.drop_box a').click(function(){
        $('.drop_box a').removeClass('active');
        $(this).addClass('active');

        var select_txt = $('.drop_box a.active').text();
        $('.select_name').text(select_txt);
        
        $('.drop_box').removeClass('active');

        var view_index = $(this).parents('div').index();
        $('.tab-view').hide();
        $('.tab-view').eq(view_index).show();
    }); 
    
    
}
function slidebox(){
    $('.slider-area').find('.tit').click(function(){
        
        $(this).find('.down').toggleClass('on');

        if($(this).find('.down').hasClass('on')){
            $(this).siblings('.body').slideDown(200);
        }else{
            $(this).siblings('.body').slideUp(200);
        } 
    })
    
}

