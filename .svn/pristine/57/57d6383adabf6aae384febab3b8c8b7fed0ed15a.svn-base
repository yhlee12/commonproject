<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_AUTH_USER.aspx.cs" Inherits="drKidAdmin.Source.admin.menu.A_AUTH_USER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #inner-sub-content-wraper{
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
        }
        .input-searchheight{
            height:35px;
            line-height:35px !important;
            border-right:0;
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
            $(".box-box").each(function (index, item) {
                $(item).on('click', function (e) {
                    checkBoxActive(e.currentTarget);
                });
            });
            //popup Open
            $('#find-pop').on('click', function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    //data object
                    $('#AUTH_USER').val(data.CODE_NAME);
                    $('#AUTH_USER_SID').val(data.CODE_SID);
                }).catch((err) => {
                    console.log(err);
                });
            });
            //검색
            $('#search-auth').on('click', function () {
                $('#flag').val('inquery');
                $('#form1').submit();
            });
            //저장
            $('#save-auth').on('click', function () {
                _popModal.Promt('알림', '저장하시겠습니까?',()=> {
                    $('#flag').val('save');
                    $('#form1').submit();
                }, (err) => { _popModal.Alert('알림', err); })
            });
            //초기화
            $('#refresh').on('click', function () {
                $('#AUTH_USER').val("");
                $('#AUTH_USER_SID').val("");
                $('#flag').val('inquery');
                $('#form1').submit();
            });
            //선택 추가
            $('#add-auth').on('click', function () {
                let _checkData = $('input:checkbox[name="AUTH_CHECKER"]:checked');
                if (_checkData.length == 0) {
                    _popModal.Alert('알림', '하나이상의 권한을 선택해주세요.');
                    return;
                }

                _checkData.each(function (index, item) {
                    let _AuthId = $(item).val();
                    let _PTr = $(item).parents('tr');
                    _PTr.find('input:checkbox[name="AUTH_CHECKER"]').prop('name', 'USED_CHECKER');
                    let _newInput = `<input type="hidden" name="USED_AUTH_ID" value="${_AuthId}" />`;
                    _PTr.find('.drkid-checkbox').after($(_newInput));
                    $('#USED_TBODY').append(_PTr);
                });
            });
            //선택 삭제
            $('#remove-auth').on('click', function () {
                let _checkData = $('input:checkbox[name="USED_CHECKER"]:checked');
                if (_checkData.length == 0) {
                    _popModal.Alert('알림', '하나이상의 권한을 선택해주세요.');
                    return;
                }
                _checkData.each(function (index, item) {
                    let _PTr = $(item).parents('tr');
                    _PTr.find('input:checkbox[name="USED_CHECKER"]').prop('name', 'AUTH_CHECKER');
                    _PTr.find('input[name="USED_AUTH_ID"]').remove();
                    $('#COMMON_TBODY').append(_PTr);
                });
            });
        });
        //체크박스 Tr Active 처리.
        function checkBoxActive(target) {
            let _tr = $(target).parents('tr');
            if ($(target).is(':checked')) {
                _tr.addClass('active-tr');
            } else {
                _tr.removeClass('active-tr');
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
    </div>
    
    <div class="sub-warp">
        <div class="sub-content-wrap min-auto">
            <div class="sub-content-title">
                <div class="sub-content-title-div">
                    <span class="lower-font">권한분류</span>
                </div>
                <div class="sub-content-search-field">
                    <input type="text" class="drkid-input lowerst-font input-searchheight" name="AUTH_USER" id="AUTH_USER" value="<%=AUTH_USER %>" placeholder="사용자" />
                    <input type="hidden" name="AUTH_USER_SID" id="AUTH_USER_SID" value="<%=AUTH_USER_SID %>" />
                    <div class="drkid-btn search-input-btn" id="find-pop" data-class-code="A_USER" data-title="관리자 찾기" data-search-target-id="AUTH_USER" data-target="COMMON_POPUP_1">
                        <span class="lower-font">찾기</span>
                    </div>
                </div>
            </div>
            <div class="btn-field clears center-field">
                <div class="flex-center-child">
                    <div class="drkid-btn search-btn drkid-btn-active" id="search-auth">
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
            <span class="middle-font">권한할당</span>
        </div>
        <div class="sub-content-wrap">
            <div class="btn-field clears">
                <div class="flex-right-child">
                    <div class="drkid-btn search-btn drkid-btn-active no-margin-right" id="save-auth">
                        <span class="lower-font">저장</span>
                    </div>
                </div>
            </div>
            <div id="inner-sub-content-wraper">
                <div class="inner-flex-panel">
                    <div class="center-title">
                        <span class="lower-font">권한 클래스</span>
                    </div>
                    <div class="btn-field clears auth-field">
                        <div class="flex-right-child">
                            <div class="drkid-btn search-btn drkid-btn-active no-margin-right" id="add-auth">
                                <span class="lower-font">선택추가</span>
                            </div>
                        </div>
                    </div>
                    <div class="table-wraper max-height-overflow left-padding-left">
                        <table class="table-common">
                            <colgroup>
                                <col style="width:40px;"/>
                                <col style="width:120px;"/>
                                <col />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="lower-font">선택</th>
                                    <th class="lower-font">권한코드</th>
                                    <th class="lower-font">권한명</th>
                                </tr>
                            </thead>
                            <tbody id="COMMON_TBODY">
                                <%for(int i = 0; i < COMMON_AUTH_LIST.Rows.Count;i++){ %>
                                    <tr>
                                        <td class="lower-font">
                                            <label class="drkid-checkbox">
                                                <input type="checkbox" value="<%=COMMON_AUTH_LIST.Rows[i]["AUTH_ID"] %>" name="AUTH_CHECKER" class="box-box"/>
                                                <span class="fake-check-box"></span>
                                            </label>
                                        </td>
                                        <td class="lowerst-font"><%=COMMON_AUTH_LIST.Rows[i]["AUTH_ID"] %></td>
                                        <td class="lowerst-font"><%=COMMON_AUTH_LIST.Rows[i]["AUTH_NM"] %></td>
                                    </tr>
                                <%} %>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="inner-flex-panel">
                    <div class="center-title">
                        <span class="lower-font">부여 된 권한</span>
                    </div>
                    <div class="btn-field clears auth-field">
                        <div class="flex-right-child">
                            <div class="drkid-btn search-btn no-margin-right" id="remove-auth">
                                <span class="lower-font">선택제거</span>
                            </div>
                        </div>
                    </div>
                    <div class="table-wraper max-height-overflow left-padding-left">
                        <table class="table-common">
                            <colgroup>
                                <col style="width:40px;"/>
                                <col style="width:120px;"/>
                                <col />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="lower-font">선택</th>
                                    <th class="lower-font">권한코드</th>
                                    <th class="lower-font">권한명</th>
                                </tr>
                            </thead>
                            <tbody id="USED_TBODY">
                                <%for(int i = 0; i < USER_AUTH_LIST.Rows.Count;i++){ %>
                                    <tr>
                                        <td class="lower-font">
                                            <label class="drkid-checkbox">
                                                <input type="checkbox" value="<%=USER_AUTH_LIST.Rows[i]["AUTH_ID"] %>" name="USED_CHECKER" class="box-box"/>
                                                <span class="fake-check-box"></span>
                                            </label>
                                            <input type="hidden" name="USED_AUTH_ID" value="<%=USER_AUTH_LIST.Rows[i]["AUTH_ID"] %>" />
                                        </td>
                                        <td class="lowerst-font"><%=USER_AUTH_LIST.Rows[i]["AUTH_ID"] %></td>
                                        <td class="lowerst-font"><%=USER_AUTH_LIST.Rows[i]["AUTH_NM"] %></td>
                                    </tr>
                                <%} %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
