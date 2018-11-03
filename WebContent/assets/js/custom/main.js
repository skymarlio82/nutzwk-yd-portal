jQuery(document).ready(function ($) {
    'use strict';

    var loadImg = imagesLoaded("body");
    loadImg.on('done', function (instance) {
        $(".loading").stop(true, true).velocity({
            "opacity" : "0"
        }, 1500, function () {
            $(".loading").remove();
        });
    });



    $("#wc-menu-icon").hover(function () {
        $(this).css("background-color","rgba(0, 0, 0, 0)")
        $(this).find("img").addClass("animated swing");
    }, function () {
        $(this).find("img").removeClass("animated swing");
    });
    $("#wc-menu-icon").hover(function () {
        var _left = $(this).offset().left - $(this).innerWidth()*2;
        var _top = $(this).offset().top + $(this).innerHeight() + 1;
        $(".top_erm_01").css({ "left" : _left + "px", "top" : _top + "px" }).show();
    }, function () {
        $(".top_erm_01").hide();
    });


    $('#ext-menu-btn').click(function () {
        $('#secectionBox').animate({
            right : '0'
        }, 500, function() {
            // Animation complete.
        });
        $('#ext-menu-btn').animate({
            right : '-80'
        }, 100, function() {
            // Animation complete.
        });
    });

    $('#hideme').click(function () {
        $('#secectionBox').animate({
            right : '-999'
        }, 500, function() {
            // Animation complete.
        });
        $('#ext-menu-btn').animate({
            right : '0'
        }, 700, function() {
            // Animation complete.
        });
    });

    // /* ========== Navigation Toggle ========== */
    // // Cache Selectors
    // var lastId = null;
    var topMenuHeight = 80;
    // // All the list items
    // var menuItems = $(".menu-first").find("a");
    // // Anchors corresponding to menu items
    // var scrollItems = menuItems.map(function () {
    //     if ($(this).hasClass('external')) {
    //         return;
    //     }
    //     var item = $($(this).attr("href"));
    //     if (item.length) {
    //         return item;
    //     }
    // });
    // // Bind click handler to menu items, so we can get a fancy scroll animation
    // menuItems.click(function (e) {
    //     e.preventDefault();
    //     var href = $(this).attr("href");
    //     var offsetTop = (href === "#") ? 0 : ($(href).offset().top - topMenuHeight + 1);
    //     $('html, body').stop().animate({
    //         scrollTop : offsetTop
    //     }, 750);
    // });
    //
    //

   $('a[href="#top"]').click(function () {
        $('html, body').animate({ scrollTop : 0 }, 'slow');
       return false;
   });

   $('a[href*=#]').on('click', function (e) {
        //e.preventDefault();
        var aid = $(this).data("sect");
        if($(aid).length>0) {
            $('html, body').animate({
                scrollTop: $(aid).offset().top - topMenuHeight
            }, 500, 'linear');
        }
        /*
        if(isMobile()) {
            var tp = $(this).parent();
            if(tp.hasClass("open"))
                tp.removeClass("open");
            else {
                $('a[href*=#]').parent().removeClass("open");
                tp.addClass("open");
            }
        }*/
   });

    $('.img-zoom-wrap img').hover(function () {
        $(this).stop().animate({ 'opacity' : '0.5', 'width' : '120%', 'height' : '340px', 'top' : '-40px', 'left' : '-40px' });
    }, function () {
        $(this).stop().animate({ 'opacity' : '1', 'width' : '100%', 'height' : '300px', 'top' : '0px', 'left' : '0px' });
    });

    //Jude (4 slide blocks)
    var jdSwiper = null;
    try {
        $(".jude_slide .jude_sw_bg").css({ "width" : "100%" });
        $(".jude_slide .jude_sw_bg").css({ "height" : $(window).innerHeight() + "px" });
        jdSwiper = new Swiper('.jude_slide', {
            slidesPerView : '1',
            effect : "fade"
        });
        /*
        $(".jude_sw_a a").each(function (i, e) {
            $(this).mouseenter(function () {
                jdSwiper.slideTo(i, 500, false);
            });
        });
        */
    } catch (e) {
        console.log("jude_slide error : " + e);
    }

});

function isMobile() {
    var userAgentInfo = navigator.userAgent;
    var mobileAgents = [ "Android", "iPhone", "SymbianOS", "Windows Phone", "iPad","iPod"];
    var mobile_flag = false;
    //根据userAgent判断是否是手机
    for (var v = 0; v < mobileAgents.length; v++) {
        if (userAgentInfo.indexOf(mobileAgents[v]) > 0) {
            mobile_flag = true;
            break;
        }
    }
    var screen_width = window.screen.width;
    var screen_height = window.screen.height;

    //根据屏幕分辨率判断是否是手机
    if(screen_width < 500 && screen_height < 800){
        mobile_flag = true;
    }
    return mobile_flag;
}
