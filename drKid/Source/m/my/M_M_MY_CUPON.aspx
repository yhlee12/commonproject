﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_MY_CUPON.aspx.cs" Inherits="drKid.Source.m.my.M_M_MY_CUPON" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myPage {
           background-color:#FFFFFF;
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
            /*visibility: hidden*/
        }

        .myPageHeader_top {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding: 0 15px 0.5rem;
            border-bottom: 2px solid var(--mono_line);
        }
                .main_Box {
            padding: 0px 15px;
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


        /*마이페이지 수정 0728*/

        /*공통*/
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
        .font_weight_500 {
            font-weight:500;
        }
        .font_weight_600 {
            font-weight:600;
        }
        .user_Point_Area {
            display: flex;
            padding: 0px 0px 40px 0px;
            width: 1000px;
            gap: 0px 20px;
        }

        .user_More_Point_Area {
            width: 330px;
            height: 385px;
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border-radius: 12px;
            border: 1px solid #CCCCCC;
        }
        .user_More_Point_Area_T {
            width: 100%;
            text-align: center;
            height: 150px;
            background: var(--main_color);
            padding: 32px;
            border-radius: 12px 12px 0px 0px;
        }
        .user_More_Point_Area_B {
             width: 100%;
             height: 235px;
        }
        .user_More_Point_Area_B_T ,.user_More_Point_Area_B_B {
             height:50%;
        }
        .point {
            font-size: 50px;
            font-weight: 600;
            text-align: center;
            height: 117px;
            line-height: 117px;
        }
        .point_info {
            font-size: 24px;
            font-weight:400;
        }
        .point_Txt {
            font-size: 16px;
            font-weight: 600;
            text-align: center;
            height: 117px;
            line-height: 117px;
        }
        .user_Name {
            color: #ffffff;
            font-weight: 600;
        }
        .user_Name_Info {
             font-weight: 400;
        }
        .user_More_Point_Txt {
            color:#ffffff;
        }
        .under_Line {
            text-decoration:underline;
        }
        .inline_flex {
            display: inline-flex;
        }
        .user_Grade_Graph_Area {
            width: 330px;
            height: 385px;
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border-radius: 12px;
            border: 1px solid #CCCCCC;
        }
        .user_Grade_Graph_Area_T {
            height: 105px;
            width: 100%;
            text-align:center;
            padding:10px;
        }
        .user_Grade_Graph_Area_M {
            width: 100%;
            height: 175px;
        }
        .user_Grade_Graph_Area_B {
            height: 105px;
            width: 100%;
            text-align:center;
            padding:10px;
        }
        .percent {
            font-size: 28px;
            font-weight: 600;
        }
        .font_weight_500 {
            font-weight:500;
        }
        /*마이페이지 수정 0728*/
        .title_Info_Count_Area{
            cursor:pointer;
        }
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
        .all_Bottom_Area {
            display: flex;
            gap:0px 50px;
            /*padding: 45px 0px 0px 0px;*/
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
        /*MY 쿠폰*/
        .my_Cupon_Area {
            width:100%;
        }
        .my_CuponTop_Area {
            width: 100%;
            border-top: solid 1px var(--mono_line);
            padding: 0.5rem 0px;
        }
        .my_CuponTop {
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            /*padding: 0px 10px;*/
        }
        .sub_My_CuponTop {
            /*display: flex;
            align-items: center;
            gap: 10px;*/
            width: 100%;
        }
        .cupon_InfoTxt {
            padding-bottom: 0.2rem;
        }
        input {
            width:100%;
        }
        .input_Wrap {
            width: 80%;
        }
        .cupon_Register_Btn_Area {
            width: 20%;
        }
        .cupon_Register_Btn {
            height: 34px;
            line-height: 34px;
            text-align: center;
            background: var(--main_color);
            color: #ffffff;
            border-radius: 6px;
            cursor: pointer;
        }
        .goTo_Cupon {
            padding: 0.3rem 0;
            text-align: end;
        }
        .searchUi_Area {
            display: flex;
            gap: 0px 0.5rem;
            width: 100%;
            border-top: solid 1px #E1E1E1;
            padding: 1rem 0px;
        }
        .searchUi_Content {
            color: #9E9F9F;
            cursor:pointer;
        }
        .searchUi_Content:hover {
            color:var(--main_color);
            border-bottom:2px solid var(--main_color);
            font-weight:500;
        }
        .clicked {
            color:var(--main_color);
            border-bottom:2px solid var(--main_color);
            font-weight:500;
        }
        .cupon_title_header > .main_title {
          text-align: center;
          font-size: 30px;
          font-weight:700;
        }
        .cupon_title_header > .sub_title {
          text-align: center;
          margin: 20px 0 50px;
          color:#9F9F9F;
        }
        .cupon_title_header > .cupon_button {
          display: flex;
          align-items: center ;
          justify-content: center;
          gap: 20px;
        }
        .event_button {
            color:#115c5e;
        }
        .cupon_button1 {
            background-color:#115c5e;
            color: white;
        }
        .event_button, 
        .cupon_button1 { 
          width: 100px;
          height: 36px;
          border: 1px solid #115c5e;
          border-radius: 30px;
          text-align: center;
          cursor:pointer;
        }
        .event_button > span, 
        .cupon_button1 > span { 
          line-height: 36px;
        }
        .cupon1 { 
          margin-top: 40px;
        }
        .cupon1 > .cupon_txt {
             margin-bottom: 10px;
             font-weight:500;
        }
        .cupon_code {
          display: flex;
          align-items: center;
          justify-content: space-between;
          padding: 15px 0;
          border-top: 1px solid #ccc;
          border-bottom: 1px solid #ccc;
        }
        .cupon_code_wrap {
          display: flex;
          align-items: center;
          gap: 20px;
        }
        .cupon_code_wrap > .cupon_code_wrap_txt {
          font-weight: 600;
        }
        .cupon_code_wrap > .cupon_code_wrap_button {
          width: 82px;
          height: 40px;
          text-align: center;
          border:1px solid #115c5e;
          background-color:#115c5e;
          color: white;
          border-radius: 5px;
          cursor:pointer;
        }
        .cupon_code_wrap > .cupon_code_wrap_button > span {
          line-height: 40px;
        }
        .cupon_code_wrap > .cupon_code_wrap_input {
          width: 420px;
        }
        .cupon_code_wrap > .cupon_code_wrap_input > input {
          width: 100%;
          border-radius: 5px;
        }
        .cupon_code_wrap_right_txt {
            display: flex;
            align-items: center;
            justify-content: center;
            cursor:pointer;
        }
        .cupon_code_wrap_right_txt > span {
          display: block;
          color:#828282;
        }
        .cupon_content_top {
          display: flex;
          align-items: center;
          justify-content: space-between;
          margin:40px 0;
        }
        .cupon_content_top > .cupon_content_top_button {
          width: 167px;
          height: 40px;
          text-align: center;
          border: 1px solid #262626;
          color: white;
          background: #262626;
          border-radius: 5px;
          cursor:pointer;
        }
        .cupon_content_top > .cupon_content_top_button > span {
          line-height: 40px;
        }
        .cupon_content_bottom {
          display: grid;
          grid-template-columns: 300px 300px 300px;
          gap: 33px;
        }
        .cupon_content_bottom > .customer_cupon > .customer_cupon_content {
          height: 200px;
          margin-bottom: 10px;
        }
        .cupon_content_bottom > .customer_cupon > .customer_cupon_content_button {
          width: 100%;
          height: 40px;
          text-align: center;
          border-radius: 8px;
          border:1px solid #115c5e;
          background-color:#115c5e;
          color: white;
          cursor: pointer;
        }
        .cupon_content_bottom > .customer_cupon > .customer_cupon_content_button > span {
          line-height: 40px;
        }
        .influencer1 {
          display: flex;
          align-items: center;
          margin: 10px 0;
          gap: 10px;
          flex-wrap: wrap;
          display: none !important;
        }
        .influencer1 > .influencer_txt {
          text-align: center;
          padding: 0 5px;
          border: 1px solid #ccc;
          border-radius: 5px;
        }
        .cupon_notification {
            margin-bottom: 15px;
        }
        .cupon_date {
            display:flex;
        }
        .cupon_date > p {
            font-weight:500;
        }
         /*뉴 페이징*/
        .number-button-wrap {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px 0 0px;
        }
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .nvnum {
            border-color: #115c5e;
            color:#115c5e;
        }
        /*쿠폰 테스트*/
         .coupon {
            width: 300px;
            height: 200px;
            display: flex;
            justify-content: center;
            flex-direction: column;
            /* border: 0.5px solid rgba(0, 0, 0, 0.322); */
            /* background-color: rgb(248, 248, 248); */
            border-top: none;
        }
        .top {
            width: 100%;
            height: 60px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            background-color: #fece00;
            overflow: hidden;
        }
        .ex_coupon_title1 {
            color: white;
            font-size: 20px;
            padding-top: 15px;
            font-weight: 600;
        }
        .circleWrapper {
            position: absolute;
            top: -23px;
            display: flex;
            width: 100%;
            justify-content: space-evenly;
            align-items: center;
        }
        .circle {
            width: 20px;
            height: 20px;
            background-color: white;
            border-radius: 50%;
            margin-left: 3px;
            margin-right: 3px;
        }
        .circle_1 {
            width: 40px;
            height: 40px;
            background-color: white;
            border-radius: 50%;
        }
        .bottom {
            box-sizing: border-box;
            width: 100%;
            height: 120px;
            display: flex;
            justify-content: center;
            align-items: center;
            border: 1px solid rgba(194, 194, 194, 0.322);
            padding: 10px 0 0 0;
            flex-direction: column;
        }
        .bot_subT1 {
            font-size: 50px;
            font-weight: 600;
        }
        .bot_mainT1 {
            padding-top: 26px;
            font-size: 16px;
        }
        .border-bottom {
            border-bottom: 1px solid #D8D8D8;
            padding-bottom:40px
        }
        .end_mark{

        }
        .input_Wrap_Inner {
            display: flex;
            gap: 0.5rem;
        }
        input {
            height: 34px;
            border-radius: 6px;
        }

    </style>

    <script>
        $(document).ready(function () {
            $(".prev_button").click(function () {
                location.href = "/Source/m/my/M_M_MYPAGE.aspx";
            });
            //주문내역 바로가기
            $(".show_Order_List_Btn").click(function () {
                location.href = "/Source/client/my/C_MY_ORDERLIST.aspx";
            });
        });
        $(function () {
            var coupon_total_count = "<%=totalCount %>";
             var coupon_auth_count = "<%=COUPON_AUTH.Rows.Count %>";
             var html;
             var html1 = "";
             <%if (COUPON_LIST.Rows.Count  != 0 ) {%>
                 <%for (var i = 0; i < COUPON_LIST.Rows.Count; i++)
              {%>
             html = $("#COUPON_AUTH_TEMPLATE").html();
                 <%for (var j = 0; j < COUPON_AUTH.Rows.Count; j++){%>
             if ("<%=COUPON_LIST.Rows[i]["COUPON_SID"] %>" == "<%=COUPON_AUTH.Rows[j]["COUPON_SID"] %>") {
                 //AUTH_TYPE = USER_TYPE
                 if ("<%=COUPON_AUTH.Rows[j]["AUTH_TYPE"]%>" == "USER_TYPE") {

                     console.log("<%=COUPON_AUTH.Rows[j]["COUPON_SID"]%>");
                     console.log("<%=COUPON_AUTH.Rows[j]["USER_TYPE"]%>");
                     var user_type_count = "<%=COUPON_AUTH.Rows[j]["USER_TYPE"]%>".split(",").length;
                     console.log(user_type_count);
                     html1 = "";
                     for (var i = 0; i < user_type_count; i++) {
                         var temp = ('<div class="influencer_txt drkid-lowerst-font"><span>{USER_TYPE}</span></div>');
                         var temp_html;
                         //유저 코드와 비교하여 USER_TYPE 의 CODE_NAME 가져오기.
                             <%for (var k = 0; k < USER_TYPE_CODE.Rows.Count; k++) {%>
                             if ("<%=USER_TYPE_CODE.Rows[k]["CODE_CODE"]%>" == "<%=COUPON_AUTH.Rows[j]["USER_TYPE"]%>".split(",")[i]) {
                                 temp_html = temp.replace(/{USER_TYPE}/g, "<%=USER_TYPE_CODE.Rows[k]["CODE_NAME"]%>");
                                 html1 += temp_html;
                             }
                             <%}%>
                         }
                     html = html.replace(/{USER_TYPE}/g, html1);
                 }
                 //AUTH_TYPE = PRODUCT
                 if ("<%=COUPON_AUTH.Rows[j]["AUTH_TYPE"]%>" == "PRODUCT") {

                     var temp = ('<div class="cupon_product drkid-lowerst-font"><span>*특정 상품 한정 쿠폰</span></div>');
                     html = html.replace(/{PRODUCT}/g, temp);
                 }
                 //AUTH_TYPE = COST
                 if ("<%=COUPON_AUTH.Rows[j]["AUTH_TYPE"]%>" == "COST") {

                     var cost_num = "<%=COUPON_AUTH.Rows[j]["COST"]%>"; // 천의자리 (,)처리 필요
                         html = html.replace(/{COST}/g, formatPay(cost_num));
                     }
                 }
                 <%}%>
             html = html.replace(/{USER_TYPE}/g, '<div class="influencer_txt drkid-lowerst-font"><span>전체</span></div>');
             html = html.replace(/{PRODUCT}/g, '<div class="main_color drkid-lowerst-font"><span>*모든상품 적용가능</span></div>');
             html = html.replace(/{COST}/g, '0');
             $("#COUPONAUTH_" + "<%=COUPON_LIST.Rows[i]["COUPON_SID"]%>").append(html);

             <%}%>
                 <%}%>
             //사용완료&기간만료
             _empty_coupon();

             //혜택존 바로가기
             $(".goTo_Cupon").on("click", function () {
                 location.href = "/Source/m/eventDetail/M_E_EVENT_LIST.aspx";
             });

             //전체 
             $(".All_coupon_view").on("click", function () {
                 $("#used_flag").val("ALL");
                 $("#aspnetForm").submit();
                 //$(".All_coupon_view").addClass("clicked");
                 //$(".Available_coupon_view").removeClass("clicked");
                 //$(".Unavailable_coupon_view").removeClass("clicked");
             });

             //사용가능 버튼
             $(".Available_coupon_view").on("click", function () {
                 $("#used_flag").val("USING");
                 $("#aspnetForm").submit();
                 //$(".Available_coupon_view").addClass("clicked");
                 //$(".All_coupon_view").removeClass("clicked");
                 //$(".Unavailable_coupon_view").removeClass("clicked");
             });

             //사용불가 버튼
             $(".Unavailable_coupon_view").on("click", function () {
                 $("#used_flag").val("USED");
                 $("#aspnetForm").submit();
                 //$(".Unavailable_coupon_view").addClass("clicked");
                 //$(".All_coupon_view").removeClass("clicked");
                 //$(".Available_coupon_view").removeClass("clicked");
             });

             //사용자플레그
             if ("<%=used_flag%>" == "ALL") {
                 $(".All_coupon_view").addClass("clicked");
                 $(".Available_coupon_view").removeClass("clicked");
                 $(".Unavailable_coupon_view").removeClass("clicked");
             }

             if ("<%=used_flag%>" == "USING") {
                 $(".Available_coupon_view").addClass("clicked");
                 $(".All_coupon_view").removeClass("clicked");
                 $(".Unavailable_coupon_view").removeClass("clicked");
             }

             if ("<%=used_flag%>" == "USED") {
                 $(".Unavailable_coupon_view").addClass("clicked");
                 $(".All_coupon_view").removeClass("clicked");
                 $(".Available_coupon_view").removeClass("clicked");
             }

         });


         //기간이 지났거나 사용된 쿠폰 CSS
         function _empty_coupon() {
             <%for (var i = 0; i < COUPON_LIST.Rows.Count; i++)
                {%>
                <%for (var j = 0; j < COUPON_USED.Rows.Count; j++)
                    {%>
             if ("<%=COUPON_USED.Rows[j]["COUPON_SID"]%>" == "<%=COUPON_LIST.Rows[i]["COUPON_SID"]%>") {
                 if ("<%=COUPON_USED.Rows[j]["COUPON_USED_FLAG"]%>" == "Y") {
                            var target_sid = "<%=COUPON_LIST.Rows[i]["COUPON_SID"]%>";
                            //가로 쿠폰
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.top").css("background-color", "#d8d8d8");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content_button").css("background-color", "#d8d8d8");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content_button").css("border", "1px solid #d8d8d8");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.bottom > div.bot_subT1").text("사용완료");

                            $("#COUPONAREA_" + target_sid + " > div.cupon_date").css("color", "#8f8f8f");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.bottom > div.bot_mainT1").css("color", "#8f8f8f");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.bottom > div.bot_subT1").css("color", "#8f8f8f");

                            //세로쿠폰
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.left").css("background-color", "#d8d8d8");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.left").css("border", "1px solid #d8d8d8");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.bot_subT2").text("사용완료");

                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.bot_mainT2").css("color", "#8f8f8f");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.bot_subT2").css("color", "#8f8f8f");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.ex_coupon_title2").css("color", "#8f8f8f");
                        }
                        else {
                            var target_sid = "<%=COUPON_LIST.Rows[i]["COUPON_SID"]%>";
                            //가로 쿠폰
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.top").css("background-color", "#d8d8d8");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content_button").css("background-color", "#d8d8d8");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content_button").css("border", "1px solid #d8d8d8");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.bottom > div.bot_subT1").text("기간만료");

                            $("#COUPONAREA_" + target_sid + " > div.cupon_date").css("color", "#8f8f8f");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.bottom > div.bot_mainT1").css("color", "#8f8f8f");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.bottom > div.bot_subT1").css("color", "#8f8f8f");

                            //세로쿠폰
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.left").css("background-color", "#d8d8d8");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.left").css("border", "1px solid #d8d8d8");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.bot_subT2").text("기간만료");

                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.bot_mainT2").css("color", "#8f8f8f");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.bot_subT2").css("color", "#8f8f8f");
                            $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.ex_coupon_title2").css("color", "#8f8f8f");
                        }
                    }
             <%}%>
             <%}%>
         }

        function formatPay(input) {
            var Number = input.replace(/[^0-9%MAX]/g, ''); // 숫자 이외의 문자 제거
            var formattedNumber = '';
            formattedNumber = Number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            return formattedNumber;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
            <%--마이페이지 헤더 top--%>
            <div class="myPageHeader_top">
                <%--<a href="/Source/m/m_main.aspx">--%>
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
                <%--</a>--%>
                <div class="myPage_txt">
                    <span>MY쿠폰</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>
        
        <div class="main_Box">

            <%--전체 하단 영역--%>
            <div class="all_Bottom_Area">
                
                <div class="Bottom_Area">
                    <%--MY 쿠폰 타이틀--%>
                    <div class="progress_Order_Area">
                        <%--MY 쿠폰 전체 영역--%>
                        <div class="my_Cupon_Area">
                            <input type="hidden" id="used_flag" name="used_flag" value="<%=used_flag %>"/>
                            <%--혜택존 바로가기--%>
                            <div class="m_lower_font mono_sub_color goTo_Cupon">혜택존 쿠폰 바로가기 ></div>
                            <%--상단 쿠폰 코드 등록 영역--%>
                            <div class="my_CuponTop_Area">
                                <div class="my_CuponTop">
                                    <div class="sub_My_CuponTop">
                                        <div class="m_lower_font font_weight_500 cupon_InfoTxt">쿠폰 코드 등록</div>
                                        <div class="input_Wrap_Inner">
                                            <div class="input_Wrap">
                                                <input type="text" name="I_CUPON_NUM" class="drkid-input m_lower_font" value="" placeholder="쿠폰 코드 번호 입력" />
                                            </div>
                                            <div class="cupon_Register_Btn_Area">
                                                <div class="cupon_Register_Btn m_lower_font">등록</div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--<div class="lowerst-font mono_sub_color goTo_Cupon">혜택존 쿠폰 바로가기 ></div>--%>
                                </div>
                            </div>
                            <%--전체,사용,사용불가--%>
                            <div class="searchUi_Area">
                                <div class="searchUi_Content clicked m_lower_font All_coupon_view">전체</div>
                                <div class="searchUi_Content m_lower_font Available_coupon_view">사용가능</div>
                                <div class="searchUi_Content m_lower_font Unavailable_coupon_view">사용불가</div>
                            </div>

                            <%--쿠폰 리스트--%>
                            <div class="cupon_content border-bottom">
                                <%if (COUPON_LIST.Rows.Count > 0)
                                    {%>
                                <div class="cupon_content_bottom">
                                    <%for (int i = 0; i < COUPON_LIST.Rows.Count; i++)
                                        {%>
                                    <%var couponsid = COUPON_LIST.Rows[i]["COUPON_SID"].ToString();
                                        var same_sid_count = 0;
                                        for (int j = 0; j < COUPON_AUTH.Rows.Count; j++)
                                        {
                                            if (couponsid == COUPON_AUTH.Rows[j]["COUPON_SID"].ToString() && same_sid_count == 0)
                                            {
                                                same_sid_count++;
                                                var auth_type = COUPON_AUTH.Rows[j]["AUTH_TYPE"].ToString();
                                                if (auth_type == "ALL")
                                                {%>
                                    <!-- 쿠폰 컨텐츠 -->
                                    <div class="customer_cupon" id="COUPONAREA_<%=COUPON_AUTH.Rows[j]["COUPON_SID"]%>">
                                        <input type="hidden" class="coupon_sid" value="<%=COUPON_AUTH.Rows[j]["COUPON_SID"]%>" />
                                        <div class="end_mark_wrap">
                                            <span class="end_mark"></span>
                                        </div>
                                        <!-- 쿠폰 들어올 자리 -->
                                        <div class="customer_cupon_content">
                                            <%=COUPON_AUTH.Rows[j]["COUPON_TEMPLATE"]%>
                                        </div>
                                        <!-- 사용가능 유저타입체크 AUTH_TYPE:USER_TYPE-->
                                        <div class="influencer1">
                                            <div class="influencer_txt drkid-lowerst-font">
                                                <span>전체</span>
                                            </div>
                                        </div>
                                        <!-- 사용가능 금액체크 AUTH_TYPE:COST-->
                                        <div class="cupon_notification drkid-lowerst-font mono_dea">
                                            <span>구매금액이 0원 이상 결제시 사용 가능</span>
                                            <%--<span>구매금액이 <span class="cost_num"><%=COUPON_LIST.Rows[i]["COUPON_TEMPLATE"]%></span>원 이상 결제시 사용 가능</span>--%>
                                        </div>
                                        <!-- 사용가능 상픔체크 AUTH_TYPE:PRODUCT-->
                                        <div class="main_color drkid-lowerst-font">
                                            <span>*모든상품 적용가능</span>
                                        </div>
                                        <%--<div class="cupon_product drkid-lowerst-font">
                                            <span>*특정 상품 한정 쿠폰</span>
                                        </div>--%>
                                        <!-- 사용가능 날짜체크 -->
                                        <div class="cupon_date">
                                            <%if (COUPON_AUTH.Rows[j]["TO_DATE"].ToString() == "99991231")
                                                {%>
                                            <p class="main_color">
                                                기간제약없음
                                            </p>
                                            <%}
                                            %>
                                            <%else
                                                {%>
                                            <p class="main_color">
                                                <%=COUPON_AUTH.Rows[j]["FROM_DATE"].ToString().Substring(0,4)+"."+COUPON_AUTH.Rows[j]["FROM_DATE"].ToString().Substring(4,2)+"."+COUPON_AUTH.Rows[j]["FROM_DATE"].ToString().Substring(6)%>
                                            </p>
                                            <p>&nbsp~&nbsp</p>
                                            <p class="main_color">
                                                <%=COUPON_AUTH.Rows[j]["TO_DATE"].ToString().Substring(0,4)+"."+COUPON_AUTH.Rows[j]["TO_DATE"].ToString().Substring(4,2)+"."+COUPON_AUTH.Rows[j]["TO_DATE"].ToString().Substring(6)%>
                                            </p>
                                            <%}
                                            %>
                                        </div>
                                    </div>
                                    <%}%>

                                    <%--제약 조건 ALL 이 아닌 곳--%>
                                    <%else
                                        { %>
                                    <div class="customer_cupon" id="COUPONAREA_<%=COUPON_AUTH.Rows[j]["COUPON_SID"]%>">
                                        <input type="hidden" class="coupon_sid" value="<%=COUPON_AUTH.Rows[j]["COUPON_SID"]%>" />
                                        <div class="end_mark_wrap">
                                            <span class="end_mark"></span>
                                        </div>
                                        <!-- 쿠폰 들어올 자리 -->
                                        <div class="customer_cupon_content">
                                            <%=COUPON_AUTH.Rows[j]["COUPON_TEMPLATE"]%>
                                        </div>
                                        <div id="COUPONAUTH_<%=COUPON_AUTH.Rows[j]["COUPON_SID"]%>">
                                        </div>
                                        <div class="cupon_date">
                                            <%if (COUPON_AUTH.Rows[j]["TO_DATE"].ToString() == "99991231")
                                                {%>
                                            <p class="main_color">
                                                기간제약없음
                                            </p>
                                            <%}%>
                                            <%else
                                                {%>
                                            <p class="main_color">
                                                <%=COUPON_AUTH.Rows[j]["FROM_DATE"].ToString().Substring(0,4)+"."+COUPON_AUTH.Rows[j]["FROM_DATE"].ToString().Substring(4,2)+"."+COUPON_AUTH.Rows[j]["FROM_DATE"].ToString().Substring(6)%>
                                            </p>
                                            <p>&nbsp~&nbsp</p>
                                            <p class="main_color">
                                                <%=COUPON_AUTH.Rows[j]["TO_DATE"].ToString().Substring(0,4)+"."+COUPON_AUTH.Rows[j]["TO_DATE"].ToString().Substring(4,2)+"."+COUPON_AUTH.Rows[j]["TO_DATE"].ToString().Substring(6)%>
                                            </p>
                                            <%}%>
                                        </div>
                                    </div>
                                    <%}%>
                                    <%}%>
                                    <%}%>
                                    <%}%>
                                </div>
                                <%}%>
                                <!-- 쿠폰이 없을경우 -->
                                <%if (COUPON_LIST.Rows.Count == 0)
                                    { %>
                                <div class="coupon_null m_middle_font">등록된 쿠폰이 없습니다.</div>
                                <%}%>
                            </div>
                        </div>
                        <%--페이징--%>
                        <div class="number-button-Area">
                            <div class="number-button-wrap">
                                <div class="number-button shopnvbtn all_prev">
                                    <span class="drkid-icon arrow-navi double-left-arrow allprev"></span>
                                </div>
                                <div class="number-button shopnvbtn 
                                    one_prev">
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
                <script type="text/html" id="COUPON_AUTH_TEMPLATE">
                    <!-- 사용가능 유저타입체크 AUTH_TYPE:USER_TYPE-->
                    <div class="influencer1">
                        {USER_TYPE}
                    </div>
                    <!-- 사용가능 금액체크 AUTH_TYPE:COST-->
                    <div class="cupon_notification drkid-lowerst-font mono_dea">
                        <span>구매금액이 {COST}원 이상 결제시 사용 가능</span>
                    </div>
                    <!-- 사용가능 상픔체크 AUTH_TYPE:PRODUCT-->
                    {PRODUCT}
                </script>
            </div>
        </div>
    </div>



    
</asp:Content>
