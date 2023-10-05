﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MY_DELIVERY.aspx.cs" Inherits="drKid.Source.client.my.C_MY_DELIVERY" %>
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
        .new_Order_Area {
            padding:0px 0px 42px 0px;
            width:1000px;
        }
        .new_Delivery_Btn {
            width:120px;
            text-align:center;
            color:#115C5E;
            border:1px solid #115C5E;
            padding: 3px 0px;
            cursor:pointer;
            font-weight: 400;
        }
        .new_Order_List_Column_Area {
            display: flex;
            padding: 15px 40px;
            background: #F9F9F9;
            text-align: center;
            width:100%;
                border-top: 1px solid #262626;
        }
        .new_Order_List_Column_1_Area {
             width:15%;
             /*width: 179.69px;*/
        }
        .new_Order_List_Column_2_Area {
            width:48%;
            /*width: 484.64px;*/
        }
        .new_Order_List_Column_3_Area {
            width:13%;
            /*width: 146.68px;*/
        }
        .new_Order_List_Column_4_Area {
            width:12%;
            /*width: 99.8px;*/
        }
        .new_Order_List_Column_5_Area {
            width:12%;
            /*width: 119.75px;*/
        }
        .new_Order_List_Column {
            font-weight:500;
        }
        /*시작*/
        .new_Order_List_Row_Area {
                width: 100%;
        }
        .new_Order_List_Row {
            display: flex;
            padding: 10px 40px;
            align-items: center;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
        }

        .new_Order_List_Row_1_Area {
            width:15%;
            /*cursor:pointer;*/
             /*width: 179.69px;*/
        }
        /*.new_Order_List_Row_2_Area_Wrap {
            display: grid;
            gap: 5px 0px;
        }*/
        .new_Order_List_Row_2_Area{
            width:48%;
            /*width: 441px;*/
            text-align: start;
            padding: 0px 20px 0px 20px;
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        .new_Order_List_Row_3_Area {
             width:13%;
             /*width: 138px;*/
        }
        .new_Order_List_Row_4_Area {
             width:12%;
             /*width: 92px;*/
        }
        .new_Order_List_Row_5_Area {
             width:12%;
            /*width: 110px;*/
             display: grid;
             gap: 5px 0px;
        }
        .new_Order_List_Row_1 {
             color:#828282;
        }
        .new_Order_List_Row_1_1 {
            font-weight: 400;
        }

        .new_Order_List_Row_img {
            width:55px;
            height:55px;
            object-fit: cover;
      
        }
        .new_Order_List_Row_2_1_1 {
            color:#9F9F9F;
            font-weight: 400;
        }
        .new_Order_List_Row_2_1_1 {
            font-weight:500;
            color:#9F9F9F;
        }
        .new_Order_List_Row_2_1_2 {
            font-weight:500;
              
        }
        .new_Order_List_Row_3 ,.new_Order_List_Row_4,
        .new_Order_List_Row_4_1 
        
        {
            font-weight:400;
        }
        .new_Order_List_Row_5 {
            font-weight:500;
            width: 64px;
            color: #115C5E;
            border: 1px solid #115C5E;
            margin: auto;
            padding: 3px 0px;
            cursor:pointer;

        }
        .new_Order_List_Row_5_1 {
            font-weight:500;
            border: 1px solid #115C5E;
            background: var(--main_color);
            color: #ffffff;
            width: 64px;
            margin: auto;
            padding: 3px 0px;
            cursor:pointer;
        }
        .multi_Order_Row_Area {
            display: grid;
             gap: 10px 0px;
        }
        .multi_Order_Row {
            display: flex;
            align-items: center;
        }
        .new_Order_List_Filed {
            width:1000px;
             
        }
        .new_Order_List_Empty {
            color:#828282;
            padding: 40px 40px;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
        }
        .delivery_Count_Info {
             
        }
        .delivery_Count_Info {
            color:#8F8F8F;
            font-weight:400;
        }
        .my_sub_Title_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 100%;
            padding: 20px 0px 0px 0px;
        }
        /*배송지관리 모달*/
        .delivery_Modal_Area {
            position: fixed;
            z-index:99;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            display: none;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 100%;
            height: 100%;
            background: #23232333;
        }
        .delivery_Modal {
            width:635px;
            height:720px;
            background:#ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 20px;
        }
        .delivery_Modal_Top_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0px 0px 10px 0px;
        }
        .delivery_Modal_Close {
            cursor:pointer;
        }
        .clear-icon:after {
            content: "clear";
            font-size: 28px;
            line-height: 40px;
        }
        .delivery_Modal_Input_Area {
            border: 1px solid #E2E2E2;
            border-left: none;
            border-right: none;
            padding: 10px 0px;
        }
        .modal_Input_Area {
            width: 100%;
            display: flex;
            align-items: center;
            padding: 0px 0px 20px 0px;
            align-items: baseline;
        }
        .modal_Input_Info_Area {
            display: flex;
            align-items: center;
            width: 20%;
        }
        .modal_Input {
            width: 80%;
        }
        .modal_Input_Phone {
            width: 80%;
            display: flex;
            justify-content: space-between;
        }
        .modal_Input_Address {
            width: 80%;
        }
        #I_DELIVERY_NAME,#I_DELIVERY_PERSON{
            width:100%;
            padding: 0px 15px;
            height: 50px;
        }
        #I_DELIVERY_PHONE_1, #I_DELIVERY_PHONE_2, #I_DELIVERY_PHONE_3 {
            width: 141px;
            height: 50px;
        }
        #I_DELIVERY_SECCOND_NUM_1, #I_DELIVERY_SECCOND_NUM_2, #I_DELIVERY_SECCOND_NUM_3 {
            width: 141px;
            height: 50px;
        }
        #I_DELIVERY_ADDRESS_1 {
            width: 255px;
            height: 50px;
            background: #F3F3F3;
            border-radius: 4px;
            border: 1px solid #E1E1E1;
            padding: 0px 15px;

        }
        #I_DELIVERY_ADDRESS_2 {
            width:100%;
            padding: 0px 15px;
            height: 50px;
             background: #F3F3F3;
        }
        #I_DELIVERY_ADDRESS_3 {
            width:100%;
            padding: 0px 15px;
            height: 50px;
        }
        .all_Delivery_Address_Wrap {
            width: 80%;
        }
        .modal_Input_Address {
            display: flex;
            align-items: center;
            width: 100%;
            justify-content: space-between;
            padding: 0px 0px 10px 0px;
        }
        .search_Address_Btn {
            width: 190px;
            height: 50px;
            background: #343434;
            color: #ffffff;
            text-align: center;
            line-height: 50px;
            border-radius: 4px;
            cursor:pointer;
        }
        .delivery_Modal_Bottom_Area {
            display: flex;
            width: 100%;
            padding: 15px 0px 30px 0px;
        }
        .default_Delivery_Check_Area {
            width: 20%;
        }
        .default_Delivery_Check {
           width: 80%;
        }
        #delivery_Modal_Checkbox {
            display: flex;
            gap: 0px 5px;
        }
        .checkbox_txt {
             color: #343434;
        }
        .delivery_Modal_Btn_Area {
            width: 100%;
            display: flex;
            gap: 0px 15px;
            justify-content: center;
        }
        .modal_Save_Btn {
            width: 120px;
            height: 50px;
            background: var(--main_color);
            color: #ffffff;
            text-align: center;
            line-height: 50px;
            cursor:pointer;
        }
        .modal_Cansle_Btn {
            width: 120px;
            height: 50px;
            text-align: center;
            line-height: 50px;
            border: 1px solid #E2E2E2;
            cursor:pointer;
        }

        /*다음레이어*/
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
             width: 595px;
            height: 45px;
            padding: 0px 7px;
            background: white;
            display: flex;
            align-items: center;
            border-bottom: solid 1px #d7d7d7;
        }
        .daumLayer_Top_area_1,.daumLayer_Top_area_3 {
            width:33%;
            /*height: 24px;*/

        }
        .daumLayer_Top_area_2 {
            width:33%;  
            /*height: 24px;*/
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
        /*.clear-icon:after {
            content: "clear";
            font-size: 22px;
        }*/
        .daumLayer_Top_Title {
             font-weight: 500;
        }
        .drkid-select-ul {
            overflow: scroll;
            height: 300px;
        }
        .form_search .post_search {
            height: 96px;
            padding: 0 65px 0 15px;
            background-color: #fff;
            position: relative
        }
        .readOnly {
            background: #F3F3F3;
        }
        /*마이페이지 공용*/
        .my_Title_Area {
            padding: 0px 0px 10px 0px;
        }
        .my_Title {
            font-size: 28px;
            font-weight: 600;
        }
        #hidden-field {
            display:none;
        }
        /*뉴 페이징*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
 
    </style>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
     <script>
         var userPhone_Number = '<%=baseUser.userPhone%>';
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
             //새 배송지 추가 클릭
             $(".new_Delivery_Btn").click(function () {
                 $("#I_DELIVERY_NAME").removeClass('readOnly');
                 $("input[name='editFlag']").val('N');
                 show_Delivery_Modal();
                 PhoneNumber_AutoInput(userPhone_Number);
             });
             //배송지관리 모달 닫기 클릭
             $(".delivery_Modal_Close,.modal_Cansle_Btn").click(function () {
                 hide_Delivery_Modal();
             });
             //우편번호 검색 클릭
             $(".search_Address_Btn").click(function () {
                 execDaumPostCode();
             });
             //다음 레이어 닫기 버튼
             $(".address_Icon_Area").click(function () {
                 closeDaumPostcode();
             });
             //휴대폰번호 입력
             $('input[name="I_DELIVERY_PHONE_1"], input[name="I_DELIVERY_PHONE_2"], input[name="I_DELIVERY_PHONE_3"]').on('input', function () {
                 var value = $(this).val();
                 $(this).val(value.replace(/\D/g, ''));//정수가 아니면 ''공백으로 만듦
             });
             //배송지 관리모달 저장
             $(".modal_Save_Btn").on("click", function() {
                 var result = duplicate_Check();
                 if (modalSave_Check()) {
                     if (result[0] == true) {
                         if (result[0] == true && result[1] == 0) {
                             if (!addressDuplicate_Check()) {
                                 _popModal.Promt('알림', '저장하시겠습니까?',
                                          function () {
                                              $('#flag').val('save');
                                              $('#form1').submit();
                                          }, function (error) { _popModal.Alert('', error); });
                             }
                             else {
                                 _popModal.Promt('알림', '이미 동일한 주소가 등록되어있습니다. 그래도 등록하시겠습니까?',
                                         function () {
                                             $('#flag').val('save');
                                             $('#form1').submit();
                                         }, function (error) { _popModal.Alert('', error); });
                             }
                         }
                         if (result[0] == true && result[1] == 3) {
                             if (!addressDuplicate_Check()) {
                                 _popModal.Promt('알림', '이미 기본 배송지가 설정되어있습니다. 변경하시겠습니까?',
                                        function () {
                                            $('#flag').val('save');
                                            $('#form1').submit();
                                        }, function (error) { _popModal.Alert('', error); });
                             }
                             else {
                                 _popModal.Promt('알림', '이미 동일한 주소가 등록되어있습니다. 그래도 등록하시겠습니까?',
                                         function () {
                                             $('#flag').val('save');
                                             $('#form1').submit();
                                         }, function (error) { _popModal.Alert('', error); });
                             }
                         }


                     }
                     else {
                         if (result[0] == false && result[1] == 1) {
                             _popModal.Alert('알림', '이미 동일한 배송지명이 있습니다');
                         }
                         if (result[0] == false && result[1] == 2) {
                             _popModal.Alert('알림', '이미 등록된 기본 배송지가 있습니다');
                         }
                     }
                 }
                 else {
                     _popModal.Alert('알림', '필수입력 정보를 모두 입력해주세요');
                 }
                 //$('#flag').val('save');
                 //$('#form1').submit();
             });
             $('.new_Order_List_Row_4_1').each(function () {
                 var phoneNumber = $(this).text();
                 //휴대전화번호는 11자리이다 이경우에만 슬라이스해서 '-'를 넣어줌 나머지 지역번호(02) 등으로 등록한 연락처는 처리 X
                 if (phoneNumber.length == 11) {
                     var formattedPhoneNumber = phoneNumber.slice(0, 3) + '-' + phoneNumber.slice(3, 7) + '-' + phoneNumber.slice(7);
                     $(this).text(formattedPhoneNumber);
                 }
             });
         });
         //모달관련 함수
         //새 배송지 추가버튼으로 새 모달창을 열었을때 휴대폰번호 세팅
         function PhoneNumber_AutoInput(number) {
             if (number != "" && number != null && number != undefined) {
                 var parts = number.split('-');
                 var num_1 = parts[0];
                 num_1.trim();
                 var num_2 = parts[1];
                 num_2.trim();
                 var num_3 = parts[2];
                 num_3.trim();
                 $("input[name='I_DELIVERY_PHONE_1']").val(num_1);
                 $("input[name='I_DELIVERY_PHONE_2']").val(num_2);
                 $("input[name='I_DELIVERY_PHONE_3']").val(num_3);
             }
         }
         function show_Delivery_Modal() {
             $(".delivery_Modal_Area").css("display", "flex");
         }
         function hide_Delivery_Modal() {
             $(".delivery_Modal_Area").css("display", "none");
             modalData_Clear();
         }
         
         //모달 데이터 클리어
         function modalData_Clear() {
             $("input[name='editFlag']").val(''); 
             $("input[name='detail_EditFlag']").val('');
             $("#I_DELIVERY_NAME").removeClass('readOnly');
             $("#I_DELIVERY_NAME").prop("readonly", false);
             $("#I_DELIVERY_NAME").val('');
             $("#I_DELIVERY_PERSON").val('');
             $("#I_DELIVERY_ADDRESS_1").val('');
             $("#I_DELIVERY_ADDRESS_2").val('');
             $("#I_DELIVERY_ADDRESS_3").val('');
             $("#I_DELIVERY_PHONE_1").val('');
             $("#I_DELIVERY_PHONE_2").val('');
             $("#I_DELIVERY_PHONE_3").val('');
             $("#I_DELIVERY_SECCOND_NUM_1").val('');
             $("#I_DELIVERY_SECCOND_NUM_2").val('');
             $("#I_DELIVERY_SECCOND_NUM_3").val('');
             $("#default_Adress_Check").prop('checked', false);
         }
         ///////////////////////
         //저장 전 체크함수 시작

         //저장 시 밸리데이션 체크 
         function modalSave_Check() {
             var flag = true;
             if ($("#I_DELIVERY_NAME").val() == "" || $("#I_DELIVERY_NAME").val() == null) {
                 flag = false;
             }
             else if ($("#I_DELIVERY_PERSON").val() == "" || $("#I_DELIVERY_PERSON").val() == null) {
                 flag = false;
             }
             else if ($("#I_DELIVERY_ADDRESS_1").val() == "" || $("#I_DELIVERY_ADDRESS_1").val() == null) {
                 flag = false;
             }
             else if ($("#I_DELIVERY_ADDRESS_2").val() == "" || $("#I_DELIVERY_ADDRESS_2").val() == null) {
                 flag = false;
             }
             else if ($("#I_DELIVERY_PHONE_1").val() == "" || $("#I_DELIVERY_PHONE_1").val() == null) {
                 flag = false;
             }
             else if ($("#I_DELIVERY_PHONE_2").val() == "" || $("#I_DELIVERY_PHONE_2").val() == null) {
                 flag = false;
             }
             else if ($("#I_DELIVERY_PHONE_3").val() == "" || $("#I_DELIVERY_PHONE_3").val() == null) {
                 flag = false;
             }
             return flag;
         }
         //1. 신규 저장, 수정에 따라 각각에 맞는 배송지명 중복체크
         //2. 기본 배송지 기본1개 원칙에 따른 체크
         function duplicate_Check()
         {
             var checkValue = $("#I_DELIVERY_NAME").val();
             var duplicate_Count = 0;
             var flag = true;
             var errorType = 0;
             var baseFlag = 0;
             //신규 저장, 수정에 따라 각각에 맞는 배송지명 중복체크
             $(".new_Order_List_Row_1_1").each(function () {
                 if ($(this).attr('data-info') == checkValue) {
                     duplicate_Count++;
                 }
             });
             //수정버튼을 눌러서 저장하는 거면
             if ($('input[name="editFlag"]').val() == "Y") {
                 if (duplicate_Count != 1) {
                     flag = false;
                     errorType = 1;// 배송지명 중복에러 값
                 }
             }
             //신규 배송지를 저장하는 거면
             if ($('input[name="editFlag"]').val() == "N") {
                 if (duplicate_Count != 0) {
                     flag = false;
                     errorType = 1;// 배송지명 중복에러 값
                 }
             }
             //기본 배송지 기본1개 원칙에 따른 체크
             $("[id^='baseFlag_']").each(function () {
                 baseFlag++;
             });
             // 기본 배송지 설정되어 있는것을 수정한 경우
             if ($('input[name="editFlag"]').val() == "Y" && $('input[name="detail_EditFlag"]').val() == "Y" && $("#default_Adress_Check").is(':checked')) {
                 if (baseFlag != 1) {
                     flag = false;
                     errorType = 2;// 기본배송지 중복에러 값
                 }
             }
             // 기본 배송지가 아닌것을 수정한 경우
             else if ($('input[name="editFlag"]').val() == "Y" && $('input[name="detail_EditFlag"]').val() != "Y" && $("#default_Adress_Check").is(':checked')) {
                 if (baseFlag == 1) {
                     flag = true;
                     errorType = 3;//기존 기본배송지 설정되어 있는데 새로운 기본배송지 설정을 하려는 경우
                 }
             }
             // 새 배송지 추가한 경우
             if ($('input[name="editFlag"]').val() == "N" && $("#default_Adress_Check").is(':checked')) {
                 if (baseFlag != 0) {
                     flag = false;
                     errorType = 2;// 기본배송지 중복에러 값
                 }
             }
             return [flag,errorType];
         }
         //주소 중복체크
         function addressDuplicate_Check() {
             var flag = false;
             var address1 = $("#I_DELIVERY_ADDRESS_1").val();
             var address2 = $("#I_DELIVERY_ADDRESS_3").val();
             var detailAddress = "";
             $(".new_Order_List_Row_2_1_1").each(function () {
                 if ($(this).attr('data-info') == address1) {
                     detailAddress = $(this).parent().find(".new_Order_List_Row_2_1_2").attr('data-value');
                     if (detailAddress == address2 && $('input[name="editFlag"]').val() != "Y") {
                          flag = true;
                     }
                 }
             });
             return flag;
         }
         ///////////////////////
         //저장 전 체크함수 끝
        
         //배송지 리스트 수정버튼 이벤트
         function modalEdit(target) {
             var findItem = $(target).parents('.new_Order_List_Row');
             var find_detail_EditFlag = findItem.find('.new_Order_List_Row_1');
             if (find_detail_EditFlag.length == 1) { // 기본 배송지로 설정된 항목에 수정버튼을 누른경우
                 console.log("기본 배송지 수정")
                 $("input[name='detail_EditFlag']").val('Y');
             }
             var baseFlag = findItem.find('.new_Order_List_Row_1').attr('data-info'); // 기본배송지 여부
             var deliveryName = findItem.find('.new_Order_List_Row_1_1').attr('data-info'); // 배송지 명
             var receiver = findItem.find('.new_Order_List_Row_3').attr('data-info');// 받는사람
             var postNO = findItem.find('.new_Order_List_Row_2_1_1').attr('data-info');// 우편번호
             var address1 = findItem.find('.new_Order_List_Row_2_1_2').attr('data-info');// 주소
             var address2 = findItem.find('.new_Order_List_Row_2_1_2').attr('data-value');// 상세주소
             var fullPhone = findItem.find('.new_Order_List_Row_4_1').text();// 전체 폰번호
             var parts2 = fullPhone.split('-');
             var phone1 = parts2[0];
             phone1.trim();
             var phone2 = parts2[1];
             phone2.trim();
             var phone3 = parts2[2];
             phone3.trim();
             var SPARE_NO = findItem.find('input[type="hidden"][name="SPARE_NO"]').val();
             if (SPARE_NO != "" && SPARE_NO != null && SPARE_NO != undefined) {
                 console.log("SPARE_NO", SPARE_NO)
                 //휴대전화번호는 11자리이다 이경우에만 슬라이스해서 '-'를 넣어줌 나머지 지역번호(02) 등으로 등록한 연락처는 처리 X
                 if (SPARE_NO.length == 11) {
                     var formattedPhoneNumber = SPARE_NO.slice(0, 3) + '-' + SPARE_NO.slice(3, 7) + '-' + SPARE_NO.slice(7);
                     SPARE_NO = formattedPhoneNumber;
                     var parts3 = SPARE_NO.split('-');
                     var spare_no1 = parts3[0];
                     spare_no1.trim();
                     var spare_no2 = parts3[1];
                     spare_no2.trim();
                     var spare_no3 = parts3[2];
                     spare_no3.trim();
                     //모달 -> 추가연락처 세팅
                     $("#I_DELIVERY_SECCOND_NUM_1").val(spare_no1);
                     $("#I_DELIVERY_SECCOND_NUM_2").val(spare_no2);
                     $("#I_DELIVERY_SECCOND_NUM_3").val(spare_no3);
                 }
             }
             $('input[name="editFlag"]').val("Y");
             show_Delivery_Modal();// 모달 열기
             //모달 => 수정하기 위한 데이터 세팅
             $("#I_DELIVERY_NAME").val(deliveryName);
             $("#I_DELIVERY_NAME").removeClass('readOnly');
             $("#I_DELIVERY_NAME").addClass('readOnly');
             $("#I_DELIVERY_NAME").prop("readonly", true);
             $("#I_DELIVERY_PERSON").val(receiver);
             $("#I_DELIVERY_ADDRESS_1").val(postNO);
             $("#I_DELIVERY_ADDRESS_2").val(address1);
             $("#I_DELIVERY_ADDRESS_3").val(address2);
             $("#I_DELIVERY_PHONE_1").val(phone1);
             $("#I_DELIVERY_PHONE_2").val(phone2);
             $("#I_DELIVERY_PHONE_3").val(phone3);
             if (baseFlag == "Y") { $("#default_Adress_Check").prop('checked', true); }
         }
         //배송지 삭제 함수
         function del_Delivery(target) {
             var findItem = $(target).parents('.new_Order_List_Row');
             var delName = findItem.find('.new_Order_List_Row_1_1').attr('data-info'); // 삭제할 배송지 명
             var baseFlag = findItem.find('.new_Order_List_Row_1').attr('data-info'); // 기본 배송지 여부
             $("input[name=delDelivery_Name]").val(delName);
             //기본 배송지를 삭제하려 할 경우
             if ($("input[name=delDelivery_Name]").val() != "" && baseFlag == "Y") {
                 _popModal.Promt('알림', '기본 배송지입니다. 삭제하시겠습니까?',
                                        function () {
                                            $('#flag').val('del');
                                            $('#form1').submit();
                                        }, function (error) { _popModal.Alert('', error); });
             }
                 //일반 배송지를 삭제하려 할 경우
             else if ($("input[name=delDelivery_Name]").val() != "" && baseFlag != "Y") {
                 _popModal.Promt('알림', '삭제하시겠습니까?',
                                        function () {
                                            $('#flag').val('del');
                                            $('#form1').submit();
                                        }, function (error) { _popModal.Alert('', error); });
             }
         }
         //우편번호 검색 관련 함수
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
                     $("#I_DELIVERY_ADDRESS_1").val(data.zonecode);
                     $("#I_DELIVERY_ADDRESS_2").val(fullAddr);
                     $("#I_DELIVERY_ADDRESS_3").focus();
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
             $(".post_search").css("height", "99px");
             // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
             initLayerPosition();
         }
         function initLayerPosition() {
             var width = 598; //우편번호 서비스가 들어갈 element의 width
             var height = 460; //우편번호 서비스가 들어갈 element의 height
             var borderWidth = 1; //샘플에서 사용하는 border의 두께
             var offsetTop = $(".search_Address_Btn").offset().top;
             var offsetleft = $(".search_Address_Btn").offset().left;
             var offsetbottom = $(".search_Address_Btn").offset().bottom;
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
         function closeDaumPostcode() {
             // iframe을 넣은 element를 안보이게 한다.
             $("#daumLayer").hide();
         }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="editFlag" value="" />
        <input type="text" name="detail_EditFlag" value="" />
        <input type="text" name="delDelivery_Name" value="" />
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
                                    <div class="lower-font title_Bar_Bottom_Info3">연계팔로워 <span class="lower-font title_Bar_Bottom_Info4">53</span></div>
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
                            <div class="big-font share_Btn"><span class="material-icons-outlined" id="insert_emoticon">insert_emoticon</span>친구초대</div>
                            <div class="KeyDni_Area">
                                <div class="KeyDni_Top_Title_Area">
                                    <div class="KeyDni_Top_Title" id="mypage_Btn">My KeyDni</div>
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
                                        <div class="KeyDni_Info_Clicked lower-font" id="C_MY_DELIVERY">배송지 관리</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_CANSLEPRODUCT">취소/반품/교환 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REFUNDPRODUCT">환불/입금 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REWARD">리워드 현황</div>
                                    </div>
                                </div>

                                <%--고객센터--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">고객센터</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_HELPDESKLIST">나의 1:1 문의</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_ITEMDESKLIST">나의 상품 문의</div>
                                        <div class="KeyDni_Info lower-font" id="C_CS_QUESTIONLIST">자주 하는 질문</div>
                                        <div class="KeyDni_Info lower-font" id="C_CS_NOTICELIST">공지사항</div>
                                    </div>
                                </div>
                                <%--회원정보--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">회원정보</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_MODIFYINFO">회원정보 수정</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_MEMBERDEPARTURE">회원 탈퇴</div>
                                        <div class="KeyDni_Info lower-font logout_Btn">로그아웃</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--레프트 메뉴 제외 하단 전체 영역--%>
                        <div class="Bottom_Area">

                            <%--배송지 관리  전체 영역--%>
                            <div class="order_List_Area">
                                <div class="my_Title_Area">
                                    <div class="my_Title">배송지 관리</div>
                                    <div class="my_sub_Title_Area">
                                        <div class="delivery_Count_Info lower-font">배송지 관리 내역 총 <span class="main_color"><%=totalCount%></span>건</div>
                                        <div class="new_Delivery_Btn lowerst-font main_color">새 배송지 추가</div>
                                    </div>

                                </div>
                                <%--리스트--%>
                                <div class="new_Order_Area">
                                    <div class="new_Order_List_Area">
                                        <%--배송지 관리 리스트--%>
                                        <div class="new_Order_List">
                                            <%--배송지 관리 리스트 컬럼--%>
                                            <div class="new_Order_List_Column_Area">
                                                <div class="new_Order_List_Column_1_Area">
                                                    <div class="new_Order_List_Column lowerst-font">배송지 이름</div>
                                                </div>
                                                <div class="new_Order_List_Column_3_Area">
                                                    <div class="new_Order_List_Column lowerst-font">받으실 분</div>
                                                </div>

                                                <div class="new_Order_List_Column_2_Area">
                                                    <div class="new_Order_List_Column lowerst-font">주소</div>
                                                </div>
                                                <div class="new_Order_List_Column_4_Area">
                                                    <div class="new_Order_List_Column lowerst-font">연락처</div>
                                                </div>
                                                <div class="new_Order_List_Column_5_Area">
                                                    <div class="new_Order_List_Column lowerst-font">수정/삭제</div>
                                                </div>
                                            </div>
                                            <%--주문/배송상세 리스트 내용--%>
                                            <div class="new_Order_List_Filed">
                                                <%--등록된 배송지가 없을때--%>

                                                <%if (DELIVERY_LIST.Rows.Count > 0)
                                                  {%>
                                                <%for (int i = 0; i < DELIVERY_LIST.Rows.Count; i++)
                                                  {%>
                                                <%--조회내역이 있을때 개별 레코드--%>
                                                <div class="new_Order_List_Row_Area">
                                                    <div class="new_Order_List_Row">
                                                        <%--배송지 이름--%>
                                                        <div class="new_Order_List_Row_1_Area">
                                                            <%if (DELIVERY_LIST.Rows[i]["BASE_FLAG"].ToString() == "Y")
                                                              {%>
                                                            <div class="new_Order_List_Row_1 lowerst-font" id="baseFlag_<%=i%>" data-info="<%=DELIVERY_LIST.Rows[i]["BASE_FLAG"]%>">(기본 배송지)</div>
                                                            <%}%>
                                                            <div class="new_Order_List_Row_1_1 drkid_postive_color lowerst-font" data-info="<%=DELIVERY_LIST.Rows[i]["DELIVERY_NAME"]%>"><%=DELIVERY_LIST.Rows[i]["DELIVERY_NAME"]%></div>
                                                        </div>
                                                        <%--받으실 분--%>
                                                        <div class="new_Order_List_Row_3_Area">
                                                            <div class="new_Order_List_Row_3 lowerst-font" data-info="<%=DELIVERY_LIST.Rows[i]["RECEIVER"]%>"><%=DELIVERY_LIST.Rows[i]["RECEIVER"]%></div>
                                                        </div>

                                                        <%--상품금액/수량--%>
                                                        <div class="new_Order_List_Row_2_Area">

                                                            <div class="new_Order_List_Row_2_1">
                                                                <div class="new_Order_List_Row_2_1_1 lowerst-font" data-info="<%=DELIVERY_LIST.Rows[i]["POST_NO"]%>">(<%=DELIVERY_LIST.Rows[i]["POST_NO"]%>)</div>
                                                                <div class="new_Order_List_Row_2_1_2 lowerst-font" data-info="<%=DELIVERY_LIST.Rows[i]["ADDR_1"]%>" data-value="<%=DELIVERY_LIST.Rows[i]["ADDR_2"]%>">
                                                                    <%=DELIVERY_LIST.Rows[i]["ADDR_1"]%> <%=DELIVERY_LIST.Rows[i]["ADDR_2"]%>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%--주문상태--%>
                                                        <div class="new_Order_List_Row_4_Area">
                                                            <div class="new_Order_List_Row_4 lowerst-font" data-info="<%=DELIVERY_LIST.Rows[i]["TEL_NO"]%>">휴대폰</div>
                                                            <div class="new_Order_List_Row_4_1 lowerst-font"><%=DELIVERY_LIST.Rows[i]["TEL_NO"]%></div>
                                                        </div>
                                                        <%--확인/리뷰--%>
                                                        <div class="new_Order_List_Row_5_Area">
                                                            <div class="new_Order_List_Row_5 lowerst-font" onclick="modalEdit(this);">수정</div>
                                                            <div class="new_Order_List_Row_5_1 lowerst-font" onclick="del_Delivery(this);">삭제</div>
                                                        </div>
                                                        <input type="hidden" name="SPARE_NO" value="<%=DELIVERY_LIST.Rows[i]["SPARE_NO"]%>" />
                                                    </div>
                                                </div>
                                                <%}%>
                                                <%}%>
                                                <%else
                                                  {%>
                                                <div class="new_Order_List_Empty lowerst-font">등록된 배송지가 없습니다.</div>
                                                <%}%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--배송지 관리 모달--%>
    <div class="delivery_Modal_Area">
        <div class="delivery_Modal">
            <%--상단--%>
            <div class="delivery_Modal_Top_Area">
                <div class="my_Title">배송지 관리</div>
                <div class="delivery_Modal_Close">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <%--중단 입력영역--%>
            <div class="delivery_Modal_Input_Area">
                <%--배송지 명--%>
                <div class="modal_Input_Area">
                    <div class="modal_Input_Info_Area">
                        <div class="drkid_Negative_color lowerst-font">*&nbsp&nbsp</div>
                        <div class="modal_Input_Info lowerst-font">배송지명</div>
                    </div>
                    <div class="modal_Input">
                        <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_NAME" name="I_DELIVERY_NAME" value="" placeholder="배송지명을 입력해주세요" />
                    </div>
                </div>
                <%--받는분--%>
                <div class="modal_Input_Area">
                    <div class="modal_Input_Info_Area">
                        <div class="drkid_Negative_color lowerst-font">*&nbsp&nbsp</div>
                        <div class="modal_Input_Info lowerst-font">받는분</div>
                    </div>
                    <div class="modal_Input">
                        <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_PERSON" name="I_DELIVERY_PERSON" value="" placeholder="받는분을 입력해주세요" />
                    </div>
                </div>
                <%--받는 주소--%>
                <div class="modal_Input_Area">
                    <div class="modal_Input_Info_Area">
                        <div class="drkid_Negative_color lowerst-font">*&nbsp&nbsp</div>
                        <div class="modal_Input_Info lowerst-font">받는 주소</div>
                    </div>
                    <%--다음레이어--%>
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
                    <div class="all_Delivery_Address_Wrap">
                        <div class="modal_Input_Address">
                            <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_ADDRESS_1" name="I_DELIVERY_ADDRESS_1" value="" readonly="true" />
                            <div class="search_Address_Btn lowerst-font">우편번호 검색</div>
                        </div>
                        <div class="modal_Input_Address">
                            <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_ADDRESS_2" name="I_DELIVERY_ADDRESS_2" value="" readonly="true" />
                        </div>
                        <div class="modal_Input_Address">
                            <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_ADDRESS_3" name="I_DELIVERY_ADDRESS_3" value="" placeholder="상세주소 입력(동/층/호)" />
                        </div>
                    </div>
                </div>
                <%--휴대폰번호--%>
                <div class="modal_Input_Area">
                    <div class="modal_Input_Info_Area">
                        <div class="drkid_Negative_color lowerst-font">*&nbsp&nbsp</div>
                        <div class="modal_Input_Info lowerst-font">휴대폰번호</div>
                    </div>
                    <div class="modal_Input_Phone">
                        <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_PHONE_1" name="I_DELIVERY_PHONE_1" value="" maxlength="3" />
                        <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_PHONE_2" name="I_DELIVERY_PHONE_2" value="" maxlength="4" />
                        <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_PHONE_3" name="I_DELIVERY_PHONE_3" value="" maxlength="4" />
                    </div>
                </div>
                <%--추가 연락처--%>
                <div class="modal_Input_Area">
                    <div class="modal_Input_Info_Area">
                        <div class="drkid_Negative_color lowerst-font">&nbsp&nbsp&nbsp&nbsp</div>
                        <div class="modal_Input_Info lowerst-font">추가 연락처</div>
                    </div>
                    <div class="modal_Input_Phone">
                        <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_SECCOND_NUM_1" name="I_DELIVERY_SECCOND_NUM_1" value="" maxlength="3" />
                        <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_SECCOND_NUM_2" name="I_DELIVERY_SECCOND_NUM_2" value="" maxlength="4" />
                        <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_SECCOND_NUM_3" name="I_DELIVERY_SECCOND_NUM_3" value="" maxlength="4" />
                    </div>
                </div>
            </div>
            <%--모달 하단 버튼 및 체크박스--%>
            <div class="delivery_Modal_Bottom_Area">
                <div class="default_Delivery_Check_Area">
                    <div class="modal_Empty_Area"></div>
                </div>
                <div class="default_Delivery_Check">
                    <label class="drkid-checkbox" id="delivery_Modal_Checkbox">
                        <input type="checkbox" value="Y" id="default_Adress_Check" name="DEFAULT_ADRESS_CHECK" />
                        <span class="fake-check-box"></span>
                        <span class="checkbox_txt lower-font">기본 배송지로 설정 합니다</span>
                    </label>
                </div>
            </div>
            <div class="delivery_Modal_Btn_Area">
                <div class="modal_Save_Btn middle-font">저장</div>
                <div class="modal_Cansle_Btn middle-font">취소</div>
            </div>
        </div>
    </div>
</asp:Content>
