﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MY_ORDERLIST.aspx.cs" Inherits="drKid.Source.client.my.C_MY_ORDERLIST" %>
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
        .my_Title {
            font-size: 28px;
            font-weight: 600;
        }
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
        .order_Step_Top_Area {
            display: flex;
            align-items: center;
        }
        .order_Step_Area {
            width: 140px;
            height: 130px;
            text-align: center;
            display: grid;
            padding: 20px;
            align-items: center;
        }
        .order_Step_Count {
            font-weight:600;
            font-size:30px
        }
        .order_Step_Info {
            font-weight:500;
        }
        .arrow-sub:after {
            font-size: 70px;
            line-height: 70px;
        }
        .order_Step_All_Box ,.new_Order_All_Box {
            display:flex;
            border-top: 1px solid #262626;
            width:1000px;

        }
        .order_Step_Bottom_Info {
            color:#828282;
        }
        .order_Step_Bottom_Info_Count {
            font-weight:600;
        }
        .order_Step_Bottom_Area {
            display: flex;
            justify-content: center;
         
            width:1000px;
        }
        .order_Step_Bottom_Area_2 {
            display: flex;
            justify-content: center;
            gap: 0px 140px;
            border-top: 1px solid #CCCCCC;
            border-bottom: 1px solid #CCCCCC;
            padding: 10px;
            width:1000px;
        }
        .order_Step_Bottom_Info_Area {
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        .show_Order_List_Btn {
            color:#8F8F8F;
            cursor:pointer;
        }
        .new_Order_Title_Area {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0px 0px 20px 0px;
            border-bottom: 1px solid #262626;
        }
        .new_Order_Area {
            padding:20px 0px 0px 0px;
            width:1000px;
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
            width:15%;
            /*width: 146.68px;*/
        }
        .new_Order_List_Column_4_Area {
            width:10%;
            /*width: 99.8px;*/
        }
        .new_Order_List_Column_5_Area {
            width:12%;
            /*width: 119.75px;*/
        }
        .new_Order_List_Column {
            font-weight:500;
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
            /*cursor:pointer;*/
            /*width: 179.69px;*/
        }
      
        .new_Order_List_Row_2_Area{
            /*width:48%;*/
            width: 441px;
            text-align: start;
            padding: 0px 0px 0px 30px;
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        .new_Order_List_Row_2_Area_M{
            width: 441px;
            text-align: start;
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        .new_Order_List_Row_3_Area {
            /*width:15%;*/
            width: 138px;
        }
        .new_Order_List_Row_4_Area {
            /*width:10%;*/
            width: 92px;
        }
        .new_Order_List_Row_5_Area {
            /*width:12%;*/
            width: 110px;
            display: grid;
            gap: 5px 0px;
        }
        .new_Order_List_Row_1 {
            color:#828282;
            cursor:pointer;
        }
        .new_Order_List_Row_1_1 {
            font-weight: 400;
            cursor:pointer;
        }
        .new_Order_List_Row_1_2 {
            width: 67px;
            text-align: 0 initial;
            margin: 0 auto;
            color: #9F9F9F;
            border: 1px solid #9F9F9F;
            cursor:pointer;
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
        .new_Order_List_Row_2_1_2 {
            font-weight:500;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            overflow: hidden;
            width:350px;
        }
        .new_Order_List_Row_3 ,.new_Order_List_Row_4,
        .new_Order_List_Row_4_1 
        
        {
            font-weight:400;
        }
        .new_Order_List_Row_5 {
            font-weight:500;
            width: 90px;
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
            width: 90px;
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
        .recently_Viewed_Area {
            padding: 40px 0px 0px 0px;
            width:1000px;
        }
        .recently_Viewed_Title_Area {
            padding: 0px 0px 20px 0px;
            border-bottom: 1px solid #262626;
        }
        .recently_Viewed_Filed {
      
        }
        .recently_Viewed_Empty {
            color: #828282;
            padding: 40px 40px;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
        }
        /*주문목록/배송조회*/
        .order_List_Area {
             padding: 40px 0px 0px 0px;
        }
        .order_Search_Ui_Title_Area {
            padding: 0px 0px 20px 0px;
        }
        .order_Search_Ui {
            border:1px solid #CCCCCC;
            border-radius: 12px;
            padding: 20px;
        }
        
        .search_Period {
            border:1px solid #CCCCCC;
            color:#8F8F8F;
        }
        .search_Period_Area {
            display: flex;
            gap: 0px 15px;
        }
        .search_Period {
            border: 1px solid #CCCCCC;
            color: #8F8F8F;
            padding: 3.2px 11px;
            cursor:pointer;
        }
        .clicked {
             border:1px solid #115C5E;
             color:#115C5E
        }
        .search_Ui_Layout {
            display: flex;
            align-items: center;
            gap: 0px 30px;
        }
        .search_Date_Area {
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        #I_DATE_START {
            height:30px;
            font-size:16px;
        }
        #I_DATE_END {
            height:30px;
            font-size:16px;
        }
        .date_Ui_Area {
            display: flex;
            align-items: center;
        }
        .search_Date_Btn {
            width: 48px;
            background: var(--main_color);
            text-align: center;
            padding: 4px 0px;
            color: #ffffff;
            cursor:pointer;
        }
        .order_Count {
            font-weight:500;
        }
        .order_List_Title {
            color:#8F8F8F;
            font-weight:500;
        }
        /*리뷰작성모달*/
        .Modal_Area {
            position: fixed;
            z-index: 99;
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
        .Modal {
            width:1000px;
            height:675px;
            background:#ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 20px;
        }
        .Modal_Top_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0px 0px 10px 0px;
        }
        .Modal_Close {
            cursor:pointer;
        }
        .clear-icon:after {
            content: "clear";
            font-size: 28px;
            line-height: 40px;
        }
        .modal_Input_Warp {
            border: 1px solid #E2E2E2;
            border-left: none;
            border-right: none;
            padding: 10px 0px;
        }
        .modal_Input_Warp_M {
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
            align-items: center;
        }
        .modal_Input_Area2 {
            width: 100%;
            display: flex;
            align-items: center;
            padding: 0px 0px 20px 0px;
            align-items: start;
        }
        .modal_Input_Info_Area {
            display: flex;
            align-items: center;
            width: 10%;
        }
        .modal_Input {
            width: 90%;
            position:relative;
        }
        .modal_Input_Phone {
            width: 80%;
            display: flex;
            justify-content: space-between;
        }
        .modal_Input_Address {
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
        .Modal_Btn_Area {
            width: 100%;
            display: flex;
            gap: 0px 15px;
            justify-content: center;
             padding: 35px 0px 0px 0px;
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
        .review_Prod_InfoArea {
            padding: 10px 0px;
            border: 1px solid var(--mono_line);
            border-left: none;
            border-right: none;
        }
        input {
            width:100%;
        }
        #I_DETAIL:focus {
            outline:1px solid #005764;
        }

        #I_DETAIL::placeholder {
          position: absolute;
          top: 0;
          padding:10px 0px;
          font-size:14px;
        }
        .imgBox_Area {
            display: flex;
            gap: 0px 15px;
        }
        .imgBox {
            width: 75px;
            height: 75px;
            line-height: 75px;
            color: #999999;
            font-size: 30px;
            font-weight: 400;
            cursor: pointer;
            text-align: center;
            border: 1px solid #DDDDDD;
            position:relative;
        }
        img.image_for_class {
            object-fit: cover;
        }
        .modalImg_Close_Area {
            position: absolute;
            left: 57px;
            top: -1px;
            width: 18px;
            line-height: 18px;
            height: 18px;
            font-size: 12px;
            background: #ffffffff;
            cursor: pointer;
        }
        span.clear-icon.drkid-icon.modalImg_close {
            position: relative;
            top: -11px;
        }
        .modalImg_close:after {
            font-size: 15px;
        }
        .mainImg {
            position: absolute;
            top: -1px;
            width: 30px;
            line-height: 20px;
            height: 20px;
            font-size: 12px;
            color: #ffffff;
            background: #070707;
            border: 1px solid #DDDDDD;
        }
        #hidden-field {
            display:none;
        }
  
    </style>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>

     <script>
         let _NowTarget;
         let _NowTarget_Num;
         let _order_Num;
         
         //모달 데이터 초기화
         function modal_DataClear(){
             $("#I_REVIEW_TITLE").val("");
             $("#I_DETAIL").val("");
             $("#rateYo").rateYo("rating", 5);
             $('input[name="PRODUCT_SCORE"]').val("");
             $(".imgBox").each(function() {
                 $(this).empty();
                 $(this).text("+");
             });
             _NowTarget = "";
             _NowTarget_Num = 0;
         }

         function save_ImageCheck() {
             $('input[name="EDMS_SAVE_FLAG"]').val("N");
             var passFlag = true;
             var checkCount = 0;
             //1.이미지 하나라도 있는지 체크
             $(".imgBox").each(function(e) {
                 if( $(this).find('*').length >= 4)
                 {
                     checkCount++;
                 }
             });
             console.log("checkCount",checkCount)
             //2.이미지가 하나이상 있을때
             //2-1.이미지가 하나이면 대표이미지인지 체크
             if(checkCount == 1){
                 if( $("#imgBox_1").find('*').length == 0)
                 {
                     passFlag = false;
                 }
             }
             //2-2.이미지가 두개 이상일 경우, 순서대로 넣었는지와 대표이미지가 포함되었는지 체크
             if(checkCount > 1){
                 for(var i=1; i <= checkCount; i++ ){
                     if( $("#imgBox_"+i).find('*').length == 0)
                     {
                         passFlag = false;
                         break;
                     }
                 }
             }
             //3. 이미지가 하나 이상이고 passFlag가 TRUE면 EDMS 저장 플래그 Y로 세팅
             if(checkCount > 0 && passFlag == true)
             {
                 $('input[name="EDMS_SAVE_FLAG"]').val("Y");
             }
             
             return passFlag;

         }

         //주문 취소 함수
         function order_Cansle(order_Number) {
             $("#" + order_Number).find(".new_Order_List_Row_4.lowerst-font").html("고객요청취소");
             $("#" + order_Number).find(".new_Order_List_Row_4_1.lowerst-font").html("완료");
             setTimeout(function () {
                 _popModal.Alert('', '주문이 정상취소 되었습니다.');
             }, 500)
         }
         var esrrorCallBack = function (ex) {
             console.log(ex);
         }

         //이미지업로드 관련 시작
         ////////////////////////
         //Text change가 일어날떄 -> Upload 가 일어날떄
         function UpdateUploadButton6() {
             uploader6.Upload();
         }
         //여러개 올릴때 Upload file이 계속 바뀌므로 계속 타게 처리.      
         function Uploader_OnFilesUploadComplete6(args) {
             UpdateUploadButton6();
         }
         //파일등록 순서대로 대표이미지부터 저장하도록 하는 함수
         function uploadOrder_Optimization(index)
         {
             let upload_Availability = true;
             if(index != 1){
                 //let target = (index-1) * 1;
                 let target = index * 1;
                 for(i=1; i<target; i++){
                     if($('#imgBox_' + i).find('*').length < 4){
                         upload_Availability = false;
                         break;
                     }
                 }
             }
             return upload_Availability;
         }
         function Uploader_OnFileUploadComplete6(args) {
             console.log("탐")
             if (args.isValid) {
                 var ret = args.callbackData + "";
                 let JsonData = JSON.parse(ret);
                 console.log(JsonData)
                 if ((JsonData['status'] + "") == 'Y') {
                     var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/><input type='hidden' name='EDNS_REMARK' value='${_NowTarget}'/></div>`;
                     var closehtml = $(`<div class="modalImg_Close_Area
                                      ">
                                           <span class="clear-icon drkid-icon modalImg_close"></span>
                                     </div>`);
                     var mainImg_html = `<div class='mainImg'>대표</div>`;
                     //닫기 버튼 이벤트 바인딩
                     closehtml.on("click", function(e){
                         event.stopPropagation(); //요소가 겹쳐서 이미지 등록 onclick이벤트가 함께 실행되는것을 방지
                         $(e.currentTarget).parent().find('.imgBox').empty();
                         $(e.currentTarget).parent().text("+");
                     });
                     $('#imgBox_'+_NowTarget_Num).empty();
                     $('#imgBox_'+_NowTarget_Num).append(html);
                     $('#imgBox_'+_NowTarget_Num).append(closehtml);
                     if(_NowTarget_Num == 1){$('#imgBox_'+_NowTarget_Num).append(mainImg_html);}
                     $('#imgBox_'+_NowTarget_Num).append(JsonData["imgSrc"]);
                 } else {
                     alert(JsonData['message']);
                 }
             } 
         }

         //이미지업로드 관련 끝
         ////////////////////////

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

             //별점 CDN 설정
             $("#rateYo").rateYo({
                 numStars: 5 , // 최대 별 개수
                 starWidth: "25px" , // 별 하나당 px크기
                 fullStar: true, // 점수 정수형
                 rating: 5, // 디폴트 값,
                 precision: 2,
                 minValue: 1,
                 normalFill: "#A0A0A0",
                 ratedFill: "black",
                 spacing:"5px"//별 간격
             });
             //모달 - 리뷰 등록버튼
             $(".modal_Save_Btn").on("click", function (e) {
                 var rating = $("#rateYo").rateYo("rating"); // 별점 값
                 $('input[name="PRODUCT_SCORE"]').val(rating);
                 if(save_ImageCheck())
                 {
                     _popModal.Promt('알림', '저장하시겠습니까?',
                    function () {
                        $('#flag').val('save');
                        $('#form1').submit();
                    }, function (error) { _popModal.Alert('', error); });
                 }
                 else
                 {
                     _popModal.Alert('알림', '파일 이미지를 정상적으로 등록해주세요');
                 }
                 

             });
             $(".imgBox").on("click", function (e) {
                 let NowTarget =  $(e.currentTarget).data('type');
                 let NowTarget_Num =   $(e.currentTarget).data('value');
                 _NowTarget = NowTarget;
                 _NowTarget_Num = NowTarget_Num;
                 if(uploadOrder_Optimization(_NowTarget_Num))
                 {
                     if ($('#imgBox_' + _NowTarget_Num).find('*').length >= 4) {
                         _popModal.Alert('알림', '이미지가 이미 등록되었습니다.');
                     }
                     else {
                         $('#uploader6_TextBox0_Input').click();
                     }
                 }
                 else
                 {
                     _popModal.Alert('', '이미지를 순서대로 등록해주세요');
                 }
             });
             $("#mypage_Btn").on("click", function () {
                 location.href = "/Source/client/my/C_MY_MYPAGEMAIN.aspx";
             });
             //조회 ui 오늘,7일 등 누르면
             $(".search_Period").click(function () {
                 var Today = new Date();
                 //클릭된 css적용
                 $(".search_Period").removeClass("clicked");
                 $(this).addClass("clicked");
                 var format_data_value = $(this).data('value');// today,7,15 등등
                 if (format_data_value == "today") {
                     //오늘 클릭 시 오늘 날짜 설정
                     var today_date = new Date(Today);
                     var format_today = today_date.toISOString().split('T')[0];
                     $('#I_DATE_START').val(format_today);
                 }
                 else {
                     //누른 일수만큼 시작일 값 설정
                     var StartDate = new Date(Today);
                     StartDate.setDate(StartDate.getDate() - format_data_value);
                     //'YYYY-MM-DD'
                     var formattedDate = StartDate.toISOString().split('T')[0];
                     $('#I_DATE_START').val(formattedDate);
                 }
             });
             //검색 UI 날짜 데이터 포맷, 디폴트는 7일 
             //종료일 초기화
             var today = new Date();
             var formatted_today = today.toISOString().split('T')[0];
             $('#I_DATE_END').val(formatted_today);
             //시작일 초기화
             var startDate = new Date(today);
             startDate.setDate(startDate.getDate() - 7);
             var formatted_start_date = startDate.toISOString().split('T')[0];
             $('#I_DATE_START').val(formatted_start_date);

             //주문취소 클릭이벤트
             $(".new_Order_List_Row_1_2").click(function () {
                 var order_Control = $(this);
                 var order_Num = $(this).parent().parent().attr("id");
                 _order_Num = order_Num;
                 var OkCallBack = function () {
                     //주문취소 
                     order_Cansle(order_Num);
                     //주문 취소 함수 실행 후 주문취소 버튼 숨김
                     order_Control.css("display", "none");
                 }
                 _popModal.Promt('', '주문취소 처리를 하시겠습니까?', OkCallBack, esrrorCallBack);
             });

             //주문 번호나 날짜 클릭시 디테일 이동
             $(".new_Order_List_Row_1,.new_Order_List_Row_1_1").click(function () {
                 location.href = "/Source/client/my/C_MY_ORDERDETAIL.aspx";
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
             //리뷰작성 클릭
             $("#open_Modal").on("click", function () {
                 //$(".imgBox_Area").empty();
                 $(".Modal_Area").css("display","flex");
             });

             //모달 닫기 클릭
             $(".Modal_Close,.modal_Cansle_Btn").on("click", function () {
                 $(".Modal_Area").hide();
                 modal_DataClear()
                 
             });
   
         });
    </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="PRODUCT_SCORE"  value="" />
         <input type="text" name="EDMS_SAVE_FLAG"  value="" />
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
                                        <div class="KeyDni_Info_Clicked lower-font" id="C_MY_ORDERLIST">주문/배송조회</div>
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
                                        <div class="KeyDni_Info lower-font"id="C_MY_MODIFYINFO">회원정보 수정</div>
                                        <div class="KeyDni_Info lower-font"id="C_MY_MEMBERDEPARTURE">회원 탈퇴</div>
                                        <div class="KeyDni_Info lower-font logout_Btn">로그아웃</div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <%--주문목록/배송조회 전체 영역--%>
                        <div class="Bottom_Area">
                            <%--주문목록/배송조회 조회UI--%>
                            <div class="order_Search_Ui_Area">
                                
                                <div class="order_Search_Ui_Title_Area">
                                    <div class="progress_Order_Title KeyDni_Top_Title">주문목록/배송조회</div>
                                </div>
                                <div class="order_Search_Ui">
                                    <div class="lowerst-font">조회기간</div>
                                    <%--검색 ui 클릭 가능한 요소들의 영역--%>
                                    <div class="search_Ui_Layout">
                                        <div class="search_Period_Area">
                                            <div class="search_Period lowerst-font" data-value="today">오늘</div>
                                            <div class="search_Period lowerst-font clicked"data-value="7">7일</div>
                                            <div class="search_Period lowerst-font"data-value="15">15일</div>
                                            <div class="search_Period lowerst-font"data-value="30">1개월</div>
                                            <div class="search_Period lowerst-font"data-value="90">3개월</div>
                                            <div class="search_Period lowerst-font"data-value="365">1년</div>
                                        </div>
                                        <div class="search_Date_Area">
                                            <%--<div class="search_Date"></div>--%>
                                            <%--시작,종료날짜 ui 영역--%>
                                            <div class="date_Ui_Area">
                                                <%--시작날짜--%>
                                                <div class="datePicker lower-font" style="width:170px;">
                                                    <input type="text" value="" class="datePicker-input" placeholder="PlaceHolder입니다." data-picker-count="2" id="I_DATE_START" />
                                                    <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                                </div>
                                                <div>&nbsp&nbsp~&nbsp&nbsp</div>
                                                <%--종료날짜--%>
                                                <div class="datePicker lower-font" style="width:170px;">
                                                    <input type="text" value="" class="datePicker-input" placeholder="PlaceHolder입니다." data-picker-count="2" id="I_DATE_END"  />
                                                    <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                                </div>
                                            </div>
                                            
                                            <div class="search_Date_Btn lowerst-font">조회</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--주문목록/배송조회 리스트 전체 영역--%>
                            <div class="order_List_Area">
                                <div class="order_List_Title_Area">
                                    <div class="order_List_Title lower-font">주문목록 / 배송조회 내역 총&nbsp<span class="order_Count main_color lower-font">5</span>건</div>
                                </div>
                                <%--리스트--%>
                                <div class="new_Order_Area">
                                   
                                    <div class="new_Order_List_Area">
                                        <%--최근 주문 내역 리스트--%>
                                        <div class="new_Order_List">
                                            <%--주문 내역 리스트 컬럼 (날짜/주문번호, 상품명/옵션 등등)--%>
                                            <div class="new_Order_List_Column_Area">
                                                <div class="new_Order_List_Column_1_Area">
                                                    <div class="new_Order_List_Column lowerst-font">날짜/주문번호</div>
                                                </div>
                                                <div class="new_Order_List_Column_2_Area">
                                                    <div class="new_Order_List_Column lowerst-font">상품명/옵션</div>
                                                </div>

                                                <div class="new_Order_List_Column_3_Area">
                                                    <div class="new_Order_List_Column lowerst-font">상품금액/수량</div>
                                                </div>
                                                <div class="new_Order_List_Column_4_Area">
                                                    <div class="new_Order_List_Column lowerst-font">주문상태</div>
                                                </div>
                                                <div class="new_Order_List_Column_5_Area">
                                                    <div class="new_Order_List_Column lowerst-font">확인/리뷰</div>
                                                </div>

                                            </div>
                                            <%--최근 주문 내역 리스트 내용--%>
                                            <div class="new_Order_List_Filed">
                                                <%--조회내역이 없을때--%>
                                                <%--<div class="new_Order_List_Empty lowerst-font">조회내역이 없습니다.</div>--%>

                                                <%--조회내역이 있을때 개별 레코드--%>
                                                <div class="new_Order_List_Row_Area">
                                                    <div class="new_Order_List_Row"id="20230612123456789">
                                                        <%--날짜,주문번호--%>
                                                        <div class="new_Order_List_Row_1_Area">
                                                            <div class="new_Order_List_Row_1 lowerst-font">2023/06/12</div>
                                                            <div class="new_Order_List_Row_1_1 drkid_postive_color lowerst-font">20230612123456789</div>
                                                            <div class="new_Order_List_Row_1_2  lowerst-font">주문취소</div>
                                                        </div>
                                                        <%--상품명/옵션 1개일 경우--%>
                                                        <div class="new_Order_List_Row_2_Area">
                                                            <div class="new_Order_List_Row_2">
                                                                <%--이미지--%>
                                                                <img src="/Source/client/image/magazine_list_test1.png" class="new_Order_List_Row_img">
                                                            </div>
                                                            <div class="new_Order_List_Row_2_1">
                                                                <div class="new_Order_List_Row_2_1_1 lowerst-font">신당케어</div>
                                                                <div class="new_Order_List_Row_2_1_2 lower-font">비건오메가3 (30일분)</div>
                                                            </div>
                                                        </div>
                                                        <%--상품금액/수량--%>
                                                        <div class="new_Order_List_Row_3_Area">
                                                            <div class="new_Order_List_Row_3">36000 / 1개</div>
                                                        </div>
                                                        <%--주문상태--%>
                                                        <div class="new_Order_List_Row_4_Area">
                                                            <div class="new_Order_List_Row_4 lowerst-font">입금완료</div>
                                                            <div class="new_Order_List_Row_4_1 lowerst-font">(배송준비중)</div>
                                                        </div>
                                                        <%--확인/리뷰--%>
                                                        <div class="new_Order_List_Row_5_Area">
                                                       <%--     <div class="new_Order_List_Row_5 lower-font">구매확정</div>
                                                            <div class="new_Order_List_Row_5_1 lower-font">리뷰작성</div>--%>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--상품명이 2개 이상일때--%>
                                                <div class="new_Order_List_Row"id="20230612123456790">
                                                    <div class="new_Order_List_Row_1_Area">
                                                        <div class="new_Order_List_Row_1 lowerst-font">2023/06/12</div>
                                                        <div class="new_Order_List_Row_1_1 drkid_postive_color lowerst-font">20230612123456790</div>
                                                        <div class="new_Order_List_Row_1_2  lowerst-font">주문취소</div>
                                                    </div>
                                                    <div class="multi_Order_Row_Area">
                                                        <div class="multi_Order_Row">
                                                            <div class="new_Order_List_Row_2_Area">
                                                                <div class="new_Order_List_Row_2">
                                                             
                                                                    <img src="/Source/client/image/magazine_list_test1.png" class="new_Order_List_Row_img">
                                                                </div>
                                                                <div class="new_Order_List_Row_2_1">
                                                                    <div class="new_Order_List_Row_2_1_1 lowerst-font">신당케어</div>
                                                                    <div class="new_Order_List_Row_2_1_2 lower-font">비건오메가3 (30일분) 긴 텍스트 테스트 입니다 긴 텍스트 테스트 입니다 긴 텍스트 테스트 입니다</div>
                                                                </div>
                                                            </div>
                                                            <div class="new_Order_List_Row_3_Area">
                                                                <div class="new_Order_List_Row_3">36000 / 1개</div>
                                                            </div>
                                                            <div class="new_Order_List_Row_4_Area">
                                                                <div class="new_Order_List_Row_4 lowerst-font">입금대기</div>
                                                                <div class="new_Order_List_Row_4_1 lowerst-font">(택배)</div>
                                                            </div>
                                                            <div class="new_Order_List_Row_5_Area">
                                                            </div>
                                                        </div>
                                                        <div class="multi_Order_Row">
                                                            <div class="new_Order_List_Row_2_Area">
                                                                <div class="new_Order_List_Row_2">
                                                                    <img src="/Source/client/image/magazine_list_test1.png" class="new_Order_List_Row_img">
                                                                </div>
                                                                <div class="new_Order_List_Row_2_1">
                                                                    <div class="new_Order_List_Row_2_1_1 lowerst-font">신당케어</div>
                                                                    <div class="new_Order_List_Row_2_1_2 lower-font">비건오메가3 (30일분)</div>
                                                                </div>
                                                            </div>
                                                            <div class="new_Order_List_Row_3_Area">
                                                                <div class="new_Order_List_Row_3">36000 / 1개</div>
                                                            </div>
                                                            <div class="new_Order_List_Row_4_Area">
                                                                <div class="new_Order_List_Row_4 lowerst-font">입금대기</div>
                                                                <div class="new_Order_List_Row_4_1 lowerst-font">(택배)</div>
                                                            </div>
                                                            <div class="new_Order_List_Row_5_Area">
                                                              <%--  <div class="new_Order_List_Row_5 lower-font">구매확정</div>
                                                                <div class="new_Order_List_Row_5_1 lower-font">리뷰작성</div>--%>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="new_Order_List_Row_Area">
                                                    <div class="new_Order_List_Row" id="20230612123456791">
                                                        <%--날짜,주문번호--%>
                                                        <div class="new_Order_List_Row_1_Area">
                                                            <div class="new_Order_List_Row_1 lowerst-font">2023/06/12</div>
                                                            <div class="new_Order_List_Row_1_1 drkid_postive_color lowerst-font">20230612123456791</div>
                                                        </div>
                                                        <%--상품명/옵션 1개일 경우--%>
                                                        <div class="new_Order_List_Row_2_Area">
                                                            <div class="new_Order_List_Row_2">
                                                                <%--이미지--%>
                                                                <img src="/Source/client/image/magazine_list_test1.png" class="new_Order_List_Row_img">
                                                            </div>
                                                            <div class="new_Order_List_Row_2_1">
                                                                <div class="new_Order_List_Row_2_1_1 lowerst-font">신당케어</div>
                                                                <div class="new_Order_List_Row_2_1_2 lower-font">비건오메가3 (30일분)</div>
                                                            </div>
                                                        </div>
                                                        <%--상품금액/수량--%>
                                                        <div class="new_Order_List_Row_3_Area">
                                                            <div class="new_Order_List_Row_3">36000 / 1개</div>
                                                        </div>
                                                        <%--주문상태--%>
                                                        <div class="new_Order_List_Row_4_Area">
                                                            <div class="new_Order_List_Row_4 lowerst-font">입금완료</div>
                                                            <div class="new_Order_List_Row_4_1 lowerst-font">(배송완료)</div>
                                                        </div>
                                                        <%--확인/리뷰--%>
                                                        <div class="new_Order_List_Row_5_Area">
                                                            <div class="new_Order_List_Row_5 lower-font">구매확정</div>
                                                            <div class="new_Order_List_Row_5_1 lower-font" id="open_Modal">리뷰작성</div>
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
                <%--페이징--%>
                <div class="number-button-Area">
                    <div class="number-button-wrap">
                        <div class="number-button shopnvbtn all_prev">
                            <span class="drkid-icon arrow-navi double-left-arrow allprev"></span>
                        </div>
                        <div class="number-button shopnvbtn one_prev">
                            <span class="drkid-icon arrow-navi left-arrow oneprev"></span>
                        </div>
                        <div class="number-button nvnum shopPageNum">1</div>
                        <div class="number-button shopnvbtn one_next">
                            <span class="drkid-icon arrow-navi right-arrow onenext"></span>
                        </div>
                        <div class="number-button shopnvbtn all_next">
                            <span class="drkid-icon arrow-navi double-right-arrow allnext"></span>
                        </div>
                        <input type="hidden" class="shopnowpage" />
                    </div>
                </div>

         </div>
        </div>
    </div>
    <%--리뷰 작성 모달--%>
    <div class="Modal_Area">
        <div class="Modal">
            <%--상단--%>
            <div class="Modal_Top_Area">
                <div class="my_Title">리뷰 작성하기</div>
                <div class="Modal_Close">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <%--리뷰하려는 상품정보 영역--%>
            <div class="review_Prod_InfoArea">
                    <div class="new_Order_List_Row_2_Area_M">
                        <div class="new_Order_List_Row_2">
                            <img src="/Source/client/image/magazine_list_test1.png" class="new_Order_List_Row_img"/>
                        </div>
                        <div class="new_Order_List_Row_2_1">
                            <div class="new_Order_List_Row_2_1_1 lowerst-font">신당케어</div>
                            <div class="new_Order_List_Row_2_1_2 lower-font">비건오메가3 (30일분)</div>
                        </div>
                    </div>
            </div>
            <%--중단 입력영역--%>
            <div class="modal_Input_Warp_M">
                 <%--제목--%>
                <div class="modal_Input_Area">
                    <div class="modal_Input_Info_Area">
                        <div class="drkid_Negative_color lowerst-font">*&nbsp&nbsp</div>
                        <div class="modal_Input_Info lowerst-font">제목</div>
                    </div>
                    <div class="modal_Input">
                        <input type="text" class="drkid-input lowerst-font" id="I_REVIEW_TITLE" name="I_REVIEW_TITLE" value="" placeholder="제목을 입력해주세요"/>
                    </div>
                </div>
                <%--내용--%>
                <div class="modal_Input_Area2">
                    <div class="modal_Input_Info_Area">
                        <div class="drkid_Negative_color lowerst-font">*&nbsp&nbsp</div>
                        <div class="modal_Input_Info lowerst-font">내용</div>
                    </div>
                    <div class="modal_Input">
<%--                        <input type="text" class="drkid-input lowerst-font" id="I_REVIEW_MESSAGE" name="I_REVIEW_MESSAGE" value="" placeholder="내용을 입력해주세요" style=""/>--%>
                        <textarea id="I_DETAIL" name="I_DETAIL" style="resize:none; width:100%; height:165px; padding:10px; box-sizing: border-box; border: 1px solid var(--mono_line);" placeholder="내용을 입력해 주세요."></textarea>
                    </div>
                </div>
                <%--평점--%>
                <div class="modal_Input_Area2">
                    <div class="modal_Input_Info_Area">
                        <div class="drkid_Negative_color lowerst-font">*&nbsp&nbsp</div>
                        <div class="modal_Input_Info lowerst-font">평점</div>
                    </div>
                    <div class="modal_Input">
                        <div id="rateYo"></div>
                    </div>
                </div>
                <%--파일등록 영역--%>
               <div class="modal_Input_Area">
                   <div class="modal_Input_Info_Area">
                        <div class="modal_Input_Info lowerst-font">파일등록</div>
                    </div>
                   <div class="modal_Input">
                       <div class="imgBox_Area">
                           <div class="imgBox"id="imgBox_1"data-type="REVIEW_MAIN_IMAGE"data-value="1">+</div>
                           <div class="imgBox"id="imgBox_2"data-type="" data-value="2">+</div>
                           <div class="imgBox"id="imgBox_3"data-type="" data-value="3">+</div>
                           <div class="imgBox"id="imgBox_4"data-type="" data-value="4">+</div>
                           <div class="imgBox"id="imgBox_5"data-type="" data-value="5">+</div>
                       </div>
                   </div>
               </div>
            </div>
           
            <div class="Modal_Btn_Area">
                <div class="modal_Save_Btn middle-font">등록</div>
                <div class="modal_Cansle_Btn middle-font">취소</div>
            </div>
        </div>
    </div>
    <!-- Dev의 Upload 기능을 쓰기위한 숨김처리 -->
    <!-- 이미지 업로드 File 이미지만 업로드 가능 처리. -->
    <!-- 5242880 byte = 5mb  15728640 byte = 15mb Memory 확대로 15mb까지는 처리-->
    <div style="width: 90%; display: none;">
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader6" runat="server" ClientInstanceName="uploader6" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete6" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete6(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete6(e); }"
                TextChanged="function(s, e) { UpdateUploadButton6(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload6" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload6" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader6.Upload(); }" />
        </dx:ASPxButton>
    </div>

</asp:Content>
