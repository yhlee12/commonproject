<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_PRODUCT_CATEGORY.aspx.cs" Inherits="drKidAdmin.Source.admin.product.A_PRODUCT_CATEGORY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .guide_Block{
            min-width: 545px;
            width: 100%;
            min-height: 77px;
            background-color:var(--mono_back);
            padding: 15px 30px;
        }
        .guide_txt{
            font-size: var(--drkid-lowerst-font);
            color : var(--mono_sub);
            font-weight: normal;
        }
        #save-data{
            margin-right:0;
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
                    setTimeout(() => {
                        window.scrollTo(0, 0);
                    }, 100);
                }
            }
        });

        $(function () {
            //전체선택
            $('#all-select').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            //up down big & sub menu btn
            $('#big-up-arrow').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 카테고리를 선택해주세요.');
                    return;
                }

                if (_checkBoxChecker.length > 1) {
                    _popModal.Alert('알림', '이동할 카테고리는 하나만 선택해주세요.');
                    return;
                }

                moveTr('UP', _checkBoxChecker.val(), 'data-tr');
            });
            $('#big-down-arrow').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 카테고리를 선택해주세요.');
                    return;
                }

                if (_checkBoxChecker.length > 1) {
                    _popModal.Alert('알림', '이동할 카테고리는 하나만 선택해주세요.');
                    return;
                }
                moveTr('DOWN', _checkBoxChecker.val(), 'data-tr');
            });
            //추가버튼
            $('#add-btn').on('click', function () {
                let _template = $('#CATEGORY_TEMPLATE').html();
                let _seq = getNextSeq();
                let _sid = getNewSid();
                _template = _template.replace(/{CATEGORY_SID}/g, _sid);
                _template = _template.replace(/{CATEGORY_SEQ}/g, _seq);
                let _appendHtml = $(_template);
                _appendHtml.find('input:checkbox[name="CHECK_BOX"]').on('click', function (e) {
                    checkBoxActive(e.currentTarget);
                });
                $('#tbody-table').append(_appendHtml);
            });
            //저장 버튼
            $('#save-data').on('click', function () {
                showProgress();
                $('#flag').val('save');
                $('#form1').submit();
            });
            //기존에 뿌려져있는 체크박스 기능 바인드
            $("input:checkbox[name='CHECK_BOX']").each(function (index, item) {
                $(item).on('click', function (e) {
                    checkBoxActive(e.currentTarget);
                });
            });
            //선택 삭제기능 Big Menu
            $('#delete-btn').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 카테고리를 선택해주세요.');
                    return;
                }
                _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                    function () {
                        _checkBoxChecker.each(function (index, item) {
                            let _Sid = $(item).val(); //새로만든거 -1, -2
                            $(`[data-tr="${_Sid}"]`).remove();
                        });
                        seqBigMenuReSetting('data-tr');
                    }, function (error) { _popModal.Alert('알림', error); });
            });
        });
        //다음 Seq를 얻는 Fuction
        function getNextSeq() {
            let _Seq = 1;
            $('#tbody-table > tr').each(function (index, item) {
                let _trSeq = $(item).find('input[name="CATEGORY_SEQ"]').val() * 1;
                if (_Seq <= _trSeq) {
                    _Seq = _trSeq + 1;
                }
            });
            return _Seq;
        }

        //새로운 SID를 얻는 Fuction
        function getNewSid(type) {
            let _SID = -1;
            $('#tbody-table > tr').each(function (index, item) {
                let _trSID = $(item).find('input[name="CATEGORY_SID"]').val() * 1;
                if (_SID >= _trSID) {
                    _SID = _trSID - 1;
                }
            });
            return _SID;
        }

        //화살표 Move 기능
        function moveTr(gbn, targetSid, type) {
            let _targetTr = $(`[${type}="${targetSid}"]`);
            if (gbn == "UP") {
                _targetTr.prev().before(_targetTr);
            } else {
                _targetTr.next().after(_targetTr);
            }
            seqBigMenuReSetting();
        }

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
        //체크박스 Tr Active 처리.
        function checkBoxActive(target) {
            let _tr = $(target).parents('tr');
            if ($(target).is(':checked')) {
                _tr.addClass('active-tr');
            } else {
                _tr.removeClass('active-tr');
            }
        }
        function seqBigMenuReSetting() {
            let _trSeq;
            _trSeq = $('#tbody-table tr input[name="CATEGORY_SEQ"]');
            let _seq = 1;
            _trSeq.each(function (index, item) {
                $(item).val(_seq);
                _seq++;
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %></span>
        </div>
        <div class="guide_Block">
            <div class="guide_txt">
                - 카테고리 저장을 위한 페이지 입니다.
                <br/>
                - 카테고리는 상품 분류에 저장되며, 전시관리에서 카테고리를 묶어 전시 카테고리로 묶을수 있습니다.
                <br />
                - 현재 1차 카테고리까지 제공됩니다.
            </div>
        </div>
        <div class="sub-content-wrap">
            <div class="btn-field clears">
                <div class="drkid-btn search-btn" id="add-btn">
                    <span class="lower-font">추가</span>
                </div>
                <div class="liner-icon-wraper">
                    <span class="drkid-icon arrow-big up-arrow" id="big-up-arrow"></span>
                    <span class="drkid-icon arrow-big down-arrow" id="big-down-arrow"></span>
                </div>
                <div class="flex-right-child">
                    <div class="drkid-btn search-btn" id="delete-btn">
                        <span class="lower-font">선택 삭제</span>
                    </div>
                    <div class="drkid-btn search-btn drkid-btn-active" id="save-data">
                        <span class="lower-font">저장</span>
                    </div>
                </div>
            </div>
            <div class="table-wraper max-height-overflow">
                <table class="table-common">
                    <colgroup>
                        <col style="width:40px;"/>
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
                            <th class="lower-font">카테고리명</th>
                        </tr>
                    </thead>
                    <tbody id="tbody-table">
                        <%for(int i = 0; i < listTable.Rows.Count;i++){ %>
                            <tr data-tr="<%=listTable.Rows[i]["CATEGORY_SID"] %>">
                                <td class="lower-font">
                                    <label class="drkid-checkbox">
                                        <input type="checkbox" value="<%=listTable.Rows[i]["CATEGORY_SID"] %>" name="CHECK_BOX"/>
                                        <span class="fake-check-box"></span>
                                    </label>
                                    <input type="hidden" name="CATEGORY_SID" value="<%=listTable.Rows[i]["CATEGORY_SID"] %>" />
                                    <input type="hidden" name="CATEGORY_SEQ" value="<%=listTable.Rows[i]["CATEGORY_SEQ"] %>"  />
                                </td>
                                <td class="lower-font">
                                    <input type="text" name="CATEGORY_NAME" class="drkid-input lowerst-font input-lowheight" value="<%=listTable.Rows[i]["CATEGORY_NAME"] %>" placeholder="카테고리명" maxlength="100" />
                                </td>
                            </tr>
                        <%} %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script type="text/html" id="CATEGORY_TEMPLATE">
        <tr data-tr="{CATEGORY_SID}">
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{CATEGORY_SID}" name="CHECK_BOX"/>
                    <span class="fake-check-box"></span>
                </label>
                <input type="hidden" name="CATEGORY_SID" value="{CATEGORY_SID}" />
                <input type="hidden" name="CATEGORY_SEQ" value="{CATEGORY_SEQ}"  />
            </td>
            <td class="lower-font">
                <input type="text" name="CATEGORY_NAME" class="drkid-input lowerst-font input-lowheight" value="" placeholder="카테고리명" maxlength="100" />
            </td>
        </tr>
    </script>
</asp:Content>
