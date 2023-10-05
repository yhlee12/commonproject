<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="find_ID.aspx.cs" Inherits="drKidAdmin.Source.admin.find_ID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>관리자 아이디 찾기</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css"/>
    <link rel="stylesheet" href="/Source/css/default.css"/>
    <link rel="stylesheet" href="/Source/css/root.css"/>
    <link rel="stylesheet" href="/Source/css/font.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" />
    <script src="/js/common.js"></script>
    <style>

        html,body,form{
            width:100%;
            height:100%;
        }
        .wrap{
            width:100%;
            height:100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color:var(--mono_back);
        }
        .content-field{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 636px;
            flex-direction: column;
        }
        .icon-field{
            
        }
        #icon-inner{
            top:50%;
            left:50%;
            position:absolute;
            transform:translate(-50%,-50%);
            max-width:90%;
        }
        .login-field{
            border: 1px solid #DFDFDF;
            width: 100%;
            background-color:#fff;
            padding:60px 0;
        }
        .login-title{
            margin: 0 auto;
            display: flex;
            width: 70%;
            justify-content: center;
            font-size : 36px;
            margin-bottom:42px;
            height: 43px;
            font-weight: 500;
            cursor: context-menu;
        }
        .id-field,.pw-field,.login-btn,.radio_wrap{
            height : 50px;
            width: 70%;
            margin: 0 auto;
            margin-bottom:10px;
            
            display: flex;
            justify-content: flex-end;
        }
        .guide-txt{
            font-weight: normal;
        }
        .id-field,.pw-field,.login-btn{
            height : 50px;
            width: 70%;
            margin: 0 auto;
            margin-bottom:10px;
            border-radius: 4px;

        }
        .phone-field{
            display:flex;
            margin: 0 auto;
            width: 70%;
            justify-content: space-between;
        }
        #phonenum1, #phonenum2, #phonenum3 {
            height : 50px;
            border: 1px solid var(--mono_line);
            border-radius: 4px;
        }

        #phonenum1 {
            width: 120px;

        }
        #phonenum2,#phonenum3{
            width: 145px;
        }
        .login-btn{
            display: flex;
            background-color:#343434;
            color :#D8D8D8;
            align-items: center;
            justify-content: center;
            margin-top:50px;
            cursor: pointer;
        }
        .id-find,.pw-find{
            color:#707070;
            margin: 0 18px;
            cursor:pointer;
        }
        #id_input1,#id_input2,#pw_input{
            height: 100%;
            width: 100%;
            border-radius: 4px;
        }
        .phone-form{
            display:none;
        }

    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            //var loginbtn = document.querySelector(".login-btn");
            //loginbtn.addEventListener('click', login);

            var emailbtn = document.querySelector(".emailbtn");
            emailbtn.addEventListener('click', email);

            var phonebtn = document.querySelector(".phonebtn");
            phonebtn.addEventListener('click', phone);

            $(".wayToSend").val("email");
        });

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

            $(".phone_no").on("input", function () {
                $(this).val($(this).val().replace(/[^0-9]/g, ""));
            });

            $(".login-btn").on("click", function () {
                var mobile_no = $("#phonenum1").val() + '-' + $("#phonenum2").val() + '-' + $("#phonenum3").val();
                $("#MOBILE_NO").val(mobile_no);
                if (input_validation() == true) {
                    $("#form1").submit();

                }
            });

            var sendflag = "<%=sendflag%>";
            var cp_ret_status = "<%=cp_ret_status%>";
            var cp_ret_message = "<%=cp_ret_message%>";
            var way = "<%=way%>";
            if (cp_ret_status == "N") {
                if (sendflag == "Y") {
                    window.open("/Source/admin/find_Code.aspx?flag=id&way=" + way, "관리자 아이디찾기", 'width=700px,height=800px,scrollbars=yes,menubar =no,toolbar=no, resizable=no')
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

        function email() {
            $(".phone-form").css("display", "none");
            $("#id_input2,#phonenum1,#phonenum2,#phonenum3").val(null);
            $(".email-form").css("display", "block");
            $(".wayToSend").val("email");
        };

        function phone() {
            $(".email-form").css("display", "none");
            $(".phone-form").css("display", "block");
            $("#id_input1,#pw_input").val(null);
            $(".wayToSend").val("phone");
        };
       
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrap">
            <input type="hidden" name="find_flag" id="find_flag" />
            <input type="hidden" name="MOBILE_NO" id="MOBILE_NO" />
            <div class="content-field">
                <div class="login-field">
                    <div class="login-title">
                        관리자 아이디 찾기
                    </div>
                    <div class="radio_wrap">
                        <label class="drkid-radio emailbtn">
                            <input type="radio" name="radio" value="" checked="checked" />
                            <span class="lower-font">이메일</span>
                        </label>
                        <label class="drkid-radio phonebtn">
                            <input type="radio" name="radio" value="" />
                            <span class="guide-txt lower-font">휴대폰번호</span>
                        </label>
                    </div>
                    <div class="email-form">
                        <div class="id-field">
                            <input id="id_input1" class="USER_NAME" name="ADMIN_NAME1" placeholder="이름" />
                        </div>
                        <div class="pw-field">
                            <input id="pw_input" class="USER_EMAIL" name="USER_EMAIL" placeholder="이메일" />
                        </div>
                    </div>
                    <div class="phone-form">
                        <div class="id-field">
                            <input id="id_input2" class="USER_NAME" name="ADMIN_NAME2" placeholder="이름" />
                        </div>
                        <div class="phone-field">
                            <input id="phonenum1" class="phone_no" placeholder="010" />
                            <input id="phonenum2" class="phone_no" placeholder="xxxx" />
                            <input id="phonenum3" class="phone_no" placeholder="xxxx" />
                        </div>
                    </div>
                    <input type="hidden" name="wayToSend" class="wayToSend" />
                    <div class="login-btn middle-font findEnterkey">
                        인증번호 발송
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
