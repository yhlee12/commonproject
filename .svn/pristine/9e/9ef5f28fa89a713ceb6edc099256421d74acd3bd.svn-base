<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_STOCK_GRLIST.aspx.cs" Inherits="drKidAdmin.Source.admin.stock.A_STOCK_GRLIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        inner-sub-content-wraper{
            width:100%;
            display:flex;
            justify-content:space-between;
            align-items:flex-start;
        }
        .inner-flex-panel{
            width:calc(50% - 24px);
            border:1px solid var(--mono_line);
        }
        .center-field{
            justify-content:center;
            padding:20px 0;
        }
        .min-auto{
            min-height:auto;
            padding:0;
        }
        .sub-content-title{
            padding: 20px 30px;
            background-color:#F8F9FD;
            display:flex;
            justify-content:flex-start;
            align-items:center;
        }
        .sub-content-title-div{
            width:120px;
        }
        .sub-content-search-field{
            max-width: 380px;
            font-size: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-right:10px;
        }
        .input-searchheight{
            height:35px;
            line-height:35px !important;
            width:320px;
        }
        .search-input-btn{
             height:35px;
            line-height:35px !important;
            min-height: 35px;
            padding-top: 5px;
            padding-bottom: 5px;
            background-color:var(--mono_sub);
            color:white;
            width:60px;
            min-width:60px;
            font-size:var(--drkid-lowerst-font);
            padding:0;
            text-align:center;
        }
        .center-title{
            height:40px;
            line-height:40px;
            width:100%;
            padding-left:15px;
            background-color:var(--mono_line);
            color:var(--mono_main);
        }
        .auth-field{
            justify-content:flex-end;
            margin-top:7px;
            margin-bottom:7px;
            padding-right:7px;
        }
        .left-padding-left{
            padding-left:10px;
            padding-right:10px;
        }
        .no-margin-right{
            margin-right:0;
        }
        .auth-btn{
            min-width:80px;
            min-height:15px;
            margin-right:0;
        }
        .table-common tr td{
            word-break:break-all;
        }
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .date-field{
            max-width:100%;
        }
        .datePicker-icon{
            background-color:white;
        }
    </style>
    <script>
        var $result_code = `<%=cp_ret_status%>`;
        var $result_message = `<%=cp_ret_message%>`;
        var $flag = `<%=flag%>`;
        var $matches = `<%=matches%>`;
                   
        document.addEventListener('DOMContentLoaded', function () {
            if ($result_code == `Y`) {
                _popModal.Alert('알림', $result_message);
                $result_code = '';
                $result_message = '';
            }
            if ($result_code == "N") {
                if ($flag == "confirm") {
                    _popModal.Alert('알림', '입고처리되었습니다..');
                    setTimeout(() => {
                        window.scrollTo(0, 0);
                    }, 100);
                }
            }
        });

        $(function () {
            //New 신규 버튼 선택
            $('#new-btn').on('click', function () {
                openMenuPath('/Source/admin/stock/A_STOCK_GRINSERT.aspx', '', true);
            });
            //검색
            $('#search-btns').on('click', function () {
                $('#flag').val('inquery');
                $('#form1').submit();
            });
            //전체선택
            $('#all-select').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            //수정
            $('.target-auth-btn').on('click', function (e) {
                let _GR_NO = $(e.currentTarget).data('id');
                openMenuPath('/Source/admin/stock/A_STOCK_GRINSERT.aspx', `?GR_NO=${_GR_NO}`, true);
            });
            //Excel down
            $('#wekeep-down').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="GR_SID_CHECKBOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나이상의 입고목록을 선택해주세요.');
                    return;
                }
                _popModal.Promt('알림', '엑셀 다운로드 받으시겠습니까?',
                    function () {
                        //엑셀 다운로~~~드
                    }, function (error) { _popModal.Alert('알림', error); });
            });

            $('#gr-insert').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="GR_SID_CHECKBOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나이상의 입고목록을 선택해주세요.');
                    return;
                }
                _popModal.Promt('알림', '입고처리하시겠습니까? 이미 입고 처리된 데이터는 처리되지 않습니다.',
                    function () {
                        showProgress();
                        $('#flag').val('confirm');
                        $('#form1').submit();
                    }, function (error) { _popModal.Alert('알림', error); });
            });
        });
        //All Check 기능 같은 Table상 나누어져있을때 사용
        function allCheck(target) {
            let targetTableBody = $(target).parents('table').find('tbody');
            let boolChecker = $(target).is(":checked");
            if (boolChecker) {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', true);
                });
            } else {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', false);
                });
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
        <input type="text" name="custom_Paging" id="custom_Paging" value="" />
    </div>
    <div class="sub-warp">
        <div class="sub-content-wrap min-auto">
            <div class="sub-content-title">
                <div class="sub-content-title-div">
                    <span class="lower-font">제품명</span>
                </div>
                <div class="sub-content-search-field">
                    <input type="text" class="drkid-input lowerst-font input-searchheight" name="STOCK_COD" id="STOCK_COD" value="<%=STOCK_COD %>" placeholder="제품명,코드" />
                </div>
                <div class="sub-content-title-div">
                    <span class="lower-font">상태</span>
                </div>
                <div class="sub-content-search-field">
                    <select class="drkid-select lowerst-font" data-font-class="lowerst-font" data-styles='{"min-width":"300px","background-color":"white"}' name="STATUS">
                        <option class="lowerst-font" value="I" <%=STATUS == "I" || STATUS == "" ? "selected=\"selected\"" : "" %>>입고예정</option>
                        <option class="lowerst-font" value="C" <%=STATUS == "C" ? "selected=\"selected\"" : "" %>>입고</option>
                    </select>
                </div>
            </div>
            <div class="sub-content-title">
                <div class="sub-content-title-div">
                    <span class="lower-font">입고예정일</span>
                </div>
                <div class="sub-content-search-field date-field">
                    <div class="datePicker lowerst-font" style="width:300px;min-width:300px;">
                        <input type="text" value="<%=GR_EST %>" class="datePicker-input lowerst-font important-input" data-title="입고 예정일" placeholder="입고예정일" name="GR_EST" />
                        <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                    </div>
                    <span class="lowerst-font">~</span>
                    <div class="datePicker lowerst-font" style="width:300px;min-width:300px;">
                        <input type="text" value="<%=GR_EST_TO %>" class="datePicker-input lowerst-font important-input" data-title="입고 예정일" placeholder="입고예정일" name="GR_EST_TO" />
                        <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                    </div>
                </div>
            </div>
            <div class="btn-field clears center-field">
                <div class="flex-center-child">
                    <div class="drkid-btn search-btn drkid-btn-active" id="search-btns">
                        <span class="lower-font">검색</span>
                    </div>
                    <div class="drkid-btn search-btn" id="refresh">
                        <span class="lower-font">초기화</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font">제품목록</span>
        </div>
        <div class="sub-content-wrap">
            <div class="btn-field clears">
                <div class="flex-right-child">
                    <div class="drkid-btn search-btn" id="gr-insert">
                        <span class="lower-font">입고처리</span>
                    </div>
                    <div class="drkid-btn search-btn" id="wekeep-down">
                        <span class="lower-font">위킵엑셀다운</span>
                    </div>
                    <div class="drkid-btn search-btn drkid-btn-active" id="new-btn">
                        <span class="lower-font">신규</span>
                    </div>
                </div>
            </div>
            <div class="table-wraper max-height-overflow custom-table-wraper">
                <table class="table-common">
                    <colgroup>
                        <col style="width:40px"/>
                        <col style="width:120px"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col />
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="lower-font">
                                <label class="drkid-checkbox">
                                    <input type="checkbox" value="Y" id="all-select" />
                                    <span class="fake-check-box"></span>
                                </label>
                            </th>
                            <th class="lower-font">수정</th>
                            <th class="lower-font">상태</th>
                            <th class="lower-font">제품코드</th>
                            <th class="lower-font">제품명</th>
                            <th class="lower-font">입고수량</th>
                            <th class="lower-font">입고예정일</th>
                            <th class="lower-font">입고일</th>
                            <th class="lower-font">담당자</th>
                        </tr>
                    </thead>
                    <tbody id="big-tbody">
                        <%for(int i = 0; i < listTable.Rows.Count;i++){ %>
                            <tr>
                                <td class="lower-font">
                                    <label class="drkid-checkbox">
                                        <input type="checkbox" value="<%=listTable.Rows[i]["GR_SID"] %>" name="GR_SID_CHECKBOX"/>
                                        <span class="fake-check-box"></span>
                                    </label>
                                </td>
                                <td class="lowerst-font">
                                    <div class="drkid-btn search-btn auth-btn drkid-btn-active target-auth-btn" data-id="<%=listTable.Rows[i]["GR_NO"] %>">
                                        <span class="lower-font">수정</span>
                                    </div>
                                </td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["STATUS_NAME"] %></td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["STOCK_CD_VIEW"] %></td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["STOCK_NM_VIEW"] %></td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["TOTAL_SUM"] %></td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["GR_EST"] %></td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["GR_TIME"] %></td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["CUST_PIC"] %></td>
                            </tr>
                        <%} %>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="pageNavigationStr" style="padding: 50px 0px;">
            <%=pageNavigationStr%>
        </div>
    </div>
</asp:Content>
