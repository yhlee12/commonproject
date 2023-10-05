<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_C_CATEGORY.aspx.cs" Inherits="drKid.Source.m.category.M_C_CATEGORY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #m_moblie_wrap {
            padding: 0 0 2rem;
        }

        .best_wrap_inner {
            margin-top: 1rem;
        }

        .best_m_menu_wrap {
            padding-bottom: 1rem;
            border-bottom: 1px solid #cacaca;
        }

        .best_content {
            padding: 0 15px;
        }

        .best_content_wrap_inner {
            padding: 1rem 0 0;
        }

        .best_m_menu_wrap_inner {
            padding:0;
            margin: 20px 0 0px;
        }

        .best_m_menu_wrap_inner > ul > li {
            border-radius: 0px;
        }

        .m_best {
            border-radius: 10px;
        }

        .best_img > img {
            border-top-right-radius: 10px;
            border-top-left-radius: 10px;
        }


    </style>

    <script>
        $(document).ready(function () {
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
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--모바일 슬라이드--%>
    <div class="slide slide_wrap">
        <div class="slide_item item1">
            <img src="/Source/client/image/drkid_main_slide1.jpg" alt="Image 1">
        </div>
        <div class="slide_item item2">
            <img src="/Source/client/image/drkid_main_slide2.jpg" alt="Image 2">
        </div>
        <div class="slide_item item3">
            <img src="/Source/client/image/drkid_main_slide3.jpg" alt="Image 3">
        </div>
        <ul class="slide_pagination"></ul>            
    </div>

    <div class="best_wrap_inner">
        <div class="best_main_title big-font GSans">
            <span>제휴몰</span>
        </div>
    </div>

    <div class="best_content">
        <div class="best_content_wrap">
            <%--카테고리 메뉴--%>
            <div class="best_m_menu">
                <div class="best_m_menu_wrap">
                    <div class="best_m_menu_wrap_inner">
                        <ul>
                            <li class="m_lower_font" id="hover5">신당케어</li>
                            <li class="m_lower_font" id="hover6">영물오리진</li>
                            <li class="m_lower_font" id="hover7">패키지</li>
                            <li class="m_lower_font" id="hover8">비알화강</li>
                            <li class="m_lower_font" id="hover9">지노시스템</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div id="hover5_wrap">
                <div class="best_content_wrap_inner margin_bottom">
                <%--best content--%>
                    <div class="m_best">
                        <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                            <div class="best_txt1">
                                <span>BEST</span>
                            </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>                                           
                </div>
            </div>
            <div id="hover6_wrap">
                <div class="best_content_wrap_inner margin_bottom">
                <%--best content--%>
                    <div class="m_best">
                        <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                            <div class="best_txt1">
                                <span>BEST</span>
                            </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>                                           
                </div>
            </div>
            <div id="hover7_wrap">
                <div class="best_content_wrap_inner margin_bottom">
                <%--best content--%>
                    <div class="m_best">
                        <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                            <div class="best_txt1">
                                <span>BEST</span>
                            </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>                                           
                </div>
            </div>
            <div id="hover8_wrap">
                <div class="best_content_wrap_inner margin_bottom">
                <%--best content--%>
                    <div class="m_best">
                        <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                            <div class="best_txt1">
                                <span>BEST</span>
                            </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>                                           
                </div>
            </div>
            <div id="hover9_wrap">
                <div class="best_content_wrap_inner margin_bottom">
                <%--best content--%>
                    <div class="m_best">
                        <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                            <div class="best_txt1">
                                <span>BEST</span>
                            </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>
                        <%--best content--%>
                    <div class="m_best">
                            <div class="best_img">
                            <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                        </div>
                        <div class="best_txt">
                            <div class="main_title m_lower_font">
                                <span>신당케어</span>
                            </div>
                            <div class="sub_title m_middle_font">
                                <span>비건오메가3 (30일분)</span>
                            </div>
                            <div class="discount_price">
                                <div class="second_price m_middle_font">
                                    <span>1,136,400</span>
                                </div>
                                <div class="original_price m_lower_font">
                                    <span>1,156,000</span>
                                </div>
                            </div>
                            <div class="percent main_color m_middle_font">
                                <span>35%</span>
                            </div>
                            <div class="bottom">
                                <div class="bottom_txt m_lowerst_font">
                                    <span>회원 할인 10%</span>
                                </div>
                                <div class="bottom_txt m_lowerst_font">
                                    <span>재구매 추가 할인 5%</span>
                                </div>
                            </div>
                        </div>
                    </div>                                           
                </div>
            </div>
        </div>
    </div>
</asp:Content>
