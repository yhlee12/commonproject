﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_JOIN.aspx.cs" Inherits="drKid.Source.m.member.M_M_JOIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         #sub_content {
            padding: 7rem 0;
            position: relative;
            z-index: 1;
        }
        .sub_layout {
            width: 95rem;
            max-width: 100%;
            margin: 0 auto;
            position: relative;
            height: 100%;
        }
        .join_Input_Box {
            max-width: 620px;
            margin: 0 auto;
        }
        .join_Title_Area {
            text-align: center;
        }
        .join_Title {
            font-weight: 500;
        }
         .join_Step_Area {
            padding: 1.5rem 0px;
        }
        .join_Step {
            display: flex;
            justify-content: center;
            text-align: center;
        }
        .active_Txt {
            font-weight:600;
        }
        .disabled_Txt {
            color:#9F9F9F;
        }
        .active_Step_Text {
            padding:0px 20px;
        }
        .disabled_Step_Text {
            padding:0px 20px;
            color:#9F9F9F;
        }
        .sub_Title_Area {
            text-align: center;
            font-weight: 400;
            padding: 0px 0px 30px 0px;
        }

        .sub_Title {
            color:#9F9F9F;
        }
        .join_Input_Guide {
            width:30%;
        }

        .join_Input_Guide > span { 
            font-size:0.7rem;
        }
        .join_Input_Content {
            display: flex;
            align-items: center;
            width: 100%;
            padding: 10px 0px;
            position:relative;
        }
        .join_Input_Data {
            width: 79.4%;
        }
 
        input[type="text"], input[type="password"] {
            width:100%;
            padding: 12px 10px;
            height: 40px;
        }
        .empty_space {
            width:30%;
        }
        .multi_Input_Content {
            width: 79.4%;
            float: right;
        }
        .multi_Input_Content_2 {
            width: 79.4%;
            float: right;
            padding:10px 0px;
        }
        .join_Input_Email_Area {
            width: 100%;
            display: flex;
            justify-content: space-between;
            gap: 0.2rem;
        }
        .join_Input_Email_1 {
             width: 70%;
        }
        .join_Input_Email_2 {
             width: 40%;
             height:40px;
        }
        .join_Address_Area {
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .address_Search_Btn {
            background: #343434;
            color: #ffffff;
            text-align: center;
            border-radius: 4px;
            padding: 2px;
            width: 38%;
            height:40px;
            cursor:pointer;
            font-size:0.6rem;
        }

        .address_Search_Btn > span { 
            line-height:40px;
        }
        #I_ADDRESS_1 {
            width:59%;
            background:#F3F3F3;
    
        }
        #I_ADDRESS_1 :focus {
            outline:none;
        }
        #I_ADDRESS_2 {
            background:#F3F3F3;
        }
        .join_Input_Birth_Area {
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 0.2rem;
        }
        .join_Input_Birth_Year, .join_Input_Birth_Month, .join_Input_Birth_Date {
            width: 100%;
            height:40px;
        }
        .btn_area {
            width:100%;
            display:flex;
            align-items: center;
            justify-content: center;
            padding-top: 1rem;
        }
        .btn_Content {
            display: flex;
            /* float: right; */
            align-items: center;
            justify-content: center;

        }
        .back_Btn {
            border: 1px solid #E1E1E1;
            border-radius: 4px;
            /* padding: 8px 30px; */
            margin-right: 3%;
            cursor: pointer;
            width: 5rem;
            text-align: center;
            padding: 0.5rem;
        }
        .join_Btn {
            background: #343434 0% 0% no-repeat padding-box;
            border-radius: 4px;
            color: #ffffff;
            /* padding: 8px 30px; */
            cursor: pointer;
            width: 5rem;
            text-align: center;
            padding: 0.5rem;
        }
        .drkid-select-div {
            line-height: 35px;
            font-size:14px;
        }
        .id_Guide_1, .id_Guide_2, .id_Guide_3       , .id_Guide_Ok ,
        .pw_Guide_1, .pw_Guide_2, .pw_Guide_Ok      ,
        .pw_check_Guide_1       , .pw_check_Guide_Ok,
        .email_Guide_1          , .email_Guide_2    , .email_Guide_Ok,
        .phone_Guide_1          , .phone_Guide_2    , .phone_Guide_Ok,
        .birth_Guide_1
        {
            display:none;
        }
        .id_Guide_Ok ,
        .pw_Guide_Ok ,
        .pw_check_Guide_Ok ,
        .email_Guide_Ok ,
        .phone_Guide_Ok
        {
            color:#115C5E;
        }
        .guide_Area {
            width:100%;
            display:flex;
        }
        .guide_Area_2 {
            width:100%;
            display:flex;
            padding: 0px 0px 10px 0px;
        }
        .guide_Area_3 {
            width:100%;
            display:flex;
            padding: 10px 0px 0px 0px;
        }
        .guide_Area_4 {
            width:100%;
            display:flex;
            padding: 0px 0px 10px 0px;
        }
        .guide_Area_5 {
            width:100%;
            display:flex;
            padding: 0px 0px 10px 0px;
        }
        .multi_Input_Area {
            display:flex;
        }
       
        #daumLayer {
             display:none;width:100%;height:300px;position:absolute; z-index:999;border: 1px solid #918d8d; 
        }
       .daumLayer_Top {
            /*width: 579px;
            height: 45px;
            padding: 0px 8px;
            border-right: solid 1px #E2E2E2;
            border-bottom: solid 1px #E2E2E2;
            background: white;
            display:flex;
            align-items:center;*/
            width: 100%;
            height: 45px;
            padding: 0px 7px;
            background: white;
            display: flex;
            align-items: center;
            border-bottom: solid 1px #d7d7d7;
        }
        .daumLayer_Top_area_1,.daumLayer_Top_area_3 {
            width:33%;
            height: 24px;

        }
        .daumLayer_Top_area_2 {
            width:33%;  
            height: 24px;
            text-align:center;
        }
        .form_search {
           border-bottom: 1px solid 1px solid #363636 !important;
        }
        .popup_head {
            height: 46px;
            z-index: 2;
            border-bottom: 1px solid #E2E2E2 !important;
        }
        .address_Icon_Area {
            float:right;
            cursor:pointer;
        }
        .clear-icon:after {
            content: "clear";
            font-size: 22px;
        }
        .daumLayer_Top_Title {
             font-weight: 500;
        }
        .drkid-select-ul {
            overflow: scroll;
            height: 300px;
        }

        .drkid-select {
             display:block;
             width:100%;
             height:100%;
             border: 1px solid #e2e2e2;
             padding-left:5px;
        }

        select {
            display:block;
        }
    </style>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
    <script src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script>
        //$(document).ready(function () {
        //var naver_id_login = new naver_id_login("K1garAbjL0UqgAPq_hx4", "http://localhost:18848/Source/client/member/login/C_LOGIN_Page.aspx"); //클라인언트ID , 콜백 URL
        var naver_id_login = new naver_id_login("K1garAbjL0UqgAPq_hx4", "http://211.43.207.2/Source/client/member/login/C_LOGIN_Page.aspx"); //클라인언트ID , 콜백 URL

        $(function () {
            //아이디 입력 가이드
            var id_flag_1 = false; // 길이 체크
            var id_flag_2 = false; // 문자조건 체크
            var id_flag_3 = false; // 중복 체크

            //ID ajax 중복체크 밸리데이션 
            $("#I_ID").on("input", function () {
                console.log($("#I_ID").val());
                filter = "UserId"
                USER_ID = $("#I_ID").val();
                $.ajax({
                    type: "post",
                    url: "/Source/client/member/ajax/C_MEMBER_ID_REDUPLICATION.aspx",
                    data: {
                        filter: filter, USER_ID: USER_ID
                    },
                    success: function (response) { //컨트롤러에서 넘어온 cnt값을 받는다 
                        console.log(response);
                        var inputValue = $("#I_ID").val();
                        var regex = /^[a-zA-Z0-9]+$/;// 영문자와 숫자만 허용하는 정규식
                        // 4자리 이상 입력 

                        if (inputValue.length <= 4 && inputValue.length > 0) {
                            $('.id_Guide_1').css("display", "block");
                            $("#I_ID").css('outline', '1px solid #FF441D');
                            id_flag_1 = false;
                            $('#H_ID').val("False");
                        }
                        else {
                            $('.id_Guide_1').css("display", "none");
                            id_flag_1 = true;
                        }
                        //영어나 숫자만 입력가능
                        if (regex.test(inputValue) || inputValue.trim() === '') {
                            $('.id_Guide_2').css("display", "none");
                            id_flag_2 = true;
                        }
                        else {
                            $('.id_Guide_2').css("display", "block");
                            $("#I_ID").css('outline', '1px solid #FF441D');
                            id_flag_2 = false;
                            $('#H_ID').val("False");
                        }
                        if (response != 0 && response != 3) { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디
                            $('.id_Guide_3').css("display", "block");
                            $("#I_ID").css('outline', '1px solid #FF441D');
                            id_flag_3 = false;
                            $('#H_ID').val("False");
                        }
                        else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                            $('.id_Guide_3').css("display", "none");
                            id_flag_3 = true;
                        }
                        if (id_flag_1 === true && id_flag_2 === true && id_flag_3 === true && inputValue.length > 4) {
                            $('.id_Guide_Ok').css("display", "block");
                            $("#I_ID").css('outline', '1px solid #005764');
                            $('#H_ID').val("True");
                        }
                        else {
                            $('.id_Guide_Ok').css("display", "none");
                        }
                        //빈칸일 경우 빨간줄테두리가 아닌 평소 테두리로 돌아오도록 설정.

                        if (inputValue.length == 0) {
                            $("#I_ID").css('outline', '1px solid var(--mono_line)');
                        }
                    },
                    error: function () {

                    }
                });
            });

            //비밀번호 값 삭제시
            $('#I_PW').on('keyup', function (e) {
                if (e.keyCode == 8 || e.keyCode == 46) {
                    if ($('#I_PW').val().length == 0) {
                        $('.pw_Guide_Ok').css("display", "none");
                    }
                    pw_DoubleCheck();
                }
            });

            //비밀번호 입력 가이드
            var pw_flag_1 = false; // 비밀번호 문자조건 체크
            var pw_flag_2 = false; // 비밀번호 길이 체크
            $("#I_PW").on("input", function () {
                var inputValue = $(this).val();
                var pwcheckinputValue = $("#I_PW_CHECK").val();
                pw_DoubleCheck();
                //1~9자리 까지 입력하면 8자리 이상 입력하라고 가이드
                if (inputValue.length <= 7 && inputValue.length > 0) {
                    $('.pw_Guide_1').css("display", "block");
                    $(this).css('outline', '1px solid #FF441D');
                    pw_flag_1 = false;
                    console.log("pw_flag_1:", pw_flag_1)
                }
                else {
                    $('.pw_Guide_1').css("display", "none");
                    pw_flag_1 = true;
                    console.log("pw_flag_1:", pw_flag_1)
                }
                //입력된 영문,숫자,특수문자 체크
                var input_letters = 0;
                var input_numbers = 0;
                var input_specials = 0;
                for (var i = 0; i < inputValue.length; i++) {
                    var char = inputValue.charAt(i);
                    if (/[a-zA-Z]/.test(char)) {
                        input_letters++; //영문
                    } else if (/[0-9]/.test(char)) {
                        input_numbers++; //숫자
                    } else {
                        input_specials++;//특수문자
                    }
                }
                //영문 ,숫자, 특수문자가 1개 이상으로 조합되었는지 , 8자리 이상 입력했는지체크
                if (input_letters >= 1 && input_numbers >= 1 && input_specials >= 1 && inputValue.length > 7) {
                    $('.pw_Guide_2').css("display", "none");
                    pw_flag_2 = true;
                    console.log("pw_flag_2:", pw_flag_2)
                } else if (inputValue.length > 7) {
                    $('.pw_Guide_2').css("display", "block");
                    $(this).css('outline', '1px solid #FF441D');
                    pw_flag_2 = false;
                    console.log("pw_flag_2:", pw_flag_2)
                }
                // 비밀번호 자리수와 조합을 잘 지켰으면 사용 가능하다고 가이드
                if (pw_flag_1 && pw_flag_2) {
                    $('.pw_Guide_Ok').css("display", "block");
                    $(this).css('outline', '1px solid #005764');

                } else {
                    $('.pw_Guide_Ok').css("display", "none");
                }

                //빈칸일 경우 빨간줄테두리가 아닌 평소 테두리로 돌아오도록 설정.
                if (inputValue.length == 0 || pwcheckinputValue.length == 0) {
                    $("#I_PW_CHECK").css('outline', '1px solid var(--mono_line)');
                }
            });

            //비밀번호 입력(확인란) 가이드

            var pw_check_flag_1 = false; //비밀번호 일치 체크
            $("#I_PW_CHECK").on("input", function () {
                var inputValue = $(this).val();
                if ($("#I_PW_CHECK").val() == $("#I_PW").val() && pw_flag_1 && pw_flag_2 && inputValue.length > 7) {
                    $('.pw_check_Guide_1').css("display", "none");
                    $('.pw_check_Guide_Ok').css("display", "block");
                    $(this).css('outline', '1px solid #005764');
                    pw_check_flag_1 = true;

                }
                else {
                    $('.pw_check_Guide_Ok').css("display", "none");
                    if (inputValue.length > 7 && $("#I_PW_CHECK").val() != $("#I_PW").val()) {
                        $('.pw_check_Guide_1').css("display", "block");
                        $(this).css('outline', '1px solid #FF441D');
                    }

                    //빈칸일 경우 빨간줄테두리가 아닌 평소 테두리로 돌아오도록 설정.
                    if (inputValue.length == 0) {
                        $("#I_PW_CHECK").css('outline', '1px solid var(--mono_line)');
                    }
                    pw_check_flag_1 = false;
                }
                console.log("pw_check_flag_1:", pw_check_flag_1)
            });
            //이메일 입력 가이드

            //이메일 직접 입력란

            //이메일 뒤 셀렉트요소            
            $('#email_Select').change(function (e) {
                //고쳐놨음. change만 인식함. KSM
                //Common js에서 강제로 변경일어나면 change Event 발동하도록 trigger 걸어뒀어요
                //이제 change Event감지잘될겁니다.
                //on change 는 안먹힙니다. 기본적으로 jquery가 on 이후에 change 바인딩하면
                //javascript change event랑 다르게 인식해서 그래요.
                // ==> 감사합니다 KSM 대리님 

                var select_value = $(e.currentTarget).val();
                select_value.trim();
                if (select_value != "" || select_value !== null) {
                    var input_email_txt = $('#I_EMAIL').val(); // 이미 작성된 텍스트 가져오기

                    var includes_symbol = input_email_txt.includes('@'); // '@'가 있는지 검사

                    if (includes_symbol) {
                        //있을경우 @뒤에 양식만 바뀜
                        console.log("입력 요소의 값에 '@'가 포함되어 있습니다.");
                        var first_email = input_email_txt.split('@')[0];
                        var format_txt = first_email + "@" + select_value;
                        $('#I_EMAIL').val(format_txt);
                    }
                    else {
                        //사용자 입력란에 @가 없으면
                        var format_txt = input_email_txt + "@" + select_value;
                        format_txt = format_txt.trim();
                        $('#I_EMAIL').val(format_txt);
                    }
                }
            });

            //이메일 정규식 체크
            var email_flag = false; //이메일 정규식 체크
            var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            $('#I_EMAIL').on('input', function () {

                //이메일 중복 체크
                filter = "UserEmail"
                USER_EMAIL = $("#I_EMAIL").val();
                $.ajax({
                    type: "post",
                    url: "/Source/client/member/ajax/C_MEMBER_PHONE_REDUPLICATION.aspx",
                    data: {
                        filter: filter, USER_EMAIL: USER_EMAIL, LOGIN_TYPE: LOGIN_TYPE
                    },
                    success: function (response) { //컨트롤러에서 넘어온 cnt값을 받는다 

                        if (!emailPattern.test($('#I_EMAIL').val())) {
                            console.log("형식에 맞지않는 이메일");
                            $('.email_Guide_Ok').css("display", "none");
                            $('.email_Guide_1').css("display", "block");
                            $('.email_Guide_2').css("display", "none");
                            $("#I_EMAIL").css('outline', '1px solid #FF441D');
                            email_flag = false;
                        }
                        else {
                            console.log("형식에 맞는 이메일");
                            if (response != 0 && response != 3) { //이메일 중복
                                $('.email_Guide_Ok').css("display", "none");
                                $('.email_Guide_1').css("display", "none");
                                $('.email_Guide_2').css("display", "block");
                                $("#I_EMAIL").css('outline', '1px solid #FF441D');
                                email_flag = false;
                            }
                            else { //이메일 사용가능
                                $('.email_Guide_Ok').css("display", "block");
                                $('.email_Guide_1').css("display", "none");
                                $('.email_Guide_2').css("display", "none");
                                $("#I_EMAIL").css('outline', '1px solid #005764');
                                email_flag = true;
                            }
                        }
                    },
                    error: function () {

                    }
                });
            });

            //이름 입력
            var name_flag;
            $('#I_NAME').on('input', function () {
                var input = $(this).val();
                var formattedInput = formatUserName(input);
                $(this).val(formattedInput);
                if (input == null || input == "") {
                    name_flag = false;
                }
                else {
                    name_flag = true;
                }
            });

            //전화번호 ajax 중복체크 밸리데이션
            var phone_flag = false; // 휴대폰번호 길이체크 11자리

            $("#I_PHONE_NUMBER").on("input", function () {

                var input = $(this).val();
                var formattedInput = formatPhoneNumber(input);
                var phonelength = (formattedInput.replace('-', '').replace('-', '')).length;
                var LOGIN_TYPE = "<%=I_LOGIN_TYPE%>";
                $(this).val(formattedInput);

                console.log($("#I_PHONE_NUMBER").val());
                filter = "UserPhone"
                USER_PHONE = $("#I_PHONE_NUMBER").val();

                $.ajax({
                    type: "post",
                    url: "/Source/client/member/ajax/C_MEMBER_PHONE_REDUPLICATION.aspx",
                    data: {
                        filter: filter, USER_PHONE: USER_PHONE, LOGIN_TYPE: LOGIN_TYPE
                    },
                    success: function (response) { //컨트롤러에서 넘어온 cnt값을 받는다 
                        console.log(response);
                        var inputValue = $("#I_PHONE_NUMBER").val();


                        if (phonelength == 11) {
                            console.log("형식에 맞는 전화번호");

                            if (response != 0 && response != 3) { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디
                                $('.phone_Guide_1').css("display", "none");
                                $('.phone_Guide_2').css("display", "block");

                                $("#I_PHONE_NUMBER").css('outline', '1px solid #FF441D');
                                phone_flag = false;
                            }
                            else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                                $('.phone_Guide_Ok').css("display", "block");
                                $('.phone_Guide_1').css("display", "none");
                                $('.phone_Guide_2').css("display", "none");

                                $("#I_PHONE_NUMBER").css('outline', '1px solid #005764');
                                phone_flag = true;
                            }
                        }


                        else {
                            console.log("형식에 맞지않는 전화번호");
                            $('.phone_Guide_Ok').css("display", "none");
                            $('.phone_Guide_1').css("display", "block");
                            $('.phone_Guide_2').css("display", "none");

                            $("#I_PHONE_NUMBER").css('outline', '1px solid #FF441D');
                            phone_flag = false;
                        }


                        //빈칸일 경우 빨간줄테두리가 아닌 평소 테두리로 돌아오도록 설정.

                        if (inputValue.length == 0) {
                            $("#I_ID").css('outline', '1px solid var(--mono_line)');
                        }
                    },
                    error: function () {

                    }
                });
            });

            //이전 버튼
            $('.back_Btn').click(function () {
                location.href = "/Source/m/member/M_M_JOINGUIDE.aspx";
            });

            $('.join_Btn').click(function () {
                // var id_flag_1 = false; // 길이 체크
                // var id_flag_2 = false; // 문자조건 체크
                // var pw_flag_1 = false; // 비밀번호 문자조건 체크
                // var pw_flag_2 = false; // 비밀번호 길이 체크
                // var pw_check_flag_1 = false; //비밀번호 일치 체크
                // var email_flag = false; //이메일 정규식 체크
                // var phone_flag = false; // 휴대폰번호 길이체크 11자리
                if (LOGIN_TYPE == null || LOGIN_TYPE == "") {
                    if (!id_flag_1) {
                        _popModal.Alert('회원정보 입력 오류', 'ID를 다시 입력해주세요.');
                        return false;
                    }
                    if (!id_flag_2) {
                        _popModal.Alert('회원정보 입력 오류', 'ID를 다시 입력해주세요.');
                        return false;
                    }
                    if (!pw_flag_1) {
                        _popModal.Alert('회원정보 입력 오류', '올바른 비밀번호 형식으로 다시 입력해주세요.');
                        return false;
                    }
                    if (!pw_flag_2) {
                        _popModal.Alert('회원정보 입력 오류', '올바른 비밀번호 형식으로 다시 입력해주세요.');
                        return false;
                    }
                    if (!pw_check_flag_1) {
                        _popModal.Alert('회원정보 입력 오류', '비밀번호 확인이 되지 않았습니다.<br/>다시 확인 후 입력해주세요.');
                        return false;
                    }
                }
                if ($('#I_NAME').val() == null || $('#I_NAME').val() == "") {
                    _popModal.Alert('회원정보 입력 오류', '이름을 입력해주세요.');
                    return false;
                }
                if (!email_flag && $('#I_EMAIL').val() == null || $('#I_EMAIL').val() == "") {
                    _popModal.Alert('회원정보 입력 오류', '올바른 이메일 형식으로 다시 입력해주세요.');
                    return false;
                }
                if (!phone_flag) {
                    _popModal.Alert('회원정보 입력 오류', '핸드폰번호를 다시 입력해주세요.');
                    return false;
                }
                $("#flag").val("Join");
                $("#aspnetForm").submit();
            });
            //카카오 조회

            // 네이버 사용자 프로필 조회
            naver_id_login.get_naver_userprofile("naverSignInCallback()");
            //소셜 회원가입
            var LOGIN_TYPE = "<%=I_LOGIN_TYPE%>";
            var SOCIAL_ID = "<%=I_SOCIAL_ID%>";
            if (LOGIN_TYPE == "naver" || LOGIN_TYPE == "kakao") {
                $(".socail_Login_Content").css("display", "none");
            }

            var cp_ret_status = "<%=cp_ret_status%>";
            var cp_ret_message = "<%=cp_ret_message %>";
            var join_user_name = "<%=I_NAME%>";
            if (cp_ret_status == "Y") {
                _popModal.Alert('회원정보 입력 오류', cp_ret_message);
                return false;
            } else if (cp_ret_status == "N") {
                location.href = "/Source/m/member/M_M_JOINSUCCESS.aspx?username=" + join_user_name;
            } else {

            }


            /////////////////////////////
            //생년월일 날짜 입력 시 유효날짜 검사 후 이상 있으면 이상하다고 안내문구 출력 
            $('#I_DATE').on('input', function () {
                var input = $(this).val();
                if (input.length == 2) {
                    var format_month = 0;
                    var format_birth = 0;
                    if ($('#I_YEAR').val().length == 4 && $('#I_MONTH').val().length >= 1) {
                        if ($('#I_MONTH').val().length == 1) {
                            format_month = '0' + $('#I_MONTH').val();
                            console.log("format_month:", format_month)
                            format_birth = $('#I_YEAR').val() + format_month + $('#I_DATE').val()
                            format_birth.trim();
                            $('#H_BIRTH').val(format_birth);
                        }
                        else {
                            format_birth = $('#I_YEAR').val() + $('#I_MONTH').val() + $('#I_DATE').val()
                            format_birth.trim();
                            $('#H_BIRTH').val(format_birth);
                        }
                        if (isValidDate($('#H_BIRTH').val())) {
                            console.log('유효한 날짜입니다.');
                            $('.birth_Guide_1').css("display", "none");
                            // 실제로 있는 날짜일 때 실행할 코드 작성
                        } else {
                            console.log('유효하지 않은 날짜입니다.');
                            $('.birth_Guide_1').css("display", "block");
                            // 유효하지 않은 날짜일 때 실행할 코드 작성
                        }
                    }
                    else if ($('#I_YEAR').val().length == 0 && $('#I_MONTH').val().length >= 0) {
                        $('.birth_Guide_1').css("display", "block");
                    }

                }
                if (input.length < 2) {
                    $('#H_BIRTH').val('');
                }
            });
            //생년월일 날짜에 tab 눌렀을떄 1의 자리 수면 앞에 0 붙임.
            $('#I_DATE').keydown(function (event) {
                if (event.keyCode === 9) { // Tab 키의 keyCode는 9.
                    date_Format();
                }
            });
            //생년월일 날짜에 1자리만 입력하고 입력이 끝나면 앞에 '0'이 추가됨
            $("#I_DATE").on("blur", function () {
                date_Format();
            });
            //생년월일 관련 date는 정수만 입력가능
            $('input[name="I_DATE"]').on('input', function () {
                var value = $(this).val();
                $(this).val(value.replace(/\D/g, ''));//정수가 아니면 ''공백으로 만듦
            });
            //생년월일 관련 년, 월을 선택할때마다 유효한 날짜인지 체크
            $("#I_YEAR, #I_MONTH").change(function (e) {
                isCheckBirth();
            });



        });
        /////////////////////////////
        //생년월일 input, keydown,blur 등 jqeury 이벤트 종료
        function naverSignInCallback() {
            console.log(naver_id_login.getProfileData('email'));
            console.log(naver_id_login.getProfileData('nickname'));
            console.log(naver_id_login.getProfileData('birthyear'));
            console.log(naver_id_login.getProfileData('mobile'));
            console.log(naver_id_login.getProfileData('name'));
            console.log(naver_id_login.getProfileData('id')); //고유 번호로 사용
            $('#I_NAME').val(naver_id_login.getProfileData('name'));
            $('#I_EMAIL').val(naver_id_login.getProfileData('email'));
            $('#I_PHONE_NUMBER').val(naver_id_login.getProfileData('mobile'));
            email_flag = true;
            name_flag = true;
        }


        //다른 요소 클릭 시 우편번호 모달 닫힘
        //$(document).click(function (event) {
        //    var target = $(event.target); // 클릭한 요소 가져오기
        //    console.log(target.attr("id"))
        //    // 클릭한 요소가 id="daumLayer"인 경우 동작하지 않음
        //    if (target.attr("id") !== "address_Search_Btn") {
        //        console.log("아님")
        //        closeDaumPostcode();
        //    }
        //});


        //생년월일 관련 유효날짜 체크 함수
        function isValidDate(dateString) {
            // 입력한 날짜 형식 확인
            if (dateString.length !== 8 || isNaN(dateString)) {
                return false;
            }
            var year = parseInt(dateString.substr(0, 4));
            var month = parseInt(dateString.substr(4, 2));
            var day = parseInt(dateString.substr(6, 2));

            var date = new Date(year, month - 1, day);

            // 실제로 있는 날짜인지 확인
            return (
              date.getFullYear() === year &&
              date.getMonth() === month - 1 &&
              date.getDate() === day
            );
        }
        //생년월일 관련 유효날짜 체크(년,월 선택했는지)함수
        function isCheckBirth() {
            if ($('#I_DATE').val().length == 2) {
                if ($('#I_YEAR').val().length == 4 && $('#I_MONTH').val().length >= 1) {
                    $('.birth_Guide_1').css("display", "none");
                }
                else {
                    $('.birth_Guide_1').css("display", "block");
                }
            }
        }
        //생년월일 관련 1자리 수 일때 데이터 포맷 함수
        function date_Format() {
            if ($('#I_DATE').val().length == 1) {
                var format_date = '';
                format_date = '0' + $('#I_DATE').val();
                format_date.trim();
                $('#I_DATE').val(format_date);
                //유효 날짜 검사
                if ($('#I_YEAR').val().length == 4 && $('#I_MONTH').val().length >= 1) {
                    if ($('#I_MONTH').val().length == 1) {
                        format_month = '0' + $('#I_MONTH').val();
                        console.log("format_month:", format_month)
                        format_birth = $('#I_YEAR').val() + format_month + $('#I_DATE').val()
                        format_birth.trim();
                        $('#H_BIRTH').val(format_birth);
                    }
                    else {
                        format_birth = $('#I_YEAR').val() + $('#I_MONTH').val() + $('#I_DATE').val()
                        format_birth.trim();
                        $('#H_BIRTH').val(format_birth);
                    }
                    if (isValidDate($('#H_BIRTH').val())) {
                        console.log('유효한 날짜입니다.');
                        $('.birth_Guide_1').css("display", "none");
                        // 실제로 있는 날짜일 때 실행할 코드 작성
                    } else {
                        console.log('유효하지 않은 날짜입니다.');
                        $('.birth_Guide_1').css("display", "block");
                        // 유효하지 않은 날짜일 때 실행할 코드 작성
                    }
                }
            }
        }


        //비밀번호, 비밀번호 확인 값 일치하는지 체크 함수
        function pw_DoubleCheck() {
            if ($("#I_PW_CHECK").val() !== $("#I_PW").val() && $("#I_PW_CHECK").val().length > 0) {
                console.log("다름")
                $('.pw_check_Guide_Ok').css("display", "none");
                $('.pw_check_Guide_1').css("display", "block");
                $("#I_PW_CHECK").css('outline', '1px solid #FF441D');
            }
            if ($("#I_PW_CHECK").val() == $("#I_PW").val() && $("#I_PW_CHECK").val().length > 0 && $("#I_PW").val().length > 0) {
                $('.pw_check_Guide_Ok').css("display", "block");
                $('.pw_check_Guide_1').css("display", "none");
                $("#I_PW_CHECK").css('outline', '1px solid #005764');
            }
        }

        //휴대폰 번호 입력관련 함수 
        function formatPhoneNumber(input) {
            var phoneNumber = input.replace(/\D/g, ''); // 숫자 이외의 문자 제거
            var formattedPhoneNumber = '';

            if (phoneNumber.length > 3) {
                formattedPhoneNumber += phoneNumber.substring(0, 3) + '-';
                if (phoneNumber.length > 7) {
                    formattedPhoneNumber += phoneNumber.substring(3, 7) + '-';
                    if (phoneNumber.length > 11) {
                        formattedPhoneNumber += phoneNumber.substring(7, 11);
                    } else {
                        formattedPhoneNumber += phoneNumber.substring(7);
                    }
                } else {
                    formattedPhoneNumber += phoneNumber.substring(3);
                }
            } else {
                formattedPhoneNumber += phoneNumber;
            }
            return formattedPhoneNumber;
        }

        //이름입력 입력관련 함수 
        function formatUserName(input) {
            var userName = input.replace(/[^\uAC00-\uD7AF\u1100-\u11FF\u3130-\u318F\uA960-\uA97F\uAC00-\uD7A3\uD7B0-\uD7FF]/g, ''); // 한글 이외의 문자 제거
            var formattedUserName = '';

            formattedUserName += userName;

            return formattedUserName;
        }


        //***주소찾기***
        // 우편번호 찾기 화면을 넣을 element
        function closeDaumPostcode() {
            // iframe을 넣은 element를 안보이게 한다.
            $("#daumLayer").hide();
        }

        function execDaumPostCode() {
            new daum.Postcode({
                oncomplete: function (data) {
                    // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var fullAddr = data.address; // 최종 주소 변수
                    var extraAddr = ''; // 조합형 주소 변수

                    // 기본 주소가 도로명 타입일때 조합한다.
                    if (data.addressType === 'R') {
                        //법정동명이 있을 경우 추가한다.
                        if (data.bname !== '') {
                            extraAddr += data.bname;
                        }
                        // 건물명이 있을 경우 추가한다.
                        if (data.buildingName !== '') {
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                        fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    $("#I_ADDRESS_1").val(data.zonecode);
                    $("#I_ADDRESS_2").val(fullAddr);
                    $("#I_ADDRESS_3").focus();
                    // iframe을 넣은 element를 안보이게 한다.
                    // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                    $("#daumLayer").hide();
                },
                width: '100%',
                border: '1px solid black',
                height: '100%'
            }).embed($("#daumLayer")[0]);
            // iframe을 넣은 element를 보이게 한다.
            $("#daumLayer").show();
            // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
            initLayerPosition();
        }
        // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
        // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
        // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
        function initLayerPosition() {
            var width = ""; //우편번호 서비스가 들어갈 element의 width
            var height = 460; //우편번호 서비스가 들어갈 element의 height
            var borderWidth = 1; //샘플에서 사용하는 border의 두께

            var offsetTop = $(".address_Search_Btn").offset().top;
            var offsetleft = $(".address_Search_Btn").offset().left;
            var offsetbottom = $(".address_Search_Btn").offset().bottom;
            console.log("top" + offsetTop + "left" + offsetleft + "bottom" + offsetbottom);
            // 위에서 선언한 값들을 실제 element에 넣는다.
            $("#daumLayer").css({
                "width": width + 'px',
                "height": height + "px"
                //"border": borderWidth + "px solid",
                //"left": (offsetleft) + 'px',
                //"top": (offsetTop + 2 * height) + 'px'
            });

            //"left": (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth) + 'px',
            //    "top": (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth) + 'px'
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <input type="hidden" name="flag" id="flag" />
            <div class="join_Input_Box">
            <div class="join_Title_Area">
                <div class="join_Title m_main_font">
                    <span>회원가입</span>
                </div>
            </div>
                <div class="join_Step_Area">
                    <div class="join_Step">
                        <div class="disabled_Txt m_middle_font">약관동의</div>
                        <div class="active_Step_Text m_middle_font">></div>
                        <div class="active_Txt m_middle_font">정보입력</div>
                        <div class="disabled_Step_Text m_middle_font">></div>
                        <div class="disabled_Txt m_middle_font">가입완료</div>
                    </div>
                </div>
                <div class="sub_Title_Area lower-font">
                    <span class="sub_Title">회원가입을 위해 아래</span>
                    <span class="drkid_Negative_color">*필수정보</span>
                    <span class="sub_Title">와 회원정보를 입력해주세요</span>
                </div>
                <div class="join_Input_Area">
                    <%--아이디--%>
                    <div class="join_Input_Content socail_Login_Content">
                        <div class="join_Input_Guide">
                            <span class="drkid_Negative_color">* </span>
                            <span>아이디</span>
                        </div>
                        <div class="join_Input_Data">
                            <input type="text" class="drkid-input lowerst-font" id="I_ID" name="I_ID" value="" placeholder="아이디를 입력해주세요"  maxlength="20"/>
<%--                                 <input type="hidden" id="H_ID"  name="H_ID" value="FALSE" />--%>
                        </div>
                    </div>
                    <div class="guide_Area socail_Login_Content">
                        <div class="empty_space">
                            <%--<span>비밀번호 확인</span>--%>
                        </div>
                        <div>
                            <div class="id_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;최소 5자리 이상 입력해 주세요.</div>
                            <div class="id_Guide_2 drkid_Negative_color lowerst-font">&nbsp;&nbsp;사용 불가능한 아이디 입니다.(한글,특수문자 사용불가)</div>
                            <div class="id_Guide_3 drkid_Negative_color lowerst-font">&nbsp;&nbsp;이미 사용중인 아이디 입니다.</div>
                            <div class="id_Guide_Ok lowerst-font">&nbsp;&nbsp;사용 가능한 아이디 입니다.</div>
                        </div>
                    </div>

                    <%--비밀번호--%>
                    <div class="join_Input_Content socail_Login_Content">
                        <div class="join_Input_Guide">
                            <span class="drkid_Negative_color">* </span>
                            <span>비밀번호</span>
                        </div>
                        <div class="join_Input_Data">
                            <input type="password" class="drkid-input lowerst-font" id="I_PW" name="I_PW" value="" placeholder="영문,숫자,특수문자 조합 8자리 이상" />
                            <input type="hidden" id="H_PW" name="H_PW" value="FALSE" />
                        </div>
                    </div>
                    <div class="guide_Area_2 socail_Login_Content">
                        <div class="empty_space"></div>
                        <div>
                                <div class="pw_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;최소 8자리 이상 입력해 주세요.(영문,숫자,특수문자 조합)</div>
                            <div class="pw_Guide_2 drkid_Negative_color lowerst-font">&nbsp;&nbsp;비밀번호 조합(영문,숫자,특수문자 조합)이 틀립니다.</div>
                            <div class="pw_Guide_Ok lowerst-font">&nbsp;&nbsp;사용 가능한 비밀번호 입니다.</div>
                        </div>
                    </div>
                    <div class="multi_Input_Area socail_Login_Content">
                        <div class="empty_space"></div>
                        <div class="multi_Input_Content">
                            <input type="password" class="drkid-input lowerst-font" id="I_PW_CHECK" name="I_PW_CHECK" value="" placeholder="비밀번호 확인" />
<%--                                 <input type="hidden" id="H_PW_CHECK" name="H_PW_CHECK" value="FALSE" />--%>

                        </div>
                    </div>
                    <div class="guide_Area_3 socail_Login_Content">
                        <div class="empty_space"></div>
                        <div>
                            <div class="pw_check_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;비밀번호가 일치하지 않습니다.</div>
                            <div class="pw_check_Guide_Ok lowerst-font">&nbsp;&nbsp;비밀번호 확인이 완료되었습니다.</div>
                        </div>
                    </div>
                    <%--이름--%>
                    <div class="join_Input_Content">
                        <div class="join_Input_Guide">
                            <span class="drkid_Negative_color">* </span>
                            <span>이름</span>
                        </div>
                        <div class="join_Input_Data">
                            <input type="text" class="drkid-input lowerst-font" id="I_NAME" name="I_NAME" value="" placeholder="한글이름" />
<%--                                 <input type="hidden" id="H_NAME" name="H_NAME" value="FALSE" />--%>
                        </div>
                    </div>
                    <%--이메일--%>
                    <div class="join_Input_Content">
                        <div class="join_Input_Guide">
                            <span class="drkid_Negative_color">* </span>
                            <span>이메일</span>
                        </div>
                        <div class="join_Input_Data">
                            <div class="join_Input_Email_Area">
                                <div class="join_Input_Email_1">
                                    <input type="text" class="drkid-input m_middle_font" id="I_EMAIL" name="I_EMAIL" value="" placeholder="" />
<%--                                         <input type="hidden" id="H_EMAIL"  name="H_EMAIL" value="FALSE" />--%>
                                </div>
                                <div class="join_Input_Email_2">
                                    <select id="email_Select" name="email_Select" <%--onchange="ChangeValue()"--%> class="drkid-select m_middle_font" style="width: 100%" data-font-class="m_middle_font">
                                        <option value="">직접입력</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="gmail.com">gmail.com</option>
                                    </select>
                                </div>
                            </div>
                                 
                        </div>
                             
                    </div>
                    <div class="guide_Area_4">
                        <div class="empty_space"></div>
                        <div>
                            <div class="email_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;올바른 형식의 이메일이 아닙니다.</div>
                            <div class="email_Guide_2 drkid_Negative_color lowerst-font">&nbsp;&nbsp;이미 등록된 이메일 입니다.</div>
                            <div class="email_Guide_Ok lowerst-font">&nbsp;&nbsp;올바른 형식의 이메일 입니다.</div>
                        </div>
                    </div>
                    <%--휴대폰번호--%>
                    <div class="join_Input_Content">
                        <div class="join_Input_Guide">
                            <span class="drkid_Negative_color">* </span>
                            <span>휴대폰번호</span>
                        </div>
                        <div class="join_Input_Data">
                            <input type="text" class="drkid-input lowerst-font" id="I_PHONE_NUMBER" name="I_PHONE_NUMBER" value="" placeholder="- 없이 번호만 입력해주세요" />
<%--                                 <input type="hidden" id="H_PHONE_NUMBER"  name="H_PHONE_NUMBER" value="FALSE" />--%>
                        </div>
                    </div>
                    <div class="guide_Area_5">
                        <div class="empty_space"></div>
                        <div>
                            <div class="phone_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;올바른 형식의 전화번호가 아닙니다.</div>
                            <div class="phone_Guide_2 drkid_Negative_color lowerst-font">&nbsp;&nbsp;이미 등록된 전화번호 입니다.</div>
                            <div class="phone_Guide_Ok lowerst-font">&nbsp;&nbsp;올바른 형식의 전화번호 입니다.</div>
                        </div>
                    </div>
                    <%--주소--%>
                    <div class="join_Input_Content">
                        <div class="join_Input_Guide">
                            <span>&nbsp;&nbsp;주소</span>
                        </div>
                        <div class="join_Input_Data">
                            <div class="join_Address_Area">
                                <input type="text" class="drkid-input lowerst-font" id="I_ADDRESS_1" name="I_ADDRESS_1" value="" readonly="true" />
<%--                                     <input type="hidden" id="H_ADDRESS"  name="H_ADDRESS" value="FALSE" />--%>
                                <div class="address_Search_Btn lowerst-font"id="address_Search_Btn" onclick="execDaumPostCode();">
                                    <span>우편번호 검색</span>
<%--                                         <span class="lowerst-font">우편번호검색</span>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="daumLayer">
                        <div class="daumLayer_Top" id="daumLayer_Top">
                            <div class="daumLayer_Top_area_1"></div>
                            <div class="daumLayer_Top_area_2">
                                <div class="daumLayer_Top_Title middle-font">주소찾기</div>
                            </div>
                            <div class="daumLayer_Top_area_3">
                                <div class="address_Icon_Area" onclick="closeDaumPostcode();">
                                <span class="clear-icon drkid-icon"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                <%--    <div id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="closeDaumPostcode()">
                            <span class="clear-icon drkid-icon"></span>
                    </div>--%>
                </div>
                    <%--주소 2번쨰 인풋--%>
                    <div class="multi_Input_Area">
                        <div class="empty_space"></div>
                        <div class="multi_Input_Content">
                            <input type="text" class="drkid-input lowerst-font" id="I_ADDRESS_2" name="I_ADDRESS_2" value="" readonly="true" />
                        </div>
                    </div>


                    <%--주소 3번쨰 인풋 , 상세주소--%>

                    <div class="multi_Input_Area">
                        <div class="empty_space"></div>
                        <div class="multi_Input_Content_2">
                            <input type="text" class="drkid-input lowerst-font" id="I_ADDRESS_3" name="I_ADDRESS_3" value="" placeholder="상세주소(동,층,호)" />
                        </div>
                    </div>

                    <%--생년월일--%>
                    <div class="join_Input_Content">
                        <div class="join_Input_Guide">
                            <%--<span class="drkid_Negative_color">* </span>--%>
                            <span>생년월일</span>
                        </div>
                        <div class="join_Input_Data">
                            <div class="join_Input_Birth_Area">
                                <div class="join_Input_Birth_Year">
                                <input type="hidden" class="drkid-input lowerst-font" id="H_BIRTH"  name="H_BIRTH" value="" />
<%--                                     <input type="text" class="drkid-input lowerst-font" id="I_YEAR"  name="I_YEAR" value="" placeholder="년(4자리)" maxlength="4"/>--%>
                                    <select  class="drkid-select lowerst-font" id="I_YEAR" name="I_YEAR">
                                    <option value="">년</option>
                                </select>
                                </div>
                                <div class="join_Input_Birth_Month">
<%--                                         <input type="text" class="drkid-input lowerst-font" id="I_MONTH"  name="I_MONTH" value="" placeholder="월(2자리)" maxlength="2"/>--%>
                                    <select  class="drkid-select lowerst-font" id="I_MONTH" name="I_MONTH">
                                    <option value="">월</option>
                                </select>
                                </div>
                                <div class="join_Input_Birth_Date">
                                    <input type="text" class="drkid-input lowerst-font" id="I_DATE"  name="I_DATE" value="" placeholder="일(2자리)"maxlength="2" />
                                <%-- <select  class="drkid-select lowerst-font" id="I_DATE" name="I_DATE">
                                    <option value="">일</option>
                                </select>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="guide_Area">
                        <div class="empty_space"></div>
                        <div>
                            <div class="birth_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;날짜 형식이 잘못되었습니다.</div>
                                 
                        </div>
                    </div>
                    <%--추천인 아이디--%>
                    <div class="join_Input_Content">
                        <div class="join_Input_Guide">

                            <span>추천인 아이디</span>
                        </div>
                        <div class="join_Input_Data">
                            <input type="text" class="drkid-input lowerst-font" id="I_REFERRAL_NAME" name="I_REFERRAL_NAME" value="" placeholder="" />
<%--                                 <input type="hidden" id="H_REFERRAL_NAME"  name="H_REFERRAL_NAME" value="FALSE" />--%>
                        </div>
                    </div>
                    <%--이전 , 다음단계 버튼--%>
                    <div class="btn_area">
                        <%--<div class="empty_space"></div>--%>
                        <div class="btn_Content">
                            <div class="back_Btn lowerst-font">이전</div>
                            <div class="join_Btn lowerst-font">다음단계</div>
                        </div>
                    </div>
                </div>
            <script>
                $(document).ready(function () {
                    function setDays(year, month) {
                        var daysInMonth = new Date(year, month + 1, 0).getDate();
                        $('#I_DATE').empty();
                        $('#I_DATE').append('<option value="">일</option>');
                        for (var i = 1; i <= daysInMonth; i++) {
                            $('#I_DATE').append('<option value="' + i + '">' + i + '</option>');
                        }
                    }

                    var now = new Date();	// 현재 날짜 및 시간
                    var year = now.getFullYear();
                    for (var i = 1930; i <= year; i++) {
                        $('#I_YEAR').append('<option value="' + i + '">' + i + '</option>');
                    }

                    var months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
                    for (var i = 0; i < months.length; i++) {
                        $('#I_MONTH').append('<option value="' + months[i] + '">' + months[i] + '</option>');
                    }

                    var defaultYear = 2021; // Set the default year value
                    setDays(defaultYear, 0);

                    $('#I_YEAR, #I_MONTH').change(function () {
                        var year = $('#I_YEAR').val();
                        var month = $('#I_MONTH').val();
                        if (year != "" && month != "") {
                            var currentYear = new Date().getFullYear();
                            var currentMonth = new Date().getMonth();
                            if (year == currentYear && month > currentMonth) {
                                month = currentMonth;
                                $('#I_MONTH').val(month);
                            }
                            setDays(year, month - 1);
                        }
                    });
                });               
          </script>
                   
</asp:Content>
