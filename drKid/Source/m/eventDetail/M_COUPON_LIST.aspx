﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_COUPON_LIST.aspx.cs" Inherits="drKid.Source.m.eventDetail.M_COUPON_LIST_aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #m_moblie_wrap {
            padding: 0;
        }
        #sub_content {
            /*padding: 7rem 0;*/
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
            padding: 2rem 15px;
        }
        .Title_Area {
            text-align:center;
            padding: 0px 0px 1rem 0px;
        }
        .main_Title_Txt {
            font-weight:500;
            padding: 15px 0px 10px;
        }
        .sub_Title_Txt {
            color:#9F9F9F;
        }
        .event_Info_Title {
            font-weight:500;
        }
        .event_Info_Contents {
            display: flex;
            align-items: center;
            padding: 10px 0px 50px 0px;
        }
        .event_Info_Contents_2 {
            display: flex;
            width: 240px;
            justify-content: space-between;
            align-items: center;
        }
        .event_Info {
            color:#9F9F9F;
            cursor:pointer;
        }
        .clicked {
            color:#115C5E;
            font-weight:500;
            border-bottom: 2px solid #115C5E;
       
        }

        .event_Info_area:hover {
            color:#115C5E;
            font-weight:500;
            
        }

        .event_Info_area:hover .event_Info {
            color: #115C5E;
            font-weight: 500;
            border-bottom: 2px solid #115C5E;
        }
        

        .event_Item_Area {
            width:100%;
        }
        .event_Item_List {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px 50px;
        }
        .event_Item {
            width: 410px;
            height: 280px;
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border: 1px solid #707070;
            border-radius: 60px 0px 0px 0px;
            position:relative;
            margin-bottom:20px;
            cursor:pointer;
        }
        .item_Info_1_Area {
             padding: 10px 0px;
        }
        .item_info_1 {
            font-weight:500;
            height: 68px;
            width: 400px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
            cursor:pointer;
        }
        .event_flag_area {
            width: 124px;
            height: 44px;
            background: #115C5E;
            border-radius: 0px 0px 10px 0px;
            position: absolute;
            top: 257px;
            left: -1px;
           padding:5px;
            position:absolute;
        }
        .event_flag {
            color:#ffffff;
            text-align:center;
        }
        .event_End {
            width:163px;
            height:44px;
            background:#8F8F8F;
             border-radius: 0px 0px 10px 0px;
            position: absolute;
            top: 257px;
            left: -1px;
           padding:5px;
            position:absolute;
        }

        .event_button1 {
            display:flex;
            align-items:center;
            justify-content:center;
            gap: 1rem;
            padding-bottom: 1rem;
        }

        .event_firstbutton {
            color: white;
            background-color: #115C5E;
        }

        .event_button1 > .event_button_content {
            width: 100px;
            text-align: center;
            border-radius: 23px;
            border: 1px solid #115C5E;
            padding: 3px 20px;
            cursor:pointer;
        }

        /*쿠폰 관련*/
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
          margin-top: 1rem;
        }

        .cupon1 > .cupon_txt {
             margin: 0.2rem 0;
             font-weight:500;
        }

        .cupon_code {
          /*display: flex;
          align-items: center;
          justify-content: space-between;*/
          padding: 0.5rem 0;
          border-top: 1px solid #ccc;
          border-bottom: 1px solid #ccc;
        }

        .cupon_code_wrap {
          /*display: flex;
          align-items: center;*/
          gap: 20px;
        }

        .cupon_code_wrap_input {
            width: 80%;
            font-size:12px;
        }
        .cupon_code_wrap_button {
            width: 20%;
            text-align: center;
        }

        .cupon_code_wrap_input > input {
            width: 100%;
            height: 34px;
            border-radius: 6px;
        }

        .cupon_code_wrap_input > input::placeholder {
            font-size: 12px;
        }
        .cupon_code_wrap > .cupon_code_wrap_txt {
          font-weight: 600;
          padding-bottom: 0.3rem;
        }
        .cupon_code_wrap_inner {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .cupon_code_wrap_button {
          width: 20%;
          height: 34px;
          line-height: 34px;
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
          /*width: 420px;*/
        }

        .cupon_code_wrap > .cupon_code_wrap_input > input {
          width: 100%;
          border-radius: 5px;
        }

        .cupon_code_wrap_right_txt {
            display: flex;
            align-items: center;
            justify-content: end;
            padding-bottom: 0.5rem;
        }

        .cupon_code_wrap_right_txt > span {
          display: block;
          color:#828282;
        }

        .cupon_content_top {
          display: flex;
          align-items: center;
          justify-content: center;
          margin:1rem 0;
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
          /*grid-template-columns: 300px 300px 300px 300px;*/
          gap: 33px;
        }

        .cupon_content_bottom > .customer_cupon > .customer_cupon_content {
          height: 200px;
          margin-bottom: 10px;
        }

        .cupon_content_bottom > .customer_cupon > .customer_cupon_content_button {
          width: 100%;
          height: 30px;
          text-align: center;
          border-radius: 8px;
          border:1px solid #115c5e;
          background-color:#115c5e;
          color: white;
          cursor: pointer;
        }

        .cupon_content_bottom > .customer_cupon > .customer_cupon_content_button > span {
          line-height: 30px;
        }

        .influencer1 {
          display: flex;
          align-items: center;
          justify-content: center;
          margin: 10px 0;
          gap: 10px;
          flex-wrap: wrap;
        }

        .influencer1 > .influencer_txt {
          text-align: center;
          padding: 0 5px;
          border: 1px solid #ccc;
          border-radius: 5px;
        }

        .cupon_notification {
            color : var(--mono_dea);
        }
        .cupon_product{
            margin-bottom: 0.2rem;
            color : var(--drkid_Negative);
            text-align: center;
        }
        .cupon_date {
            display:flex;
            justify-content: center;
        }
        .cupon_date > p {
            font-weight:500;
            font-size: 14px;
        }

        .coupon_null{
            display:flex;
            justify-content: center;
            align-items: center;
            padding: 100px;
        }
        .empty_coupon{

        }

        /*쿠폰 테스트*/
         .coupon {
            width: 100%;!important
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

        /*font*/
        .drkid-middle-font {
            font-size: 18px;
            font-weight: 700;
        }

        .drkid-lowerst-font {
            font-size:14px;
        }

         .mono_dea {
             color: #bbbbbb;
             text-align:center;
         }

         #hover6_wrap {
             
         }
         #hidden-field {
            display:none;
         }
         .image_for_class {
            max-width: 100%;
            object-fit: cover;
            border-radius: 60px 0px 0px 0px;
        }
        /*뉴 페이징*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
     </style>
     <script>
         $(function () {
             $('#hover5').click(function () {
                 location.href = "/Source/m/eventDetail/M_E_EVENT_LIST.aspx";
             });

             // 이벤트상품 이미지 or 이벤트상품 제목 클릭 시 디테일 페이지 이동
             $(".event_Item , .item_info_1 ").click(function () {
                 var sid = $(this).data("info");
                 console.log("sid:", sid)
                 if (sid != '' && sid != null) {
                     location.href = "/Source/m/eventDetail/M_E_EVENT_DETAIL.aspx?sid=" + sid;
                 }
             });

         });
    </script>
    <script>
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
            html = html.replace(/{PRODUCT}/g, '<div class="main_color drkid-lowerst-font" style="text-align: center;"><span>*모든상품 적용가능</span></div>');
            html = html.replace(/{COST}/g, '0');
            $("#COUPONAUTH_" + "<%=COUPON_LIST.Rows[i]["COUPON_SID"]%>").append(html);

            <%}%>
            <%}%>

            _empty_coupon();


            $(".customer_cupon_content_button").on("click", function () {
                console.log("<%=baseUser.userType %>");
                if ("<%=baseUser.userId %>" == "") {
                    $("#user_flag").val("N");
                    $("#form1").submit();
                }
                else {
                    var target_id = $(this).attr("id");
                    var coupon_sid = target_id.replace("COUPONBTN_", "");
                    var user_sid = "<%=baseUser.userSid %>";
                    $("#ADD_COUPON_SID").val("target_sid");
                    console.log($("#ADD_COUPON_SID").val());

                    $.ajax({
                        type: "post",
                        url: "/Source/client/events/AJAX_COUPON_ISSUE.aspx",
                        dataType: 'json',
                        data: {
                            coupon_sid: coupon_sid, user_sid: user_sid
                        },
                        success: function (data) {
                            console.log(data.O_RETURN_MESSAGE[0]);
                            if (data.O_ERROR_FLAG[0]["O_ERROR_FLAG"] + "" == "N") {
                                _popModal.Alert('발급 완료', '쿠폰이 정상적으로 발급되었습니다.');
                            }
                            if (data.O_ERROR_FLAG[0]["O_ERROR_FLAG"] + "" == "Y") {
                                _popModal.Alert('발급 실패', data.O_RETURN_MESSAGE[0]["O_RETURN_MESSAGE"]);
                            }
                        },
                        error: function (err) {
                            _popModal.Alert('알림', err);
                        },
                        complete: function () {

                        }
                    });



                }
            });
            <%--"COUPONBTN_<%=COUPON_AUTH.Rows[j]["COUPON_SID"]%>"--%>
            $(".mycoupon_list_btn").on("click", function () {
                location.href = "/Source/m/eventDetail/M_E_EVENT_DETAIL.aspx";
            })
        });

        //잔여 수량 0개 쿠폰 CSS
        function _empty_coupon() {
            <%for (var i = 0; i < COUPON_LIST.Rows.Count; i++)
              {%>
            if ("<%=COUPON_LIST.Rows[i]["COUPON_COUNT"]%>" == "<%=COUPON_LIST.Rows[i]["CREATE_COUPON_COUNT"]%>") {
                var target_sid = "<%=COUPON_LIST.Rows[i]["COUPON_SID"]%>";
                //가로 쿠폰
                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.top").css("background-color", "#d8d8d8");
                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content_button").css("background-color", "#d8d8d8");
                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content_button").css("border", "1px solid #d8d8d8");
                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content_button > span").text("쿠폰 발급 종료");

                $("#COUPONAREA_" + target_sid + " > div.cupon_date").css("color", "#8f8f8f");
                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.bottom > div.bot_mainT1").css("color", "#8f8f8f");
                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.bottom > div.bot_subT1").css("color", "#8f8f8f");

                //세로쿠폰
                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.left").css("background-color", "#d8d8d8");
                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.left").css("border", "1px solid #d8d8d8");

                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.bot_mainT2").css("color", "#8f8f8f");
                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.bot_subT2").css("color", "#8f8f8f");
                $("#COUPONAREA_" + target_sid + " > div.customer_cupon_content > div > div.right > div.bot_textwrap > div.ex_coupon_title2").css("color", "#8f8f8f");
            }
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
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="search_btn_click_flag" id="search_btn_click_flag" value="" />
        <input type="text" name="user_flag" id="user_flag" value="" />
        <input type="text" name="ADD_COUPON_SID" id="ADD_COUPON_SID" value="" />
        
    </div>
    <div id="sub_content" style="">
        <div class="sub_layout">
            <div id="content">
                <div class="main_Box">
                    <div class="Title_Area">
                        <div class="main_Title_Txt">혜택존</div>
                        <div class="sub_Title_Txt m_lower_font">닥터키드니 고객님들을 위한 특별한 혜택</div>
                    </div>

                    <div class="event_button1">
                        <div class="event_button_content m_middle_font main_color" id="hover5">
                            <span>이벤트</span>
                        </div>
                        <div class="event_button_content m_middle_font main_color event_firstbutton" id="hover6">
                            <span>쿠폰</span>
                        </div>
                    </div>


                    <div id="hover6_wrap">
                        <div class="cupon1">
                            <div class="cupon_code_wrap_right_txt drkid-lowerst-font mycoupon_list_btn">
                                <span>나의 쿠폰 확인하기</span>
                                <span class="material-icons">chevron_right</span>
                            </div>

                            <%--<div class="cupon_txt main_color">
                                <span>쿠폰을 클릭하시면 쿠폰발급이 됩니다.</span>
                            </div>--%>

                            <div class="cupon_code">
                                <div class="cupon_code_wrap">
                                    <div class="cupon_code_wrap_txt">
                                        <span class="m_lower_font">쿠폰 코드 등록</span>
                                    </div>
                                    <div class="cupon_code_wrap_inner">
                                        <div class="cupon_code_wrap_input">
                                            <input class="m_lower_font" type="text" placeholder="쿠폰 코드 번호 입력">
                                        </div>
                                        <div class="cupon_code_wrap_button">
                                            <span class="m_lower_font">등록</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="cupon_txt m_lower_font main_color">
                                <span>쿠폰을 클릭하시면 쿠폰발급이 됩니다.</span>
                            </div>

                            <%--쿠폰 리스트--%>
                            <div class="cupon_content border-bottom">
                                <%if (COUPON_LIST.Rows.Count > 0)
                                 {%>
                                <div class="cupon_content_top">
                                    <div class="cupon_content_top_button">
                                        <span>쿠폰 모두 받기</span>
                                    </div>
                                </div>

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
                                                <!-- 쿠폰 들어올 자리 -->
                                                <div class="customer_cupon_content">
                                                    <%=COUPON_AUTH.Rows[j]["COUPON_TEMPLATE"]%>
                                                </div>
                                                <div class="customer_cupon_content_button m_middle_font" id="COUPONBTN_<%=COUPON_AUTH.Rows[j]["COUPON_SID"]%>">
                                                    <span>쿠폰 받기</span>
                                                </div>
                                                <!-- 사용가능 유저타입체크 AUTH_TYPE:USER_TYPE-->
                                                <div class="influencer1">
                                                    <div class="influencer_txt m_lower_font">
                                                        <span>전체</span>
                                                    </div>
                                                </div>
                                                <!-- 사용가능 금액체크 AUTH_TYPE:COST-->
                                                <div class="cupon_notification drkid-lowerst-font mono_dea">
                                                    <span>구매금액이 0원 이상 결제시 사용 가능</span>
                                                    <%--<span>구매금액이 <span class="cost_num"><%=COUPON_LIST.Rows[i]["COUPON_TEMPLATE"]%></span>원 이상 결제시 사용 가능</span>--%>
                                                </div>
                                                <!-- 사용가능 상픔체크 AUTH_TYPE:PRODUCT-->
                                                <div class="main_color drkid-lowerst-font" style="text-align: center;">
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
                                                <!-- 쿠폰 들어올 자리 -->
                                                <div class="customer_cupon_content">
                                                    <%=COUPON_AUTH.Rows[j]["COUPON_TEMPLATE"]%>
                                                </div>
                                                <div class="customer_cupon_content_button" id="COUPONBTN_<%=COUPON_AUTH.Rows[j]["COUPON_SID"]%>">
                                                    <span>쿠폰 받기</span>
                                                </div>
                                                <div id="COUPONAUTH_<%=COUPON_AUTH.Rows[j]["COUPON_SID"]%>">

                                                </div>
                                                <%--<!--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->
                                                <!-- 사용가능 유저타입체크 AUTH_TYPE:USER_TYPE-->
                                                <div class="influencer1">
                                                    <div class="influencer_txt drkid-lowerst-font">
                                                        <span>전체</span>
                                                    </div>
                                                </div>
                                                <!-- 사용가능 금액체크 AUTH_TYPE:COST-->
                                                <div class="cupon_notification drkid-lowerst-font mono_dea">
                                                    <span>구매금액이 0원 이상 결제시 사용 가능</span>
                                                </div>
                                                <!-- 사용가능 상픔체크 AUTH_TYPE:PRODUCT-->
                                                <div class="main_color drkid-lowerst-font">
                                                    <span>*모든상품 적용가능</span>
                                                </div>
                                                <!--%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% -->--%>

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
                                        <%}%>
                                      <%}%>
                                    <%}%>
                                </div>
                                <%}%>
                                <!-- 쿠폰이 없을경우 -->
                                <%if (COUPON_LIST.Rows.Count == 0)
                                 { %>
                                    <div class="coupon_null">등록된 쿠폰이 없습니다.</div>
                                <%}%>
                            </div>
                        </div>
                    </div>
                    <%--페이징--%>
                    <div class="pageNavigationStr" id="eventpage" style="padding: 2rem 0px;">
                        <%=pageNavigationStr%>
                    </div>
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
</asp:Content>
