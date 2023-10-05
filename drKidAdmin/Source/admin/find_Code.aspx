<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="find_Code.aspx.cs" Inherits="drKidAdmin.Source.admin.find_Code" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
            width: 70%;
            margin: 0 auto;
            margin-bottom:10px;
            
            display: flex;
            justify-content: flex-start;
        }
        
        .guide-txt{
            color:var(--main_color);
            font-weight: normal;
        }

        .id-field,.pw-field,.login-btn{
            height : 50px;
            border: 1px solid #E1E1E1;
            width: 70%;
            margin: 0 auto;
            margin-bottom:10px;
            border-radius: 4px;

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
        #id_input,#pw_input{
            height: 100%;
            width: 100%;
        }
        

    </style>
    <script>
        var flag = '<%=flag%>';
        var way = '<%=way%>';
        var sessionCode = "<%=sessionCode%>";

        $(function () {
            if (flag == "id") {
                $(".login-title").text("관리자 아이디 찾기");
                $(".login-btn").text("아이디 찾기");
                if (way == "email") {
                    $(".guide-txt").text("입력하신 이메일로 발송된 인증코드를 입력해주세요.");
                }
                if (way == "phone") {
                    $(".guide-txt").text("입력하신 전화번호로 발송된 인증코드를 입력해주세요.");
                }
            }
            if (flag == "pw") {
                $(".login-title").text("관리자 비밀번호 찾기");
                $(".login-btn").text("임시 비밀번호 발급하기");
                if (way == "email") {
                    $(".guide-txt").text("입력하신 이메일로 발송된 인증코드를 입력해주세요.");
                }
                if (way == "phone") {
                    $(".guide-txt").text("입력하신 전화번호로 발송된 인증코드를 입력해주세요.");
                }
            }
        });

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

            $(".login-btn").on("click", function () {
                var inputCode = $("#id_input").val().toString();
                console.log("id_input " + inputCode);
                console.log(" sesstion" + sessionCode)
                if (sessionCode == inputCode) {//nOTLuT
                   if (flag == "id") {
                       window.open("/Source/admin/find_Result.aspx?flag=id", "관리자 아이디찾기", 'width=700px,height=800px,scrollbars=yes,menubar =no,toolbar=no, resizable=no')
                   }
                   if (flag == "pw") {
                       $(".code_flag").val("Y");
                       $("#form1").submit();
                   }
               }
               else {
                   _popModal.Alert('인증 실패', "인증번호가 일치하지 않습니다.");
                   return false;
               }
            });
            var code_flag = "<%=code_flag%>";
            if (code_flag == "Y") {
                window.open("/Source/admin/find_Result.aspx?flag=pw", "관리자 비밀번호찾기", 'width=700px,height=800px,scrollbars=yes,menubar =no,toolbar=no, resizable=no')
            }
       });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrap">
            <div class="content-field">
                <div class="login-field">
                    <input type="hidden" name="code_flag" class="code_flag" />
                    <div class="login-title">
                        
                    </div>
                    <div class="radio_wrap">
                        <label class="">
                            <span class="guide-txt lower-font">이메일로 발송된 인증코드를 입력해주세요.</span>
                        </label>
                    </div>
                    <div class ="id-field">
                        <input id="id_input" placeholder="인증코드"/>
                    </div>
                    <div class ="login-btn middle-font">
                        
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>

