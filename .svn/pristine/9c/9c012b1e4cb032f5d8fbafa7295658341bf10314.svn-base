<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MY_MODIFYINFO.aspx.cs" Inherits="drKid.Source.client.my.C_MY_MODIFYINFO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
         /*페이징관련*/
        .number-button-Area {
            padding: 100px 0px;
        }
        .number-button-wrap {
            display: flex;
            justify-content: center;
        }
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
        .main_Box {
            padding: 0px 20px;
            max-width: 1340px;
            margin: 0 auto;
        }
        .title_Bar_Wrap {
            display: flex;
            align-items: center;
            gap: 0px 10px;
        }
        .title_Info_Bar_Area {
            display: flex;
            width: 100%;
            height: 220px;
            text-align: center;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
        }
        .title_Info_Bar_Section {
            width:calc(100% / 4);
        }
        .title_Info_Content_Area {
            width: 100%;
            height: 100%;
            padding: 25px 0px;
            cursor:pointer;
        }
        .title_Info_Content_border {
            border-right: 1px solid #CCCCCC;
            padding: 10px 0px;
            height: 100%;
            display: grid;
            align-items: center;
        }
        /*공통*/
        .title_Info_Count_Area{
	        cursor:pointer;
        }
        .title_Bar { 
            width: 289px;
            height: 220px;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
            padding:10px;
        }
        .title_Bar_Top { 
            width: 100%;
            height: 70%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .title_Bar_Top_Profile_L {
            width: 90px;
            height: 90px;
        }
        #sentiment_Icon {
            font-size: 90px !important;
            color: #b5b5b5dd;
        }
        .Profile_R_Info1 {
           font-weight: 600;
        }
        .Profile_R_Info2 {
           font-weight: 400;
        }
        .title_Bar_Top_Profile_R {
            height: 90px;
            padding: 20px 14px;
        }

        .title_Bar_Bottom { 
            width: 100%;
            height: 30%;
            border-top: 1px solid #CCCCCC;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 25px 0px 15px 0px;
            gap: 0px 35px;
        }
        .title_Bar_Bottom_Info1 , .title_Bar_Bottom_Info3 {
            font-weight: 400;
        }
        .title_Bar_Bottom_Info2 , .title_Bar_Bottom_Info4{
            font-weight: 700;
        }
        .share_Btn {
            background: #343434;
            width: 250px;
            height: 70px;
            color: #FFC609;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0px 5px;
            line-height: 70px;
            text-align: center;
            border-radius: 12px;
            margin-bottom: 20px;
            font-weight:500;
            cursor:pointer;
        }
        #insert_emoticon {
           font-size: 22px !important;
        }
        /*공통*/
        .title_Info_Bar {
            width: 1000px;
            height: 220px;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
        }
        .title_Info {
            font-weight:600;
        }
        .material-icons-outlined {
            font-size: 50px !important;
        }
        .title_Info_Count {
            font-size:22px;
            font-weight:600;
        }
        .KeyDni_Top_Title {
            font-size:28px;
            font-weight:600;
        }
        #mypage_Btn {
            cursor:pointer;
        }
        .KeyDni_Wrap {
            width: 290px;
        }
        .KeyDni_Area {
            width:100%;
        }
        .KeyDni_Top_Title_Area {
            padding: 0px 0px 20px 0px;
        }
        .KeyDni_Box {
            border-top: 1px solid #CCCCCC;
            padding: 0px 0px 10px 0px;
        }
        .KeyDni_Title_Info {
            padding: 20px 0px;
            font-weight: 600;
        }
        .KeyDni_Info {
            padding: 0px 0px 5px 0px;
            color:#8F8F8F;
            font-weight: 400;
            cursor:pointer;
        }
        .KeyDni_Info_Clicked {
            padding: 0px 0px 5px 0px;
            color:#115C5E;
            font-weight: 400;
            cursor:pointer;
        }
        .all_Bottom_Area {
            display: flex;
            gap:0px 50px;
            padding: 45px 0px 0px 0px;
        }
        .Bottom_Area {
            width:100%;
        }
        .progress_Order_Title_Area {
            padding: 0px 0px 20px 0px;
        }

        .new_Order_Title_Area {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0px 0px 20px 0px;
            border-bottom: 1px solid #262626;
        }
         .my_Title_Area {
            padding: 0px 0px 20px 0px;
         }
         .my_Title {
            font-size:28px;
            font-weight:600;
         }
         /*회원정보 수정 인증 폼*/
         .auth_Area {
            width: 100%;
            padding: 50px 0px;
         }
         .auth_Guide {
            margin: 0 auto;
            width: 424px;
            text-align: center;
            padding: 0px 0px 10px 0px;
         }
         .auth_Form {
            width: 424px;
            border: 1px solid #D8D8D8;
            margin: 0 auto;
            padding: 20px 30px;
            height: 138px;
            display: grid;
            /* gap: 10px 0px; */
            border-radius: 4px;
         }
         .auth_Record {
            display: flex;
            width: 100%;
            align-items: center;
         }
         .auth_Info {
            width:25%;
         }
         .auth_Data {
            width:75%;
         }
         #I_AUTH_PW {
            width:100%;
            height: 50px;
         }
        #I_AUTH_PW::placeholder {
             color:#D8D8D8;
        }
         .auth_Btn {
            width: 120px;
            height: 50px;
            background:var(--main_color);
            color: #ffffff;
            text-align: center;
            line-height: 50px;
            margin: 0 auto;
            margin-top: 20px;
            cursor:pointer;
         }
         /*정보수정 폼*/
         .modify_Area {
             width:100%;
             display:none;
             border-top: 1px solid #262626;
             border-bottom: 1px solid #CCCCCC;
         }
         .modify_Form {
            padding:15px;
            width:80%;
         }
         .join_Input_Content {
            display: flex;
            align-items: center;
            width: 100%;
            padding: 10px 0px;
            position:relative;
        }
        .join_Input_Guide {
            width: 120px;
        }
        .join_Input_Data {
            width: 79.4%;
        }
         .join_Input_Data2 {
            width: 79.4%;
            display:flex;
            gap: 0px 8px;
         }
 
        input[type="text"], input[type="password"] {
            width:100%;
            padding: 12px 10px;
            height: 50px;
        }
        .empty_space {
            width:120px;
        }
        .multi_Input_Content {
            width: 79.4%;
            float: right;
        }
         .multi_Input_Content_Special {
            width: 79.4%;
            float: right;
            display:none;
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
        }
        .join_Input_Email_1 {
             width: 70%;
        }
        .join_Input_Email_2 {
             width: 25%;
             height:50px;
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
            padding: 13px;
            width: 38%;
            height:50px;
            cursor:pointer;
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
        }
        .join_Input_Birth_Year, .join_Input_Birth_Month, .join_Input_Birth_Date {
            width: 31%;
        }
        .btn_area {
            width:100%;
            display:flex;
        }
        .btn_Content {
            width: 460px;
            display: flex;
            float: right;
        }
        .back_Btn {
            border: 1px solid #E1E1E1;
            border-radius: 4px;
            padding: 8px 65px;
            margin-right: 3%;
            cursor:pointer;
        }
        .join_Btn {
            background: #343434 0% 0% no-repeat padding-box;
            border-radius: 4px;
            color: #ffffff;
            padding: 8px 65px;
            cursor:pointer;
        }
        .drkid-select-div {
            line-height: 35px;
            font-size:14px;
        }
        .id_Guide_1, .id_Guide_2, .id_Guide_3       , .id_Guide_Ok ,
        .pw_Guide_1, .pw_Guide_2, .pw_Guide_Ok      ,
        .pw_check_Guide_1       , .pw_check_Guide_Ok,
        .email_Guide_1          , .email_Guide_Ok   ,
        .phone_Guide_1          , .phone_Guide_2    , .phone_Guide_Ok,
        .birth_Guide_1 , .new_Pw_Guide_1, .new_Pw_Guide_Ok
        {
            display:none;
        }
        .id_Guide_Ok ,
        .pw_Guide_Ok ,
        .pw_check_Guide_Ok ,
        .email_Guide_Ok ,
        .phone_Guide_Ok , 
        .new_Pw_Guide_Ok
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
             display:none;width:700px;height:300px;position:absolute; z-index:999;border: 1px solid #918d8d; 
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
             width: 731px;
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
            overflow-y: auto;
            height: 300px;
        }
         .pw_Modify_Btn {
            width: 141px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            border-radius: 4px;
            box-shadow: 0px 0px 5px #0000001A;
            color: #8F8F8F;
            border: 1px solid #E1E1E1;
            cursor:pointer;
         }
         .new_Pw_Area {
            display: flex;
            align-items: center;
            width:100%;
            padding: 0px 0px 10px 0px;
         }
         .new_Pw_Info {
             width: 20%;
         }
         #modify_Btn_Wrap {
            display:none;         
         }
         .modify_Btn_Area {
            display:none;
            width: 74.6%;
            display: flex;
            justify-content: end;
            gap: 0px 20px;
            padding: 30px 0px;
         }
         .modify_Btn {
            width: 120px;
            height: 50px;
            line-height: 50px;
            color: #ffffff;
            background: var(--main_color);
            text-align: center;
            cursor:pointer;
         }
         .modify_Cansle_Btn {
            width: 120px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            border: 1px solid #E2E2E2;
            cursor:pointer;
         }
         #I_REFERRAL_NAME {
            background: #F3F3F3;
         }

         .pw_Guide_1, .pw_Guide_2, .pw_Guide_Ok{
            margin-left: 15.5%;
            padding: 0px 0px 10px;
         }
         .pw_check_Guide_1, .pw_check_Guide_Ok {
            margin-left: 15.5%;
         }

         select option[value=""][disabled] {
	        display: none;
        }
         .business_Area {
            width: 76%;
            height: 50px;
            border: 1px solid var(--mono_line);
         }
         .business_Add_Btn {
            width: 73px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background: #343434;
            color: #ffffff;
            border-radius: 4px;
            cursor:pointer;
         }
         .business_Del_Btn {
            width: 73px;
            height: 50px;
            line-height: 50px;
            border-radius: 4px;
            text-align: center;
            border: 1px solid var(--mono_line);
            cursor:pointer;
         }
         .custom_info {
            height: 50px;
            line-height: 50px;
            width: 100%;
            padding: 0px 10px;
         }
         .preview_Info {
            width: 320px;
            height: 450px;
            margin: 0 auto;
         }
         .image_for_class {
            height: 100%;
            width: 100%;
            object-fit: cover;
         }
         #hidden-field {
            display:none;
         }

         

    </style>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
     <script>
         /////////////////////////////////
         //사업자등록증 이미지 업로드 관련

         //Text change가 일어날떄 -> Upload 가 일어날떄
         function UpdateUploadButton() {
             //업로드를 업로드 시켜 Callback을 타게함.
             //이때 Process bar 넣어서 로딩 처리
             uploader.Upload();
         }
         function Uploader_OnFilesUploadComplete(args) {
             UpdateUploadButton();
         }
         function Uploader_OnFileUploadComplete(args) {
             //여기서 Process bar 꺼야함
             if (args.isValid) {
                 var ret = args.callbackData + "";
                 let JsonData = JSON.parse(ret);
                 console.log(JsonData)
                 if ((JsonData['status'] + "") == 'Y') {
                     var html = `<div class="img_info"><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/><input type='hidden' name='EDNS_REMARK' value='BUSINESS_REGISTRATION'/></div>`;
                     var custom_html = `<div class="custom_info">${JsonData['imgName']}</div>`;
                     var custom_html2 = `<div class="preview_Info">${JsonData['imgSrc']}</div>`;
                     $('.business_Area').empty();
                     $('.business_Area').append(html);
                     $('.business_Area').append(custom_html);
                     $('.preview_Area').append(custom_html2);
          
                 } else {
                     //에러가 날경우 alert 처리
                     alert(JsonData['message']);
                 }
             } 
         }

         $(document).ready(function () {
             // 공통 메뉴
             var product = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(1)");
             var coupon = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(2)");
             var review = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(3)");
             var help = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(4)");

             product.addEventListener("click", function () {
                 location.href = "/Source/client/my/C_MY_ORDERLIST.aspx"
             });
             coupon.addEventListener("click", function () {
                 location.href = "/Source/client/my/C_MY_CUPONLIST.aspx"
             });
             review.addEventListener("click", function () {
                 location.href = "/Source/client/my/C_MY_REVIEWLIST.aspx"
             });
             help.addEventListener("click", function () {
                 location.href = "/Source/client/my/C_MY_HELPDESKLIST.aspx"
             });

             //사업자 등록증 등록 버튼
             $(".business_Add_Btn").click(function () {
                 //var checkValue = $(this).data('value');
                 //if($('.business_Area').find('*').length > 2){
                 if ($('.business_Area').find('.custom_info').length > 0) {
                     _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                 }
                 else{
                     $('#uploader_TextBox0_Input').click();
                     $("input[name='EDMS_DEL_FLAG']").val('N');
                 }
             });
             ////사업자 등록증 삭제 버튼
             $(".business_Del_Btn").click(function () {
                 $('.business_Area').empty();
                 $('.preview_Area').empty();
                 $("input[name='EDMS_DEL_FLAG']").val('Y');
             });

             $("#mypage_Btn").click(function () {
                 location.href = "/Source/client/my/C_MY_MYPAGEMAIN.aspx";
             });

             //레프트메뉴 클릭 시 해당하는 페이지 이동
             $(".KeyDni_Info,.KeyDni_Info_Clicked,.title_Info_Count_Area").click(function () {
                 var page = $(this).attr("id");
                 if (page != '' && page != null) {
                     var page_type = page.split("_")[1]; //폴더가 CS인지 MY인지 추출
                     location.href = "/Source/client/" + page_type + "/" + page + ".aspx";
                 }
                 else {
                     _popModal.Alert('', '준비중입니다.');
                 }
             });

             //인증하기 버튼 클릭
             $(".auth_Btn").click(function () {
                 $(".auth_Area").css("display", "none");
                 $(".modify_Area").css("display", "block");
                 $('#modify_Btn_Wrap').css("display", "block"); //인증폼 버튼 
             });
             //비밀번호 변경 버튼 클릭
             $(".pw_Modify_Btn").click(function () {
                 $('.multi_Input_Content_Special').css("display", "block");
             });
             //정보수정 버튼 클릭
             $(".modify_Btn").click(function () {
                 $("#flag").val("save");
                 $("#form1").submit();
             });
             //취소 버튼 클릭
             $(".modify_Cansle_Btn").click(function () {
                 location.href = "/Source/client/my/C_MY_MODIFYINFO.aspx";
             });

             //비밀번호, 이메일, 휴대폰번호, 생년월일 밸리데이션
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
                 if (!emailPattern.test($('#I_EMAIL').val())) {
                     console.log("형식에 맞지않는 이메일");
                     $('.email_Guide_Ok').css("display", "none");
                     $('.email_Guide_1').css("display", "block");
                     $("#I_EMAIL").css('outline', '1px solid #FF441D');
                     email_flag = false;
                 }
                 else {
                     console.log("형식에 맞는 이메일");
                     $('.email_Guide_Ok').css("display", "block");
                     $('.email_Guide_1').css("display", "none");
                     $("#I_EMAIL").css('outline', '1px solid #005764');
                     email_flag = true;
                 }
             });     

             //전화번호 ajax 중복체크 밸리데이션
             var phone_flag = false; // 휴대폰번호 길이체크 11자리

             $("#I_PHONE_NUMBER").on("input", function () {

                 var input = $(this).val();
                 var formattedInput = formatPhoneNumber(input);
                 var phonelength = (formattedInput.replace('-', '').replace('-', '')).length;
                 $(this).val(formattedInput);

                 console.log($("#I_PHONE_NUMBER").val());
                 filter = "UserPhone"
                 USER_PHONE = $("#I_PHONE_NUMBER").val();
                 $.ajax({
                     type: "post",
                     url: "/Source/client/member/ajax/C_MEMBER_PHONE_REDUPLICATION.aspx",
                     data: {
                         filter: filter, USER_PHONE: USER_PHONE
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

             //이름 입력
             $('#I_NAME').on('input', function () {
                 var input = $(this).val();
                 var formattedInput = formatUserName(input);
                 $(this).val(formattedInput);
             });

             $('.join_Btn').click(function () {
                 // var id_flag_1 = false; // 길이 체크
                 // var id_flag_2 = false; // 문자조건 체크
                 // var pw_flag_1 = false; // 비밀번호 문자조건 체크
                 // var pw_flag_2 = false; // 비밀번호 길이 체크
                 // var pw_check_flag_1 = false; //비밀번호 일치 체크
                 // var email_flag = false; //이메일 정규식 체크
                 // var phone_flag = false; // 휴대폰번호 길이체크 11자리
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
                 if (!email_flag) {
                     _popModal.Alert('회원정보 입력 오류', '올바른 이메일 형식으로 다시 입력해주세요.');
                     return false;
                 }
                 if (!phone_flag) {
                     _popModal.Alert('회원정보 입력 오류', '핸드폰번호를 다시 입력해주세요.');
                     return false;
                 }
                 $("#flag").val("Join");
                 $("#form1").submit();
             });

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
             var width = 733; //우편번호 서비스가 들어갈 element의 width
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
      <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="EDMS_DEL_FLAG" value="N" />
    </div>
    <div id="sub_content" style="">
        <div class="sub_layout">
            <div id="content">
                <div class="main_Box">
                    <div class="title_Bar_Wrap">
                        <%--공통0728--%>
                        <%--타이틀--%>
                        <div class="title_Bar_Area">
                            <div class="title_Bar">
                                <div class="title_Bar_Top">
                                    <div class="title_Bar_Top_Profile_L">
                                       <span class="material-icons-outlined" id="sentiment_Icon">sentiment_satisfied_alt</span>
                                    </div>
                                    <div class="title_Bar_Top_Profile_R">
                                        <div class="middle-font main_color Profile_R_Info1">DrKeyDni <span class="lowerst-font">님</span></div>
                                        <div class="lower-font mono_sub_color Profile_R_Info2">디렉터 인플루언서</div>
                                    </div>
                                </div>
                                <div class="title_Bar_Bottom">
                                    <div class="lower-font title_Bar_Bottom_Info1">직팔로워 <span class="lower-font title_Bar_Bottom_Info2">12</span></div>
                                    <div class="lower-font title_Bar_Bottom_Info3" >연계팔로워 <span class="lower-font title_Bar_Bottom_Info4">53</span></div>
                                </div>
                            </div>
                        </div>
                        <div class="title_Info_Bar_Area">
                            <%--주문/배송--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">redeem</span>
                                        </div>
                                        <div class="title_Info lower-font">주문/배송</div>
                                        <div class="title_Info_Count_Area" id="">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           <%--MY쿠폰--%>  <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">confirmation_number</span>
                                        </div>
                                        <div class="title_Info lower-font">MY쿠폰</div>
                                        <div class="title_Info_Count_Area" id="C_MY_CUPONLIST">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--리뷰--%> <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">drive_file_rename_outline</span>
                                        </div>
                                        <div class="title_Info lower-font">리뷰</div>
                                        <div class="title_Info_Count_Area" id="C_MY_REVIEWLIST">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--진행중 문의--%> <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">support_agent</span>
                                        </div>
                                        <div class="title_Info lower-font">진행중 문의</div>
                                        <div class="title_Info_Count_Area" id="">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--전체 하단 영역--%>
                    <div class="all_Bottom_Area">
                        <%--My KeyDni--%>
                        <div class="KeyDni_Wrap">
                             <%--공통 0728--%>
                            <div class="big-font share_Btn"><span class="material-icons-outlined"id="insert_emoticon">insert_emoticon</span>친구초대</div>

                            <div class="KeyDni_Area">
                                <div class="KeyDni_Top_Title_Area">
                                    <div class="KeyDni_Top_Title"id="mypage_Btn">My KeyDni</div>
                                </div>
                                <%--My 셀럽#--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">My 셀럽#</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_CELEBRITY_EDIT">셀럽# 상품등록</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_CELEBRITY_LIST">셀럽# 상품목록</div>
                                    </div>
                                </div>
                              <%--쇼핑정보--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">쇼핑정보</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_ORDERLIST">주문/배송조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_DELIVERY">배송지 관리</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_CANSLEPRODUCT">취소/반품/교환 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REFUNDPRODUCT">환불/입금 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REWARD">리워드 현황</div>
                                    </div>
                                </div>
                                <%--고객센터--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">고객센터</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font"id="C_MY_HELPDESKLIST">나의 1:1 문의</div>
                                        <div class="KeyDni_Info lower-font"id="C_MY_ITEMDESKLIST">나의 상품 문의</div>
                                        <div class="KeyDni_Info lower-font" id="C_CS_QUESTIONLIST">자주 하는 질문</div>
                                        <div class="KeyDni_Info lower-font" id="C_CS_NOTICELIST">공지사항</div>
                                    </div>
                                </div>
                                <%--회원정보--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">회원정보</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info_Clicked lower-font"id="C_MY_MODIFYINFO">회원정보 수정</div>
                                        <div class="KeyDni_Info lower-font"id="C_MY_MEMBERDEPARTURE">회원 탈퇴</div>
                                        <div class="KeyDni_Info lower-font logout_Btn">로그아웃</div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <%--1:1 문의 조회 UI, 문의리스트 전체 영역--%>
                        <div class="Bottom_Area">
                            <div class="my_Title_Area">
                                <div class="my_Title">회원정보 수정</div>
                            </div>

                            <%--인증--%>
                            <div class="auth_Area">
                                <div class="auth_Guide lowerst-font">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인해 주세요.</div>
                                <div class="auth_Form">
                                    <%--아이디--%>
                                    <div class="auth_Record">
                                        <div class="auth_Info lower-font">아이디</div>
                                        <div class="auth_Data lower-font">drkeydni</div>
                                    </div>
                                    <%--비밀번호--%>
                                    <div class="auth_Record">
                                        <div class="auth_Info lower-font">비밀번호</div>
                                        <div class="auth_Data lowerst-font">
                                            <input type="password" class="drkid-input lowerst-font" id="I_AUTH_PW" name="I_AUTH_PW" value="" placeholder="비밀번호를 입력해 주세요."/>
                                        </div>
                                    </div>
                                </div>
                                <%--인증하기 버튼--%>
                                <div class="auth_Btn">인증하기</div>
                            </div>
                            <%--인증 후 정보수정 폼 전체영역--%>
                            <div class="modify_Area">
                                <%--정보수정 폼--%> 
                                <div class="modify_Form">
                                    <div class="join_Input_Area">
                                        <%--아이디--%>
                                        <div class="join_Input_Content">
                                            <div class="join_Input_Guide">
                                                <span class="drkid_Negative_color">* </span>
                                                <span class="lowerst-font">아이디</span>
                                            </div>
                                            <div class="join_Input_Data lowerst-font"><%=USER_ID %></div>
                                        </div>
                                        <div class="guide_Area">
                                            <div class="empty_space"></div>
                                            <div>
                                                <div class="id_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;최소 5자리 이상 입력해 주세요.</div>
                                                <div class="id_Guide_2 drkid_Negative_color lowerst-font">&nbsp;&nbsp;사용 불가능한 아이디 입니다.(한글,특수문자 사용불가)</div>
                                                <div class="id_Guide_3 drkid_Negative_color lowerst-font">&nbsp;&nbsp;이미 사용중인 아이디 입니다.</div>
                                                <div class="id_Guide_Ok lowerst-font">&nbsp;&nbsp;사용 가능한 아이디 입니다.</div>
                                            </div>
                                        </div>

                                        <%--비밀번호--%>
                                        <div class="join_Input_Content">
                                            <div class="join_Input_Guide">
                                                <span class="drkid_Negative_color">* </span>
                                                <span class="lowerst-font">비밀번호</span>
                                            </div>
                                            <div class="join_Input_Data">
                                                <div class="pw_Modify_Btn lowerst-font">비밀번호 변경</div>
                                                
                                            </div>
                                        </div>
                              
                                        <div class="multi_Input_Area">
                                            <div class="empty_space"></div>
                                            <div class="multi_Input_Content_Special">
                                                <%--현재 비밀번호--%>
                                                <div class="new_Pw_Area">
                                                    <div class="new_Pw_Info lowerst-font">현재 비밀번호</div>
                                                    <input type="password" class="drkid-input lowerst-font" id="I_USED_PW" name="I_USED_PW" value="" placeholder="" />
                                                </div>
                                                <%--현재 비밀번호 가이드--%>
                                                 <div class="new_Pw_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;비밀번호가 틀립니다.</div>
                                                <div class="new_Pw_Guide_Ok lowerst-font">&nbsp;&nbsp;확인이 완료되었습니다.</div>
                                                <%--새 비밀번호--%>
                                                <div class="new_Pw_Area">
                                                    <div class="new_Pw_Info lowerst-font">새 비밀번호</div>
                                                    <input type="password" class="drkid-input lowerst-font" id="I_PW" name="I_PW" value="" placeholder="영문,숫자,특수문자 조합 8자리 이상" />
                                                    <input type="hidden" id="H_PW" name="H_PW" value="FALSE" />
                                                </div>
                                                <%--새 비밀번호 가이드--%>
                                                <div class="pw_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;최소 8자리 이상 입력해 주세요.(영문,숫자,특수문자 조합)</div>
                                                <div class="pw_Guide_2 drkid_Negative_color lowerst-font">&nbsp;&nbsp;비밀번호 조합(영문,숫자,특수문자 조합)이 틀립니다.</div>
                                                <div class="pw_Guide_Ok lowerst-font">&nbsp;&nbsp;사용 가능한 비밀번호 입니다.</div>
                                                <%--새 비밀번호 확인--%>
                                                <div class="new_Pw_Area">
                                                    <div class="new_Pw_Info lowerst-font">새 비밀번호 확인</div>
                                                    <input type="password" class="drkid-input lowerst-font" id="I_PW_CHECK" name="I_PW_CHECK" value="" placeholder="비밀번호 확인" />
                                                </div>
                                                <div class="pw_check_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;비밀번호가 일치하지 않습니다.</div>
                                                <div class="pw_check_Guide_Ok lowerst-font">&nbsp;&nbsp;비밀번호 확인이 완료되었습니다.</div>
                                            </div>
                                        </div>
                                        <%--새 비밀번호 확인 가이드--%>
                                       <%-- <div class="guide_Area_3">
                                            <div class="empty_space"></div>
                                            <div>
                                                <div class="pw_check_Guide_1 drkid_Negative_color lowerst-font">&nbsp;&nbsp;비밀번호가 일치하지 않습니다.</div>
                                                <div class="pw_check_Guide_Ok lowerst-font">&nbsp;&nbsp;비밀번호 확인이 완료되었습니다.</div>
                                            </div>
                                        </div>--%>
                                        <%--이름--%>
                                        <div class="join_Input_Content">
                                            <div class="join_Input_Guide">
                                                <span class="drkid_Negative_color">* </span>
                                                <span class="lowerst-font">이름</span>
                                            </div>
                                            <div class="join_Input_Data">
                                                <input type="text" class="drkid-input lowerst-font" id="USER_NAME" name="USER_NAME" value="<%=USER_NAME %>" placeholder="" />
                                                <%--                                 <input type="hidden" id="H_NAME" name="H_NAME" value="FALSE" />--%>
                                            </div>
                                        </div>
                                        <%--이메일--%>
                                        <div class="join_Input_Content">
                                            <div class="join_Input_Guide">
                                                <span class="drkid_Negative_color">* </span>
                                                <span class="lowerst-font">이메일</span>
                                            </div>
                                            <div class="join_Input_Data">
                                                <div class="join_Input_Email_Area">
                                                    <div class="join_Input_Email_1">
                                                        <input type="text" class="drkid-input lowerst-font" id="EMAIL_ADDRESS" name="EMAIL_ADDRESS" value="<%=EMAIL_ADDRESS %>" placeholder="" />
                                                        <%--                                         <input type="hidden" id="H_EMAIL"  name="H_EMAIL" value="FALSE" />--%>
                                                    </div>
                                                    <div class="join_Input_Email_2">
                                                        <select id="email_Select" name="email_Select" <%--onchange="ChangeValue()"--%> class="drkid-select lower-font" style="width: 200px;" data-font-class="lower-font">
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
                                                <div class="email_Guide_Ok lowerst-font">&nbsp;&nbsp;올바른 형식의 이메일 입니다.</div>
                                            </div>
                                        </div>
                                        <%--휴대폰번호--%>
                                        <div class="join_Input_Content">
                                            <div class="join_Input_Guide">
                                                <span class="drkid_Negative_color">* </span>
                                                <span class="lowerst-font">휴대폰번호</span>
                                            </div>
                                            <div class="join_Input_Data">
                                                <input type="text" class="drkid-input lowerst-font" id="MOBILE_NO" name="MOBILE_NO" value="<%=MOBILE_NO %>" placeholder="- 없이 번호만 입력해주세요" />
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
                                                <span class="lowerst-font">&nbsp;&nbsp;주소</span>
                                            </div>
                                            <div class="join_Input_Data">
                                                <div class="join_Address_Area">
                                                    <input type="text" class="drkid-input lowerst-font" id="I_ADDRESS_1" name="I_ADDRESS_1" value="<%=ZIP_CODE %>" readonly="true" />
                                                    <%--                                     <input type="hidden" id="H_ADDRESS"  name="H_ADDRESS" value="FALSE" />--%>
                                                    <div class="address_Search_Btn lowerst-font" id="address_Search_Btn" onclick="execDaumPostCode();">
                                                        우편번호검색
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
                                            <input type="text" class="drkid-input lowerst-font" id="I_ADDRESS_2" name="I_ADDRESS_2" value="<%=NEW_BUSINESS_ADDRESS1 %>" readonly="true" />
                                        </div>
                                    </div>


                                    <%--주소 3번쨰 인풋 , 상세주소--%>

                                    <div class="multi_Input_Area">
                                        <div class="empty_space"></div>
                                        <div class="multi_Input_Content_2">
                                            <input type="text" class="drkid-input lowerst-font" id="I_ADDRESS_3" name="I_ADDRESS_3" value="<%=NEW_BUSINESS_ADDRESS2 %>" placeholder="상세주소(동,층,호)" />
                                        </div>
                                    </div>

                                    <%--생년월일--%>
                                    <div class="join_Input_Content">
                                        <div class="join_Input_Guide">
                                            <span class="lowerst-font">생년월일</span>
                                        </div>
                                        <div class="join_Input_Data">
                                            <div class="join_Input_Birth_Area">
                                                <div class="join_Input_Birth_Year">
                                                    <input type="hidden" class="drkid-input lowerst-font" id="H_BIRTH" name="H_BIRTH" value="" />
                                                    <select class="drkid-select lowerst-font" id="I_YEAR" name="I_YEAR">
                                                        <option value="">년</option>
                                                    </select>
                                                </div>
                                                <div class="join_Input_Birth_Month">
                                                    <select class="drkid-select lowerst-font" id="I_MONTH" name="I_MONTH">
                                                        <option value="">월</option>
                                                    </select>
                                                </div>
                                                <div class="join_Input_Birth_Date">
                                                    <input type="text" class="drkid-input lowerst-font" id="I_DATE" name="I_DATE" value="" placeholder="일(2자리)" maxlength="2" />
                                              
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

                                            <span class="lowerst-font">추천인 아이디</span>
                                        </div>
                                        <div class="join_Input_Data">
                                            <input type="text" class="drkid-input lowerst-font" id="RECOMMENDER_ID" name="RECOMMENDER_ID" value="<%=RECOMMENDER_ID %>" placeholder="" readonly="true" />
                                        </div>
                                    </div>

                                    <div class="join_Input_Content" style="width: 731px; padding: 20px 0; border-bottom: 1px solid #ccc;">
                                        <div class="empty_space" style="display:none;"></div>
                                        <div class="join_Input_Data">
                                           <div style="font-size:16px; font-weight: bold;">리워드 신청 계좌인증</div>
                                        </div>
                                    </div>
                                    <%--은행--%>
                                    <div class="join_Input_Content" style="padding: 20px 0 10px;">
                                        <div class="join_Input_Guide">
                                             <span class="lowerst-font">은행</span>
                                        </div>
                                        <div class="join_Input_Data">
                                          <select  class="drkid-select lower-font" name="BANK_CODE" style="width: 100%;" data-font-class="lower-font">
                                            <option value="">은행선택</option>
                                            <%if(BANK != null)
                                            {%>
                                                <%if(BANK.Rows.Count > 0)
                                                {%>
                                                        <%for (int i = 0; i < BANK.Rows.Count; i++ )
                                                          {%>
                                                               <option value="<%=BANK.Rows[i]["CODE_CODE"]%>" <%=BANK.Rows[i]["CODE_CODE"].ToString() == BANK_CODE ? "selected=\"selected\"" : "" %>><%=BANK.Rows[i]["CODE_NAME"]%></option>
                                                         <%}%>
                                                 <%}%>
                                             <%}%>
                                        </select>
                                        </div>
                                    </div>
                                    <%--계좌번호--%>
                                     <div class="join_Input_Content">
                                        <div class="join_Input_Guide">
                                             <span class="lowerst-font">계좌번호</span>
                                        </div>
                                        <div class="join_Input_Data">
                                          <input type="text" class="drkid-input lowerst-font" id="ACCOUNT_NO" name="ACCOUNT_NO" value="<%=ACCOUNT_NO %>" placeholder="계좌번호 - 없이 입력" />
                                        </div>
                                    </div>
                                    <%--예금주--%>
                                    <div class="join_Input_Content">
                                        <div class="join_Input_Guide">
                                             <span class="lowerst-font">예금주</span>
                                        </div>
                                        <div class="join_Input_Data">
                                           <input type="text" class="drkid-input lowerst-font" id="ACCOUNT_HOLDER_NM" name="ACCOUNT_HOLDER_NM" value="<%=ACCOUNT_HOLDER_NM %>" placeholder="예금주 입력" />
                                        </div>
                                    </div>
                                    <div class="join_Input_Content">
                                        <div class="empty_space"></div>
                                        <div class="join_Input_Data">
                                            <span class="drkid_Negative_color lowerst-font">* 리워드 신청을 위한 정확한 계좌정보를 입력하여주십시오. </span>
                                        </div>
                                    </div>

                                    <%--사업자등록증--%>
                                    <div class="join_Input_Content">
                                        <div class="join_Input_Guide">
                                             <span class="lowerst-font">사업자등록증</span>
                                        </div>
                                        <div class="join_Input_Data2">
                                          <div class="business_Area"> 
                                              <%if (BUSINESS_EDMS != null && BUSINESS_EDMS.Rows.Count > 0)
                                              {%>
                                                 <input type='hidden' name='image_upload_byte' value=''/>
                                                 <input type='hidden' name='image_upload_name' value='<%=BUSINESS_EDMS.Rows[0]["SOURCE_FILE_NAME"] %>'/>
                                                 <input type='hidden' name='image_upload_ext' value='<%=BUSINESS_EDMS.Rows[0]["EXT"] %>'/>
                                                 <input type='hidden' name='image_upload_sid' value='<%=BUSINESS_EDMS.Rows[0]["EDM_SID"] %>'/>
                                                 <input type='hidden' name='EDNS_REMARK' value='<%=BUSINESS_EDMS.Rows[0]["REMARKS"] %>'/>
                                                 <div class="custom_info"><%=BUSINESS_EDMS.Rows[0]["SOURCE_FILE_NAME"] %></div>
                                              <%}%>
                
                                          </div>
                    
                                          <div class="lowerst-font business_Add_Btn">등록</div>
                                          <div class="lowerst-font business_Del_Btn">삭제</div>
                                        </div>
                                    </div>
                                    <%--사업자등록증 미리보기 영역--%>
                                    <div class="preview_Area">
                                        <%if (BUSINESS_EDMS != null && BUSINESS_EDMS.Rows.Count > 0)
                                        {%>
                                            <div class="preview_Info">
                                                <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BUSINESS_EDMS.Rows[0]["TARGET_READ_PATH"] %>'/>
                                            </div>
                                        <%}%>
                                    </div>


                                </div>
                            </div>
                             <%--정보수정, 취소 버튼 영역--%>
                            <div id="modify_Btn_Wrap">
                                <div class="modify_Btn_Area">
                                    <div class="modify_Btn">정보수정</div>
                                    <div class="modify_Cansle_Btn">취소</div>
                                </div>
                            </div>     
                        </div>
                    </div>
                </div>
         </div>
        </div>
    </div>
    <div style="width: 90%; display: none;">
        <%--사업자등록증--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader" runat="server" ClientInstanceName="uploader" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete(e); }"
                TextChanged="function(s, e) { UpdateUploadButton(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader.Upload(); }" />
        </dx:ASPxButton>
    </div>
     <script>
         // *** 생년월일 셀렉트박스 세팅 ***
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
  </script>
</asp:Content>
