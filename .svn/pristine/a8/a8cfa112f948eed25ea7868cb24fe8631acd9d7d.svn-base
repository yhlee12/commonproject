<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_PRODUCT_TEMEDIT.aspx.cs" Inherits="drKidAdmin.Source.admin.product.A_PRODUCT_TEMEDIT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sub-content-request-ui-area{
            height: 100%;
            padding: 12px 30px;
            width: 100%;
        }
        .category_request_area {
            display: flex;
            align-items: center;
            padding: 10px 0px;
        }
        .category_txt {
            width: 140px;
        }
        .category_select_area {
            width: 200px;
        }
        .drkid-select-ul > li > span {
            font-size: 14px;
        }
        .common_category_area {
            display: flex;
            width: 100%;
            align-items: start;
            padding: 10px 0px;
        }
        .I_TITLE_WRAP {
            width: calc(100% - 140px);
       
         }
        #I_TITLE {
            width: 100%;
            height: 45px;
            padding: 10px;
        }

        #I_DETAIL {
            width: calc(100% - 140px);
            height:200px; 
            padding:10px;
            box-sizing: border-box;
            border:1px solid #E1E1E1;
        }
         #I_DETAIL:focus {
             outline:1px solid #005764;
        }
        #I_DETAIL::placeholder {
            color: #D8D8D8;
            font-size:14px;
        }
        .sub-content-wrap_custom_btn_area {
            padding: 20px 0px 0px 0px;
            display: flex;
            justify-content: center;
            gap: 0px 15px;
        }
        .edit_btn_save {
            width: 120px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            cursor: pointer;
            font-weight: 400;
        }
        .edit_btn_cansle {
            width: 120px;
            height: 50px;
            line-height: 50px;
            cursor: pointer;
            text-align: center;
            font-weight: 400;
        }
        .edit_btn_delete {
            width: 120px;
            height: 50px;
            line-height: 50px;
            cursor: pointer;
            text-align: center;
            font-weight: 400;
        }
        .edit_category_select_area {
            display:none;
            color: #115C5E;
            font-weight: 500;
            font-size: 16px;
        }
        .add_img_btn {
            padding:4px 20px;
            cursor:pointer;
             min-height: 30px;
        }
         #edit_btn_delete {
            width: 120px;
            height: 50px;
            line-height: 50px;
            cursor: pointer;
            text-align: center;
            font-weight: 400;
            border: 1px solid #E2E2E2;
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
        .font_weight_500 {
            font-weight: 500;
        }
        /*스마트에디터*/
        #smart_editor2 {
            width:1600px  !important;
        }
        .sm_wrap {
             width: calc(100% - 140px);
        }
        .se2_multy {
            display:none !important;
        }
    </style>
    <script src="/smarteditor2.3.10/js/HuskyEZCreator.js" charset="utf-8"></script>
    <script>
        var save_flag = '<%=save_flag%>'

        function clickHideFileInput(id) {
            $('#' + id).click();
        }

        //Text change가 일어날떄 -> Upload 가 일어날떄
        function UpdateUploadButton() {
            //업로드를 업로드 시켜 Callback을 타게함.
            //이때 Process bar 넣어서 로딩 처리
            uploader.Upload();
        }
        //여러개 올릴때 Upload file이 계속 바뀌므로 계속 타게 처리.
        function Uploader_OnFilesUploadComplete(args) {
            UpdateUploadButton();
        }
        function Uploader_OnFileUploadComplete(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    oEditors.getById["smarteditor"].exec("PASTE_HTML", [JsonData["imgSrc"]]);
                } else {
                    alert(JsonData['message']);
                }
            }
        }
        var oEditors = [];

        $(function () {
            function smartEditorIFrame() {
                showProgress();
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
                        hideProgress();
                    },
                });
            }
            smartEditorIFrame();

            //저장 했을경우 
            if (save_flag == "Y") {
                _popModal.Alert('', '저장되었습니다.');
            }
            //취소버튼
            $('#edit_btn_cansle').on('click', function () {
                hideProgress();
                closeTabPath("/Source/admin/product/A_PRODUCT_TEMEDIT.aspx");//탭 닫기
            });

            //저장버튼
            $('#edit_btn_save').on('click', function () {
                //제목에 아무것도 안적으면 alert 출력
                if (!$.trim($("#I_TITLE").val())) {
                    _popModal.Alert('알림', '제목을 입력해주세요.');
                    return false;
                }
                oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
                console.log($.trim($("#smarteditor").val()))
                //내용에 아무것도 안적으면 alert 출력
                if ($.trim($("#smarteditor").val()) == "<p>&nbsp;</p>") {
                    _popModal.Alert('알림', '내용을 입력해주세요.');
                    return false;
                }

                _popModal.Promt('저장', '저장하시겠습니까?'
                    , function () {
                        showProgress();
                        $('#flag').val('save');
                        $('#form1').submit();
                    }
                    , function (err) { _popModal.Alert('알림', err); }
                );
            });

        });

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
       <input type="text" name="TEMPLATE_TYPE" id="TEMPLATE_TYPE" value="" /> 
    </div>

     <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font">상품 템플릿 등록</span>
        </div>
        <%--자주 묻는 질문 등록 컨텐츠 영역--%>
        <div class="sub-content-wrap_custom">
            <%--카테고리,질문,답변 영역--%>
            <div class="sub-content-request-ui-area">
                 <%--템플릿 타입 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>템플릿 타입</div>
                    <div class="lowerst-font main_color font_weight_500">
                         <% if (template_type == "DELIVERY")
                            { %>
                                배송안내 템플릿
                           <%}%>
                            <% else 
                            { %>
                                교환 및 반품안내 템플릿
                            <%}%>
                    </div>
                </div>
          
                <%--템플릿 명 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>템플릿 명</div>
                    <div class="I_TITLE_WRAP">
                        <input type="text" class="drkid-input lowerst-font" id="I_TITLE" name="I_TITLE" value="<%=request_title %>" placeholder="템플릿 명을 입력해주세요."  autocomplete="off" maxlength="30"/>
                    </div>
                  
                </div>
                <%--내용 영역--%>
                 <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>내용</div>
