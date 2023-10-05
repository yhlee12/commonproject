<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_STOCK_GRINSERT.aspx.cs" Inherits="drKidAdmin.Source.admin.stock.A_STOCK_GRINSERT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sub-content-wrap {
            padding:0;
        }
        .impotant-icon{
            color:var(--drkid_Negative);
            margin-right:3px;
        }
        .sub-content-inner-wrap{
            padding:20px 30px;
            padding-bottom:0;
            display:flex;
            align-items:flex-start;
            border-bottom:1px solid var(--mono_line);
        }
        .sub-content-inner-title{
            width:140px;
            height: 40px;
            line-height: 40px;
        }
        .sub-content-inner-content{
            width:calc(100% - 140px);
            display:flex;
            flex-flow:column;
            align-items:flex-start;
            flex-wrap:wrap;
        }
        .sub-content-half-wrap{
            display:flex;
            padding-bottom:20px;
        }
        .half-content-title{
            width:130px;
            display:flex;
            align-items:center;
            padding-right:10px;
        }
        .half-content-data{
            padding-right:10px;
            max-width:50%;
            display:flex;
            align-items:center;
        }
        .half-content-data > .drkid-input{
            min-width:300px;
        }
        .DecimalNum{
            min-width:270px !important;
        }
        .DecimalNum~.extnum{
            display:inline-block;
            width:30px;
            padding-left:5px;
            box-sizing:border-box;
        }
        .infomation-wraper-div{
            text-align:right;
            padding:5px;
        }
        .infomation-wikeep{
            color:var(--mono_sub);
        }
        .usedWidth100{
            min-width:100% !important;
        }
        .usedWidth100 > .half-content-data{
            width:100%;
            max-width:90%;
        }
        .bottom-to-detail-area{
            justify-content: center;
            margin-bottom: 30px;
            margin-top: 20px;
        }
        .half-content-title.image-title{
            align-items:flex-start;
            margin-top:5px;
        }
        #image-uploader{
            cursor:pointer;
        }
        #hidden-data{
            display:none;
        }
        .disableColor{
            color:var(--mono_sub);
            background-color:var(--mono_line);
        }
        .radio-wraper{
            min-width:270px;
        }
        .height-table-wraper{
            height:300px;
            overflow:auto;
        }
        .half-content-data.flex-many-columns{
            flex-direction:column;
            max-width:80%;
        }
        td.left-jusctis-td{
            text-align:left !important;
            padding-left:8px !important;
        }
        .sub-wraper-to-infomation{
            display:flex;
            justify-content:space-between;
            align-items: flex-end;
        }
        .infomation-sub-wraper{
            color:var(--mono_sub);
        }
    </style>
    <script>
        var $result_code = `<%=cp_ret_status%>`;
        var $result_message = `<%=cp_ret_message%>`;
        var $flag = `<%=flag%>`;
        document.addEventListener('DOMContentLoaded', function () {
            if ($result_code == `Y`) {
                _popModal.Alert('알림', $result_message);
                $result_code = '';
                $result_message = '';
            }
            if ($result_code == "N") {
                if ($flag == "save") {
                    _popModal.Alert('알림', '저장되었습니다.');
                    Reload('/Source/admin/stock/A_STOCK_GRLIST.aspx');
                    setTimeout(() => {
                        window.scrollTo(0, 0);
                    }, 100);
                }
            }
        });

        $(function () {
            //전체 선택 기능
            $('#all-select-stock').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            //기존에 뿌려져있는 체크박스 기능 바인드
            $("input:checkbox[name='STOCK_SEQ']").each(function (index, item) {
                $(item).on('click', function (e) {
                    checkBoxActive(e.currentTarget);
                });
            });
            //Stock 추가
            $('#add-stock').on('click', function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    //ADD template
                    let html = $('#add-template').html();
                    let _nowSeq = getSeq();

                    html = html.replace(/{CODE_CODE}/g, data.CODE_CODE);
                    html = html.replace(/{CODE_NAME}/g, data.CODE_NAME);
                    html = html.replace(/{REMARK}/g, data.CODE_SID);
                    html = html.replace(/{SEQ}/g, _nowSeq);

                    let appendHtml = $(html);

                    appendHtml.find('input[name="STOCK_SEQ"]').on('click', function (e) {
                        checkBoxActive(e.currentTarget);
                    });
                    $('#big-tbody').append(appendHtml);
                }).catch((err) => {
                    console.log(err);
                });
            });
            //선택 Stock 삭제
            $('#remove-stock').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="STOCK_SEQ"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나이상의 삭제할 제품 입고를 선택해주세요.');
                    return;
                }

                _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                    function () {
                        _checkBoxChecker.each(function (index, item) {
                            let _Sid = $(item).val();
                            $(`[data-tr="${_Sid}"]`).remove();
                        });
                        ResttingSeq();
                    }, function (error) { _popModal.Alert('알림', error); });
            });
            //Save
            $('#save-btn').on('click', function () {
                if (!saveValidation()) {
                    return;
                }

                if (String($('#NOW_STATUS').val()) == "C") {
                    _popModal.Alert('알림','입고된 데이터는 저장하실수 없습니다.');
                }

                _popModal.Promt('알림', '저장하시겠습니까?', function () {
                    showProgress();
                    $('#flag').val("save");
                    $('#form1').submit();
                }, function (err) { _popModal.Alert('알림', err); })
            });
        })
        function saveValidation() {
            $('.important-input').each(function (index, item) {
                let _itemTitle = $(item).data('title');
                if (String($(item).val()) == '') {
                    _popModal.Alert('알림', `${_itemTitle}을 입력해주세요.`);
                    return false;
                }
            });
            return true;
        }

        function ResttingSeq() {
            let _trSeq;
            _trSeq = $('#big-tbody tr input[name="GR_SEQ"]');
            let _tr = $('#big-tbody tr');
            let _seq = 1;
            _trSeq.each(function (index, item) {
                $(item).val(_seq);
                _tr.eq(index).data('tr', _seq);
                _tr.eq(index)[0].dataset.tr = _seq;
                _seq++;
            });
        }

        function getSeq() {
            let _seq = 1;
            $('input[name="GR_SEQ"]').each(function (index, item) {
                let _itemSeq = $(item).val() * 1;
                if (_seq <= _itemSeq) {
                    _seq = _itemSeq + 1;
                }
            });
            return _seq;
        }

        function checkBoxActive(target) {
            let _tr = $(target).parents('tr');
            if ($(target).is(':checked')) {
                _tr.addClass('active-tr');
            } else {
                _tr.removeClass('active-tr');
            }
        }
        function allCheck(target) {
            let targetTableBody = $(target).parents('table').find('tbody');
            let boolChecker = $(target).is(":checked");
            if (boolChecker) {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', true);
                    checkBoxActive($(item));
                });
            } else {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', false);
                    checkBoxActive($(item));
                });
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="GR_SID" id="GR_SID" value="<%=GR_SID %>" />
        <input type="text" name="NOW_STATUS" id="NOW_STATUS" value="<%=STATUS %>" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title sub-wraper-to-infomation">
            <span class="middle-font"><%=pageAuth.nowtitle %></span>
            <span class="infomation-sub-wraper lowerst-font">(*) 입고가 완료된 데이터는 수정/삭제가 불가능 합니다.</span>
        </div>
        <div class="sub-content-wrap">
            <div class="sub-content-inner-wrap">
                <div class="sub-content-inner-title">
                    <span class="middle-font">입고정보</span>
                </div>
                <div class="sub-content-inner-content">
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">입고 No.</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight disableColor" value="<%=GR_NO %>" name="GR_NO" maxlength="18" placeholder="입고번호" readonly="readonly"/>
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">상태</span>
                        </div>
                        <div class="half-content-data">
                            <select class="drkid-select lowerst-font" data-font-class="lowerst-font" data-styles='{"min-width":"300px"}' name="STATUS" <%=STATUS == "C" ? "data-disable-bool=\"Y\"" : "" %>>
                                <option class="lowerst-font" value="I" <%=STATUS == "I" || STATUS == "" ? "selected=\"selected\"" : "" %>>입고예정</option>
                                <option class="lowerst-font" value="C" <%=STATUS == "C" ? "selected=\"selected\"" : "" %>>입고</option>
                            </select>
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font impotant-icon">*</span>
                            <span class="lower-font">입고 예정일</span>
                        </div>
                        <div class="half-content-data">
                            <div class="datePicker lowerst-font" style="width:300px;min-width:300px;">
                                <input type="text" value="<%=GR_EST %>" class="datePicker-input lowerst-font important-input" data-title="입고 예정일" placeholder="입고예정일" name="GR_EST" />
                                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">입고일</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight disableColor" value="<%=GR_DT %>" name="GR_DT" maxlength="18" placeholder="입고일(자동입력)" readonly="readonly"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sub-content-inner-wrap">
                <div class="sub-content-inner-title">
                    <span class="middle-font">제품선택</span>
                </div>
                <div class="sub-content-inner-content">
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title image-title">
                            <span class="lower-font">제품</span>
                        </div>
                        <div class="half-content-data flex-many-columns">
                            <div class="btn-field clears">
                                <div class="flex-right-child">
                                    <div class="drkid-btn search-btn" id="remove-stock">
                                        <span class="lower-font">선택삭제</span>
                                    </div>
                                    <div class="drkid-btn search-btn drkid-btn-active" id="add-stock" data-class-code="A_STOCK" data-title="제품 선택" data-target="COMMON_POPUP_1">
                                        <span class="lower-font">제품선택</span>
                                    </div>
                                </div>
                            </div>
                            <div class="table-wraper height-table-wraper">
                                <table class="table-common">
                                    <colgroup>
                                        <col style="width:40px;"/>
                                        <col style="width:15%;"/>
                                        <col style="width:15%;"/>
                                        <col style="width:10%;"/>
                                        <col />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th class="lower-font">
                                                <label class="drkid-checkbox">
                                                    <input type="checkbox" value="Y" id="all-select-stock" />
                                                    <span class="fake-check-box"></span>
                                                </label>
                                            </th>
                                            <th class="lower-font">제품코드</th>
                                            <th class="lower-font">제품명</th>
                                            <th class="lower-font">입고수</th>
                                            <th class="lower-font">적재정보</th>
                                        </tr>
                                    </thead>
                                    <tbody id="big-tbody">
                                        <%for(int i = 0; i < listtable.Rows.Count;i++){ %>
                                            <tr data-tr="<%=listtable.Rows[i]["GR_SEQ"] %>">
                                                <td class="lower-font">
                                                    <label class="drkid-checkbox">
                                                        <input type="checkbox" value="<%=listtable.Rows[i]["GR_SEQ"] %>" name="STOCK_SEQ"/>
                                                        <span class="fake-check-box"></span>
                                                    </label>
                                                </td>
                                                <td class="lower-font">
                                                    <input type="text" name="STOCK_COD" class="drkid-input lowerst-font input-lowheight" value="<%=listtable.Rows[i]["STOCK_CD"] %>" readonly="readonly" />
                                                </td>
                                                <td class="lower-font">
                                                    <input type="text" name="STOCK_NAME" class="drkid-input lowerst-font input-lowheight" value="<%=listtable.Rows[i]["STOCK_NM"] %>" readonly="readonly" />
                                                </td>
                                                <td class="lower-font">
                                                    <input type="text" name="GR_PCS" class="drkid-input lowerst-font input-lowheight IntNum" maxlength="12" value="<%=listtable.Rows[i]["GR_PCS"] %>"/>
                                                </td>
                                                <td class="lower-font left-jusctis-td">
                                                    <span class="lowerst-font"><%=listtable.Rows[i]["REMARK"] %></span>
                                                    <input type="hidden" name="GR_SEQ" value="<%=listtable.Rows[i]["GR_SEQ"] %>" />
                                                </td>
                                            </tr>
                                        <%} %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="btn-field clears bottom-to-detail-area">
        <div class="drkid-btn drkid-btn-active" id="save-btn">
            <span class="lower-font">저장</span>
        </div>
    </div>
    <script id="add-template" type="text/html">
        <tr data-tr="{SEQ}">
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{SEQ}" name="STOCK_SEQ"/>
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <td class="lower-font">
                <input type="text" name="STOCK_COD" class="drkid-input lowerst-font input-lowheight" value="{CODE_CODE}" readonly="readonly" />
            </td>
            <td class="lower-font">
                <input type="text" name="STOCK_NAME" class="drkid-input lowerst-font input-lowheight" value="{CODE_NAME}" readonly="readonly" />
            </td>
            <td class="lower-font">
                <input type="text" name="GR_PCS" class="drkid-input lowerst-font input-lowheight IntNum" maxlength="12" value="0"/>
            </td>
            <td class="lower-font left-jusctis-td">
                <span class="lowerst-font">{REMARK}</span>
                <input type="hidden" name="GR_SEQ" value="{SEQ}" />
            </td>
        </tr>
    </script>
</asp:Content>
