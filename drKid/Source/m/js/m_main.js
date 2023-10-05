﻿$(document).ready(function () {
    //메인 슬라이더
    const slide = $(".slide");
    let slideWidth = slide.width();
    let slideItems = $(".slide_item");
    const maxSlide = slideItems.length;
    let currSlide = 1;
    const pagination = $(".slide_pagination");

    for (let i = 0; i < maxSlide; i++) {
        if (i === 0) pagination.append('<li class="active">•</li>');
        else pagination.append('<li>•</li>');
    }

    const paginationItems = $(".slide_pagination > li");
    const startSlide = slideItems.eq(0);
    const endSlide = slideItems.eq(slideItems.length - 1);
    const startElem = $("<div></div>").addClass(startSlide.attr("class")).html(startSlide.html());
    const endElem = $("<div></div>").addClass(endSlide.attr("class")).html(endSlide.html());

    endSlide.addClass("clone");
    startSlide.addClass("clone");

    slide.prepend(endElem);
    slide.append(startElem);

    slideItems = $(".slide_item");
    let offset = slideWidth + currSlide * slideWidth;
    slideItems.each(function () {
        $(this).css("left", -offset + "px");
    });

    //best 메뉴 touch 슬라이드
    //$(".best_m_menu_wrap_inner").on("touchstart", function (event) {
    //    var xClick = event.originalEvent.touches[0].pageX;
    //    $(this).one("touchmove", function (event) {
    //        var xMove = event.originalEvent.touches[0].pageX;
    //        var distance = xClick - xMove;
    //        $(this).scrollLeft($(this).scrollLeft() + distance); 
    //    });
    //    $(this).on("touchend", function () {
    //        $(this).off("touchmove");
    //    });
    //});

    //hover 기능 통합 KSM
    $('.best-li-hover').on('click', function () {
        $('.best-li-hover').removeClass('actives-hover');
        $(this).addClass('actives-hover');

        let $thisKey = ($(this).attr('id') + '').split('_')[1];
        $('.best-li-content').hide();
        $(`.${$thisKey}_view`).css({
            display: 'block',
            position: 'relative',
            top: '20px',
            opacity: 0
        }).animate({
            top: '0px',
            opacity: 1
        }, 500);
    });

    //최초 Best Setting
    $('.best-li-hover').eq(0).click();

   
    //hover 옵션
    $('#hover5').click(function () {
        $('#hover5').css('color', 'white');
        $('#hover5').css('background-color', '#115C5E');
        $('#hover6, #hover7, #hover8, #hover9').css('color', '#115C5E');
        $('#hover6, #hover7, #hover8, #hover9').css('background-color', '#fff');

        $('#hover6_wrap, #hover7_wrap, #hover8_wrap, #hover9_wrap').hide();
        $('#hover5_wrap').css({
            display: 'block',
            position: 'relative',
            top: '20px',
            opacity: 0
        }).animate({
            top: '0px',
            opacity: 1
        }, 500);
    });

    $('#hover6').click(function () {
        $('#hover6').css('color', 'white');
        $('#hover6').css('background-color', '#115C5E');
        $('#hover5, #hover7, #hover8, #hover9').css('color', '#115C5E');
        $('#hover5, #hover7, #hover8, #hover9').css('background-color', '#fff');

        $('#hover5_wrap, #hover7_wrap, #hover8_wrap, #hover9_wrap').hide();
        $('#hover6_wrap').css({
            display: 'block',
            position: 'relative',
            top: '20px',
            opacity: 0
        }).animate({
            top: '0px',
            opacity: 1
        }, 500);
    });

    $('#hover7').click(function () {
        $('#hover7').css('color', 'white');
        $('#hover7').css('background-color', '#115C5E');
        $('#hover5, #hover6, #hover8, #hover9').css('color', '#115C5E');
        $('#hover5, #hover6, #hover8, #hover9').css('background-color', '#fff');

        $('#hover5_wrap, #hover6_wrap, #hover8_wrap, #hover9_wrap').hide();
        $('#hover7_wrap').css({
            display: 'block',
            position: 'relative',
            top: '20px',
            opacity: 0
        }).animate({
            top: '0px',
            opacity: 1
        }, 500);
    });

    $('#hover8').click(function () {
        $('#hover8').css('color', 'white');
        $('#hover8').css('background-color', '#115C5E');
        $('#hover5, #hover6, #hover7, #hover9').css('color', '#115C5E');
        $('#hover5, #hover6, #hover7, #hover9').css('background-color', '#fff');

        $('#hover5_wrap, #hover6_wrap, #hover7_wrap, #hover9_wrap').hide();
        $('#hover8_wrap').css({
            display: 'block',
            position: 'relative',
            top: '20px',
            opacity: 0
        }).animate({
            top: '0px',
            opacity: 1
        }, 500);
    });

    $('#hover9').click(function () {
        $('#hover9').css('color', 'white');
        $('#hover9').css('background-color', '#115C5E');
        $('#hover5, #hover6, #hover7, #hover8').css('color', '#115C5E');
        $('#hover5, #hover6, #hover7, #hover8').css('background-color', '#fff');

        $('#hover5_wrap, #hover6_wrap, #hover7_wrap ,#hover8_wrap').hide();
        $('#hover9_wrap').css({
            display: 'block',
            position: 'relative',
            top: '20px',
            opacity: 0
        }).animate({
            top: '0px',
            opacity: 1
        }, 500);
    });

    //비즈니스 슬라이드
    $(".business_content_wrap_inner").on("touchstart", function (event) {
        var xClick = event.originalEvent.touches[0].pageX;
        $(this).one("touchmove", function (event) {
            var xMove = event.originalEvent.touches[0].pageX;
            var distance = xClick - xMove;
            $(this).scrollLeft($(this).scrollLeft() + distance);
        });
        $(this).on("touchend", function () {
            $(this).off("touchmove");
        });
    });

    //메인 슬라이드
    $(window).on("resize", function () {
        slideWidth = slide.width();
    });

    paginationItems.on("click", function () {
        currSlide = $(this).index() + 1;
        const offset = slideWidth * currSlide;
        slideItems.each(function () {
            $(this).css("left", -offset + "px");
        });
        paginationItems.removeClass("active");
        $(this).addClass("active");
    });

    let startPoint = 0;
    let endPoint = 0;

    slide.on("mousedown", function (e) {
        startPoint = e.pageX;
    });
});

