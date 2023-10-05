﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_CS_LIST.aspx.cs" Inherits="drKidAdmin.Source.admin.cs.A_CS_LIST" %>
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
            height: 117px;
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
        .t2l-alert-inner-wraper {
            position: absolute;
            min-width: 330px;
            padding: 40px;
            background-color: white;
            box-shadow: 0 0 10px #0000001A;
            max-height: 90vh;
            z-index: 1;
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
        //삭제할 여러 sid들을 담는 배열
        var del_sid_list = [];

        //삭제한지 체크하는 플래그
        var del_flag = "<%=del_flag %>";
        //페이징 추가 이용호
        var $matches = `<%=matches%>`;

        $(function () {
            //검색 후 카테고리 타입  라디오버튼 그대로 남기기
            console.log("카테고리 값 :", $("#T_CATEGORY_TYPE").val())
            $('input[name="category_type"][value="' + $("#T_CATEGORY_TYPE").val() + '"]').prop('checked', true);

            //질문 목록 리스트 수정버튼
            $(".edit_Btn").click(function () {
                var sid = $(this).attr('id');
                var queryString = "?edit_flag=Y" + "&request_sid=" + sid;
                openMenuPath("/Source/admin/cs/A_CS_EDIT.aspx", queryString, true);
            });

            //전체 선택 기능
            $('#all-select-big').on('change', function (e) {
                allCheck(e.currentTarget);
            });


            //선택 삭제기능
            $('#big-delete-btn').on('click', function () {
                //선택요소의 순서 0,1,2
                let _checkBoxChecker = $('input:checkbox[name="LIST_CHECK_BOX"]:checked');//BIG_CHECK_BOX -> LIST_CHECK_BOX
                //선택한요소를 삭제하기 위한 sid값

                //선택요소의 sid값
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나 이상의 메뉴를 선택해주세요.');
                    return;
                }
                _popModal.Promt('', '삭제하시겠습니까?',
                    function () {
                        _checkBoxChecker.each(function (index, item) {
                            //사용자 눈에 제거만 함
                            //let _ui_del = $(item).val(); //새로만든거 -1, -2
                            //$(`[data-sub-tr="${_ui_del}"]`).remove(); // data-big-tr -> big-tbody
                            //db부분
                            var parentDataValue = $(this).parent().parent().data('value');
                            del_sid_list.push(parentDataValue);
                            //체크되어 있는 sid값들을 , 로 구분해 #delete-sid 인풋요소에 저장
                            var valueString = del_sid_list.join(',');
                            $("#delete_sid").val(valueString);

                        });
                        console.log("delete_sid 값", $("#delete_sid").val())
                        $('#flag').val('del');
                        $('#form1').submit();
                    }, function (error) { _popModal.Alert('알림', error); });

            });

            //저장 버튼
            $("#save-question").click(function () {
                validation_check();
                $('#flag').val('save');
                $('#form1').submit();
            });
            //자주하는질문 등록
            $("#create-question").click(function () {
                openMenuPath("/Source/admin/cs/A_CS_EDIT.aspx", "", true);
            });


            //질문 관리 조회 라디오 버튼 검색 sp호출을 위해 사용
            $('input[name="category_type"]').change(function () {
                // 선택된 라디오 버튼의 값을 가져옴
                var selectedValue = $('input[name="category_type"]:checked').val();
                // 선택한 값을 검색 프로시저 호출을 위해 값 넣어줌
                $("#T_CATEGORY_TYPE").val(selectedValue);
                console.log($("#T_CATEGORY_TYPE").val());
            });

            //질문 조회 검색 버튼
            $("#custom_btn_search").click(function () {
                $('[name="search_btn_click_flag"]').val('Y');
                $('#flag').val('search');
                $('#form1').submit();
            });
            //검색어 인풋입력 시 엔터 누르면 바로 검색되도록
            $("#I_TITLE").keydown(function (event) {
                if (event.keyCode === 13) {
                    $('[name="search_btn_click_flag"]').val('Y');
                    $('#flag').val('search');
                    $('#form1').submit();
                }
            });

            //초기화 버튼
            $("#custom_btn_reset").click(function () {
                //카테고리 초기화
                $('input[name="category_type"]').filter('[value="*"]').prop('checked', true);
                $("#T_CATEGORY_TYPE").val('*');
                //검색어 초기화
                $("#I_TITLE").val('');

            });

            //삭제했으면 삭제되었다고 alert 
            if (del_flag == "Y") {
                console.log("del_flag :", del_flag)
                _popModal.Alert('', '정상 삭제 되었습니다.');
            }

            //체크박스 클릭 시 해당 레코드 css 
            $('input[type="checkbox"][name="LIST_CHECK_BOX"]').on('click', function () {
                checkBoxActive(this);
            });


        });


        // 전체선택 
        function allCheck(target) {
            let targetTableBody = $(target).parents('table').find('tbody');
            let boolChecker = $(target).is(":checked");
            if (boolChecker) {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', true);
                    checkBoxActive(item);
                });
            } else {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', false);
                    checkBoxActive(item);
                });
            }
        }

        //체크박스 Tr Active 처리.
        function checkBoxActive(target) {
            let _tr = $(target).parents('tr');
            console.log(_tr)
            if ($(target).is(':checked')) {
                _tr.addClass('choice');
                console.log("추가")
            } else {
                _tr.removeClass('choice');
                console.log("삭제")
            }
        }

        $(document).ready(function() {
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
        <input type="text" name="T_CATEGORY_TYPE" id="T_CATEGORY_TYPE" value="*" runat="server"/>
        <input type="text" name="DELETE_SID" id="delete_sid" value="" />
        <input type="text" name="search_btn_click_flag" id="search_btn_click_flag" value="" />

        <input type="text" name="custom_Paging" id="custom_Paging" value="" />
        
    </div>
    <%--자주묻는 질문 관리 조회 영역--%>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %> 조회</span>
        </div>
        <%--자주묻는 질문 관리 컨텐츠 영역--%>
        <div class="sub-content-wrap_custom">
            <%--카테고리,검색어 영역--%>
            <div class="sub-content-select-ui-area">
                 <div class="sub-content-select-ui">
                     <%--카테고리 영역--%>
                     <div class="category-area">
                         <div class="category-info lowerst-font">카테고리</div>
                         <div class="category_wrap">
                             <%--각각의 카테고리 라디오--%>
                             <div class="category">
                                <label class="drkid-radio">
                                    <input type="radio" name="category_type" value="*"  checked="checked"/>
                                    <span class="radio-txt lowerst-font">전체</span>
                                </label>
                             </div>

                             <%for (int i = 0; i < category_info.Rows.Count; i++)
                               { %>
                                 <div class="category">
                                        <label class="drkid-radio">
                                            <input type="radio" name="category_type" value="<%=category_info.Rows[i]["CODE_CODE"] %>" />
                                            <span class="radio-txt lowerst-font"><%=category_info.Rows[i]["CODE_NAME"] %></span>
                                        </label>
                                     </div>

                             <%} %>
                         </div>

                     </div>
                     <%--검색어 영역--%>
                     <div class="search-word-area">
                          <div class="category-info lowerst-font">검색어</div>
                          <div class="search-word-input-arae">
                              <input type="text" class="drkid-input lowerst-font" id="I_TITLE" value="" placeholder="제목을 입력해주세요." runat="server" autocomplete="off" maxlength="30"/>
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
            <div class="btn-field clears">
                <div class="drkid-btn search-btn" id="big-delete-btn">
                    <span class="lower-font">선택 삭제</span>
                </div>
                <div class="flex-right-child">
                    <div class="drkid-btn search-btn drkid-btn-active" id="create-question">
                        <span class="lowerst-font">자주하는질문 등록</span>
                    </div>
                </div>
            </div>
            <div class="table-wraper max-height-overflow custom-table-wraper">
                <table class="table-common">
                    <colgroup>
                        <col style="width:40px;"/>
                        <col style="width:8%;"/>
                        <col style="width:10%;"/>
                        <col style="width:20%;"/>
                        <col style="width:62%;"/>
                        <%--<col/>
                        <col style="width:10%;"/>--%>
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="lower-font">
                                <label class="drkid-checkbox">
                                    <input type="checkbox" value="Y" id="all-select-big" />
                                    <span class="fake-check-box"></span>
                                </label>
                            </th>
                            <th class="lower-font">수정</th>
                            <th class="lower-font">순서</th>
                            <th class="lower-font">분류</th>
                            <th class="lower-font">제목</th>
                      <%--      <th class="lower-font">비고</th>
                            <th class="lower-font">하위메뉴</th>--%>
                        </tr>
                    </thead>
                    <tbody id="big-tbody">
      
                        <% if (FAQ_LIST != null)
                             { %>
                                 <%for (int i = 0; i < FAQ_LIST.Rows.Count; i++)
                                  { %>

                                    <tr data-sub-tr="<%=i%>">
                                        <td class="lower-font"data-value="<%=FAQ_LIST.Rows[i]["BOARD_SID"] %>">

                                            <input type="hidden" value="<%=FAQ_LIST.Rows[i]["BOARD_SID"] %>" name="_SID"/>
                                            <input type="hidden" value="<%=FAQ_LIST.Rows[i]["FAQ_SEQ"] %>" name="_FAQ_SEQ"/>
                                            <input type="hidden" value="<%=FAQ_LIST.Rows[i]["BOARD_TITLE"] %>" name="_BOARD_TITLE"/>
                                            <input type="hidden" value="<%=FAQ_LIST.Rows[i]["FAQ_TYPE"] %>" name="_FAQ_TYPE"/>
                                            

                                            <label class="drkid-checkbox list_checkbox_area">
                                                <input type="checkbox" value="<%=i%>" name="LIST_CHECK_BOX"/>
                                                <span class="fake-check-box"></span>
                                            </label>
                                        </td>
                                        <td class="lower-font">
                                            <div class="drkid-btn-active edit_Btn"id="<%=FAQ_LIST.Rows[i]["BOARD_SID"] %>">수정</div>
                                        </td>
                                        <td class="lower-font">
                                           <div class="lowerst-font"><%=totalCount - offset - i %></div>
                                           
                                        </td>
                                        <td class="lower-font">
                                            <div class="lowerst-font"><%=FAQ_LIST.Rows[i]["CODE_NAME"] %></div>
                                        </td>
                                        <td class="list_Title_Area lower-font">
                                            <div class="list_Title lowerst-font"><%=FAQ_LIST.Rows[i]["BOARD_TITLE"] %></div>
                                        </td>
           
                                    </tr>
                                <%} %>
                        <%  } %>
   
                    </tbody>
                        
                </table>
            </div>
    
        </div>
    </div>

    <div class="pageNavigationStr" style="padding: 50px 0px;">
            <%=pageNavigationStr%>
    </div>

</asp:Content>
