<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_PRODUCT_DETAIL_CUPON.aspx.cs" Inherits="drKid.Source.m.my.M_M_PRODUCT_DETAIL_CUPON" %>
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

        .cupon_bottom_title > span {
            font-weight:700;
        }

        .cupon_wrap_inner {
            padding: 0.5rem 15px;
        }

        .cupon_top {
            line-height: 1.4;
        }

        .cupon_top > span {
            display:block;
            font-weight:400;
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

        .purchase_txt > span:first-child {
            color:#9F9F9F;
        }

        .cutpon_bottom_button {
            display: flex;
            justify-content: center;
            gap: 0.4rem;
            padding-top: 6rem;
        }

        .cupon_select {
            display: flex;
            align-items: center;
            padding-bottom: 0.5rem;
        }

        .cupon_select_title {
            min-width: 30%;
        }

        .select_box {
            width: 70%;
            height: 35px;
        }

        .select_box > select {
            width: 100%;
            height: 100%;
            display: block;
            border: 1px solid var(--mono_line);
            border-radius: 4px;
        }

        .drkid-btn-sub2 {
            min-width: 120px;
            padding: 0.5rem 0;
        }
    </style>

    <script>
        $(document).ready(function () {
            //이전 버튼 클릭시
            //상품 구매하기 페이지로 넘어감
            $('.prev_button').click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_DETAIL_PURCHASE.aspx";
            });
            //취소, 쿠폰적용 버튼 클릭시에 
            //우선 상품 구매하기 페이지로 넘어감
            //상품 구매하기 페이지에는 쿠폰 적용 버튼 위에 적용된 쿠폰 값 만큼 - 되는 값이 표시 됨
            //상품 구매하기 페이지에는 span안에 텍스트 값으로 들어가게 되는데 지금은 하드코딩으로 되어 있음
            $('#cuponRemoveBtn, #cuponInqueryBtn').click(function () {
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
                    <span>쿠폰 적용하기</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>

         <%--쿠폰 적용하기 컨텐츠--%>
         <div class="cupon">
             <div class="cupon_wrap">
                 <div class="cupon_wrap_inner">
                     <div class="cupon_top">
                         <span class="m_lower_font main_color">※ 사용 가능한 쿠폰만 노출됩니다.</span>
                         <span class="m_lower_font main_color">※ 실제 보유한 쿠폰과 차이가 있을 수 있습니다.</span>
                         <span class="m_lower_font main_color">※ 쿠폰 사용가능 조건을 확인해주세요.</span>
                     </div>
                     <div class="cupon_bottom">
                         <div class="cupon_bottom_title">
                             <span class="m_ma_font">상품쿠폰</span>
                         </div>
                         <div class="cupon_bottom_img">
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
                            
                            <div class="cupon_select">
                                <div class="cupon_select_title">
                                    <span class="m_middle_font">쿠폰적용</span>
                                </div>
                                <div class="select_box">
                                    <select class="drkid-select m_lower_font">
                                        <option>선택해주세요</option>                                       
                                    </select>                                      
                                </div>
                            </div>                    
                         </div>
                     </div>
                 </div> 
             </div>
         </div>

         <%--쿠폰 적용하기 최하단 버튼--%>
         <div class="cutpon_bottom_button">
            <div class="drkid-btn-sub2" id="cuponRemoveBtn">
                <span class="m_ma_font">취소</span>
            </div>
            <div class="drkid-btn-sub2 drkid-btn-active" id="cuponInqueryBtn">
                <span class="m_ma_font">쿠폰 적용</span>
            </div>
        </div>
    </div>
</asp:Content>
