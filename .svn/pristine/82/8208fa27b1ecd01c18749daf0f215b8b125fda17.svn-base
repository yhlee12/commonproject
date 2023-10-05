<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_BASKET.aspx.cs" Inherits="drKid.Source.m.my.M_M_BASKET" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myPage {
           background-color:#FFFFFF;
        }

        .m_bottom {
            display:none;
        }

        .m_header {
            display:none;
        }

        #m_moblie_wrap {
            padding: 1rem 0 2rem 0;
        }

        /*마이페이지 헤더*/
        .myPageHeader {
            background-color:#fff;
            padding-bottom: 0.5rem;
            border-bottom: 1px solid var(--mono_line);
        }

        .prev_button {
            text-align: center;
            display: flex;
            justify-content: center;
        }

        .prev_button > span {
            font-size: 14px;
            font-weight: 700;
        }

        .myPage_txt {
            font-weight: bold;
        }

        .myPage_product_icon {
            text-align: center;
            display: flex;
            justify-content: center;
            visibility: hidden
        }

        .myPageHeader_top {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding: 0 15px 0;
        }

        .basket_content {
            /*border-bottom 들어가야 함*/
        }

        .basket_content_wrap {
            padding: 0.5rem 15px;
        }

        .All_button  {
            padding: 0.3rem 0;
            text-align:center;
            color:#fff;
        }

        .basket_bottom_button {
            display: flex;
            align-items: center;
        }

        .basket_bottom_button > .bottom_button {
            min-width: 50%;
            padding: 0.3rem 0;
            text-align:center;
            border: 1px solid #E1E1E1;
        }

        .Basket_content {
            margin-top: 1rem;
        }

        .Basket_content_wrap {
            border-top: 1px solid;
        }

        .Basket_content_top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0.4rem 0 0 0.3rem;
        }

        .purchase_product {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .purchase_img {
            width:2.5rem;
            height:2.5rem;
        }

        .purchase_txt {
            display: flex;
            /* align-items: center; */
            flex-direction: column;
            line-height: 1.4;
        }

        .purchase_txt_top {
            padding-bottom: 0.2rem;
        }

        .purchase_txt_top > span {
            display:block;
            line-height:1.1;
        }

        .purchase_txt_top > span:first-child {
            color:#9F9F9F;
        }

        .Basket_content_option_box {
            border: 1px solid var(--m_mono_color);
            padding: 0 0.2rem;
        }

        .Basket_content_top_title {
            display:flex;
            align-items:center;
            justify-content:space-between;
            background: var(--mono_back);
            padding: 0.4rem 0.3rem;
        }

        .visibilty_hidden {
            visibility:hidden;
        }

        .Basket_content_price_wrap {
            border-bottom: 1px solid var(--m_mono_color);
            border-top: 1px solid var(--m_mono_color);
        }

        .Basket_content_all_price {
            padding: 0.5rem 15px;
        }

        .price {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .price_title {
            font-weight: 400;
        }

        .Basket_content_bottom_padding {
            padding-bottom: 0.2rem;
        }

        .font-weight {
            font-weight: 700;
        }

        .price_rate_colro {
            color:#8F8F8F;
        }

        .Basket_content_last_price_wrap {
            border-bottom: 1px solid var(--m_mono_color);
        }

        .Basket_last_price {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0.5rem 15px;
        }

        .Basket_content_button {
            padding: 2rem 15px 0;
        }

        .Basket_content_button_top {
            display:flex;
            align-content:center;
            justify-content:space-between;
        }

        .Basket_content_button_top > .button_top {
            width:48%;
            text-align: center;
            color: var(--mono_sub);
            border: 1px solid var(--mono_sub);
            border-radius: 4px;
            padding: 0.2rem 0;
        }

        .Basket_content_button_bottom {
            padding-top: 0.5rem;
        }

        .Basket_content_button_bottom > .button_bottom {
            border-radius:4px;
            text-align: center;
            color:#fff;
            padding: 0.5rem 0;
        }

        /*체크박스 after*/
        .drkid-checkbox > .fake-check-box:after {
            width: 15px;
            height:15px;
            line-height:15px;
            font-size:12px;
        }

        .drkid-checkbox {
            padding-left:0;
        }
    </style>

    <script>
        $(document).ready(function () {
            $('.prev_button').on('click', function () {
                window.history.back();
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            // ALL체크 버튼을 각 name값으로 선언
            const CommonChecked = $("[name=COMMON]").length;
            const RoutineChecked = $("[name=ROUTINE]").length;
            let CheckedObj = {};

            let commonCheckedCnt = $('[name=COMMON]:checked').length;
            let routineCheckedCnt = $('[name=ROUTINE]:checked').length;

            // 일반구매 버튼이 체크 되었을 떄 
            if (CommonChecked === commonCheckedCnt) {
                $("#COMMON_ALL_Btn").prop("checked", true);
            }
            // 정기구매 버튼이 체크 되었을 떄 
            if (RoutineChecked === routineCheckedCnt) {
                $("#ROUTINE_ALL_Btn").prop("checked", true);
            }

            $("[name=COMMON]").change(function () {
                commonCheckedCnt = $('[name=COMMON]:checked').length;

                if (CommonChecked === commonCheckedCnt) {
                    $("#COMMON_ALL_Btn").prop("checked", true);
                } else {
                    $("#COMMON_ALL_Btn").prop("checked", false);
                }

                CheckedObj[this.value] = $(this).is(':checked');
            });

            $("[name=ROUTINE]").change(function () {
                routineCheckedCnt = $('[name=ROUTINE]:checked').length;

                if (RoutineChecked === routineCheckedCnt) {
                    $("#ROUTINE_ALL_Btn").prop("checked", true);
                } else {
                    $("#ROUTINE_ALL_Btn").prop("checked", false);
                }

                CheckedObj[this.value] = $(this).is(':checked');
            });

            $("#COMMON_ALL_Btn").change(function () {
                const commonCheckboxes = $('[name=COMMON]');

                commonCheckboxes.prop('checked', $("#COMMON_ALL_Btn").is(':checked'));

                commonCheckboxes.each(function () {
                    CheckedObj[this.value] = $("#COMMON_ALL_Btn").is(':checked');
                });
            });

            $("#ROUTINE_ALL_Btn").change(function () {
                const routineCheckboxes = $('[name=ROUTINE]');

                routineCheckboxes.prop('checked', $("#ROUTINE_ALL_Btn").is(':checked'));

                routineCheckboxes.each(function () {
                    CheckedObj[this.value] = $("#ROUTINE_ALL_Btn").is(':checked');
                });
            });
            // 이전 버튼 클릭시 이전창으로 넘어감
            $('.prev_button').on('click', function () {
                window.history.back();
            });
            // 전체보기 버튼 클릭시 일반구매, 정기배송 보임 
            $('.All_button').click(function () {
                $('#commonWrap').css('display', 'block');
                $('#routineWrap').css('display', 'block');
                $(".All_button").css({
                    "border": "1px solid var(--main_color)",
                    "color": "#fff",
                    "background": "var(--main_color)"
                });
                $(".basket_bottom_button > .bottom_button").css({
                    "border": "1px solid #E1E1E1",
                    "color": "black",
                    "background": "#fff"
                });
            });
            // 일반구매 버튼 클릭시 일반구매 보임
            $('#commonBtn').click(function () {
                $('#commonWrap').css('display', 'block');
                $('#routineWrap').css('display', 'none');
                $(".All_button, .basket_bottom_button > .bottom_button:last-child").css({
                    "border": "1px solid #E1E1E1",
                    "color": "black",
                    "background": "#fff"
                });
                $(".basket_bottom_button > .bottom_button:first-child").css({
                    "border": "1px solid var(--main_color)",
                    "color": "#fff",
                    "background": "var(--main_color)"
                });
            });
            // 정기배송 버튼 클릭시 정기배송 보임
            $('#routineBtn').click(function () {
                $('#commonWrap').css('display', 'none');
                $('#routineWrap').css('display', 'block');
                $(".All_button, .basket_bottom_button > .bottom_button:first-child").css({
                    "border": "1px solid #E1E1E1",
                    "color": "black",
                    "background": "#fff"
                });
                $(".basket_bottom_button > .bottom_button:last-child").css({
                    "border": "1px solid var(--main_color)",
                    "color": "#fff",
                    "background": "var(--main_color)"
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
            <%--마이페이지 헤더 top--%>
            <div class="myPageHeader_top">
                <div class="prev_button">
                    <span class="material-icons">arrow_back_ios</span>
                </div>
                <div class="myPage_txt">
                    <span>장바구니</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>

        <div class="basket_content">
            <div class="basket_content_wrap">
            <%--장바구니 버튼--%>
                <div class="basket_top_button">
                    <div class="All_button main_bg_color">
                        <span class="m_middle_font">전체보기</span>
                    </div>
                    <div class="basket_bottom_button">
                        <div class="bottom_button" id="commonBtn">
                            <span class="m_middle_font">일반구매 3개</span>
                        </div>
                        <div class="bottom_button" id="routineBtn">
                            <span class="m_middle_font">정기배송 2개</span>
                        </div>
                    </div>
                </div>
                <%--장바구니 구매 목록 컨텐츠--%>
                <div class="Basket_content" id="commonWrap">
                    <div class="Basket_content_wrap">
                        <%--일반구매 타이틀--%>
                        <div class="Basket_content_top_title">
                            <div class="Basket_content_check">
                               <label class="drkid-checkbox">
                                    <input type="checkbox" value="" name="COMMON_ALL" id="COMMON_ALL_Btn"/>
                                    <span class="fake-check-box"></span>
                                </label>                           
                            </div>
                            <div class="Basket_content_title">
                                <span class="m_middle_font">일반구매</span>
                            </div>
                            <div class="visibilty_hidden"></div>
                        </div>
                        <%--일반구매 상품 리스트--%>
                        <div class="Basket_content_top">
                            <%--상품별 체크박스--%>
                            <div class="Basket_content_check">
                               <label class="drkid-checkbox">
                                    <input type="checkbox" value="" name="COMMON"/>
                                    <span class="fake-check-box"></span>
                                </label>                           
                            </div>
                            <%--상품별 이미지--%> 
                            <div class="Basket_content_img">
                                <div class="purchase_product">
                                    <div class="purchase_img">
                                        <img src="/Source/client/image/best_img.png" alt="product_img" />
                                    </div>
                                    <div class="purchase_txt">
                                        <div class="purchase_txt_top">
                                            <span class="m_lower_font">신당케어</span>
                                            <span class="m_lower_font">비건오메가3 (30일분)</span>
                                        </div>
                                        <span class="m_lower_font">36,400 / 1개</span>
                                    </div>
                                </div>
                            </div>
                            <%--상품별 옵션 변경--%>
                            <div class="Basket_content_option">
                                <div class="Basket_content_option_box">
                                    <span class="m_middle_font">옵션변경</span>
                                </div>
                            </div>
                        </div>
                        <%--일반구매 상품 리스트--%>
                        <div class="Basket_content_top">
                            <%--상품별 체크박스--%>
                            <div class="Basket_content_check">
                               <label class="drkid-checkbox">
                                    <input type="checkbox" value="" name="COMMON"/>
                                    <span class="fake-check-box"></span>
                                </label>                           
                            </div>
                            <%--상품별 이미지--%> 
                            <div class="Basket_content_img">
                                <div class="purchase_product">
                                    <div class="purchase_img">
                                        <img src="/Source/client/image/best_img.png" alt="product_img" />
                                    </div>
                                     <div class="purchase_txt">
                                        <div class="purchase_txt_top">
                                            <span class="m_lower_font">신당케어</span>
                                            <span class="m_lower_font">비건오메가3 (30일분)</span>
                                        </div>
                                        <span class="m_lower_font">36,400 / 1개</span>
                                    </div>
                                </div>
                            </div>
                            <%--상품별 옵션 변경--%>
                            <div class="Basket_content_option">
                                <div class="Basket_content_option_box">
                                    <span class="m_middle_font">옵션변경</span>
                                </div>
                            </div>
                        </div>
                        <%--일반구매 상품 리스트--%>
                        <div class="Basket_content_top">
                            <%--상품별 체크박스--%>
                            <div class="Basket_content_check">
                               <label class="drkid-checkbox">
                                    <input type="checkbox" value="" name="COMMON"/>
                                    <span class="fake-check-box"></span>
                                </label>                           
                            </div>
                            <%--상품별 이미지--%> 
                            <div class="Basket_content_img">
                                <div class="purchase_product">
                                    <div class="purchase_img">
                                        <img src="/Source/client/image/best_img.png" alt="product_img" />
                                    </div>
                                     <div class="purchase_txt">
                                        <div class="purchase_txt_top">
                                            <span class="m_lower_font">신당케어</span>
                                            <span class="m_lower_font">비건오메가3 (30일분)</span>
                                        </div>
                                        <span class="m_lower_font">36,400 / 1개</span>
                                    </div>
                                </div>
                            </div>
                            <%--상품별 옵션 변경--%>
                            <div class="Basket_content_option">
                                <div class="Basket_content_option_box">
                                    <span class="m_middle_font">옵션변경</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--장바구니 구매 목록 컨텐츠--%>
                <div class="Basket_content" id="routineWrap">
                    <div class="Basket_content_wrap">
                        <%--정기배송 타이틀--%>
                        <div class="Basket_content_top_title">
                            <div class="Basket_content_check">
                               <label class="drkid-checkbox">
                                    <input type="checkbox" value="" name="ROUTINE_ALL" id="ROUTINE_ALL_Btn"/>
                                    <span class="fake-check-box"></span>
                                </label>                           
                            </div>
                            <div class="Basket_content_title">
                                <span class="m_middle_font">정기배송</span>
                            </div>
                            <div class="visibilty_hidden"></div>
                        </div>
                        <%--일반구매 상품 리스트--%>
                        <div class="Basket_content_top">
                            <%--상품별 체크박스--%>
                            <div class="Basket_content_check">
                               <label class="drkid-checkbox">
                                    <input type="checkbox" value="" name="ROUTINE"/>
                                    <span class="fake-check-box"></span>
                                </label>                           
                            </div>
                            <%--상품별 이미지--%> 
                            <div class="Basket_content_img">
                                <div class="purchase_product">
                                    <div class="purchase_img">
                                        <img src="/Source/client/image/best_img.png" alt="product_img" />
                                    </div>
                                     <div class="purchase_txt">
                                        <div class="purchase_txt_top">
                                            <span class="m_lower_font">신당케어</span>
                                            <span class="m_lower_font">비건오메가3 (30일분)</span>
                                        </div>
                                        <span class="m_lower_font">36,400 / 1개</span>
                                    </div>
                                </div>
                            </div>
                            <%--상품별 옵션 변경--%>
                            <div class="Basket_content_option">
                                <div class="Basket_content_option_box">
                                    <span class="m_middle_font">옵션변경</span>
                                </div>
                            </div>
                        </div>
                        <%--일반구매 상품 리스트--%>
                        <div class="Basket_content_top">
                            <%--상품별 체크박스--%>
                            <div class="Basket_content_check">
                               <label class="drkid-checkbox">
                                    <input type="checkbox" value="" name="ROUTINE"/>
                                    <span class="fake-check-box"></span>
                                </label>                           
                            </div>
                            <%--상품별 이미지--%> 
                            <div class="Basket_content_img">
                                <div class="purchase_product">
                                    <div class="purchase_img">
                                        <img src="/Source/client/image/best_img.png" alt="product_img" />
                                    </div>
                                     <div class="purchase_txt">
                                        <div class="purchase_txt_top">
                                            <span class="m_lower_font">신당케어</span>
                                            <span class="m_lower_font">비건오메가3 (30일분)</span>
                                        </div>
                                        <span class="m_lower_font">36,400 / 1개</span>
                                    </div>
                                </div>
                            </div>
                            <%--상품별 옵션 변경--%>
                            <div class="Basket_content_option">
                                <div class="Basket_content_option_box">
                                    <span class="m_middle_font">옵션변경</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--장바구니 금액 --%>
            <div class="Basket_content_price">
                <div class="Basket_content_price_wrap">
                    <div class="Basket_content_all_price">
                        <%--상품 합계 금액--%>
                        <div class="price Basket_content_bottom_padding">
                            <div class="price_title">
                                <span class="m_middle_font">상품 합계 금액</span>
                            </div>
                            <div class="price_rate">
                                <span class="m_middle_font font-weight">158,400원</span>
                            </div>
                        </div>
                        <%--상품 할인--%>
                        <div class="price Basket_content_bottom_padding">
                            <div class="price_title">
                                <span class="m_middle_font">상품 할인</span>
                            </div>
                            <div class="price_rate">
                                <span class="m_middle_font price_rate_colro">-8,280원</span>
                            </div>
                        </div>
                        <%--배송비--%>
                        <div class="price Basket_content_bottom_padding">
                            <div class="price_title">
                                <span class="m_middle_font">배송지</span>
                            </div>
                            <div class="price_rate">
                                <span class="m_middle_font price_rate_colro">0원</span>
                            </div>
                        </div>
                        <%--마일리지--%>
                        <div class="price">
                            <div class="price_title">
                                <span class="m_middle_font">마일리지</span>
                            </div>
                            <div class="price_rate">
                                <span class="m_middle_font price_rate_colro">750원</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--장바구니 총 금액--%>
            <div class="Basket_content_last_price">
                <div class="Basket_content_last_price_wrap">
                    <div class="Basket_last_price">
                        <div class="price_title">
                            <span class="m_middle_font main_color">최종 결제 금액</span>
                        </div>
                        <div class="price_rate">
                            <span class="font-weight main_color">150,120원</span>
                        </div>
                    </div>
                </div>
            </div>
            <%--최하단 버튼--%>
            <div class="Basket_content_button">
                <div class="Basket_content_button_wrap">
                    <div class="Basket_content_button_top">
                        <div class="button_top"">
                            <span class="m_middle_font">선택상품 삭제</span>
                        </div>
                        <div class="button_top"">
                            <span class="m_middle_font">선택상품 주문</span>
                        </div>
                    </div>

                    <div class="Basket_content_button_bottom">
                        <div class="button_bottom main_bg_color">
                            <span class="m_ma_font">전체 상품 주문</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
