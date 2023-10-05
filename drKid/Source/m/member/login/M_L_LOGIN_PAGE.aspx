﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_L_LOGIN_PAGE.aspx.cs" Inherits="drKid.M_L_LOGIN_PAGE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*1rem font 지정을 위한 사이즈 조절*/
        /*0.1rem = 2px*/
        html {font-size:20px;}

        #wrap{
            text-align: center;
            max-width: 460px;
            margin: auto;     
        }

        #subtitle{
            padding:0.3rem 0 0.5rem;
        }

        #selctlog_wrap{
            display: flex;
            justify-content: center;
        }

        #userlog_wrap{
            width: 50%;
            height: 45px;
            border: 1px solid #AAAAAA;
            line-height: 3;
            border-radius: 4px 0px 0px 4px;
            cursor:pointer;
        }
        #un_userlog_wrap{
            width: 50%;
            height: 45px;
            background-color: #FAFAFA;
            border: 1px solid #EFEFEF;
            line-height: 3;
            border-radius: 0px 4px 4px 0px;
            cursor:pointer;
        }
        #textbox{
            padding : 1.2rem 0;
        }

        #idtext{
            margin-bottom: 8px;
        }

        #idtext{
            width : 100%;
            height: 2.5rem;
            border :  1px solid #E1E1E1;
            border-radius: 4px 4px 0px 0px;
            padding:0;
        }
        #passwordtext{
            width : 100%;
            height: 2.5rem;
            border :  1px solid #E1E1E1;
            border-radius: 0px 0px 4px 4px;
            padding:0;
        }

        #loginbutton > button{
            background-color: #343434;
            width: 100%;
            height: 2.7rem;
            border-radius: 4px;
            margin-bottom: 1rem;
            border: none;
            cursor:pointer;
        }

        #find_wrap{
            margin: auto;
            width: 100%;
            text-align: center;
            padding-bottom: 1rem;
        }
        #find{
            display: flex;
            justify-content: space-between;
        }

        a{color: #707070;}


        #a1{
            color: #707070;
            padding: 0 9px;
        }

        #line_wrap {
            position: relative; 
            z-index: -2;
        }

        #line_content{
            margin: auto;
            width: 190px;
            position: relative; 
            z-index: 2; 
            top : -19px;
            background-color: white;

        }
        #line{
            background-color: #B4B4B4;
            height:1px;
            border:0;
        }
        #kakaologo > .button{
            display: flex;
            width : 100%;
            height: 2.7rem;
            border-radius: 4px;
            background-color: #FFEE00;
            border: none; 
            cursor:pointer;
        }
    
        .logocontentflex{
            display: flex;
            justify-content: center;
            margin:auto;
        }

        .space{
            padding-left:16px;
            margin: auto 0;
        }

        #naverlogo > .button{
            display: flex;
            width : 100%;
            height: 2.7rem;
            border-radius: 4px;
            border: 1px solid #E1E1E1;
            background-color: white;
            margin-top:0.4rem;
            cursor:pointer;
    
        }
        #naverlogo > span {
            width: 100%;
            height: 2.7rem;
            border-radius: 4px;
            border: 1px solid #E1E1E1;
            background-color: white;
            margin-top: 0.4rem;
            line-height:51px;
            }
        
 
        #textbox input:focus{
            border : 1px solid #115C5E;
            outline: none;
            transition: 0.2s;
  
        }

        .logowrap > img{
            width: 100%;
            height: 100%;
        }
        .naverimg{
            margin: 0 3px;
        }
        #login_title_wrap{
            height:36px;
        }
        
        .login_title{
            display:block;
            line-height:36px;
        }

        /*강승우 폰트 설정*/
        /*.login_large_font{
            font-size: 1.8rem;
        }*/

        .login_title_sub_color{
            color:#9F9F9F;
        }
         .login_select_user_font{
            font-weight: 600;
        }
         .login_select_unuser_font{
            font-weight: 600;
            color:#9F9F9F;
        }
         .login_logo_font{
            font-weight: 600;
        }
      
          .login_button_font{
            font-weight: 600;
            color: #D8D8D8;
        }
          .login_input_font{
            text-indent: 20px;
            font-weight: 600;
            caret-color: #115C5E;
        }
        input::placeholder{
            color: #E1E1E1;
            font-weight: 600;
        }
        
        #naver_id_login{
            display:none !important;
        }

        #NonUserOrder{
            display : none;
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


            $('#un_userlog_wrap').on("click", function () {
                $('#userlog_wrap').css('border', '1px solid #EFEFEF');
                $('#userlog_wrap').css('background', '#FAFAFA');
                $('#userlog_wrap').css('color', '#9F9F9F');
                $('#un_userlog_wrap').css('border', '1px solid #AAAAAA');
                $('#un_userlog_wrap').css('background', 'white');
                $('#un_userlog_wrap').css('color', 'black');
                $('#idtext').attr('placeholder', "주문자명");
                $('#passwordtext').attr('placeholder', "주문번호");
                $('#flag').val("un_login");
            });

            $('#userlog_wrap').on("click", function () {
                $('#un_userlog_wrap').css('border', '1px solid #EFEFEF');
                $('#un_userlog_wrap').css('background', '#FAFAFA');
                $('#un_userlog_wrap').css('color', '#9F9F9F');
                $('#userlog_wrap').css('border', '1px solid #AAAAAA');
                $('#userlog_wrap').css('background', 'white');
                $('#userlog_wrap').css('color', 'black');
                $('#idtext').attr('placeholder', "아이디");
                $('#passwordtext').attr('placeholder', "비밀번호");
                $('#flag').val("login");
            });

            $('.joinbtn').on("click", function () {
                location.href = "/Source/m/member/M_M_JOINSUPPORT.aspx";
            });

            $('#naverlogo').on("click", function () {
                $('#naver_id_login_anchor').children().click();
            });

            $('#kakaologo').on("click", function () {
                loginWithKakao();
            });

            var cp_ret_status = "<%=cp_ret_status %>";
            var cp_ret_message = "<%=cp_ret_message %>";
            if (cp_ret_status == "Y") {
                _popModal.Alert('로그인 실패', cp_ret_message);
                return false;
            }
            //이동규 m으로 수정
            else if (cp_ret_status == "N") {
                location.href = "/Source/m/m_main.aspx";
            }
            else {

            }

        });
        //선실행 함수 끝

        function login() {
            // 이동규 참조하는 form이 모바일에서는 aspnetForm으로 되어있음. 
            //$("#form1").submit();
            $("#aspnetForm").submit();
        };

    </script>

     <script>
                //이동규 회원, 비회원 추가
                $(function () {
                    var CHK_login = localStorage.getItem('login_check');

                    if (CHK_login == 'no') {
                        $('#un_userlog_wrap').on("click", function () {
                            $('#NonUserOrder').css({ 'display': 'block', 'margin-top': '32px' });
                            $('#UserLoginBTN').css('display', 'none');
                            $('#textbox').css('display', 'none');
                        })
                        $('#userlog_wrap').on("click", function () {
                            $('#UserLoginBTN').css('display', 'block');
                            $('#NonUserOrder').css('display', 'none');
                            $('#textbox').css('display', 'block');
                        })

                        $('#NonUserOrder').on("click", function () {
                            location.href = "/Source/m/my/M_M_PRODUCT_DETAIL_PURCHASE.aspx";
                        })
                    }
                    localStorage.clear();

                })
    </script>


    <%--카톡 간편 로그인--%>
    <script src = "https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script src= "https://t1.kakaocdn.net/kakao_js_sdk/2.2.0/kakao.min.js" integrity="sha384-x+WG2i7pOR+oWb6O5GV5f1KN2Ko6N7PTGPS7UlasYWNxZMKQA63Cj/B2lbUmUfuC" crossorigin="anonymous"></script>
   

    
    <script>
        Kakao.init('9badfd8a30a824628adde27f35917642'); // 사용하려는 앱의 JavaScript 키 입력 배포
        //Kakao.init('c3b4f836339e37f98ac594d3827900fe'); // 사용하려는 앱의 JavaScript 키 입력 로컬
    </script>
    <script>
        function loginWithKakao() {
            $('#login_type').val("kakaologin");
            Kakao.Auth.authorize({
                redirectUri: 'http://211.43.207.2/Source/client/member/login/C_LOGIN_Page.aspx'
                //redirectUri: 'http://localhost:18848/Source/client/member/login/C_LOGIN_Page.aspx'
                //redirectUri: 'https://developers.kakao.com/tool/demo/oauth',
            });
        }
        // 아래는 데모를 위한 UI 코드입니다.
        displayToken()
        function displayToken() {
            var token = getCookie('authorize-access-token');
            console.log(token);
            console.log(Kakao.Auth.getAccessToken());
            if (token) {
                Kakao.Auth.setAccessToken(token);
                Kakao.Auth.getStatusInfo()
                  .then(function (res) {
                      if (res.status === 'connected') {
                          document.getElementById('token-result').innerText
                            = 'login success, token: ' + Kakao.Auth.getAccessToken();
                          console.log('access_token:::' + Kakao.Auth.getAccessToken());
                      }
                  })
                  .catch(function (err) {
                      Kakao.Auth.setAccessToken(null);
                  });
            }
        }
        $(function () {
            $.ajax({
                type: "POST"
                , url: 'https://kauth.kakao.com/oauth/token'
                , data: {
                    grant_type: 'authorization_code',
                    client_id: '6ff3b3267ccf1e0d4feb86b35a19a329',          //카카오 디벨롭퍼 REST API 키  로컬
                    redirect_uri: 'http://localhost:18848/Source/client/member/C_MEMBER_JOINSUPPORT.aspx',
                    //client_id: '75fe2083c1cf9a03a4b78977b68d5530',          //카카오 디벨롭퍼 REST API 키  배포
                    //redirect_uri: 'http://211.43.207.2/Source/client/member/login/C_LOGIN_Page.aspx',
                    code: '<%=code%>'
                }
                , contentType: 'application/x-www-form-urlencoded;charset=utf-8'
                , dataType: null
                , success: function (response) {

                    var idToken = response.id_token;
                    var decodedToken = decodeJwtToken(idToken);
                    var userId = decodedToken.sub;
                    $('#socialid').val(userId);
                    $('#login_type').val("kakao");
                    console.log(userId); //  카카오 고유번호 
                    $("#aspnetForm").submit();
                    console.log(JSON.stringify(response));
                    console.log((response.scope));
                }
                , error: function (jqXHR, error) {

                }
            });
        })

        function getCookie(name) {
            var parts = document.cookie.split(name + '=');
            if (parts.length === 2) { return parts[1].split(';')[0]; }
        }
        //카톡 id 토근 값 디코딩 함수
        function decodeJwtToken(token) {
            const base64Url = token.split('.')[1];
            const base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
            const jsonPayload = decodeURIComponent(
              atob(base64)
                .split('')
                .map(function (c) {
                    return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
                })
                .join('')
            );

            return JSON.parse(jsonPayload);
        }
    </script>
    <%--카톡 간편 로그인 끝--%>
    <%--네이버 간편 로그인--%> 
    
    <script src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <%--<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>--%>
    <script>
        var naver_id_login;
        $(document).ready(function () {
            naver_id_login = new naver_id_login("K1garAbjL0UqgAPq_hx4", "http://211.43.207.2/Source/m/member/login/M_L_LOGIN_Page.aspx"); //클라인언트ID , 콜백 URL
            var state = naver_id_login.getUniqState();
            naver_id_login.setButton("white", 4, 40);
            naver_id_login.setDomain("http://211.43.207.2/");
            naver_id_login.setState(state);
            //naver_id_login.setPopup();
            naver_id_login.init_naver_id_login();

            // 접근 토큰 값 출력
            console.log('네이버 ' + naver_id_login.oauthParams.access_token);
            // 네이버 사용자 프로필 조회
            naver_id_login.get_naver_userprofile("naverSignInCallback()");

        });
        // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
        function naverSignInCallback() {
            console.log(naver_id_login.getProfileData('email'));
            console.log(naver_id_login.getProfileData('nickname'));
            console.log(naver_id_login.getProfileData('age'));
            console.log(naver_id_login.getProfileData('name'));
            console.log(naver_id_login.getProfileData('id')); //고유 번호로 사용
            $('#socialid').val(naver_id_login.getProfileData('id'));
            $('#access_token').val(naver_id_login.oauthParams.access_token);
            $('#login_type').val("naver");
            $("#aspnetForm").submit();
            //console.log(naver_id_login);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div id="wrap">
            <input type="hidden" name="flag" id="flag" />
            <input type="hidden" name="login_type" id="login_type" />
            <input type="hidden" name="socialid" id="socialid" />
            <input type="hidden" name="access_token" id="access_token" />

            <div id="title_wrap">
                <div id="login_title_wrap">
                    <span class="m_main_font">로그인</span>
                </div>
                <div id="subtitle" class="login_title_sub_color">
                    <span class="m_middle_font">닥터키드니에 오신것을 환영합니다.</span>
                </div>
            </div>
            <div id="selctlog_wrap" >
                <div id="userlog_wrap" class="login_select_user_font lowerst-font">
                    <span class="m_middle_font" id="userlog_content">회원 로그인</span>
                </div>
                <div id="un_userlog_wrap" class="login_select_unuser_font lowerst-font">
                    <span class="m_middle_font" id="un_userlog_content">비회원 주문/조회</span>
                </div>
            </div>
            <div id="textbox">
                <input class="login_input_font" name="idtext" id="idtext" spellcheck="false" placeholder="아이디" />
                <br />
                <input type="password" class="login_input_font" name="passwordtext" id="passwordtext" placeholder="비밀번호" />
            </div>
            <div id="loginbutton">
             <%--버튼 및 아이디값 추가 이동규--%>
                <button class="middle-font login_button_font findEnterkey" id="UserLoginBTN" type="button" onclick="login()"> 로그인 </button>
                <button class="middle-font login_button_font" id="NonUserOrder" type="button"> 비회원 주문하기 </button>
            </div>
            <div  id="find_wrap">
                <div  id="find">
                    <div>
                        <a class="m_middle_font" href="/Source/m/member/login/M_L_SEARCH_ID1.aspx">아이디 찾기</a>
                        <span id = "a1">  |   </span>
                        <a class="m_middle_font" href="/Source/m/member/login/M_L_SEARCH_PW1.aspx">비밀번호 찾기</a>
                    </div>
                    <div></div>
                    <div>
                        <a class="joinbtn m_middle_font" href="/Source/m/member/M_M_JOINSUPPORT.aspx">회원가입</a>
                    </div>
                </div>
            </div>      
            <div id = "line_wrap">
                <hr id="line">
                    <p id ="line_content" class="m_lower_font">SNS 계정으로 간편 로그인하기</p>
                </div>    
            <div id ="kakaologo" >
                <div class="button">
                    <div class ="logocontentflex">
                        <div class = "logowrap">
                            <img  src="/Source/client/image/kakao_logo.svg" />
                        </div>
                        <p class="space login_logo_font m_middle_font" >카카오 간편 로그인</p>
                    </div>
                </div>
            </div>
         
            <div id = "naverlogo"> 
                <div class="button" >
                    <div  class ="logocontentflex">
                        <div class = "logowrap naverimg">
                            <img  src="/Source/client/image/naver_logo.svg" >
                        </div>
                        <div  class = "space login_logo_font m_middle_font">네이버 간편 로그인</div>
                    
                    </div>
                </div>
            </div>
            <div id='naver_id_login'></div>
        </div>    
</asp:Content>
