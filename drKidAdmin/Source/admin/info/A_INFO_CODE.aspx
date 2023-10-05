<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_INFO_CODE.aspx.cs" Inherits="drKidAdmin.Source.admin.info.A_INFO_CODE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .infoshort{margin-left:15px;color:#808080;}
        .checkboxClass{zoom:1.5;}
        

        #CHOICE_BIG_MENU{margin:0 5px;color:#808080;}
        .popDiv{position:fixed;top:0;left:0;width:100%;height:100%;z-index:1;background-color:rgba(0,0,0,0.7);display:none;}
        .inner-Pop{top:50%;left:50%;transform:translate(-50%,-50%);background-color:white;width:800px;height:550px;position:absolute;}
    </style>
    <script>
        function checkMaxQty(evt) {
            var _pattern = /^[0-9,]{0,12}$/;
            var _value = event.srcElement.value;
            if (!_pattern.test(_value)) {
                event.srcElement.value = event.srcElement.value.substring(0, event.srcElement.value.length - 1);
                event.srcElement.focus();
            }
        }

        function hiponeClear(obj) {
            var data = $(obj).val();
            data = data.replace(/\-/g, '');
            $(obj).val(data);
            checkMaxQty(obj);
        }
        //////////////
        //////////////
        $(function () {

            //전체 선택 기능
            $('#all-select-class').on('change', function (e) {
                allcheck(e.currentTarget);
            });
            $('#all-select-code').on('change', function (e) {
                allcheck(e.currentTarget);
            });
            //UP DOWN 버튼
            $('#sub-up-arrow').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="CODE_SID"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                    return;
                }

                if (_checkBoxChecker.length > 1) {
                    _popModal.Alert('알림', '이동할 메뉴는 하나만 선택해주세요.');
                    return;
                }

                moveTr('UP', _checkBoxChecker.val(), 'CODE_TR');
            });
            $('#sub-down-arrow').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="CODE_SID"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                    return;
                }

                if (_checkBoxChecker.length > 1) {
                    _popModal.Alert('알림', '이동할 메뉴는 하나만 선택해주세요.');
                    return;
                }

                moveTr('DOWN', _checkBoxChecker.val(), 'CODE_TR');
            });

        });
        //////////////
        //////////////

        //All Check 기능 같은 Table상 나누어져있을때 사용
        function allcheck(target) {
            let targettablebody = $(target).parents('table').find('tbody');
            let boolchecker = $(target).is(":checked");
            if (boolchecker) {
                targettablebody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', true);
                });
            } else {
                targettablebody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', false);
                });
            }
        }

        function SaveClassAndCode() {
            $("input[name=CLASS_SID]").each(function (index, item) {
                $(item).prop("checked", true);
            })
            $("input[name=CODE_SID]").each(function (index, item) {
                $(item).prop("checked", true);
            })
            $("#flag").val("save");
            $("#form1").submit();
        }

        //Seq Resetting Big Menu
        function seqBigMenuReSetting(type) {
            let _trSeq;
            if (type == 'CODE_TR') {
                _trSeq = $('#code-tbody tr input[name="ORDER_SEQ"]');
                console.log("탓다");
            }
            let _seq = 1;
            _trSeq.each(function (index, item) {
                $(item).val(_seq);
                _seq++;
                console.log(_seq);
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
        //function Seach() {
        //    $("#flag").val("inquery");
        //    $("#form1").submit();
        //}

        function AddBig() {
            var CLASS_SID = -1;

            $(".CLASS_TR").each(function (index, item) {
                var eachSID = $(item).attr('id').split('_')[0] * 1;
                if (eachSID < 0) {
                    MENU_SID = eachSID - 1;
                }
            });

            var html = $("#CLASS_TEMP").html();
            html = html.replace(/{CLASS_SID}/g, CLASS_SID);
            $("#bigM").append(html);
        }

        function DeleteBig() {
            $("input[name=CLASS_SID]").each(function (index, item) {
                if ($(item).is(":checked") == true) {
                    var SID = $(item).val();
                    $("#" + SID + "_TR_CLASS").remove();
                }
            })
        }

        function ShowCode(SID) {
            $("#CLASS_CHOCIE_SID").val(SID);
            var MENU_NAME = $("#" + SID + "_NAME").val();
            $("#CHOICE_BIG_MENU").text(MENU_NAME);
            $("#code-tbody").empty();
            if ((SID * 1) > 0) {
                showProgress();
                $.ajax({
                    type: "POST",
                    url: "/Source/admin/info/AJAX_CODE_CODE.aspx",
                    dataType: "json",
                    data: { CLASS_SID: SID },
                    success: function (data) {
                        $("#code-tbody").empty();
                        let html = "";
                        if (data.O_ERROR_FLAG[0]["O_ERROR_FLAG"] + "" == "N") {
                            for (var i = 0; i < data.O_RESULT_CURSOR.length; i++) {
                                html = $("#CODE_TEMP").html();
                                html = html.replace(/{CODE_SID}/g, data.O_RESULT_CURSOR[i]["CODE_SID"]);
                                html = html.replace(/{CODE_CODE}/g, data.O_RESULT_CURSOR[i]["CODE_CODE"]);
                                html = html.replace(/{CODE_NAME}/g, data.O_RESULT_CURSOR[i]["CODE_NAME"]);
                                html = html.replace(/{ORDER_SEQ}/g, data.O_RESULT_CURSOR[i]["ORDER_SEQ"]);
                                html = html.replace(/{VALUE1_NUMBER}/g, data.O_RESULT_CURSOR[i]["VALUE1_NUMBER"]);
                                html = html.replace(/{VALUE2_NUMBER}/g, data.O_RESULT_CURSOR[i]["VALUE2_NUMBER"]);
                                html = html.replace(/{VALUE3_NUMBER}/g, data.O_RESULT_CURSOR[i]["VALUE3_NUMBER"]);
                                html = html.replace(/{VALUE4_NUMBER}/g, data.O_RESULT_CURSOR[i]["VALUE4_NUMBER"]);
                                html = html.replace(/{VALUE5_NUMBER}/g, data.O_RESULT_CURSOR[i]["VALUE5_NUMBER"]);
                                html = html.replace(/{VALUE1_CHAR}/g, (data.O_RESULT_CURSOR[i]["VALUE1_CHAR"] + "") == "null" ? "" : data.O_RESULT_CURSOR[i]["VALUE1_CHAR"]);
                                html = html.replace(/{VALUE2_CHAR}/g, (data.O_RESULT_CURSOR[i]["VALUE2_CHAR"] + "") == "null" ? "" : data.O_RESULT_CURSOR[i]["VALUE2_CHAR"]);
                                html = html.replace(/{VALUE3_CHAR}/g, (data.O_RESULT_CURSOR[i]["VALUE3_CHAR"] + "") == "null" ? "" : data.O_RESULT_CURSOR[i]["VALUE3_CHAR"]);
                                html = html.replace(/{VALUE4_CHAR}/g, (data.O_RESULT_CURSOR[i]["VALUE4_CHAR"] + "") == "null" ? "" : data.O_RESULT_CURSOR[i]["VALUE4_CHAR"]);
                                html = html.replace(/{VALUE5_CHAR}/g, (data.O_RESULT_CURSOR[i]["VALUE5_CHAR"] + "") == "null" ? "" : data.O_RESULT_CURSOR[i]["VALUE5_CHAR"]);
                                $("#code-tbody").append(html);
                            }
                        }
                    },
                    error: function (result) {
                        //alert(result.d); //Error function
                        _popModal.Alert('알림', result);
                    },
                    complete: function () {
                        hideProgress();
                    }
                });
            }
        }

        function AddCode() {
            var CODE_SID = -1;

            $(".CODE_TR").each(function (index, item) {
                var eachSID = $(item).attr('id').split('_')[0] * 1;
                if (eachSID < 0) {
                    CODE_SID = eachSID - 1;
                }
            });
            var html = $("#CODE_TEMP").html();
            html = html.replace(/{CODE_SID}/g, CODE_SID);
            html = html.replace(/{CODE_CODE}/g, "");
            html = html.replace(/{CODE_NAME}/g, "");
            html = html.replace(/{ORDER_SEQ}/g, 0);
            html = html.replace(/{VALUE1_NUMBER}/g, 0);
            html = html.replace(/{VALUE2_NUMBER}/g, 0);
            html = html.replace(/{VALUE3_NUMBER}/g, 0);
            html = html.replace(/{VALUE4_NUMBER}/g, 0);
            html = html.replace(/{VALUE5_NUMBER}/g, 0);
            html = html.replace(/{VALUE1_CHAR}/g, "");
            html = html.replace(/{VALUE2_CHAR}/g, "");
            html = html.replace(/{VALUE3_CHAR}/g, "");
            html = html.replace(/{VALUE4_CHAR}/g, "");
            html = html.replace(/{VALUE5_CHAR}/g, "");
            $("#code-tbody").append(html);
        }

        function DeleteCode() {
            $("input[name=CODE_SID]").each(function (index, item) {
                if ($(item).is(":checked") == true) {
                    var SID = $(item).val();
                    $("#" + SID + "_TR_CODE").remove();
                }
            })
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display:none;">
        <input type="text" name="flag" value="" id="flag" />
        <input type="text" name="CLASS_CHOCIE_SID" id="CLASS_CHOCIE_SID" value="" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %></span>
        </div>
        
        <div class="sub-content-wrap">
            <div class="btn-field clears">
                <div class="drkid-btn search-btn" onclick="DeleteBig();" id="big-delete-btn">
                    <span class="lower-font">선택 삭제</span>
                </div>
                <div class="drkid-btn search-btn" onclick="AddBig();" id="big-add-btn">
                    <span class="lower-font">추가</span>
                </div>
                <div class="flex-right-child">
                    <div class="drkid-btn save-btn drkid-btn-active" onclick="SaveClassAndCode();">
                        <span class="lower-font">저장하기</span>
                    </div>
                </div>
            </div>
            <div class="table-wraper max-height-overflow">
                <table class="table-common" >
                <%--<table class="list-table" id="bigM">--%>
                    <colgroup>
                        <col style="width:3%;"/>
                        <col style="width:15%;"/>
                        <col style="width:15%;"/>
                        <col style="width:20%;"/>
                        <col style="width:20%;"/>
                        <col style="width:10%;"/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="lower-font">
                                <label class="drkid-checkbox">
                                    <input type="checkbox" value="Y" id="all-select-class" />
                                    <span class="fake-check-box"></span>
                                </label>
                            </th>
                            <th class="lower-font">클래스코드</th>
                            <th class="lower-font">클래스명</th>
                            <th class="lower-font">TITLE_CHAR1</th>
                            <th class="lower-font">TITLE_CHAR2</th>
                            <th class="lower-font">하위메뉴</th>
                        </tr>
                    </thead>
                    <%--<tr>
                        <th class="lower-font">선택</th>
                        <th class="lower-font">클래스코드</th>
                        <th class="lower-font">클래스명</th>
                        <th class="lower-font">TITLE_CHAR1</th>
                        <th class="lower-font">TITLE_CHAR2</th>
                        <th class="lower-font">하위메뉴</th>
                    </tr>--%>
                    <tbody id="bigM">
                        <%for (int i = 0; i < ListTable.Rows.Count; i++)
                          { %>
                        <tr class="CLASS_TR" id="<%=ListTable.Rows[i]["CLASS_SID"] %>_TR_CLASS">
                            <td class="lower-font">
                                <label class="drkid-checkbox">
                                    <input type="checkbox" value="<%=ListTable.Rows[i]["CLASS_SID"] %>" name="CLASS_SID" />
                                    <span class="fake-check-box"></span>
                                </label>
                            </td>
                            <%--<td class="lower-font">
                                <input type="checkbox" name="CLASS_SID" class="checkboxClass" value="<%=ListTable.Rows[i]["CLASS_SID"] %>" />
                            </td>--%>
                            <td class="lower-font">
                                <input type="text" name="CLASS_CODE" class="drkid-input lowerst-font input-lowheight" placeholder="10자리 이하" maxlength="10" value="<%=ListTable.Rows[i]["CLASS_CODE"] %>" />
                            </td>
                            <td class="lower-font">
                                <input type="text" name="CLASS_NAME" class="drkid-input lowerst-font input-lowheight" id="<%=ListTable.Rows[i]["CLASS_SID"] %>_NAME" value="<%=ListTable.Rows[i]["CLASS_NAME"] %>" />
                            </td>
                            <td class="lower-font">
                                <input type="text" name="TITLE1_CHAR" class="drkid-input lowerst-font input-lowheight" value="<%=ListTable.Rows[i]["TITLE1_CHAR"] %>" />
                            </td>
                            <td class="lower-font">
                                <input type="text" name="TITLE2_CHAR" class="drkid-input lowerst-font input-lowheight" value="<%=ListTable.Rows[i]["TITLE2_CHAR"] %>" />
                            </td>
                            <td class="lower-font">
                                <%--<span class="underline-btn" onclick="ShowCode('<%=ListTable.Rows[i]["CLASS_SID"] %>')">선택</span>--%>
                                <%--<input type="hidden" name="CLASS_SID" value="<%=ListTable.Rows[i]["CLASS_SID"] %>" />--%>
                                <div class="drkid-btn td-btn drkid-btn-active big-target-btn">
                                    <span class="lower-font" onclick="ShowCode('<%=ListTable.Rows[i]["CLASS_SID"] %>')">하위메뉴</span>
                                </div>
                            </td>
                        </tr>
                        <%} %>
                    </tbody>
                </table>
            </div>
            <%--<div class="divinner-header lower-font bold" style="margin: 10px 0;">
                코드관리 <span class="lower-font" id="CHOICE_BIG_MENU"></span>
                <div class="clickBtnSet middle-font bglightBlue EDIT_AUTH" onclick="AddCode();" style="float: right;">추가</div>
                <div class="clickBtnSet middle-font EDIT_AUTH" onclick="DeleteCode();" style="float: right;">삭제</div>
            </div>--%>
            <div class="btn-field clears">
                <div class="sub-info-title">
                    <span class="lower-font">코드관리 <span class="choise-menu" id="CHOICE_BIG_MENU"></span> <span class="lowerst-font info-color">(*) 클래스 코드와 코드를 확인 후 수정 삭제하세요.</span></span>
                </div>
                <div class="flex-right-child sub-btn-field">
                    <div class="drkid-btn search-btn" id="sub-delete-btn" onclick="DeleteCode();">
                        <span class="lower-font">선택 삭제</span>
                    </div>
                    <div class="drkid-btn search-btn" id="sub-add-btn" onclick="AddCode();">
                        <span class="lower-font" >추가</span>
                    </div>
                    <div class="liner-icon-wraper">
                        <span class="drkid-icon arrow-big up-arrow" id="sub-up-arrow"></span>
                        <span class="drkid-icon arrow-big down-arrow" id="sub-down-arrow"></span>
                    </div>
                </div>
            </div>
            <div class="table-wraper max-height-overflow">
                <%--<table class="list-table" id="SubM" style="width: 125%;">--%>
                <table class="table-common">
                    <colgroup>
                        <col style="width: 3%;" />
                        <col style="width: 10%;" />
                        <col style="width: 10%;" />
                        <col style="width: 5%;" />
                        <col style="width: 8%;" />
                        <col style="width: 8%;" />
                        <col style="width: 8%;" />
                        <col style="width: 8%;" />
                        <col style="width: 8%;" />
                        <col style="width: 6%;" />
                        <col style="width: 6%;" />
                        <col style="width: 6%;" />
                        <col style="width: 6%;" />
                        <col style="width: 6%;" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="lower-font">
                                <label class="drkid-checkbox">
                                    <input type="checkbox" value="Y" id="all-select-sub" />
                                    <span class="fake-check-box"></span>
                                </label>
                            </th>
                            <th class="lower-font">코드</th>
                            <th class="lower-font">코드명</th>
                            <th class="lower-font">순서</th>
                            <th class="lower-font">문자열항목1</th>
                            <th class="lower-font">문자열항목2</th>
                            <th class="lower-font">문자열항목3</th>
                            <th class="lower-font">문자열항목4</th>
                            <th class="lower-font">문자열항목5</th>
                            <th class="lower-font">숫자열항목1</th>
                            <th class="lower-font">숫자열항목2</th>
                            <th class="lower-font">숫자열항목3</th>
                            <th class="lower-font">숫자열항목4</th>
                            <th class="lower-font">숫자열항목5</th>
                        </tr>
                    </thead>
                    <tbody id="code-tbody"></tbody>
                </table>
            </div>
        </div>
    </div>
    <script type="text/template" id="CLASS_TEMP">
        <tr class="CLASS_TR" id="{CLASS_SID}_TR_CLASS">
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{CLASS_SID}" name="CLASS_SID" />
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <td class="lower-font">
                <input type="text" name="CLASS_CODE" class="drkid-input lowerst-font input-lowheight" placeholder="10자리 이하" maxlength="10" value="" />
            </td>
            <td class="lower-font">
                <input type="text" name="CLASS_NAME" class="drkid-input lowerst-font input-lowheight" id="{CLASS_SID}_NAME" value="" />
            </td>
            <td class="lower-font">
                <input type="text" name="TITLE1_CHAR" class="drkid-input lowerst-font input-lowheight" value="" />
            </td>
            <td class="lower-font">
                <input type="text" name="TITLE2_CHAR" class="drkid-input lowerst-font input-lowheight" value="" />
            </td>
            <td class="lower-font">
                <div class="drkid-btn td-btn drkid-btn-active big-target-btn">
                    <span class="lower-font" onclick="ShowCode('{CLASS_SID}')">하위메뉴</span>
                </div>
            </td>
        </tr>
    </script>
    <script type="text/template" id="CODE_TEMP">
        <tr class="CODE_TR" id="{CODE_SID}_TR_CODE">
            <%--<td class="lower-font">
                <input type="checkbox" name="CODE_SID" class="checkboxClass" value="{CODE_SID}" />
            </td>--%>
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{CODE_SID}" name="CODE_SID" />
                    <span class="fake-check-box"></span>
                </label>
            </td>
           <%-- <td class="lower-font">
                <input type="text" name="CODE_CODE" placeholder="10자리 이하" maxlength="10" value="{CODE_CODE}" class="inputwidth100 search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="CODE_NAME" value="{CODE_NAME}" class="inputwidth100 search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="ORDER_SEQ" value="{ORDER_SEQ}" class="inputwidth100 search-input lower-font" maxlength="3" onkeyup="hiponeClear(this);" /></td>
            <td class="lower-font">
                <input type="text" name="VALUE1_CHAR" value="{VALUE1_CHAR}" class="inputwidth100 search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="VALUE2_CHAR" value="{VALUE2_CHAR}" class="inputwidth100 search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="VALUE3_CHAR" value="{VALUE3_CHAR}" class="inputwidth100 search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="VALUE4_CHAR" value="{VALUE4_CHAR}" class="inputwidth100 search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="VALUE5_CHAR" value="{VALUE5_CHAR}" class="inputwidth100 search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="VALUE1_NUMBER" value="{VALUE1_NUMBER}" class="inputwidth100 numberFormat search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="VALUE2_NUMBER" value="{VALUE2_NUMBER}" class="inputwidth100 numberFormat search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="VALUE3_NUMBER" value="{VALUE3_NUMBER}" class="inputwidth100 numberFormat search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="VALUE4_NUMBER" value="{VALUE4_NUMBER}" class="inputwidth100 numberFormat search-input lower-font" /></td>
            <td class="lower-font">
                <input type="text" name="VALUE5_NUMBER" value="{VALUE5_NUMBER}" class="inputwidth100 numberFormat search-input lower-font" /></td>--%>
            <td class="lower-font">
                <input type="text" name="CODE_CODE" class="drkid-input lowerst-font input-lowheight" value="{CODE_CODE}" placeholder="" maxlength="100" />
            </td>
            <td class="lower-font">
                <input type="text" name="CODE_NAME" class="drkid-input lowerst-font input-lowheight" value="{CODE_NAME}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="ORDER_SEQ" class="drkid-input lowerst-font input-lowheight" value="{ORDER_SEQ}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="VALUE1_CHAR" class="drkid-input lowerst-font input-lowheight" value="{VALUE1_CHAR}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="VALUE2_CHAR" class="drkid-input lowerst-font input-lowheight" value="{VALUE2_CHAR}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="VALUE3_CHAR" class="drkid-input lowerst-font input-lowheight" value="{VALUE3_CHAR}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="VALUE4_CHAR" class="drkid-input lowerst-font input-lowheight" value="{VALUE4_CHAR}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="VALUE5_CHAR" class="drkid-input lowerst-font input-lowheight" value="{VALUE5_CHAR}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="VALUE1_NUMBER" class="drkid-input lowerst-font input-lowheight" value="{VALUE1_NUMBER}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="VALUE2_NUMBER" class="drkid-input lowerst-font input-lowheight" value="{VALUE2_NUMBER}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="VALUE3_NUMBER" class="drkid-input lowerst-font input-lowheight" value="{VALUE3_NUMBER}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="VALUE4_NUMBER" class="drkid-input lowerst-font input-lowheight" value="{VALUE4_NUMBER}" placeholder=""maxlength="100"  />
            </td>
            <td class="lower-font">
                <input type="text" name="VALUE5_NUMBER" class="drkid-input lowerst-font input-lowheight" value="{VALUE5_NUMBER}" placeholder=""maxlength="100"  />
            </td>
        </tr>
    </script>
</asp:Content>
