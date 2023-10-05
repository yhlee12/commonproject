<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_CUPOINT_COUPON_LIST.aspx.cs" Inherits="drKidAdmin.Source.admin.cupoint.A_CUPOINT_COUPON_LIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sub-content-wrap_custom {
            /*padding: 20px 0px;*/
            width: 100%;
            min-height: 175px;
        }
        .liner-icon-wraper {
            border-left: none;
            padding-left: 10px;
        }
        .sub-content-select-ui-area {
            height: 144px;
            background: #F8F9FD;
        }
        .sub-content-select-ui {
            height: 100%;
            padding: 12px 30px;
            width: 100%;
        }
        .category-area ,.search-word-area {
            display: flex;
            align-items: center;
            width: 100%;
            padding: 10px 0px;
        }
        .category-info {
            width: 11.5%;
            font-weight: 400;
        }
        .category_wrap {
            display: flex;
            width: 86.6%;
            align-items: center;
            gap: 0px 30px;
        }
        .radio-txt {
            color: #707070;
        }
        .search-word-input-arae {
            width: 468px;
             height: 35px;
        }
        #I_TITLE {
             width: 100%;
             height: 100%;
        }
        #I_TITLE::placeholder {
            color: #D8D8D8;
        }
        .sub-content-wrap_custom_btn_area {
            padding: 25px 0px 20px 0px;
            display: flex;
            gap: 0px 15px;
            justify-content: center;
        }
        #custom_btn_search {
            width: 80px;
            height: 32px;
            line-height: 32px;
            color: #ffffff;
            background: var(--main_color);
            text-align: center;
            cursor:pointer;
        }
        #custom_btn_reset {
            width: 80px;
            text-align: center;
            height: 32px;
            line-height: 32px;
            border: 1px solid #E2E2E3;
            cursor:pointer;
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
        .search_Period_Area {
            display: flex;
            gap: 0px 15px;
        }
        .search_Period {
            border: 1px solid #CCCCCC;
            color: #8F8F8F;
            background-color:white;
            padding: 3.2px 11px;
            cursor:pointer;
        }
       .clicked {
             border:1px solid var(--main_color);
             color:var(--main_color);
        }
        .edit_Btn {
            font-size: 12px;
            color: #ffffff;
            width: 40%;
            min-width: 46px;
            height: 28px;
            background: #115C5E;
            text-align: center;
            margin: 0 auto;
            line-height: 28px;
            cursor: pointer;
        }
        .list_Title {
            text-align:start;
        }
        .save-question-area {
            padding: 0px 0px 8px 0px;
            display: grid;
            justify-content: end;
        }
        #save-question {
            width: 80px;
            height: 32px;
            color: #ffffff;
            line-height: 32px;
            background: #115C5E;
            text-align: center;
            cursor:pointer;
        }
        .choice {
            background:#F4FAFF;
        }
        #create-coupon {
            margin-right: 0px;
        }
        .list_Title_Area{
            padding: 0 15px;
        }
        .table-wraper.max-height-overflow.custom-table-wraper {
            height: max-content;
            overflow-y: auto;
        }
        .t2l-alert-inner-wraper {
            position: absolute;
            min-width: 330px;
            padding: 40px;
            background-color: white;
            box-shadow: 0 0 10px #0000001A;
            max-height: 90vh;
            z-index: 1;
        }
        .drkid-select-div {
            background-color: white;
            color: #8F8F8F;
        }
        .list_count_text{
            padding: 0px 0 0 13px;
            color: var(--mono_sub);
        }
        /*뉴 페이징*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .red_font{
            color: var(--drkid_alert_negative);
        }
    </style>

    <script>
        var $matches = `<%=matches%>`;
        var $saveflag = `<%=SAVE_FLAG%>`
        $(function () {
            var flag = "<%=flag%>";
            if($saveflag == 'Y'){
                _popModal.Alert('쿠폰 저장완료', '쿠폰이 저장되었습니다.');
                closeTab(1000157);//쿠폰 생성화면 닫기
            }
            $("#custom_btn_search").click(function () {
                $("#flag").val("search");
                $("#search_btn_click_flag").val("Y");
                $("#form1").submit();
            });

            //쿠폰생성 버튼
            $("#create-coupon").click(function () {
                var page_name = $(this).attr("id");
                var url = "/Source/admin/cupoint/A_CUPOINT_COUPON_EDIT.aspx" ;
                openMenuPath(url, "", true);
            });

            //쿠폰수정 버튼
            $(".edit_Btn").click(function () {
                var coupon_sid = $(this).attr("id");
                var url = "/Source/admin/cupoint/A_CUPOINT_COUPON_EDIT.aspx";
                
                console.log(coupon_sid)
                openMenuPath(url, "?flag=modify&coupon_sid=" + coupon_sid, true);
            });
            //날짜 버튼
            $(".search_Period").click(function () {
                var Today = new Date();
                //클릭된 css적용
                $(".search_Period").removeClass("clicked");
                $(this).addClass("clicked");
                var clickedid = $(this).attr("id");
                $("#clickedid").val(clickedid);
                console.log(clickedid);
                var format_data_value = $(this).data('value');// today,7,15 등등
                if (format_data_value == "today") {
                    //오늘 클릭 시 오늘 날짜 설정
                    var today_date = new Date(Today);
                    var format_today = today_date.toISOString().split('T')[0];
                    $('#I_DATE_START').val(format_today);
                    $('#I_DATE_END').val(format_today);
                }
                else {
                    //누른 일수만큼 시작일 값 설정
                    var StartDate = new Date(Today);
                    var today_date = new Date(Today);
                    StartDate.setDate(StartDate.getDate() + format_data_value);
                    var format_today = today_date.toISOString().split('T')[0];
                    var formattedDate = StartDate.toISOString().split('T')[0];//'YYYY-MM-DD'
                    $('#I_DATE_START').val(format_today);
                    $('#I_DATE_END').val(formattedDate);
                }
            });
            

            //시작일 초기화
            var today = new Date();
            var formatted_today = today.toISOString().split('T')[0];
            $('#I_DATE_START').val(formatted_today);
            //종료일 초기화
            var startDate = new Date(today);
            startDate.setDate(startDate.getDate() + 7);
            var formatted_start_date = startDate.toISOString().split('T')[0];
            $('#I_DATE_END').val(formatted_start_date);



            <%if (flag == "search") {%>
                var set_from_date = "<%=I_FROM_DATE%>";
                var set_to_date = "<%=I_TO_DATE%>";
                $(".search_Period").removeClass("clicked");
                $('#I_DATE_START').val(set_from_date);
                $('#I_DATE_END').val(set_to_date);
            <%}%>


            $("#custom_btn_reset").click(function () {
                $(".search_Period").removeClass("clicked");
                $("#7").addClass("clicked");
                //검색 UI 날짜 데이터 포맷, 디폴트는 7일 
                //시작일 초기화
                var today = new Date();
                var formatted_today = today.toISOString().split('T')[0];
                $('#I_DATE_START').val(formatted_today);
                //종료일 초기화
                var startDate = new Date(today);
                startDate.setDate(startDate.getDate() + 7);
                var formatted_start_date = startDate.toISOString().split('T')[0];
                $('#I_DATE_END').val(formatted_start_date);

            });
            
        });

        $(document).ready(function () {
            $('.paging').on('click', 'a', function (event) {
                event.preventDefault();
                var paging_Value = $(this).text();
                var _offset;
                if (paging_Value != "" && paging_Value != null) {
                    paging_Value = paging_Value * 1;
                    _offset = (paging_Value * $matches) - $matches;
                    $("#custom_Paging").val(_offset);
                    $('#flag').val('search');
                    $('#form1').submit();
                }
            });
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="T_CATEGORY_TYPE" id="T_CATEGORY_TYPE" value="*" runat="server"/>
        <input type="text" name="DELETE_SID" id="delete_sid" value="" />
        <input type="text" name="search_btn_click_flag" id="search_btn_click_flag" value="" />
        <input type="text" name="clickedid" id="clickedid" value="" />

        <input type="text" name="custom_Paging" id="custom_Paging" value="" />
        
    </div>
    <%--조회 영역--%>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %> 조회</span>
        </div>
        <%--컨텐츠 영역--%>
        <div class="sub-content-wrap_custom">
            <%--기간 검색--%>
            <div class="sub-content-select-ui-area">
                 <div class="sub-content-select-ui">
                     <div class="search-word-area">
                          <div class="category-info lowerst-font">사용가능일자</div>
                          <div class="search_Ui_Layout">
                             <div class="search_Period_Area">
                                 <div id="1" class="search_Period lowerst-font" data-value="today">오늘</div>
                                 <div id="7" class="search_Period lowerst-font clicked" data-value="7">7일</div>
                                 <div id="15" class="search_Period lowerst-font" data-value="15">15일</div>
                                 <div id="30" class="search_Period lowerst-font" data-value="30">1개월</div>
                                 <div id="90" class="search_Period lowerst-font" data-value="90">3개월</div>
                                 <div id="365" class="search_Period lowerst-font" data-value="365">1년</div>
                             </div>
                             <div class="search_Date_Area">
                                 <%--<div class="search_Date"></div>--%>
                                 <%--시작,종료날짜 ui 영역--%>
                                 <div class="date_Ui_Area">
                                     <%--시작날짜--%>
                                     <div class="datePicker lower-font" style="width: 170px;">
                                         <input type="text" value="" autocomplete="off" class="datePicker-input" placeholder="시작일." name="I_FROM_DATE" data-picker-count="2" id="I_DATE_START" />
                                         <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                     </div>
                                     <div>&nbsp&nbsp~&nbsp&nbsp</div>
                                     <%--종료날짜--%>
                                     <div class="datePicker lower-font" style="width: 170px;">
                                         <input type="text" value="" autocomplete="off" class="datePicker-input" placeholder="종료일." name="I_TO_DATE" data-picker-count="2" id="I_DATE_END" />
                                         <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                     
                     <%--쿠폰타입 영역--%>
                     <div class="search-word-area">
                         <div class="category-info lowerst-font">쿠폰타입</div>
                         <select class="drkid-select" name="I_COUPON_TYPE" style="width: 190px;" data-font-class="lower-font" data-styles='{"width":"190px","height":"34px"}'>
                             <option value="">전체</option>
                             <%for (int i = 0; i < category_info.Rows.Count; i++)
                               { %>
                             <option value="<%=category_info.Rows[i]["CODE_CODE"] %>"><%=category_info.Rows[i]["CODE_CODE"] %></option>
                             <%} %>
                         </select>
                     </div>
                 </div>
            </div>
            <%--검색 버튼 영역--%>
            <div class="sub-content-wrap_custom_btn_area">
                <div class="lowerst-font"id="custom_btn_search">검색</div>
                <div class="lowerst-font"id="custom_btn_reset">초기화</div>
            </div>
        </div>
    </div>
    <%--쿠폰 목록 영역--%>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %>
                <span class="lower-font list_count_text">전체<%=totalCount%>개</span>

            </span>
        </div>
        <div class="sub-content-wrap">
            <div class="btn-field clears">
                <div class="flex-right-child">
                    <div class="drkid-btn search-btn drkid-btn-active" id="create-coupon">
                        <span class="lowerst-font">쿠폰 생성</span>
                    </div>
                </div>
            </div>
            <div class="table-wraper max-height-overflow custom-table-wraper">
                <table class="table-common">
                    <colgroup>
                        <col style="width:3.5%;"/>
                        <col style="width:17%;"/>
                        <col style="width:8%;"/>
                        <col style="width:12%;"/>
                        <col style="width:18.5%;"/>
                        <col style="width:8%;"/>
                        <col style="width:8%;"/>
                        <col style="width:8%;"/>
                        <col style="width:8%;"/>
                        <col style="width:8%;"/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="lower-font">No.</th>
                            <th class="lower-font">사용가능기간</th>
                            <th class="lower-font">쿠폰 타입</th>
                            <th class="lower-font">쿠폰 제목</th>
                            <th class="lower-font">쿠폰 내용</th>
                            <th class="lower-font">사용가능유무</th>
                            <th class="lower-font">발급가능수</th>
                            <th class="lower-font">발급수</th>
                            <th class="lower-font">사용수</th>
                            <th class="lower-font">수정</th>
                        </tr>
                    </thead>
                    <tbody id="big-tbody">
                        <% if (COUPON_LIST != null)
                             { %>
                                 <%for (int i = 0; i < COUPON_LIST.Rows.Count; i++)
                                  { %>

                                    <tr data-sub-tr="<%=i%>">
                                        <td class="lower-font">
                                           <div class="lowerst-font"><%=totalCount - offset - i %></div>
                                        </td>
                                        <td class="lower-font">
                                            <div class="lowerst-font red_font">
                                                <% if (COUPON_LIST.Rows[i]["TO_DATE"].ToString() == "99991231")
                                                   { %>
                                                    기간 제약 없음
                                                <% } %>
                                                <% else
                                                   { %>
                                                <%=COUPON_LIST.Rows[i]["FROM_DATE"] %>&nbsp~&nbsp<%=COUPON_LIST.Rows[i]["TO_DATE"] %>
                                                <% } %>
                                            </div>
                                        </td>
                                        <td class="list_Title_Area lower-font">
                                            <div class="lowerst-font"><%=COUPON_LIST.Rows[i]["COUPON_TYPE"] %></div>
                                        </td>
                                        <td class="list_Title_Area lower-font">
                                            <div class="list_Title lowerst-font"><%=COUPON_LIST.Rows[i]["COUPON_TITLE"] %></div>
                                        </td>
                                        <td class="list_Title_Area lower-font">
                                            <div class="list_Title lowerst-font"><%=COUPON_LIST.Rows[i]["COUPON_SUB_TITLE"] %></div>
                                        </td>
                                        <td class="list_Title_Area lower-font">
                                            <% if (COUPON_LIST.Rows[i]["USABLE_FLAG"].ToString() == "Y")
                                               { %>
                                            <div class="lowerst-font" style="color: var(--main_color)">
                                                사용가능
                                            </div>
                                            <% } %>
                                            <% if (COUPON_LIST.Rows[i]["USABLE_FLAG"].ToString() == "N")
                                               { %>
                                            <div class="lowerst-font" style="color: var(--drkid_alert_negative)">
                                                사용불가
                                            </div>
                                            <% } %>
                                        </td>
                                        <td class="list_Title_Area lower-font">
                                            <% if (COUPON_LIST.Rows[i]["COUPON_COUNT"].ToString() == "2147483647")
                                               { %>
                                            <div class="lowerst-font">제약 없음</div>
                                            <% } %>
                                            <%else
                                               { %>
                                            <div class="lowerst-font"><%=COUPON_LIST.Rows[i]["COUPON_COUNT"] %></div>
                                            <%} %>
                                        </td>
                                        <td class="list_Title_Area lower-font">
                                            <div class="lowerst-font"><%=COUPON_LIST.Rows[i]["CREATE_COUPON_COUNT"] %></div>
                                        </td>
                                        <td class="list_Title_Area lower-font">
                                            <div class="lowerst-font"><%=COUPON_LIST.Rows[i]["USED_COUPON_COUNT"] %></div>
                                        </td>
                                        <td class="lower-font">
                                            <div class="edit_Btn"id="<%=COUPON_LIST.Rows[i]["COUPON_SID"] %>">수정</div>
                                        </td>
                                    </tr>
                                <%} %>
                        <%  } %>

                    </tbody>
                        
                </table>
            </div>
    
        </div>
        <div class="pageNavigationStr" style="padding: 50px 0px;">
            <%=pageNavigationStr%>
    </div>
    </div>

    

</asp:Content>
