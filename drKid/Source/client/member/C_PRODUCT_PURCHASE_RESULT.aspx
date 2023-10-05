﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_PRODUCT_PURCHASE_RESULT.aspx.cs" Inherits="drKid.Source.client.member.C_PRODUCT_PURCHASE_RESULT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #sub_content {
            padding: 7rem 0;
            position: relative;
            z-index: 1;
        }
        .sub_layout {
            width: 95rem;
            max-width: 100%;
            margin: 0 auto;
            position: relative;
            height: 100%;
        }
        #content {
            max-width: 1350px;
            margin: auto;
        }
        .product_info_box_wrap {
            display: flex;
            align-items: center;
            text-align: center;
            border-top: 1px solid #000000;
            padding: 25px 0px;
        }


        .product_info_txt {
            padding-bottom: 20px;
            font-size: 22px;
            font-weight: 700;
        }

        .product_info_box_top {
            background-color:#F9F9F9;
        }

        .product_info_box_menu_first {
            width:500px;
            font-weight: 400;
        }

        .product_info_box_menu_second {
            display:flex;
            width: 850px;
            justify-content: space-around;
        }

        .second_menu {
            width: 133px;
        }

        .product_info_box_menu {
            font-weight: 400;
        }

        input {
            width: 200px;
            height: 35px;
            padding-left: 20px;
            border-radius: 6px;
            font-size: 14px;
        }

        .order_box {
            border-top: 1px solid #111111;
        }

        .orderer {
            margin-top: 50px;
        }

        .orderer_content {
            display: flex;
            align-items: center;
            height: 55px;
            border-bottom: 1px solid #cacaca;
        }

        input {
            margin: 0;
        }

        .first_border {
          border-top: 1px solid #000;
        }

        .bottom_border {
          border-bottom: 1px solid #CCCCCC;
        }

        .info_box {
          width: 100%;
          display: flex;
          justify-self: center;
        }

        .info_box_menu {
          width: 220px;
          padding: 15px 28px;
          background-color: #F9F9F9;
          font-size: 14px;
          color: #828282;
        }

        .info_box_menu_content {
          width: 80%;
          padding: 15px 15px;
          display: flex;
          align-items: center;
        }

        .main_title {
            color: #343434;
            font-weight: 400;
        }

        .main_font {
            font-size: 14px;
            color: #8F8F8F
        }

        .price_font {
            font-size: 14px;
            color:#115C5E;
            font-weight: 500;
        }

        .img_bg {
            display: flex;
        }

        .img {
            width: 55px;
            height:55px;
        }

        .img > img {
            width: 100%;
            height: 100%;
            object-fit : cover;
        }

        .img_txt {
            padding-left: 10px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .first_txt {
            font-size: 14px;
            color: #9F9F9F;
        }

        .second_txt {
            color: #262626;
            font-weight: 500;
        }

        .head_txt {
            font-size: 30px;
            color:#262626;
            text-align:center;
            font-weight: 700;
            padding-bottom: 70px;
        }

        .last_button_wrap {
            padding: 50px 0;
        }

        .last_button {
            width: 120px;
            height:50px;
            background-color: #115C5E;
            color:white;
            font-weight: 400;
            text-align: center;
            cursor:pointer;
            margin: auto;
        }

        .last_button > span {
            line-height: 50px;
        }

        .transtion {
            color: #fff;
            padding: 0 10px;
            border-radius: 4px;
            cursor: pointer;
        }        
    </style>

    <script>
        $(document).ready(function () {
            var jsonData = JSON.parse(<%=jsonStr %>);
            console.log(jsonData);

            //구매 정보 세팅
            $(".payMethod").text(jsonData.payMethod);
            $(".MOID").text(jsonData.MOID);
            $(".applDate").text(jsonData.applDate);
            $(".applTime").text(jsonData.applTime);
            $(".buyerName").text(jsonData.buyerName);
            $(".TotPrice").text(jsonData.TotPrice);


            //현금영수증 버튼
            $("#Receipt_Btn").click(function () {
                var url = "/Source/client/member/html/Cash_receipts.html";
                var popupWindow = window.open(url, "_blank", "width=800,height=1000");

                if (popupWindow) {
                    popupWindow.focus();
                }
            });

            //거래명세서 버튼
            $("#Specification_Btn").click(function () {
                var url = "/Source/client/member/html/Trading_statement.html";
                var popupWindow = window.open(url, "_blank", "width=800,height=700");

                if (popupWindow) {
                    popupWindow.focus();
                }
            });
        });
    
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id ="sub_content">
        <div class="sub_layout">
             <div id="content">
                 <%--결제 정보--%>
                    <div class="head_txt">
                        <span>주문이 정상적으로 접수 되었습니다.</span>
                    </div>
                     <div class="orderer">
                         <div class="orderer_wrap">
                             <div class="orderer_wrap_inner">
                                <div class="product_info_txt mono_point">
                                    <span>주문요약정보</span>
                                </div>
                                <div class="delivery_info">
                                    <div class="delivery_info_wrap">
                                        <div class="delivery_info_wrap_wrap">
                                            <!--상품 합계 금액-->
                                            <div class="info_box first_border bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">결제수단</span>
                                                </div>
                                                <div class="info_box_menu_content main_font">
                                                    <span class="payMethod">신용카드</span>
                                                </div>
                                            </div>
                                            <div class="info_box  bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">주문번호</span>
                                                </div>
                                                <div class="info_box_menu_content main_font">
                                                    <span class="MOID">230642364353623</span>
                                                </div>
                                            </div>
                                            <div class="info_box  bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">주문일자</span>
                                                </div>
                                                <div class="info_box_menu_content main_font">
                                                    <span class="applDate">2023-06-12 </span><span class="applTime">16:05:35</span>
                                                </div>
                                            </div>
                                            <div class="info_box  bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">주문상품</span>
                                                </div>
                                                <div class="info_box_menu_content">
                                                    <div class="img_bg">
                                                        <div class="img">
                                                            <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                        </div>
                                                        <div class="img_txt">
                                                            <p class="first_txt">
                                                                신당케어
                                                            </p>
                                                            <p class="second_txt">
                                                                비건오메가3 (30일분)
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="info_box  bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">주문자명</span>
                                                </div>
                                                <div class="info_box_menu_content main_font">
                                                    <span class="buyerName">표수민</span>
                                                </div>
                                            </div>
                                            <div class="info_box  bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">배송정보</span>
                                                </div>
                                                <div class="info_box_menu_content">
                                                    <p class="main_font">
                                                        <span class="buyerName">표수민</span> <br />
                                                        [04060] 부산광역시 해운대구 센텀동로99 (벽산이센텀클래스원) 618-1호<br />
                                                        010-1234-5678 <br />
                                                        남기실 말씀 : 문앞에 놔둬주세요 감사합니다.
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="info_box  bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">상품금액</span>
                                                </div>
                                                <div class="info_box_menu_content main_font">
                                                    <span class="TotPrice">6,500원</span>
                                                </div>
                                            </div>
                                            <div class="info_box  bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">배송비</span>
                                                </div>
                                                <div class="info_box_menu_content main_font">
                                                    <span>기본배송 0원</span>
                                                </div>
                                            </div>
                                            <div class="info_box  bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">할인 및 적립</span>
                                                </div>
                                                <div class="info_box_menu_content">
                                                    <p class="main_font">
                                                        등급할인 0원 <br />
                                                        마일리지 0원
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="info_box  bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">총 결제금액</span>
                                                </div>
                                                <div class="info_box_menu_content price_font">
                                                    <span class="TotPrice">6,500원</span>
                                                </div>
                                            </div>
                                            <%--현금영수증--%>
                                            <%--<div class="info_box bottom_border">
                                                <div class="info_box_menu" id="Cash_Btn">
                                                    <span class="main_title">현금영수증</span>
                                                </div>
                                                <div class="info_box_menu_content">
                                                    <div class="main_bg_color transtion" id="Receipt_Btn">
                                                        <span class="lowerst-font">현금영수증</span>
                                                    </div>
                                                </div>
                                            </div>--%>
                                            <%--거래명세서--%>
                                            <%--<div class="info_box bottom_border">
                                                <div class="info_box_menu">
                                                    <span class="main_title">거래명세서</span>
                                                </div>
                                                <div class="info_box_menu_content">
                                                    <div class="main_bg_color transtion" id="Specification_Btn">
                                                        <span class="lowerst-font">거래명세서</span>
                                                    </div>
                                                </div>
                                            </div>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="last_button_wrap">
                          <div class="last_button">
                            <span>확인</span>
                        </div>
                     </div>             
                 </div>
            </div>
        </div>
     
</asp:Content>
