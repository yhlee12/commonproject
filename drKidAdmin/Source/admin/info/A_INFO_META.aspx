<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_INFO_META.aspx.cs" Inherits="drKidAdmin.Source.admin.info.A_INFO_META" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .content_Block {
            min-width: 545px;
            width: 100%;
            min-height: 10vh;
            background: #ffffff;
            border: 1px solid #DBDDE2;
            padding: 20px 30px;
            display:flex;
        }
        .btn_Block{
            justify-content: center;
        }
        .content_Title{
            width: 20%;
        }
        .content_Body{
            width:100%;
        }
        .content_inner{
            width:100%;
        }
        .partion{
            border-top:1px solid #dbdde2;
            padding-top: 20px;
        }
        .label{
            width: 15%;
        }
        .label-btn{
            margin-left: 4px;
        }
        .coupon_input{
            display:flex;
            align-items: center;
            margin-bottom:20px;
        }
        .coupon_date{
            display:flex;
            align-items: center;
        }
        .top_margin{
            margin-top:25px;
        }
        .inner_wrap{
            display:flex;
            align-items: center;
            margin: 0 0 20px 0;
        }
        
        .inner_revert{
            align-items: revert;
            margin: 10px 0 20px 0;
        }
        .search_field{
            width:88%;
        }
        .search_title{
            margin-bottom: 10px;
            position: relative;
            display: flex;
            justify-items: flex-start;
            justify-content: flex-start;
            align-items: center;
        }
        .max-height-overflow{
            height: 200px;
        }
        /*.drkid-checkbox{
            margin-right:18px;
        }*/
        .coupon_detail_label{
            margin-right:32px;
        }

        .fcolor_dea{
            color:var(--mono_dea);
        }
        .count_sapn{
            min-width: 30px;
            max-width: 100px;
            text-align: end;
        }
        
        .coupon_ex_wrap{
            display: flex;
            justify-content: space-around;
            padding: 30px 0 0 0;
        }
        
        .flex_layer{
            display:flex;
        }
        .COUPON_TEMPLATE{
            text-align: center;
        }
        .count_input_box > input{
            border:none;
        }
        .count_input_box > input:focus{
            border:none;
        }
        .count_input_box{
            display:flex;
            align-items: center;
            box-sizing: border-box;
            height: 42px;
            line-height: 40px;
            border: 1px solid var(--mono_line);
            outline: none;
            vertical-align: middle;
            outline: none;
            line-height: var(--drkid-lower-height);
            width: 260px;
        }
        .count_size{

        }
        .input_subT_TCount,.input_mainT_TCount,.input_coupon_title_TCount{
            font-size: var(--drkid-lower-font);
            color: #D8D8D8;
        }
        .input_subT_Count,.input_mainT_Count,.input_coupon_title_Count{
            font-size: var(--drkid-lower-font);
            color: var(--main_color);
        }
        .del_btn, .save_btn {
            margin : 0 10px;
            min-width: 170px;
        }
        #COST_LIMIT{
            text-align: end;
        }
        .user-type-check-box{
            display: flex;
            flex-wrap: wrap;
            width: 80%;
        }
        .user-type-check-box >.drkid-checkbox{
            padding: 5px 20px 5px 20px;
        }
        .drkid-input{
            width: 400px;
        }
        .keyword_area{
            width: 400px;
            height:200px;
            box-sizing: border-box;
            border: 1px solid var(--mono_line);
            padding: 0 8px;
            outline: none;
            resize: none;
        }
        .keyword_area:focus{
            border:1px solid var(--main_color);
        }
        .keyword_area:disabled{
            color:var(--mono_sub);
            background-color:var(--mono_line);
        }
        .keyword_area::placeholder{
            color:var(--mono_sub);
        }
        .guide {
            position: absolute;
            background: #ffffff;
            z-index: 999;
            cursor: auto;
            padding: 15px;
            box-shadow: 0px 0px 10px #0000001A;
            border: 1px solid #E2E2E2;
        }
        .OG_Title_Area {
            padding: 0px 0px 10px 0px;
            border-bottom: 1px solid #E2E2E2;
            display:flex;
            align-items: center;
            justify-content: space-between;
        }
        .OG_Title {
            font-weight: 600;
        }
        .guide_Close_Btn {
            cursor: pointer;
        }
        .guide_Info_Area {
            width: 100%;
            height: calc(100% - 41px);
            padding-top:10px;
        }
        .hideContent{
            display:none;
        }
        .guide_icon{
            cursor: pointer;
        }
        .info_Icon{
            font-size : var(--drkid-middle-font);
            color: var(--drkid_alert_negative);
        }
        .pc_Mobile_Wrap {
            display: flex;
            gap: 0px 20px;
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
        .no_img {
            width: 60px;
            height: 60px;
        }
        .img_wrap {
             align-items: center;
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
        .favi_image{
            width:48px;
            height:48px;
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
                    $("#I_OG_IMAGE").val('-1');
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
            //console.log(JSON.stringify(args));
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div class="img_info"><input type='hidden' name='image_upload_byte2' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name2' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext2' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid2' value='-1'/></div>`;
                    $("#I_FAVICON").val('-1');
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
            $(".save_btn").on('click', function () {
                $('#flag').val('save');
                $('#form1').submit();
            });

            //이미지 등록 -I_OG_IMAGE
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
                    $('#uploader_TextBox0_Input').click();
                }
            });
            //이미지 등록 - I_FAVICON
            $('.mobile_img_Btn').on('click', function () {
                /*$('#uploader2').find("input[type=file]").click();*/
                var checkValue = $(this).data('value');
                if ($('#mobile_img_wrap_' + checkValue).find('*').length > 4) {
                    _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                }
                else {
                    $('#uploader2_TextBox0_Input').click();
                }
            });

            //이미지 삭제 버튼 - I_OG_IMAGE
            $('.pcimg_Del_Btn').on('click', function () {
                $("#I_OG_IMAGE").val("1");
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

            //이미지 삭제 버튼 - I_FAVICON
            $('.mbimg_Del_Btn').on('click', function () {
                $("#I_FAVICON").val("1");
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

            guide_flag = 'Y';
            //느낌표 아이콘 누를때마다 팝업 보여줌
            $(".guide_icon").click(function () {
                if (guide_flag == 'Y') {
                    let guide_info1 = $(this).children("div").attr("id");
                    console.log(guide_info1);
                    $("#" + guide_info1).show();
                }
                guide_flag = 'Y';
            });

            //각 배너별 X 버튼을 누르면 배너를 닫음
            $(".guide_Close_Btn").click(function () {
                let guide_info2 = $(this).parent("div").parent("div");
                if (guide_info2) {
                    guide_info2.hide();
                }
                console.log(guide_info2);
                guide_flag = 'N';
            });

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hidden_input_field" style="display:none;">
        <input type="hidden" name="flag" value="" id="flag" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %></span>
        </div>
        <div class="content_Block">
            <div class="content_Title">
                <span class="middle-font">OG 관리</span>
            </div>
            <div class="content_Body">
                <div class="content_inner">
                    <div class="inner_wrap">
                        <div class="label">
                            <span>OG URL</span>
                        </div>
                        <input type="text" class="drkid-input lower-font" name="I_OG_URL" value="<%=META_TABLE.Rows[0]["OG_URL"]==null?"":META_TABLE.Rows[0]["OG_URL"] %>" placeholder="" maxlength="250" autocomplete="off" />
                        <span>&nbsp&nbsp</span>
                        <div class="guide_icon" id="">
                            <span class="material-icons-outlined info_Icon">info</span>
                            <div class="guide hideContent" id="OG_URL">
                                <div class="OG_Title_Area">
                                    <div class="OG_Title middle-font">OG URL</div>
                                    <div class="guide_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
                                </div>
                                <div class="guide_Info_Area">
                                    SSO 또는 공유하기 진행시 연결되는 URL의 노출 및 편의성을 위한 태그입니다.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inner_wrap">
                        <div class="label">
                            <span>OG 제목</span>
                        </div>
                        <input type="text" class="drkid-input lower-font" name="I_OG_TITLE" value="<%=META_TABLE.Rows[0]["OG_TITLE"]==null?"":META_TABLE.Rows[0]["OG_TITLE"] %>" placeholder="" maxlength="250" autocomplete="off" />
                        <span>&nbsp&nbsp</span>
                        <div class="guide_icon" id="">
                            <span class="material-icons-outlined info_Icon">info</span>
                            <div class="guide hideContent" id="OG_TITLE">
                                <div class="OG_Title_Area">
                                    <div class="OG_Title middle-font">OG 제목</div>
                                    <div class="guide_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
                                </div>
                                <div class="guide_Info_Area">
                                    공유하기 또는 검색시 노출되는 타이틀입니다.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inner_wrap">
                        <div class="label">
                            <span>OG 설명</span>
                        </div>
                        <input type="text" id="" class="drkid-input lower-font" name="I_OG_DESCRIPTION" value="<%=META_TABLE.Rows[0]["OG_DESCRIPTION"]==null?"":META_TABLE.Rows[0]["OG_DESCRIPTION"] %>" placeholder="" maxlength="250" autocomplete="off" />
                        <span>&nbsp&nbsp</span>
                        <div class="guide_icon" id="">
                            <span class="material-icons-outlined info_Icon">info</span>
                            <div class="guide hideContent" id="OG_GUIDE">
                                <div class="OG_Title_Area">
                                    <div class="OG_Title middle-font">OG 설명</div>
                                    <div class="guide_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
                                </div>
                                <div class="guide_Info_Area">
                                    공유하기 또는 검색시 노출되는 사이트 설명입니다.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inner_wrap">
                        <div class="label">
                            <span>OG 사이트명</span>
                        </div>
                        <input type="text" class="drkid-input lower-font" name="I_OG_SITENAME" value="<%=META_TABLE.Rows[0]["OG_SITENAME"]==null?"":META_TABLE.Rows[0]["OG_SITENAME"] %>" placeholder="" maxlength="250" autocomplete="off" />
                        <span>&nbsp&nbsp</span>
                        <div class="guide_icon" id="">
                            <span class="material-icons-outlined info_Icon">info</span>
                            <div class="guide hideContent" id="OG_SITE">
                                <div class="OG_Title_Area">
                                    <div class="OG_Title middle-font">OG 사이트명</div>
                                    <div class="guide_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
                                </div>
                                <div class="guide_Info_Area">
                                    공유하기 또는 검색시 노출되는 사이트명입니다.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inner_wrap inner_revert">
                        <div class="label">
                            <span>OG 이미지</span>
                        </div>
                        <div class="pc_Mobile_Wrap">
                            <input type="hidden" name="BANNER_SID" value="-1" />
                            <input type="hidden" name="PARENT_SID" value="-1" />
                            <input type="hidden" id="I_OG_IMAGE" name="I_OG_IMAGE" value="0" />
                            <div class="column_2_Area_1">
                                <div class="img_wrap_200 img_wrap" id="pc_img_wrap_0" style="width: 400px; height: 202px;">
                                    <% if (EMDS_TABLE != null && EMDS_TABLE.Rows.Count > 0)
                                       {%>
                                    <%for (int i = 0; i < EMDS_TABLE.Rows.Count;i++ ){ %>

                                        <% if (EMDS_TABLE.Rows[i]["EXT"].ToString() != "ico")
                                           { %>
                                            <input type='hidden' name='image_upload_byte' value=''/>
                                            <input type='hidden' name='image_upload_name' value='<%=EMDS_TABLE.Rows[i]["SOURCE_FILE_NAME"]%>'/>
                                            <input type='hidden' name='image_upload_ext' value='<%=EMDS_TABLE.Rows[i]["EXT"]%>'/>
                                            <input type='hidden' name='image_upload_sid' value='<%=EMDS_TABLE.Rows[i]["EDM_SID"]%>'/>
                                            <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"]%><%=EMDS_TABLE.Rows[i]["TARGET_READ_PATH"]%>'/>
                                        <%} %>
                                        <% else if (EMDS_TABLE.Rows.Count == 1 && EMDS_TABLE.Rows[i]["EXT"].ToString() == "ico")
                                           { %>
                                            <img src="/Source/image/no_img.svg" class="no_img" id="pc_no_img" />
                                        <%} %>
                                        <% else
                                           { %>
                                            
                                        <%} %>
                                    <%} %>
                                    <%} %>

                                    <% else
                                       { %>
                                        <img src="/Source/image/no_img.svg" class="no_img" id="pc_no_img" />
                                    <%} %>
                                </div>
                                <div class="column_2_Area_1_txt2">
                                    <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 800,세로 400 px</span>)오차범위 200</div>
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
                        <span>&nbsp&nbsp</span>
                        <div class="guide_icon" id="">
                            <span class="material-icons-outlined info_Icon">info</span>
                            <div class="guide hideContent" id="OG_IMAGE">
                                <div class="OG_Title_Area">
                                    <div class="OG_Title middle-font">OG 이미지</div>
                                    <div class="guide_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
                                </div>
                                <div class="guide_Info_Area">
                                    공유하기 또는 검색시 노출되는 이미지입니다.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_Block">
            <div class="content_Title">
                <span class="middle-font">META 관리</span>
            </div>
            <div class="content_Body">
                <div class="content_inner">
                    <div class="inner_wrap inner_revert">
                        <div class="label">
                            <span>KEY WORD</span>
                        </div>
                        <textarea class="keyword_area lower-font" name="I_KEYWORD"  placeholder="" maxlength="250" resize="off" ><%=META_TABLE.Rows[0]["KEYWORD"]==null?"":META_TABLE.Rows[0]["KEYWORD"] %></textarea>
                        <span>&nbsp&nbsp</span>
                        <div class="guide_icon" id="">
                            <span class="material-icons-outlined info_Icon">info</span>
                            <div class="guide hideContent" id="KEYWORD">
                                <div class="OG_Title_Area">
                                    <div class="OG_Title middle-font">KEY WORD</div>
                                    <div class="guide_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
                                </div>
                                <div class="guide_Info_Area">
                                    사용자가 원하는 정보를 찾기 위해 검색하는 단어를 설정하여, 사용자가 우리회사 혹은 제품을 찾기 위해 검색하는 단어 입니다.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inner_wrap">
                        <div class="label">
                            <span>NAVER META</span>
                        </div>
                        <input type="text" class="drkid-input lower-font" name="I_NAVER_SITE_TAG" value="<%=META_TABLE.Rows[0]["NAVER_SITE_TAG"]==null?"":META_TABLE.Rows[0]["NAVER_SITE_TAG"] %>" placeholder="" maxlength="250" autocomplete="off" />
                        <span>&nbsp&nbsp</span>
                        <div class="guide_icon" id="">
                            <span class="material-icons-outlined info_Icon">info</span>
                            <div class="guide hideContent" id="NAVER_META">
                                <div class="OG_Title_Area">
                                    <div class="OG_Title middle-font">NAVER META</div>
                                    <div class="guide_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
                                </div>
                                <div class="guide_Info_Area">
                                    네이버에서 검색 또는 검색노출을 위해서 사이트 등록시 필요한 코드로 네이버 웹마스터를 통해 얻을 수 있습니다.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inner_wrap">
                        <div class="label">
                            <span>GOOGLE META</span>
                        </div>
                        <input type="text"  class="drkid-input lower-font" name="I_GOOGLE_SITE_TAG" value="<%=META_TABLE.Rows[0]["GOOGLE_SITE_TAG"]==null?"":META_TABLE.Rows[0]["GOOGLE_SITE_TAG"] %>" placeholder="" maxlength="250" autocomplete="off" />
                        <span>&nbsp&nbsp</span>
                        <div class="guide_icon" id="">
                            <span class="material-icons-outlined info_Icon">info</span>
                            <div class="guide hideContent" id="GOOGLE_META">
                                <div class="OG_Title_Area">
                                    <div class="OG_Title middle-font">GOOGLE META</div>
                                    <div class="guide_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
                                </div>
                                <div class="guide_Info_Area">
                                    구글에서 검색 또는 검색노출을 위해서 사이트 등록시 필요한 코드로 구글 검색에서 얻을 수 있습니다.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inner_wrap inner_revert">
                        <div class="label">
                            <span>파비콘 이미지</span>
                        </div>
                        <div class="pc_Mobile_Wrap">
                            <input type="hidden" name="BANNER_SID" value="-1" />
                            <input type="hidden" name="PARENT_SID" value="-1" />
                            <input type="hidden" id="I_FAVICON" name="I_FAVICON" value="0" />
                            <div class="column_2_Area_2">
                                <div class="img_wrap_200 img_wrap" id="mobile_img_wrap_0" style="width: 400px; height: 202px;">
                                    <% if (EMDS_TABLE != null&& EMDS_TABLE.Rows.Count > 0) {%>
                                    <%for (int i = 0; i < EMDS_TABLE.Rows.Count;i++ ){ %>
                                        <% if (EMDS_TABLE.Rows[i]["EXT"].ToString() == "ico"){ %>
                                            <input type='hidden' name='image_upload_byte2' value=''/>
                                            <input type='hidden' name='image_upload_name2' value='<%=EMDS_TABLE.Rows[i]["SOURCE_FILE_NAME"] %>'/>
                                            <input type='hidden' name='image_upload_ext2' value='<%=EMDS_TABLE.Rows[i]["EXT"] %>'/>
                                            <input type='hidden' name='image_upload_sid2' value='<%=EMDS_TABLE.Rows[i]["EDM_SID"] %>'/>
                                            <img class='image_for_class favi_image' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=EMDS_TABLE.Rows[i]["TARGET_READ_PATH"] %>'/>
                                        <%} %>
                                        <% else if (EMDS_TABLE.Rows.Count == 1 && EMDS_TABLE.Rows[i]["EXT"].ToString() != "ico")
                                           { %>
                                            <img src="/Source/image/no_img.svg" class="no_img" id="pc_no_img" />
                                        <%} %>
                                        <% else{ %>
                                            
                                        <%} %>
                                    <%} %>
                                    <%} %>

                                    <% else{ %>
                                        <img src="/Source/image/no_img.svg" class="no_img" id="mobile_no_img" />
                                    <%} %>
                                </div>
                                <div class="column_2_Area_1_txt2">
                                    <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color"> 너비,높이가 48px의 배수인 정사각형</span>)</div>
                                    <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                    <div class="lowerst-font mono_dea_color">확장자 ico 가능</div>
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
                        <span>&nbsp&nbsp</span>
                        <div class="guide_icon" id="">
                            <span class="material-icons-outlined info_Icon">info</span>
                            <div class="guide hideContent" id="FAVICON_IMAGE">
                                <div class="OG_Title_Area">
                                    <div class="OG_Title middle-font">파비콘 이미지</div>
                                    <div class="guide_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
                                </div>
                                <div class="guide_Info_Area">
                                    웹사이트 또는 웹 페이지의 상단 탭과 브라우저의 북마크바 또는 방문기록등에 표시되는 아이콘입니다.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_Block btn_Block">
            <div class="inner_wrap">
                <div class="drkid-btn del_btn">
                    <span class="middle-font ">삭제</span>
                </div>
                <div class="drkid-btn drkid-btn-active save_btn">
                    <span class="middle-font">저장</span>
                </div>
            </div>
        </div>
    </div>
    <div style="width: 90%; display: none;">
        <%--og 이미지--%>
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
        <%--파비콘 이미지--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader2" runat="server" ClientInstanceName="uploader2" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete2" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete2(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete2(e); }"
                TextChanged="function(s, e) { UpdateUploadButton2(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".ico"></ValidationSettings>
        </dx:ASPxUploadControl>

        <dx:ASPxButton ID="btnUpload2" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload2" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader2.Upload(); }" />
        </dx:ASPxButton>
    </div>
</asp:Content>
