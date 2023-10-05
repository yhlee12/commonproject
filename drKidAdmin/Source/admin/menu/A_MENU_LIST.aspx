﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_MENU_LIST.aspx.cs" Inherits="drKidAdmin.Source.admin.menu.A_MENU_LIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        var $result_code = `<%=cp_ret_status%>`;
        var $result_message = `<%=cp_ret_message%>`;
        document.addEventListener('DOMContentLoaded', function () {
            if ($result_code == `Y`) {
                _popModal.Alert('알림', $result_message);
                $result_code = '';
                $result_message = '';
            }
        });

        $(function () {
            //큰메뉴 추가 버튼
            $('#big-add-btn').on('click', function () {
                let _template = $('#BIG_MENU_TEMPLATE').html();
                let _seq = getNextSeq('B');
                let _sid = getNewSid('B');
                _template = _template.replace(/{MENU_SID}/g, _sid);
                _template = _template.replace(/{BIG_SEQ}/g, _seq);
                let _appendHtml = $(_template);
                _appendHtml.find('.big-target-btn').on('click', function (e) {
                    showSubMenu(e.currentTarget);
                });
                _appendHtml.find('input:checkbox[name="BIG_CHECK_BOX"]').on('click', function (e) {
                    checkBoxActive(e.currentTarget);
                });
                $('#big-tbody').append(_appendHtml);
            });
            //서브 메뉴 추가 버튼
            $('#sub-add-btn').on('click', function () {
                let _template = $('#SUB_MENU_TEMPLATE').html();
                let _seq = getNextSeq('S');
                let _sid = getNewSid('S');
                _template = _template.replace(/{MENU_SID}/g, _sid);
                _template = _template.replace(/{SUB_SEQ}/g, _seq);
                _template = _template.replace(/{SUB_MENU_NAME}/g, '');
                _template = _template.replace(/{SUB_MENU_FOLDER}/g, '');
                _template = _template.replace(/{SUB_MENU_FILE}/g, '');
                _template = _template.replace(/{SUB_MENU_PARAM}/g, '');
                _template = _template.replace(/{SUB_MENU_BIGO}/g, '');
                let _appendHtml = $(_template);
                _appendHtml.find('input:checkbox[name="SUB_CHECK_BOX"]').on('click', function (e) {
                    checkBoxActive(e.currentTarget);
                });
                $('#sub-tbody').append(_appendHtml);
            });
            //기존에 뿌려져있는 체크박스 기능 바인드
            $("input:checkbox[name='BIG_CHECK_BOX']").each(function (index, item) {
                $(item).on('click', function (e) {
                    checkBoxActive(e.currentTarget);
                });
            });
            //전체 선택 기능
            $('#all-select-big').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            $('#all-select-sub').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            //up down big & sub menu btn
            $('#big-up-arrow').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="BIG_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                    return;
                }

                if (_checkBoxChecker.length > 1) {
                    _popModal.Alert('알림', '이동할 메뉴는 하나만 선택해주세요.');
                    return;
                }

                moveTr('UP',_checkBoxChecker.val(),'data-big-tr');
            });
            $('#big-down-arrow').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="BIG_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                    return;
                }

                if (_checkBoxChecker.length > 1) {
                    _popModal.Alert('알림', '이동할 메뉴는 하나만 선택해주세요.');
                    return;
                }
                console.log(_checkBoxChecker.val()) //sid 값 나옴 
                moveTr('DOWN', _checkBoxChecker.val(), 'data-big-tr');
            });
            $('#sub-up-arrow').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="SUB_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                    return;
                }

                if (_checkBoxChecker.length > 1) {
                    _popModal.Alert('알림', '이동할 메뉴는 하나만 선택해주세요.');
                    return;
                }

                moveTr('UP', _checkBoxChecker.val(), 'data-sub-tr');
            });
            $('#sub-down-arrow').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="SUB_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                    return;
                }

                if (_checkBoxChecker.length > 1) {
                    _popModal.Alert('알림', '이동할 메뉴는 하나만 선택해주세요.');
                    return;
                }

                moveTr('DOWN', _checkBoxChecker.val(), 'data-sub-tr');
            });
            //선택 삭제기능 Big Menu
            $('#big-delete-btn').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="BIG_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                    return;
                }
                _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                    function () {
                        _checkBoxChecker.each(function (index, item) {
                            let _Sid = $(item).val(); //새로만든거 -1, -2
                            console.log(_Sid)
                            $(`[data-big-tr="${_Sid}"]`).remove();
                        });
                        seqBigMenuReSetting('data-big-tr');
                    }, function (error) { _popModal.Alert('알림', error); });
            });
            //선택 삭제 기능 Sub menu
            $('#sub-delete-btn').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="SUB_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                    return;
                }
                _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                    function () {
                        _checkBoxChecker.each(function (index, item) {
                            let _Sid = $(item).val();
                            $(`[data-sub-tr="${_Sid}"]`).remove();
                        });
                        seqBigMenuReSetting('data-sub-tr');
                    }, function (error) { _popModal.Alert('알림', error); });
            });
            //뿌려진 대메뉴에 Btn Event Bind
            $('.big-target-btn').on('click', function (e) {
                showSubMenu(e.currentTarget);
            });
            //Save
            $('#save-menu').on('click', function () {
                _popModal.Promt('저장', '저장하시겠습니까?'
                    , function () {
                        showProgress();
                        $('#flag').val('save');
                        $('#form1').submit();
                    }
                    , function (err) { _popModal.Alert('알림', err); }
                );
                
            });
            //만약 재호출로 choice-sid가 빈값이 아닐경우
            if (($('#choice-sid').val() + '') != '') {
                let _targetSid = $('#choice-sid').val();
                let _targetMenuName = $(`[data-big-tr='${_targetSid}']`).find('input[name="BIG_MENU_NAME"]').val();
                $(".choise-menu").text(`: [${_targetMenuName}]`);
                showProgress();
                $.ajax({
                    type: "post",
                    url: "/Source/admin/menu/AJAX_SUB_MENU.aspx",
                    dataType: 'json',
                    data: { TARGET_SID: _targetSid },
                    success: function (data) {
                        let html;
                        if (data.O_ERROR_FLAG[0]["O_ERROR_FLAG"] + "" == "N") {
                            for (var i = 0; i < data.O_RESULT_CURSOR.length; i++) {
                                html = $("#SUB_MENU_TEMPLATE").html();
                                html = html.replace(/{MENU_SID}/g, data.O_RESULT_CURSOR[i]["MENU_SID"]);
                                html = html.replace(/{SUB_SEQ}/g, data.O_RESULT_CURSOR[i]["MENU_SEQ"]);
                                html = html.replace(/{SUB_MENU_NAME}/g, data.O_RESULT_CURSOR[i]["MENU_NAME"]);
                                html = html.replace(/{SUB_MENU_FOLDER}/g, data.O_RESULT_CURSOR[i]["MENU_FOLDER"]);
                                html = html.replace(/{SUB_MENU_FILE}/g, data.O_RESULT_CURSOR[i]["MENU_PATH"]);
                                html = html.replace(/{SUB_MENU_PARAM}/g, data.O_RESULT_CURSOR[i]["MENU_PARAM"]);
                                html = html.replace(/{SUB_MENU_BIGO}/g, data.O_RESULT_CURSOR[i]["MENU_REMARK"]);
                                $("#sub-tbody").append(html);
                            }
                        }
                    },
                    error: function (err) {
                        _popModal.Alert('알림', err);
                    },
                    complete: function () {
                        hideProgress();
                    }
                });
            }
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
        //다음 Seq를 얻는 Fuction
        function getNextSeq(type) {
            let _Seq = 1;
            if (type == 'B') {
                $('#big-tbody > tr').each(function (index, item) {
                    let _trSeq = $(item).find('input[name="BIG_SEQ"]').val() * 1;
                    if (_Seq <= _trSeq) {
                        _Seq = _trSeq + 1;
                    }
                });
            } else {
                $('#sub-tbody > tr').each(function (index, item) {
                    let _trSeq = $(item).find('input[name="SUB_SEQ"]').val() * 1;
                    if (_Seq <= _trSeq) {
                        _Seq = _trSeq + 1;
                    }
                });
            }
            return _Seq;
        }

        //새로운 SID를 얻는 Fuction
        function getNewSid(type) {
            let _SID = -1;
            if (type == 'B') {
                $('#big-tbody > tr').each(function (index, item) {
                    let _trSID = $(item).find('input[name="MENU_SID"]').val() * 1;
                    if (_SID >= _trSID) {
                        _SID = _trSID - 1;
                    }
                });
            } else {
                $('#sub-tbody > tr').each(function (index, item) {
                    let _trSID = $(item).find('input[name="SUB_MENU_SID"]').val() * 1;
                    if (_SID >= _trSID) {
                        _SID = _trSID - 1;
                    }
                });
            }
            return _SID;
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
        //Seq Resetting Big Menu
        function seqBigMenuReSetting(type) {
            let _trSeq;
            if (type == 'data-big-tr') {
                _trSeq = $('#big-tbody tr input[name="BIG_SEQ"]');
            } else {
                _trSeq = $('#sub-tbody tr input[name="SUB_SEQ"]');
            }
            let _seq = 1;
            _trSeq.each(function (index, item) {
                $(item).val(_seq);
                _seq++;
            });
        }
        //화살표 Move 기능
        function moveTr(gbn, targetSid,type) {
            let _targetTr = $(`[${type}="${targetSid}"]`);
            console.log(_targetTr)
            if (gbn == "UP") {
                _targetTr.prev().before(_targetTr);
            } else {
                _targetTr.next().after(_targetTr);
            }
            seqBigMenuReSetting(type);
        }
        //Sub Menu Show 처리
        function showSubMenu(target) {
            let _choiceSid = $('#choice-sid').val();
            let _targetSid = $(target).parents('tr').data('bigTr') * 1;
            let _targetMenuName = $(target).parents('tr').find('input[name="BIG_MENU_NAME"]').val();
            var showSub = function () {
                //Ajax
                $('#choice-sid').val(_targetSid);
                if (_targetMenuName == '') { _targetMenuName = '이름없음'; }
                $(".choise-menu").text(`: [${_targetMenuName}]`);
                showProgress();
                $("#sub-tbody").empty();
                $.ajax({
                    type: "post",
                    url: "/Source/admin/menu/AJAX_SUB_MENU.aspx",
                    dataType: 'json',
                    data: { TARGET_SID: _targetSid },
                    success: function (data) {
                        let html;
                        if (data.O_ERROR_FLAG[0]["O_ERROR_FLAG"] + "" == "N") {
                            for (var i = 0; i < data.O_RESULT_CURSOR.length; i++) {
                                html = $("#SUB_MENU_TEMPLATE").html();
                                html = html.replace(/{MENU_SID}/g, data.O_RESULT_CURSOR[i]["MENU_SID"]);
                                html = html.replace(/{SUB_SEQ}/g, data.O_RESULT_CURSOR[i]["MENU_SEQ"]);
                                html = html.replace(/{SUB_MENU_NAME}/g, data.O_RESULT_CURSOR[i]["MENU_NAME"]);
                                html = html.replace(/{SUB_MENU_FOLDER}/g, data.O_RESULT_CURSOR[i]["MENU_FOLDER"]);
                                html = html.replace(/{SUB_MENU_FILE}/g, data.O_RESULT_CURSOR[i]["MENU_PATH"]);
                                html = html.replace(/{SUB_MENU_PARAM}/g, data.O_RESULT_CURSOR[i]["MENU_PARAM"]);
                                html = html.replace(/{SUB_MENU_BIGO}/g, data.O_RESULT_CURSOR[i]["MENU_REMARK"]);
                                $("#sub-tbody").append(html);
                            }
                        }
                    },
                    error: function (err) {
                        _popModal.Alert('알림', err);
                    },
                    complete: function () {
                        hideProgress();
                    }
                });
            }

            if (_choiceSid != '') {
                _popModal.Promt('알림', '하위메뉴를 저장하지 않고 변경시 작성 내용이 제거됩니다. 정말로 바꾸시겠습니까?', showSub, function (err) { _popModal.Alert('알림', err); });
            } else {
                showSub();
            }
        }
    </script>
    <style>
        .info-color{color:var(--mono_dea);}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="CHOICE_SID" id="choice-sid" value="<%=CHOICE_SID %>" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %></span>
        </div>
        <div class="sub-content-wrap">
            <div class="btn-field clears">
                <div class="drkid-btn search-btn" id="big-delete-btn">
                    <span class="lower-font">선택 삭제</span>
                </div>
                <div class="drkid-btn search-btn" id="big-add-btn">
                    <span class="lower-font">추가</span>
                </div>
                <div class="liner-icon-wraper">
                    <span class="drkid-icon arrow-big up-arrow" id="big-up-arrow"></span>
                    <span class="drkid-icon arrow-big down-arrow" id="big-down-arrow"></span>
                </div>
                <div class="flex-right-child">
                    <div class="drkid-btn search-btn drkid-btn-active" id="save-menu">
                        <span class="lower-font">저장</span>
                    </div>
                </div>
            </div>
            <div class="table-wraper max-height-overflow">
                <table class="table-common">
                    <colgroup>
                        <col style="width:40px;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col/>
                        <col style="width:10%;"/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="lower-font">
                                <label class="drkid-checkbox">
                                    <input type="checkbox" value="Y" id="all-select-big" />
                                    <span class="fake-check-box"></span>
                                </label>
                            </th>
                            <th class="lower-font">메뉴이름</th>
                            <th class="lower-font">메뉴폴더</th>
                            <th class="lower-font">메뉴파일</th>
                            <th class="lower-font">메뉴파라미터</th>
                            <th class="lower-font">비고</th>
                            <th class="lower-font">하위메뉴</th>
                        </tr>
                    </thead>
                    <tbody id="big-tbody">
                        <%for(int i=0;i<listTable.Rows.Count;i++){ %>
                            <tr data-big-tr="<%=listTable.Rows[i]["MENU_SID"] %>">
                                <td class="lower-font">
                                    <label class="drkid-checkbox">
                                        <input type="checkbox" value="<%=listTable.Rows[i]["MENU_SID"] %>" name="BIG_CHECK_BOX"/>
                                        <span class="fake-check-box"></                                                                              span>
                                    </label>
                                </td>
                                <td class="lower-font">
                                    <input type="text" name="BIG_MENU_NAME" class="drkid-input lowerst-font input-lowheight" value="<%=listTable.Rows[i]["MENU_NAME"] %>" placeholder="메뉴이름" maxlength="100" />
                                </td>
                                <td class="lower-font">
                                    <input type="text" name="BIG_MENU_FOLDER" class="drkid-input lowerst-font input-lowheight" value="<%=listTable.Rows[i]["MENU_FOLDER"] %>" placeholder="메뉴폴더 ex)admin" maxlength="100"  />
                                </td>
                                <td class="lower-font">
                                    <input type="text" name="BIG_MENU_FILE" class="drkid-input lowerst-font input-lowheight" value="<%=listTable.Rows[i]["MENU_PATH"] %>" placeholder="메뉴파일 ex)A_MENU_LIST" maxlength="100"  />
                                </td>
                                <td class="lower-font">
                                    <input type="text" name="BIG_MENU_PARAM" class="drkid-input lowerst-font input-lowheight" value="<%=listTable.Rows[i]["MENU_PARAM"] %>" placeholder="메뉴파라미터 ex)?ID=USER&PWD=ID" maxlength="100"  />
                                </td>
                                <td class="lower-font">
                                    <input type="text" name="BIG_MENU_BIGO" class="drkid-input lowerst-font input-lowheight" value="<%=listTable.Rows[i]["MENU_REMARK"] %>" placeholder="비고" maxlength="500"  />
                                </td>
                                <td class="lower-font">
                                    <input type="hidden" name="BIG_SEQ" value="<%=listTable.Rows[i]["MENU_SEQ"] %>" />
                                    <input type="hidden" name="MENU_SID" value="<%=listTable.Rows[i]["MENU_SID"] %>" />
                                    <div class="drkid-btn td-btn drkid-btn-active big-target-btn">
                                        <span class="lower-font">하위메뉴</span>
                                    </div>
                                </td>
                            </tr>
                        <%} %>
                    </tbody>
                </table>
            </div>
            <div class="btn-field clears">
                <div class="sub-info-title">
                    <span class="lower-font">하위메뉴 <span class="choise-menu"></span> <span class="lowerst-font info-color">(*) 저장시 선택된 하위 메뉴만 저장됩니다.</span></span>
                </div>
                <div class="flex-right-child sub-btn-field">
                    <div class="drkid-btn search-btn" id="sub-delete-btn">
                        <span class="lower-font">선택 삭제</span>
                    </div>
                    <div class="drkid-btn search-btn" id="sub-add-btn">
                        <span class="lower-font" >추가</span>
                    </div>
                    <div class="liner-icon-wraper">
                        <span class="drkid-icon arrow-big up-arrow" id="sub-up-arrow"></span>
                        <span class="drkid-icon arrow-big down-arrow" id="sub-down-arrow"></span>
                    </div>
                </div>
            </div>
            <div class="table-wraper max-height-overflow">
                <table class="table-common">
                    <colgroup>
                        <col style="width:40px;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="lower-font">
                                <label class="drkid-checkbox">
                                    <input type="checkbox" value="Y" id="all-select-sub" />
                                    <span class="fake-check-box"></span>
                                </label>
                            </th>
                            <th class="lower-font">메뉴이름</th>
                            <th class="lower-font">메뉴폴더</th>
                            <th class="lower-font">메뉴파일</th>
                            <th class="lower-font">메뉴파라미터</th>
                            <th class="lower-font">비고</th>
                        </tr>
                    </thead>
                    <tbody id="sub-tbody"></tbody>
                </table>
            </div>
        </div>
    </div>
    <script type="text/html" id="BIG_MENU_TEMPLATE">
        <tr data-big-tr="{MENU_SID}">
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{MENU_SID}" name="BIG_CHECK_BOX"/>
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <td class="lower-font">
                <input type="text" name="BIG_MENU_NAME" class="drkid-input lowerst-font input-lowheight" value="" placeholder="메뉴이름" maxlength="100" />
            </td>
            <td class="lower-font">
                <input type="text" name="BIG_MENU_FOLDER" class="drkid-input lowerst-font input-lowheight" value="" placeholder="메뉴폴더 ex)admin"maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="BIG_MENU_FILE" class="drkid-input lowerst-font input-lowheight" value="" placeholder="메뉴파일 ex)A_MENU_LIST"maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="BIG_MENU_PARAM" class="drkid-input lowerst-font input-lowheight" value="" placeholder="메뉴파라미터 ex)?ID=USER&PWD=ID"maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="BIG_MENU_BIGO" class="drkid-input lowerst-font input-lowheight" value="" placeholder="비고"maxlength="500"  />
            </td>
            <td class="lower-font">
                <input type="hidden" name="BIG_SEQ" value="{BIG_SEQ}" />
                <input type="hidden" name="MENU_SID" value="{MENU_SID}" />
                <div class="drkid-btn td-btn drkid-btn-active big-target-btn">
                    <span class="lower-font">하위메뉴</span>
                </div>
            </td>
        </tr>
    </script>
    <script type="text/html" id="SUB_MENU_TEMPLATE">
        <tr data-sub-tr="{MENU_SID}">
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{MENU_SID}" name="SUB_CHECK_BOX"/>
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <td class="lower-font">
                <input type="text" name="SUB_MENU_NAME" class="drkid-input lowerst-font input-lowheight" value="{SUB_MENU_NAME}" placeholder="메뉴이름"maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="SUB_MENU_FOLDER" class="drkid-input lowerst-font input-lowheight" value="{SUB_MENU_FOLDER}" placeholder="메뉴폴더 ex)admin" maxlength="100" />
            </td>
            <td class="lower-font">
                <input type="text" name="SUB_MENU_FILE" class="drkid-input lowerst-font input-lowheight" value="{SUB_MENU_FILE}" placeholder="메뉴파일 ex)A_MENU_LIST"maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="SUB_MENU_PARAM" class="drkid-input lowerst-font input-lowheight" value="{SUB_MENU_PARAM}" placeholder="메뉴파라미터 ex)?ID=USER&PWD=ID"maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="SUB_MENU_BIGO" class="drkid-input lowerst-font input-lowheight" value="{SUB_MENU_BIGO}" placeholder="비고"maxlength="500"  />
                <input type="hidden" name="SUB_SEQ" value="{SUB_SEQ}" />
                <input type="hidden" name="SUB_MENU_SID" value="{MENU_SID}" />
            </td>
        </tr>
    </script>
</asp:Content>
