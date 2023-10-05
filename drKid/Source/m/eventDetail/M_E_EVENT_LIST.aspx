<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_E_EVENT_LIST.aspx.cs" Inherits="drKid.Source.m.eventDetail.M_E_EVENT_LIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #m_moblie_wrap {
           padding: 0;
        }

        #bg_gray {
            background-color: #ccc;
        }

        .main_Box {
            padding: 2rem 
            15px;
            margin: 0 auto;
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
            justify-content: center;
            padding: 0px 0px 2rem 0px;
        }
        .event_Info_Contents_2 {
            display: flex;
            width: 100%;
            /* justify-content: space-around; */
            align-items: center;
            justify-content: center;
            gap: 1rem;
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
            grid-template-columns: repeat(2, 1fr);
            gap:10px;
        }
        .event_Item {
            width: 100%;
            height: 7rem;
            border: 1px solid #F2F2F2;
            background: #F2F2F2 0% 0% no-repeat padding-box;
            border-radius: 35px 0px 0px 0px;
            position:relative;
            margin-bottom:1rem;
            cursor:pointer;
            position:relative;
        }
        .event_Item > img {
            border-radius: 35px 0px 0px 0px;
            object-fit: cover;
        }
        .item_Info_1_Area {
                padding: 0.5rem 0px 0px 0px;

        }
        .item_info_1 {
            font-weight:500;
            /*height: 68px;*/
            /*width: 100%;*/
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
            cursor:pointer;
            line-height: 1.3;
        }
        .event_flag_area {
            /*width: 4rem; */
            background: #115C5E;
            border-radius: 0px 0px 10px 0px;
            position: absolute;
            bottom: -0.7rem;
            padding: 0.1rem 1rem;
            position: absolute;
            text-align: center;
        }
        .event_flag {
            color:#ffffff;
            text-align:center;
            font-weight:600;
            font-size: 0.4rem;
        }
        .event_End {
            /*width:163px;
            height:44px;*/
            background:#8F8F8F;
            border-radius: 0px 0px 10px 0px;
            position: absolute;
            bottom: -0.7rem;
            padding: 0.1rem 1rem;
            position:absolute;
            text-align: center;
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

        .customer_cupon {
            margin-bottom: 1rem;
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
             margin-bottom: 10px;
             font-weight:500;
        }

        .cupon_code {
          display: flex;
          align-items: center;
          justify-content: space-between;
          padding: 10px 0;
          border-top: 1px solid #ccc;
          border-bottom: 1px solid #ccc;
        }

        /*.cupon_code_wrap {
          display: flex;
          align-items: center;
          gap: 20px;
        }*/

        .cupon_code_wrap > .cupon_code_wrap_txt {
          font-weight: 600;
        }

        .cupon_code_wrap_button {
            text-align: center;
            height: 2rem;
            padding: 0 1rem;
            border-radius: 0.5rem;
            border: 1px solid #115c5e;
            color:#ffffff;
        }

        .cupon_code_wrap_button > span {
            line-height:2rem;
        }

        .cupon_code_wrap > .cupon_code_wrap_input {
          /*width: 420px;*/
        }

        .code_input {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 1rem;
            padding-top: 5px;
        }

        .cupon_code_wrap_input > input {
            width: 100%;
            border-radius: 0.5rem;
        }

        .cupon_code_wrap_right_txt {
            display: flex;
            align-items: center;
            justify-content: flex-end;
            cursor:pointer;
            padding-bottom: 0.5rem;
        }

        .cupon_code_wrap_right_txt > span {
          display: block;
          color:#828282;
        }

        .cupon_content_top {
             display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 1rem;
            gap: 0.5rem;
        }

        .cupon_content_top > .cupon_content_top_button {
          width: 167px;
          height: 30px;
          text-align: center;
          border: 1px solid #262626;
          color: white;
          background: #262626;
          border-radius: 5px;
          cursor:pointer;
        }

        .cupon_content_top > .cupon_content_top_button > span {
          line-height: 30px;
        }

        .cupon_content_bottom {
          display: grid;
          grid-template-columns: repeat(1,1fr);
        }

        .cupon_content_bottom > .customer_cupon > .customer_cupon_content {
          /*height: 200px;*/
          margin-bottom: 1rem;
        }

        .cupon_content_bottom > .customer_cupon > .customer_cupon_content_button {
          display:none;
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
          justify-content: center;
          margin-bottom:5px;
          gap: 10px;
        }

        .influencer1 > .influencer_txt {
          text-align: center;
          padding: 0 5px;
          border: 1px solid #ccc;
          border-radius: 5px;
        }

        .cupon_notification {
            text-align: center;
        }

        .cupon_date > p {
            font-weight:500;
            text-align:center;
        }

        .cupon_content_top_txt {
            font-weight: 600;
        }

        /*쿠폰 테스트*/
         .coupon {
            width: 100%;
            /*height: 200px;*/
            display: flex;
            justify-content: center;
            flex-direction: column;
            /* border: 0.5px solid rgba(0, 0, 0, 0.322); */
            /* background-color: rgb(248, 248, 248); */
            border-top: none;
        }

        .top {
            width: 100%;
            padding: 0.5rem 0;
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
            /*height: 120px;*/
            display: flex;
            justify-content: center;
            align-items: center;
            border: 1px solid rgba(194, 194, 194, 0.322);
            padding: 1rem 0 0.5rem;
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
            border: 1px solid #D8D8D8;       
            padding: 1rem 1rem;
        }

        .cupon_code_wrap {
            min-width: 290px;
        }

        .cupon_code_wrap_input {
            min-width: 70%;
        }

        .cupon_bottom_txt {
            padding:0.5rem 0;
        }

        .margin-top {
            margin-top: 1rem;
        }

        /*쿠폰 2번*/
        .coupon2 {
            width: 100%;
            /*height: 200px;*/
            display: flex;
            flex-direction: column;
            flex-direction: row;
            align-items: center;
        }

        .left {
            width: 20%;
            height: 150px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            background-color: #fece00;
            overflow: hidden;
            border-radius: 20px 0 0 20px;
            border: 1px solid #e0e0e0;
            border-right: none;
        }

        .text {
            color: white;
            font-size: 16px;
            font-weight: 600;
            -webkit-transform: rotate(-90deg);
            letter-spacing: 5px;
        }

        .right {
            width: 80%;
            height: 150px;
            background-color: rgb(255, 255, 255);
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            border-radius: 0 20px 20px 0;
            border: 1px solid #e0e0e0;
        }

        .circle2 {
            position: absolute;
            right: -20px;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            width: 40px;
            height: 40px;
            background-color: white;
            border-radius: 50%;
            border-left: 1px solid #c0c0c0;
        }

        .bot_textwrap {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content:center;
            height: 100%;
        }

        .bot_mainT2 {
            color: #fece00;
            font-weight: 600;
            font-size: 16px;
        }

        .bot_subT2 {
            font-size: 2rem;
            font-weight: 600;
            /*padding-top: 5px;*/
            margin: 1rem 0px;
        }

        .ex_coupon_title2 {
            color: #fece00;
            font-weight: 600;
            font-size: 20px;
        }

        /*font*/
        .drkid-middle-font {
            font-size: 18px;
            font-weight: 700;
        }

        .drkid-lowerst-font {
            font-size:14px;
        }

        .event_drkid-lowerst-font {
            font-size: 0.45rem;
        }

         .mono_dea {
             color: #bbbbbb;
         }

         #hover6_wrap {
             display:none;
         }
        /*페이징관련*/
        .number-button-Area {
            padding: 2rem 0px;
        }
        .number-button-wrap {
            display: flex;
            justify-content: center;
        }

        /*event-font*/
        .event-lowst_font {
            font-size: 0.4rem;
        }

        .event-date_font {
            font-size: 0.5rem;
        }
        .icon_menu > span {
            color: #BBBBBB;
        }

        /*최하단 메뉴*/
        .m_bottom_wrap_inner > .icon_menu:first-child > span {
            color:#BBB;
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
     <script>
         var I_EVENT_PROGRESS = '<%=I_EVENT_PROGRESS%>';
         $(function () {
             $('#hover5').click(function () {
                 $('#hover5').css('color', 'white');
                 $('#hover5').css('background-color', '#115C5E');
                 $('#hover6').css('color', '#115C5E');
                 $('#hover6').css('background-color', '#fff');

                 $('#hover6_wrap').hide();
                 $('#hover5_wrap').css({
                     display: 'block',
                     position: 'relative',
                     top: '20px',
                     opacity: 0
                 }).animate({
                     top: '0px',
                     opacity: 1
                 }, 500);
             });
             $('#hover6').click(function () {
                location.href = "/Source/m/eventDetail/M_COUPON_LIST.aspx"
             });
             if (I_EVENT_PROGRESS != "" && I_EVENT_PROGRESS != null) {
                 switch (I_EVENT_PROGRESS) {
                     case "Y":
                         $(".event_Info").removeClass("clicked");
                         $("#event_Progress").addClass("clicked");
                         break;
                     case "N":
                         $(".event_Info").removeClass("clicked");
                         $("#event_End").addClass("clicked");
                         break;
                     default:
                         $(".event_Info").removeClass("clicked");
                         $("#event_ALL").addClass("clicked");
                         break;
                 }
             }
             $(".event_Info").click(function () {
                 var EVENT_PROGRESS = $(this).data("value");
                 $('[name="search_btn_click_flag"]').val('Y');
                 $('[name="EVENT_PROGRESS"]').val(EVENT_PROGRESS);
                 $('#flag').val('search');
                 aspnetForm.submit();
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
          <input type="text" name="flag" id="flag" value="" />
          <input type="text" name="search_btn_click_flag" id="search_btn_click_flag" value="" />
          <input type="text" name="EVENT_PROGRESS" value="<%=I_EVENT_PROGRESS%>" />
     </div>
    <div class="main_Box">
        <div class="Title_Area">
            <div class="main_Title_Txt">혜택존</div>
            <div class="sub_Title_Txt m_lower_font">닥터키드니 고객님들을 위한 특별한 혜택</div>
        </div>

        <div class="event_button1">
            <div class="event_button_content m_middle_font main_color event_firstbutton" id="hover5">
                <span>이벤트</span>
            </div>
            <div class="event_button_content m_middle-font main_color" id="hover6">
                <span>쿠폰</span>
            </div>
        </div>

        <%--전체 ,진행중이벤트 ,종료된 이벤트--%>
        <div class="event_Info_Area" id="hover5_wrap">
            <%--<div class="event_Info_Contents">
                <div class="event_Info_Contents_2 ">
                <div class="event_Info_area ">
                    <div class="event_Info clicked lowerst-font">전체</div>
                </div>
                    <div class="event_Info_area lowerst-font">
                    <div class="event_Info lowerst-font">진행중 이벤트</div>
                </div>
                    <div class="event_Info_area lowerst-font">
                    <div class="event_Info lowerst-font">종료된 이벤트</div>
                </div>
                </div>
            </div>--%>
            <%--전체 ,진행중이벤트 ,종료된 이벤트--%>
                <div class="event_Info_Area">
                    <div class="event_Info_Contents">
                        <%--<div class="event_Info_Contents_1">
                        <div class="event_Info_Title middle-font">이벤트&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</div>
                        </div>--%>
                        <div class="event_Info_Contents_2 ">
                        <div class="event_Info_area ">
                            <div class="event_Info clicked lowerst-font"data-value="*" id="event_ALL">전체</div>
                        </div>
                            <div class="event_Info_area lowerst-font">
                            <div class="event_Info lowerst-font" data-value="Y" id="event_Progress">진행중 이벤트</div>
                        </div>
                            <div class="event_Info_area lowerst-font">
                            <div class="event_Info lowerst-font" data-value="N" id="event_End">종료된 이벤트</div>
                        </div>
                        </div>
                    </div>
                    <%--이벤트 리스트--%>
                    <div class="event_Item_Area">
                        <div class="event_Item_List">
                            <%if (EVENT_LIST.Rows.Count > 0)
                        {%>
                            <%for (int i = 0; i < EVENT_LIST.Rows.Count; i++)
                            { %>
                                    <div class="event_Item_Wrap">
                                        <div class="event_Item"data-info="<%=EVENT_LIST.Rows[i]["BOARD_SID"]%>">
                                        <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=EVENT_LIST.Rows[i]["TARGET_READ_PATH"] %>'/>
                                        <%if (EVENT_LIST.Rows[i]["EVENT_PROGRESS"].ToString() == "Y")
                                        { %>
                                            <div class="event_flag_area">
                                                <div class="event_flag">EVENT</div>
                                            </div>
                                        <%}%> 
                                        <%else
                                        {%>
                                            <div class="event_End">
                                                <div class="event_flag">EVENT 종료</div>
                                            </div>
                                        <%}%>
                                    </div>                                            
                                        <div class="item_Info_1_Area">
                                            <div class="item_info_1 m_lowerst_font"> 
                                                <span class="data-info="<%=EVENT_LIST.Rows[i]["BOARD_SID"]%>"><%=EVENT_LIST.Rows[i]["BOARD_TITLE"]%></span>
                                            </div>
                                        </div>                                           
                                        <% if (EVENT_LIST.Rows[i]["REAL_EVENT_TO"].ToString().Length > 12)
                                        {%>
                                                <div class="item_info_2 main_color m_lowerst_font"><%=Convert.ToDateTime(EVENT_LIST.Rows[i]["EVENT_FROM"]).ToString("yyyy.MM.dd")%> ~ <%=Convert.ToDateTime(EVENT_LIST.Rows[i]["REAL_EVENT_TO"]).ToString("yyyy.MM.dd")%></div>
                                        <%}%>
                                        <%else
                                        {%>
                                                <% if (EVENT_LIST.Rows[i]["REAL_EVENT_TO"].ToString() == "EVENT_END")
                                                {%>
                                                        <div class="item_info_2 main_color m_lowerst_font"><%=Convert.ToDateTime(EVENT_LIST.Rows[i]["EVENT_FROM"]).ToString("yyyy.MM.dd")%> ~ 이벤트 종료 시</div>
                                                <%}%>
                                                <%else
                                                {%>
                                                        <div class="item_info_2 main_color m_lowerst_font"><%=Convert.ToDateTime(EVENT_LIST.Rows[i]["EVENT_FROM"]).ToString("yyyy.MM.dd")%> ~ 쿠폰 소진 시</div>
                                                <%}%>
                                        <%}%>
                             
                                    </div>
                            <%}%>
                        <%}%>
                        </div>
                    </div>
                </div>
            </div>

            <%--페이징--%>
            <div class="pageNavigationStr" style="padding: 2rem 0px;">
                <%=pageNavigationStr%>
            </div>
    </div>
</asp:Content>
