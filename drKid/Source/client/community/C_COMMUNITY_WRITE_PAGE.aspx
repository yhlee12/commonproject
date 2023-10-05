﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_COMMUNITY_WRITE_PAGE.aspx.cs" Inherits="drKid.Source.client.community.C_COMMUNITY_WRITE_PAGE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
         #sub_content {
            padding: 7rem 0;
            position: relative;
            z-index: 1;
        }
         #content{
             width:998px;
             margin:auto;
         }
        .sub_layout {
            width: 95rem;
            max-width: 100%;
            margin: 0 auto;
            position: relative;
            height: 100%;

        }
        .main_Box {
            padding: 0px 20px;
            max-width: 740px;
            margin: 0 auto;
        }
        .Title_Area {
            text-align:center;
            padding: 0px 0px 40px 0px;
        }
        .main_Title_Txt {
            font-weight:600;
            padding: 15px 0px;
            font-size:30px;
        }
         .sub_Title_Txt {
            color:#9F9F9F;
        }

        .main_Label_Area {
            display: flex;
            justify-content: center;
            gap:0px 20px;
        }
        .main_Label_1 {
            background: #FFFFFF; 
            border: 1px solid #D8D8D8;
            padding: 9px 0px;
            width: 127px;
            text-align: center;
            cursor:pointer;
        }
        .main_Label_1:hover{
             color:#FFFFFF;
             background:#115C5E;
        }
        .main_Label_2 {
            background: #FFFFFF; 
            border: 1px solid #D8D8D8;
            padding: 9px 0px;
             width: 92px;
            text-align: center;
            cursor:pointer;
        }
        .main_Label_2:hover{
             color:#FFFFFF;
             background:#115C5E;
        }
        .main_Label_3 {
             width: 92px;
            text-align: center;
            padding: 9px 0px;
            background:#115C5E;
            border: 1px solid #D8D8D8;
            cursor:pointer;
            color:#FFFFFF;
        }
        .KeyDni_Top_Title {
            font-size:28px;
            height:49px;
            font-weight:600;
            margin-top:70px;
            border-bottom:1px solid #262626;
            margin-bottom:10px;
        }
             /*문의작성폼*/
        .hd_Request_Area {
            width: 100%;
            padding: 10px;
        }
        .hd_Request_Filed {
            width: 100%;
            display: flex;
            align-items: center;
            padding: 0px 0px 20px 0px;
        }
 
        .hd_Request_Filed_Detail {
            width: 100%;
            display: flex;
            align-items: flex-start;
            padding: 20px 0px;
            border-top: 1px solid #CCCCCC;
        }
        .hd_Reques_Info {
            width: 15%;
            font-weight: 400;
        }
        .left-padding {
            padding: 0 0 0 20px;
        }
        .hd_Reques_Data {
            width: 85%;
            font-weight: 400;
        }
        .hd_Reques_Double_Data {
            width: 35%;
            font-weight: 400;
            display:flex;
            align-items: center;
        }
        .hd_Reques_Pass_Data {
            width: 30%;
            font-weight: 400;
            display:flex;
            align-items: center;
        }
        .hd_Request_Filed_Pass{
            width: 100%;
            display: flex;
            align-items: center;
            padding: 20px 0px 20px 0px;
        }
        .hd_Reques_Guide {
            color:#8F8F8F;
        }
        .help_Type_Area {
            width: 294px;
        }
        .drkid-select-div {
            padding: 12px 10px;
        }
        #I_TITLE {
            width: 100%;
            height: 50px;
        }
        #I_BOARD_WRITE_NM,#I_BOARD_WRITE_SID{
            width: 100%;
            height: 50px;
        }
        #I_PASSWORD,#I_PASSWORD_CHECK{
            width: 75%;
            height: 35px;
        }
        .file_Info_Area {
            width:430px;
        }
        #I_FILE_INFO {
            width: 100%;
            height: 50px;
        }
        .file_Layout {
            display: flex;
            text-align: center;
            gap: 0px 10px;
        }
        .file_Search_Btn {
            width: 88.5px;
            background: #343434 0% 0% no-repeat padding-box;
            border: 1px solid #E1E1E1;
            border-radius: 4px;
            color: #D8D8D8;
            height: 50px;
            line-height: 50px;
            text-align: center;
            cursor:pointer;
        }
        .file_Add_Btn {
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border: 1px solid #E1E1E1;
            border-radius: 4px;
            width: 48px;
            height: 50px;
            text-align: center;
            cursor:pointer;
        }
        #add_Icon {
            font-size: 24px !important;
            line-height: 50px;
            
        }
        #I_DETAIL {
            width:100%;
        }
        .btn_Area {
            width: 100%;
            display: flex;
            justify-content: center;
            gap: 0px 20px;
            padding: 50px 0px;
        }
        .request_Btn {
            width: 120px;
            height: 50px;
            text-align: center;
            background: #115C5E;
            color: #ffffff;
            line-height: 50px;
            cursor: pointer;
        }
        .request_Cansle_Btn {
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border: 1px solid #E2E2E2;
            width: 120px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            cursor: pointer;
        }
        /*프롬프트*/
        .t2l-alert-inner-wraper {
            min-width: 330px;
            padding: 47px;
        }
        
        .material_custum_green{
            display:none;
            font-size:32px;
            padding-left:5px;
            color : var(--sub_color);
        }
        .material_custum_red{
            display:none;
            font-size:32px;
            padding-left:5px;
            color : var(--drkid_Negative);
        }
        .drkid-select-div {
            display:block;
        }
        .common_category_area{
          padding-bottom: 20px;
          border-bottom: 1px solid #bbbbbb;
        }
        .common_category_area > div {
            margin-left : 145px;
        }
    </style>
        <script src="/smarteditor2.3.10/js/HuskyEZCreator.js" charset="utf-8"></script>
    <script>
        var oEditors = [];
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

        $(document).ready(function () {
            //저장하고 생성된 BOARD_SID가 존재하면 게시글 디테일 페이지로 이동
            var $BOARD_SID = `<%=BOARD_SID%>`;
            if($BOARD_SID != "" )
            {
                location.href = "/Source/client/community/C_COMMUNITY_DETAIL_PAGE.aspx?BOARD_SID=" + $BOARD_SID;
            }

  
        
          

            // <select> 요소의 변경 이벤트를 감지하고 처리합니다.
            $("#I_BOARD_CATEGOR").change(function () {
                var selectedValue = $(this).val();
                console.log("선택된 값: " + selectedValue);
            });
        });


        $(function () {
            

   
            smartEditorIFrame();
            //문의하기 버튼
            $("#request_add_btn").on("click", function () {
                console.log($("#I_BOARD_CATEGOR").val());
                console.log($("#I_DETAIL").val());
                //HJH
                oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
                //내용에 아무것도 안적으면 alert 출력
                if ($.trim($("#smarteditor").val()) == "<p>&nbsp;</p>") {
                    _popModal.Alert('알림', '내용을 입력해주세요.');
                    return false;
                }

                $("#flag").val("save");
                if (Validation() == false) {
                    return false;
                }

                $("#form1").submit();
            });
            //수정완료 버튼
            $("#request_modi_btn").on("click", function () {
                console.log($("#I_DETAIL").val());
                if (Validation() == false) {
                    return false;
                }
                $("#form1").submit();
            });
        });
        //스마트 애디터 생성
        function smartEditorIFrame() {
            nhn.husky.EZCreator.createInIFrame({
                oAppRef: oEditors,
                elPlaceHolder: "smarteditor",
                sSkinURI: "/smarteditor2.3.10/SmartEditor2Skin.html",
                fCreator: "createSEditor2",
                htParams: {
                    bUseToolbar: true,            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
                    bUseVerticalResizer: true,      // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
                    bUseModeChanger: true,         // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
                    fOnBeforeUnload: function () {

                    }
                },
                fOnAppLoad: function () {

                },
            });
        }
        //밸리데이션
        function Validation() {
            //비회원
            console.log("<%=baseUser.userName%>");
            if ("<%=baseUser.userName%>" == "") {
                //작성자 이름
                if ($("#I_BOARD_WRITE_NM").val() == "") {
                    _popModal.Alert('문의등록 실패', '작성자 이름을 입력해주세요.');
                    return false;
                }
                //전화번호
                if ($("#I_BOARD_WRITE_SID").val() == "") {
                    _popModal.Alert('문의등록 실패', '전화번호를 입력해주세요.');
                    return false;
                }
            }

            //문의 유형
            //if ($("#I_BOARD_CATEGOR").val() == "") {
            //    _popModal.Alert('문의등록 실패', '문의 유형을 선택해주세요.');
            //    return false;
            //}
            //문의 제목
            if ($("#I_TITLE").val() == "") {
                _popModal.Alert('문의등록 실패', '문의 제목을 입력해주세요.');
                return false;
            }
            //문의 내용
            if ($("#I_DETAIL").val() == "") {
                _popModal.Alert('문의등록 실패', '문의 내용을 입력해주세요.');
                return false;
            }

        };

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content" style="">
        <div class="sub_layout">
            <input type="hidden" name="flag" id="flag" value=""/>
            <input type="hidden" name="pass_flag" id="pass_flag" value="N"/>
            <input type="hidden" name="request_flag" id="request_flag" value="<%=comm_flag %>"/>
            
            <div id="content">
                <%--타이틀~자주묻는 질문,공지사항 ui까지--%>
                <div class="main_Box">
                    <div class="Title_Area">
                        <div class="main_Title_Txt">커뮤니티</div>
                        <div class="sub_Title_Txt lower-font">닥터키드니 고객님들을 위한 특별한 혜택</div>
                    </div>
                </div>
                <%--1:1 문의 조회 UI, 문의리스트 전체 영역--%>
                <div class="Bottom_Area">
                    <%--1:1 문의 조회UI--%>
                    <div class="order_Search_Ui_Area">
                        <div class="order_Search_Ui_Title_Area">
                            <div class="progress_Order_Title KeyDni_Top_Title">커뮤니티 글쓰기</div>
                        </div>
                    </div>
                    <%--새 문의글 작성 edit--%>
                  
                    <%--문의 작성폼 영역--%>
                    <div class="hd_Request_Area">
                        <%--<div class="hd_Request_Filed">
                            <div class="hd_Reques_Info"></div>
                            <div class="hd_Reques_Guide lowerst-font">해당글은 비밀글로만 작성이 됩니다.</div>
                        </div>--%>
                        <%--문의유형--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info lowerst-font">문의유형</div>
                            <div class="help_Type_Area">

                                    <% if (I_BOARD_SID == "0")
                                   { %>
                                 <select name="FAQ_TYPE" id="I_BOARD_CATEGOR"  class="drkid-select lowerst-font" style="width: 190px;" data-font-class="lowerst-font" data-styles='{"padding": "12px 10px"}'>
                                <%}else{ %>
                                <select name="FAQ_TYPE" id="I_BOARD_CATEGOR" value="<%=DETAIL_TITLE_LIST.Rows[0]["CODE_CODE"] %>" class="drkid-select lowerst-font" style="width: 190px;" data-font-class="lowerst-font" data-styles='{"padding": "12px 10px"}'>
                                <%} %>            
                                     <%for (int i = 0; i < BOARD_CATEGORY.Rows.Count; i++)
                                      { %>
                                    <option class="lowerst-font" value="<%=BOARD_CATEGORY.Rows[i]["CODE_CODE"]%>" data-codeclass="<%=BOARD_CATEGORY.Rows[i]["new_code"] %>" data-codecode="<%=BOARD_CATEGORY.Rows[i]["CODE_CODE"].ToString() %>"><%=BOARD_CATEGORY.Rows[i]["CODE_NAME"] %></option>
                                    <%} %>
                                </select>
                            </div>
                        </div>
                        <%--제목--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info lowerst-font">제목</div>
                            <div class="hd_Reques_Data lowerst-font">
                                <% if (I_BOARD_SID == "0")
                                   { %>
                                <input type="text" class="drkid-input lowerst-font" id="I_TITLE" name="I_TITLE" value="" autocomplete="off" placeholder="제목을 입력해 주세요." />
                                <%}else{ %>
                                 <input type="text" class="drkid-input lowerst-font" id="I_TITLE" name="I_TITLE" value="<%= DETAIL_TITLE_LIST.Rows[0]["BOARD_TITLE"] %>" autocomplete="off" placeholder="" />
                                <%} %>                            
                            </div>

                        </div>
                        <%--작성자 회원--%>
                        <div class="hd_Request_Filed User_Field">
                            <div class="hd_Reques_Info lowerst-font">작성자</div>
                            <div class="help_Type_Area">
                                <input type="text" class="drkid-input lowerst-font" id="I_TITLE" name="I_TITLE" value="" autocomplete="off" placeholder="<%=baseUser.userName %>(<%=baseUser.userId %> )" readonly/>
                            </div>
                        </div>
                        <%--문의내용--%>
                        <div class="hd_Request_Filed_Detail">
                            <div class="hd_Reques_Info">내용</div>
                            <div class="hd_Reques_Data lowerst-font">
                                  <% if (I_BOARD_SID == "0")
                                   { %>
                                <textarea class="lower-font" name="smarteditor" id="smarteditor" style="width: 100%;" placeholder="내용을 입력해 주세요."></textarea>
                                <%}else{ %>
                                <textarea class="lower-font" name="smarteditor" id="smarteditor" style="width: 100%;" placeholder="내용을 입력해 주세요."><%= DETAIL_TITLE_LIST.Rows[0]["BOARD_MESSAGE"] %></textarea>
                                <%} %>             
                                
                            </div>
                        </div>
                        <%--이미지 추가--%>
                        <div class="common_category_area">
                            <div class="drkid-btn add_img_btn lowerst-font"onclick="clickHideFileInput('uploader_TextBox0_Input')">이미지 등록</div>
                        </div>
                    </div>
                    <%--문의하기 , 취소 버튼 영역--%>
                    <div class="btn_Area">
                        <div class="request_Btn middle-font" id="request_add_btn">    
                            <% if (I_BOARD_SID == "0") { %>
                                작성하기
                                <%}else{ %>
                                수정하기
                                <%} %>           

                        </div>
                        <div class="request_Cansle_Btn middle-font">취소</div>
                    </div>
                  <!-- image Upload Control 숨김 처리.  -->
                <!-- fileinput 명 uploader_TextBox0_Input -->
                <!-- 아래 Client 기능을 바꾸어야함 ex updateuploadbutton -->
                   <div style="width: 90%; display: none;">
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
    </div>  
</asp:Content>