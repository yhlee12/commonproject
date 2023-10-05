<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_BUSINESS_LIST.aspx.cs" Inherits="drKidAdmin.Source.admin.customer.A_BUSINESS_LIST" %>
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
            height: 140px;
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
            /*width: 80px;
            height: 32px;
            line-height: 32px;
            color: #ffffff;
            background: #115C5E;
            text-align: center;*/
            cursor:pointer;
        }
        #custom_btn_reset {
            /*width: 80px;
            text-align: center;
            height: 32px;
            line-height: 32px;
            border: 1px solid #E2E2E3;*/
            cursor:pointer;
        }

        .edit_Btn {
            font-size: 12px;
            width: 40%;
            min-width: 46px;
            height: 28px;
            text-align: center;
            margin: 0 auto;
            line-height: 28px;
            cursor: pointer;
        }
        .list_Title {
            text-align:start;
        }
        .list_Txt_Center {
            text-align:center;
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
        #create-question {
            margin-right: 0px;
        }
        .list_Title_Area{
            padding: 0 15px;
        }
        .table-wraper.max-height-overflow.custom-table-wraper {
            height: max-content;
            overflow-y: auto;
        }
         .custom_selectArea {
            position: relative;
            top: 3px;
            right: 23px;
         }
         .listTotal_Area {
            padding:10px 0px;
         }
         .listTotal{
            color: #8a8a8a;
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
        var $cp_ret_status = `<%=cp_ret_status%>`;
        var $matches = `<%=matches%>`;
        $(document).ready(function () {
            if($cp_ret_status == "Y")
            {
                hideProgress();
            }
            //리스트 상세버튼
            $(".edit_Btn").click(function () {
                var sid = $(this).data('target');
                var queryString = "?edit_flag=Y" + "&request_sid=" + sid;
                openMenuPath("/Source/admin/customer/A_BUSINESS_DETAIL.aspx", queryString, true);
            });
            //아이디 검색 엔터입력 시 검색
            $("#USER_ID").keydown(function(event) {
                if (event.keyCode === 13) {
                    showProgress();
                    $("#search_btn_click_flag").val("Y");
                    $('#flag').val('search');
                    $('#form1').submit();
                }
            });
            //검색 버튼
            $("#custom_btn_search").on('click', function () {
                showProgress();
                $("#search_btn_click_flag").val("Y");
                $('#flag').val('search');
                $('#form1').submit();
            });

            //관리자 a태그 href 페이징 시 검색조건 날아가는 문제 관련 
            $('.paging').on('click', 'a', function (event) {
                event.preventDefault(); 
                var paging_Value = $(this).text(); 
                var _offset;
                if(paging_Value != "" && paging_Value != null)
                {
                    paging_Value = paging_Value*1;
                    _offset = (paging_Value*$matches)-$matches;
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
         <input type="text" name="custom_Paging" id="custom_Paging" value="" />
    </div>
    <%--자주묻는 질문 관리 조회 영역--%>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %> 조회</span>
        </div>
        <%--자주묻는 질문 관리 컨텐츠 영역--%>
        <div class="sub-content-wrap_custom">
            <div class="sub-content-select-ui-area">
                 <div class="sub-content-select-ui">
                     <%--심사상태 영역--%>
                     <div class="category-area">
                         <div class="category-info lowerst-font">심사상태</div>
                         <div class="category_wrap">
                             <%--각각의 카테고리 라디오--%>
                             <div class="category">
                                <label class="drkid-radio">
                                    <input type="radio" name="BUSINESS_CHECK_FLAG" value="*" <%=BUSINESS_CHECK_FLAG == "*" ? "checked=\"checked\"" : "" %> />
                                    <span class="radio-txt lowerst-font">전체</span>
                                </label>
                             </div>
                              <div class="category">
                                <label class="drkid-radio">
                                    <input type="radio" name="BUSINESS_CHECK_FLAG" value="N" <%=BUSINESS_CHECK_FLAG == "N" ? "checked=\"checked\"" : "" %>/>
                                    <span class="radio-txt lowerst-font">미심사</span>
                                </label>
                             </div>
                             <div class="category">
                                <label class="drkid-radio">
                                    <input type="radio" name="BUSINESS_CHECK_FLAG" value="Y" <%=BUSINESS_CHECK_FLAG == "Y" ? "checked=\"checked\"" : "" %>/>
                                    <span class="radio-txt lowerst-font">심사완료</span>
                                </label>
                             </div>
                             <div class="category custom_selectArea">
                                <select class="drkid-select lowerst-font"id="BUSINESS_FLAG" name="BUSINESS_FLAG" style="width:200px;" data-font-class="lower-font">
                                    <option class="lowerst-font" value="*" <%=BUSINESS_FLAG == "*" ? "selected=\"selected\"" : "" %>>전체</option>
                                    <option class="lowerst-font" value="Y" <%=BUSINESS_FLAG == "Y" ? "selected=\"selected\"" : "" %>>승인</option>
                                    <option class="lowerst-font" value="N" <%=BUSINESS_FLAG == "N" ? "selected=\"selected\"" : "" %>>거절</option>
                                 
                                </select>
                             </div>

                         </div>
                     </div>
                     <div class="category-area">
                         <div class="category-info lowerst-font">제출여부</div>
                         <div class="category_wrap">
                             <%--각각의 카테고리 라디오--%>
                             <div class="category">
                                <label class="drkid-radio">
                                    <input type="radio" name="SUBMIT_FLAG" value="*" <%=SUBMIT_FLAG == "*" ? "checked=\"checked\"" : "" %>/>
                                    <span class="radio-txt lowerst-font">전체</span>
                                </label>
                             </div>
                              <div class="category">
                                <label class="drkid-radio">
                                    <input type="radio" name="SUBMIT_FLAG" value="Y" <%=SUBMIT_FLAG == "Y" ? "checked=\"checked\"" : "" %>/>
                                    <span class="radio-txt lowerst-font">제출</span>
                                </label>
                             </div>
                             <div class="category">
                                <label class="drkid-radio">
                                    <input type="radio" name="SUBMIT_FLAG" value="N" <%=SUBMIT_FLAG == "N" ? "checked=\"checked\"" : "" %>/>
                                    <span class="radio-txt lowerst-font">미제출</span>
                                </label>
                             </div>

                         </div>
                     </div>
                     <%--검색어 영역--%>
                     <div class="search-word-area">
                          <div class="category-info lowerst-font">아이디 검색</div>
                          <div class="search-word-input-arae">
                              <input type="text" class="drkid-input lowerst-font" name="USER_ID" id="USER_ID" value="<%=USER_ID %>" placeholder="회원 ID를 입력해주세요." maxlength="20"/>
                          </div>
                     </div>
                 </div>
            </div>
            <%--자주묻는 질문 관리 버튼 영역--%>
            <div class="sub-content-wrap_custom_btn_area">
                <div class="lowerst-font drkid-btn td-btn drkid-btn-active"id="custom_btn_search" ">검색</div>
                <div class="lowerst-font drkid-btn td-btn" id="custom_btn_reset">초기화</div>
            </div>
        </div>
    </div>
    <%--자주묻는 질문 관리 목록 영역--%>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %> 목록</span>
        </div>
        <div class="sub-content-wrap">
            <div class="listTotal_Area">
                <div class="lowerst-font listTotal">전체 <%=totalCount %>개</div>
            </div>
            <%--<div class="btn-field clears">
                <div class="drkid-btn search-btn" id="big-delete-btn">
                    <span class="lower-font">선택 삭제</span>
                </div>
                <div class="flex-right-child">
                    <div class="drkid-btn search-btn drkid-btn-active" id="create-question">
                        <span class="lowerst-font">자주하는질문 등록</span>
                    </div>
                </div>
            </div>--%>
            <div class="table-wraper max-height-overflow custom-table-wraper">
                <table class="table-common">
                    <colgroup>
                       <%-- <col style="width:40px;"/>--%>
                        <col style="width:8%;"/>
                        <col style="width:10%;"/>
                        <col style="width:20%;"/>
                        <col style="width:30%;"/>
                        <col style="width:32%;"/>
                        <%--<col/>
                        <col style="width:10%;"/>--%>
                    </colgroup>
                    <thead>
                        <tr>
                            <%--<th class="lower-font">
                                <label class="drkid-checkbox">
                                    <input type="checkbox" value="Y" id="all-select-big" />
                                    <span class="fake-check-box"></span>
                                </label>
                            </th>--%>
                            <th class="lower-font">상세</th>
                            <th class="lower-font">순서</th>
                            <th class="lower-font">아이디</th>
                            <th class="lower-font">분류</th>
                            <th class="lower-font">사업자등록증 제출여부</th>
          
                        </tr>
                    </thead>
                    <tbody id="big-tbody">
                        <%if (BUSINESS != null && BUSINESS.Rows.Count > 0)
                        {%>
                            <%for(int i=0; i<BUSINESS.Rows.Count; i++)
                            {%>
                                 <tr>
                                    <%--<td class="lower-font"data-value="">
                                        <label class="drkid-checkbox list_checkbox_area">
                                            <input type="checkbox" value="" name="LIST_CHECK_BOX"/>
                                            <span class="fake-check-box"></span>
                                        </label>
                                    </td>--%>
                                    <td class="lower-font">
                                        <div class="drkid-btn-active edit_Btn" data-target="<%=BUSINESS.Rows[i]["USER_SID"]%>">상세</div>
                                    </td>
                                    <td class="lower-font">
                                        <div class="lowerst-font"><%=totalCount - offset - i %></div>
                                    </td>
                                     <td class="lower-font">
                                        <div class="lowerst-font"><%=BUSINESS.Rows[i]["USER_ID"]%></div>
                                    </td>
                                    <td class="lower-font">
                                        <div class="lowerst-font"><%=BUSINESS.Rows[i]["CHECK_STATUS"]%></div>
                                    </td>
                                    <td class="list_Title_Area lower-font">
                                        <div class="list_Txt_Center lowerst-font"><%=BUSINESS.Rows[i]["BUSINESS_SUBMIT_SATUS"]%></div>
                                    </td>
                                </tr>
                            <%}%>
                        <%}%>
                    </tbody>
                </table>
            </div>
    
        </div>
    </div>

    <div class="pageNavigationStr" style="padding: 50px 0px;">
            <%=pageNavigationStr%>
    </div>
</asp:Content>
