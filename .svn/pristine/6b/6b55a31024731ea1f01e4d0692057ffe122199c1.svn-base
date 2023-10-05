<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_CUPOINT_MAGAZINE_EDIT.aspx.cs" Inherits="drKidAdmin.Source.admin.cupoint.A_CUPOINT_MAGAZINE_EDIT" %>
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
        .common_category_area2 {
            display: flex;
            width: 100%;
            align-items: center;
            padding: 20px 0px 10px 0px;
        }
        #I_TITLE,#I_SUB_TITLE {
            width: calc(100% - 140px);
            height:80px; 
            padding:10px;
            box-sizing: border-box;
            border:1px solid #E1E1E1;
            resize:none;
        }
        #I_TITLE:focus {
             outline:1px solid #005764;
        }
        #I_TITLE::placeholder {
            color: #D8D8D8;
            font-size:14px;
        }
        #I_SUB_TITLE:focus {
             outline:1px solid #005764;
        }
        #I_SUB_TITLE::placeholder {
            color: #D8D8D8;
            font-size:14px;
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
        /*pc,mobile이미지 등록*/
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
            cursor: pointer;
        }
        .img_wrap {
            align-items: center;
        }
        .no_img {
            width: 60px;
            height: 60px;
        }
        .column_2_Area_1_txt1 {
               padding: 0px 0px 10px 0px;
        }

        .column_2_Area_1_txt2 {
             padding: 10px 0px 20px 0px;
        }   
        .column_2_Area_1_txt3 {
             padding: 0px 0px 10px 0px;
        }
        .image_for_class {
            object-fit: cover;
        }
        .inactive {
            color:#E2E2E2;
            cursor:inherit;
        }
        .img_Btn_Active {
            cursor:pointer;
            color:black;
        }
        /*상품연결*/
        .list_area {
            display: flex;
            width: 100%;
        }
        .search_field {
            width: calc(100% - 140px);
        }
        .search_title {
            padding: 0px 0px 5px 0px;
        }
         /*common_popup_2 전용 css 추가해줘야함*/
        .pop-modal-inner {
            position: absolute;
            top: 50%;
            left: 50%;
            max-height: none;
            width: 1030px;
            background-color: white;
            box-shadow: var(--mono_line) 0px 0px 2px 1px;
            transform: translate(-50%,-50%);
            overflow:hidden;
        }
        .pop-modal-inner-content{
            height : 70vh !important;
        }
    </style>
    <script src="/smarteditor2.3.10/js/HuskyEZCreator.js" charset="utf-8"></script>
    <script>
        var save_flag ="<%=save_flag %>";
        var SID = '<%=request_sid%>';
        var limit = 4;
        var oEditors = [];
        $(function () {
            function smartEditorIFrame() {
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

                    },
                });
            }
            smartEditorIFrame();

            //등록일 오늘날짜 표시
            var today = new Date();
            var year = today.getFullYear();
            var month = String(today.getMonth() + 1).padStart(2, '0');
            var day = String(today.getDate()).padStart(2, '0');
            var formattedDate = year + '.' + month + '.' + day;
            $('#today_Date').text(formattedDate);

            //이미지 등록
            $('.pc_img_Btn').on('click', function () {
                //Dev 아래의 File 버튼 클릭하게하면 2개의 input이 Click이 실행됨.
                //Dev측에서도 따로 uploader.click과 같은 기능을 제공하지 않는다고 못을 박아버림 
                //사용을 위해서는 숨겨진 input type file중 업로드 Complate가 작동하는 type file을 찾자.
                //그지같지만 어쩔수 없음.
                /*$('#uploader').find("input[type=file]").click();*/
                var checkValue = $(this).data('value');
                if ($('#pc_img_wrap_' + checkValue).find('*').length > 4) {
                    _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                }
                else {
                    $('#uploader2_TextBox0_Input').click();
                }
            });
            //이미지 삭제
            $('.pcimg_Del_Btn').on('click', function () {

                var checkValue = $(this).data('value');
                //삭제할 요소가 있으면 이미지, 이미지관련 인풋정보 삭제
                if ($('#pc_img_wrap_' + checkValue).find('*').length > 4) {
                    $("#pc_img_wrap_" + checkValue).empty();
                    var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                    $("#pc_img_wrap_" + checkValue).append(img);
                    //삭제버튼 비활성
                    $("#pc_img_del_Btn_" + checkValue).removeClass('img_Btn_Active');
                    $("#pc_img_del_Btn_" + checkValue).removeClass('inactive');
                    $("#pc_img_del_Btn_" + checkValue).addClass('inactive');
                }
                else {
                    console.log("삭제할 요소 없음")
                }
            });
            //상품 조회 버튼
            $("#openModalButton").on("click", function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    console.log(data);
                var total_count = data.length;
                console.log("total_count: ",total_count)
                let html,html1;
                if(total_count <= limit){
                    $("#bigM").empty();
                    for (var i = 0; i < total_count; i++) {
                        html = $("#PRODUCT_TABLE_TEMPLATE").html();
                        var category_count=(data[i].JsonData.CATEGORY_NAME).split(',').length;
                        console.log(category_count);
                        html = html.replace(/{PRODUCT_COUNT}/g, total_count - i);
                        html = html.replace(/{PRODUCT_SID}/g, data[i].JsonData.CODE_SID);
                        html = html.replace(/{PRODUCT_CD}/g, data[i].JsonData.CODE_CODE);
                        html = html.replace(/{PRODUCT_NM}/g, data[i].JsonData.CODE_NAME);
                        
                        for (var j = 0; j < category_count; j++) {
                            // 카테고리 개수만큼 카운트가 0일때마다 초기화 
                            if(j==0){
                                html1 = ""; 
                            }
                            var temp = ('<div class="drkid-input lowerst-font ">{category_name'+j+'}</div><input type="hidden" name="category_name" value="{category_name'+j+'}" />');
                            html1 += (temp.replace("{category_name"+j+"}",(data[i].JsonData.CATEGORY_NAME).split(',')[j]).replace("{category_name"+j+"}",(data[i].JsonData.CATEGORY_NAME).split(',')[j]));
                        }
                        html = html.replace(/{CATEGORY_NAME}/g,html1);
                        // 가격 천단위 콤마(,)표시
                        var sale_rate = formatPay(data[i].JsonData.VIEW_SALE_RATE.toString())
                        html = html.replace(/{VIEW_SALE_RATE}/g, sale_rate);
                        html = html.replace(/{VIEW_FLAG}/g, data[i].JsonData.VIEW_FLAG == 'Y' ? "전시중" : "전시중단" );
                        //정현  추가
                        html = html.replace(/{PARENT_SID_VAL}/g, SID); //
                        html = html.replace(/{ORDER_SEQ_VAL}/g, i);
                        $("#bigM").append(html);

                    }
                    $("#content_product_count").text(total_count+" 개");
                }
                else{
                    _popModal.Alert('알림', `최대 ${limit}개 까지 등록가능합니다.`);
            }
            }).catch((err) => {
                console.log(err);
        });
        });
        //상품 선택 삭제 기능 
        $('#product-delete-btn').on('click', function () {
            let _checkBoxChecker = $('input:checkbox[name="SUB_CHECK_BOX"]:checked');
            let _checkBoxcount = _checkBoxChecker.length;
            if (_checkBoxChecker.length == 0) {
                _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                return;
            }
            _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                function () {
                    _checkBoxChecker.each(function (index, item) {
                        let _Sid = $(item).val();
                        $(`[data-sub-tr="${_Sid}"]`).remove();
                        let _checkBoxTotal = $('#bigM').children().length;
                        $(".count_sapn").text(_checkBoxTotal+" 개");
                        relation_order_seq_optimization();// 릴레이션 seq 최적화
                    });
                }, function (error) { _popModal.Alert('알림', error); });
        });
        //저장
        $('#save_Btn').on('click', function () {
            //매거진 이미지 확인
            var pc_element_count = 0;
            $("[id^='pc_img_wrap_']").each(function () {
                pc_element_count++;
            });
            console.log("pc elements: " + pc_element_count);
            for (var i = 0; i < pc_element_count; i++) {
                var selector = "#pc_img_wrap_" + i;
                var childElementCount = $(selector).children().length;
                if (childElementCount <= 1) {
                    _popModal.Alert('', '이미지를 등록해주세요.');
                    return false;
                }
            }
            //제목에 아무것도 안적으면 alert 출력
            if (!$.trim($("#I_TITLE").val())) {
                _popModal.Alert('', '제목을 입력해주세요.');
                return false;
            }
            //부제목에 아무것도 안적으면 alert 출력
            if (!$.trim($("#I_SUB_TITLE").val())) {
                _popModal.Alert('', '부제목을 입력해주세요.');
                return false;
            }
            oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
            //내용에 아무것도 안적으면 alert 출력
            if ($.trim($("#smarteditor").val()) == "<p>&nbsp;</p>") {
                _popModal.Alert('', '내용을 입력해주세요.');
                return false;
            }
            _popModal.Promt('저장', '저장하시겠습니까?'
                , function () {
                    showProgress();
                    $('input:checkbox[name="SUB_CHECK_BOX"]').prop("checked", true);
                    $('#flag').val('save');
                    $('#form1').submit();
                }
                , function (err) { _popModal.Alert('알림', err); }
            );
        });

        if (save_flag == "Y") {
            _popModal.Alert('', '정상 저장 되었습니다.');
        }
        //취소
        //취소버튼
        $('#cansle_Btn').on('click', function () {
            hideProgress();
            closeTabPath("/Source/admin/cupoint/A_CUPOINT_MAGAZINE_EDIT.aspx");//탭 닫기
        });
        });

        function clickHideFileInput(id) {
            $('#' + id).click();
        }

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
        //스마트에디터 
        function Uploader_OnFilesUploadComplete2(args) {
            UpdateUploadButton2();
        }
        //pc,mobile 이미지
        function Uploader_OnFileUploadComplete2(args) {
            //console.log(JSON.stringify(args));
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
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
        function formatPay(input) {
            var Number = input.replace(/[^0-9%]/g, ''); // 숫자 이외의 문자 제거
            var formattedNumber = '';
            formattedNumber = Number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            console.log(formattedNumber);
            return formattedNumber;
        }
        function relation_order_seq_optimization() {
            var relation_order_seq = $("#bigM"+' input[type="hidden"][name="RELATION_ORDER_SEQ"]');
            relation_order_seq.each(function(index,item) {
                $(item).val(index);
                console.log($(item).val())
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="duplication_save_sid" id="duplication_save_sid" value="<%=duplication_save_sid%>" />
    </div>

    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font">매거진 등록</span>
        </div>

        <div class="sub-content-wrap_custom">

            <%if (REQUEST_MAGAZINE_LIST != null)
              {%>
            <%for (int i = 0; i < REQUEST_MAGAZINE_LIST.Rows.Count; i++)
              { %>
            <div class="sub-content-request-ui-area">
                <%--카테고리 영역--%>
                <div class="category_request_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>카테고리</div>
                    <div class="category_select_area">
                        <select class="drkid-select lowerst-font" id="FAQ_TYPE_CHOICE" name="FAQ_TYPE_CHOICE" style="width: 200px;" data-font-class="lowerst-font">
                            <option class="lowerst-font" value="PRODUCT" <%= (request_magazine_type == "PRODUCT" ? " selected=\"selected\"" : "") %>>PRODUCT</option>
                            <option class="lowerst-font" value="ISSUE" <%= (request_magazine_type == "ISSUE" ? " selected=\"selected\"" : "") %>>ISSUE</option>
                        </select>
                        <div class="edit_category_select_area"></div>
                    </div>
                </div>

                <%--등록일 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>등록일</div>
                    <div class="lowerst-font mono_dea_color" id=""><%= ((DateTime)REQUEST_MAGAZINE_LIST.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%></div>
                </div>

                <%--PC/MOBILE이미지 등록 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>매거진 이미지 등록</div>

                    <div class="column_2_Area_1">
                        <div class="column_2_Area_1_txt1 lower-font">PC/MOBILE</div>
                        <div class="img_wrap_200 img_wrap" id="pc_img_wrap_<%=i%>" style="width: 410px; height: 280px;">
                            <%if (!string.IsNullOrEmpty(Convert.ToString(REQUEST_MAGAZINE_LIST.Rows[i]["TARGET_READ_PATH"])))
                              { %>
                            <input type='hidden' name='image_upload_byte' value='' />
                            <input type='hidden' name='image_upload_name' value='<%=REQUEST_MAGAZINE_LIST.Rows[i]["SOURCE_FILE_NAME"] %>' />
                            <input type='hidden' name='image_upload_ext' value='<%=REQUEST_MAGAZINE_LIST.Rows[i]["EXT"] %>' />
                            <input type='hidden' name='image_upload_sid' value='<%=REQUEST_MAGAZINE_LIST.Rows[i]["EDM_SID"] %>' />
                            <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=REQUEST_MAGAZINE_LIST.Rows[i]["TARGET_READ_PATH"] %>' />
                            <%}%>
                            <%else
                              {%>
                            <img src="/Source/image/no_img.svg" class="no_img" />
                            <%}%>
                        </div>
                        <div class="column_2_Area_1_txt2">
                            <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 410,세로 280 px</span>)오차범위 200</div>
                            <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                            <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                        </div>
                        <div class="column_2_Area_1_txt3">
                            <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                        </div>
                        <div class="img_Btn_Area">
                            <div class="img_Btn lowerst-font pc_img_Btn" id="pc_img_Btn_<%=i%>" data-value="<%=i%>">이미지 등록</div>
                            <div class="img_Btn lowerst-font pcimg_Del_Btn" id="pc_img_del_Btn_<%=i%>" data-value="<%=i%>">삭제</div>
                        </div>
                    </div>
                </div>
                <%--제목 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>제목</div>
                    <textarea class="lower-font" id="I_TITLE" name="I_TITLE" placeholder="제목을 입력해 주세요."><%=REQUEST_MAGAZINE_LIST.Rows[i]["BOARD_TITLE"] %></textarea>
                </div>
                <%--부제목 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>부제목</div>
                    <textarea class="lower-font" id="I_SUB_TITLE" name="I_SUB_TITLE" placeholder="부제목을 입력해 주세요."><%=REQUEST_MAGAZINE_LIST.Rows[i]["BOARD_SUB_TITLE"] %></textarea>
                </div>
                <%--내용 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>내용</div>
                    <div class="sm_wrap">
                        <textarea class="lower-font" name="smarteditor" id="smarteditor" style="width: 100%;" placeholder="내용을 입력해 주세요."><%=REQUEST_MAGAZINE_LIST.Rows[i]["BOARD_MESSAGE"]%></textarea>
                    </div>
                </div>
                <%--이미지 추가--%>
                <div class="common_category_area">
                    <div class="category_txt"></div>
                    <div class="drkid-btn add_img_btn lowerst-font" onclick="clickHideFileInput('uploader_TextBox0_Input')">이미지 등록</div>
                </div>

                <%--상품연결 버튼--%>
                <div class="common_category_area2">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">&nbsp;</span>상품연결</div>
                    <div>
                        <div>
                            <div class="drkid-btn-sub2 drkid-btn-active" id="openModalButton" data-class-code="POP_PRODUCT" data-title="상품 조회" data-target="COMMON_POPUP_2">
                                <span class="lowerst-font">상품조회</span>
                            </div>
                            <span>&nbsp&nbsp</span>
                            <div class="drkid-btn-sub2" id="product-delete-btn">
                                <span class="lowerst-font">선택삭제</span>
                            </div>
                        </div>
                    </div>
                </div>
                <%--상품연결 리스트--%>
                <div class="list_area">
                    <div class="category_txt lowerst-font"></div>
                    <div class="search_field">
                        <div class="search_title">
                            <span class="lower-font fcolor_dea">연결된 상품&nbsp</span>
                            <span class="lower-font count_sapn" id="content_product_count"><%=prodTable.Rows.Count%> 개</span>
                        </div>
                        <div class="table-wraper max-height-overflow">
                            <table class="table-common">
                                <colgroup>
                                    <col style="width: 4%;" />
                                    <col style="width: 4%;" />
                                    <col style="width: 15%;" />
                                    <col style="width: 31%;" />
                                    <col style="width: 14%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 12%;" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="lower-font">
                                            <label class="drkid-checkbox">
                                                <input type="checkbox" value="Y" id="all-select-class" />
                                                <span class="fake-check-box"></span>
                                            </label>
                                        </th>
                                        <th class="lower-font">No.</th>
                                        <th class="lower-font">상품번호</th>
                                        <th class="lower-font">상품명</th>
                                        <th class="lower-font">카테고리</th>
                                        <th class="lower-font">판매가</th>
                                        <th class="lower-font">전시상태</th>
                                        <th class="lower-font">잔여수량</th>
                                    </tr>
                                </thead>
                                <tbody id="bigM">
                                    <%if (prodTable.Rows.Count > 0)
                                  {%>
                                    <%for (int j = 0; j < prodTable.Rows.Count; j++)
                                        {%>
                        
                                            <tr data-sub-tr="<%=prodTable.Rows[j]["CHILD_OBJECT_SID"] %>">
                                                <%--체크박스--%>
                                                <td class="lower-font">
                                                    <label class="drkid-checkbox">
                                                        <input type="checkbox" value="<%=prodTable.Rows[j]["CHILD_OBJECT_SID"] %>" name="SUB_CHECK_BOX" />
                                                        <span class="fake-check-box"></span>
                                                    </label>
                                                </td>
                                                <%--넘버--%>
                                                <td class="lower-font">
                                                    <div class="drkid-input lowerst-font"><%= Convert.ToInt32(prodTable.Rows[j]["RELATION_ORDER_SEQ"]) + 1 %></div>
                                                    <input type="hidden" name="PRODUCT_COUNT" value="<%=prodTable.Rows.Count - j%>" />
                                                </td>
                                                <%--상품번호--%>
                                                <td class="lower-font">
                                                    <div class="drkid-input lowerst-font"><%=prodTable.Rows[j]["PRODUCT_CD"] %></div>
                                                    <input type="hidden" name="PRODUCT_CD" value="<%=prodTable.Rows[j]["PRODUCT_CD"] %>" />
                                                </td>
                                                <%--상품명--%>
                                                <td class="lower-font">
                                                    <div class="drkid-input lowerst-font"><%=prodTable.Rows[j]["PRODUCT_NM"] %></div>
                                                    <input type="hidden" name="PRODUCT_NM" value="<%=prodTable.Rows[j]["PRODUCT_NM"] %>" />
                                                </td>
                                                <%--카테고리--%>
                                                <td id="CATEGORY_NAME" class="lower-font cate_td"><%=prodTable.Rows[j]["CATEGORY_NAME"] %>
                                                </td>
                                                <%--판매가--%>
                                                <td class="lower-font"> 
                                                    <div class="drkid-input lowerst-font "><%=prodTable.Rows[j]["VIEW_SALE_RATE"] %></div>
                                                    <input type="hidden" name="VIEW_SALE_RATE" value="<%=prodTable.Rows[j]["VIEW_SALE_RATE"] %>" />
                                                </td>
                                                <%--전시상태--%>
                                                <td class="lower-font">
                                                    <div class="drkid-input lowerst-font"><%=prodTable.Rows[j]["VIEW_FLAG"].ToString() == "Y" ? "전시중" : "전시중단" %></div>
                                                    <input type="hidden" name="VIEW_FLAG" value="<%=prodTable.Rows[j]["VIEW_FLAG"].ToString() == "Y" ? "전시중" : "전시중단" %>" />
                                                </td>
                                                <%--잔여수량--%> 
                                                <td class="lower-font">
                                                    <div class="drkid-input lowerst-font"><%=prodTable.Rows[j]["VIEW_FLAG"].ToString() == "Y" ? "전시중" : "전시중단" %></div>
                                                    <input type="hidden" name="VIEW_FLAG" value="<%=prodTable.Rows[j]["VIEW_FLAG"].ToString() == "Y" ? "전시중" : "전시중단" %>" />
                                                </td>
                                                <input type='hidden' name='PARENT_SID' value= "<%=prodTable.Rows[j]["PARENT_OBJECT_SID"] %>"/>
                                                <input type="hidden" name="RELATION_ORDER_SEQ" value="<%=prodTable.Rows[j]["RELATION_ORDER_SEQ"] %>" />
                                            </tr>
                                    <%}%>
                                <%}%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <%}%>
            <%}%>

            <% else
              { %>

            <%--디폴트--%>
            <div class="sub-content-request-ui-area">
                <%--카테고리 영역--%>
                <div class="category_request_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>카테고리</div>
                    <div class="category_select_area">
                        <select class="drkid-select lowerst-font" id="FAQ_TYPE_CHOICE" name="FAQ_TYPE_CHOICE" style="width: 200px;" data-font-class="lowerst-font">
                            <option class="lowerst-font" value="PRODUCT">PRODUCT</option>
                            <option class="lowerst-font" value="ISSUE">ISSUE</option>
                        </select>
                        <div class="edit_category_select_area"></div>
                    </div>
                </div>

                <%--등록일 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>등록일</div>
                    <div class="lowerst-font mono_dea_color" id="today_Date"></div>
                </div>

                <%--PC/MOBILE이미지 등록 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>매거진 이미지 등록</div>

                    <div class="column_2_Area_1">
                        <div class="column_2_Area_1_txt1 lower-font">PC/MOBILE</div>
                        <div class="img_wrap_200 img_wrap" id="pc_img_wrap_0" style="width: 410px; height: 280px;">
                            <img src="/Source/image/no_img.svg" class="no_img" id="pc_no_img" />
                        </div>
                        <div class="column_2_Area_1_txt2">
                            <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 410,세로 280 px</span>)오차범위 200</div>
                            <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                            <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                        </div>
                        <div class="column_2_Area_1_txt3">
                            <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                        </div>
                        <div class="img_Btn_Area">
                            <div class="img_Btn lowerst-font pc_img_Btn" id="pc_img_Btn_0" data-value="0">이미지 등록</div>
                            <div class="img_Btn lowerst-font inactive pcimg_Del_Btn" id="pc_img_del_Btn_0" data-value="0">삭제</div>
                        </div>
                    </div>
                </div>
                <%--제목 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>제목</div>
                    <textarea class="lower-font" id="I_TITLE" name="I_TITLE" placeholder="제목을 입력해 주세요."></textarea>
                </div>
                <%--부제목 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>부제목</div>
                    <textarea class="lower-font" id="I_SUB_TITLE" name="I_SUB_TITLE" placeholder="부제목을 입력해 주세요."></textarea>
                </div>
                <%--내용 영역--%>
                <div class="common_category_area">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">*&nbsp;</span>내용</div>
                    <div class="sm_wrap">
                        <textarea class="lower-font" name="smarteditor" id="smarteditor" style="width: 100%;" placeholder="내용을 입력해 주세요."></textarea>
                    </div>
                </div>
                <%--이미지 추가--%>
                <div class="common_category_area">
                    <div class="category_txt"></div>
                    <div class="drkid-btn add_img_btn lowerst-font" onclick="clickHideFileInput('uploader_TextBox0_Input')">이미지 등록</div>
                </div>

                <%--상품연결 버튼--%>
                <div class="common_category_area2">
                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">&nbsp;</span>상품연결</div>
                    <div>
                        <div>
                            <div class="drkid-btn-sub2 drkid-btn-active" id="openModalButton" data-class-code="POP_PRODUCT" data-title="상품 조회" data-target="COMMON_POPUP_2">
                                <span class="lowerst-font">상품조회</span>
                            </div>
                            <span>&nbsp&nbsp</span>
                            <div class="drkid-btn-sub2" id="product-delete-btn">
                                <span class="lowerst-font">선택삭제</span>
                            </div>
                        </div>
                    </div>
                </div>
                <%--상품연결 리스트--%>
                <div class="list_area">
                    <div class="category_txt lowerst-font"></div>
                    <div class="search_field">
                        <div class="search_title">
                            <span class="lower-font fcolor_dea">연결된 상품&nbsp</span>
                            <span class="lower-font count_sapn" id="content_product_count">0 개</span>
                        </div>
                        <div class="table-wraper max-height-overflow">
                            <table class="table-common">
                                <colgroup>
                                    <col style="width: 4%;" />
                                    <col style="width: 4%;" />
                                    <col style="width: 15%;" />
                                    <col style="width: 31%;" />
                                    <col style="width: 14%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 12%;" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="lower-font">
                                            <label class="drkid-checkbox">
                                                <input type="checkbox" value="Y" id="all-select-class" />
                                                <span class="fake-check-box"></span>
                                            </label>
                                        </th>
                                        <th class="lower-font">No.</th>
                                        <th class="lower-font">상품번호</th>
                                        <th class="lower-font">상품명</th>
                                        <th class="lower-font">카테고리</th>
                                        <th class="lower-font">판매가</th>
                                        <th class="lower-font">전시상태</th>
                                        <th class="lower-font">잔여수량</th>
                                    </tr>
                                </thead>
                                <tbody id="bigM">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <%}%>
        </div>
    </div>

    <%--자주묻는 질문 등록 버튼 영역--%>
    <div class="sub-content-wrap_custom_btn_area">
        <div class="middle-font drkid-btn search-btn drkid-btn-active" id="save_Btn">저장</div>
        <div class="middle-font drkid-btn edit_btn_cansle" id="cansle_Btn">취소</div>
        <%--리스트에서 수정버튼을 타고 들어온 경우에만 삭제버튼 생김--%>
        <%--        <%if(eidt_flag != null)
               {%> 
                   <%if (eidt_flag == "Y")
                   {%>
                        <div class="middle-font drkid-btn edit_btn_delete"id="edit_btn_delete">삭제</div>
                  <%}%>
            <%}%> --%>
    </div>
    <%--팝업 상품 리스트 테이블--%>
    <script type="text/html" id="PRODUCT_TABLE_TEMPLATE">
        <tr data-sub-tr="{PRODUCT_SID}">
            <%--체크박스--%>
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{PRODUCT_SID}" name="SUB_CHECK_BOX" />
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <%--넘버--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{PRODUCT_COUNT}</div>
                <input type="hidden" name="PRODUCT_COUNT" value="{PRODUCT_COUNT}" />
            </td>
            <%--상품번호--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{PRODUCT_CD}</div>
                <input type="hidden" name="PRODUCT_CD" value="{PRODUCT_CD}" />
            </td>
            <%--상품명--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{PRODUCT_NM}</div>
                <input type="hidden" name="PRODUCT_NM" value="{PRODUCT_NM}" />
            </td>
            <%--카테고리--%>
            <td id="CATEGORY_NAME" class="lower-font">{CATEGORY_NAME}
                    <%--<div class="drkid-input lowerst-font input-lowheight">{CATEGORY_NAME}</div>
                    <input type="hidden" name="CATEGORY_NAME" value="{CATEGORY_NAME}" />--%>
            </td>
            <%--판매가--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{VIEW_SALE_RATE}</div>
                <input type="hidden" name="VIEW_SALE_RATE" value="{VIEW_SALE_RATE}" />
            </td>
            <%--전시상태--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{VIEW_FLAG}</div>
                <input type="hidden" name="VIEW_FLAG" value="{VIEW_FLAG}" />
            </td>
            <%--잔여수량--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{VIEW_FLAG}</div>
                <input type="hidden" name="VIEW_FLAG" value="{VIEW_FLAG}" />
            </td>
            <input type='hidden' name='PARENT_SID' value="{PARENT_SID_VAL}" />
            <input type='hidden' name='RELATION_ORDER_SEQ' value="{ORDER_SEQ_VAL}" />
        </tr>
    </script>


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
