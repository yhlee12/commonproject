<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_INQUERY.aspx.cs" Inherits="drKid.Source.m.my.M_M_INQUERY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #m_moblie_wrap {
            padding: 1rem 15PX 2rem;
        }
        .m_header { 
            display:none;
        }

        .helpDeskList_wrap {
            padding: 0 15px;
        }

        .Title_Area {
            text-align:center;
            padding: 0px 0px 1rem 0px;
        }
        .main_Title_Txt {
            font-weight:600;
            padding: 0.5rem 0px;
        }
         .sub_Title_Txt {
            color:#9F9F9F;
        }
        .main_Label_Area {
            display: flex;
            justify-content: center;
            gap:0.5rem;
        }

        .main_Label {
            text-align:center;
            padding: 0.2rem 0.7rem;
            border: 1px solid var(--m_mono_color);
        }

        .main_Label_Area > .main_Label:nth-child(3) {
            color:#fff;
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
            padding:0.2rem;
            text-align:center;
            border-radius:8px;
            margin-top: 0.5rem;
            cursor:pointer;
        }

        .dateBox {
            padding: 0.5rem 0;
        }

        .drkid-select {
            display:block;
            border: 1px solid #E2E2E2;
            height: 1.5rem;
            border-radius: 6px;
            padding-left: 0.5rem;
        }

        .inquery_list_content_top {
            display: flex;
            align-items: center;
            gap: 0.2rem;
            font-weight: 500;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            word-break: break-all;
        }

        .inquery_list_content_bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 0.2rem;
        }

        .inquery_list_content_bottom_id {
            font-weight: 500;
        }

        .inquery_list_content_bottom_date {
            display: flex;
            gap: 0.4rem;
            font-weight: 500;
        }

        .inquery_list_content {
            padding: 0.4rem 0;
            border-bottom: 2px solid #e2e2e2;
        }
        .main_Box {
            max-width: 740px;
            margin: 0 auto;
        }
        .Title_Area {
            text-align:center;
            padding: 0px 0px 40px 0px;
        }
       
        .main_Label {
            text-align: center;
            padding: 0.2rem 0.7rem;
            border: 1px solid var(--m_mono_color);
        }
        

        .hd_Wrap {
            border-top: 1px solid var(--mono_line);
        }
        .hd_List_Column_Area {
            display: flex;
            padding: 15px 40px;
            background: #F9F9F9;
            text-align: center;
            width:100%;
            border-top: 1px solid #262626;
        }
        
        .hd_List_Column {
            font-weight:500;
        }
        .hd_List_Row_Area {
            width: 100%;
            padding: 0.3rem 0;
            border-bottom: 1px solid var(--mono_line);
        }
        .hd_List_Row {
            text-align: center;
            cursor:pointer;
        }

        .hd_List_Row_1_Area {

        }

        .hd_List_Row_2_Area{
            display: flex;
            align-items: center;
        }
        .hd_List_Row_3_Area {
            /*width:50%;*/
            justify-content: start;
            display: flex;
            align-items: center;
            gap: 0px 5px;
            /*width: 138px;*/
        }
        .hd_List_Row_5_Area {
            width:10%;
        }

        .hd_List_Row_1 {
            color:#828282;
            /*cursor:pointer;*/
        }
        .hd_List_Row_1_1 {
            font-weight: 400;
            cursor:pointer;
        }
        .hd_List_Row_1_2 {
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
        .hd_List_Row_2_1 {
             text-align: start;
         }
        .hd_List_Row_2_1_1 {
            color:#9F9F9F;
            font-weight: 400;
        }
        .hd_List_Row_2_1_2 {
            font-weight:500;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            overflow: hidden;
            /*width:350px;*/
        }
         .hd_List_Row_3 {
            font-weight: 400;
            color:#828282;
         }
         .hd_List_Row_4 {
             font-weight: 500;
         }
        .hd_List_Row_4_1 {
            font-weight:400;
        }
        .hd_List_Row_5 {
            font-weight:500;
            width: 90px;
            color: #115C5E;
            border: 1px solid #115C5E;
            margin: auto;
            padding: 3px 0px;
            cursor:pointer;

        }
        .hd_List_Row_5_1 {
            font-weight:500;
            border: 1px solid #115C5E;
            background: #115C5E;
            color: #ffffff;
            width: 90px;
            margin: auto;
            padding: 3px 0px;
            cursor:pointer;
        }
        /*.hd_List_Filed {
            width:1000px;
             
        }*/
       
         .hd_List_Title_Area {
            display: flex;
            justify-content: end;

         }
         .helf_Desk_Request_Btn {
            color: #115C5E;
            font-weight: 400;
            height: 40px;
            line-height: 40px;
            width: 188px;
            text-align: center;
            border: 1px solid #115C5E;
            cursor:pointer;
         }
         .order_Search_Ui {
             padding-top: 0.5rem;
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
            min-width: 20%;
            height: 1.5rem;
            border-radius: 6px;
            background: var(--main_color);
            text-align: center;
            padding: 4px 0px;
            color: #ffffff;
            cursor: pointer;
        }
        .area_gap{
            padding-top:10px;
        }
        .search-word-input-arae{
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        #I_SEARCH_TITLE{
            min-width: 75%;
            height: 1.5rem;
            border-radius:6px;
        }
        .order_Count {
            font-weight:500;
        }
        .order_List_Title {
            color:#8F8F8F;
            font-weight:500;
        }
         #lock_Icon {
            display: block;
            font-size: 14px !important;
         }

         /*모달 팝업창 css*/

        #pop-modal-wraper{
            /*border-block: 2px solid var(--mono_line);
            padding:15px 0;*/
            margin : 15px 0 ;
        }

        .product_search_wrap{
            display: flex;
            padding: 1rem 0;
            width: 80%;
            margin: auto;
        }
        .user-search-btn{
            padding: 5px 10px;
            min-width: 95px;
            min-height: 40px;
            margin-left: 10px;
        }
        .search_radio_area{
            padding: 15px 0px;
        }

        .search_btn_wrap{
            text-align: center;
            padding: 10px 0px;
        }
        .modal {
            display: none;
            position: fixed;
            z-index: 999;
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
        .add-user-name{
            font: normal normal 600 20px/24px Pretendard;
            color: #262626;
        }
        .user_id_div{
            overflow: hidden;  		
            text-overflow: ellipsis;
            white-space: nowrap; 	
            word-break:break-all;
        }
        .modal-content {
            display: flex;
            flex-direction: column;
            /*gap: 0.5rem;*/
            background-color: #fefefe;
            margin: 15% auto;
            padding: 1rem 0.5rem;
            border: 1px solid #c1c1c1;
            width: 80%;
            max-width: 425px;
            border-radius: 10px;
        }
        .modal-content_header {
            border-bottom: 1px solid var(--mono_line);
        }
        .modal_txt {
            text-align:center;
        }
        .modal-input{
            padding: 20px 10px;
            border-radius: 4px;
            width:100%;
        }
        .modal-btn-font{
            font-weight :400;
        }
        .pop_search_btn {
        }
        .pop_reset_btn{

        }
        .pop_small_btn{

        }
        .modal_search_field{
            width:100%;
        }
        #pop-modal-btn-wraper{
            display:flex;
            justify-content: center;
        }
        #pop-modal-btn-wraper >.drkid-btn-sub2{
            /*min-width: 120px;
            min-height: 50px;*/
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
        .user-close {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }
        .user-close:hover,
        .user-close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        .pass_guide{
            display: flex;
            align-items: center;
            justify-content: center;
            height: 35px;
            padding: 15px 0 0px 0;
        }
        .no_pass{
            color: var(--drkid_alert_negative);
            font-size: 16px;
            font-weight: normal;
        }
        /*모달 팝업창 css 끝*/

        .no_pass {
          display: inline-block;
          transform-origin: center;
          padding: 0 0.5rem;
          animation: animate 0.5s 1;
        }
        
        @keyframes animate {
          0% {
            transform: scale(1);
          }
          50% {
            transform: scale(1.05);
          }
          100% {
            transform: scale(1);
          }
        }

        /*페이징관련*/
        .number-button-Area {
            padding: 2rem 0px;
        }
        .number-button-wrap {
            display: flex;
            justify-content: center;
        }
        .paging {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .topArea {
            display:flex;
            align-items:center;
        }
        .bottomArea {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .bottomRight {
            display:flex;
            align-items:center;
            gap: 0.5rem;
        }
        .drkid-select-div {
            display:none;
        }
        .product_search_wrap > input {
            border-radius: 6px;
        }
        .category  {
            font-weight: 500;
        }
        .one_prev {
            margin-right: 0;
        }
    </style>

    <script>
        $(document).ready(function () {
            $("#search_Btn").on("click", function () {
                //리스트 조회
                $("#search_btn_click_flag").val("Y");
                $("#aspnetForm").submit();
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
                    var formattedDate = StartDate.toISOString().split('T')[0];//'YYYY-MM-DD'
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

            //1:1 문의하기 버튼 
            $("#helf_Desk_Request_Btn").click(function () {
                location.href = "/Source/m/my/M_M_INQUERY_WRITE.aspx";
            });
            //문의글 클릭 시 문의 디테일 페이지 이동
            $(".hd_List_Row").click(function () {
                var bsid = $(this).attr("id");

                console.log(bsid);
                $("#click_bsid").val(bsid);
                location.href = "/Source/m/my/M_M_INQUERY_WRITE_DETAIL.aspx?bsid=" + bsid;
            });

            // 작성자 id 4번째 자리 이후부터 *로 표시
            $(".user_id").each(function () {
                var text = $(this).text();
                if (text.length > 4) {
                    var shortenedText = text.substring(0, 4) + '*'.repeat(text.length - 4);
                    $(this).text(shortenedText);
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <span>나의 1:1문의</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
            <%--1:1문의 추가 버튼--%>
            <div class="add_button">
                <div class="add_button_wrap">
                    <div class="add_button_wrap_button main_bg_color" id="helf_Desk_Request_Btn">
                        <span class="m_middle_font">1:1 문의하기</span>
                    </div>
                </div>
            </div>
            <%--1:1문의 selectbox--%> 
            <div class="dateBox">
                <div class="block-example">
                   <%-- <div class="middle-font underline_block_example">fake select box</div>--%>
                    <select class="drkid-select m_lower_font" style="width:100%;" data-font-class="lower-font" data-styles='{"width":"500px","height":"40px"}'>
                        <option>전체</option>
                        <option>최근 30일</option>
                        <option>최근 7일</option>
                        <option>익일</option>
                    </select>
                </div>
                 <%--1:1 문의 조회UI--%>
                <div class="order_Search_Ui_Area">        
                    <div class="order_Search_Ui">    
                        <%--제목 검색--%>
                        <div class="search-word-input-arae">
                            <input type="text" class="drkid-input  m_lower_font" name="I_SEARCH_TITLE" id="I_SEARCH_TITLE" value="<%=I_SEARCH_TITLE %>" placeholder="제목을 입력해주세요." autocomplete="off" maxlength="30" />
                            <div class="search_Date_Btn m_lower_font" id="search_Btn">조회</div>
                        </div>
                    </div>
                </div>
            </div>
             <%--1:1 문의 조회 UI, 문의리스트 전체 영역--%>
            <div class="Bottom_Area">
                <%--문의리스트 리스트 전체 영역--%>
                <div class="hd_Area">
                    <%-- <div class="hd_List_Title_Area">
                        <div class="helf_Desk_Request_Btn lowerst-font" id="request_edit_btn">1:1문의하기</div>
                    </div>--%>
                    <%--리스트--%>
                    <div class="hd_Wrap">
                        <div class="hd_List_Area">
                            <%--문의리스트 리스트--%>
                            <div class="hd_List">
                             
                                <%--문의 리스트 내용--%>
                                <div class="hd_List_Filed">
                                    <%-- 없을때--%>
                                    <%--<div class="new_Order_List_Empty lowerst-font">게시글이 존재하지 않습니다.</div>--%>
                                    <%if (CS_LIST == null)
                                        {%>

                                    <%} %>
                                    <%else
                                        { %>
                                    <%for (int i = 0; i < CS_LIST.Rows.Count; i++)
                                        { %>
                                    <div class="hd_List_Row_Area">
                                        <input type="hidden" id="pass_<%=CS_LIST.Rows[i]["BOARD_SID"] %>" value="<%=CS_LIST.Rows[i]["BOARD_PASSWORD"] %>" />
                                        <div class="hd_List_Row" id="<%=CS_LIST.Rows[i]["BOARD_SID"] %>">
                                            <%--상단 영역--%>
                                            <div class="topArea">
                                                    
                                                <%--문의글 제목--%>
                                                <div class="hd_List_Row_3_Area">
                                                    <div class="hd_List_Row_2">
                                                        <%--이미지--%>
                                                        <%--<img src="/Source/client/image/magazine_list_test1.png" class="new_Order_List_Row_img">--%>
                                                        <span class="material-icons-outlined" id="lock_Icon">lock</span>
                                                    </div>
                                                    <%--상품명/옵션 1개일 경우--%>
                                                    <div class="hd_List_Row_2_Area">
                                                        <div class="hd_List_Row_3 m_middle_font">
                                                            <% for (int j = 0; j < BOARD_CATEGORY.Rows.Count; j++)
                                                                { %>
                                                            <%if (CS_LIST.Rows[i]["BOARD_CATEGORY"].ToString() == BOARD_CATEGORY.Rows[j]["CODE_CODE"].ToString())
                                                                {%>
                                                            <div class="category lowerst-font">[<%=BOARD_CATEGORY.Rows[j]["CODE_NAME"] %>]</div>
                                                            <% } %>
                                                            <%else
                                                                { %>
                                                            <% } %>
                                                            <%} %>
                                                        </div>
                                                    </div>
                                                    <div class="hd_List_Row_2_1">
                                                        <div class="hd_List_Row_2_1_2 m_middle_font"><%=CS_LIST.Rows[i]["BOARD_TITLE"] %></div>
                                                    </div>
                                                </div>
                                            </div>
                                                
                                            <div class="bottomArea">
                                                <%--작성자--%>
                                                <div class="hd_List_Row_4_Area">
                                                    <%if (CS_LIST.Rows[i]["BOARD_USER_TYPE"].ToString() == "01")
                                                        { %>
                                                    <div class="hd_List_Row_4 m_lower_font">비회원</div>
                                                    <%}%>

                                                    <%else
                                                        { %>
                                                    <div class="hd_List_Row_4 m_lower_font user_id"><%=CS_LIST.Rows[i]["BOARD_WRITE_NM"].ToString() %></div>
                                                    <%}%>
                                                </div>
                                                <div class="bottomRight">
                                                    <div class="hd_List_Row_4_Area">
                                                        <% for (int j = 0; j < POST_STATUS.Rows.Count; j++)
                                                               { %>
                                                            <%if (CS_LIST.Rows[i]["POST_STATUS"].ToString() == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                                              {%>
                                                            <%if ("R" == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                                              {%>
                                                            <div class="hd_List_Row_4 m_lower_font "><%=POST_STATUS.Rows[j]["CODE_NAME"] %></div>
                                                            <% } %>
                                                            <%if ("W" == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                                              {%>
                                                            <div class="hd_List_Row_4 m_lower_font main_color "><%=POST_STATUS.Rows[j]["CODE_NAME"] %></div>
                                                            <% } %>
                                                            <%if ("L" == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                                              {%>
                                                            <div class="hd_List_Row_4 m_lower_font drkid_Negative_color"><%=POST_STATUS.Rows[j]["CODE_NAME"] %></div>
                                                            <% } %>
                                                            <% } %>
                                                            <%else
                                                              { %>
                                                            <% } %>
                                                            <%} %>
                                                    </div>                                              
                                                    <%--날짜,주문번호--%>
                                                    <div class="hd_List_Row_1_Area">
                                                        <div class="hd_List_Row_1 m_lower_font"><%=CS_LIST.Rows[i]["POST_DATE"].ToString().Substring(0, 10).Replace("-",".").Replace("-",".") %></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%} %>


                                    <%} %>
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
        <div class="pageNavigationStr">
            <%=pageNavigationStr%>
        </div>
    </div>
</asp:Content>
