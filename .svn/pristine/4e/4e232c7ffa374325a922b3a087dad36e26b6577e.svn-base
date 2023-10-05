<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_BANNER_WIDE.aspx.cs" Inherits="drKidAdmin.Source.admin.banner.A_BANNER_WIDE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*배너공용*/
        .custom-table-wraper {
             height: auto;
             width: 100%;
        }
        .custom-sub-warp-title {
            display: flex;
            align-items: center;
            gap: 0px 10px;
            width: 100%;
            border-bottom: 1px solid #dbdde2;
            padding: 15px 30px;
        }
        .custom-sub-warp-txt {
             font-weight: 500;
        }
        .info_Icon_Area {
            color: #FF441D;
            position: relative;
            top: 3px;
        }
        .info_Icon {
            font-size:18px
        }
        .guide_txt {
            padding: 0px 0px 10px 0px;
        }
        .no_img {
            width: 60px;
            height: 60px;
        }
        .img_wrap {
             align-items: center;
        }
        .banner_Add_Btn_Area {
            padding: 20px 0px;
            width: 1050px;
        }
        .banner_Add_Btn {
            width: 315px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            font-weight: 600;
            background: #F9F9F9;
            margin: 0 auto;
            border: 1px solid #DDDDDD;
            cursor: pointer;
        }
        .banner_Save_Btn_Area {
            border-top: 1px solid #E2E2E2;
            padding: 20px 30px;
            width: 100%;
            min-height: 100px;
        }
        .banner_Save_Btn {
            width: 170px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background:  var(--drkid_positive);
            color: #ffffff;
            cursor: pointer;
            font-weight: 500;
        }
        
        .custom-liner-icon-wraper {
            padding-left: 0px;
            border-left:none;
            display: grid;
            gap: 10px 0px;
        }
        .banner_Del_Btn_Area {
            padding: 28px 0px;
        }
        .banner_Del_Btn {
            cursor: pointer;
            width: 91px;
            height: 35px;
            text-align: center;
            line-height: 35px;
            color: #4E4E4E;
            border: 1px solid #E2E2E2;
        }
        .img_Btn_Area {
            display: flex;
            gap: 0px 15px;
        }
        .img_Btn {
            width: 105px;
            height: 32px;
            line-height: 32px;
            text-align: center;
            border: 1px solid #E2E2E2;
            cursor:pointer;
        }
        .Banner_Info_Area {
            /*display: flex;*/
            width: 1050px;
            
        }
        .INPUT {
            width:100%;
            height:100%;
        }
        .url_Area {
            display: flex;
            align-items: center;
            gap: 0px 10px;
            width: 100%;
            padding: 20px 0px 10px 0px;
        }
        .url_txt {
            width: 10%;
        }
        .url_Input_Area {
            width: 100%;
            height: 35px;
        }
        .inactive {
            color:#E2E2E2;
            cursor:inherit;
        }
        /*배너공용 끝*/

        /*중배너*/
        .title_Subtitle_Area {
            width: 100%;
            display: grid;
            gap: 20px 0px;
            padding: 0px 0px 20px 0px;
        }
        .title_Area {
            display: flex;
            width: 100%;
            height: 35px;
        }
        .subtitle_Area {
            display: flex;
            width: 100%;
            height: 75px;
        }
        .title_Info {
            width:10%;
        }

        .title_Wrap {
              width:90%;
              position:relative;
        }
        .pc_Mobile_Wrap {
            display: flex;
            gap: 0px 145px;
        }
        .pc_Mobile_Area {
            width: 100%;
            display: flex;
            
        }
        .empty_Space {
            width:10%;
        }
        .column_2_Area_1 ,.column_2_Area_2 {
            width:400px;
        }
        .column_2_Area_1_txt2, .column_2_Area_1_txt2 {
            padding: 10px 0px 20px 0px;
        }
        .column_2_Area_1_txt3 {
                padding: 0px 0px 10px 0px;
        }
        #I_WIDE_SUBTITLE:focus {
            outline:1px solid #005764;
        }
        /*입력제한 ui*/
        .input_Title_Lenght {
            display: flex;
            position: absolute;
            right: 10px;
            bottom: 6px;
        }
        .input_Sub_Title_Lenght {
            display: flex;
            position: absolute;
            right: 10px;
            bottom: 6px;
        }
        .image_for_class {
            object-fit: cover;
        }
        .img_Btn_Active {
            cursor:pointer;
            color:black;
        }
         #I_SUBTITLE:focus {
            outline-color:  var(--drkid_positive);
        }
    </style>
    <script>
        //이미지업로드 관련 시작
        ////////////////////////

        //Text change가 일어날떄 -> Upload 가 일어날떄
        function UpdateUploadButton() {
            //업로드를 업로드 시켜 Callback을 타게함.
            //이때 Process bar 넣어서 로딩 처리
            uploader.Upload();
        }
        function UpdateUploadButton2() {
            uploader2.Upload();
        }
        //여러개 올릴때 Upload file이 계속 바뀌므로 계속 타게 처리.
        function Uploader_OnFilesUploadComplete(args) {
            UpdateUploadButton();
        }
        function Uploader_OnFilesUploadComplete2(args) {
            UpdateUploadButton2();
        }

        function Uploader_OnFileUploadComplete(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                console.log(JsonData)
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div class="img_info"><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#pc_img_wrap_0').empty();
                    $('#pc_img_wrap_0').append(html);
                    $('#pc_img_wrap_0').append(JsonData["imgSrc"]);
                    $("#pc_img_del_Btn_0").removeClass('inactive');
                    $("#pc_img_del_Btn_0").removeClass('img_Btn_Active');
                    $("#pc_img_del_Btn_0").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }

        function Uploader_OnFileUploadComplete2(args) {
            console.log("모바일 요소")
            //console.log(JSON.stringify(args));
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div class="img_info"><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#mobile_img_wrap_0').empty();
                    $('#mobile_img_wrap_0').append(html);
                    $('#mobile_img_wrap_0').append(JsonData["imgSrc"]);
                    $("#mobile_img_del_Btn_0").removeClass('inactive');
                    $("#mobile_img_del_Btn_0").removeClass('img_Btn_Active');
                    $("#mobile_img_del_Btn_0").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        //////////////////////
        //이미지업로드 관련 끝

        $(function () {
            // 이미지 등록 - PC
            $('.pc_img_Btn').on('click', function () {
                //Dev 아래의 File 버튼 클릭하게하면 2개의 input이 Click이 실행됨.
                //Dev측에서도 따로 uploader.click과 같은 기능을 제공하지 않는다고 못을 박아버림 
                //사용을 위해서는 숨겨진 input type file중 업로드 Complate가 작동하는 type file을 찾자.
                //그지같지만 어쩔수 없음.
                /*$('#uploader').find("input[type=file]").click();*/
                var checkValue = $(this).data('value');
                if($('#pc_img_wrap_'+checkValue).find('*').length > 4){
                    _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                }
                else{
                    $('#uploader_TextBox0_Input').click();
                }
            });
            //이미지 등록 - MOBILE
            $('.mobile_img_Btn').on('click', function () {
                /*$('#uploader2').find("input[type=file]").click();*/
                var checkValue = $(this).data('value');
                if($('#mobile_img_wrap_'+checkValue).find('*').length > 4){
                    _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                }
                else{
                    $('#uploader2_TextBox0_Input').click();
                }
                
            });
            //DB에서 불러올경우에 제목 세팅
            var title_Value = $("#I_TITLE").val();
            if(title_Value != '' || title_Value != null){
                $('#input_Title_Start').text(title_Value.length);
            }
            //제목 입력 제한
            $('#I_TITLE').on("input", function (e) {
                var content = $(this).val();
                // 글자수 세기
                console.log(content.length)
                if (content.length == 0 || content == '') {
                    $('#input_Title_Start').text('0');
                } else {
                    $('#input_Title_Start').text(content.length);
                }
                // 글자수 제한
                if (content.length > 200) {
                    // 200자 부터는 타이핑 되지 않도록
                    $(this).val($(this).val().substring(0, 200));
                    // 200자 넘으면 알림창 뜨도록
                    alert('글자수는 200자까지 입력 가능합니다.');
                };
            });
 
            //DB에서 불러올경우에 부제목 세팅
            var subtitle_Value = $("#I_SUBTITLE").val();
            if(subtitle_Value != '' || subtitle_Value != null){
                $('#input_Sub_Title_Start').text(subtitle_Value.length);
            }
            //부제목 입력 제한
            $('#I_SUBTITLE').on("input", function (e) {
                var content = $(this).val();
                var content_length = content.length;
                // 글자수 세기
                console.log(content.length)
                if (content.length == 0 || content == '') {
                    $('#input_Sub_Title_Start').text('0');
                } else {
                    if (content_length > 100) {
                        content_length = 100;
                    }
                    $('#input_Sub_Title_Start').text(content_length);
                }
                // 글자수 제한
                if (content.length > 100) {
                    // 100자 부터는 타이핑 되지 않도록
                    $(this).val($(this).val().substring(0, 100));
                };
            });



            //저장버튼
            $('.banner_Save_Btn').on('click', function () {
                var isEmptyValue = false;
                //제목 입력 체크
                if($("#I_TITLE").val().trim() == '' || $("#I_TITLE").val().trim() == null)
                {
                    _popModal.Alert('', '제목을 입력해주세요.');
                    return false;
                }
                //부제목 입력 체크
                if($("#I_SUBTITLE").val().trim() == '' || $("#I_SUBTITLE").val().trim() == null)
                {
                    _popModal.Alert('', '부제목을 입력해주세요.');
                    return false;
                }

                //pc, 모바일 이미지 등록 체크
                //pc 이미지 요소 체크
                var pc_element_count = 0;
                $("[id^='pc_img_wrap_']").each(function() {
                    pc_element_count++; 
                });
                console.log("pc elements: " + pc_element_count);

                //모바일 이미지 요소 체크
                var mb_element_count = 0;
                $("[id^='mobile_img_wrap_']").each(function() {
                    mb_element_count++; 
                });
                console.log("mobile elements: " + mb_element_count);

                for (var i = 0; i < pc_element_count; i++) {
                    var selector = "#pc_img_wrap_" + i;
                    var childElementCount = $(selector).children().length;
                    if(childElementCount<= 1){
                        _popModal.Alert('', '카테고리 배너 이미지를 모두 등록해주세요.');
                        isEmptyValue = true;
                        return false;
                    }
                }

                for (var i = 0; i < mb_element_count; i++) {
                    var selector = "#mobile_img_wrap_" + i;
                    var childElementCount = $(selector).children().length;
                    if(childElementCount <= 1){
                        _popModal.Alert('', '카테고리 배너 이미지를 모두 등록해주세요.');
                        isEmptyValue = true;
                        return false;
                    }
                }
                if (isEmptyValue) {
                    return false; 
                }
                console.log("저장")
                //이미지 요소가 다 있으면 저장시킴
                $('#flag').val('save');
                $('#form1').submit();

            });
            //이미지 삭제 버튼 - PC
            $('.pcimg_Del_Btn').on('click', function () {
                var checkValue = $(this).data('value');
                //삭제할 요소가 있으면 이미지, 이미지관련 인풋정보 삭제
                if($('#pc_img_wrap_'+checkValue).find('*').length > 4){
                    $("#pc_img_wrap_"+checkValue).empty();
                    var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                    $("#pc_img_wrap_"+checkValue).append(img);
                    //삭제버튼 비활성
                    $("#pc_img_del_Btn_"+checkValue).removeClass('img_Btn_Active');
                    $("#pc_img_del_Btn_"+checkValue).removeClass('inactive');
                    $("#pc_img_del_Btn_"+checkValue).addClass('inactive');
                }
                else{
                    console.log("삭제할 요소 없음")
                }
            });

            //이미지 삭제 버튼 - MOBILE
            $('.mbimg_Del_Btn').on('click', function () {
                
                var checkValue = $(this).data('value');
                //삭제할 요소가 있으면 이미지, 이미지관련 인풋정보 삭제
                if($('#mobile_img_wrap_'+checkValue).find('*').length > 4){
                    $("#mobile_img_wrap_"+checkValue).empty();
                    var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                    $("#mobile_img_wrap_"+checkValue).append(img);
                    //삭제버튼 비활성
                    $("#mobile_img_del_Btn_"+checkValue).removeClass('img_Btn_Active');
                    $("#mobile_img_del_Btn_"+checkValue).removeClass('inactive');
                    $("#mobile_img_del_Btn_"+checkValue).addClass('inactive');
                }
                else{
                    console.log("삭제할 요소 없음")
                }
           
            });

            //저장되었으면 안내
            var save_flag = '<%=save_flag%>';
            console.log("save_flag:",save_flag)
            if (save_flag == "Y") {
                _popModal.Alert('', '배너등록이 완료되었습니다.');
            }

        });

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title custom-sub-warp-title">
            <div><span class="middle-font custom-sub-warp-txt "><%=pageAuth.nowtitle %></span></div>
            <div class="info_Icon_Area"><span class="material-icons-outlined info_Icon">info</span></div>
        </div>
        <div class="sub-content-wrap">
            <div class="custom-table-wraper">
                <div class="guide_txt lowerst-font mono_sub_color">- 슬라이드 적용이 없는 단일배너입니다.</div>

                 <%if (mainTable.Rows.Count > 0)
                {%>
                     <%for (int i = 0; i < mainTable.Rows.Count; i++)
                    { %>
                <%-- 폼--%>
                <div class="Banner_Info_Area">
                <input type="hidden" name="MAIN_SID" value="<%=mainTable.Rows[i]["MAIN_SID"]%>" />
                <input type="hidden" name="MAIN_SEQ"value="<%=mainTable.Rows[i]["ORDER_SEQ"]%>" />
                    <%--제목,부제목--%>
                    <div class="title_Subtitle_Area">
                        <div class="title_Area">
                            <div class="title_Info lower-font"><span class="lower-font drkid_Negative_color">*&nbsp;</span>제목</div>
                            <div class="title_Wrap">
                                <input type="text" class="drkid-input lowerst-font INPUT"  name="I_TITLE" id="I_TITLE" value="<%=mainTable.Rows[i]["TITLE"]%>" maxlength="30"/>
                                <%--입력제한 UI--%>
                                <div class="input_Title_Lenght">
                                    <div id="input_Title_Start" class="lowerst-font main_color">0</div><span class="lowerst-font" style="color:#D8D8D8;">&nbsp;/&nbsp;</span>
                                    <div class="lowerst-font" style="color:#D8D8D8;">30</div>
                                </div>
                            </div>
                        </div>
                        <div class="subtitle_Area">
                            <div class=" title_Info lower-font"><span class="lower-font drkid_Negative_color">*&nbsp;</span>부제목</div>
                            <div class="title_Wrap">
                                <textarea name="I_SUBTITLE" id="I_SUBTITLE" style="width:100%; height:100%; padding:10px; box-sizing: border-box; border: 1px solid var(--mono_line); resize: none;"><%=mainTable.Rows[i]["BODY"]%></textarea>
                                <%--입력제한 UI--%>
                                <div class="input_Sub_Title_Lenght">
                                    <div id="input_Sub_Title_Start" class="lowerst-font main_color">0</div><span class="lowerst-font" style="color:#D8D8D8;">&nbsp;/&nbsp;</span>
                                    <div class="lowerst-font" style="color:#D8D8D8;">100</div>
                                </div>
                            </div>
                        </div>
                    </div>
                     <%if (bannerTable != null)
                        {%> 
                    <%--pc,모바일--%>
                    <div class="pc_Mobile_Area">
                        <div class="empty_Space"></div>
                        <div class="pc_Mobile_Wrap">
                             <%for (int j = 0; j < bannerTable.Rows.Count; j++)
                                { %>
                                    <%if (bannerTable.Rows[j]["BANNER_TYPE"].ToString() == "WEB" )
                                    { %>
                            <%--pc--%>
                           <input type="hidden" name="BANNER_SID" value="<%=bannerTable.Rows[j]["BANNER_SID"]%>" />
                            <input type="hidden" name="PARENT_SID" value="<%=bannerTable.Rows[j]["PARENT_SID"]%>" />
                            <input type="hidden" name="BANNER_TYPE" value="<%=bannerTable.Rows[j]["BANNER_TYPE"]%>"/>
                            <div class="column_2_Area_1">
                                <div class="column_2_Area_1_txt1">PC</div>
                                <div class="img_wrap_200 img_wrap"  id="pc_img_wrap_<%=i%>" style="width: 390px; height: 243px;">
                                    <%--<img src="/Source/image/no_img.svg" class="no_img" />--%>
                                    <input type='hidden' name='image_upload_byte' value=''/>
                                    <input type='hidden' name='image_upload_name' value='<%=bannerTable.Rows[j]["SOURCE_FILE_NAME"] %>'/>
                                    <input type='hidden' name='image_upload_ext' value='<%=bannerTable.Rows[j]["EXT"] %>'/>
                                    <input type='hidden' name='image_upload_sid' value='<%=bannerTable.Rows[j]["EDM_SID"] %>'/>
                                    <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=bannerTable.Rows[j]["TARGET_READ_PATH"] %>'/>
                                </div>
                                <div class="column_2_Area_1_txt2">
                                    <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 2560,세로 1600 px</span>)오차범위 200</div>
                                    <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">3,000KB 초과불가</span></div>
                                    <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                </div>
                                <div class="column_2_Area_1_txt3">
                                    <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                </div>
                                <div class="img_Btn_Area">
                                    <div class="img_Btn lowerst-font pc_img_Btn"  id="pc_img_Btn_<%=i%>" data-value="<%=i%>">이미지 등록</div>
                                    <div class="img_Btn lowerst-font pcimg_Del_Btn" id="pc_img_del_Btn_<%=i%>"  data-value="<%=i%>">삭제</div>
                                </div>
                            </div>
                            <%}%>
                             <% else
                             { %>
                            <%--모바일--%>
                           <input type="hidden" name="BANNER_SID" value="<%=bannerTable.Rows[j]["BANNER_SID"]%>" />
                            <input type="hidden" name="PARENT_SID" value="<%=bannerTable.Rows[j]["PARENT_SID"]%>" />
                            <input type="hidden" name="BANNER_TYPE" value="<%=bannerTable.Rows[j]["BANNER_TYPE"]%>"/>
                            <div class="column_2_Area_2">
                                <div class="column_2_Area_1_txt1">모바일</div>
                                <div class="img_wrap_200 img_wrap"id="mobile_img_wrap_<%=i%>" style="width: 214px; height: 381px;">
                                    <%--<img src="/Source/image/no_img.svg" class="no_img" />--%>
                                     <input type='hidden' name='image_upload_byte' value=''/>
                                    <input type='hidden' name='image_upload_name' value='<%=bannerTable.Rows[j]["SOURCE_FILE_NAME"] %>'/>
                                    <input type='hidden' name='image_upload_ext' value='<%=bannerTable.Rows[j]["EXT"] %>'/>
                                    <input type='hidden' name='image_upload_sid' value='<%=bannerTable.Rows[j]["EDM_SID"] %>'/>
                                    <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=bannerTable.Rows[j]["TARGET_READ_PATH"] %>'/>
                                </div>
                                <div class="column_2_Area_1_txt2">
                                    <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 1242,세로 2208 px</span>)오차범위 200</div>
                                    <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                    <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                </div>
                                <div class="column_2_Area_1_txt3">
                                    <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                </div>
                                <div class="img_Btn_Area">
                                    <div class="img_Btn lowerst-font mobile_img_Btn" id="mobile_img_Btn_<%=i%>" data-value="<%=i%>">이미지 등록</div>
                                    <div class="img_Btn lowerst-font mbimg_Del_Btn" id="mobile_img_del_Btn_<%=i%>" data-value="<%=i%>">삭제</div>
                                </div>
                            </div>
                             <%}%>
                         <%}%>
                    <%}%>
                        </div>
              
                    </div>
                    <%--배너 URL--%>
                    <div class="url_Area">
                        <div class="url_txt">
                            <div class="lower-font"><span class="lowerst-font drkid_Negative_color">&nbsp</span>배너 URL</div>
                        </div>
                        <div class="url_Input_Area">
                            <input type="text" class="drkid-input lowerst-font INPUT"  name="I_URL" value="<%=mainTable.Rows[i]["URL"]%>" />
                        </div>
                    </div>
                </div>
                  <%}%>
             <%}%>


            <%else
            {%>

                <%-- 폼--%>
                <div class="Banner_Info_Area">
                <input type="hidden" name="MAIN_SID" value="-1" />
                <input type="hidden" name="MAIN_SEQ" value="1" />
                    <%--제목,부제목--%>
                    <div class="title_Subtitle_Area">
                        <div class="title_Area">
                            <div class="title_Info lower-font"><span class="lower-font drkid_Negative_color">*&nbsp;</span>제목</div>
                            <div class="title_Wrap">
                                <input type="text" class="drkid-input lowerst-font INPUT"  name="I_TITLE" id="I_TITLE" value="" maxlength="30"/>
                                <%--입력제한 UI--%>
                                <div class="input_Title_Lenght">
                                    <div id="input_Title_Start" class="lowerst-font main_color">0</div><span class="lowerst-font" style="color:#D8D8D8;">&nbsp;/&nbsp;</span>
                                    <div class="lowerst-font" style="color:#D8D8D8;">30</div>
                                </div>
                            </div>
                        </div>
                        <div class="subtitle_Area">
                            <div class=" title_Info lower-font"><span class="lower-font drkid_Negative_color">*&nbsp;</span>부제목</div>
                            <div class="title_Wrap">
                                <textarea name="I_SUBTITLE" id="I_SUBTITLE" style="width:100%; height:100%; padding:10px; box-sizing: border-box; border: 1px solid var(--mono_line); resize: none;"></textarea>
                                <%--입력제한 UI--%>
                                <div class="input_Sub_Title_Lenght">
                                    <div id="input_Sub_Title_Start" class="lowerst-font main_color">0</div><span class="lowerst-font" style="color:#D8D8D8;">&nbsp;/&nbsp;</span>
                                    <div class="lowerst-font" style="color:#D8D8D8;">100</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--pc,모바일--%>
                    <div class="pc_Mobile_Area">
                        <div class="empty_Space"></div>
                        <div class="pc_Mobile_Wrap">
                            <%--pc--%>
                            <input type="hidden" name="BANNER_SID" value="-1" />
                            <input type="hidden" name="PARENT_SID" value="-1" />
                            <input type="hidden" name="BANNER_TYPE" value="WEB" />
                            <div class="column_2_Area_1">
                                <div class="column_2_Area_1_txt1">PC</div>
                                <div class="img_wrap_200 img_wrap"  id="pc_img_wrap_0" style="width: 390px; height: 243px;">
                                    <img src="/Source/image/no_img.svg" class="no_img" />
                                </div>
                                <div class="column_2_Area_1_txt2">
                                    <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 2560,세로 1600 px</span>)오차범위 200</div>
                                    <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">3,000KB 초과불가</span></div>
                                    <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                </div>
                                <div class="column_2_Area_1_txt3">
                                    <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                </div>
                                <div class="img_Btn_Area">
                                    <div class="img_Btn lowerst-font pc_img_Btn"  id="pc_img_Btn_0" data-value="0">이미지 등록</div>
                                    <div class="img_Btn lowerst-font inactive pcimg_Del_Btn" id="pc_img_del_Btn_0"  data-value="0">삭제</div>
                                </div>
                            </div>
                            <%--모바일--%>
                            <input type="hidden" name="BANNER_SID" value="-1" />
                            <input type="hidden" name="PARENT_SID" value="-1" />
                            <input type="hidden" name="BANNER_TYPE" value="MOBILE" />
                            <div class="column_2_Area_2">
                                <div class="column_2_Area_1_txt1">모바일</div>
                                <div class="img_wrap_200 img_wrap"id="mobile_img_wrap_0" style="width: 214px; height: 381px;">
                                    <img src="/Source/image/no_img.svg" class="no_img" />
                                </div>
                                <div class="column_2_Area_1_txt2">
                                    <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 1242,세로 2208 px</span>)오차범위 200</div>
                                    <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                    <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                </div>
                                <div class="column_2_Area_1_txt3">
                                    <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                </div>
                                <div class="img_Btn_Area">
                                    <div class="img_Btn lowerst-font mobile_img_Btn" id="mobile_img_Btn_0" data-value="0">이미지 등록</div>
                                    <div class="img_Btn lowerst-font inactive mbimg_Del_Btn" id="mobile_img_del_Btn_0" data-value="0">삭제</div>
                                </div>
                            </div>
                        </div>
              
                    </div>
                    <%--배너 URL--%>
                    <div class="url_Area">
                        <div class="url_txt">
                            <div class="lower-font"><span class="lowerst-font drkid_Negative_color">&nbsp</span>배너 URL</div>
                        </div>
                        <div class="url_Input_Area">
                            <input type="text" class="drkid-input lowerst-font INPUT"  name="I_URL" value="" />
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
            <%--적용하기 버튼--%>
            <div class="banner_Save_Btn_Area">
                <div class="banner_Save_Btn middle-font">적용하기</div>
            </div>
        </div>
    </div>

     <!-- Dev의 Upload 기능을 쓰기위한 숨김처리 -->
    <!-- 이미지 업로드 File 이미지만 업로드 가능 처리. -->
    <!-- 5242880 byte = 5mb  15728640 byte = 15mb Memory 확대로 15mb까지는 처리-->
    <div style="width: 90%; display: none;">
        <%--pc--%>
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
        <%--mobile--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader2" runat="server" ClientInstanceName="uploader2" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete2" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete2(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete2(e); }"
                TextChanged="function(s, e) { UpdateUploadButton2(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>

        <dx:ASPxButton ID="btnUpload2" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload2" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader2.Upload(); }" />
        </dx:ASPxButton>
    </div>
</asp:Content>

