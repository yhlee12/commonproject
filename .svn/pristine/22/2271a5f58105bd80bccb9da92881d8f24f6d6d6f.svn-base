<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_INFO_TERM.aspx.cs" Inherits="drKidAdmin.Source.admin.info.A_INFO_TERM" %>
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
            height: calc(63vh + 36px + 7px);
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
        #smarteditor{
            display:none;
        }
    </style>
    <script src="/smarteditor2.3.10/js/HuskyEZCreator.js" charset="utf-8"></script>

    <script>
        var oEditors = [];
        
        $(function () {
            
            function smartEditorIFrame(innerText) {
                nhn.husky.EZCreator.createInIFrame({
                    oAppRef: oEditors,
                    elPlaceHolder: "smarteditor",
                    sSkinURI: "/smarteditor2.3.10/SmartEditor2Skin.html",
                    fCreator: "createSEditor2",
                    htParams: {
                        bUseToolbar: true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
                        bUseVerticalResizer: true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
                        bUseModeChanger: true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
                        fOnBeforeUnload: function () {
                        }
                    },
                    fOnAppLoad: function () {
                        if(innerText == null){

                        }
                        else{
                            oEditors.getById["smarteditor"].exec("PASTE_HTML", [innerText]);
                        }
                    },
                });
            }
            //smartEditorIFrame();

            $('.target-auth-btn').on('click',function(){
                showProgress();
                $(".sm_wrap").empty();
                $(".sm_wrap").append("<textarea class='lower-font' name='smarteditor' id='smarteditor' style='width: 100%;display: none;' placeholder='답변을 입력해 주세요.'></textarea>")
                var termcode = $(this).attr('id');
                // 저장에 사용할 선택된 약관코드
                $("#CHOICE_CLASS_CODE").val(termcode);
                console.log(termcode);

                //smartEditorIFrame(termcode);
                
                $.ajax({
                    type: "post",
                    url: "/Source/admin/info/AJAX_TERM_BODY.aspx",
                    data: {termcode: termcode },
                    success: function (data) {
                        console.log(data);
                        smartEditorIFrame(data);
                    },
                    error: function (err) {
                        _popModal.Alert('알림', err);
                    },
                    complete: function () {
                        hideProgress();
                        
                    }
                });
            });

        });

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
            var flag = "<%=flag%>";
            if(flag == "save"){
                var term_save_flag = "<%=term_save_flag%>";
                if(term_save_flag=='Y'){
                    _popModal.Alert("저장 완료", "약관 내용이 저장되었습니다.");

                }
                else{
                    _popModal.Alert("저장 실패", "약관 내용 저장에 실패하였습니다.");
                }
                term_save_flag = "";
                flag = "";
            }
            

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
                    _popModal.Alert('알림', '하나 이상의 약관클래스를 선택해주세요.');
                }
                console.log(_AUTH_CHECKER);
                console.log(_AUTH_CHECKER.val());
                _popModal.Promt('알림', '정말로 삭제하시겠습니까?', function () {
                    showProgress();
                    $('#flag').val('class-delete');
                    $('#form1').submit();
                }, function (err) { _popModal.Alert('알림', err); })
            });
            //클래스 선택 버튼 활성화
            //$('.target-auth-btn').on('click', (e) => {
            //    var termcode = ActiveTrAndChangeSub(e.currentTarget);
            //console.log(termcode);

            //smartEditorIFrame(termcode);


            //    //smartEditorIFrame();
            //});

            //Save 약관
            $('#save-body').on('click', function () {
                //showProgress();
                
                // 스마트 에디터 내용 저장
                oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
                var content = document.getElementById("smarteditor").value;
                $("#TERM_BODY").val(content.toString());

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
            let _Auth = $(target).data('id');   //약관 코드
            $('#SELECT_AUTH').val(_Auth+'');
            $('#auth-body > tr').each(function (index, item) {
                $(item).removeClass('active-tr');
            });
            _tr.addClass('active-tr');
            //showProgress();
            console.log(_Auth);
            console.log(oEditors.getById["smarteditor"].elEditingAreaContainer);

            $(".se2_inputarea").empty();

            return _Auth;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="SELECT_AUTH" value="<%=SELECT_AUTH %>" id="SELECT_AUTH" />
        <input type="text" name="CHOICE_CLASS_CODE" value="" id="CHOICE_CLASS_CODE" />
        <input type="text" name="TERM_BODY" value="" id="TERM_BODY" />
    </div>
    <div class="t2l-alert-modal-wraper" id="class-Modal">
        <div class="t2l-bg-background class-modal-back"></div>
        <div class="t2l-alert-inner-wraper inner-center inner-pop-custom">
            <div class="pop-modal-title">
                <span class="lower-font">약관 생성</span>
            </div>
            <div id="pop-modal-wraper">
                <table class="table-common popmodal-table">
                    <colgroup>
                        <col style="width:80px;"/>
                        <col style="width:220px;"/>
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="lower-font">약관코드</th>
                            <td class="lower-font">
                                <input type="text" name="CLASS_CODE" class="drkid-input lowerst-font input-lowheight" value="" placeholder="약관코드" maxlength="10"  />
                            </td>
                        </tr>
                        <tr>
                            <th class="lower-font">약관명</th>
                            <td class="lower-font">
                                <input type="text" name="CLASS_NAME" class="drkid-input lowerst-font input-lowheight" value="" placeholder="약관명" maxlength="50"  />
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
                        <span class="lower-font">약관 클래스</span>
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
                                    <th class="lower-font">약관보기</th>
                                    <th class="lower-font">약관코드</th>
                                    <th class="lower-font">약관명</th>
                                </tr>
                            </thead>
                            <tbody id="auth-body">
                                <%if(listTable != null){ %>
                                    <%for (int i = 0; i < listTable.Rows.Count; i++){ %>
                                        <tr>
                                            <td class="lower-font">
                                                <label class="drkid-checkbox">
                                                    <input type="checkbox" value="<%=listTable.Rows[i]["TYPE"] %>" name="AUTH_CHECKER"/>
                                                    <span class="fake-check-box"></span>
                                                </label>
                                            </td>
                                            <td class="lowerst-font">
                                                <div class="drkid-btn search-btn auth-btn drkid-btn-active target-auth-btn" id="<%=listTable.Rows[i]["TYPE"] %>" data-id="<%=listTable.Rows[i]["TYPE"] %>">
                                                    <span class="lower-font">선택</span>
                                                </div>
                                            </td>
                                            <td class="lowerst-font"><%=listTable.Rows[i]["TYPE"] %></td>
                                            <td class="lowerst-font"><%=listTable.Rows[i]["TITLE"] %></td>
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
                        <div class="drkid-btn search-btn drkid-btn-active" id="save-body">
                            <span class="lower-font">내용 저장</span>
                        </div>
                    </div>
                </div>
                <div class="left-max-height-combo">
                    <div class="sm_wrap">
                        <textarea class="lower-font" name="smarteditor" id="smarteditor" style="width: 100%;" placeholder="답변을 입력해 주세요."></textarea>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
