<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_BASKET_OPTION.aspx.cs" Inherits="drKid.Source.m.my.M_M_BASKET_OPTION" %>
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

        .Basket_option_wrap {
            padding: 0.5rem 15px;
        }

        .purchase_product {
            display: flex;
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

        .purchase_txt > span:first-child {
            color:#9F9F9F;
        }

        .option_pm_button {
            padding-top: 0.5rem;
        }

        .option_pm_button_wrap {
            max-width: 4.5rem;
        }

        .option_pm {
            display: flex;
            align-items: center;
            border: 1px solid var(--m_mono_color);
            justify-content: space-between;
        }

        .Basket_option_button_wrap {
            text-align:center;
            border-radius:4px;
            color:#fff;
            padding: 0.5rem;
        }

        .Basket_option_button {
            margin-top: 3rem;
        }
    </style>
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
                    <span>옵션선택</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>
        <%--옵션 선택 컨텐츠--%>
        <div class="Basket_option">
            <div class="Basket_option_wrap">
                <%--옵션 선택 상품--%> 
                <div class="Basket_option_product">
                    <div class="purchase_product">
                        <div class="purchase_img">
                            <img src="/Source/client/image/best_img.png" alt="product_img" />
                        </div>
                        <div class="purchase_txt">
                            <span class="m_lower_font">신당케어</span>
                            <span class="m_lower_font">비건오메가3 (30일분)</span>
                        </div>
                    </div>
                </div>
                <%--옵션 추가 버튼--%>
                <div class="option_pm_button">
                    <div class="option_pm_button_wrap">
                        <div class="option_pm">
                            <%--옵션 마이너스 버튼--%>                         
                            <span class="material-icons m_lowerst_font">remove</span>                            
                            <%--옵션 m,p클릭시 카운트 되는 옵션 숫자--%>                           
                            <span class="m_middle_font">1</span>                            
                            <%--옵션 플러스 버튼--%>                          
                            <span class="material-icons m_lowerst_font">add</span>                           
                        </div>
                    </div>
                </div>
                <%--옵션 선택 최하단 버튼--%>
                <div class="Basket_option_button">
                    <div class="Basket_option_button_wrap main_bg_color">
                        <span class="m_ma_font">적용하기</span>
                    </div>
                </div> 
            </div>
        </div>
    </div>
</asp:Content>
