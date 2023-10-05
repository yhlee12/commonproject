﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MY_CANSLEPRODUCT.aspx.cs" Inherits="drKid.Source.client.my.C_MY_CANSLEPRODUCT" %>
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
        /*.new_Order_List_Row_2_Area_Wrap {
            display: grid;
            gap: 5px 0px;
        }*/
        .new_Order_List_Row_2_Area{
            /*width:48%;*/
            width: 441px;
            text-align: start;
            padding: 0px 0px 0px 30px;
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
     
        

    </style>
     <script>

         let _order_Num;

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



             //$('.datePicker-input').each((index, item) => {
             //    //Picker Id Setting
             //let _PickerId = 'picker-' + index;
             //let _numberOfMonths = $(item).data('pickerCount') != undefined ? $(item).data('pickerCount') * 1 : 1;
             //let _ParentsDiv = $(item).parent('.datePicker')[0];
             //let dataAttr = document.createAttribute('data-pickerId');
             //let _calEventBind = $(_ParentsDiv).find('.datePicker-icon');
             //dataAttr.value = _PickerId;
             //_ParentsDiv.setAttributeNode(dataAttr);

             ////DatePicker Setting
             //$("#I_DATE_START").datepicker({
             //    dateFormat: 'yy-mm-dd'
             //    , showButtonPanel: true
             //    , showAnim: 'fadeIn'
             //    , closeText: '닫기'
             //    , numberOfMonths: _numberOfMonths
             //    , stepMonths: 1
             //    , yearSuffix: "."
             //    , monthNamesShort: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']
             //    , monthNames: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']
             //    , dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
             //    , dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일']
             //    , showMonthAfterYear: true
             //    , selectOtherMonths: true
             //    , showOtherMonths: true
             //    , beforeShow: function (e, m) {
             //        $(_ParentsDiv).addClass('pickerActive');
             //    }
             //    , onClose: function (date) {
             //        $(_ParentsDiv).removeClass('pickerActive');
             //    }
             //});


             //$("#I_DATE_START").datepicker('show');
             //$('#I_DATE_START').datepicker('show');
             //$('#I_DATE_END').datepicker('show');

         });



    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                        <div class="KeyDni_Info_Clicked lower-font" id="C_MY_CANSLEPRODUCT">취소/반품/교환 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REFUNDPRODUCT">환불/입금 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REWARD">리워드 현황</div>
                                    </div>
                                </div>
                                <%--고객센터--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">고객센터</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_HELPDESKLIST">나의 1:1 문의</div>
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
                                    <div class="progress_Order_Title KeyDni_Top_Title">주문취소/반품/교환</div>
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
                                                            <div class="new_Order_List_Row_5_1 lower-font">리뷰작성</div>
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
</asp:Content>

