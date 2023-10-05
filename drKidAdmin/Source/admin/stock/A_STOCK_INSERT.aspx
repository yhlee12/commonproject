<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_STOCK_INSERT.aspx.cs" Inherits="drKidAdmin.Source.admin.stock.A_STOCK_INSERT" %>
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
                    Reload('/Source/admin/stock/A_STOCK_LIST.aspx');
                    setTimeout(() => {
                        window.scrollTo(0, 0);
                    }, 100);
                    
                }
            }
        });
        //DecimalNum Web.Master에 추가. DecimalNum Class 사용시 자동 input mask 0.00 형태 처리.
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
                    var html = `<div id="hidden-data">
                                    <input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/>
                                    <input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/>
                                    <input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/>
                                    <input type='hidden' name='image_upload_sid' value='-1'/>
                                    <input type='hidden' name='image_upload_useble' value='Y'/>
                                </div>`;
                    $('#hidden-data').remove();
                    $('#image-viewer').remove();
                    $('#image-inner-data').append($(JsonData["imgSrc"]).attr('id', 'image-viewer'));
                    $('#image-inner-data').append(html);
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            }
        }

        $(function () {
            $('#image-uploader').on('click', function () {
                $('#uploader_TextBox0_Input').click();
            });

            $('#save-btn').on('click', function () {
                if (!saveValidation()) {
                    return;
                }

                _popModal.Promt('알림', '저장하시겠습니까?', function () {
                    showProgress();
                    $('#flag').val("save");
                    $('#form1').submit();
                }, function (err) { _popModal.Alert('알림', err); })
            });
            $('#delete-btn').on('click', function () {
                _popModal.Promt('알림', '정말로 삭제하시겠습니까?', function () {
                    showProgress();
                    $('#flag').val("delete");
                    $('#form1').submit();
                }, function (err) { _popModal.Alert('알림', err); })
            });
        });

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

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="STOCK_SID" id="STOCK_SID" value="<%=STOCK_SID %>" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %></span>
        </div>
        <div class="sub-content-wrap">
            <div class="sub-content-inner-wrap">
                <div class="sub-content-inner-title">
                    <span class="middle-font">제품코드</span>
                </div>
                <div class="sub-content-inner-content">
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font impotant-icon">*</span>
                            <span class="lower-font">제품 코드</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" data-title="제품 코드" class="drkid-input lowerst-font input-searchheight important-input <%=STOCK_SID != 0 ? "disableColor" : "" %>" value="<%=STOCK_CD %>" name="STOCK_CD" maxlength="34" placeholder="제품 코드" <%=STOCK_SID != 0 ? "readonly=\"readonly\"" : "" %>/>
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font impotant-icon">*</span>
                            <span class="lower-font">사용여부</span>
                        </div>
                        <div class="half-content-data radio-wraper">
                            <label class="drkid-radio">
                                <input type="radio" name="USABLE_FLAG" value="Y" <%=USABLE_FLAG == "Y" ? " checked=\"checked\"" : "" %> />
                                <span class="lower-font">사용</span>
                            </label>
                            <label class="drkid-radio">
                                <input type="radio" name="USABLE_FLAG" value="N" <%=USABLE_FLAG == "N" ? " checked=\"checked\"" : "" %>/>
                                <span class="lower-font">미사용</span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sub-content-inner-wrap">
                <div class="sub-content-inner-title">
                    <span class="middle-font">제품정보</span>
                </div>
                <div class="sub-content-inner-content">
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font impotant-icon">*</span>
                            <span class="lower-font">제품 명(한글)</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" data-title="제품 명(한글)" class="drkid-input lowerst-font input-searchheight important-input" name="STOCK_NM" value="<%=STOCK_NM %>" maxlength="100" placeholder="제품 명(한글)" />
                        </div> 
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">제품 명(영어)</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight" value="<%=STOCK_ENG_NM %>" name="STOCK_ENG_NM" maxlength="100" placeholder="제품 명(영어)" />
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">제품 약어(한글)</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight" value="<%=STOCK_ABBR_NM %>" name="STOCK_ABBR_NM" maxlength="100" placeholder="제품 약어(한글)" />
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">제품 약어(영어)</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight" value="<%=STOCK_ABBR_ENG_NM %>" name="STOCK_ABBR_ENG_NM" maxlength="100" placeholder="제품 약어(영어)" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="sub-content-inner-wrap">
                <div class="sub-content-inner-title">
                    <span class="middle-font">입출고정보</span>
                </div>
                <div class="sub-content-inner-content">
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">제품가로</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight DecimalNum" value="<%=STOCK_WIDTH %>" maxlength="12" name="STOCK_WIDTH" placeholder="제품가로" />
                            <span class="lower-font extnum">cm</span>
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">제품세로</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight DecimalNum" value="<%=STOCK_HEIGHT %>" maxlength="12" name="STOCK_HEIGHT" placeholder="제품세로" />
                            <span class="lower-font extnum">cm</span>
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">제품높이</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight DecimalNum" value="<%=STOCK_LENGTH %>" maxlength="12" name="STOCK_LENGTH" placeholder="제품높이" />
                            <span class="lower-font extnum">cm</span>
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">제품무게</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight DecimalNum" name="STOCK_WEIGHT" value="<%=STOCK_WEIGHT %>" maxlength="12" placeholder="제품무게" />
                            <span class="lower-font extnum">Kg</span>
                        </div>
                    </div>
                    <div class="sub-content-half-wrap usedWidth100">
                        <div class="half-content-title">
                            <span class="lower-font">적재방식</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight usedWidth100" name="REMARK" value="<%=REMARK %>" maxlength="200" placeholder="옵션 ex)100g * 30ea OR 500ML" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="infomation-wraper-div">
                <span class="lowerst-font infomation-wikeep">(*) 이미지 업로드를 위해 이미지를 클릭해주세요(이미지는 재고 관리에 사용됩니다.)</span>
            </div>
            <div class="sub-content-inner-wrap">
                <div class="sub-content-inner-title">
                    <span class="middle-font">이미지 업로드</span>
                </div>
                <div class="sub-content-inner-content">
                    <div class="sub-content-half-wrap usedWidth100">
                        <div class="half-content-title image-title">
                            <span class="lower-font">제품이미지</span>
                        </div>
                        <div class="half-content-data">
                            <div class="img_wrap_160 img_wrap" style="width: 350px; height: 250px;" id="image-uploader">
                                <div class="empty-image" id="image-inner-data">
                                    <img src="<%=image_src %>" id="image-viewer" />
                                    <div id="hidden-data">
                                        <input type='hidden' name='image_upload_byte' value='<%=image_upload_byte %>'/>
                                        <input type='hidden' name='image_upload_name' value='<%=image_upload_name %>'/>
                                        <input type='hidden' name='image_upload_ext' value='<%=image_upload_ext %>'/>
                                        <input type='hidden' name='image_upload_sid' value='<%=image_upload_sid %>'/>
                                        <input type='hidden' name='image_upload_useble' value='<%=image_upload_useble %>'/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Dev의 Upload 기능을 쓰기위한 숨김처리 -->
                        <!-- 이미지 업로드 File 이미지만 업로드 가능 처리. -->
                        <!-- 5242880 byte = 5mb  15728640 byte = 15mb Memory 확대로 15mb까지는 처리-->
                        <div style="width:90%;display:none;">
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
                    </div>
                </div>
            </div>
            <div class="infomation-wraper-div">
                <span class="lowerst-font infomation-wikeep">(*) 위킵과 동일한 정보를 입력해주세요.(업로드,다운로드 등에 사용됩니다)</span>
            </div>
            <div class="sub-content-inner-wrap">
                <div class="sub-content-inner-title">
                    <span class="middle-font">위킵정보</span>
                </div>
                <div class="sub-content-inner-content">
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">위킵상품코드</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight" name="WEKEEP_CODE" value="<%=WEKEEP_CODE %>" maxlength="50" placeholder="위킵코드" />
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">위킵상품명</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight" value="<%=WEKEEP_NAME %>" name="WEKEEP_NAME" maxlength="200" placeholder="위킵상품명" />
                        </div>
                    </div>
                    <div class="sub-content-half-wrap">
                        <div class="half-content-title">
                            <span class="lower-font">박스타입</span>
                        </div>
                        <div class="half-content-data">
                            <select class="drkid-select lowerst-font" data-font-class="lowerst-font" data-styles='{"min-width":"300px"}' name="WEKEEP_BOXCODE">
                                <%for (int i = 0; i < BOX_CODE_LIST.Rows.Count; i++){ %>
                                    <option class="lowerst-font" value="<%=BOX_CODE_LIST.Rows[i]["CODE_CODE"] %>"<%=BOX_CODE_LIST.Rows[i]["CODE_CODE"].ToString() == WEKEEP_BOXCODE ? "selected=\"selected\"" : "" %> ><%=BOX_CODE_LIST.Rows[i]["CODE_NAME"] %></option>
                                <%} %>
                            </select>
                        </div>
                    </div>
                    <div class="sub-content-half-wrap usedWidth100">
                        <div class="half-content-title">
                            <span class="lower-font">위킵옵션</span>
                        </div>
                        <div class="half-content-data">
                            <input type="text" class="drkid-input lowerst-font input-searchheight usedWidth100" value="<%=WEKEEP_OPTION %>" name="WEKEEP_OPTION" maxlength="200" placeholder="옵션 ex)100g * 30ea OR 500ML" />
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
</asp:Content>
