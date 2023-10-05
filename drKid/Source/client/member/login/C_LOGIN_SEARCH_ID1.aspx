﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_LOGIN_SEARCH_ID1.aspx.cs" Inherits="drKid.C_LOGIN_SEARCH_ID1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--아이디찾기--%>
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
           margin-bottom: 80px;
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
       input{
            width : 100%;
            height: 51px;
            border :  1px solid #E1E1E1;
            border-radius: 4px;
            padding: 0;
        }
        #idtext{
            margin-bottom: 8px;
            border-radius: 4px 4px 0 0;
        }
        button{
            background-color: #343434;
            width: 100%;
            height: 51px;
            border-radius: 4px;
            margin: 42px 0 16px 0;
            border: none;
            cursor:pointer;
        }
        a{
            color: #707070;
            text-decoration: none;
        }
         #find_wrap{
            width: 100%;
            text-align: center;
        }
        #find{
            display: flex;
            justify-content: space-between;
        }
        #a1{
            color: #707070;
            padding: 0 9px;
        }
        #textflex{
            display: flex;
            justify-content: space-between;
  
        }
        .passwordtext{
            letter-spacing: 3px;
            border-radius: 0 0 4px 4px;
            display: none;
        }
        .idtext1{
            width:100%;
        }

        #radio_wrap{
            padding: 8px 0 36px 0;
            text-align:right;
        }

        
        .login_title{
            display:block;
            line-height:36px;
        }

        /*강승우 폰트 설정*/
        .login_large_font{
            font-size: 36px;
        }

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
        $(document).ready(function () {

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

            $('#find_flag').val("email");
            $("input:radio[name=mailornum]").click(function () {

                if ($("input[name=mailornum]:checked").val() == "1") {
                    $('.passwordtext').css('display', 'none');
                    $('.idtext1').css('display', 'block');
                    $('.idtext1').css('margin', 'auto');
                    $('#find_flag').val("email"); idtext
                    $("#idtext,#USER_PHONE1,#USER_PHONE2,#USER_PHONE3,#USER_EMAIL").val(null);
                }
                else if ($("input[name=mailornum]:checked").val() == "0") {
                    $('.idtext1').css('display', 'none'); 
                    $('.passwordtext').css('display', 'block');
                    $('.passwordtext_margin').css('margin', '0 24px');
                    $('#find_flag').val("phone");
                    $("#idtext,#USER_PHONE1,#USER_PHONE2,#USER_PHONE3,#USER_EMAIL").val(null);
                }
            });

            $(".passwordtext").on("input", function () {
                $(this).val($(this).val().replace(/[^0-9]/g, ""));
            });

            $(".send_Btn").on("click", function () {
                var mobile_no = $("#USER_PHONE1").val() + '-' + $("#USER_PHONE2").val() + '-' + $("#USER_PHONE3").val();
                $("#MOBILE_NO").val(mobile_no);
                if (input_validation()==true) {
                    $("#form1").submit();
                    
                }
            });

            var sendflag = "<%=sendflag%>";
            var cp_ret_status = "<%=cp_ret_status%>";
            var cp_ret_message = "<%=cp_ret_message%>";
            var way = "<%=way%>";
            if (cp_ret_status == "N") {
                if (sendflag == "Y") {
                    location.href = "/Source/client/member/login/C_LOGIN_SEARCH_ID2.aspx?way=" + way, "아이디찾기";
                }
                if (sendflag == "N") {
                    _popModal.Alert('인증번호 전송실패!', cp_ret_message);
                    return false;
                }
            }
            if (cp_ret_status == "Y") {
                _popModal.Alert('인증번호 전송실패!', cp_ret_message);
                return false;
            }
        });
        

        function input_validation() {
            if ($('.USER_NAME').val() == null || $('.USER_NAME').val() == "") {
                _popModal.Alert('입력 오류', '이름을 입력해주세요.');
                return false;
            }
            var find_flag = $("#find_flag").val();
            if (find_flag == "phone") {
                _popModal.Alert('인증번호 전송실패!', "죄송합니다.전화번호 인증은 아직준비중입니다.<br/>이메일 인증을 이용해주세요.");
                return false;
            }
            if (find_flag == "email") {
                if ($('.USER_EMAIL').val() == null || $('.USER_EMAIL').val() == "") {
                    _popModal.Alert('입력 오류', '이메일을 입력해주세요.');
                    return false;
                }
            }
            return true;
        };

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" name="find_flag" id="find_flag" />
    <input type="hidden" name="MOBILE_NO" id="MOBILE_NO" />
    <div id="real_wrap">
        <div id="wrap">
            <div id="title_wrap">
                <p class="login_large_font login_title">아이디 찾기</p>
            </div>
            <div id="infotext">
                <p id="infotext_content" class="login_info_font middle-font">정보입력</p>
            </div>
            <div>
                <div id="radio_wrap">
                    <div class="block-example">
                        <label class="drkid-radio">
                            <input type="radio" id="selecte" name="mailornum" value="1" checked="checked" />
                            <span class="lower-font">이메일</span>
                        </label>
                        <label class="drkid-radio">
                            <input type="radio" id="selectt" name="mailornum" value="0" />
                            <span class="lower-font">휴대폰번호</span>
                        </label>
                    </div>
                </div>
                <input class="login_input_font USER_NAME" name="USER_NAME" id="idtext" type="text" placeholder="이름" />
                <br />
                <input class="idtext1 login_input_font USER_EMAIL" name="USER_EMAIL" id="USER_EMAIL" type="text" placeholder="이메일" />
                <div id="textflex">

                    <input id="USER_PHONE1" class="passwordtext login_input_font" name="USER_PHONE1" maxlength="3" placeholder="010" />
                    <input id="USER_PHONE2" class="passwordtext passwordtext_margin login_input_font" name="USER_PHONE2" maxlength='4' placeholder="XXXX" />
                    <input id="USER_PHONE3" class="passwordtext login_input_font" name="USER_PHONE3" maxlength='4' placeholder="XXXX" />
                </div>
            </div>
            <div>
                <div id="loginbutton">
                    <div class="login_button_font send_Btn findEnterkey">인증번호 발송</div>
                </div>
            </div>
            <div id="find_wrap">
                <div id="find">
                    <div>
                        <a class="lowerst-font" href="/Source/client/member/login/C_LOGIN_SEARCH_PW1.aspx">비밀번호 찾기</a>
                    </div>
                    <div></div>
                    <div>
                        <a class="lowerst-font" href="/Source/client/member/login/C_LOGIN_Page.aspx">로그인</a>
                        <span class="lowerst-font" id="a1">|   </span>
                        <a class="lowerst-font" href="">회원가입</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
