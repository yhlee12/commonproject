<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_MEMBER_USER.aspx.cs" Inherits="drKidAdmin.Source.admin.member.A_MEMBER_USER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .ifram_inner_Area {
            min-width: 1050px;
            width: 100%;
            padding:15px;
        }
        .block_Wrap {
            padding: 0px 0px 10px 0px;
        }
        .title_Block {
            height: 55px;
            border: 1px solid #DBDDE2;
            background: #ffffff;
            padding: 17px 30px;
        }
        .title_txt{
            font-weight: 600;
            font-size: var(--drkid-middle-font);
            line-height: initial;
        }
        .guide_Block{
            min-width: 545px;
            width: 100%;
            min-height: 77px;
            border-left: 1px solid #DBDDE2;
            border-right: 1px solid #DBDDE2;
            padding: 15px 30px;
        }
        .guide_txt{
            font-size: var(--drkid-lowerst-font);
            color : var(--mono_sub);
            font-weight: normal;
        }
        .content_Block {
            min-width: 545px;
            width: 100%;
            min-height: 85vh;
            background: #ffffff;
            border: 1px solid #DBDDE2;
            padding: 20px 30px;
        }
        .content_Head{
            display:flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom:11px;
        }
        .manager_Count{
            display: flex;
        }
        .manager_Count_text{

        }
        .manager_Count_num{
            padding-left:10px;
            min-width: 20px;
            display: flex;
            justify-content: flex-end;
            color: var(--main_color);
            font-weight: 500;
        }
        .manager_Add{

        }
        .content_Body{
            
        }
        table{
            width: 100%;
        }

        .list_table > tr > th{
            background-color: var(--mono_back);
        }

        .list_table > tr > th, .list_table > tr > td{
            text-align:center !important;
            height: 40px ;
        }
        .drkid-btn-sub2{
            min-width: 80px;
            min-height: 28px;
        }
        td > .drkid-btn-active{
            min-width: 60px !important;
            padding: 0;
        }
        
        
        /*모달 팝업창 css*/

        #pop-modal-wraper{
            border-block: 2px solid var(--mono_line);
            padding:15px 0;
            margin : 15px 0 ;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal_list > tr > th, .modal_list > tr > td{
            text-align:left !important;
            height: 40px ;
            border: none !important;
            padding: 4px 0px !important;
        }
        .pop-modal-title{
            font: normal normal 600 20px/24px Pretendard;
            color: #262626;
        }

        .modal-content {
            display: flex;
            flex-direction: column;
            background-color: #fefefe;
            margin: 10% auto;
            padding: 15px 27px;
            border: 1px solid #888;
            width: 80%;
            max-width: 475px;
        }
        .modal-input{
            padding: 20px 10px;
            border-radius: 4px;
            autocomplete : off; 
        }
        .modal-btn-font{
            font-weight :400;
        }
        #pop-modal-btn-wraper{
            display:flex;
            justify-content: center;
        }
        #pop-modal-btn-wraper >.drkid-btn-sub2{
            min-width: 120px;
            min-height: 50px;
            margin: 0 5px;
        }
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }
        
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        /*모달 팝업창 css 끝*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

    </style>
    <script>
        $(function () {
            var saveBtn = $(".admin_save_Btn");
            var delBtn = $(".admin_del_Btn");
            var modal_input = $(".modal-input");
            var modal = document.getElementById("modal");
            var openModalButton = document.getElementById("openModalButton");
            var closeButtons = document.getElementsByClassName("closeBtn");

            openModalButton.addEventListener("click", function() {
                modal.style.display = "block";
            });

            for (var i = 0; i < closeButtons.length; i++) {
                closeButtons[i].addEventListener("click", function() {
                    modal.style.display = "none";
                    modal_input.val(null);
                });
            }

            window.addEventListener("click", function(event) {
                if (event.target === modal) {
                    modal.style.display = "none";
                    modal_input.val(null);
                }
            });
            
            //아이디 입력 가이드
            var id_flag_1 = false; // 길이 체크
            var id_flag_2 = false; // 문자조건 체크
            var id_flag_3 = false; // 중복 체크

            //ID ajax 중복체크 밸리데이션 
            $("#I_USER_ID").on("input", function () {
                console.log($("#I_USER_ID").val());
                filter = "UserId"
                var LOGIN_TYPE = "WEB";
                I_USER_ID = $("#I_USER_ID").val();
                $.ajax({
                    type: "post",
                    url: "/Source/admin/member/AJAX_MEMBER_VALIDATION.aspx",
                    data: {
                        filter: filter, I_USER_ID: I_USER_ID, LOGIN_TYPE: LOGIN_TYPE
                    },
                    success: function (response) { //컨트롤러에서 넘어온 cnt값을 받는다 
                        console.log(response);
                        var inputValue = $("#I_USER_ID").val();
                        var regex = /^[a-zA-Z0-9]+$/;// 영문자와 숫자만 허용하는 정규식
                        // 4자리 이상 입력 



                        if (inputValue.length <= 4 && inputValue.length > 0) {
                            
                            id_flag_1 = false;
                        }
                        else {
                            id_flag_1 = true;
                        }
                        //영어나 숫자만 입력가능
                        if (regex.test(inputValue) || inputValue.trim() === '') {
                            id_flag_2 = true;
                        }
                        else {
                            id_flag_2 = false;
                        }
                        if (response != 0 && response != 3) { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디
                            
                            id_flag_3 = false;
                        }
                        else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                            
                            id_flag_3 = true;
                        }
                        if (id_flag_1 === true && id_flag_2 === true && id_flag_3 === true && inputValue.length > 4) {
                            
                        }
                                               
                    },
                    error: function () {

                    }
                });
            });

            //이메일 정규식 체크
            var email_flag = false; //이메일 정규식 체크
            var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            $('#I_USER_EMAIL').on('input', function () {

                //이메일 중복 체크
                filter = "UserEmail"
                var LOGIN_TYPE = "WEB";
                I_USER_EMAIL = $("#I_USER_EMAIL").val();
                $.ajax({
                    type: "post",
                    url: "/Source/admin/member/AJAX_MEMBER_VALIDATION.aspx",
                    data: {
                        filter: filter, I_USER_EMAIL: I_USER_EMAIL, LOGIN_TYPE: LOGIN_TYPE
                    },
                    success: function (response) { //컨트롤러에서 넘어온 cnt값을 받는다 

                        if (!emailPattern.test($('#I_USER_EMAIL').val())) {
                            
                            email_flag = false;
                        }
                        else {
                            console.log("형식에 맞는 이메일");
                            if (response != 0 && response != 3) { //이메일 중복
                               
                                email_flag = false;
                            }
                            else { //이메일 사용가능
                                
                                email_flag = true;
                            }
                        }
                    },
                    error: function () {

                    }
                });
            });


            //전화번호 ajax 중복체크 밸리데이션
            var phone_flag = false; // 휴대폰번호 길이체크 11자리

            $("#I_USER_PHONE").on("input", function () {

                var input = $(this).val();
                var formattedInput = formatPhoneNumber(input);
                var phonelength = (formattedInput.replace('-', '').replace('-', '')).length;
                var LOGIN_TYPE = "WEB";
                $(this).val(formattedInput);

                console.log($("#I_USER_PHONE").val());
                filter = "UserPhone"
                I_USER_PHONE = $("#I_USER_PHONE").val();

                $.ajax({
                    type: "post",
                    url: "/Source/admin/member/AJAX_MEMBER_VALIDATION.aspx",
                    data: {
                        filter: filter, I_USER_PHONE: I_USER_PHONE, LOGIN_TYPE: LOGIN_TYPE
                    },
                    success: function (response) { //컨트롤러에서 넘어온 cnt값을 받는다 
                        console.log(response);
                        var inputValue = $("#I_USER_PHONE").val();
                        if (phonelength == 11) {
                            console.log("전화번호 자리수" + phonelength);
                            

                            if (response != 0 && response != 3) { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디
                                console.log("중복");
                                phone_flag = false;
                            }
                            else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                                console.log("형식에 맞는 전화번호");
                                phone_flag = true;
                            }
                        }
                        else {
                            console.log("전화번호 자리수" + phonelength);
                            console.log("형식에 맞지않는 전화번호");
                            phone_flag = false;
                        }
                    },
                    error: function () {

                    }
                });
            });

            //비밀번호 입력 가이드
            var pw_flag_1 = false; // 비밀번호 문자조건 체크
            var pw_flag_2 = false; // 비밀번호 길이 체크
            $("#I_USER_PASSWORD").on("input", function () {
                var inputValue = $(this).val();
                var pwcheckinputValue = $("#I_USER_PASSWORD_CHECK").val();
                //1~9자리 까지 입력하면 8자리 이상 입력하라고 가이드
                if (inputValue.length <= 7 && inputValue.length > 0) {
                    pw_flag_1 = false;
                    console.log("pw_flag_1:", pw_flag_1)
                }
                else {
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
                    pw_flag_2 = true;
                    console.log("pw_flag_2:", pw_flag_2)
                } else if (inputValue.length > 7) {
                    pw_flag_2 = false;
                    console.log("pw_flag_2:", pw_flag_2)
                }
            });

            //비밀번호 입력(확인란) 가이드

            var pw_check_flag_1 = false; //비밀번호 일치 체크
            $("#I_USER_PASSWORD_CHECK").on("input", function () {
                var inputValue = $(this).val();
                if ($("#I_USER_PASSWORD_CHECK").val() == $("#I_USER_PASSWORD").val() && pw_flag_1 && pw_flag_2 && inputValue.length > 7) {
                    pw_check_flag_1 = true;
                }
                else {
                    pw_check_flag_1 = false;
                }
                console.log("pw_check_flag_1:", pw_check_flag_1)
            });
            

            //관리자 생성
            saveBtn.on("click", function () {
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
                if ($('#I_USER_NAME').val() == null || $('#I_USER_NAME').val() == "") {
                    _popModal.Alert('회원정보 입력 오류', '이름을 입력해주세요.');
                    return false;
                }
                if (!email_flag && $('#I_USER_EMAIL').val() == null || $('#I_USER_EMAIL').val() == "") {
                    _popModal.Alert('회원정보 입력 오류', '올바른 이메일 형식으로 다시 입력해주세요.');
                    return false;
                }
                if (!phone_flag) {
                    _popModal.Alert('회원정보 입력 오류', '핸드폰번호를 다시 입력해주세요.');
                    return false;
                }
                $("#flag").val("add_admin");
                $("#form1").submit();
            });
            

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
                        //$(".drkid-btn-sub2").prop("class", "drkid-btn-sub2 findEnterkey");// 팝업창 엔터키 작동하도록 클래스이름 추가
                        $(".t2l-btn-area > .drkid-btn-sub2").prop("class", "drkid-btn-sub2 admin_save_Btn findEnterkey");
                    }
                }
            });

            

            //관리자 삭제
            delBtn.on("click", function () {
                var sid_check = $(this).children(".USER_SID").val();
                console.log(sid_check);
                
                var OkCallBack = function () {
                    $("#I_USER_SID").val(sid_check);
                    $("#flag").val("del_admin");
                    $("#form1").submit();
                }

                var esrrorCallBack = function () {
                   
                }

                var _optionData = new modalOption();
                _optionData.top = '200px';
                _optionData.left = '550px';
                _optionData.titleClass = 'big-font testClassAdd';
                _optionData.bodyClass = 'lowerst-font testClassAdd2';
                _optionData.okbtnTitle = '확인';
                _optionData.cancelTitle = '취소';
                _popModal.Promt('삭제하시겠습니까?', '삭제하시면 매니저의 권한이 회수됩니다.', OkCallBack, esrrorCallBack);
            });

            if ("<%=alert_flag%>" == "delete") {
                _popModal.Alert('', '정상 삭제 되었습니다.');
            };
        });

        
        

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

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ifram_inner_Area">
        <div class="block_Wrap">
            <input type="hidden" name="flag" id="flag"/>
            <input type="hidden" name="I_USER_SID" id="I_USER_SID"/>
            <div class="title_Block">
                <div class="title_txt">매니저 관리</div>
            </div>
            <div class="guide_Block">
                <div class="guide_txt">
                    - 매니저 생성과 삭제를 관리할 수 있습니다.
                    <br/>
                    - 매니저별 권한을 지급할 수 있습니다.
                </div>
            </div>
            <div class="content_Block">
                <div class="content_Head">
                    <div class="manager_Count">
                        <div class="manager_Count_text">매니저</div>
                        <div class="manager_Count_num"><%=totalCount%></div>
                        <div class="manager_Count_text">명</div>
                    </div>
                    <%if(authId=="ADMIN") {%>
                    <div id="openModalButton" class="drkid-btn-sub2 editAuth">
                        <span  class="manager_Add lowerst-font">생성</span>
                    </div>
                    <%} %>
                    <div id="modal" class="modal">
                        <div class="modal-content">
                            <div>
                                <span class="pop-modal-title">매니저 생성</span>
                                <span class="clear-icon drkid-icon close closeBtn"></span>
                            </div>
                            <div id="pop-modal-wraper">
                                <table class="table-common popmodal-table">
                                    <colgroup>
                                        <col style="width: 80px;" />
                                        <col style="width: 220px;" />
                                    </colgroup>
                                    <tbody class="modal_list">
                                        <tr>
                                            <th class="lower-font">
                                                <span class="drkid_Negative_color">* </span>아이디</th>
                                            <td class="lower-font">
                                                <input type="text" autocomplete="off" id="I_USER_ID" name="I_USER_ID" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="50자리 이하 아이디를 입력해주세요." maxlength="50" />
                                            </td>
                                        </tr>
                                         <tr>
                                            <th class="lower-font">
                                                <span class="drkid_Negative_color">* </span>비밀번호</th>
                                            <td class="lower-font">
                                                <input type="password" autocomplete="off" id="I_USER_PASSWORD" name="I_USER_PASSWORD" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="비밀번호 입력" maxlength="20" />
                                            </td>
                                        </tr>
                                         <tr>
                                            <th class="lower-font">
                                                <span class="drkid_Negative_color">* </span>비밀번호 확인</th>
                                            <td class="lower-font">
                                                <input type="password" autocomplete="off" id="I_USER_PASSWORD_CHECK" name="I_USER_PASSWORD_CHECK" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="비밀번호 확인" maxlength="20" />
                                            </td>
                                        </tr>
                                         <tr>
                                            <th class="lower-font">
                                                <span class="drkid_Negative_color">* </span>이름</th>
                                            <td class="lower-font">
                                                <input type="text" autocomplete="off" id="I_USER_NAME" name="I_USER_NAME" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="" maxlength="10" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="lower-font">
                                                <span class="drkid_Negative_color">* </span>전화번호</th>
                                            <td class="lower-font">
                                                <input type="text" autocomplete="off" id="I_USER_PHONE" name="I_USER_PHONE" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="" maxlength="50" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="lower-font">
                                                <span class="drkid_Negative_color">* </span>이메일</th>
                                            <td class="lower-font">
                                                <input type="text" autocomplete="off" id="I_USER_EMAIL" name="I_USER_EMAIL" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="" maxlength="50" />
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div id="pop-modal-btn-wraper">
                                <div class="drkid-btn-sub2 admin_save_Btn findEnterkey">
                                <span class="middle-font modal-btn-font">저장</span>
                            </div>
                            <div class="drkid-btn-sub2 drkid-btn-active closeBtn">
                                <span class="middle-font modal-btn-font">취소</span>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="content_Body">
                    <table>
                        <colgroup>
                            <col style="width: 28%;" />
                            <col style="width: 21%;" />
                            <col style="width: 33%;" />
                            <col style="width: 18%;" />
                        </colgroup>
                        <thead class="list_table">
                            <tr>
                                <th class="lower-font" style="border: 1px solid #eaeaea">아이디</th>
                                <th class="lower-font" style="border: 1px solid #eaeaea">이름</th>
                                <th class="lower-font" style="border: 1px solid #eaeaea">전화번호</th>
                                <th class="lower-font" style="border: 1px solid #eaeaea">삭제</th>
                            </tr>
                        </thead>
                        <%--<tbody class="list_table">
                            <tr>
                                <td class="lower-font" style="border: 1px solid #eaeaea">tbody in td</td>
                                <td class="lower-font" style="border: 1px solid #eaeaea">tbody in td</td>
                                <td class="lower-font" style="border: 1px solid #eaeaea">tbody in td</td>
                                <td class="lower-font" style="border: 1px solid #eaeaea">
                                    <div class="drkid-btn-sub2 drkid-btn-active editAuth">
                                        <span class="lowerst-font">삭제</span>
                                    </div>
                                </td>
                            </tr>
                        </tbody>--%>
                        <tbody class="common_font list_table">
                            <% for (int i = 0; i < ADMIN_MEMBERS.Rows.Count; i++)
                               { %>
                            <tr>
                                <%--아이디--%>
                                <td class="lower-font" style="border: 1px solid #eaeaea"><%=ADMIN_MEMBERS.Rows[i]["USER_ID"] %></td>
                                <%--이름--%>
                                <td class="lower-font" style="border: 1px solid #eaeaea"><%=ADMIN_MEMBERS.Rows[i]["USER_NAME"] %></td>
                                <%--전화번호--%>
                                <td class="lower-font" style="border: 1px solid #eaeaea"><%=ADMIN_MEMBERS.Rows[i]["PHONE_NO"] %></td>
                                <%--삭제버튼--%>
                                <td class="lower-font" style="border: 1px solid #eaeaea">
                                     <%if (ADMIN_MEMBERS.Rows[i]["USER_SID"] +"" == "1000041")
                                      { %>
                                    
                                    <% } %>

                                    <% else{ %>
                                        <%if(authId=="ADMIN") {%>
                                        <div class="drkid-btn-sub2 drkid-btn-active admin_del_Btn">
                                            <input type="hidden" class="USER_SID" name="USER_SID" value="<%=ADMIN_MEMBERS.Rows[i]["USER_SID"] %>"/>
                                            <span class="lowerst-font">삭제</span>
                                        </div>
                                        <%} %>
                                     <%} %>
                                </td>
                            </tr>
                            <%} %>
                        </tbody>
                    </table>
                </div>
                
            </div>
        </div>
        
    </div>
    <div class="pageNavigationStr" style="padding: 50px 0px;">
            <%=pageNavigationStr%>
    </div>
</asp:Content>
