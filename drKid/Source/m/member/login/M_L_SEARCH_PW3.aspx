﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_L_SEARCH_PW3.aspx.cs" Inherits="drKid.Source.m.member.login.M_L_SEARCH_PW3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        html {
            font-size: 20px;
        }
        #real_wrap{
            max-width: 1300px;
            margin: auto;
        }
        #wrap{
            text-align: center;
            max-width: 460px;
            margin: auto;
        }
        #title_wrap{
           margin-bottom: 2rem;
           height:36px;
        }
        #textbox input:focus{
            border : 1px solid #115C5E;
            outline: none;
            transition: 0.2s;
        }

        #infotext{
            text-align: left;
            border-bottom: 2px solid #343434;
        }

         #infotext_content{
            padding-bottom:  16px ;
        }

        #textbox > input{
            width : 216px;
            height:2rem;
            border :  1px solid #E1E1E1;
            text-align: center;
        }

        #loginbutton{
            padding: 1rem 0 0.7rem 0;
        }

        button{
            background-color: #343434;
            width: 100%;
            height: 51px;
            border-radius: 4px;
            border: none;
            cursor:pointer;
        }

        a{color: #707070;
            text-decoration: none;}

          #find_wrap{
            width: 100%;
            text-align: center;
            padding-bottom: 32px;
        }

        #find{
            display: flex;
            justify-content: space-between;
        }

        #a1{
            color: #707070;
            padding: 0 9px;
        }

        #codecontent{
            text-align: center;
            padding: 48px 0 16px 0;
        }

        #codecontent1{
             padding-top: 2rem;
        }

        .login_input_font{
            font-weight: 600;
            caret-color: #115C5E;
        }
         .login_info_font{
            font-weight: 600;   
            color : #575757;
        }
          .login_button_font{
            font-weight: 600;
            color: #D8D8D8;
        }

         input::placeholder{
            color: #E1E1E1;
            font-weight: 600;
        }
    </style>
    <script>
        $(function () {

            //엔터키 이벤트
            document.addEventListener("keydown", function (event) {
                if (event.key === "Enter") {
                    event.preventDefault(); // 기본 엔터 동작 방지

                    // 버튼 클릭 이벤트 발생
                    //var button1 = document.getElementById("findpwBtn"); 
                    var button2 = document.getElementsByClassName("findEnterkey");
                    //if (button1) {
                    //    button1.click();
                    //}
                    if (button2.length > 0) {
                        button2[0].click(); // 첫 번째로 일치하는 버튼 클릭
                        $(".drkid-btn-sub2").prop("class", "drkid-btn-sub2 findEnterkey");// 팝업창 엔터키 작동하도록 클래스이름 추가
                    }
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="real_wrap">   
        <div id="wrap">
            <div id="title_wrap">
                <p class="login_title m_main_font" >비밀번호 찾기</p>
            </div>
            <div id = "infotext">
                <p id= "infotext_content" class="m_sub_font">비밀번호 임시발급 완료</p>
            </div>
            <div>
                <div id="codecontent">
                    <p class="main_color lowerst-font" >고객님의 아이디로 임시 비밀번호 발급이 완료되었습니다. <br/>고객님의 임시 비밀번호는 아래와 같습니다.</p>
                </div>
            </div>
            <div id = "textbox">
                <input class="login_input_font" id="idtext" type="text" value="<%=sessionPW %>" readonly=""/>
            </div>
            <div id="codecontent1">
                    <p class="lowerst-font drkid_Negative_color">로그인 후 마이페이지에서 꼭! 비밀번호 수정을 진행하십시오.</p>
                </div>
            <div>
                <div id="loginbutton">
                    <button class="login_button_font findEnterkey" type="button" onclick="location.href='/Source/m/member/login/M_L_LOGIN_PAGE.aspx'"> 로그인 하러가기 </button>
                </div>
            </div>
            <div  id="find_wrap">
                <div  id="find">
                    <div>
                        <a class="lowerst-font" href="/Source/m/member/login/M_L_SEARCH_ID1.aspx">아이디 찾기</a>

                    </div>
                    <div></div>
                    <div>
                        <a class="m_lower_font" href="/Source/client/member/login/M_L_SEARCH_ID1.aspx">로그인</a>
                        <span  class="m_lower_font" id = "a1">  |   </span>
                        <a class="m_lower_font" href="#">회원가입</a>
                    </div>
                </div>
            </div>      
       </div> 
    </div>
</asp:Content>
