<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_INFOCHANGE.aspx.cs" Inherits="drKid.Source.m.my.M_M_INFOCHANGE" %>
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

        .change_txt_wrap {
            text-align:center;
            padding: 2rem 0;
        }

        .change_txt_wrap > p {
            font-weight: 400;
            line-height: 1.3;
        }

        .id {
            display:flex;
            align-items:center;
            gap: 10px;
            padding-bottom: 1rem;
        }

        .pw_wrap {
            height:2.5rem;
        }

        .pw_wrap > input {
            border-radius:4px;
            width: 100%;
            height: 100%;
        }

        .change_button {
            display:flex;
            align-items:center;
            justify-content:center;
            padding-top: 30px;
        }

        .change_button_wrap {
            padding: 10px 30px;
            color:#fff;
            cursor: pointer;
        }

        #pw > input::placeholder {
            color:var(--m_mono_color);
        }
    </style>

     <script>
         $(document).ready(function () {
             //회원정보 수정 
             $("#change_button").click(function () {
                 location.href = "/Source/m/my/M_M_INFOCHANGE_DETAIL.aspx";
             });

             $(".prev_button").click(function () {
                 location.href = "/Source/m/my/M_M_MYPAGE.aspx";
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
                    <span>회원정보 수정</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
            
            <%--최상단 회원정보 수정 텍스트--%>
            <div class="change_txt">
                <div class="change_txt_wrap">
                    <p class="lowerst-font">
                        회원님의 정보를 안전하게 보호하기 위해<br />
                        비밀번호를 다시 한번 확인해 주세요.
                    </p>
                </div>
            </div>

            <%--아이디 비밀번호 확인창--%>
            <div class="change_ip">
                <div class="change_ip_wrap">
                    <div class="id">
                        <span class="lowerst-font">아이디</span>
                        <span class="lowerst-font main_color">drkeydni</span>
                    </div>
                    <div class="pw_wrap" id="pw">
                        <input class="lowerst-font" type="text" name="name" value="" placeholder="비밀번호를 입력해 주세요."/>
                    </div>
                 </div>
            </div>

            <%--인증하기 버튼--%>
            <div class="change_button">
                <div class="change_button_wrap main_bg_color lowerst-font" id="change_button">
                    <span>인증하기</span>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
