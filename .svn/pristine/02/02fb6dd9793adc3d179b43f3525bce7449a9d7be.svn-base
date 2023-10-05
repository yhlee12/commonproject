<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_PRODUCT_DETAIL_DELIVERY.aspx.cs" Inherits="drKid.Source.m.my.M_M_PRODUCT_DETAIL_DELIVERY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myPage {
           background-color:#FFFFFF;
           /*padding: 0 15px;*/
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
            border-bottom: 1px solid var(--mono_line);
            padding-bottom: 0.5rem;
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
            padding: 0 0px 0.5rem;
            padding: 0 15px;
        }

        .shipping_wrap_inner {
            padding: 0 15px;
        }

        #hidden_star {
            visibility: hidden
        }
        .red_star {
            color:red;
        }

        .title_input > input {
            width: 100%;
            border-radius:4px;
        }

        .shipping_title {
            padding: 0.4rem 0;
        }

        .put_address {
            display:flex;
            align-items:center;
            justify-content: space-between;
            gap: 1rem;       
        }

        .put_address_button {
            height: 2rem;
            background:#000;
            color:#fff;
            padding:0 1rem;
            border-radius:4px;
        }

        .put_address_button > span {
            line-height: 2rem;
        }

        .put_address_title_input {
            width: 65%;
        }

        .put_address_title_input > input {
            width: 100%;
            border-radius:4px;
        }

        .input_bottom_padding {
            padding-bottom: 0.4rem;
        }

        .phone_number_wrap {
            display:flex;
            align-items:center;
            justify-content:space-between;
        }

        .number_title_input {
            width:30%;
        }

        .number_title_input > input {
            width:100%;
            border-radius:4px;
        }

        .shippingList {
            padding-bottom: 1rem;
            border-bottom: 1px solid #cacaca;
        }

        .check {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            padding: 1rem 0;
        }

        .shipping_button {
            display:flex;
            align-items:center;
            justify-content:space-between;
        }

        .shipping_button > .button {
            border: 1px solid #115c5e;
            padding: 0.3rem 2.6rem;
            min-width: 43%;
            text-align: center;
        }

        .shipping_button > .button:first-child {
            font-weight:600;
        }

        .shipping_button > .button:last-child {
            color:#fff;
        }

        .input_background {
            background: #F3F3F3;
        }
    </style>

    <script>
        $(document).ready(function () {
            //이전 버튼 클릭시 상품 구매하기 페이지로 넘어감
            $('.prev_button').click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_DETAIL_PURCHASE.aspx";
            });
            //취소/저장 버튼 클릭시에 상품 구매하기 페이지로 넘어가게 해놓음
            //save_button시에는 추가된 배송지 정보를 상품 구매하기 페이지로 넘겨야 함
            //상품 구매하기 페이지로 넘어가는 input에 대한 name 값, id값은 설정해 둠
            $('#remove_button, #save_button').click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_DETAIL_PURCHASE.aspx";
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
            <%--배송지 관리 헤더 top--%>
            <div class="myPageHeader_top">
               <%-- <a href="/Source/m/my/M_M_MYPAGE.aspx">--%>
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
                <%--</a>--%>
                <div class="myPage_txt">
                    <span>배송지 등록</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>
        <%--배송지 정보--%>
        <div class="shipping">
            <div class="shipping_wrap">
                <div class="shipping_wrap_inner">
                    <div class="shippingList">
                        <%--배송지명--%>
                        <div class="shippingList_wrap">
                            <div class="shipping_title">
                                <span class="red_star">*</span>
                                <span class="m_middle_font">배송지명</span>
                            </div>
                            <div class="title_input">
                                <input class="m_lower_font" type="text" name="name" value="" placeholder="배송지명을 입력해 주세요."/>
                            </div>
                        </div>
                        <%--받는분--%>
                        <div class="shippingList_wrap">
                            <div class="shipping_title">
                                <span class="red_star">*</span>
                                <span class="m_middle_font">받는분</span>
                            </div>
                            <div class="title_input">
                                <input class="m_lower_font" type="text" name="name" value="" placeholder="받는분을 입력해 주세요."/>
                            </div>
                        </div>
                        <%--받는 주소--%>
                        <div class="shippingList_wrap">
                            <div class="shipping_title">
                                <span class="red_star">*</span>
                                <span class="m_middle_font">받는 주소</span>
                            </div>
                            <div class="put_address input_bottom_padding">
                                <div class="put_address_title_input">
                                    <input class="m_lower_font input_background" type="text" name="name" value=""/>
                                </div>
                                <div class="put_address_button"> 
                                    <span class="m_lower_font">우편번호</span>
                                </div>
                            </div>
                             <div class="title_input input_bottom_padding">
                                <input class="m_lower_font input_background" type="text" name="name" value=""/>
                            </div>
                             <div class="title_input">
                                <input class="m_lower_font" type="text" name="name" value=""/>
                            </div>                       
                        </div>
                        <%--휴대폰 번호--%>
                        <%--휴대폰 번호 작성되는 input name 값은 ph-Number--%>
                        <div class="shippingList_wrap">
                            <div class="shipping_title">
                                <span class="red_star">*</span>
                                <span class="m_middle_font">휴대폰 번호</span>
                            </div>
                            <div class="phone_number_wrap">
                                <div class="number_title_input">
                                    <input class="m_lower_font" type="text" name="ph-Number1" value="" id="ph-Number1"/>
                                </div>
                                <div class="number_title_input">
                                    <input class="m_lower_font" type="text" name="ph-Number2" value="" id="ph-Number2"/>
                                </div>
                                <div class="number_title_input">
                                    <input class="m_lower_font" type="text" name="ph-Number3" value="" id="ph-Number3"/>
                                </div>
                            </div>                           
                        </div>
                        <%--추가 연락처--%>
                        <%--추가 연락처 작성되는 input name 값은 Add-Ph-Number--%>
                        <div class="shippingList_wrap">
                            <div class="shipping_title">
                                <span class="red_star" id="hidden_star">*</span>
                                <span class="m_middle_font">추가 연락처</span>
                            </div>
                            <div class="phone_number_wrap">
                                <div class="number_title_input">
                                    <input class="m_lower_font" type="text" name="Add-Ph-Number1" value="" id="Add-Ph-Number1"/>
                                </div>
                                <div class="number_title_input">
                                    <input class="m_lower_font" type="text" name="Add-Ph-Number2" value="" id="Add-Ph-Number2"/>
                                </div>
                                <div class="number_title_input">
                                    <input class="m_lower_font" type="text" name="Add-Ph-Number3" value="" id="Add-Ph-Number3"/>
                                </div>
                            </div>                       
                        </div>
                    </div>

                    <%--체크 박스--%>
                    <div class="check">
                        <div class="block-example">
                            <label class="drkid-checkbox">
                                <input type="checkbox" value="Y" />
                                <span class="fake-check-box"></span>
                            </label>
                        </div>
                        <div class="check_txt">
                            <span>기본 배송지로 설정 합니다.</span>
                        </div>
                    </div>

                     <%--최하단 버튼--%>
                    <div class="shipping_button">
                        <div class="button" id="remove_button">
                            <span class="main_color">취소</span>
                        </div>
                         <div class="button main_bg_color" id="save_button">
                            <span>저장</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
