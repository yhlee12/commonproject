﻿$(document).ready(function () {
    //카테고리 hover
    var activeDropdown = null;
    var dropdownHideTimeout;

    //메인 슬라이더
    const slide = $(".slide");
    let slideWidth = slide.width();
    const prevBtn = $(".slide_prev_button");
    const nextBtn = $(".slide_next_button");
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

    //메인 최상단 옵션
    $('.header_inner_wrap_top > .clear').click(function () {
        $('.header_inner_wrap_top').css('display', 'none');
    });

    //메인 fixed 팝업창
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

    $('.clear_under > span:nth-child(2)').click(function () {
        $('.popup_sldie').css('display', 'none');
    });

    //카테고리 드롭다운
    $('#menu1').mouseenter(function () {
        showDropdown('#dropdown1');
    }).mouseleave(function () {
        scheduleHideDropdown('#dropdown1');
    });

    $('.menu-hover-class').mouseenter(function () {
        let _id = $(this).attr('id') + '';
        let _Key = _id.split('_')[1];
        let _showDown = $(`#dropdown${_Key}`);
        _showDown.find('.header_drop_event_wrap_inner').css('left', $(this).offset().left + 'px');
        showDropdown(`#dropdown${_Key}`);
    }).mouseleave(function () {
        let _id = $(this).attr('id') + '';
        let _Key = _id.split('_')[1];
        scheduleHideDropdown(`#dropdown${_Key}`);
    });

    $('#menu2').mouseenter(function () {
        $('.header_drop_sell_wrap_inner').css('left', $('#menu2').offset().left + 'px');
        showDropdown('#dropdown2');
    }).mouseleave(function () {
        scheduleHideDropdown('#dropdown2');
    });

    $('#menu3').mouseenter(function () {
        $('.header_drop_event_wrap_inner').css('left', $('#menu3').offset().left + 'px');
        showDropdown('#dropdown3');
    }).mouseleave(function () {
        scheduleHideDropdown('#dropdown3');
    });

    $('.dropdown').mouseenter(function () {
        cancelHideDropdown();
    }).mouseleave(function () {
        hideDropdown(activeDropdown);
    });

    $(document).on('click', function (event) {
        var target = $(event.target);
        if (!target.closest('.dropdown').length && !target.closest('.menu').length) {
            hideDropdown(activeDropdown);
        }
    });

    function showDropdown(dropdownId) {
        if (activeDropdown !== dropdownId) {
            clearTimeout(dropdownHideTimeout);
            hideDropdown(activeDropdown);
            $(dropdownId).css('display', 'block');
            activeDropdown = dropdownId;
        }
    }

    function hideDropdown(dropdownId) {
        if (dropdownId !== null) {
            $(dropdownId).css('display', 'none');
            activeDropdown = null;
        }
    }

    function scheduleHideDropdown(dropdownId) {
        dropdownHideTimeout = setTimeout(function () {
            hideDropdown(dropdownId);
        }, 200);
    }

    function cancelHideDropdown() {
        clearTimeout(dropdownHideTimeout);
    }

    //메인 슬라이더
    function nextMove() {
        currSlide++;
        if (currSlide <= maxSlide) {
            const offset = slideWidth * currSlide;
            slideItems.each(function () {
                $(this).css("left", -offset + "px");
            });
            paginationItems.removeClass("active");
            paginationItems.eq(currSlide - 1).addClass("active");
        } else {
            currSlide = 0;
            let offset = slideWidth * currSlide;
            slideItems.each(function () {
                $(this).css({
                    "transition": "0s",
                    "left": -offset + "px"
                });
            });
            currSlide++;
            offset = slideWidth * currSlide;
            setTimeout(function () {
                slideItems.each(function () {
                    $(this).css({
                        "transition": "0.15s",
                        "left": -offset + "px"
                    });
                });
            }, 0);
            paginationItems.removeClass("active");
            paginationItems.eq(currSlide - 1).addClass("active");
        }
    }

    function prevMove() {
        currSlide--;
        if (currSlide > 0) {
            const offset = slideWidth * currSlide;
            slideItems.each(function () {
                $(this).css("left", -offset + "px");
            });
            paginationItems.removeClass("active");
            paginationItems.eq(currSlide - 1).addClass("active");
        } else {
            currSlide = maxSlide + 1;
            let offset = slideWidth * currSlide;
            slideItems.each(function () {
                $(this).css({
                    "transition": "0s",
                    "left": -offset + "px"
                });
            });
            currSlide--;
            offset = slideWidth * currSlide;
            setTimeout(function () {
                slideItems.each(function () {
                    $(this).css({
                        "transition": "0.15s",
                        "left": -offset + "px"
                    });
                });
            }, 0);
            paginationItems.removeClass("active");
            paginationItems.eq(currSlide - 1).addClass("active");
        }
    }

    nextBtn.on("click", function () {
        nextMove();
    });

    prevBtn.on("click", function () {
        prevMove();
    });

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

    slide.on("mouseup", function (e) {
        endPoint = e.pageX;
        if (startPoint < endPoint) {
            prevMove();
        } else if (startPoint > endPoint) {
            nextMove();
        }
    });

    slide.on("touchstart", function (e) {
        startPoint = e.touches[0].pageX;
    });

    slide.on("touchend", function (e) {
        endPoint = e.changedTouches[0].pageX;
        if (startPoint < endPoint) {
            prevMove();
        } else if (startPoint > endPoint) {
            nextMove();
        }
    });

    let loopInterval = setInterval(function () {
        nextMove();
    }, 3000);

    slide.on("mouseover", function () {
        clearInterval(loopInterval);
    });

    slide.on("mouseout", function () {
        loopInterval = setInterval(function () {
            nextMove();
        }, 3000);
    });
    //hover 기능 통합 KSM
    

    //최초 Best Setting
    $('.best-li-hover').eq(0).click();

    //hover 옵션
    $('#hover5').click(function () {
        $('#hover5').css('color', '#115C5E');
        $('#hover5').css('border-bottom-color', '#115C5E');
        $('#hover5').css('font-weight', '700');
        $('#hover6, #hover7, #hover8, #hover9').css('color', '#9f9f9f');
        $('#hover6, #hover7, #hover8, #hover9').css('border-bottom-color', '#9f9f9f');
        $('#hover6, #hover7, #hover8, #hover9').css('font-weight', '300');

        $('#hover6_wrap, #hover7_wrap, #hover8_wrap, #hover9_wrap').hide();
        $('#hover5_wrap').css({
            display:'block',
            position: 'relative',
            top: '20px',
            opacity: 0
        }).animate({
            top: '0px',
            opacity: 1
        }, 500);
    });

    $('#hover6').click(function () {
        $('#hover6').css('color', '#115C5E');
        $('#hover6').css('border-bottom-color', '#115C5E');
        $('#hover6').css('font-weight', '700');
        $('#hover5, #hover7, #hover8, #hover9').css('color', '#9f9f9f');
        $('#hover5, #hover7, #hover8, #hover9').css('border-bottom-color', '#9f9f9f');
        $('#hover5, #hover7, #hover8, #hover9').css('font-weight', '300');

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
        $('#hover7').css('color', '#115C5E');
        $('#hover7').css('border-bottom-color', '#115C5E');
        $('#hover7').css('font-weight', '700');
        $('#hover6, #hover5, #hover8, #hover9').css('color', '#9f9f9f');
        $('#hover6, #hover5, #hover8, #hover9').css('border-bottom-color', '#9f9f9f');
        $('#hover6, #hover5, #hover8, #hover9').css('font-weight', '300');

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
        $('#hover8').css('color', '#115C5E');
        $('#hover8').css('border-bottom-color', '#115C5E');
        $('#hover8').css('font-weight', '700');
        $('#hover6, #hover7, #hover5, #hover9').css('color', '#9f9f9f');
        $('#hover6, #hover7, #hover5, #hover9').css('border-bottom-color', '#9f9f9f');
        $('#hover6, #hover7, #hover5, #hover9').css('font-weight', '300');

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
        $('#hover9').css('color', '#115C5E');
        $('#hover9').css('border-bottom-color', '#115C5E');
        $('#hover9').css('font-weight', '700');
        $('#hover6, #hover7, #hover8, #hover5').css('color', '#9f9f9f');
        $('#hover6, #hover7, #hover8, #hover5').css('border-bottom-color', '#9f9f9f');
        $('#hover6, #hover7, #hover8, #hover5').css('font-weight', '300');

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

    //메인 검색 버튼
    $("#search_button").click(function () {
        $(".search_wrap_inner").css({
            "display": "block",
            "z-index": "999"
        });

        $("<div>")
          .addClass("overlay")
          .css({
              "position": "fixed",
              "top": 0,
              "left": 0,
              "width": "100%",
              "height": "100%",
              "background-color": "rgba(0, 0, 0, 0.5)",
              "z-index": "998"
          })
          .appendTo("body");
    });

    $(".search_clear").click(function () {
        $(".search_wrap_inner").css("display", "none");
        $(".overlay").remove();
    });

    $(".title_search > span").click(function () {
        window.location.href = "/Source/client/my/C_MY_SEARCH.aspx";
    });

    $(".search_wrap_inner").keydown(function (event) {
        if (event.which === 13 || event.keyCode === 13) {
            window.location.href = "/Source/client/my/C_MY_SEARCH.aspx";
            return false;
        }
    });
});

//유튜브 박스 슬라이드
$("document").ready(function () {
    if ($(".banSwiper2").length > 0) {
        var swiper2 = new Swiper(".banSwiper2", {
            slidesPerView: 1,
            slidesPerGroup: 1,
            spaceBetween: 0,
            loop: true,
            //autoplay: true,
            navigation: {
                nextEl: ".mb_btn_r",
                prevEl: ".mb_btn_l",
            },
            breakpoints: {
                520: {
                    spaceBetween: 0,
                },
            },
            on: {
                slideChange: function () {
                    var swipTotal = this.el.querySelectorAll(".mb_box").length;
                    if (swipTotal > 1) {
                        swipTotal -= 2;
                    }
                    if (this.activeIndex < 1) {
                        $(".mb_box").removeClass("active");
                        $(".mb_box_" + swipTotal).addClass("active");

                    } else if (this.activeIndex > swipTotal) {
                        $(".mb_box").removeClass("active");
                        $(".mb_box_1").addClass("active");
                    } else {
                        $(".mb_box").removeClass("active");
                        $(".mb_box_" + this.activeIndex).addClass("active");

                    }

                }
            }
        });
    }
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
        y: '-1300',
        duration: 10,
    });
});