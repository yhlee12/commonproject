<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_L_SEARCH_PW2.aspx.cs" Inherits="drKid.Source.m.member.login.M_L_SEARCH_PW2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         html{
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
            margin-bottom : 2rem;
        }
        #infotext{
            text-align: left;
            border-bottom: 2px solid #343434;
        }

        #infotext_content{
            padding-bottom:  16px ;
        }
        #textbox{
            padding-top:8px;
        }
       input{
            width : 100%;
            height: 2.5rem;
            border :  1px solid #E1E1E1;
            border-radius: 4px;
            padding: 0;
        }
        
        #textbox input:focus{
            border : 1px solid #115C5E;
            outline: none;
            transition: 0.2s;
        }


         button{
            background-color: #343434;
            width: 100%;
            height: 2.5rem;
            border-radius: 4px;
            padding-top: 16px 0;
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
            text-align: left;
            padding-top: 2rem;
        }
        #real_wrap{
            max-width: 1300px;
            margin: auto;
        }
        #loginbutton{
            padding: 1rem 0 0.7rem 0;
        }

        /*강승우 폰트 설정*/
        .login_input_font{
            text-indent: 20px;
            font-weight: 600;
            caret-color: #115C5E;
        }
         .login_info_font{
            font-weight: 600;   
            color : #575757;
        }
        .send_Btn{
           display: flex;
           align-items: center;
           justify-content: center;
           background-color: #343434;
           width: 100%;
           height: 51px;
           border-radius: 4px;
           margin: 42px 0 16px 0;
           border: none;
           cursor:pointer;
        }
        .login_button_font{
           font-weight: 600;
           color: #D8D8D8;
        }

         input::placeholder{
            color: #E1E1E1;
            font-weight: 600;
        }
        /*강승우 폰트 설정*/

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="real_wrap">
        <div id="wrap">
            <input type="hidden" name="code_flag" class="code_flag" />
                <div id="title_wrap">
                    <p class="m_main_font login_title">비밀번호 찾기</p>
                </div>
                <div id = "infotext">
                    <p  class="login_info_font m_sub_font" id= "infotext_content">정보입력</p>
                </div>
                <div>
                    <div id="codecontent">
                        <p class="guide_text m_lower_font main_color"><%=way%>로 발송된 인증코드를 입력해주세요.</p>
                    </div>
                </div>
                <div id = "textbox">
                    <input class="login_input_font" id="idtext" type="text" placeholder="인증코드" />
                </div>
                <div>
                    <div id="loginbutton">
                        <div class="login_button_font send_Btn findEnterkey">임시비밀번호 발급하기</div>
                        <%--<button class="login_button_font" type="button" onclick="location.href='/Source/client/member/login/C_LOGIN_SearchPW3.aspx'"> 비밀번호 찾기 </button>--%>
                    </div>
                </div>
                <div  id="find_wrap">
                    <div  id="find">
                        <div>
                            <a class="m_lower_font" href="/Source/client/member/login/C_LOGIN_SEARCH_ID1.aspx">아이디 찾기</a>
                        </div>
                        <div></div>
                        <div>
                            <a class="m_lower_font" href="/Source/client/member/login/C_LOGIN_Page.aspx">로그인</a>
                            <span  class="m_lower_font" id = "a1">  |   </span>
                            <a class="m_lower_font" href="#">회원가입</a>
                        </div>
                    </div>
                </div>      
         </div>
    </div> 
</asp:Content>
