﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_PRODUCT_DETAIL_ORDER_COMPLETE.aspx.cs" Inherits="drKid.Source.m.my.M_M_PRODUCT_DETAIL_ORDER_COMPLETE" %>
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

        .complete_wrap_inner {
            padding: 0.5rem 15px;
        }

        .complete_content {
            background: #F3F3F3;
        }

        .complete_order {
            padding: 10px;
        }

        .complete_order_content {
            display: flex;
            align-items: center;
        }

        .complete_title {
            min-width: 30%;
        }

        .complete_txt {
            width: 70%;
        }

        .conplete_txt_color {
            color:#8F8F8F;
        }

        .purchase_product {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            padding: 0.5rem 0;
        }

        .cupon_bottom_title {
            padding: 1rem 0 0.5rem;
        }

        .cupon_bottom_img {
            border-bottom: 1px solid var(--mono_line);
            border-top: 1px solid var(--mono_line);
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

        .conplete_button_wrap {
            text-align: center;
            border-radius: 4px;
            color: #fff;
            padding: 0.5rem 0;
        }

        .conplete_button {
            padding-top: 0.5rem;
        }

        .address {
            line-height: 1.5;
        }

        .address > span {
            display:block;
        }

        .baseline {
            align-items:baseline;
        }
    </style>

    <script>
        $(document).ready(function () {
            $('.prev_button').click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_DETAIL_PURCHASE.aspx";
            });

            $('#homeBtn').click(function () {
                location.href = "/Source/m/m_main.aspx";
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
                    <span>주문 완료</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>

        <%--주문완료 컨텐츠--%>
        <div class="complete">
            <div class="complete_wrap">
                <div class="complete_wrap_inner">
                    <div class="complete_content">
                        <%--주문왼료 영수증--%>
                        <div class="complete_order">
                            <%--주문번호--%>
                            <div class="complete_order_content">
                                <div class="complete_title">
                                    <span class="m_lower_font">주문번호</span>
                                </div>
                                <div class="complete_txt">
                                    <span class="m_lower_font conplete_txt_color">230642364353623</span>
                                </div>
                            </div>
                             <%--주문일자--%>
                            <div class="complete_order_content">
                                <div class="complete_title">
                                    <span class="m_lower_font">주문일자</span>
                                </div>
                                <div class="complete_txt">
                                    <span class="m_lower_font conplete_txt_color">2023-06-12 16:05:35</span>
                                </div>
                            </div>
                             <%--주문상품--%>
                            <div class="complete_order_content">
                                <div class="complete_title">
                                    <span class="m_lower_font">주문상품</span>
                                </div>
                                <div class="complete_product">
                                    <div class="purchase_product">
                                        <div class="purchase_img">
                                            <img src="/Source/client/image/best_img.png" alt="product_img" />
                                        </div>
                                        <div class="purchase_txt">
                                            <span class="m_lower_font">신당케어</span>
                                            <span class="m_middle_font">비건오메가3 (30일분)</span>
                                            <span class="m_lower_font">36,400 / 1개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--주문자명--%>
                            <div class="complete_order_content">
                                <div class="complete_title">
                                    <span class="m_lower_font">주문자명</span>
                                </div>
                                <div class="complete_txt">
                                    <span class="m_lower_font conplete_txt_color">표수민</span>
                                </div>
                            </div>
                            <%--배송정보--%>
                            <div class="complete_order_content baseline">
                                <div class="complete_title">
                                    <span class="m_lower_font">배송정보</span>
                                </div>
                                <div class="complete_txt address">
                                    <span class="m_lower_font conplete_txt_color">표수민</span> 
                                    <span class="m_lower_font conplete_txt_color">[04060] 부산광역시 해운대구 센텀동 로99 (벽산이센텀클래스원) 618-1호</span>
                                    <span class="m_lower_font conplete_txt_color">010-1234-5678</span>
                                    <span class="m_lower_font conplete_txt_color">남기실 말씀 : 문앞에 놔둬주세요 감사 합니다.</span>
                                </div>
                            </div>  
                            
                             <%--상품금액--%>
                            <div class="complete_order_content">
                                <div class="complete_title">
                                    <span class="m_lower_font">상품금액</span>
                                </div>
                                <div class="complete_txt">
                                    <span class="m_lower_font conplete_txt_color">34,400원</span>
                                </div>
                            </div>  
                            <%--배송비--%>
                            <div class="complete_order_content">
                                <div class="complete_title">
                                    <span class="m_lower_font">배송비</span>
                                </div>
                                <div class="complete_txt">
                                    <span class="m_lower_font conplete_txt_color">기본배송 3,000원</span>
                                </div>
                            </div> 
                             <%--할인 및 적립--%>
                            <div class="complete_order_content baseline">
                                <div class="complete_title">
                                    <span class="m_lower_font">할인 및 적립</span>
                                </div>
                                <div class="complete_txt">
                                    <span class="m_lower_font conplete_txt_color">등급할인 -1,200원</span>
                                    <span class="m_lower_font conplete_txt_color">마일리지 +588원</span>
                                </div>
                            </div>  

                            <%--총 결제금액--%>
                            <div class="complete_order_content">
                                <div class="complete_title">
                                    <span class="m_lower_font">총 결제금액</span>
                                </div>
                                <div class="complete_txt">
                                    <span class="m_lower_font main_color">37,400원</span>
                                </div>
                            </div> 
                             <%--현금영수증--%>
                            <div class="complete_order_content">
                                <div class="complete_title">
                                    <span class="m_lower_font">현금영수증</span>
                                </div>
                                <div class="complete_txt">
                                    <span class="m_lower_font conplete_txt_color">PC버전에서 확인가능합니다.</span>
                                </div>
                            </div>  
                            <%--세금계산서--%>
                            <div class="complete_order_content">
                                <div class="complete_title">
                                    <span class="m_lower_font">세금계산서</span>
                                </div>
                                <div class="complete_txt">
                                    <span class="m_lower_font conplete_txt_color">PC버전에서 확인가능합니다.</span>
                                </div>
                            </div>                                                           
                        </div>
                    </div>

                     <%--complete 최하단 버튼--%>
                    <div class="conplete_button">
                        <div class="conplete_button_wrap main_bg_color" id="homeBtn">
                            <span class="m_ma_font">홈으로 가기</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
