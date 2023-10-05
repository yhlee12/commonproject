﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_CS_HELPDESKLIST.aspx.cs" Inherits="drKid.Source.client.cs.C_CS_HELPDESKLIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
         #sub_content {
            padding: 7rem 0;
            position: relative;
            z-index: 1;
        }
         #content{
             width:998px;
             margin:auto;
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
            max-width: 740px;
            margin: 0 auto;
        }
        .Title_Area {
            text-align:center;
            padding: 0px 0px 40px 0px;
        }
        .main_Title_Txt {
            font-weight:600;
            padding: 15px 0px;
            font-size:30px;
        }
         .sub_Title_Txt {
            color:#9F9F9F;
        }

        .main_Label_Area {
            display: flex;
            justify-content: center;
            gap:0px 20px;
        }
        .main_Label_1 {
            background: #FFFFFF; 
            border: 1px solid #D8D8D8;
            padding: 9px 0px;
            width: 127px;
            text-align: center;
            cursor:pointer;
        }
        .main_Label_1:hover{
             color:#FFFFFF;
             background:#115C5E;
        }
        .main_Label_2 {
            background: #FFFFFF; 
            border: 1px solid #D8D8D8;
            padding: 9px 0px;
             width: 92px;
            text-align: center;
            cursor:pointer;
        }
        .main_Label_2:hover{
             color:#FFFFFF;
             background:#115C5E;
        }
        .main_Label_3 {
             width: 92px;
            text-align: center;
            padding: 9px 0px;
            background:#115C5E;
            border: 1px solid #D8D8D8;
            cursor:pointer;
            color:#FFFFFF;
        }
        .KeyDni_Top_Title {
            font-size:28px;
            height:49px;
            font-weight:600;
            margin-top:70px;
            border-bottom:1px solid #262626;
        }

          .hd_Wrap {
            padding:15px 0px 0px 0px;
            width:1000px;
        }
        .hd_List_Column_Area {
            display: flex;
            padding: 15px 40px;
            background: #F9F9F9;
            text-align: center;
            width:100%;
            border-top: 1px solid #262626;
        }
        .hd_List_Column_1_Area {
            width:15%;
            /*width: 179.69px;*/
        }
        .hd_List_Column_2_Area {
            width:15%;
            /*width: 484.64px;*/
        }
        .hd_List_Column_3_Area {
            width:50%;
            /*width: 146.68px;*/
        }
        .hd_List_Column_4_Area {
            width:10%;
            /*width: 99.8px;*/
        }
        .hd_List_Column_5_Area {
            width:10%;
            /*width: 99.8px;*/
        }
        .hd_List_Column {
            font-weight:500;
        }
        .hd_List_Row_Area {
            width: 100%;
        }
        .hd_List_Row {
            display: flex;
            padding: 10px 40px;
            align-items: center;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
            cursor:pointer;
        }
        .hd_List_Row_null_Area {
            width:100%;
            height: 100px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .hd_List_Row_1_Area {
            width:15%;
            /*cursor:pointer;*/
            /*width: 179.69px;*/
        }
        /*.new_Order_List_Row_2_Area_Wrap {
            display: grid;
            gap: 5px 0px;
        }*/
        .hd_List_Row_2_Area{
            width:15%;
            text-align:center;
        }
        .hd_List_Row_3_Area {
            width:50%;
            justify-content: start;
            display: flex;
            align-items: center;
            gap: 0px 5px;
            /*width: 138px;*/
        }
        .hd_List_Row_4_Area {
            width:10%;
            /*width: 92px;*/
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
            width:350px;
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
        .hd_List_Filed {
            width:1000px;
             
        }
       
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
        .hd_Area {
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
        .area_gap{
            padding-top:10px;
        }
        .search-word-input-arae{
            display: flex;
            align-items: center;
            gap: 0px 30px;
        }
        #I_SEARCH_TITLE{
            height: 30px;
            width: 39%;
        }
        .order_Count {
            font-weight:500;
        }
        .order_List_Title {
            color:#8F8F8F;
            font-weight:500;
        }
         #lock_Icon {
            font-size: 16px !important;
            line-height: 28px;
         }

         /*모달 팝업창 css*/

        #pop-modal-wraper{
            border-block: 2px solid var(--mono_line);
            padding:15px 0;
            margin : 15px 0 ;
        }

        .product_search_wrap{
            display:flex;
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
            background-color: #fefefe;
            margin: 15% auto;
            padding: 21px 20px;
            border: 1px solid #c1c1c1;
            width: 80%;
            max-width: 425px;
            border-radius: 10px;
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
            min-width: 120px;
            min-height: 50px;
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
            padding: 100px 0px;
        }
        .number-button-wrap {
            display: flex;
            justify-content: center;
        }
        
    </style>
    <script>
        $(function () {

            $("#search_Btn").on("click", function () {
                //리스트 조회
                $("#search_btn_click_flag").val("Y");
                $("#form1").submit();

            });

            //자주 묻는 질문 페이지 이동
            $(".main_Label_1").click(function () {
                location.href = "/Source/client/cs/C_CS_QUESTIONLIST.aspx"
            });
            //공지사항 페이지 이동
            $(".main_Label_2").click(function () {
                location.href = "/Source/client/cs/C_CS_NOTICELIST.aspx"
            });
            //1:1문의 페이지 이동
            $(".main_Label_3").click(function () {
                location.href = "/Source/client/cs/C_CS_HELPDESKLIST.aspx"
            });


            //조회 ui 오늘,7일 등 누르면
            $(".search_Period").click(function () {
                var Today = new Date();
                //클릭된 css적용
                $(".search_Period").removeClass("clicked");
                $(this).addClass("clicked");
                var format_data_value = $(this).data('value');// today,7,15 등등
                $("#format_data_value").val(format_data_value);
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
            if ("<%=search_btn_click_flag%>" == "") {
                var today = new Date();
                var formatted_today = today.toISOString().split('T')[0];
                $('#I_DATE_END').val(formatted_today);
                //시작일 초기화
                var startDate = new Date(today);
                startDate.setDate(startDate.getDate() - 7);
                var formatted_start_date = startDate.toISOString().split('T')[0];
                $('#I_DATE_START').val(formatted_start_date);
            }
            //검색 날짜 조건 유지
            if ("<%=search_btn_click_flag%>" == "Y") {
                $(".search_Period").removeClass("clicked");
                var gap_date = "<%=format_data_value%>";
                var target_date = $('.search_Period[data-value=' + gap_date + ']');
                $(target_date).addClass("clicked");
            }
          
            //1:1 문의하기 버튼 
            $("#request_edit_btn").click(function () {
                //문의 전 로그인 체크
                <%--var UserName = "<%=baseUser.userName%>";
                if (UserName == "") {
                    var OkCallBack = function () {
                        location.href = "/Source/client/member/login/C_LOGIN_Page.aspx";
                    }
                    var esrrorCallBack = function (ex) {
                    }
                    _popModal.Promt('로그인이 필요한 서비스입니다', '로그인 화면으로 이동하시겠습니까?', OkCallBack, esrrorCallBack);
                }
                else {
                    location.href = "/Source/client/cs/C_CS_HELPDESKREQUEST.aspx";
                }--%>
                location.href = "/Source/client/cs/C_CS_HELPDESKREQUEST.aspx";
            });
            //문의글 클릭 시 문의 디테일 페이지 이동
            $(".hd_List_Row").click(function () {
                var bsid = $(this).attr("id");

                console.log(bsid);
                $("#click_bsid").val(bsid);

                $("#modal").css("display", "block");
                //location.href = "/Source/client/cs/C_CS_HELPDESKDETAIL.aspx?bsid=" + bsid;
            });
            $("#user_enter_btn").on("click", function () {
                var bsid = $("#click_bsid").val();
                var m_input = $("#board_password").val();
                var pass = $("#pass_"+bsid).val();
                console.log(bsid);
                console.log(m_input);
                console.log(pass);
                if (m_input == pass) {
                    location.href = "/Source/client/cs/C_CS_HELPDESKDETAIL.aspx?bsid=" + bsid;
                }
                else {
                    $(".pass_guide").show();
                    $(".no_pass").show();
                    setTimeout(function () {
                        $(".no_pass").hide();
                    }, 5000);
                }
            });


            // 작성자 id 4번째 자리 이후부터 *로 표시
            $(".user_id").each(function () {
                var text = $(this).text();
                if (text.length > 4) {
                    var shortenedText = text.substring(0, 4) + '*'.repeat(text.length - 4);
                    $(this).text(shortenedText);
                }
            });

            // 팝업 닫기 버튼
            var modal_input = $(".modal-input");
            var closeButtons = document.getElementsByClassName("closeBtn");
            for (var i = 0; i < closeButtons.length; i++) {
                closeButtons[i].addEventListener("click", function () {
                    modal.style.display = "none";
                    $(".pass_guide").hide();
                    modal_input.val(null);
                });
            }

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content" style="">
        <input type="hidden" id="click_bsid" name="click_bsid" value="" />
        <input type="hidden" id="search_btn_click_flag" name="search_btn_click_flag" value="" />
        <input type="hidden" id="format_data_value" name="format_data_value" value="" />
        
        <div class="sub_layout">
            <div id="content">
                <%--타이틀~자주묻는 질문,공지사항 ui까지--%>
                <div class="main_Box">
                    <div class="Title_Area">
                        <div class="main_Title_Txt">고객센터</div>
                        <div class="sub_Title_Txt lower-font">닥터키드니 고객센터입니다. 무엇을 도와드릴까요?</div>
                    </div>
                    <div class="main_Label_Area">
                        <div class="main_Label_1 lower-font">자주 묻는 질문</div>
                        <div class="main_Label_2 lower-font">공지사항</div>
                        <div class="main_Label_3 lower-font">1:1문의</div>
                    </div>
                </div>
                <%--1:1 문의 조회 UI, 문의리스트 전체 영역--%>
                <div class="Bottom_Area">
                    <%--1:1 문의 조회UI--%>
                    <div class="order_Search_Ui_Area">
                        <div class="order_Search_Ui_Title_Area">
                            <div class="progress_Order_Title KeyDni_Top_Title">1:1 문의</div>
                        </div>
                        <div class="order_Search_Ui">
                            <div class="lowerst-font">조회기간</div>
                            <%--검색 ui 클릭 가능한 요소들의 영역--%>
                            <div class="search_Ui_Layout">
                                <div class="search_Period_Area">
                                    <div class="search_Period lowerst-font" data-value="today">오늘</div>
                                    <div class="search_Period lowerst-font clicked" data-value="7">7일</div>
                                    <div class="search_Period lowerst-font" data-value="15">15일</div>
                                    <div class="search_Period lowerst-font" data-value="30">1개월</div>
                                    <div class="search_Period lowerst-font" data-value="90">3개월</div>
                                    <div class="search_Period lowerst-font" data-value="365">1년</div>
                                </div>
                                <div class="search_Date_Area">
                                    <%--<div class="search_Date"></div>--%>
                                    <%--시작,종료날짜 ui 영역--%>
                                    <div class="date_Ui_Area">
                                        <%--시작날짜--%>
                                        <div class="datePicker lower-font" style="width: 170px;">
                                            <input type="text" value="<%=I_FROM_DATE %>" class="datePicker-input" placeholder="PlaceHolder입니다." name="I_FROM_DATE" data-picker-count="2" id="I_DATE_START" />
                                            <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                        </div>
                                        <div>&nbsp&nbsp~&nbsp&nbsp</div>
                                        <%--종료날짜--%>                 
                                        <div class="datePicker lower-font" style="width: 170px;">
                                            <input type="text" value="<%=I_TO_DATE %>" class="datePicker-input" placeholder="PlaceHolder입니다." name="I_TO_DATE" data-picker-count="2" id="I_DATE_END" />
                                            <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--제목 검색--%>
                            <div class="lowerst-font area_gap">제목검색</div>
                            <div class="search-word-input-arae">
                                <input type="text" class="drkid-input lowerst-font" name="I_SEARCH_TITLE" id="I_SEARCH_TITLE" value="<%=I_SEARCH_TITLE %>" placeholder="제목을 입력해주세요." autocomplete="off" maxlength="30" />
                                <div class="search_Date_Btn lowerst-font" id="search_Btn">조회</div>
                            </div>
                        </div>
                    </div>
                    <%--문의리스트 리스트 전체 영역--%>
                    <div class="hd_Area">
                        <div class="hd_List_Title_Area">
                            <div class="helf_Desk_Request_Btn lowerst-font" id="request_edit_btn">1:1문의하기</div>
                        </div>
                        <%--리스트--%>
                        <div class="hd_Wrap">
                            <div class="hd_List_Area">
                                <%--문의리스트 리스트--%>
                                <div class="hd_List">
                                    <%--문의리스트  컬럼 (문의날짜,카테고리,제목,문의상태)--%>
                                    <div class="hd_List_Column_Area">
                                        <div class="hd_List_Column_1_Area">
                                            <div class="hd_List_Column lowerst-font">문의날짜</div>
                                        </div>
                                        <div class="hd_List_Column_2_Area">
                                            <div class="hd_List_Column lowerst-font">카테고리</div>
                                        </div>

                                        <div class="hd_List_Column_3_Area">
                                            <div class="hd_List_Column lowerst-font">제목</div>
                                        </div>
                                        <div class="hd_List_Column_4_Area">
                                            <div class="hd_List_Column lowerst-font">문의상태</div>
                                        </div>
                                        <div class="hd_List_Column_5_Area">
                                            <div class="hd_List_Column lowerst-font">작성자</div>
                                        </div>
                                    </div>
                                    <%--문의 리스트 내용--%>
                                    <div class="hd_List_Filed">
                                        <%-- 없을때--%>
                                        <%--<div class="new_Order_List_Empty lowerst-font">게시글이 존재하지 않습니다.</div>--%>
                                        <%if (CS_LIST.Rows.Count < 1)
                                          {%>
                                        <div class="hd_List_Row_Area">
                                            <div class="hd_List_Row_null_Area">
                                                <div class="hd_List_Row_1 lowerst-font">최근 7일내에 등록된 문의가 없습니다.</div>
                                            </div>
                                        </div>
                                        <%} %>
                                        <%else
                                          { %>
                                        <%for (int i = 0; i < CS_LIST.Rows.Count; i++)
                                          { %>
                                        <div class="hd_List_Row_Area">
                                            <input type="hidden" id="pass_<%=CS_LIST.Rows[i]["BOARD_SID"] %>" value="<%=CS_LIST.Rows[i]["BOARD_PASSWORD"] %>" />
                                            <div class="hd_List_Row" id="<%=CS_LIST.Rows[i]["BOARD_SID"] %>">
                                                <%--날짜,주문번호--%>
                                                <div class="hd_List_Row_1_Area">
                                                    <div class="hd_List_Row_1 lowerst-font"><%=CS_LIST.Rows[i]["POST_DATE"].ToString().Substring(0, 10).Replace("-",".").Replace("-",".") %></div>
                                                </div>
                                                <%--상품명/옵션 1개일 경우--%>
                                                <div class="hd_List_Row_2_Area">
                                                    <div class="hd_List_Row_3 lowerst-font">
                                                        <% for (int j = 0; j < BOARD_CATEGORY.Rows.Count; j++)
                                                           { %>
                                                        <%if (CS_LIST.Rows[i]["BOARD_CATEGORY"].ToString() == BOARD_CATEGORY.Rows[j]["CODE_CODE"].ToString())
                                                          {%>
                                                        <div class="lowerst-font"><%=BOARD_CATEGORY.Rows[j]["CODE_NAME"] %></div>
                                                        <% } %>
                                                        <%else
                                                          { %>
                                                        <% } %>
                                                        <%} %>
                                                    </div>
                                                </div>
                                                <%--문의글 제목--%>
                                                <div class="hd_List_Row_3_Area">

                                                    <div class="hd_List_Row_2">
                                                        <%--이미지--%>
                                                        <%--<img src="/Source/client/image/magazine_list_test1.png" class="new_Order_List_Row_img">--%>
                                                        <span class="material-icons-outlined" id="lock_Icon">lock</span>
                                                    </div>
                                                    <div class="hd_List_Row_2_1">
                                                        <div class="hd_List_Row_2_1_2 lowerst-font"><%=CS_LIST.Rows[i]["BOARD_TITLE"] %></div>
                                                    </div>
                                                </div>
                                                <%--문의상태--%>
                                                <div class="hd_List_Row_4_Area">
                                                    <% for (int j = 0; j < POST_STATUS.Rows.Count; j++)
                                                       { %>
                                                    <%if (CS_LIST.Rows[i]["POST_STATUS"].ToString() == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                                      {%>
                                                    <%if ("R" == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                                      {%>
                                                    <div class="hd_List_Row_4 lowerst-font "><%=POST_STATUS.Rows[j]["CODE_NAME"] %></div>
                                                    <% } %>
                                                    <%if ("W" == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                                      {%>
                                                    <div class="hd_List_Row_4 lowerst-font main_color "><%=POST_STATUS.Rows[j]["CODE_NAME"] %></div>
                                                    <% } %>
                                                    <%if ("L" == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                                      {%>
                                                    <div class="hd_List_Row_4 lowerst-font drkid_Negative_color"><%=POST_STATUS.Rows[j]["CODE_NAME"] %></div>
                                                    <% } %>
                                                    <% } %>
                                                    <%else
                                                      { %>
                                                    <% } %>
                                                    <%} %>
                                                </div>
                                                <%--작성자--%>
                                                <div class="hd_List_Row_4_Area">
                                                    <%if (CS_LIST.Rows[i]["BOARD_USER_TYPE"].ToString() == "01")
                                                      { %>
                                                    <div class="hd_List_Row_4 lowerst-font">비회원</div>
                                                    <%}%>

                                                    <%else
                                                      { %>
                                                    <div class="hd_List_Row_4 lowerst-font user_id"><%=CS_LIST.Rows[i]["BOARD_WRITE_NM"].ToString() %></div>
                                                    <%}%>
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
                <%--페이징--%>

                <div class="number-button-Area">
                    <div class="pageNavigationStr" style="padding: 50px 0px;">
                        <%=pageNavigationStr%>
                    </div>
                    <%--<div class="number-button-wrap">
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
                    </div>--%>
                </div>

                <div id="modal" class="modal">
                    <div class="modal-content">
                        <div>
                            <span class="pop-modal-title">비밀번호 입력</span>
                            <span class="clear-icon drkid-icon close closeBtn"></span>
                        </div>
                        <div id="pop-modal-wraper">
                            <div class="product_search_wrap">
                                <input type="password" autocomplete="off" id="board_password" name="board_password" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="" maxlength="50" />
                            </div>
                            <div class="pass_guide" style="display:none;">
                                <label class="no_pass">비밀번호가 틀렸습니다.다시 입력해주세요.</label>
                            </div>
                        </div>
                        <div id="pop-modal-btn-wraper">
                            <div class="drkid-btn-sub2 drkid-btn-active admin_save_Btn findEnterkey" id="user_enter_btn">
                                <span class="middle-font modal-btn-font">확인</span>
                            </div>
                            <div class="drkid-btn-sub2 closeBtn">
                                <span class="middle-font modal-btn-font">취소</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
</asp:Content>
