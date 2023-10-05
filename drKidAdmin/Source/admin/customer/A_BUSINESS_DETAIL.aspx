<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_BUSINESS_DETAIL.aspx.cs" Inherits="drKidAdmin.Source.admin.customer.A_BUSINESS_DETAIL" %>
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
        /*사업자등록증 관련*/ 
        .join_Input_Content {
            display: flex;
            align-items: center;
            width: 100%;
            padding: 10px 0px;
            position: relative;
        }
        .join_Input_Guide {
            width: 120px;
        }
        .join_Input_Data2 {
            width: 79.4%;
            display: flex;
            gap: 0px 8px;
        }
        .business_Area {
            width: 76%;
            height: 50px;
            border: 1px solid var(--mono_line);
        }
        .custom_info {
            height: 50px;
            line-height: 50px;
            width: 100%;
            padding: 0px 10px;
        }
        .business_Add_Btn {
            width: 73px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background: #343434;
            color: #ffffff;
            border-radius: 4px;
            cursor: pointer;
        }
        .business_Del_Btn {
            width: 73px;
            height: 50px;
            line-height: 50px;
            border-radius: 4px;
            text-align: center;
            border: 1px solid var(--mono_line);
            cursor: pointer;
        }
         .preview_Info {
            width: 320px;
            height: 450px;
            margin: 0 auto;
         }
         .image_for_class {
            height: 100%;
            width: 100%;
            object-fit: fill;
         }
        .preview_Area {
            padding: 20px 0px;
        }
        .sub-content-wrap_custom_btn_area {
            padding: 20px 0px 20px 0px;
            display: flex;
            justify-content: center;
            gap: 0px 15px;
        }
        .userInfo_Area {
            display: flex;
            align-items: center;
            gap: 0px 10px;
            padding: 5px 0px;
        }
        /*거절사유 모달*/
         .overlay {
            position: fixed;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display:none;
        }
        .modal_Inner_500 {
            width:500px;
            background-color: #fff;
            position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
            padding:20px;
        }
        .modal_TitleArea {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .modalClose_Btn {
            cursor:pointer;
        }
        .modal_MiddleArea {
           padding: 20px 10px;
        }
        .modal_MiddleArea_Scroll {
            overflow-y: auto;
            height: 500px;
        }
        .modal_Btn_Area {
            display: flex;
            justify-content: center;
            gap: 0px 20px;
        }
        .recommend_Info {
            padding: 10px 0px;
        }
        input {
            width:100%;
        }
    </style>
     <script>
         /////////////////////////////////
         //사업자등록증 이미지 업로드 관련

         //Text change가 일어날떄 -> Upload 가 일어날떄
         function UpdateUploadButton() {
             //업로드를 업로드 시켜 Callback을 타게함.
             //이때 Process bar 넣어서 로딩 처리
             uploader.Upload();
         }
         function Uploader_OnFilesUploadComplete(args) {
             UpdateUploadButton();
         }
         function Uploader_OnFileUploadComplete(args) {
             //여기서 Process bar 꺼야함
             if (args.isValid) {
                 var ret = args.callbackData + "";
                 let JsonData = JSON.parse(ret);
                 console.log(JsonData)
                 if ((JsonData['status'] + "") == 'Y') {
                     var html = `<div class="img_info"><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/><input type='hidden' name='EDNS_REMARK' value='BUSINESS_REGISTRATION'/></div>`;
                     var custom_html = `<div class="custom_info">${JsonData['imgName']}</div>`;
                     var custom_html2 = `<div class="preview_Info">${JsonData['imgSrc']}</div>`;
                     $('.business_Area').empty();
                     $('.business_Area').append(html);
                     $('.business_Area').append(custom_html);
                     $('.preview_Area').append(custom_html2);
          
                 } else {
                     //에러가 날경우 alert 처리
                     alert(JsonData['message']);
                 }
             } 
         }
         var $cp_ret_status = `<%=cp_ret_status%>`;
         $(document).ready(function () {
             if($cp_ret_status == "Y")
             {
                 hideProgress();
             }
             //사업자 등록증 등록 버튼
             $(".business_Add_Btn").click(function () {
                 //var checkValue = $(this).data('value');
                 //if($('.business_Area').find('*').length > 2){
                 console.log($('.business_Area').find('.custom_info').length)
                 if ($('.business_Area').find('.custom_info').length > 0) {
                     _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                 }
                 else{
                     $('#uploader_TextBox0_Input').click();
                     $("input[name='EDMS_DEL_FLAG']").val('N');
                 }
             });
             ////사업자 등록증 삭제 버튼
             $(".business_Del_Btn").click(function () {
                 $('.business_Area').empty();
                 $('.preview_Area').empty();
                 $("input[name='EDMS_DEL_FLAG']").val('Y');
             });
             //저장 버튼
             $("#btn_save").on("click",function() {
                 var checkValue = $("input[name='BUSINESS_FLAG']:checked").val();
                 if(checkValue == "N"){
                     $("#REFUSAL_CHANGE_MODAL").show();
                 }
                 else{
                     showProgress();
                     $('#flag').val('save');
                     $('#form1').submit();
                 }
             });

             //거절 사유 모달 취소
             $("#modal_CloseBtn").on("click",function() {
                 $("#REFUSAL_CHANGE_MODAL").hide();
                 $('input[name="REFUSAL_REASON"]').val('');
             });
             //거절 사유 모달 확인
             $("#modal_CheckBtn").on("click",function() {
                 if($('input[name="REFUSAL_REASON"]').val().trim().length == 0){
                     _popModal.Alert('알림', '거절 사유를 입력해주세요.');
                 }
                 else{
                     showProgress();
                     $('#flag').val('save');
                     $('#form1').submit();
                 }
             });
         });
     </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
          <input type="text" name="EDMS_DEL_FLAG" value="N" />
         <input type="text" name="USER_SID"  value="<%=USER_SID %>" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %> </span>
        </div>
        <div class="sub-content-wrap_custom">
            <div class="sub-content-request-ui-area">
                <div class="userInfo_Area">
                    <div class="lowerst-font">아이디 : </div>
                    <div class="lowerst-font"><%=USER_ID %> </div>
                </div>
                <div class="userInfo_Area">
                    <div class="lowerst-font">심사여부 : </div>
                    <div class="lowerst-font <%=BUSINESS_CHECK_FLAG == "N" ? "drkid_Negative_color":"main_color" %>"><%=BUSINESS_CHECK_FLAG == "N" ? "미심사":"심사완료" %> </div>
                </div>
                <%if (BUSINESS_CHECK_FLAG == "Y" && BUSINESS_FLAG == "N")
                {%>
                    <div class="userInfo_Area">
                        <div class="lowerst-font">거절사유 : </div>
                        <div class="lowerst-font drkid_Negative_color"><%=REFUSAL_MESSAGE%> </div>
                </div>
                <%}%>
                <div class="userInfo_Area">
                    <div class="lowerst-font">사업자등록증 승인 : </div>
                    <label class="drkid-radio">
                        <input type="radio" name="BUSINESS_FLAG" value="Y" <%=BUSINESS_FLAG == "Y"? "checked=\"checked\"" : "" %> /> 
                        <span class="lowerst-font">승인</span>
                    </label>
                    <label class="drkid-radio">
                        <input type="radio" name="BUSINESS_FLAG" value="N" <%=BUSINESS_FLAG == "N"? "checked=\"checked\"" : "" %> /> 
                        <span class="lowerst-font">거절</span>
                    </label>
                </div>

                 <div class="join_Input_Content">
                    <div class="join_Input_Guide">
                         <span class="lowerst-font">사업자등록증</span>
                    </div>
                    <div class="join_Input_Data2">
                        <div class="business_Area"> 
                           <%if (BUSINESS_EDMS != null && BUSINESS_EDMS.Rows.Count > 0)
                            {%>
                                <input type='hidden' name='image_upload_byte' value=''/>
                                <input type='hidden' name='image_upload_name' value='<%=BUSINESS_EDMS.Rows[0]["SOURCE_FILE_NAME"] %>'/>
                                <input type='hidden' name='image_upload_ext' value='<%=BUSINESS_EDMS.Rows[0]["EXT"] %>'/>
                                <input type='hidden' name='image_upload_sid' value='<%=BUSINESS_EDMS.Rows[0]["EDM_SID"] %>'/>
                                <input type='hidden' name='EDNS_REMARK' value='<%=BUSINESS_EDMS.Rows[0]["REMARKS"] %>'/>
                                <div class="custom_info"><%=BUSINESS_EDMS.Rows[0]["SOURCE_FILE_NAME"] %></div>
                            <%}%>
                        </div>
                    
                        <div class="lowerst-font business_Add_Btn">등록</div>
                        <div class="lowerst-font business_Del_Btn">삭제</div>
                    </div>
                </div>
                 <%--사업자등록증 미리보기 영역--%>
                <div class="preview_Area"> 
                    <%if (BUSINESS_EDMS != null && BUSINESS_EDMS.Rows.Count > 0)
                    {%>
                        <div class="preview_Info">
                            <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BUSINESS_EDMS.Rows[0]["TARGET_READ_PATH"] %>'/>
                        </div>
                    <%}%>
                </div>
            </div>

         </div>
    </div>

     <div class="sub-content-wrap_custom_btn_area">
        <div class="middle-font drkid-btn drkid-btn-active "id="btn_save">저장</div>
        <div class="middle-font drkid-btn edit_btn_cansle"id="btn_cansle">취소</div>
      <%--  <%if(eidt_flag != null)
           {%> 
               <%if (eidt_flag == "Y")
               {%>
                    <div class="middle-font drkid-btn edit_btn_delete"id="edit_btn_delete">삭제</div>
              <%}%>
        <%}%> --%>
    </div>
    <%-- 거절사유 모달--%>
    <div class="overlay" id="REFUSAL_CHANGE_MODAL">
        <div class="modal_Inner_500">
            <div class="modal_MiddleArea">

                <%--거절 사유--%>
                <div class="recommend_Record">
                    <div class="lowerst-font recommend_Info">회원 사업자등록증 승인이 거절되었습니다.<br/> 거절 사유를 입력해주세요.</div>
                    <div class="lowerst-font recommend_Input">
                        <input type="text" class="drkid-input lowerst-font" name="REFUSAL_REASON" value=""  placeholder="거절 사유 입력"/>
                    </div>
                </div>
            </div>
            <div class="modal_BottomArea">
                <div class="modal_Btn_Area">
                    <div class="lowerst-font drkid-btn-sub2 drkid-btn-active" id="modal_CheckBtn">확인</div>
                    <div class="lowerst-font drkid-btn-sub2" id="modal_CloseBtn">취소</div>
                </div>
            </div>
        </div>
    </div>
    <div style="width: 90%; display: none;">
        <%--사업자등록증--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader" runat="server" ClientInstanceName="uploader" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete(e); }"
                TextChanged="function(s, e) { UpdateUploadButton(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader.Upload(); }" />
        </dx:ASPxButton>
    </div>
</asp:Content>