//scale 이미지
$(document).ready(function () {
    // jquery.serialscrolling initialization
    $('[data-serialscrolling]').serialscrolling();

    gsap.registerPlugin(ScrollTrigger);

    gsap.to(".info-con1", {
        scrollTrigger: {
            trigger: ".info-box",
            //markers: true,
            start: "top center",
            scrub: true,
        },
        width: '100%',
        duration: 10,
    });

    gsap.to(".info-con1-box", {
        scrollTrigger: {
            trigger: ".info-box",
            //markers: true,
            start: "center center",
            scrub: true,
            pin: true
        },
        y: '-500',
        duration: 10,
    });
});

$(document).ready(function () {
    //홈 버튼
    $("#home").click(function () {
        $(".m_bottom_wrap_inner > .icon_menu:first-child > span").css('color', '#115c5e');
        $(".m_bottom_wrap_inner > .icon_menu > span").css('color', '#BBBBBB');
        location.href = "/Source/m/m_main.aspx";
    });

    //회원가입 버튼
    $("#join_wrap_button").click(function () {
        location.href = "/Source/m/member/M_M_JOINSUPPORT.aspx";
    });
});


//전체 메뉴
$(document).ready(function () {
    $("#menu_hide_button, #menu_hide_button1").click(function () {
        $(".m_bottom_wrap_inner > .icon_menu:first-child > span").css('color', '#BBBBBB');
        $(".m_bottom_wrap_inner > .icon_menu:nth-child(2) > span").css('color', '#115c5e');
        $(".menu_hide").animate({
            left: "0"
        }, 10);
        $(".search").css('display', 'none');
    });

    $("#menu_hide_clear_button, #home").click(function () {
        $(".m_bottom_wrap_inner > .icon_menu:first-child > span").css('color', '#115c5e');
        $(".m_bottom_wrap_inner > .icon_menu:nth-child(2) > span").css('color', '#BBBBBB');
        $(".menu_hide").animate({
            left: "-100%"
        }, 10);
    });

    $("#login_button").click(function () {
        location.href = "/Source/m/member/login/M_L_LOGIN_PAGE.aspx";
    });
});

//매거진 버튼
$(document).ready(function () {
    $('#magazine_hide_button').click(function () {
        $(".m_bottom_wrap_inner > .icon_menu:first-child > span").css('color', '#BBBBBB');
        $(".m_bottom_wrap_inner > .icon_menu:nth-child(2) > span").css('color', '#BBBBBB');
        $(".m_bottom_wrap_inner > .icon_menu:nth-child(3) > span").css('color', '#115c5e');
        location.href = "/Source/m/magazine/M_MAGAZINE.aspx";
    });
});

$(document).ready(function () {
    //마이페이지 버튼
    $("#myPage_button").click(function () {
        location.href = "/Source/m/my/M_M_MYPAGE.aspx";
    });
})



//검색버튼 창
$(document).ready(function () {
    $("#search_button").click(function () {
        $(".search").css('display', 'block');
        $(".search").animate({
            right: "0"
        }, 10);
    });

    $("#clear, #home").click(function () {
        $(".search").animate({
            right: "-100%"
        }, 10);
    });
});

//모바일 메인 팝업창
$(document).ready(function () {
    var mySwiper = new Swiper('.swiper-container', {
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

        pagination: {
            el: '.swiper-pagination',
            type: 'bullets',
        },

        autoplay: {
            delay: 3000,
        },
    });

    $("#popup_clear, #home").click(function () {
        $('.overlay').css('display', 'none');
        $(".popup_sldie").animate({
            bottom: "-100%"
        }, 2000);
    });

});


