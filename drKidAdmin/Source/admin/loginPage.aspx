<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="drKidAdmin.Source.admin.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>관리자 로그인</title>
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
        .drkid-icon-admin{
            width:300px;
            margin:auto;
            margin-bottom:42px;
        }
        .drkid-icon-admin > img{
            width:100%;
            height:100%;
            object-fit:cover;
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
            width: 80%;
            justify-content: center;
            font-size : 36px;
            margin-bottom:42px;
            height: 43px;
            font-weight: 500;
            cursor: context-menu;
        }
        .id-field,.pw-field,.login-btn{
            height : 50px;
            border: 1px solid #E1E1E1;
            width: 80%;
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
        .admin-find-field{
            display: flex;
            width: 80%;
            justify-content: center;
            margin: 17px auto;
            position: relative;
        }
        .admin-find-field:before {
            content: "";
            width: 1px;
            height: 15px;
            background-color: #707070;
            position: absolute;
            transform: translate(-550%,0);
            top: 3px;
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
        var $result_code = `<%=cp_ret_status%>`;
        var $result_message = `<%=cp_ret_message%>`;
        document.addEventListener('DOMContentLoaded', function () {
            if ($result_code == `Y`) {
                _popModal.Alert('알림', $result_message);
                $result_code = '';
                $result_message = '';
            }

            var loginbtn = document.querySelector(".login-btn");
            loginbtn.addEventListener('click', login);
            
            var idfindbtn = document.querySelector(".id-find");
            idfindbtn.addEventListener('click', idfind);

            var pwfindbtn = document.querySelector(".pw-find");
            pwfindbtn.addEventListener('click', pwfind);

            document.querySelectorAll('.login-target-input').forEach((input) => {
                input.addEventListener('keypress', (e) => {
                    if (e.keyCode == 13) {
                        login();
                    }
                });
            });
        });

        function login() {
            let _id = String($("#id_input").val());
            let _pwd = String($('#pw_input').val());

            if (_id == '') {
                _popModal.Alert('알림', 'ID를 입력해주세요.');
                return;
            }
            if (_pwd == '') {
                _popModal.Alert('알림', 'PWD를 입력해주세요.');
                return;
            }

            $('#flag').val('login');
            $('#form1').submit();
        };
        function idfind() {
            window.open("/Source/admin/find_ID.aspx", "관리자 아이디찾기", 'width=700px,height=800px,scrollbars=yes,menubar =no,toolbar=no, resizable=no')
        };
        function pwfind() {
            window.open("/Source/admin/find_PW.aspx", "관리자 비밀번호찾기", 'width=700px,height=800px,scrollbars=yes,menubar =no,toolbar=no, resizable=no')
        };


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display:none;">
            <input type="hidden" id="flag" name="flag" value="" />
        </div>
        <div class="wrap">
            <div class="content-field">
                <div class="icon-field">
                    <div class ="icon-inner">
                        <div class="drkid-icon-admin">
                            <img src="/Source/admin/image/drKidAdminImg2.svg"/>
                        </div>
                    </div>
                </div>
                <div class="login-field">
                    <div class="login-title">
                        관리자 센터
                    </div>
                    <div class ="id-field">
                        <input type="text" id="id_input" class="login-target-input" name="USER_ID" placeholder="아이디" maxlength="50"/>
                    </div>
                    <div class ="pw-field">
                        <input type="password" id="pw_input" class="login-target-input" name="USER_PWD" placeholder="비밀번호" maxlength="50"/>
                    </div>
                    <div class ="login-btn middle-font">
                        로그인
                    </div>
                    <div class ="admin-find-field ">
                        <div class="id-find lowerst-font">
                            아이디 찾기
                        </div>
                        <div class="pw-find lowerst-font">
                            비밀번호 찾기
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
