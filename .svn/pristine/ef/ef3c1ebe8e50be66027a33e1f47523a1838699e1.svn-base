<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_SECESSION.aspx.cs" Inherits="drKid.Source.m.my.M_M_SECESSION" %>
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
            padding: 0 0px 5px;
        }

        .secession_txt_wrap {
            padding-bottom: 1rem;
        }

        .secession_txt_wrap > p {
            line-height: 1.3;
            font-weight: 400;
            padding-top: 0.5rem;
        }

        /*회원탈퇴 남기실 말씀*/
        .title_input > input {
            width: 100%;
            border-radius:4px;
        }

        .shippingList_wrap_padidng {
            padding: 1rem 0 0.5rem;
            border-bottom: 1px solid var(--mono_line);
        }

        .shipping {
            display: flex;
            align-items: center;
            padding-bottom: 0.5rem;
        }

        .shipping_title {
            padding: 0.4rem 0;
            min-width: 30%;
        }

        .shipping_title_input {
            width: 70%;
        }

        input {
            padding-left: 0.7rem;
        }

        .shipping_title_input > input {
            width: 100%;
            border-radius: 4px;
        }

        #pw::placehoder {
            color:var(--m_mono_color);
        }

        .dateBox {
            width: 70%;
        }

        .drkid-select {
            display:block;
            border: 1px solid var(--mono_line);
            height: 2rem;
            border-radius: 4px;
            padding-left: 0.5rem;
        }

        .drkid-select > select {
            color:var(--mono_sub);
        }

        .title_input > textarea {
            display:block;
            min-width: 100%;
            min-height: 10rem;
            border-radius: 4px;
            border: 1px solid var(--mono_line);
            box-sizing: border-box;
            resize: none;
            padding: 0.5rem;
        }

        #pw::placeholder {
            color:#D8D8D8;
        }

        /*회원탈퇴 버튼 클릭시*/
        .hide_wrap2 {
            display:none;       
            position: fixed;
            width:100%;
            z-index:998;
            top: 0;
            padding: 15px;
            overflow: scroll;
            background: #23232333 0% 0% no-repeat padding-box;
        }

        .hide_wrap_inner {
             width: 100%;
             height:100vh;
             margin: auto;
        }

        .alter {
           padding: 0.8rem 1rem;
            position: relative;
            background: #fff;
            z-index: 999;
            top: 20%;
        }

        .alter_txt {
            text-align:center;
        }

        .alter_button {
            display:flex;
            align-items:center;
            justify-content:space-around;
            padding-top: 2rem;
        }

        .alter_button > .alter_button_fist {
            border: 1px solid var(--main_color);
            background-color: var(--main_color);
            color: #fff;
         }

        .alter_button > .alter_button_second {
             border: 1px solid #E2E2E2;
         }

        .alter_button > .alter_button_fist,
        .alter_button > .alter_button_second {
            cursor:pointer;   
            padding: 0.3rem 2rem;
        }
        .alter_button2 {
            display:flex;
            align-items:center;
            justify-content:center;
            padding-top: 1rem;
        }
        .alter_button2 > .alter_button_fist {
            border: 1px solid var(--main_color);
            background-color: var(--main_color);
            color: #fff;
            cursor:pointer;   
            padding: 0.3rem 2rem;
         }

        /*최하단 버튼*/
        .shipping_button {
            display:flex;
            align-items:center;
            justify-content:center;
            padding-top: 1rem;
        }

        .shipping_button > .button {
            border: 1px solid #115c5e;
            padding: 0.3rem 2rem;
            min-width: 48%;
            text-align: center;
        }

        .shipping_button > .button:last-child {
            color:#fff;
        }
    </style>
    <script>
        $(document).ready(function () {
            //마이페이지로 넘어감
            $(".prev_button").click(function () {
                location.href = "/Source/m/my/M_M_MYPAGE.aspx";
            });
            //회원탈퇴 버튼
            $("#save_button").click(function () {
                $(".hide_wrap2").css("display", "block");
            });
            //회원탈퇴 확인 버튼
            $("#open_button2").click(function () {
                $(".hide_wrap2").css("display", "none");
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--hide wrap2--%>
    <div class="hide_wrap2">
        <div class="hide_wrap_inner">
            <div class="alter">
                <div class="alter_txt">
                    <span class="m_middle_font">회원탈퇴가 완료되었습니다.</span>
                </div>
                <div class="alter_button2">
                    <div class="alter_button_fist" id="open_button2">
                        <span>확인</span>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <%--hide wrap2--%>

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
                    <span>회원탈퇴</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>
        <%--회원탈퇴 안내 문구--%>
        <div class="secession_txt">
            <div class="secession_txt_wrap">
                <p class="m_lower_font">
                    닥터키드니 탈퇴안내
                </p>
                <p class="m_lower_font">
                    회원님께서 회원 탈퇴를 원하신다니 저희 쇼핑몰의 서비스가 많이 부족하고 미흡했나 봅니다. <br />
                    불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객 님의 불편함을 해결해 드리도록 노력하겠습니다.
                </p>
                <p class="m_lower_font">
                    ■ 아울러 회원 탈퇴시의 아래 사항을 숙지하시기 바랍니다. <br />
                    1. 회원 탈퇴 시 회원님의 정보는 상품 반품 및 A/S를 위해 전자 상거래 등에서의 소비자 보호에 관한 법률에 의거한고객정보 보호정책에따라 관리 됩니다.<br />
                    2. 탈퇴 시 회원님께서 보유하셨던 쿠폰 등은 모두 삭제 처리 됩 니다. <br />
                    3. 탈퇴 후 재가입은 1개월 이후에 가능합니다.
                </p>
            </div>
        </div>

        <%--비밀번호,탈퇴사유--%>
        <div class="shippingList_wrap shippingList_wrap_padidng">
            <%--비밀번호--%>
            <div class="shipping">
                <div class="shipping_title">
                    <span class="m_middle_font">비밀번호</span>
                </div>
                <div class="shipping_title_input">
                    <input class="m_lower_font" type="text" name="name" value="" placeholder="비밀번호를 입력해주세요." id="pw"/>
                </div>
            </div>
            <%--탈퇴사유--%>
            <div class="shipping">
                <div class="shipping_title">
                    <span class="m_middle_font">탈퇴사유</span>
                </div>
                <div class="dateBox">
                    <div class="block-example">
                         <select class="drkid-select m_lower_font" style="width:100%;">
                            <option>고객서비스(상담,포장 등) 불만</option>
                            <option>교환/환불/반품 불만</option>
                            <option>상품가격 불만</option>
                            <option>쇼핑몰의 신뢰도 불만</option>
                            <option>배송불만</option>
                            <option>방문 빈도가 낮음</option>
                            <option>개인 정보유출 우려</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <%--남기실 말씀--%>
        <div class="shippingList_wrap">
            <div class="shipping_title">
                <span class="m_middle_font">남기실 말씀</span>
            </div>
            <div class="title_input">
                <textarea class="m_lower_font" style="width:100%;"></textarea>
            </div>
        </div>

        <%--탈퇴하기 버튼--%>
        <div class="shipping_button">
            <div class="button main_bg_color" id="save_button">
                <span>탈퇴하기</span>
            </div>
        </div>
    </div>
</asp:Content>
