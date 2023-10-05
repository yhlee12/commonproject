<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="commonUploadExample.aspx.cs" Inherits="drKidAdmin.Source.common.devExample.commonUploadExample" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Security-Policy" content="default-src * 'self' 'unsafe-inline' 'unsafe-eval' data: content:"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, viewport-fit=cover"/>
    <meta name="theme-color" content="#fff"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="msapplication-tap-highlight" content="no"/>
    <title>DrKid::원인터네셔널</title>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <!-- datePicker -->
    <!-- custom이 적용되기 위해서는 Datepicker를 먼저 적용 후 default css를 적용 -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css"/>
    <link rel="stylesheet" href="/Source/css/default.css"/>
    <link rel="stylesheet" href="/Source/css/root.css"/>
    <link rel="stylesheet" href="/Source/css/font.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <script src="/js/common.js"></script>
    <style>
        .underline_block_example{
            text-decoration:underline;
        }
        .block-example{
            padding:5px 15px;
            margin-bottom:10px;
            border-bottom:1px solid #eaeaea;
        }
        .image_viewer > img{
            max-width:400px;
        }
    </style>
    <script>
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
                    var html = `<div><span class='lower-font'>${JsonData['imgName']}<span><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('.image_viewer').append(html);
                    $('.image_viewer').append(JsonData["imgSrc"]);
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }

        $(function () {
            $('#image_upBtn').on('click', function () {
                //Dev 아래의 File 버튼 클릭하게하면 2개의 input이 Click이 실행됨.
                //Dev측에서도 따로 uploader.click과 같은 기능을 제공하지 않는다고 못을 박아버림 
                //사용을 위해서는 숨겨진 input type file중 업로드 Complate가 작동하는 type file을 찾자.
                //그지같지만 어쩔수 없음.
                /*$('#uploader').find("input[type=file]").click();*/
                $('#uploader_TextBox0_Input').click();
            });

            $('#image_SaveBtn').on('click', function () {
                //저장 후 Web.config의 경로에 저장됬는지 확인하기.
                $('#flag').val('save');
                $('#form1').submit();
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="hidden" name="flag" id="flag" value="" />
        <!-- 이미지 업로드 기능 및 이미지 업로드 결과 저장 과정. -->
        <div class="block-example">
            <div class="middle-font underline_block_example">Upload Image</div>
            <div class="drkid-btn" id="image_upBtn">
                <span class="middle-font">Upload!</span>
            </div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">Upload Image Viewer</div>
            <div class="drkid-btn" id="image_SaveBtn">
                <span class="middle-font">Save Image & Data Example</span>
            </div>
            <div class="image_viewer">
                <%for(int i = 0; i < listTable.Rows.Count;i++){ %>
                    <div>
                        <span class='lower-font'><%=listTable.Rows[i]["SOURCE_FILE_NAME"] %></span>
                        <input type='hidden' name='image_upload_byte' value=''/>
                        <input type='hidden' name='image_upload_name' value='<%=listTable.Rows[i]["SOURCE_FILE_NAME"] %>'/>
                        <input type='hidden' name='image_upload_ext' value='<%=listTable.Rows[i]["EXT"] %>'/>
                        <input type='hidden' name='image_upload_sid' value='<%=listTable.Rows[i]["EDM_SID"] %>'/>
                        <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=listTable.Rows[i]["TARGET_READ_PATH"] %>'/>
                    </div>
                <%} %>
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
    </form>
</body>
</html>