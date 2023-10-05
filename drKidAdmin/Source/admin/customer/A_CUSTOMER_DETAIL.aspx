﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_CUSTOMER_DETAIL.aspx.cs" Inherits="drKidAdmin.Source.admin.customer.A_CUSTOMER_DETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .title {
            padding: 20px 30px;
            border-bottom: 1px solid #dbdde2;
        }
        .content {
            padding: 20px 30px;
        }
        .user_detail_Title_Area {
            border: 3px solid #F3F3F3;
            padding: 10px 20px;
        }
        .baseInfo_Title_Area {
            padding: 20px 0px;
        }
        .baseInfo_List {
            border-top: 1px solid #262626;
        }
        .baseInfo {
            display: flex;
            align-items: center;
            border-bottom: 1px solid #CCCCCC;
        }
        .info_Area {
            width: 12%;
            background: #F3F3F3;
            padding: 20px;
        }
        .big_info_Area {
            height: 160px;
        }
        .data_Area {
            width: 88%;
            padding: 0px 15px;
        }
        .big_data_Area {
            display: grid;
            gap: 10px 0px;
            padding: 10px 15px;
        }
        .common_Input {
            width: 90%;
            border-radius: 4px;
        }
        .middle_Input {
            width: 100%;
            border-radius: 4px;
        }
        .small_Input {
            width: 80%;
            border-radius: 4px;
        }
        .delivery_Btn {
            width:190px;
            height:40px;
            line-height:40px;
            text-align:center;
            background:#343434;
            color:#ffffff;
            border-radius: 4px;
            cursor:pointer;
        }
        .flex {
            display: flex;
            align-items: center;
        }
        .flex_Gap {
            display: flex;
            align-items: center;
            gap:0px 20px;
        }
        .change_Recommond_Btn{
            width: 150px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            background: #343434;
            color: #ffffff;
            border-radius: 4px;
            cursor: pointer;
        }
        .showDetail_Btn {
            cursor: pointer;
        }
        .detail_Layout {
            display: flex;
            align-items: center;
            width: 80%;
            gap: 0px 20px;
        }
        .grade_Title {
            width: 145px;
            height: 37px;
            line-height: 37px;
            text-align: center;
            border: 1px solid var(--main_color);
            color:var(--main_color);
            font-weight:500;
            border-radius: 4px;
            user-select: none;
        }
        .point_Edit_Btn {
            width: 150px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            background: #343434;
            color: #ffffff;
            border-radius: 4px;
            cursor: pointer;
        }
        .select_Info{
            width:7%;
        }
        .select_Area {
            width:93%;
        }
        .font_weight_400 {
            font-weight:400;
        }
        .font_weight_500 {
            font-weight:500;
        }
        .readOnly {
            background: #F3F3F3;
        }
        /*모달 공통*/
        .overlay {
            position: fixed;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display:none;
        }
        .modal_Inner_500 {
            width:500px;
            background-color: #fff;
            position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
            padding:20px;
        }
        .modal_Inner_600 {
            width:600px;
            background-color: #fff;
            position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
            padding:20px;
        }
        .modal_Inner_800 {
            width:800px;
            background-color: #fff;
            position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
            padding:20px;
        }
        .modal_Inner_1000 {
            width:1000px;
            background-color: #fff;
            position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
            padding:20px;
        }
        .modal_Inner_1100 {
            width:1100px;
            background-color: #fff;
            position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
            padding:20px;
        }
        .modal_TitleArea {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .modalClose_Btn {
            cursor:pointer;
        }
        .modal_MiddleArea {
           padding: 20px 10px;
        }
        .modal_MiddleArea_Scroll {
            overflow-y: auto;
            height: 500px;
        }
        .modal_Btn_Area {
            display: flex;
            justify-content: center;
            gap: 0px 20px;
        }
         /*배송지 리스트 모달*/
        #DELIVERY_MODAL1 {
            z-index:50;
        }
        .modal_delieryList_Top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 100%;
            padding: 20px 0px 10px 0px;
        }
         .delivery_Count_Info {
            color:#8F8F8F;
            font-weight:400;
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
        }
        .new_Order_List_Row_2_Area{
            width:48%;
            text-align: start;
            padding: 0px 20px 0px 20px;
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        .new_Order_List_Row_3_Area {
             width:13%;
        }
        .new_Order_List_Row_4_Area {
             width:12%;
        }
        .new_Order_List_Row_5_Area {
             width:12%;
             display: grid;
             gap: 5px 0px;
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
        }
        .new_Order_List_Column_2_Area {
            width:48%;
        }
        .new_Order_List_Column_3_Area {
            width:13%;
        }
        .new_Order_List_Column_4_Area {
            width:12%;
        }
        .new_Order_List_Column_5_Area {
            width:12%;
        }
        .new_Order_List_Column {
            font-weight:500;
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
         /*배송지관리 모달*/
        #DELIVERY_MODAL2 {
            z-index:55;
        }
        .delivery_Modal {
            width:635px;
            height:720px;
            background:#ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 20px;
             position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
     
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
        .new_Order_List_Empty {
            padding: 40px 20px;
            text-align: center;
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
        @media (max-width: 1550px) {
          .delivery_Modal {
            height: 520px;
          }
          .delivery_Modal_Input_Area {
            height: 300px;
            overflow-y: auto;
          }
            #daumLayer {
                top: 70px;
            }
        }
        /*다음레이어*/
         #daumLayer {
             display:none;width:100%;height:300px;position:absolute; z-index:999;border: 1px solid #918d8d; 
        }
        .daumLayer_Top {

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
            overflow-y: auto;
            height: 300px;
        }
        .form_search .post_search {
            height: 96px;
            padding: 0 65px 0 15px;
            background-color: #fff;
            position: relative
        }
        /*추천인 변경 모달*/
        .recommend_Record {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 0px 20px;
            padding: 7px 0px;
        }
        .recommend_Info {
            width: 100px;
            text-align: right;
        }
        /*추천인 변경 로그 모달*/
        .border_bottom {
            border-bottom: 1px solid #CCCCCC;
        }
        .padding10 {
            padding:10px;
        }
        .recommeder_Log_Wrap {
            display: flex;
            border: 1px solid #CCCCCC;
            background: #F9F9F9;
            padding: 10px 30px;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        /*사업자등록증 모달*/
        #business_Check_Area {
            height:900px;
        }
        @media (max-width: 1550px) {
            #business_Check_Area {
                height: 440px;
                overflow-y: visible;
            }
        }
        /*포인트 설정 모달*/
        .radio_all_list {
            display: flex;
            gap: 0px 20px;
            padding: 10px 0px;
        }
        input[name="POINT_RATE"] {
            width:100%;
        }
        .point_Area {
            display: flex;
            padding: 20px 0px;
            justify-content: space-between;
        }
        .pointInfo_Area {
            display: flex;
        }
        /*포인트 로그 모달*/
        .pointLog_Culumn {
            display: flex;
            width: 100%;
            padding: 10px 0px;
            border-top: 1px solid #CCCCCC;
            border-bottom: 1px solid #CCCCCC;
        }
        .pointLog_Culumn1 {
            width: 60%;
            text-align: center;
        }
        .pointLog_Culumn1, .pointLog_Culumn2 {
            width: 20%;
            text-align: center;
        }
        .pointLog_Row {
            width: 100%;
            display: flex;
            padding: 10px 0px;
            background: #F9F9F9;
            border: 1px solid #CCCCCC;
            margin-bottom: 10px;
        }
        .pointLog_Culumn1 {
            width: 60%;
        }
        .pointLog_Culumn2, .pointLog_Culumn3 {
            width: 20%;
            text-align: center;
        }
        .pointLog_Row_Area {
            padding: 20px 0px;
        }
        .noData {
            text-align: center;
            padding: 20px 0px;
        }
        /*쿠폰 모달*/
        .coupon_Culumn4 {
            width: 20%;
            
        }
        .coupon_Culumn1,.coupon_Culumn2,.coupon_Culumn3,.coupon_Culumn5,.coupon_Culumn8 {
            width: 10%;
            text-align:center;
        }
       
        .coupon_Culumn6,.coupon_Culumn7 {
            width: 15%;
            text-align:center;
        }
        /*등급 변경이력 모달*/
        .userType_Title_Area {
            display: flex;
            align-items: center;
            gap: 0px 21px;
            padding: 0px 0px 15px 0px;
        }
        .userType_Title {
            border: 3px solid #F3F3F3;
            padding: 5px 20px;
            width: fit-content;
        }
        .business_Grade {
            background:var(--main_color);
            color:#ffffff;
        }
        .userGrade_Log {
            width: 100%;
            display: flex;
            padding: 10px;
            background: #F9F9F9;
            border: 1px solid #CCCCCC;
            margin-bottom: 10px;
        }
        .userGrade_Log_L {
            display: flex;
            width: 50%;
            align-items: center;
            gap: 0px 20px;
        }
        .userGrade_Log_R {
            display: flex;
            width: 50%;
            align-items: center;
            justify-content: right;
        }
        
    </style>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
    <script>
        function show_Delivery_Modal() {
            $("#DELIVERY_MODAL2").css("display", "flex");
        }
        function hide_Delivery_Modal() {
            $("#DELIVERY_MODAL2").css("display", "none");
            deliveryList_ModalData_Clear();
        }
        //배송지 리스트 모달 데이터 클리어
        function deliveryList_ModalData_Clear() {
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
            var width = 600; //우편번호 서비스가 들어갈 element의 width
            var height = 454; //우편번호 서비스가 들어갈 element의 height
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
            console.log("fullPhone", fullPhone)
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
                                           $('#flag').val('delDelivery');
                                           $('#form1').submit();
                                       }, function (error) { _popModal.Alert('', error); });
            }
                //일반 배송지를 삭제하려 할 경우
            else if ($("input[name=delDelivery_Name]").val() != "" && baseFlag != "Y") {
                _popModal.Promt('알림', '삭제하시겠습니까?',
                                       function () {
                                           $('#flag').val('delDelivery');
                                           $('#form1').submit();
                                       }, function (error) { _popModal.Alert('', error); });
            }
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
        //1. 신규 저장, 수정에 따라 각각에 맞는 배송지명 중복체크
        //2. 기본 배송지 기본1개 원칙에 따른 체크
        function duplicate_Check() {
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
            return [flag, errorType];
        }
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
        var $USER_ID = '<%=USER_ID%>';
        var userPhone_Number = '<%=USER_MOBILE_NO %>';
        var delivery_save_flag = '<%=delivery_save_flag%>';
        var delivery_del_flag = '<%=delivery_del_flag%>';
        var point_edit_flag = '<%=point_edit_flag%>';
        // RECOMMENDER_STATUS_MESSAGE 추천인 변경 상태 메시지 변수, "RECOMMENDER_STATUS_OK"면 정상 "NOT_FIND_ID"면
        //변경할 추천인 아이디가 존재하지 않는것이므로 저장하지 않기때문에 값에 따른 메시지를 출력해야함.
        var RECOMMENDER_STATUS_MESSAGE = '<%=RECOMMENDER_STATUS_MESSAGE%>';
        $(document).ready(function () {
            //추천인 변경 완료 시
            if (RECOMMENDER_STATUS_MESSAGE == "RECOMMENDER_STATUS_OK")
            {
                _popModal.Alert('알림', '추천인이 정상 변경되었습니다.');
            }
            if (RECOMMENDER_STATUS_MESSAGE == "NOT_FIND_ID") {
                _popModal.Alert('알림', '변경할 추천인 ID에 해당하는 ID가 없습니다.');
            }
            //배송지 저장 및 삭제 완료 시
            if (delivery_save_flag == "Y") {
                _popModal.Alert('알림', '배송지가 저장되었습니다.');
                $("#DELIVERY_MODAL1").show();
            }
            if (delivery_del_flag == "Y") {
                _popModal.Alert('알림', '배송지가 삭제되었습니다.');
                $("#DELIVERY_MODAL1").show();
            }
            //포인트 설정 완료 시
            if (point_edit_flag == "Y") {
                _popModal.Alert('알림', '포인트 설정이 정상 적용되었습니다. ');
            }
            //리뷰 자세히 보기
            $("#user_ReviewDetail_Btn").on('click', function () {
                var queryString = "?USER_ID=" + $USER_ID;
                openMenuPath("/Source/admin/cs/A_CS_REVIEW.aspx", queryString, true);
            });
            //1:1문의 자세히 보기
            $("#user_ViewContact_Btn").on('click', function () {
                var queryString = "?USER_ID=" + $USER_ID;
                openMenuPath("/Source/admin/cs/A_CS_CONTACTLIST.aspx", queryString, true);
            });
            //상품문의 자세히보기
            $("#user_ViewContact_Prod_Btn").on('click', function () {
                var queryString = "?USER_ID=" + $USER_ID + "&request_type=" +"PROD";
                openMenuPath("/Source/admin/cs/A_CS_CONTACTLIST.aspx", queryString, true);
            });
            
            /////////////////
            //배송지관리 관련
            //배송지리스트 모달 닫기
            $("#deliveryList_modalClose_Btn").on('click', function () {
                $("#DELIVERY_MODAL1").hide();
            });
            //새 배송지 추가 클릭
            $(".new_Delivery_Btn").click(function () {
                $("#I_DELIVERY_NAME").removeClass('readOnly');
                $("input[name='editFlag']").val('N');
                
                if (userPhone_Number.length == 13) {
                    PhoneNumber_AutoInput(userPhone_Number);
                }
                show_Delivery_Modal();
            });
            //우편번호 검색 클릭
            $(".search_Address_Btn").click(function () {
                execDaumPostCode();
            });
            //배송지 관리 모달 닫기
            $("#deliveryDetail_modalClose_Btn").on('click', function () {
                hide_Delivery_Modal();
            });
            $('.new_Order_List_Row_4_1').each(function () {
                var phoneNumber = $(this).text();
                //휴대전화번호는 11자리이다 이경우에만 슬라이스해서 '-'를 넣어줌 나머지 지역번호(02) 등으로 등록한 연락처는 처리 X
                if (phoneNumber.length == 11) {
                    var formattedPhoneNumber = phoneNumber.slice(0, 3) + '-' + phoneNumber.slice(3, 7) + '-' + phoneNumber.slice(7);
                    $(this).text(formattedPhoneNumber);
                }
            });
            //배송지 관리모달 저장
            $(".modal_Save_Btn").on("click", function () {
                var result = duplicate_Check();
                if (modalSave_Check()) {
                    if (result[0] == true) {
                        if (result[0] == true && result[1] == 0) {
                            if (!addressDuplicate_Check()) {
                                _popModal.Promt('알림', '저장하시겠습니까?',
                                         function () {
                                             $('#flag').val('saveDelivery');
                                             $('#form1').submit();
                                         }, function (error) { _popModal.Alert('', error); });
                            }
                            else {
                                _popModal.Promt('알림', '이미 동일한 주소가 등록되어있습니다. 그래도 등록하시겠습니까?',
                                        function () {
                                            $('#flag').val('saveDelivery');
                                            $('#form1').submit();
                                        }, function (error) { _popModal.Alert('', error); });
                            }
                        }
                        if (result[0] == true && result[1] == 3) {
                            if (!addressDuplicate_Check()) {
                                _popModal.Promt('알림', '이미 기본 배송지가 설정되어있습니다. 변경하시겠습니까?',
                                       function () {
                                           $('#flag').val('saveDelivery');
                                           $('#form1').submit();
                                       }, function (error) { _popModal.Alert('', error); });
                            }
                            else {
                                _popModal.Promt('알림', '이미 동일한 주소가 등록되어있습니다. 그래도 등록하시겠습니까?',
                                        function () {
                                            $('#flag').val('saveDelivery');
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
            });
            //휴대폰번호 입력
            $('input[name="I_DELIVERY_PHONE_1"], input[name="I_DELIVERY_PHONE_2"], input[name="I_DELIVERY_PHONE_3"]').on('input', function () {
                var value = $(this).val();
                $(this).val(value.replace(/\D/g, ''));//정수가 아니면 ''공백으로 만듦
            });
            //배송지 관리 버튼, 배송지 리스트 모달 출력
            $(".delivery_Btn").on("click", function () {
                $("#DELIVERY_MODAL1").show();
            });
            //추천인 변경 버튼
            $(".change_Recommond_Btn").on("click", function () {
                $("#RECOMMENDER_CHANGE_MODAL").show();
            });
            //추천인 변경 모달 취소 버튼
            $("#recommenderModal_CloseBtn").on("click", function () {
                $("#RECOMMENDER_CHANGE_MODAL").hide();
                $('input[name="CHANGE_RECOMMENDER_ID"]').val('');
                $('input[name="CHANGE_REASON"]').val('');
            });
            //추천인 변경 모달 변경 버튼
            $("#recommenderModal_ChangeBtn").on("click", function () {
                if ($('input[name="CHANGE_RECOMMENDER_ID"]').val().trim().length > 0 && $('input[name="CHANGE_REASON"]').val().trim().length > 0) {
                    _popModal.Promt('알림', '저장하시겠습니까?',
                        function () {
                            $('#flag').val('changeRecommender');
                            $('#form1').submit();
                        }, function (error) { _popModal.Alert('', error); });
                }
                else {
                    _popModal.Alert('알림', '변경할 추천인 ID와 변경 사유를 모두 입력해주세요.');
                }
            });
            //추천인 자세히 보기
            $("#show_Recommender_Log").on("click", function () {
                $("#RECOMMENDER_CHANGE_LOG_MODAL").show();
            });
            // 추천인 자세히보기 모달 닫기버튼
            $("#recommenderLogModal_CloseBtn1,#recommenderLogModal_CloseBtn2").on("click", function () {
                $("#RECOMMENDER_CHANGE_LOG_MODAL").hide();
            });
            // 사업자등록증 자세히 보기
            $("#show_Business").on("click", function () {
                var check = $("#business_Check_Area").find('*').length;
                if (check > 0) {
                    $("#BUSINESS_MODAL").show();
                }
                else {
                    _popModal.Alert('알림', '회원의 사업자등록증 정보가 등록되지 않았습니다.');
                }
            });
            $("#businessModal_CloseBtn1,#businessModal_CloseBtn2").on("click", function () {
                $("#BUSINESS_MODAL").hide();
            });
            //사업자등록증 다운로드 버튼
            $(".businessDown_Btn").on("click", function () {
                var path = $(this).data('path');
                if (path.trim().length > 0) {
                    $('input[name="path"]').val(path);
                    $('#flag').val('downloadBisiness');
                    $('#form1').submit();
                }
            });
            //포인트 지급/차감 버튼
            $("#point_Edit_Btn").on("click", function () {
                $("#POINT_EDIT_MODAL").show();
            });
            //포인트 지급/차감 모달 닫기
            $("#pointEditModal_CloseBtn1,#pointEditModal_CloseBtn2").on("click", function () {
                $("#POINT_EDIT_MODAL").hide();
                $('input[name="POINT_RATE"]').val('');
            });
            //포인트 지급/차감 모달 변경
            $("#pointEditModal_EditBtn").on("click", function () {
                var point = $('input[name="POINT_RATE"]').val().trim();
                if (point == null && point == "") {
                    _popModal.Alert('알림', '포인트를 입력해주세요.');
                }
                else {
                    $('#flag').val('editPoint');
                    $('#form1').submit();
                }
            });
            //포인트 입력관련 inputmask 설정 
            $('input[name="POINT_RATE"]').inputmask("decimal", {
                groupSeparator: ",",
                autoGroup: true,
                removeMaskOnSubmit: true,
                digits: 0
            });
            // 지급/차감 값 미리보기 계산 후 출력 
            $('input[name="POINT_RATE"]').on('input', function () {
                var result;
                var type = $('input[type="radio"][name="TYPE"]:checked').val();
                var inputValue = $(this).val();
                if (/,/.test(inputValue)) {
                    inputValue = inputValue.replace(/,/g, "");
                }
                //계산
                inputValue = inputValue * 1;
                var before_Point = $(".before_Point").data('before');
                before_Point = before_Point * 1;
                if (type == "ADD") {
                    result = before_Point + inputValue;
                }
                else if (type == "SUB") {
                    result = before_Point - inputValue;
                }
                $(".after_Point").text(result.toLocaleString() + "원");
            });
            //포인트 자세히보기
            $("#show_Point").on("click", function () {
                $("#POINT_LOG_MODAL").show();
            });
            //포인트 내역모달 닫기
            $("#pointLogModal_CloseBtn1,#pointLogModal_CloseBtn2").on("click", function () {
                $("#POINT_LOG_MODAL").hide();
            });
            //쿠폰 자세히보기
            $("#show_Coupon").on("click", function () {
                $("#COUPON_MODAL").show();
            });
            //쿠폰 모달 닫기
            $("#couponModal_CloseBtn1,#couponModal_CloseBtn2").on("click", function () {
                $("#COUPON_MODAL").hide();
            });
            //회원등급 자세히 보기
            $("#show_UserType_History").on("click", function () {
                $("#USER_TYPE_LOG_MODAL").show();
            });
            //회원등급 모달 닫기 
            $("#userTypeLogModal_CloseBtn1,#userTypeLogModal_CloseBtn2").on("click", function () {
                $("#USER_TYPE_LOG_MODAL").hide();
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="editFlag" value="" />
        <input type="text" name="detail_EditFlag" value="" />
        <input type="text" name="delDelivery_Name" value="" />
         <input type="text" name="path" value="" />
        <input type="text" name="USER_SID" value="<%=USER_SID %>" />
        <input type="text" name="USER_ID" value="<%=USER_ID %>" />
    </div>
    <div id="wrap">
        <div class="sub-warp">
            <div class="title">회원 상세</div>
            <div class="content">

                <%--상세 정보 최상단 박스--%> 
                <div class="user_detail_Title_Area">
                    <div class="lowerst-font main_color user_detail_Title"><%=USER_NAME %> 님의 고객 상세 정보 </div>
                </div>
                <%--기본 정보 박스--%>
                <div class="baseInfo_Box">
                    <div class="baseInfo_Title_Area">
                        <div class="lower-font mono_sub_color baseInfo_Title">기본 정보</div>
                    </div>
                    <div class="baseInfo_List">
                        <%--가입일--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">가입일</div>
                            <div class="lowerst-font mono_sub_color data_Area"><%=CREATED_DATE %></div>
                        </div>
                        <%--아이디--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">아이디</div>
                            <div class="lowerst-font mono_sub_color data_Area"><%=USER_ID %></div>
                        </div>
                        <%--이름--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">이름</div>
                            <div class="lowerst-font data_Area data_Area_Input">
                                <input type="text" class="drkid-input lowerst-font mono_sub_color common_Input readOnly"  name="USER_NAME" value="<%=USER_NAME %>" readonly/>
                            </div>
                        </div>
                        <%--이메일--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">이메일</div>
                            <div class="lowerst-font data_Area data_Area_Input">
                                <input type="text" class="drkid-input lowerst-font mono_sub_color common_Input readOnly"  name="EMAIL_ADDRESS" value="<%=EMAIL_ADDRESS %>" readonly/>
                            </div>
                        </div>
                        <%--휴대폰 번호--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">휴대폰 번호</div>
                            <div class="lowerst-font data_Area data_Area_Input">
                                <input type="text" class="drkid-input lowerst-font mono_sub_color common_Input readOnly"  name="MOBILE_NO" value="<%=MOBILE_NO %>" readonly/>
                            </div>
                        </div>
                        <%--주소--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area big_info_Area">주소</div>
                            <div class="lowerst-font data_Area big_data_Area">
                                <input type="text" class="drkid-input lowerst-font mono_sub_color common_Input readOnly"  name="ADDR_1" value="<%=NEW_BUSINESS_ADDRESS1 %>" readonly/>
                                <input type="text" class="drkid-input lowerst-font mono_sub_color common_Input readOnly"  name="ADDR_2" value="<%=NEW_BUSINESS_ADDRESS2 %>" readonly/>
                                <div class="lowerst-font delivery_Btn">배송지 관리</div>
                            </div>
                        </div>
                        <%--생년월일--%>
                     <%--   <div class="baseInfo">
                            <div class="lowerst-font info_Area">생년월일</div>
                            <div class="lowerst-font data_Area data_Area_Input">
                                <input type="text" class="drkid-input lowerst-font common_Input readOnly"  name="MOBILE_NO" value="예정" readonly/>
                            </div>
                        </div>--%>
                        <%--추천인--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">추천인</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                <div class="detail_Layout">
                                    <input type="text" class="drkid-input lowerst-font mono_sub_color small_Input readOnly"  name="RECOOMMOND_ID" value="<%=RECOMMENDER_ID %>" readonly/>
                                     <div class="lowerst-font change_Recommond_Btn">변경</div>
                                </div>
                                
                                <div class="lowerst-font  mono_sub_color showDetail_Btn" id="show_Recommender_Log">자세히 보기></div>
                            </div>
                        </div>
                        <%--등급--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">등급</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                     <div class="lowerst-font  mono_sub_color">
                                         <%if (USER_TYPE == "21" || USER_TYPE == "31")
                                         {%>
                                                프리미엄 회원
                                         <%}%>
                                          <%if (USER_TYPE == "41" || USER_TYPE == "42" || USER_TYPE == "52")
                                         {%>  
                                                비지니스 회원
                                         <%}%>   
                                         <%else
                                         {%>   
                                                일반회원
                                         <%}%>    
                                     </div>
                                    <div class="grade_Title_Area">
                                         <div class="grade_Title"><%=USER_GRADE %></div>
                                    </div>
                                 </div>
                                
                                <div class="lowerst-font  mono_sub_color showDetail_Btn" id="show_UserType_History">자세히 보기></div>
                            </div>
                        </div>
                        <%--포인트--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">포인트</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                     <input type="text" class="drkid-input lowerst-font mono_sub_color small_Input readOnly"  name="POINT" value="<%=USER_POINT %>" readonly/>
                                     <div class="lowerst-font point_Edit_Btn"id="point_Edit_Btn">포인트 지급/차감</div>
                                 </div>
                                
                                <div class="lowerst-font  mono_sub_color showDetail_Btn" id="show_Point">자세히 보기></div>
                            </div>
                        </div>
                        <%--쿠폰--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">쿠폰</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                      <div class="lowerst-font mono_sub_color">예정</div>
                                 </div>
                                <div class="lowerst-font  mono_sub_color showDetail_Btn" id="show_Coupon">자세히 보기></div>
                            </div>
                        </div>
                        <%--PV--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">PV</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                     <input type="text" class="drkid-input lowerst-font mono_sub_color middle_Input readOnly"  name="PV" value="예정" readonly/>
                                 </div>
                                
                                <div class="lowerst-font  mono_sub_color showDetail_Btn">자세히 보기></div>
                            </div>
                        </div>
                        <%--직팔로워--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">직팔로워</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                     <input type="text" class="drkid-input lowerst-font mono_sub_color middle_Input readOnly"  name="DIRECT_FOLLOWER" value="<%=DIRECT_FOLLOWER_COUNT %>" readonly/>
                                 </div>
                                
                                <div class="lowerst-font  mono_sub_color showDetail_Btn">자세히 보기></div>
                            </div>
                        </div>
                        <%--연계팔로워--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">연계팔로워</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                     <input type="text" class="drkid-input lowerst-font mono_sub_color middle_Input readOnly"  name="LINK_FOLLOWER" value="예정" readonly/>
                                 </div>
                                
                                <div class="lowerst-font  mono_sub_color showDetail_Btn">자세히 보기></div>
                            </div>
                        </div>
                        <%--리원드 현황--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">리원드 현황</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                    <div class="lowerst-font  mono_sub_color showDetail_Btn">자세히 보기></div>
                                 </div>
                            </div>
                        </div>
                        <%--수수료 지급정보--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">수수료 지급정보</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                    <div class="lowerst-font  mono_sub_color showDetail_Btn">자세히 보기></div>
                                 </div>
                            </div>
                        </div>
                        <%--리워드신청 계좌--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area big_info_Area">리워드신청 계좌</div>
                            <div class="lowerst-font data_Area big_data_Area">
                                <div class="lowerst-font flex_Gap">
                                    <div class="lowerst-font select_Info">은행</div>
                                    <input type="text" class="drkid-input lowerst-font mono_sub_color common_Input readOnly"  name="BANK_CODE" value="<%=BANK_NAME != "" && BANK_NAME != null ? BANK_NAME+"("+BANK_CODE+")" :""%>" readonly/>
                                </div>
                                <div class="lowerst-font flex_Gap">
                                    <div class="lowerst-font select_Info">계좌번호</div>
                                    <input type="text" class="drkid-input lowerst-font mono_sub_color common_Input readOnly"  name="ACCOUNT_NO" value="<%=ACCOUNT_NO %>" readonly/>
                                </div>
                                <div class="lowerst-font flex_Gap">
                                    <div class="lowerst-font select_Info">에금주</div>
                                    <input type="text" class="drkid-input lowerst-font mono_sub_color common_Input readOnly"  name="ACCOUNT_HOLDER_NM" value="<%=ACCOUNT_HOLDER_NM %>" readonly/>
                                </div>
                            </div>
                        </div>
                        <%--사업자등록증--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">사업자등록증</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                     <input type="text" class="drkid-input lowerst-font mono_sub_color middle_Input readOnly"  value="<%=BUSINESS_FILE_NAME %>" readonly/>
                                 </div>
                                
                                <div class="lowerst-font  mono_sub_color showDetail_Btn" id="show_Business">자세히 보기></div>
                            </div>
                        </div>
                        <%--1:1문의--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">1:1문의</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                    <div class="lowerst-font  mono_sub_color showDetail_Btn" id="user_ViewContact_Btn">자세히 보기></div>
                                 </div>
                            </div>
                        </div>
                        <%--상품문의--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">상품문의</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                    <div class="lowerst-font  mono_sub_color showDetail_Btn" id="user_ViewContact_Prod_Btn">자세히 보기></div>
                                 </div>
                            </div>
                        </div>
                        <%--리뷰--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">리뷰</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                    <div class="lowerst-font  mono_sub_color showDetail_Btn" id="user_ReviewDetail_Btn">자세히 보기></div>
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--활동 정보 박스--%>
                <div class="baseInfo_Box">
                    <div class="baseInfo_Title_Area">
                        <div class="lower-font mono_sub_color baseInfo_Title">활동 정보</div>
                    </div>
                    <div class="baseInfo_List">
                        <%--최근 로그인--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">최근 로그인</div>
                            <div class="lowerst-font mono_sub_color data_Area flex_Gap">
                               <div class="detail_Layout">
                                    <div class="lowerst-font mono_sub_color"> <%=LAST_LOGIN_TIME %></div> 
                                </div>
                                <%--<div class="lowerst-font  mono_sub_color showDetail_Btn">자세히 보기></div>--%>
                            </div>
                        </div>
                        <%--주문내역--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">주문내역</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                    <div class="lowerst-font  mono_sub_color showDetail_Btn">자세히 보기></div>
                                 </div>
                            </div>
                        </div>
                        <%--정기배송내역--%>
                        <div class="baseInfo">
                            <div class="lowerst-font info_Area">정기배송내역</div>
                            <div class="lowerst-font data_Area data_Area_Input flex_Gap">
                                 <div class="detail_Layout">
                                    <div class="lowerst-font  mono_sub_color showDetail_Btn">자세히 보기></div>
                                 </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--여기서부터 모달영역--%>
    <%--배송지 리스트 모달--%>
    <div class="overlay" id="DELIVERY_MODAL1">
        <div class="modal_Inner_1000">
            <div class="modal_TitleArea">
                <div class="middle-font font_weight_500 modal_Title">배송지 관리</div>
                <div class="modalClose_Btn" id="deliveryList_modalClose_Btn">
                    <span class="material-icons">clear</span>
                </div>
            </div>
            <div class="modal_MiddleArea_Scroll">
                <div class="modal_delieryList_Top">
                    <div class="delivery_Count_Info olower-font">배송지 관리 내역 총 <span class="main_color"><%=delivery_totalCount%></span>건</div>
                    <div class="new_Delivery_Btn lowerst-font main_color">새 배송지 추가</div>
                </div>
                <div class="modal_delieryList">
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
                    <%if (USER_DELIVERY!= null && USER_DELIVERY.Rows.Count > 0)
                    {%>
                        <%for (int i = 0; i < USER_DELIVERY.Rows.Count; i++)
                            {%>
                            <%--조회내역이 있을때 개별 레코드--%>
                            <div class="new_Order_List_Row_Area">
                                <div class="new_Order_List_Row">
                                    <%--배송지 이름--%>
                                    <div class="new_Order_List_Row_1_Area">
                                        <%if (USER_DELIVERY.Rows[i]["BASE_FLAG"].ToString() == "Y")
                                            {%>
                                        <div class="new_Order_List_Row_1 lowerst-font" id="baseFlag_<%=i%>" data-info="<%=USER_DELIVERY.Rows[i]["BASE_FLAG"]%>">(기본 배송지)</div>
                                        <%}%>
                                        <div class="new_Order_List_Row_1_1 drkid_postive_color lowerst-font" data-info="<%=USER_DELIVERY.Rows[i]["DELIVERY_NAME"]%>"><%=USER_DELIVERY.Rows[i]["DELIVERY_NAME"]%></div>
                                    </div>
                                    <%--받으실 분--%>
                                    <div class="new_Order_List_Row_3_Area">
                                        <div class="new_Order_List_Row_3 lowerst-font" data-info="<%=USER_DELIVERY.Rows[i]["RECEIVER"]%>"><%=USER_DELIVERY.Rows[i]["RECEIVER"]%></div>
                                    </div>

                                    <%--상품금액/수량--%>
                                    <div class="new_Order_List_Row_2_Area">

                                        <div class="new_Order_List_Row_2_1">
                                            <div class="new_Order_List_Row_2_1_1 lowerst-font" data-info="<%=USER_DELIVERY.Rows[i]["POST_NO"]%>">(<%=USER_DELIVERY.Rows[i]["POST_NO"]%>)</div>
                                            <div class="new_Order_List_Row_2_1_2 lowerst-font" data-info="<%=USER_DELIVERY.Rows[i]["ADDR_1"]%>" data-value="<%=USER_DELIVERY.Rows[i]["ADDR_2"]%>">
                                                <%=USER_DELIVERY.Rows[i]["ADDR_1"]%> <%=USER_DELIVERY.Rows[i]["ADDR_2"]%>
                                            </div>
                                        </div>
                                    </div>
                                    <%--주문상태--%>
                                    <div class="new_Order_List_Row_4_Area">
                                        <div class="new_Order_List_Row_4 lowerst-font" data-info="<%=USER_DELIVERY.Rows[i]["TEL_NO"]%>">휴대폰</div>
                                        <div class="new_Order_List_Row_4_1 lowerst-font"><%=USER_DELIVERY.Rows[i]["TEL_NO"]%></div>
                                    </div>
                                    <%--확인/리뷰--%>
                                    <div class="new_Order_List_Row_5_Area">
                                        <div class="new_Order_List_Row_5 lowerst-font" onclick="modalEdit(this);">수정</div>
                                        <div class="new_Order_List_Row_5_1 lowerst-font" onclick="del_Delivery(this);">삭제</div>
                                    </div>
                                    <input type="hidden" name="SPARE_NO" value="<%=USER_DELIVERY.Rows[i]["SPARE_NO"]%>" />
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
            <div class="modal_BottomArea">
            </div>
        </div>
    </div>
    <%--배송지 디테일 관리 모달--%>
     <%--배송지 관리 모달--%>
    <div class="overlay" id="DELIVERY_MODAL2">
        <div class="delivery_Modal">
            <%--상단--%>
            <div class="delivery_Modal_Top_Area">
                <div class="my_Title">배송지 관리</div>
                <div class="delivery_Modal_Close"id="deliveryDetail_modalClose_Btn">
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
    <%--추천인 변경 모달--%>
    <div class="overlay" id="RECOMMENDER_CHANGE_MODAL">
        <div class="modal_Inner_500">
            <div class="modal_MiddleArea">
                <%--기존 추천인--%>
                <div class="recommend_Record">
                    <div class="lowerst-font recommend_Info">기존 추천인 ID</div>
                    <div class="lowerst-font recommend_Input">
                        <input type="text" class="drkid-input lowerst-font readOnly" name="NOW_RECOMMENDER_ID" value="<%=RECOMMENDER_ID %>" readonly />
                    </div>
                </div>
                <%--변경할 추천인--%>
                <div class="recommend_Record">
                    <div class="lowerst-font recommend_Info">변경할 추천인 ID</div>
                    <div class="lowerst-font recommend_Input">
                        <input type="text" class="drkid-input lowerst-font" name="CHANGE_RECOMMENDER_ID" value="" placeholder="변경할 추천인 ID 입력" />
                    </div>
                </div>
                <%--변경 사유--%>
                <div class="recommend_Record">
                    <div class="lowerst-font recommend_Info">변경 사유</div>
                    <div class="lowerst-font recommend_Input">
                        <input type="text" class="drkid-input lowerst-font" name="CHANGE_REASON" value=""  placeholder="변경 사유 입력"/>
                    </div>
                </div>
            </div>
            <div class="modal_BottomArea">
                <div class="modal_Btn_Area">
                    <div class="lowerst-font drkid-btn-sub2 drkid-btn-active" id="recommenderModal_ChangeBtn">변경</div>
                    <div class="lowerst-font drkid-btn-sub2" id="recommenderModal_CloseBtn">취소</div>
                </div>
            </div>
        </div>
    </div>
    <%--추천인 변경로그 모달--%>
    <div class="overlay" id="RECOMMENDER_CHANGE_LOG_MODAL">
        <div class="modal_Inner_600">
            <%--상단--%>
            <div class="delivery_Modal_Top_Area border_bottom">
                <div class="my_Title">추천인 변경이력</div>
                <div class="delivery_Modal_Close"id="recommenderLogModal_CloseBtn1">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <div class="modal_MiddleArea_Scroll padding10">
                <%if(RECOMMENDER_LOG != null)
                {%>
                    <%if(RECOMMENDER_LOG.Rows.Count > 0)
                    {%>
                         <%for(int i=0; i<RECOMMENDER_LOG.Rows.Count;i++)
                         {%>   
                                <div class="recommeder_Log_Wrap">
                                    <div class="recommender_Log">
                                        <div class="lowerst-font drkid_Negative_color">기존 추천인 : <%=RECOMMENDER_LOG.Rows[i]["BEFORE_RECOMMENDER_ID"] == DBNull.Value ? "":RECOMMENDER_LOG.Rows[i]["BEFORE_RECOMMENDER_ID"] %></div>
                                        <div class="lowerst-font">사유 : <%=RECOMMENDER_LOG.Rows[i]["MESSAGE"]%></div>
                                    </div>
                                    <div class="recommender_Log">
                                        <div class="lowerst-font main_color">변경 추천인 : <%=RECOMMENDER_LOG.Rows[i]["AFTER_RECOMMENDER_ID"]%></div>
                                        <div class="lowerst-font"><%=RECOMMENDER_LOG.Rows[i]["LOG_TIME"]%></div>
                                    </div>
                                </div>
                        <%}%>
                    <%}%>
                    <%else
                    {%>
                        <div class="new_Order_List_Empty lowerst-font">변경기록이 없습니다.</div>
                    <%}%>
                <%}%>
            </div>
            <div class="modal_BottomArea">
                <div class="modal_Btn_Area">
                    <div class="lowerst-font drkid-btn-sub2" id="recommenderLogModal_CloseBtn2">닫기</div>
                </div>
            </div>
        </div>
    </div>
    <%--사업자 등록증 모달--%>
    <div class="overlay" id="BUSINESS_MODAL">
        <div class="modal_Inner_800">
            <%--상단--%>
            <div class="delivery_Modal_Top_Area border_bottom">
                <div class="my_Title">사업자등록증 조회</div>
                <div class="delivery_Modal_Close"id="businessModal_CloseBtn1">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <div class="modal_MiddleArea padding10" id="business_Check_Area">
                <%if (BUSINESS_EDMS != null)
                {%>
                    <%if (BUSINESS_EDMS.Rows.Count > 0)
                    {%>
                        <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BUSINESS_EDMS.Rows[0]["TARGET_READ_PATH"] %>'/>
                    <%}%>
                <%}%>
            </div>
            <div class="modal_BottomArea">
                <div class="modal_Btn_Area">
                     <%if (BUSINESS_EDMS != null)
                    {%>
                        <%if (BUSINESS_EDMS.Rows.Count > 0)
                        {%> 
                            <div class="lowerst-font  drkid-btn-sub2 drkid-btn-active businessDown_Btn" data-path="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BUSINESS_EDMS.Rows[0]["TARGET_READ_PATH"] %>">다운로드</div>
                    <%}%>
                <%}%>
                    <div class="lowerst-font drkid-btn-sub2" id="businessModal_CloseBtn2">닫기</div>
                </div>
            </div>
        </div>
    </div>
    <%--포인트 설정 모달--%>
     <div class="overlay" id="POINT_EDIT_MODAL">
        <div class="modal_Inner_500">
                <%--상단--%>
            <div class="delivery_Modal_Top_Area border_bottom">
                <div class="my_Title">포인트 설정하기</div>
                <div class="delivery_Modal_Close"id="pointEditModal_CloseBtn1">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <div class="modal_MiddleArea">
                <%--지급 차감 라디오--%>
                <div class="radio_all_list">
                    <div class="radio_list">
                        <label class="drkid-radio">
                            <input type="radio" name="TYPE" value="ADD" checked="checked" /> 
                            <span class="lowerst-font">지급</span>
                        </label>
                    </div>
                    <div class="radio_list">
                        <label class="drkid-radio">
                            <input type="radio" name="TYPE" value="SUB"/>
                            <span class="lowerst-font">차감</span>
                        </label>
                    </div>
                </div>
                <%--포인트입력란--%>
                <div class="point_Input">
                    <input type="text" class="drkid-input lowerst-font" name="POINT_RATE" value="" placeholder="지급/차감할 포인트를 입력해주세요" />
                </div>
                <%--회원명, 포인트 정보--%>
                <div class="point_Area">
                    <div class="lowerst-font main_color"><%=USER_NAME %> 님</div>
                    <div class="pointInfo_Area">
                        <div class="lowerst-font before_Point" data-before="<%=USER_POINT %>">현재 <%=USER_POINT %>원 > </div>
                        <div class="lowerst-font after_Point"></div>
                    </div>
                </div>
            </div>
            <div class="modal_BottomArea">
                <div class="modal_Btn_Area">
                    <div class="lowerst-font drkid-btn-sub2 drkid-btn-active" id="pointEditModal_EditBtn">변경</div>
                    <div class="lowerst-font drkid-btn-sub2" id="pointEditModal_CloseBtn2">취소</div>
                </div>
            </div>
        </div>
    </div>
    <%--포인트 로그 모달--%>
    <div class="overlay" id="POINT_LOG_MODAL">
        <div class="modal_Inner_600">
                <%--상단--%>
            <div class="delivery_Modal_Top_Area">
                <div class="my_Title">포인트 내역</div>
                <div class="delivery_Modal_Close"id="pointLogModal_CloseBtn1">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <div class="modal_MiddleArea_Scroll">
                <div class="pointLog_Culumn">
                    <div class="lower-font pointLog_Culumn1">일자</div>
                    <div class="lower-font pointLog_Culumn2">금액</div>
                    <div class="lower-font pointLog_Culumn3">유형</div>
                </div>
                <div class="pointLog_Row_Area">
                    <%if(POINT_LOG != null && POINT_LOG.Rows.Count>0)
                    {%>
                        <%for(int i=0; i < POINT_LOG.Rows.Count; i++)
                        {%>
                            <div class="pointLog_Row">
                                <div class="lower-font pointLog_Culumn1"><%=POINT_LOG.Rows[i]["CREATED_TIME"] %></div>
                                <div class="lower-font pointLog_Culumn2"><%=POINT_LOG.Rows[i]["TYPE"].ToString() == "ADD" ? "+":"-" %> <%=POINT_LOG.Rows[i]["POINT_RATE"] %></div>
                                <div class="lower-font pointLog_Culumn3 <%=POINT_LOG.Rows[i]["TYPE"].ToString() == "ADD" ? "main_color":"drkid_Negative_color" %>"><%=POINT_LOG.Rows[i]["TYPE"].ToString() == "ADD" ? "지급":"차감" %></div>
                            </div>
                        <%}%>
                    <%}%>
                    <%else
                    {%>
                        <div class="lowerst-font noData">내역이 없습니다.</div>
                    <%}%>
                </div>
            </div>
            <div class="modal_BottomArea">
                <div class="modal_Btn_Area">
                    <div class="lowerst-font drkid-btn-sub2" id="pointLogModal_CloseBtn2">닫기</div>
                </div>
            </div>
        </div>
    </div>
    <%--유저등급 로그 모달--%>
    <div class="overlay" id="USER_TYPE_LOG_MODAL">
        <div class="modal_Inner_800">
                <%--상단--%>
            <div class="delivery_Modal_Top_Area border_bottom">
                <div class="my_Title">등급 변경이력</div>
                <div class="delivery_Modal_Close"id="userTypeLogModal_CloseBtn1">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <div class="modal_MiddleArea_Scroll">
                <div class="pointLog_Row_Area">
                    <div class="userType_Title_Area">
                        <div class="lower-font main_color userType_Title"><%=USER_NAME %> 님</div>
                        <div class="lowerst-font mono_sub_color">
                             <%if (USER_TYPE == "21" || USER_TYPE == "31")
                            {%>
                                프리미엄 회원
                            <%}%>
                            <%if (USER_TYPE == "41" || USER_TYPE == "42" || USER_TYPE == "52")
                            {%>  
                                비지니스 회원
                            <%}%>   
                            <%else
                            {%>   
                                일반회원
                            <%}%>    
                        </div>
                        <div class="grade_Title <%=USER_TYPE == "41" || USER_TYPE == "42" || USER_TYPE == "52" ? "business_Grade":""%>"><%=USER_GRADE %></div>
                    </div>
                   
                        <%if (USER_TYPE_LOG != null && USER_TYPE_LOG.Rows.Count > 0)
                        {%>
                            <%for (int i = 0; i < USER_TYPE_LOG.Rows.Count; i++)
                            {%>
                                 <%--로그 리스트--%>
                                  <div class="userGrade_Log">
                                    <div class="userGrade_Log_L">
                                        <div class="lowerst-font mono_sub_color">
                                             <%if (USER_TYPE_LOG.Rows[i]["USER_TYPE_NUM"].ToString() == "21" || USER_TYPE_LOG.Rows[i]["USER_TYPE_NUM"].ToString() == "31")
                                               {%>
                                                프리미엄 회원
                                            <%}%>
                                            <%if (USER_TYPE_LOG.Rows[i]["USER_TYPE_NUM"].ToString() == "41" || USER_TYPE_LOG.Rows[i]["USER_TYPE_NUM"].ToString() == "42" || USER_TYPE_LOG.Rows[i]["USER_TYPE_NUM"].ToString() == "52")
                                            {%>  
                                                비지니스 회원
                                            <%}%>   
                                            <%else
                                            {%>   
                                                일반회원
                                            <%}%>    
                                        </div>
                                       <div class="grade_Title <%=USER_TYPE_LOG.Rows[i]["USER_TYPE_NUM"].ToString() == "41" || USER_TYPE_LOG.Rows[i]["USER_TYPE_NUM"].ToString() == "42" || USER_TYPE_LOG.Rows[i]["USER_TYPE_NUM"].ToString() == "52" ? "business_Grade":""%>"><%=USER_TYPE_LOG.Rows[i]["USER_TYPE"].ToString() %></div>
                                    </div>
                                    <div class="userGrade_Log_R">
                                        <div class="lowerst-font mono_sub_color"><%=USER_TYPE_LOG.Rows[i]["STA_DATETIME"]%>  ~  <%=USER_TYPE_LOG.Rows[i]["END_DATETIME"]%></div>
                                    </div>
                        
                                  </div>
                            <%}%>
                        <%}%>
                        <%else
                        {%>
                            <div class="lowerst-font noData">내역이 없습니다.</div>
                        <%}%>
                        
                        

                </div>
            </div>
            <div class="modal_BottomArea">
                <div class="modal_Btn_Area">
                    <div class="lowerst-font drkid-btn-sub2" id="userTypeLogModal_CloseBtn2">닫기</div>
                </div>
            </div>
        </div>
    </div>

    <%--쿠폰 모달--%>
    <div class="overlay" id="COUPON_MODAL">
        <div class="modal_Inner_1100">
                <%--상단--%>
            <div class="delivery_Modal_Top_Area">
                <div class="my_Title">쿠폰 내역</div>
                <div class="delivery_Modal_Close"id="couponModal_CloseBtn1">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <div class="modal_MiddleArea_Scroll">
                <div class="pointLog_Culumn">
                    <div class="lower-font coupon_Culumn1">사용가능기간</div>
                    <div class="lower-font coupon_Culumn2">사용일</div>
                    <div class="lower-font coupon_Culumn3">쿠폰제목</div>
                    <div class="lower-font coupon_Culumn4">쿠폰내용</div>
                    <div class="lower-font coupon_Culumn5">쿠폰타입</div>
                    <div class="lower-font coupon_Culumn6">유저타입</div>
                    <div class="lower-font coupon_Culumn7">쿠폰코드</div>
                    <div class="lower-font coupon_Culumn8">상태</div>
                </div>
                <div class="pointLog_Row_Area">
                    <div class="pointLog_Row">
                        <div class="lower-font coupon_Culumn1">2023.08.08 ~<br/>2023.09.08</div>
                        <div class="lower-font coupon_Culumn2">2023.08.08</div>
                        <div class="lower-font coupon_Culumn3">회원가입 할인</div>
                        <div class="lower-font coupon_Culumn4">반갑습니다.닥터키드니</div>
                        <div class="lower-font coupon_Culumn5">일반쿠폰</div>
                        <div class="lower-font coupon_Culumn6">마이크로 인플루언서</div>
                        <div class="lower-font coupon_Culumn7">WLEASCROSCQE</div>
                        <div class="lower-font coupon_Culumn8">미사용</div>
                    </div>
                    <div class="pointLog_Row">
                        <div class="lower-font coupon_Culumn1">2023.08.08 ~<br/>2023.09.08</div>
                        <div class="lower-font coupon_Culumn2">2023.08.08</div>
                        <div class="lower-font coupon_Culumn3">회원가입 할인</div>
                        <div class="lower-font coupon_Culumn4">반갑습니다.닥터키드니</div>
                        <div class="lower-font coupon_Culumn5">일반쿠폰</div>
                        <div class="lower-font coupon_Culumn6">마이크로 인플루언서</div>
                        <div class="lower-font coupon_Culumn7">WLEASCROSCQE</div>
                        <div class="lower-font coupon_Culumn8">미사용</div>
                    </div>
                    <div class="pointLog_Row">
                        <div class="lower-font coupon_Culumn1">2023.08.08 ~<br/>2023.09.08</div>
                        <div class="lower-font coupon_Culumn2">2023.08.08</div>
                        <div class="lower-font coupon_Culumn3">회원가입 할인</div>
                        <div class="lower-font coupon_Culumn4">반갑습니다.닥터키드니</div>
                        <div class="lower-font coupon_Culumn5">일반쿠폰</div>
                        <div class="lower-font coupon_Culumn6">마이크로 인플루언서</div>
                        <div class="lower-font coupon_Culumn7">WLEASCROSCQE</div>
                        <div class="lower-font coupon_Culumn8">미사용</div>
                    </div>
                    <div class="pointLog_Row">
                        <div class="lower-font coupon_Culumn1">2023.08.08 ~<br/>2023.09.08</div>
                        <div class="lower-font coupon_Culumn2">2023.08.08</div>
                        <div class="lower-font coupon_Culumn3">회원가입 할인</div>
                        <div class="lower-font coupon_Culumn4">반갑습니다.닥터키드니</div>
                        <div class="lower-font coupon_Culumn5">일반쿠폰</div>
                        <div class="lower-font coupon_Culumn6">마이크로 인플루언서</div>
                        <div class="lower-font coupon_Culumn7">WLEASCROSCQE</div>
                        <div class="lower-font coupon_Culumn8">미사용</div>
                    </div>
                    <div class="pointLog_Row">
                        <div class="lower-font coupon_Culumn1">2023.08.08 ~<br/>2023.09.08</div>
                        <div class="lower-font coupon_Culumn2">2023.08.08</div>
                        <div class="lower-font coupon_Culumn3">회원가입 할인</div>
                        <div class="lower-font coupon_Culumn4">반갑습니다.닥터키드니</div>
                        <div class="lower-font coupon_Culumn5">일반쿠폰</div>
                        <div class="lower-font coupon_Culumn6">마이크로 인플루언서</div>
                        <div class="lower-font coupon_Culumn7">WLEASCROSCQE</div>
                        <div class="lower-font coupon_Culumn8">미사용</div>
                    </div>
                    <div class="pointLog_Row">
                        <div class="lower-font coupon_Culumn1">2023.08.08 ~<br/>2023.09.08</div>
                        <div class="lower-font coupon_Culumn2">2023.08.08</div>
                        <div class="lower-font coupon_Culumn3">회원가입 할인</div>
                        <div class="lower-font coupon_Culumn4">반갑습니다.닥터키드니</div>
                        <div class="lower-font coupon_Culumn5">일반쿠폰</div>
                        <div class="lower-font coupon_Culumn6">마이크로 인플루언서</div>
                        <div class="lower-font coupon_Culumn7">WLEASCROSCQE</div>
                        <div class="lower-font coupon_Culumn8">미사용</div>
                    </div>
                    <div class="pointLog_Row">
                        <div class="lower-font coupon_Culumn1">2023.08.08 ~<br/>2023.09.08</div>
                        <div class="lower-font coupon_Culumn2">2023.08.08</div>
                        <div class="lower-font coupon_Culumn3">회원가입 할인</div>
                        <div class="lower-font coupon_Culumn4">반갑습니다.닥터키드니</div>
                        <div class="lower-font coupon_Culumn5">일반쿠폰</div>
                        <div class="lower-font coupon_Culumn6">마이크로 인플루언서</div>
                        <div class="lower-font coupon_Culumn7">WLEASCROSCQE</div>
                        <div class="lower-font coupon_Culumn8">미사용</div>
                    </div>
                    <div class="pointLog_Row">
                        <div class="lower-font coupon_Culumn1">2023.08.08 ~<br/>2023.09.08</div>
                        <div class="lower-font coupon_Culumn2">2023.08.08</div>
                        <div class="lower-font coupon_Culumn3">회원가입 할인</div>
                        <div class="lower-font coupon_Culumn4">반갑습니다.닥터키드니</div>
                        <div class="lower-font coupon_Culumn5">일반쿠폰</div>
                        <div class="lower-font coupon_Culumn6">마이크로 인플루언서</div>
                        <div class="lower-font coupon_Culumn7">WLEASCROSCQE</div>
                        <div class="lower-font coupon_Culumn8">미사용</div>
                    </div>
                    <div class="pointLog_Row">
                        <div class="lower-font coupon_Culumn1">2023.08.08 ~<br/>2023.09.08</div>
                        <div class="lower-font coupon_Culumn2">2023.08.08</div>
                        <div class="lower-font coupon_Culumn3">회원가입 할인</div>
                        <div class="lower-font coupon_Culumn4">반갑습니다.닥터키드니</div>
                        <div class="lower-font coupon_Culumn5">일반쿠폰</div>
                        <div class="lower-font coupon_Culumn6">마이크로 인플루언서</div>
                        <div class="lower-font coupon_Culumn7">WLEASCROSCQE</div>
                        <div class="lower-font coupon_Culumn8">미사용</div>

                    </div>
<%--                    <div class="lowerst-font noData">내역이 없습니다.</div>--%>
                </div>
            </div>
            <div class="modal_BottomArea">
                <div class="modal_Btn_Area">
                    <div class="lowerst-font drkid-btn-sub2" id="couponModal_CloseBtn2">닫기</div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
