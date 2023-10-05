<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_ADDRESS.aspx.cs" Inherits="drKid.Source.m.my.M_M_ADDRESS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myPage {
           background-color:#FFFFFF;
           padding: 0 15px;
        }

        .m_bottom {
            display:none;
        }

        .m_header {
            display:none;
        }

        #m_moblie_wrap {
            padding: 1rem 0 2rem 0;
        }

        /*마이페이지 헤더*/
        .myPageHeader {
            background-color:#fff;
        }

        .prev_button {
            text-align: center;
            display: flex;
            justify-content: center;
        }

        .prev_button > span {
            font-size: 14px;
            font-weight: 700;
        }

        .myPage_txt {
            font-weight: bold;
        }

        .myPage_product_icon {
            text-align: center;
            display: flex;
            justify-content: center;
            visibility: hidden
        }

        .myPageHeader_top {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding: 0 0px 5px;
        }

        .add_button_wrap_button {
            color:#fff;
            padding:0.3rem;
            text-align:center;
            border-radius:8px;
            margin-top: 0.5rem;
            cursor:pointer;
        }

        /*뉴 페이징*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }  
        
        .number-button-wrap {
            display: flex;
            align-items: center;
            justify-content: center;
            /* padding: 2rem 0; */
            padding-top: 2rem;
        }  

        .OrderTxtBox,
        .optionList {
            display:none;
        }

        .hide_wrap {
            display:none;       
            position: fixed;
            width:100%;
            z-index:998;
            top: 0;
            padding: 15px;
            overflow: scroll;
            background: #23232333 0% 0% no-repeat padding-box;;
        }

        .hide_wrap2 {
            display:none;       
            position: fixed;
            width:100%;
            z-index:998;
            top: 0;
            padding: 15px;
            overflow: scroll;
            background: #23232333 0% 0% no-repeat padding-box;;
        }

        .hide_wrap3 {
            display:none;       
            position: fixed;
            width:100%;
            z-index:998;
            top: 0;
            padding: 15px;
            overflow: scroll;
            background: #23232333 0% 0% no-repeat padding-box;
        }

        .hide_wrap_inner {
             width: 100%;
             height:100vh;
             margin: auto;
        }

        .alter {
           padding: 0.8rem 1rem;
            position: relative;
            background: #fff;
            z-index: 999;
            top: 20%;
        }

        .alter_txt {
            text-align:center;
        }

        .alter_button {
            display:flex;
            align-items:center;
            justify-content:space-around;
            padding-top: 1rem;
        }

         .alter_button > .alter_button_fist {
            border: 1px solid #115c5e;
            background-color: #115c5e;
            color: #fff;
         }

         .alter_button > .alter_button_second {
             border: 1px solid #E2E2E2;
          }

        .alter_button > .alter_button_fist,
        .alter_button > .alter_button_second {
            cursor:pointer;   
            padding: 0.3rem 2rem;
        }

        .alter_button2 {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding-top: 1rem;
        }

         .alter_button2 > .alter_button_fist {
            border: 1px solid #115c5e;
            background-color: #115c5e;
            color: #fff;
            cursor:pointer;   
            padding: 0.3rem 2rem;
         }

         .alter_button2 > .alter_button_second {
            border: 1px solid #E2E2E2;
            /*background-color: #115c5e;
            color: #fff;*/
            cursor:pointer;   
            padding: 0.3rem 2rem;
         }

         .alter_button3 {
            display:flex;
            align-items:center;
            justify-content:center;
            padding-top: 1rem;
        }

         .alter_button3 > .alter_button_fist {
            border: 1px solid #115c5e;
            background-color: #115c5e;
            color: #fff;
            cursor:pointer;   
            padding: 0.3rem 2rem;
         }

        .drkid-select-ul {
            position: absolute;
            top: calc(100% + 1px);
            left: 0;
            background-color: white;
            box-shadow: var(--mono_line) 0px 0px 2px 1px;
            width: 100%;
            z-index: 1;
            font-family: inherit;
        }

        .NoAddress {
            border-bottom: 1px solid #cacaca;
            padding:2rem 0;
            text-align:center;
            color:#8F8F8F;
        }

        .address_content {
            border: 1px solid #E2E2E2;
            border-radius: 6px;
        }

        .address_content_top {
            padding: 0.5rem 0.3rem;
            background: #F2F3F3;
            border-bottom: 1px solid #E2E2E2;
        }

        .address_content_top > span:last-child {
            font-weight: 400;
        }

        .address_content_bottom {
            padding: 0.5rem;
        }

        .address_content_bottom_address {
            line-height: 1.2;
            padding-bottom: 0.5rem;
            font-weight:400;
        }

        .addressList_contnet {
            display:flex;
            align-items:center;
            justify-content:flex-start;
        }

        .addressList_contnet_list {
            padding-bottom: 0.5rem;
        }
        .name {
            min-width: 35%;
            color:#828282;
        }

        .name_content {
            color: #4E4E4E;
        }

        .addressList_button {
            display:flex;
            align-items:center;
            gap:10px;
        }

        .addressList_button > div {
            padding: 0 0.5rem;
            border: 1px solid #115c5e;
        }

        .addressList_button > div:nth-child(2) {
           color:#fff;
        }

        .addressList_button > div:last-child {
           color:#fff;
        }

        /*.address_content {
            display:none;
        }*/

        .address_content {
            margin-top: 0.5rem;
        }

        .addressList {
            display:none;
        }
    </style>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
     <script>
         var userPhone_Number = '<%=baseUser.userPhone%>';
         $(document).ready(function () {
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
             $(".modal_Save_Btn").on("click", function () {
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
    <script>
        $(document).ready(function () {
            //prev 버튼
            $(".prev_button").click(function () {
                location.href = "/Source/m/my/M_M_MYPAGE.aspx";
            });

            //배송지 관리 버튼
            $("#address_add_button").click(function () {
                location.href = "/Source/m/my/M_M_ADDRESS_ADD.aspx";
            });
   
            //주문취소 버튼
            $("#orderNumber_button").click(function () {
                $(".hide_wrap").css("display", "block");
            });

            $("#normal_address_remove_button").click(function () {
                $(".hide_wrap2").css("display", "block");
            });

            $("#open_button2, #out_button2").click(function () {
                $(".hide_wrap2").css("display", "none");
            });

            //기본 배송지 삭제 버튼 
            $("#normal_address_button").click(function () {
                $(".hide_wrap3").css("display", "block");
            });

            //기본 배송지 삭제 버튼 동작 후 
            //문구가 나옴 
            $("#out_button").click(function () {
                $(".hide_wrap").css("display", "none");
            });

            //out_button3 확인 후 alter창 display none처리 버튼
            $("#out_button3").click(function () {
                $(".hide_wrap3").css("display", "none");
            });
        });
    </script>

   <script>
       $(document).ready(function () {
           const urlParams = new URLSearchParams(window.location.search);
           const showAddressList = urlParams.get('showAddressList');

           if (showAddressList === 'true') {
               $(".addressList").css("display", "block");
               $(".NoAddress").css("display", "none");
           }
       });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--hide wrap--%>
    <div class="hide_wrap">
        <div class="hide_wrap_inner">
            <div class="alter">
                <div class="alter_txt">
                    <span class="m_middle_font">
                        기본 배송지는 삭제할 수 없습니다.<br />
                        변경 후 삭제해주세요.
                    </span>
                </div>
                <div class="alter_button">
                    <div class="alter_button_fist" id="out_button">
                        <span>확인</span>
                    </div>
                    <%--<div class="alter_button_second" id="out_button">
                        <span>취소</span>
                    </div>--%>
                </div>
            </div>
        </div> 
    </div>
    <%--hide wrap--%>

     <%--hide wrap2--%>
    <div class="hide_wrap2">
        <div class="hide_wrap_inner">
            <div class="alter">
                <div class="alter_txt">
                    <span class="m_middle_font">
                        나의 배송지 [원인터내셔널]을(를)<br /> 
                        정말로 삭제하시겠습니까?
                    </span>
                </div>
                <div class="alter_button2">
                    <div class="alter_button_fist" id="open_button2">
                        <span>확인</span>
                    </div>
                    <div class="alter_button_second" id="out_button2">
                        <span>취소</span>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <%--hide wrap2--%>

     <%--hide wrap3--%>
    <div class="hide_wrap3">
        <div class="hide_wrap_inner">
            <div class="alter">
                <div class="alter_txt">
                    <span class="m_middle_font">
                        나의 배송지 [원인터내셔널]이<br />
                        기본배송지로 변경되었습니다.
                    </span>
                </div>
                <div class="alter_button3">
                    <div class="alter_button_fist" id="out_button3">
                        <span>확인</span>
                    </div>
                    <%--<div class="alter_button_second">
                        <span>취소</span>
                    </div>--%>
                </div>
            </div>
        </div> 
    </div>
    <%--hide wrap3--%>

    <div class="myPage">
        <div class="myPageHeader">
            <%--배송지 관리 헤더 top--%>
            <div class="myPageHeader_top">
                <a href="/Source/m/my/M_M_MYPAGE.aspx">
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
                </a>
                <div class="myPage_txt">
                    <span>배송지 관리</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
            <%--배송지 추가 버튼--%>
            <div class="add_button">
                <div class="add_button_wrap">
                    <div class="add_button_wrap_button main_bg_color new_Delivery_Btn" id="address_add_button">
                        <span class="m_middle_font">새 배송지 추가</span>
                    </div>
                </div>
            </div>

            <%--추가된 배송지가 없을때--%> 
            <div class="NoAddress">
                <span class="m_lower_font">등록된 배송지가 없습니다.</span>
            </div>
        </div>

        <div class="addressList">
            <div class="addressList_wrap">
                <div class="addressList_wrap_inner">
                    <%--배송지 목록--%>
                    <div class="address_content">
                        <div class="address_content_top">
                            <span class="m_middle_font mono_sub_color">(기본배송지)</span>
                            <span class="m_middle_font main_color">원인터내셔널</span>
                        </div>
                        <div class="address_content_bottom">
                            <%--주소--%>
                            <div class="address_content_bottom_address">
                                <span class="m_middle_font">(48048) 부산광역시 해운대구 센텀동로 99 (벽 산이센텀클래스원) 618-1호</span>
                            </div>
                            <%--사용자 정보--%>
                            <div class="addressList_contnet_list">
                                <div class="addressList_contnet">
                                    <div class="name">
                                        <span class="m_middle_font">받으실분</span>
                                    </div>
                                    <div class="name_content">
                                        <span class="m_middle_font">000</span>
                                    </div>
                                </div>
                                <div class="addressList_contnet">
                                    <div class="name">
                                        <span class="m_middle_font">휴대폰 번호</span>
                                    </div>
                                    <div class="name_content">
                                        <span class="m_middle_font">010-1234-1234</span>
                                    </div>
                                </div>
                                <div class="addressList_contnet">
                                    <div class="name">
                                        <span class="m_middle_font">추가연락처</span>
                                    </div>
                                    <div class="name_content">
                                        <span class="m_middle_font">010-5678-5678</span>
                                    </div>
                                </div>
                            </div>
                           <%-- 배송지 목록 버튼--%>   
                            <div class="addressList_button">
                                <%--버튼 추가할때 div랑 클래스 그대로 사용하고 
                                span안에 문구만 변경할 것 --%>
                                <div>
                                    <span class="main_color m_lower_font">수정</span>
                                </div>
                                <div class="main_bg_color" id="orderNumber_button">
                                    <span class="m_lower_font">삭제</span>
                                </div>
                            </div>
                        </div>
                    </div>

                     <%--배송지 목록--%>
                    <div class="address_content">
                        <div class="address_content_top">
                            <%--<span class="m_middle_font mono_sub_color">(기본배송지)</span>--%>
                            <span class="m_middle_font main_color">원인터내셔널1</span>
                        </div>
                        <div class="address_content_bottom">
                            <%--주소--%>
                            <div class="address_content_bottom_address">
                                <span class="m_middle_font">(48048) 부산광역시 해운대구 센텀동로 99 (벽 산이센텀클래스원) 618-1호</span>
                            </div>
                            <%--사용자 정보--%>
                            <div class="addressList_contnet_list">
                                <div class="addressList_contnet">
                                    <div class="name">
                                        <span class="m_middle_font">받으실분</span>
                                    </div>
                                    <div class="name_content">
                                        <span class="m_middle_font">000</span>
                                    </div>
                                </div>
                                <div class="addressList_contnet">
                                    <div class="name">
                                        <span class="m_middle_font">휴대폰 번호</span>
                                    </div>
                                    <div class="name_content">
                                        <span class="m_middle_font">010-1234-1234</span>
                                    </div>
                                </div>
                                <div class="addressList_contnet">
                                    <div class="name">
                                        <span class="m_middle_font">추가연락처</span>
                                    </div>
                                    <div class="name_content">
                                        <span class="m_middle_font">010-5678-5678</span>
                                    </div>
                                </div>
                            </div>
                           <%-- 배송지 목록 버튼--%>   
                            <div class="addressList_button">
                                <%--버튼 추가할때 div랑 클래스 그대로 사용하고 
                                span안에 문구만 변경할 것 --%>
                                <div>
                                    <span class="main_color m_lower_font">수정</span>
                                </div>
                                <div class="main_bg_color" id="normal_address_remove_button">
                                    <span class="m_lower_font">삭제</span>
                                </div>
                                 <div class="main_bg_color" id="normal_address_button">
                                    <span class="m_lower_font">기본 배송지로 설정</span>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
</asp:Content>
