<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_L_SEARCH_ID2.aspx.cs" Inherits="drKid.Source.m.member.login.M_L_SEARCH_ID2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
          #real_wrap{
            max-width: 1300px;
            padding:80px 0;
            margin: auto;       
        }
        #wrap{
            text-align: center;
            max-width: 460px;
            margin: auto;
        }
        #title_wrap{
            margin-bottom : 80px;
            height : 36px;
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
            height: 51px;
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
            height: 51px;
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
            padding-top: 40px;
        }
        #real_wrap{
            max-width: 1300px;
                 margin: auto;
        }
        #loginbutton{
            padding: 32px 0 14px 0;
        }

        
         .login_title{
            display:block;
            line-height:36px;
         }

                /*강승우 폰트 설정*/
         

         .login_input_font{
            text-indent: 20px;
            font-weight: 600;
            caret-color: #115C5E;
         }
         .login_info_font{
            font-size: 18px;
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


            var sesstionCode = "<%=sesstionCode%>";
            var way = "<%=way%>";



            $(".send_Btn").on("click", function () {
                var inputCode = $("#idtext").val().toString();
                console.log("intput " + inputCode);
                console.log(" sesstion" + sesstionCode)
                if (sesstionCode == inputCode) {//nOTLuT
                    location.href = "/Source/m/member/login/M_L_SEARCH_ID3.aspx";
                }
                else {
                    _popModal.Alert('인증 실패', "인증번호가 일치하지 않습니다.");
                    return false;
                }
            });

        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="real_wrap">
        <div id="wrap">
            <div id="title_wrap">
                <p class="m_main_font login_title">아이디 찾기</p>
            </div>
            <div id="infotext">
                <p class=" login_info_font middle-font" id="infotext_content">정보입력</p>
            </div>
            <div>
                <div id="codecontent">
                    <p class="guide_text lowerst-font main_color"><%=way%>로 발송된 인증코드를 입력해주세요.</p>
                </div>
            </div>
            <div id="textbox">
                <input class="login_input_font" id="idtext" type="text" placeholder="인증코드"/>
            </div>
            <div>
                <div id="loginbutton">
                    <div class="login_button_font send_Btn findEnterkey">아이디 찾기</div>
                    <%--<button type="button" class="login_button_font" onclick="location.href='/Source/client/member/login/C_LOGIN_SearchID3.aspx'">아이디 찾기 </button>--%>
                </div>
            </div>
            <div id="find_wrap">
                <div id="find">
                    <div>
                        <a class="lowerst-font" href="/Source/m/member/login/M_L_SEARCH_PW1.aspx">비밀번호 찾기</a>
                    </div>
                    <div></div>
                    <div>
                        <a class="lowerst-font" href="/Source/m/member/login/M_L_LOGIN_PAGE.aspx">로그인</a>
                        <span class="lowerst-font" id="a1">|   </span>
                        <a class="lowerst-font" href="#">회원가입</a>
                    </div>
                </div>
            </div>
        </div>
    </div> 
</asp:Content>