<%--                    <textarea class="lower-font" id="I_DETAIL" placeholder="답변을 입력해 주세요."></textarea>--%>
                        <div class="sm_wrap">
                             <textarea class="lower-font" name="smarteditor" id="smarteditor" style="width:100%;" placeholder="답변을 입력해 주세요."><%=request_detail %></textarea>
                        </div>
                </div>
                <%--이미지 추가--%>
                <div class="common_category_area">
                    <div class="category_txt"></div>
                    <div class="drkid-btn add_img_btn lowerst-font"onclick="clickHideFileInput('uploader_TextBox0_Input')">이미지 등록</div>
                </div>
                  <!-- image Upload Control 숨김 처리.  -->
                <!-- fileinput 명 uploader_TextBox0_Input -->
                <!-- 아래 Client 기능을 바꾸어야함 ex updateuploadbutton -->
                <div style="width:90%;display:none;">
                    <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader" runat="server" ClientInstanceName="uploader" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
                        OnFileUploadComplete="UploadControl_FilesUploadComplete" CssClass="input">
                        <ClientSideEvents 
                            FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete(e); }"
                            FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete(e); }"
                            TextChanged="function(s, e) { UpdateUploadButton(); }" />
                        <ValidationSettings MaxFileSize="5242880" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>                                
                    </dx:ASPxUploadControl>
                    <dx:ASPxButton ID="btnUpload" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload" Height="23" ClientEnabled="false">
                        <ClientSideEvents Click="function(s, e) { uploader.Upload(); }" />
                    </dx:ASPxButton>
                </div>
            </div>
        </div>
    </div>
    <%--자주묻는 질문 등록 버튼 영역--%>
    <div class="sub-content-wrap_custom_btn_area">
        <div class="middle-font drkid-btn-active edit_btn_save"id="edit_btn_save">저장</div>
        <div class="middle-font drkid-btn edit_btn_cansle"id="edit_btn_cansle">취소</div>
        <%--리스트에서 수정버튼을 타고 들어온 경우에만 삭제버튼 생김--%>
   <%--     <%if(edit_flag != null)
           {%> 
               <%if (edit_flag == "Y")
               {%>
                    <div class="middle-font drkid-btn edit_btn_delete"id="edit_btn_delete">삭제</div>
              <%}%>
        <%}%> --%>
    </div>
</asp:Content>
