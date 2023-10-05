<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_AUTH_MENU.aspx.cs" Inherits="drKidAdmin.Source.admin.menu.A_AUTH_MENU" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #left-panel{
            width:350px;
            margin-right:15px;
        }
        #right-panel{
            width:calc(100% - 365px);
        }
        #left-panel-inner{
            width:100%;
            border:1px solid var(--mono_line);
        }
        #left-panel-inner-title{
            height:40px;
            line-height:40px;
            width:100%;
            padding-left:15px;
            background-color:var(--mono_line);
            color:var(--mono_main);
        }
        .flex-wraper{display:flex;}
        .auth-btn{
            margin:0;
        }
        .auth-btn:first-child{
            margin-right:10px;
        }
        .auth-field{
            justify-content:flex-end;
            margin-top:7px;
            margin-bottom:7px;
            padding-right:7px;
        }
        .auth-btn{
            min-width:80px;
            min-height:15px;
        }
        .left-padding-left{
            padding-left:10px;
            padding-right:10px;
        }
        .left-max-height-combo{
            height: calc(400px + 36px + 7px);
            overflow-y: auto;
        }
        .text-align-left-td{
            text-align:left !important;
            padding-left:10px !important;
        }
        /*모달*/
        #class-Modal{
            display:none;
        }
        .class-modal-back{
            background-color:#040404;
            opacity:0.33;
        }
        .pop-modal-title{
            text-align:center;
            width:100%;
            padding-top:8px;
            padding-bottom:20px;
        }
        #pop-modal-wraper{
            width:100%;
            margin-bottom:20px;
        }
        .inner-pop-custom{
            padding:10px;
            width:340px;
            min-width:340px;
        }
        .table-common.popmodal-table > tbody tr th{
            height: 40px;
            background-color: var(--mono_back);
            border: 1px solid var(--mono_line);
            text-align: center;
            color: var(--mono_main);
            word-break: break-all;
        }
        .table-common.popmodal-table > tbody tr td{
            word-break: break-all;
        }
        #save-class{
            margin:0;
        }
    </style>
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
            //Radio Btn 바뀔시 작동처리
            $('.radio-fake').on('change', function (e) {
                changeData(e.currentTarget);
            });
            //Class 추가 Btn 선택
            $("#auth-add").on('click', function () {
                $("#class-Modal").show();
            });
            $(".class-modal-back").on('click', function () {
                $("#class-Modal").hide();
            });
            //클래스 저장 버튼 선택
            $('#save-class').on('click', function () {
                let _CLASS_CODE = $('input[name="CLASS_CODE"]').val()+'';
                let _CLASS_NAME = $('input[name="CLASS_NAME"]').val()+'';

                if (_CLASS_CODE == '') {
                    _popModal.Alert('알림', '클래스코드를 입력해주세요');
                    return;
                }

                if (_CLASS_NAME == '') {
                    _popModal.Alert('알림', '클래스명을 입력해주세요');
                    return;
                }

                showProgress();
                $('#flag').val('class-save');
                $('#form1').submit();
            });
            //클래스 선택 삭제
            $('#auth-delete').on('click', function () {
                let _AUTH_CHECKER = $('input:checkbox[name="AUTH_CHECKER"]:checked');

                if (_AUTH_CHECKER.length == 0) {
                    _popModal.Alert('알림', '하나 이상의 권한클래스를 선택해주세요.');
                }

                _popModal.Promt('알림', '정말로 삭제하시겠습니까?', function () {
                    showProgress();
                    $('#flag').val('class-delete');
                    $('#form1').submit();
                }, function (err) { _popModal.Alert('알림', err); })
            });
            //클래스 선택 버튼 활성화
            $('.target-auth-btn').on('click', (e) => {
                ActiveTrAndChangeSub(e.currentTarget);
            });
            //Save 권한
            $('#save-auth').on('click', function () {
                showProgress();
                $('#flag').val('save');
                $('#form1').submit();
            });
            //초기 SELECT_AUTH 가 있을경우
            if (($('#SELECT_AUTH').val() + '') != '') {
                let _AUTH_IDS = $('#SELECT_AUTH').val() + '';
                ActiveTrAndChangeSub($(`[data-id='${_AUTH_IDS}']`));
            }
        });

        function changeData(target) {
            let _parentTd = $(target).parents('.radio-td');
            let _targetHiddenRealValue = _parentTd.find('.real-radio-input');
            _targetHiddenRealValue.val($(target).val());
        }

        function ActiveTrAndChangeSub(target) {
            let _tr = $(target).parents('tr');
            let _Auth = $(target).data('id');
            $('#SELECT_AUTH').val(_Auth+'');
            $('#auth-body > tr').each(function (index, item) {
                $(item).removeClass('active-tr');
            });
            _tr.addClass('active-tr');
            showProgress();
            $("#tbody").empty();
            $.ajax({
                type: "post",
                url: "/Source/admin/menu/AJAX_SUB_AUTH.aspx",
                dataType: 'json',
                data: { TARGET_AUTH: _Auth },
                success: function (data) {
                    let html;
                    if (data.O_ERROR_FLAG[0]["O_ERROR_FLAG"] + "" == "N") {
                        for (var i = 0; i < data.O_RESULT_CURSOR.length; i++) {
                            let _sid = data.O_RESULT_CURSOR[i]["MENU_SID"] + '';
                            let _MENU_NAME = (data.O_RESULT_CURSOR[i]["MENU_LEV"] + '') != '1' ? '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;' + (data.O_RESULT_CURSOR[i]["MENU_NAME"] + '') : (data.O_RESULT_CURSOR[i]["MENU_NAME"] + '');
                            html = $("#AUTH_MENU_TEMPLATE").html();
                            html = html.replace(/{MENU_SID}/g, data.O_RESULT_CURSOR[i]["MENU_SID"]);
                            html = html.replace(/{MENU_NAME}/g, _MENU_NAME);
                            html = html.replace(/{MENU_LEV}/g, data.O_RESULT_CURSOR[i]["MENU_LEV"]);
                            html = html.replace(/{REMARK}/g, data.O_RESULT_CURSOR[i]["REMARK"]);
                            html = html.replace(/{AUTH_EDIT}/g, data.O_RESULT_CURSOR[i]["AUTH_EDIT"]);
                            html = html.replace(/{AUTH_VISIBLE}/g, data.O_RESULT_CURSOR[i]["AUTH_VISIBLE"]);
                            html = html.replace(/{AUTH_FLAG1}/g, data.O_RESULT_CURSOR[i]["AUTH_FLAG1"]);
                            html = html.replace(/{AUTH_FLAG2}/g, data.O_RESULT_CURSOR[i]["AUTH_FLAG2"]);

                            let _binding = $(html);
                            _binding.find('.radio-fake').on('change', function (e) {
                                changeData(e.currentTarget);
                            });
                            _binding.find(`input[name='${_sid}_V']`).each(function (index, item) {
                                if ((data.O_RESULT_CURSOR[i]["AUTH_VISIBLE"] + '') == ($(item).val() + '')) {
                                    $(item).prop('checked', true);
                                }
                            });
                            _binding.find(`input[name='${_sid}_E']`).each(function (index, item) {
                                if ((data.O_RESULT_CURSOR[i]["AUTH_EDIT"] + '') == ($(item).val() + '')) {
                                    $(item).prop('checked', true);
                                }
                            });
                            _binding.find(`input[name='${_sid}_F1']`).each(function (index, item) {
                                if ((data.O_RESULT_CURSOR[i]["AUTH_FLAG1"] + '') == ($(item).val() + '')) {
                                    $(item).prop('checked', true);
                                }
                            });
                            _binding.find(`input[name='${_sid}_F2']`).each(function (index, item) {
                                if ((data.O_RESULT_CURSOR[i]["AUTH_FLAG2"] + '') == ($(item).val() + '')) {
                                    $(item).prop('checked', true);
                                }
                            });
                            if ((data.O_RESULT_CURSOR[i]["USABLE_FLAG"] + '') == 'Y') {
                                _binding.find(`input:checkbox[name='AUTH_USABLE_FLAG']`).prop('checked', true);
                            }
                            $("#tbody").append(_binding);
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
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="SELECT_AUTH" value="<%=SELECT_AUTH %>" id="SELECT_AUTH" />
    </div>
    <div class="t2l-alert-modal-wraper" id="class-Modal">
        <div class="t2l-bg-background class-modal-back"></div>
        <div class="t2l-alert-inner-wraper inner-center inner-pop-custom">
            <div class="pop-modal-title">
                <span class="lower-font">권한 생성</span>
            </div>
            <div id="pop-modal-wraper">
                <table class="table-common popmodal-table">
                    <colgroup>
                        <col style="width:80px;"/>
                        <col style="width:220px;"/>
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="lower-font">권한코드</th>
                            <td class="lower-font">
                                <input type="text" name="CLASS_CODE" class="drkid-input lowerst-font input-lowheight" value="" placeholder="권한코드" maxlength="10"  />
                            </td>
                        </tr>
                        <tr>
                            <th class="lower-font">권한명</th>
                            <td class="lower-font">
                                <input type="text" name="CLASS_NAME" class="drkid-input lowerst-font input-lowheight" value="" placeholder="권한명" maxlength="50"  />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="t2l-btn-area">
                <div class="drkid-btn search-btn drkid-btn-active" id="save-class">
                    <span class="lower-font">저장</span>
                </div>
            </div>
        </div>
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %></span>
        </div>
        <div class="sub-content-wrap flex-wraper">
            <div id="left-panel">
                <div id="left-panel-inner">
                    <div id="left-panel-inner-title">
                        <span class="lower-font">권한 클래스</span>
                    </div>
                    <div class="btn-field clears auth-field">
                        <div class="drkid-btn search-btn auth-btn" id="auth-delete">
                            <span class="lower-font">선택 삭제</span>
                        </div>
                        <div class="drkid-btn search-btn auth-btn drkid-btn-active" id="auth-add">
                            <span class="lower-font">추가</span>
                        </div>
                    </div>
                    <div class="table-wraper max-height-overflow left-padding-left">
                        <table class="table-common">
                            <colgroup>
                                <col style="width:40px;"/>
                                <col style="width:90px"/>
                                <col />
                                <col />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="lower-font">선택</th>
                                    <th class="lower-font">권한보기</th>
                                    <th class="lower-font">권한코드</th>
                                    <th class="lower-font">권한명</th>
                                </tr>
                            </thead>
                            <tbody id="auth-body">
                                <%if(listTable != null){ %>
                                    <%for (int i = 0; i < listTable.Rows.Count; i++){ %>
                                        <tr>
                                            <td class="lower-font">
                                                <label class="drkid-checkbox">
                                                    <input type="checkbox" value="<%=listTable.Rows[i]["AUTH_ID"] %>" name="AUTH_CHECKER"/>
                                                    <span class="fake-check-box"></span>
                                                </label>
                                            </td>
                                            <td class="lowerst-font">
                                                <div class="drkid-btn search-btn auth-btn drkid-btn-active target-auth-btn" data-id="<%=listTable.Rows[i]["AUTH_ID"] %>">
                                                    <span class="lower-font">선택</span>
                                                </div>
                                            </td>
                                            <td class="lowerst-font"><%=listTable.Rows[i]["AUTH_ID"] %></td>
                                            <td class="lowerst-font"><%=listTable.Rows[i]["AUTH_NM"] %></td>
                                        </tr>
                                    <%} %>
                                <%} %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="right-panel">
                <div class="btn-field clears">
                    <div class="flex-right-child">
                        <div class="drkid-btn search-btn drkid-btn-active" id="save-auth">
                            <span class="lower-font">저장</span>
                        </div>
                    </div>
                </div>
                <div class="table-wraper left-max-height-combo">
                    <table class="table-common">
                        <colgroup>
                            <col style="width:60px;"/>
                            <col style="width:15%;"/>
                            <col style="width:60px;"/>
                            <col style="width:12.5%;"/>
                            <col style="width:12.5%;"/>
                            <col style="width:12.5%;"/>
                            <col style="width:12.5%;"/>
                            <col/>
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="lower-font">사용여부</th>
                                <th class="lower-font">메뉴이름</th>
                                <th class="lower-font">메뉴레벨</th>
                                <th class="lower-font">노출권한</th>
                                <th class="lower-font">편집권한</th>
                                <th class="lower-font">서브권한1</th>
                                <th class="lower-font">서브권한2</th>
                                <th class="lower-font">메뉴비고</th>
                            </tr>
                        </thead>
                        <tbody id="tbody"></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script type="text/html" id="AUTH_MENU_TEMPLATE">
        <tr>
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{MENU_SID}" name="AUTH_USABLE_FLAG"/>
                    <span class="fake-check-box"></span>
                </label>
                <input type="hidden" name="SUB_MENU_SID" value="{MENU_SID}" />
            </td>
            <td class="lower-font text-align-left-td">{MENU_NAME}</td>
            <td class="lower-font">{MENU_LEV}</td>
            <td class="lower-font radio-td">
                <label class="drkid-radio">
                    <input type="radio" name="{MENU_SID}_V" value="Y" class="radio-fake"/>
                    <span class="lower-font">노출</span>
                </label>
                <label class="drkid-radio">
                    <input type="radio" name="{MENU_SID}_V" value="N" class="radio-fake" />
                    <span class="lower-font">숨김</span>
                </label>
                <input type="hidden" class="real-radio-input" name="AUTH_VISIBLE" value="{AUTH_VISIBLE}" />
            </td>
            <td class="lower-font radio-td">
                <label class="drkid-radio">
                    <input type="radio" name="{MENU_SID}_E" value="Y" class="radio-fake"/>
                    <span class="lower-font">부여</span>
                </label>
                <label class="drkid-radio">
                    <input type="radio" name="{MENU_SID}_E" value="N" class="radio-fake" />
                    <span class="lower-font">미부여</span>
                </label>
                <input type="hidden" class="real-radio-input" name="AUTH_EDIT" value="{AUTH_EDIT}" />
            </td>
            <td class="lower-font radio-td">
                <label class="drkid-radio">
                    <input type="radio" name="{MENU_SID}_F1" value="Y" class="radio-fake"/>
                    <span class="lower-font">부여</span>
                </label>
                <label class="drkid-radio">
                    <input type="radio" name="{MENU_SID}_F1" value="N" class="radio-fake" />
                    <span class="lower-font">미부여</span>
                </label>
                <input type="hidden" class="real-radio-input" name="AUTH_FLAG1" value="{AUTH_FLAG1}" />
            </td>
            <td class="lower-font radio-td">
                <label class="drkid-radio">
                    <input type="radio" name="{MENU_SID}_F2" value="Y" class="radio-fake"/>
                    <span class="lower-font">부여</span>
                </label>
                <label class="drkid-radio">
                    <input type="radio" name="{MENU_SID}_F2" value="N" class="radio-fake" />
                    <span class="lower-font">미부여</span>
                </label>
                <input type="hidden" class="real-radio-input" name="AUTH_FLAG2" value="{AUTH_FLAG2}" />
            </td>
            <td class="lowerst-font">{REMARK}</td>
        </tr>
    </script>
</asp:Content>
