<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_PRODUCT_INQUERY_WRITE_DETAIL.aspx.cs" Inherits="drKid.Source.m.my.M_M_PRODUCT_INQUERY_WRITE_DETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myPage {
           background-color:#FFFFFF;
           padding: 0 15px;
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
            border-bottom: 2px solid #e2e2e2;
        }

        .inquery_list_content {
            padding: 0.5rem 0;
            border-bottom: 2px solid #e2e2e2;
        }

        .inquery_list_content_top {
            font-weight: 500;
        }

        .inquery_list_title_top {
            color:#343434;
            line-height: 1.4;
        }

        .inquery_list_content_bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .shipping_title {
            padding: 0.4rem 0;
        }

        .shipping_button {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding-top: 1rem;
        }

        .shipping_button > .button {
            border: 1px solid #115c5e;
            padding: 0.3rem 2rem;
            min-width: 48%;
            text-align: center;
        }

        .shipping_button > .button:first-child {
            font-weight:600;
        }

        .shipping_button > .button:last-child {
            color:#fff;
        }

       
        /*.pluse_img {
            width: 4rem;
            height: 4rem;
        }*/


        .pluse_img_detail {
            display:grid;
            grid-template-columns: repeat(3,1fr);
            gap:10px
        }

        .pluse_img_detail > img {
            width: 100%;
            height: 4rem;
            object-fit: cover;
            padding-bottom: 0.2rem;
        }

        /*폰트. color*/
        .icon_font
        {
            font-size:0.75rem;
        }

        .txt_header_color {
            color:#8F8F8F;
        }

        .text_black_color {
            color:#262626;
        }

    </style>

    <script>
        $(document).ready(function () {
            $(".prev_button, #remove_button").click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_INQUERY_WRITE.aspx";
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
            <%--배송지 관리 헤더 top--%>
            <div class="myPageHeader_top">
                <%--<a href="/Source/m/my/M_M_MYPAGE.aspx">--%>
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
                <%--</a>--%>
                <div class="myPage_txt">
                    <span>나의 상품문의</span>
                </div> 
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>
        <%--1:1문의 title--%>
        <div class="inquery_list_content">
            <div class="inquery_list_content_top">
                <span class="text_black_color">[주문/결제]</span>
                <span class="text_black_color">주문시에 MY쿠폰에 있는 쿠폰사 용이 안됩니다.</span>
            </div>
            <div class="inquery_list_content_bottom">
                <div class="inquery_list_content_bottom_id">
                    <span class="m_lower_font mono_dea_color">drk**</span>
                     <span class="m_lower_font mono_dea_color">2023.06.01</span>
                </div>
                <div class="inquery_list_content_bottom_date">
                    <span class="m_lower_font">답변대기</span>
                </div>
            </div>
        </div>
        <%--1:1문의 title 끝--%>

         <%--1:1문의 txt--%>
        <div class="inquery_list_content">
            <div class="inquery_list_title_top m_middle_font">
                <span>
                    주문을 하려고 하는데 <br />
                    주문시에 MY쿠폰에 있는 쿠폰사용이 안됩니다. <br />
                    웰컴 쿠폰 3,000원을 가지고 있는데 적용이 안됩니다
                </span>
            </div>
        </div>
        <%--1:1문의 txt 끝--%>

        <%--첨부 파일 --%>
        <div class="shippingList_wrap">
            <div class="shipping_title">
                <span class="m_middle_font">첨부파일</span>
            </div>

            <%--첨부파일 이미지--%>
            <div class="pluse_img_wrap">
                <div class="pluse_img_wrap_inner">
                    <div class="pluse_img_detail">
                       <img src="/Source/Client/image/scale_img.png" alt="Alternate Text" />
                       <img src="/Source/Client/image/scale_img.png" alt="Alternate Text" />
                       <img src="/Source/Client/image/scale_img.png" alt="Alternate Text" />
                       <img src="/Source/Client/image/scale_img.png" alt="Alternate Text" />
                       <img src="/Source/Client/image/scale_img.png" alt="Alternate Text" />
                    </div>
                </div>
            </div>              
        </div>
        <%--첨부 파일 끝--%>


         <%--최하단 버튼--%>
        <div class="shipping_button">
            <div class="button" id="remove_button">
                <span class="main_color">수정</span>
            </div>
                <div class="button main_bg_color" id="save_button">
                <span>삭제</span>
            </div>
        </div>
    </div>
</asp:Content>
