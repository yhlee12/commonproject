<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MY_CELEBRITY_EDIT.aspx.cs" Inherits="drKid.Source.client.my.C_MY_CELEBRITY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         #sub_content {
            padding: 7rem 0 0;
            position: relative;
            z-index: 1;
        }
        .sub_layout {
            padding-bottom: 7rem;
            width: 95rem;
            max-width: 100%;
            margin: 0 auto;
            position: relative;
            height: 100%;
        }
        .main_Box {
            padding: 0px 20px;
            max-width: 1340px;
            margin: 0 auto;
        }
        .title_Bar_Wrap {
            display: flex;
            align-items: center;
            gap: 0px 10px;
        }
        .title_Info_Bar_Area {
            display: flex;
            width: 100%;
            height: 220px;
            text-align: center;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
        }
        .title_Info_Bar_Section {
            width:calc(100% / 4);
        }
        .title_Info_Content_Area {
            width: 100%;
            height: 100%;
            padding: 25px 0px;
            cursor:pointer;
        }
        .title_Info_Content_border {
            border-right: 1px solid #CCCCCC;
            padding: 10px 0px;
            height: 100%;
            display: grid;
            align-items: center;
        }


        /*마이페이지 수정 0728*/

        /*공통*/
        .title_Info_Count_Area{
	        cursor:pointer;
        }
        .title_Bar { 
            width: 289px;
            height: 220px;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
            padding:10px;
        }
        .title_Bar_Top { 
            width: 100%;
            height: 70%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .title_Bar_Top_Profile_L {
            width: 90px;
            height: 90px;
        }
        #sentiment_Icon {
            font-size: 90px !important;
            color: #b5b5b5dd;
        }
        .Profile_R_Info1 {
           font-weight: 600;
        }
        .Profile_R_Info2 {
           font-weight: 400;
        }
        .title_Bar_Top_Profile_R {
            height: 90px;
            padding: 20px 14px;
        }

        .title_Bar_Bottom { 
            width: 100%;
            height: 30%;
            border-top: 1px solid #CCCCCC;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 25px 0px 15px 0px;
            gap: 0px 35px;
        }
        .title_Bar_Bottom_Info1 , .title_Bar_Bottom_Info3 {
            font-weight: 400;
        }
        .title_Bar_Bottom_Info2 , .title_Bar_Bottom_Info4{
            font-weight: 700;
        }
        .share_Btn {
            background: #343434;
            width: 250px;
            height: 70px;
            color: #FFC609;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0px 5px;
            line-height: 70px;
            text-align: center;
            border-radius: 12px;
            margin-bottom: 20px;
            font-weight:500;
            cursor:pointer;
        }
        #insert_emoticon {
           font-size: 22px !important;
        }
        /*공통*/
        .user_Point_Area {
            display: flex;
            padding: 0px 0px 40px 0px;
            width: 1000px;
            gap: 0px 20px;
        }

        .user_More_Point_Area {
            width: 330px;
            height: 385px;
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border-radius: 12px;
            border: 1px solid #CCCCCC;
        }
        .user_More_Point_Area_T {
            width: 100%;
            text-align: center;
            height: 150px;
            background: var(--main_color);
            padding: 32px;
            border-radius: 12px 12px 0px 0px;
        }
        .user_More_Point_Area_B {
             width: 100%;
             height: 235px;
        }
        .user_More_Point_Area_B_T ,.user_More_Point_Area_B_B {
             height:50%;
        }
        .point {
            font-size: 50px;
            font-weight: 600;
            text-align: center;
            height: 117px;
            line-height: 117px;
        }
        .point_info {
            font-size: 24px;
            font-weight:400;
        }
        .point_Txt {
            font-size: 16px;
            font-weight: 600;
            text-align: center;
            height: 117px;
            line-height: 117px;
        }
        .user_Name {
            color: #ffffff;
            font-weight: 600;
        }
        .user_Name_Info {
             font-weight: 400;
        }
        .user_More_Point_Txt {
            color:#ffffff;
        }
        .under_Line {
            text-decoration:underline;
        }
        .inline_flex {
            display: inline-flex;
        }
        .user_Grade_Graph_Area {
            width: 330px;
            height: 385px;
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border-radius: 12px;
            border: 1px solid #CCCCCC;
        }
        .user_Grade_Graph_Area_T {
            height: 105px;
            width: 100%;
            text-align:center;
            padding:10px;
        }
        .user_Grade_Graph_Area_M {
            width: 100%;
            height: 175px;
        }
        .user_Grade_Graph_Area_B {
            height: 105px;
            width: 100%;
            text-align:center;
            padding:10px;
        }
        .percent {
            font-size: 28px;
            font-weight: 600;
        }
        .font_weight_500 {
            font-weight:500;
        }
        .title_Info_Bar {
            width: 1000px;
            height: 220px;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
        }
        .title_Info {
            font-weight:600;
        }
        .material-icons-outlined {
            font-size: 50px !important;
        }
        .title_Info_Count {
            font-size:22px;
            font-weight:600;
        }
        .KeyDni_Top_Title {
            font-size:28px;
            font-weight:600;
        }
        #mypage_Btn {
            cursor:pointer;
        }
        .KeyDni_Wrap {
            width: 290px;
        }
        .KeyDni_Area {
            width:100%;
        }
        .KeyDni_Top_Title_Area {
            padding: 0px 0px 20px 0px;
        }
        .KeyDni_Box {
            border-top: 1px solid #CCCCCC;
            padding: 0px 0px 10px 0px;
        }
        .KeyDni_Title_Info {
            padding: 20px 0px;
            font-weight: 600;
        }
        .KeyDni_Info {
             padding: 0px 0px 5px 0px;
             color:#8F8F8F;
             font-weight: 400;
             cursor:pointer;
        }
        .KeyDni_Info_Clicked {
            padding: 0px 0px 5px 0px;
            color:#115C5E;
            font-weight: 400;
            cursor:pointer;
        }
        .all_Bottom_Area {
            display: flex;
            gap:0px 50px;
            padding: 45px 0px 0px 0px;
        }
        .Bottom_Area {
            width:100%;
        }
        .progress_Order_Title_Area {
            padding: 0px 0px 20px 0px;
            border-bottom: 1px solid;
        }
        .order_Step_Top_Area {
            display: flex;
            align-items: center;
        }
        .order_Step_Area {
            width: 140px;
            height: 130px;
            text-align: center;
            display: grid;
            padding: 20px;
            align-items: center;
        }
        .order_Step_Count {
            font-weight:600;
            font-size:30px
        }
        .order_Step_Info {
            font-weight:500;
        }
        .arrow-sub:after {
            font-size: 70px;
            line-height: 70px;
        }
        .order_Step_All_Box ,.new_Order_All_Box {
            display:flex;
            border-top: 1px solid #262626;
            width:1000px;

        }
        .order_Step_Bottom_Info {
            color:#828282;
        }
        .order_Step_Bottom_Info_Count {
            font-weight:600;
        }
        .order_Step_Bottom_Area {
            display: flex;
            justify-content: center;
         
            width:1000px;
        }
        .order_Step_Bottom_Area_2 {
            display: flex;
            justify-content: center;
            gap: 0px 140px;
            border-top: 1px solid #CCCCCC;
            border-bottom: 1px solid #CCCCCC;
            padding: 10px;
            width:1000px;
        }
        .order_Step_Bottom_Info_Area {
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        .show_Order_List_Btn {
            color:#8F8F8F;
            cursor:pointer;
        }
        .new_Order_Title_Area {
            display: flex;
            justify-content: space-between;
            align-items: center;
             padding: 0px 0px 20px 0px;
                 border-bottom: 1px solid #262626;
        }
        .new_Order_Area {
            padding:40px 0px 0px 0px;
            width:1000px;
        }
        .new_Order_List_Column_Area {
            display: flex;
            padding: 15px 40px;
            background: #F9F9F9;
            text-align: center;
            width:100%;
        }

        /*셀럽# 상품 등록*/
        .CeleBrity {
            width: 100%;
        }
        .CeleBrity_Edit_Txt {
            color:var(--main_color);
            padding: 20px 0;
            font-weight: 400;
        }
        .CeleBrity_Btn {
            display: flex;
            justify-content: end;
            gap: 10px;
        }
        .Edit_Btn {
            background: var(--main_color)!important;
            color: #fff;
            padding: 6px 40px !important;
            border: 1px solid var(--main_color) !important;
        }
        .Delete_Btn {

        }
        .CeleBrity_Product {
            padding-top: 20px;
        }
        .CeleBrity_Product_Wrap {
            border: 1px solid var(--mono_line);
        }
        .CeleBrity_Product_title {
            padding: 15px 20px;
            background: var(--main_color);
            color: #fff;
            font-weight: 600;
        }
        .CeleBrity_Product_Content{
            padding: 15px 20px;
        }
        .CeleBrity_Title_Wrap {
            display: flex;
            align-items: center;
        }
        .CeleBrity_Product_Content_title{
           display: flex;
           width:20%;
            /* align-items: center; */
            gap: 10px
        }
        .CeleBrity_Product_Content_title > span {
            display: block;
        }
        .box {
            width: 80%;
        }
        .box > input {
            width: 100%;
        }
        .option_title_input {
            display: flex;
            align-items: center;
            border: 1px solid var(--mono_line);
            height: 40px;
        }
         .option_title_input {
            display: flex;
            align-items: center;
            border: 1px solid var(--mono_line);
            height: 40px;
        }

        .box > .option_title_input {
            padding-right: 10px;
            width:100%;
        }

        .box > .option_title_input > span {
            display: block; 
            padding: 0 2px;
        }

        .box > .option_title_input > input {
            width: 100%;
            border: none;
            border-right: none;
            border-left: none;
        }
        .border_none {
            border:none;!important
        }
        .padding-top {
            padding-top: 20px;
        }
        .CeleBrity_Choice_Btn {
            padding: 5px 40px;
            border: 1px solid var(--main_color);
            background: var(--main_color);
            color: #fff;
            cursor:pointer;
        }
        .drkid-input_box {
            text-align: start;
            height: 100%;
        }
        [type="radio"] {
            margin: 0;
        }
        .radio_wrap {
            display: flex;
            gap: 20px;
        }
        .baseline {
            align-items: baseline;!important
        }
        .line1 {
            line-height: 1;
        }
        .product_name_sub_wrap_title  {
            display: flex;
            align-items: center;
            gap: 20px;
            padding-bottom: 20px;
            border-bottom: 1px solid var(--mono_line);
        }
        .EDIT_title {
            min-width: 10%;
        }
        .title_vox {
            border: 1px solid var(--mono_line);
            padding-right: 10px;
            display: flex;
            align-items: center;
            height: 40px;
        }
        .title_vox > span {
            display: block;
            height: 100%;
            border-left: 1px solid var(--mono_line);
            /* height: 40px; */
            line-height: 40px;
            padding-left: 10px;
            font-weight: 600;
        }
        .border_none1 {
            border:none;
        }
        .padding_none {
            padding-bottom:0px;!important
        }
        .visible_hidden {
            visibility:hidden;
        }
        .element {
            padding-bottom:20px;
            border-bottom: 1px solid var(--mono_line);
        }
        .product_detail_btn {
            width: 100%;
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding-top:20px;
        }
        .smart_deitor{
            width: 100%;
            min-height: 400px;
            border: 1px solid var(--mono_line)
        }
        .flex_start {
            align-items:flex-start;
        }
        .pro_price {
            display: flex;
            width: 80%;
            align-items: center;
        }
        .pro_price_wrap {
            min-width: 15%;
        }
        .pro_price_wrap > span:first-child {
            font-weight:500;
        }
        .code {
            display: flex;
            width: 100%;
            align-items: center;
            gap: 0px 10px;
        }
        .code_wrap  {
            min-width: 15%;
            color: var(--mono_dea);
        }
        .bottom_btn {
            justify-content: center;
            padding-top: 20px;
        }
        .bottom_btn > div:last-child {
            padding: 6px 40px !important;
        }
        /*미리보기*/
         .pc_Template_Modal_Area {
            position: fixed;
            z-index: 99;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            display: none;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 100%;
            height: 100%;
            background: #23232333;
        }
        .pc_Template_Modal {
            width: 1200px;
            height: 500px;
            background: #ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 10px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            overflow:auto;
        }
        .pc_Modal_Top_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0px 0px 10px 0px;
        }
        .pc_Template_Modal_Close {
            cursor:pointer;
        }
        .preview_Default_Img_Area {
            width:1300px;
        }
        .detail_wrap_inner {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            width:1300px;
        }
        .detail_box {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 15px 20px;
            border: 1px solid #E1E1E1;
            /*cursor: pointer;*/
        }
        .detail_box_child {
            background-color: #115c5e;
            color: white;
        }
        .mb_active {
            border-bottom: 2px solid var(--main_color);
        }
        
        .preview_Contents_Area {
            width:1300px;
        }
        .mb_preview_Contents_Area {
            width:425px;
        }
        .font_weight_700 {
            font-weight:700;
        }
        .pc_Template_Modal_Title {
            padding:10px 0px;
        }
        /*pc컨텐츠*/
        .deli {
            margin-top: 30px;
            padding: 22px;
            border: 1px solid #E1E1E1;
        }
        .pc_product_contents_here {
            width:1300px;
            padding: 0 150px;
        }
        img.image_for_class {
            width: 100%;
            height: 100%;
            object-fit: fill;
        }
        .find-option-stock{
            margin-bottom:5px;
        }
        /*모바일 미리보기*/
        .mb_Template_Modal_Area {
            position: fixed;
            z-index: 99;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            display: none;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 100%;
            height: 100%;
            background: #23232333;
        }
        .mb_Template_Modal {
            width: 465px;
            height: 500px;
            background: #ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 10px;
            position: absolute;
            top: 42%;
            left: 50%;
            transform: translate(-50%, -50%);
            overflow:auto;
        }
        .mb_Modal_Top_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0px 0px 10px 0px;
        }
        .mb_Template_Modal_Close {
            cursor:pointer;
        }
        .mb_preview_Default_Img_Area {
            width:425px;
        }
        .menu_wrap {
            display: grid;
            grid-template-columns: repeat(4,1fr);
            text-align: center;
        }
        .menu_wrap > li {
            color:var(--mono_sub);
        }
        .mb_exchange_contents_here {
            overflow: overlay;
        }
        .disableColor {
            color: var(--mono_sub);
            background-color: var(--mono_line);
        }
        /*대표이미지*/
        .img_wrap_inner {
            display: flex;
        }
        .EDIT_title {
            width: 15%;
        }
        .red {
            color: var(--drkid_Negative);
        }
        .img_grid {
            display: grid;
            grid-template-columns: repeat(5,1fr);
            gap: 15px;
        }
        .img_grid_box {
            width: 140px;
            height: 140px;
            border: 1px solid var(--mono_line);
            text-align: center;
            position: relative;
        }
        .target-clicker {
            width: 100%;
            height: 100%;
            cursor: pointer;
        }
        .img_grid_box .plusicons {
            line-height: 140px;
            font-size: 35px;
            color: #e2e2e2;
        }
        #referral_InputGuide_Txt {
            display:none;
        }
        .product_name_sub_wrap_title_custom {
            display: flex;
            align-items: center;
            gap: 20px;
            padding-bottom: 0px;
            border-bottom: none;
        }
        .refferral_Guide {
             border-bottom: 1px solid var(--mono_line);
             padding:10px 0px;
             display:flex;
             gap: 0px 5px;
        }
        /*상품선택 팝업*/
        .max-height-overflow{
            height: 200px;
        }
        .table-wraper {
                border-bottom: 1px solid #e2e2e2;
                border-right: 1px solid #e2e2e2;
                border-left: 1px solid #e2e2e2;
        }
        th > .drkid-checkbox{
            position: relative;
            min-height: var(--drkid-big-font);
            padding-left: var(--drkid-big-font);
            line-height: var(--drkid-big-font);
            cursor: pointer;
        }
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
        .coupon_make{
            width:50%;
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
        .flex_wrap{
            display:flex;
            flex-wrap: wrap;
        } 
        /*미디어쿼리*/
        /*pc미리보기 미디어쿼리*/
         @media screen and (min-width: 1450px) {
            .pc_Template_Modal {
                width: 1360px;
                height: 720px;
            }
        }
    </style>
    <script src="/smarteditor2.3.10/js/HuskyEZCreator.js" charset="utf-8"></script>
    <script>
        function formatPay(input) {
            var Number = input.replace(/[^0-9%MAX]/g, ''); // 숫자 이외의 문자 제거
            var formattedNumber = '';
            formattedNumber = Number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            return formattedNumber;
        }

        //스마트 에디터 관련
        function clickHideFileInput(id) {
            $('#' + id).click();
        }
        function UpdateUploadButton1() {
            //업로드를 업로드 시켜 Callback을 타게함.
            //이때 Process bar 넣어서 로딩 처리
            uploader1.Upload();
        }
        function UpdateUploadButton2() {
            uploader2.Upload();
        }
        function Uploader_OnFilesUploadComplete1(args) {
            UpdateUploadButton1();
        }
        function Uploader_OnFilesUploadComplete2(args) {
            UpdateUploadButton2();
        }
        function Uploader_OnFileUploadComplete1(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    oEditors.getById["smarteditor1"].exec("PASTE_HTML", [JsonData["imgSrc"]]);
                } else {
                    alert(JsonData['message']);
                }
            }
        }
        function Uploader_OnFileUploadComplete2(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    //_NowTarget
                    var _html = `<div class="hidden-data" style="display:none;">
                                    <input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/>
                                    <input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/>
                                    <input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/>
                                    <input type='hidden' name='image_upload_sid' value='-1'/>
                                    <input type='hidden' name='image_upload_useble' value='Y'/>
                                    <input type='hidden' name='image_upload_type' value='${_NowTarget}'/>
                                </div>`;
                    var _xbtn = $(`<div class="xbtn-wraper" style="
                    position: absolute;
                    top: 5px;
                    right: 5px;
                    cursor: pointer;
                    z-index:100;
                    ">
                        <span class="material-icons lowerst-font">close</span>
                    </div>`);
                    var html = $(_html);
                    _xbtn.on('click', function (e) {
                        $(e.currentTarget).parent().find('.target-clicker').html(`<span class="material-icons plusicons">add</span>`);
                        $(e.currentTarget).remove();
                    });
                    if (_NowTarget == "MAIN_IMAGE") {
                        $(`.${_NowTarget}`).html(html);
                    $(`.${_NowTarget}`).append($(JsonData["imgSrc"]));
                $(`.${_NowTarget}`).parent().append(_xbtn);
        } 
        else {
            let bools = false;
            let _count = 0;
            $(`.${_NowTarget}`).each(function (index, item) {
                if ($(item).find('img').length == 0 && bools == false) {
                    $(item).html(html);
                    $(item).append($(JsonData["imgSrc"]));
                    $(item).parent().append(_xbtn);
                    bools = true;
                }
                if ($(item).find('img').length != 0) {
                    _count++;
                }
            });
            $('.image-lenght-span').html(_count);
            }
        } else {
            //에러가 날경우 alert 처리
            alert(JsonData['message']);
          }
            }
        }
        //셀럽상품 등록을 위해 묶은 상품(MASTER OR OPTION)들의 상품가 OR 판매가의 총 합
        function get_SeloveProduct_Late(){
            var totalRate = 0;
            var rate = 0;
            //상품가 계산
            $('.drkid-input.input-lowheight.prodRate').each(function (index, item) {
                rate = $(this).text();
                if (/,/.test(rate)) {
                    rate = rate.replace(/,/g,"");
                    rate = rate * 1;
                }
                totalRate = totalRate + rate;
                console.log( $(this).text())
            });
            $("#selove_ProdRate").text(totalRate.toLocaleString());

            // 총 BV값을 구한 뒤 리퍼럴 전환율을 통해 전체 상품가 - (BV - 리퍼럴 전환율%)
            var total_bv = 0; 
            var _bv = 0;
            var referral_per = $('input[name="REFERRAL_PER"]').val() * 1;   
            var referral_rate;
            $('input[name="CHOICE_PRODUCT_BV"][type="hidden"]').each(function (index, item) {
                _bv = $(this).val() * 1;
                if (/,/.test(_bv)) {
                    _bv = rate.replace(/,/g,"");
                    _bv = rate * 1;
                }
                total_bv = total_bv + _bv;
            });
            var selove_ProdRate = $("#selove_ProdRate").text();
            if (/,/.test(selove_ProdRate)) {
                selove_ProdRate = selove_ProdRate.replace(/,/g,"");
                selove_ProdRate = selove_ProdRate * 1;
            }
            if(referral_per > 0 && selove_ProdRate > 0 ){
                var referral_discount_rate = (total_bv * referral_per) / 100;
                console.log("total_bv:",total_bv)
                console.log("referral_discount_rate:",referral_discount_rate)
                var referral_view_sale_rate = selove_ProdRate -referral_discount_rate;
                console.log("referral_view_sale_rate:",referral_view_sale_rate)
                $('input[name="SELOVE_PROD_SALE_RATE"]').val(referral_view_sale_rate.toLocaleString());
            }
           

            

        }
        var oEditors = [];
        var _NowTarget;
        $(document).ready(function () {
            // 공통 메뉴
            var product = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(1)");
            var coupon = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(2)");
            var review = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(3)");
            var help = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(4)");

            product.addEventListener("click", function () {
                location.href = "/Source/client/my/C_MY_ORDERLIST.aspx"
            });
            coupon.addEventListener("click", function () {
                location.href = "/Source/client/my/C_MY_CUPONLIST.aspx"
            });
            review.addEventListener("click", function () {
                location.href = "/Source/client/my/C_MY_REVIEWLIST.aspx"
            });
            help.addEventListener("click", function () {
                location.href = "/Source/client/my/C_MY_HELPDESKLIST.aspx"
            });
            $("#mypage_Btn").click(function () {
                location.href = "/Source/client/my/C_MY_MYPAGEMAIN.aspx";
            });
            //주문내역 바로가기
            $(".show_Order_List_Btn").click(function () {
                location.href = "/Source/client/my/C_MY_ORDERLIST.aspx";
            });
            //레프트메뉴 클릭 시 해당하는 페이지 이동
            $(".KeyDni_Info,.KeyDni_Info_Clicked,.title_Info_Count_Area").click(function () {
                var page = $(this).attr("id");
                if (page != '' && page != null) {
                    var page_type = page.split("_")[1]; //폴더가 CS인지 MY인지 추출
                    location.href = "/Source/client/" + page_type + "/" + page + ".aspx";
                }
                else {
                    _popModal.Alert('', '준비중입니다.');
                }
            });
            //주문내역 디테일 페이지 이동
            $(".new_Order_List_Row_1_Area").click(function () {
                location.href = "/Source/client/my/C_MY_ORDERDETAIL.aspx";
            });
            function smartEditorIFrame() {
                nhn.husky.EZCreator.createInIFrame({
                    oAppRef: oEditors,
                    elPlaceHolder: "smarteditor1",
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
            //PC 미리보기
            $("#PREVIEW_PC").on('click', function () {
                oEditors.getById["smarteditor1"].exec("UPDATE_CONTENTS_FIELD", []);
                //내용에 아무것도 안적으면 alert 출력
                if ($.trim($("#smarteditor1").val()) == "<p>&nbsp;</p>") {
                    _popModal.Alert('', '내용을 입력해주세요.');
                    return false;
                }
                $(".pc_Template_Modal_Area").show();
                $(".detail_box").removeClass('detail_box_child');
                $("#detail1").addClass('detail_box_child');
                var _template = $("#PC_PRODUCT_CONTENTS").html();
                $('.pc_contents_here').empty();
                //미리보기 컨텐츠 영역에  컨텐츠 템플릿 삽입
                $('.pc_contents_here').append(_template);
                // 컨텐츠에 사용자가 스마트에디터에 입력시킨 템플릿 불러와서 출력
                oEditors.getById["smarteditor1"].exec("UPDATE_CONTENTS_FIELD", []);
                $(".pc_product_contents_here").empty();
                $(".pc_product_contents_here").append($.trim($("#smarteditor1").val()));
            });
            //배송안내 미리보기 닫기
            $(".pc_Template_Modal_Close").on('click', function () {
                $(".pc_Template_Modal_Area").hide();
            });
            //모바일 미리보기
            $("#PREVIEW_MOBILE").on('click', function () {
                oEditors.getById["smarteditor1"].exec("UPDATE_CONTENTS_FIELD", []);
                //내용에 아무것도 안적으면 alert 출력
                if ($.trim($("#smarteditor1").val()) == "<p>&nbsp;</p>") {
                    _popModal.Alert('', '내용을 입력해주세요.');
                    return false;
                }
                $(".mb_Template_Modal_Area").show();
                $(".click_menu").removeClass('mb_active');
                $("#click_menu1").addClass('mb_active');
                var _template = $("#MB_PRODUCT_CONTENTS").html();
                $('.mb_contents_here').empty();
                //미리보기 컨텐츠 영역에 배송안내 컨텐츠 템플릿 삽입
                $('.mb_contents_here').append(_template);
                // 컨텐츠에 사용자가 스마트에디터에 입력시킨 템플릿 불러와서 출력
                oEditors.getById["smarteditor1"].exec("UPDATE_CONTENTS_FIELD", []);
                $(".mb_product_contents_here").empty();
                $(".mb_product_contents_here").append($.trim($("#smarteditor1").val()));
            });
            //모바일 미리보기 닫기 버튼
            $(".mb_Template_Modal_Close").on('click', function () {
                $(".mb_Template_Modal_Area").hide();
            });
            //셀럽# 상품등록 버튼
            $("#save_Selove_Prod1,#save_Selove_Prod2").on('click', function () {
                $('#flag').val('save');
                $('#form1').submit();
            });
            //상품 대표이미지 업로드
            $('.target-clicker').on('click', function (e) {
                let _TargetType = $(e.currentTarget).data('type');
                _NowTarget = _TargetType;
                console.log($(e.currentTarget).children().length)
                if($(e.currentTarget).children().length > 1)
                {
                    _popModal.Alert('알림', '이미 대표이미지가 등록되었습니다.');
                }
                else{
                    $('#uploader2_TextBox0_Input').click();
                }
                
            })
            $('#find-pop').on('click', function (e) {
            //    console.log("팝업");
            //    openPopPromise(e.currentTarget, 1).then((data) => {
            //        console.log(data);
            //    let total_count = data.length;
            //    let html,html1;
                
            //    for (var i = 0; i < total_count; i++) {
            //        let _Sid = data[i].JsonData.CODE_SID; 
            //        let _useProduct = $(`[data-sub-tr="${_Sid}"]`);
            //        if(_useProduct.length == 0){
            //            html = $("#PRODUCT_TABLE_TEMPLATE").html();
            //            var category_count=(data[i].JsonData.CATEGORY_NAME).split(',').length;
            //            console.log(category_count);
            //            html = html.replace(/{PRODUCT_COUNT}/g, total_count - i);
            //            html = html.replace(/{PRODUCT_SID}/g, data[i].JsonData.CODE_SID);
            //            html = html.replace(/{PRODUCT_CD}/g, data[i].JsonData.CODE_CODE);
            //            html = html.replace(/{PRODUCT_NM}/g, data[i].JsonData.CODE_NAME);
            //            for (var j = 0; j < category_count; j++) {
            //                // 카테고리 개수만큼 카운트가 0일때마다 초기화 
            //                if(j==0){
            //                    html1 = ""; 
            //                }
            //                var temp = ('<div class="drkid-input lowerst-font ">{category_name'+j+'}</div><input type="hidden" name="category_name" value="{category_name'+j+'}" />');
            //                html1 += (temp.replace("{category_name"+j+"}",(data[i].JsonData.CATEGORY_NAME).split(',')[j]).replace("{category_name"+j+"}",(data[i].JsonData.CATEGORY_NAME).split(',')[j]));
            //            }
            //            html = html.replace(/{CATEGORY_NAME}/g,html1);
            //            // 가격 천단위 콤마(,)표시
            //            var sale_rate = formatPay(data[i].JsonData.VIEW_SALE_RATE.toString())
            //            html = html.replace(/{VIEW_SALE_RATE}/g, sale_rate);
            //            html = html.replace(/{VIEW_FLAG}/g, data[i].JsonData.VIEW_FLAG == 'Y' ? "전시중" : "전시중단" );
            //            $("#bigM").append(html);
            //        }
            //        $("#content_product_count").text(total_count+" 개");
            //    }
            //    $("#bigM").empty();

            //}).catch((err) => {
            //    console.log(err);
                //      });

             //2차
                $('#find-pop').on('click', function (e) {
                    console.log("팝업");
                    openPopPromise(e.currentTarget, 1).then((data) => {
                        console.log(JSON.stringify(data));
                    let total_count = data.length;
                    let html,html1;
                    var sale_rate;
                    var bv_rate;
                    var mater_count = 0;
                    //PRODUCT_COUNT,PRODUCT_CD,PRODUCT_NM,VIEW_SALE_RATE,VIEW_FLAG
                    for (var i = 0; i < total_count; i++) {
                        let _Sid = data[i].JsonData.CODE_SID; 
                        let _useProduct = $(`[data-sub-tr="${_Sid}"]`);
                        if(_useProduct.length == 0){
                            if(data[i].JsonData.PRODUCT_TYPE == "MASTER"){
                                mater_count++
                            }
                            html = $("#PRODUCT_TABLE_TEMPLATE").html();
                            html = html.replace(/{PRODUCT_COUNT}/g, mater_count);
                            html = html.replace(/{PRODUCT_SID}/g, data[i].JsonData.PRODUCT_SID);
                            html = html.replace(/{PRODUCT_CD}/g, data[i].JsonData.PRODUCT_CD);
                            html = html.replace(/{PRODUCT_NM}/g, data[i].JsonData.PRODUCT_NM);
                            if(data[i].JsonData.VIEW_SALE_FLAG == "Y"){
                                sale_rate = formatPay(data[i].JsonData.VIEW_SALE_RATE.toString())
                            }
                            if(data[i].JsonData.VIEW_SALE_FLAG == "N"){
                                sale_rate = formatPay(data[i].JsonData.SALE_RATE.toString())
                            }
                            html = html.replace(/{VIEW_FLAG}/g, data[i].JsonData.VIEW_FLAG == 'Y' ? "전시중" : "전시중단" );
                            // 가격 천단위 콤마(,)표시
                            
                            //HJH BV 계산을 위해 추가 시작
                            bv_rate = data[i].JsonData.BV_RATE.toString();
                            html = html.replace(/{PRODUCT_BV_RATE}/g, bv_rate);
                            //HJH BV 계산을 위해 추가 끝
                            html = html.replace(/{VIEW_SALE_RATE}/g, sale_rate);
                            $("#bigM").append(html);
                        }
                        $("#content_product_count").text(total_count+" 개");
                    }
                    get_SeloveProduct_Late();

                }).catch((err) => {
                    console.log(err);
            });
        });

           });
            //리퍼럴 전환율 밸리데이션 처리 
          $('input[name="REFERRAL_PER"]').on('input', function() {
              var inputValue = $(this).val();
              inputValue = inputValue.replace(/[^-?\d]/g, '');
              $(this).val(inputValue);
              if ($('input[name="REFERRAL_PER"]').val() > <%=SELOVE_REFERRAL%>) {
                    $(this).val(0);
                     $('input[name="SELOVE_PROD_SALE_RATE"]').val('');
                    $("#referral_InputGuide_Txt").show();
                }
               else{
                    $("#referral_InputGuide_Txt").hide();
                    get_SeloveProduct_Late();// 리퍼럴 전환율에 따른 상품 할인가 계산
                 }
              var user_Referaal = <%=SELOVE_REFERRAL%> - ($('input[name="REFERRAL_PER"]').val() * 1);
              $("#USER_REFERRAL").text(user_Referaal);
            });

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="hidden-field">

       <%-- <input type="hidden" name="CHOICE_PRODUCT_SID"  value="1001773" /> 
        <input type="hidden" name="CHOICE_PRODUCT_SID"  value="1001774" /> --%>
        <input type="text" name="flag" id="flag" value="" />
    </div>
     <div id="sub_content">
        <div class="sub_layout">
            <div id="content">
                <div class="main_Box">
                    <div class="title_Bar_Wrap">
                        <%--공통0728--%>
                        <%--타이틀--%>
                        <div class="title_Bar_Area">
                            <div class="title_Bar">
                                <div class="title_Bar_Top">
                                    <div class="title_Bar_Top_Profile_L">
                                        <span class="material-icons-outlined" id="sentiment_Icon">sentiment_satisfied_alt</span>
                                    </div>
                                    <div class="title_Bar_Top_Profile_R">
                                        <div class="middle-font main_color Profile_R_Info1">DrKeyDni <span class="lowerst-font">님</span></div>
                                        <div class="lower-font mono_sub_color Profile_R_Info2">디렉터 인플루언서</div>
                                    </div>
                                </div>
                                <div class="title_Bar_Bottom">
                                    <div class="lower-font title_Bar_Bottom_Info1">직팔로워 <span class="lower-font title_Bar_Bottom_Info2">12</span></div>
                                    <div class="lower-font title_Bar_Bottom_Info3">연계팔로워 <span class="lower-font title_Bar_Bottom_Info4">53</span></div>
                                </div>
                            </div>
                        </div>

                        <div class="title_Info_Bar_Area">
                            <%--주문/배송--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">redeem</span>
                                        </div>
                                        <div class="title_Info lower-font">주문/배송</div>
                                        <div class="title_Info_Count_Area" id="">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           <%--MY쿠폰--%>  <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">confirmation_number</span>
                                        </div>
                                        <div class="title_Info lower-font">MY쿠폰</div>
                                        <div class="title_Info_Count_Area" id="C_MY_CUPONLIST">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--리뷰--%> <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">drive_file_rename_outline</span>
                                        </div>
                                        <div class="title_Info lower-font">리뷰</div>
                                        <div class="title_Info_Count_Area" id="C_MY_REVIEWLIST">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--진행중 문의--%> <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">support_agent</span>
                                        </div>
                                        <div class="title_Info lower-font">진행중 문의</div>
                                        <div class="title_Info_Count_Area" id="">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--전체 하단 영역--%>
                    <div class="all_Bottom_Area">
                        <%--My KeyDni--%>
                        <div class="KeyDni_Wrap">
                            <%--공통 0728--%>
                            <div class="KeyDni_Area">
                                <div class="KeyDni_Top_Title_Area">
                                    <div class="KeyDni_Top_Title" id="mypage_Btn">My KeyDni</div>
                                </div>
                                <%--My 셀럽#--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">My 셀럽#</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info_Clicked lower-font" id="C_MY_CELEBRITY_EDIT">셀럽# 상품등록</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_CELEBRITY_LIST">셀럽# 상품목록</div>
                                    </div>
                                </div>
                                <%--쇼핑정보--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">쇼핑정보</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_ORDERLIST">주문/배송조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_DELIVERY">배송지 관리</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_CANSLEPRODUCT">취소/반품/교환 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REFUNDPRODUCT">환불/입금 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REWARD">리워드 현황</div>
                                    </div>
                                </div>
                                <%--고객센터--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">고객센터</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_HELPDESKLIST">나의 1:1 문의</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_ITEMDESKLIST">나의 상품 문의</div>
                                        <div class="KeyDni_Info lower-font" id="C_CS_QUESTIONLIST">자주 하는 질문</div>
                                        <div class="KeyDni_Info lower-font" id="C_CS_NOTICELIST">공지사항</div>
                                    </div>
                                </div>
                                <%--회원정보--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">회원정보</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_MODIFYINFO">회원정보 수정</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_MEMBERDEPARTURE">회원 탈퇴</div>
                                        <div class="KeyDni_Info lower-font logout_Btn">로그아웃</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--셀럽 상품 등록 영역--%>
                        <div class="CeleBrity">
                            <div class="CeleBrity_Wrap">
                                <div class="CeleBrity_Wrap_Inner">
                                    <div class="progress_Order_Title_Area">
                                        <div class="progress_Order_Title KeyDni_Top_Title">셀럽# 상품등록</div>
                                    </div>
                                    <%--상품등록 텍스트--%>
                                    <div class="CeleBrity_Edit_Txt lowerst-font">
                                        <span>
                                            셀럽#에서는 기존 닥터키드니에 등록되어있는 상품을 조합하여 셀러브리티 등급회원이 셀럽#에 상품등록을 할 수 있습니다. <br />
                                            셀럽# 상품은 구매한 사람 기준이 아닌, 셀럽# 상품을 등록한 셀러브리티 회원에게 리퍼럴이 지급됩니다.
                                        </span>
                                    </div>
                                    <%--상품 등록 삭제 버튼--%>
                                    <div class="CeleBrity_Btn">
                                        <div class="drkid-btn-sub2 Edit_Btn" id="save_Selove_Prod1">
                                            <span>셀럽# 상품등록</span>
                                        </div>
                                        <div class="drkid-btn-sub2 Delete_Btn">
                                            <span>삭제하기</span>
                                        </div>
                                    </div>
                                    <%--상품명--%>
                                    <div class="CeleBrity_Product">
                                        <div class="CeleBrity_Product_Wrap">
                                            <div class="CeleBrity_Product_title middle-font">
                                                <span>상품명</span>
                                            </div>
                                            <%--각 카테고리 별 컨텐츠--%>
                                            <div class="CeleBrity_Product_Content">
                                                <div class="CeleBrity_Title_Wrap">
                                                    <div class="CeleBrity_Product_Content_title">
                                                        <span class="drkid_Negative_color">*</span>
                                                        <span>상품명</span>
                                                    </div>
                                                    <div class="box">
                                                        <div class="option_title_input">
                                                            <input class="drkid-input drkid-input_box lowerst-font importantInput" data-title="상품명" type="text" name="PRODUCT_NM" value="" maxlength="200" />
                                                            <span class="main_color">0</span>
                                                            <span>/200</span>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="CeleBrity_Title_Wrap padding-top">
                                                    <div class="CeleBrity_Product_Content_title">
                                                        <span class="drkid_Negative_color">*</span>
                                                        <span>상품코드</span>
                                                    </div>
                                                    <div class="box">
                                                        <div class="option_title_input border_none">
                                                            <div class="code">
                                                                <div class="code_wrap lowerst-font">
                                                                   <%-- <span>E5839204958</span>--%>
                                                                    <input type="text" class="drkid-input lowerst-font input-searchheight disableColor" value="" name="PRODUCT_CD" maxlength="50" placeholder="상품코드" readonly="readonly" />
                                                                </div>
                                                                <span class="lowerst-font drkid_Negative_color">상품 코드는 자동생성됩니다. 자동 생성 후 수정 불가합니다.</span>
                                                            </div>                                                     
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--상품 선택--%>
                                    <div class="CeleBrity_Product">
                                        <div class="CeleBrity_Product_Wrap">
                                            <div class="CeleBrity_Product_title middle-font">
                                                <span>상품 선택</span>
                                            </div>
                                            <%--각 카테고리 별 컨텐츠--%>
                                            <div class="CeleBrity_Product_Content">
                                                <div class="CeleBrity_Title_Wrap flex_wrap">
                                                    <div class="CeleBrity_Choice_Btn" id="find-pop" data-class-code="SELOVE_PRODUCT" data-title="상품 조회"  data-target="COMMON_POPUP_2">
                                                        <span>상품 선택</span>
                                                    </div>
                                                    <div class="table-wraper max-height-overflow">
                                                        <table class="table-common">
                                                            <colgroup>
                                                                <col style="width: 4%;" />
                                                                <col style="width: 4%;" />
                                                                <col style="width: 21%;" />
                                                                <col style="width: 40%;" />
                                                                <col style="width: 16%;" />
                                                                <col style="width: 13%;" />
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
                                                                    <th class="lower-font">판매가</th>
                                                                    <th class="lower-font">전시상태</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="bigM">
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--상품가--%>
                                    <div class="CeleBrity_Product">
                                        <div class="CeleBrity_Product_Wrap">
                                            <div class="CeleBrity_Product_title middle-font">
                                                <span>상품가</span>
                                            </div>
                                            <%--각 카테고리 별 컨텐츠--%>
                                            <div class="CeleBrity_Product_Content">
                                                <div class="CeleBrity_Title_Wrap">
                                                    <div class="CeleBrity_Product_Content_title">
                                                        <span class="drkid_Negative_color">*</span>
                                                        <span>상품가</span>
                                                    </div>
                                                    <%--상품가에 대한 가격--%>
                                                    <div class="pro_price">
                                                        <div class="pro_price_wrap">
                                                            <span class="middle-font main_color" id="selove_ProdRate">0</span>
                                                            <span class="lowerst-font">원</span>
                                                        </div>
                                                        <span class="drkid_Negative_color lowerst-font">상품가는 선택한 상품들의 상품가를 자동 합계하여 보여집니다.</span>
                                                    </div>
                                                </div>
                                            

                                                <div class="CeleBrity_Title_Wrap padding-top baseline">
                                                    <div class="CeleBrity_Product_Content_title">
                                                        <span class="drkid_Negative_color">*</span>
                                                        <span>상품 할인</span>
                                                    </div>
                                                    <div class="box">
                                                        <%--상품가 라디오 박스--%>
                                                        <div class="radio_wrap">
                                                            <label class="drkid-radio">
                                                                <input type="radio" name="REFFERRAL_FLAG" value="Y" <%=REFFERRAL_FLAG == "" || REFFERRAL_FLAG == "Y"? "checked=\"checked\"":"" %>/>
                                                                <span class="lowerst-font">사용</span>
                                                            </label>
                                                            <label class="drkid-radio">
                                                                <input type="radio" name="REFFERRAL_FLAG" value="N" <%=REFFERRAL_FLAG == "N"? "checked=\"checked\"":"" %>/>
                                                                <span class="lowerst-font">사용안함</span>
                                                            </label>
                                                        </div>
                                                        <%--상품가 라디오 박스 텍스트--%>
                                                        <div class="padding-top line1">
                                                            <span class="drkid_Negative_color lowerst-font">
                                                                상품 할인은 나의 PV를 이용해 할인을 적용할 수 있습니다. <br />
                                                                셀러브리티의 리퍼럴 전환율은 <%=SELOVE_REFERRAL%>%입니다. 리퍼럴 전환율을 낮추어 낮춘% PV만큼의 셀럽# 상품 할인이 적용 됩니다.
                                                            </span>
                                                        </div>
                                                        <%--상품가 리퍼벌--%>
                                                        <div class="product_name_sub_wrap_title padding-top product_name_sub_wrap_title_custom">
                                                            <div class="EDIT_title">
                                                                <span class="lowerst-font">리퍼럴 전환율</span>
                                                            </div>
                                                            <div class="title_vox">
                                                                <input class="drkid-input drkid-input_box border_none1" type="text" name="REFERRAL_PER" value="<%=REFFERRAL_PER %>" maxlength="2" />
                                                                <span>%</span>
                                                            </div>
                                                            <div class="lowerst-font drkid_Negative_color" id="referral_InputGuide_Txt">* 셀러브리티 리퍼럴 전환율보다 높게 입력할 수 없습니다</div>
                                                        </div>
                                                        <%--리퍼럴 안내 텍스트--%>
                                                        <div class="refferral_Guide">
                                                            <div class="lowerst-font refferral_GuideTxt">회원님의 리퍼럴 전환율은</div>
                                                            <div class="lowerst-font refferral_GuideTxt main_color"id="USER_REFERRAL"><%=SELOVE_REFERRAL%></div>
                                                            <div class="lowerst-font refferral_GuideTxt">% 입니다.</div>
                                                        </div>


                                                        <%--상품가 할인가--%>
                                                        <div class="product_name_sub_wrap_title padding-top border_none1 padding_none">
                                                            <div class="EDIT_title">
                                                                <span class="lowerst-font">상품 할인가</span>
                                                            </div>
                                                            <div class="title_vox">
                                                                <input class="drkid-input drkid-input_box border_none1  input-searchheight disableColor" type="text" name="SELOVE_PROD_SALE_RATE" value="" readonly="true" />
                                                                <span>원</span>
                                                            </div>
                                                        </div>
                                                        <%--상품가 할인적용--%>
                                                      <%--  <div class="product_name_sub_wrap_title padding-top border_none1 padding_none">
                                                            <div class="EDIT_title"></div>
                                                            <div class="product_name_sub_wrap_title_per">
                                                                <span class="main_color lowerst-font">15%할인 적용</span>
                                                            </div>
                                                        </div>--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--전시선택--%>
                                    <div class="CeleBrity_Product">
                                        <div class="CeleBrity_Product_Wrap">
                                            <div class="CeleBrity_Product_title middle-font">
                                                <span>전시 선택</span>
                                            </div>
                                            <%--각 카테고리 별 컨텐츠--%>
                                            <div class="CeleBrity_Product_Content">
                                                <div class="CeleBrity_Title_Wrap baseline">
                                                    <div class="CeleBrity_Product_Content_title">
                                                        <span class="drkid_Negative_color visible_hidden">*</span>
                                                        <span>커뮤니티 상품 광고 등록</span>
                                                    </div>
                                                    <div class="box">
                                                        <%--커뮤니티 상품 광고 등록 라디오 박스--%>
                                                        <div class="radio_wrap">
                                                            <label class="drkid-radio">
                                                                <input type="radio" name="EL_P_PRICE" value="Y"/>
                                                                <span class="lowerst-font">사용</span>
                                                            </label>
                                                            <label class="drkid-radio">
                                                                <input type="radio" name="EL_P_PRICE" value="N"/>
                                                                <span class="lowerst-font">사용안함</span>
                                                            </label>
                                                        </div>
                                                        <%--커뮤니티 상품 광고 등 박스 텍스트--%>
                                                        <div class="padding-top line1 element">
                                                            <span class="drkid_Negative_color lowerst-font">
                                                                닥터키드니 커뮤니티에 셀럽# 상품 광고로 등록됩니다.<br />
                                                                광고는 전체 셀러브리티 회원들의 상품중 할인율이 높을수록 우선순위로 노출됩니다.
                                                            </span>
                                                        </div>                                                  
                                                    </div>
                                                </div>
                                                <div class="CeleBrity_Title_Wrap padding-top baseline">
                                                    <div class="CeleBrity_Product_Content_title">
                                                        <span class="drkid_Negative_color visible_hidden">*</span>
                                                        <span>나의 미니홈 상품 등록</span>
                                                    </div>
                                                    <div class="box">
                                                        <%--나의 미니홈 상품 등록--%>
                                                        <div class="radio_wrap">
                                                            <label class="drkid-radio">
                                                                <input type="radio" name="EL_E_PRICE" value="Y"/>
                                                                <span class="lowerst-font">사용</span>
                                                            </label>
                                                            <label class="drkid-radio">
                                                                <input type="radio" name="EL_E_PRICE" value="N"/>
                                                                <span class="lowerst-font">사용안함</span>
                                                            </label>
                                                        </div>                                                
                                                    </div>
                                                </div>
                                            </div>
                                            </div>
                                        </div>
                                        <%--상품 대표이미지 설정--%>
                                        <div class="CeleBrity_Product">
                                            <div class="CeleBrity_Product_Wrap">
                                                <div class="CeleBrity_Product_title middle-font">
                                                    <span>상품 대표이미지 설정</span>
                                                </div>
                                                <div class="CeleBrity_Product_Content">
                                                    <div class="product_name_sub_wrap">
                                                        <div class="img_wrap_inner">
                                                            <div class="EDIT_title">
                                                                <span class="red">*</span>
                                                                <span>대표이미지</span>
                                                            </div>
                                                            <div class="img_up_wrap">
                                                                <%--이미지 업로드 박스--%>
                                                                <div class="img_grid">
                                                                    <%--이미지 박스--%>
                                                                    <%--DB 메인 IMG--%>
                                                                    <div class="img_grid_box">
                                                                        <div class="target-clicker MAIN_IMAGE" data-type="MAIN_IMAGE">
                                                                            <span class="material-icons plusicons">add</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="img_wrap_inner img_padding_line">
                                                            <div class="EDIT_title">
                                                                <%--<span class="red">*</span>
                                                                    <span>대표이미지</span>--%>
                                                            </div>
                                                            <div class="img_title">
                                                                <p class="lowerst-font drkid_Negative_color">
                                                                    권장 크기 : 1000 x 1000<br />
                                                                    jpg, png, gif / 최대 2MB 이하 파일만 등록 가능
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--상세 설명--%>
                                    <div class="CeleBrity_Product">
                                        <div class="CeleBrity_Product_Wrap">
                                            <div class="CeleBrity_Product_title middle-font">
                                                <span>상세설명</span>
                                            </div>
                                            <%--각 카테고리 별 컨텐츠--%>
                                            <div class="CeleBrity_Product_Content">
                                                <div class="CeleBrity_Title_Wrap flex_start">
                                                    <div class="CeleBrity_Product_Content_title">
                                                        <span class="drkid_Negative_color visible_hidden">*</span>
                                                        <span>상품 상세설명</span>
                                                    </div>
                                                    <%--스마트 에디터 들어올 자리--%>
                                                    <div class="smart_deitor">
                                                        <textarea class="lower-font" name="PRODUCT_DETAIL_INFO" id="smarteditor1" style="width: 100%;"></textarea>
                                                    </div>
                                                                      
                                                </div>
                                                <div class="CeleBrity_Title_Wrap">
                                                    <div class="CeleBrity_Product_Content_title"></div>
                                                     <%--상품 상세설명 버튼--%>
                                                    <div class="product_detail_btn">
                                                        <div class="drkid-btn-sub2"onclick="clickHideFileInput('uploader1_TextBox0_Input')">
                                                            <span>이미지 등록</span>
                                                        </div>
                                                        <div class="CeleBrity_Btn">
                                                            <div class="drkid-btn-sub2 Edit_Btn" id="PREVIEW_PC">
                                                                <span>PC미리보기</span>
                                                            </div>
                                                            <div class="drkid-btn-sub2 Edit_Btn"id="PREVIEW_MOBILE">
                                                                <span>모바일 미리보기</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             <%--상품 등록 삭제 버튼--%>
                                <div class="CeleBrity_Btn bottom_btn">
                                    <div class="drkid-btn-sub2 Edit_Btn"id="save_Selove_Prod2">
                                        <span>셀럽# 상품등록</span>
                                    </div>
                                    <div class="drkid-btn-sub2 Delete_Btn">
                                        <span>삭제하기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                                                                   
                </div>
            </div>
        </div>
    <div style="width:90%;display:none;">
        <%--상품상세 관련 이미지 등록--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader1" runat="server" ClientInstanceName="uploader1" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="UploadControl_FilesUploadComplete1" CssClass="input">
            <ClientSideEvents 
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete1(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete1(e); }"
                TextChanged="function(s, e) { UpdateUploadButton1(); }" />
            <ValidationSettings MaxFileSize="5242880" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>                                
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload1" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload1" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader2.Upload(); }" />
        </dx:ASPxButton>
        <%--상품 대표이미지 등록--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader2" runat="server" ClientInstanceName="uploader2" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="UploadControl_FilesUploadComplete2" CssClass="input">
            <ClientSideEvents 
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete2(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete2(e); }"
                TextChanged="function(s, e) { UpdateUploadButton2(); }" />
            <ValidationSettings MaxFileSize="5242880" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>                                
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload2" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload2" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader2.Upload(); }" />
        </dx:ASPxButton>
    </div>

    <%--pc 미리보기 모달--%>
    <div class="pc_Template_Modal_Area">
        <div class="pc_Template_Modal">
            <%--상단--%>
            <div class="pc_Modal_Top_Area">
                <div class="my_Title font_weight_700 pc_Template_Modal_Title">PC 미리보기</div>
                <div class="pc_Template_Modal_Close">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <%--디폴트 이미지 영역--%>
            <div class="preview_Default_Img_Area">
                 <img src="/Source/client/image/preview.png"  />
            </div>
            <%--바--%>
            <div class="detail_wrap_inner">
                <div class="detail_box" id="detail1"> <%--detail_box_child--%>
                    <span>상품상세정보</span>
                </div>
                <div class="detail_box" id="detail2">
                    <span>배송안내</span>
                </div>
                <div class="detail_box" id="detail3">
                    <span>교환 및 반품안내</span>
                </div>
                <div class="detail_box" id="detail4">
                    <span>상품후기(1,266)</span>
                </div>
                <div class="detail_box" id="detail5">
                    <span>상품문의(66)</span>
                </div>
            </div>
            <%--각 내용에 맞는 미리보기 컨텐츠 영역--%>
            <div class="pc_contents_here">
            </div>
        </div>
    </div>
    <%--pc 미리보기 모달--%>
    <div class="mb_Template_Modal_Area">
        <div class="mb_Template_Modal">
            <%--상단--%>
            <div class="mb_Modal_Top_Area">
                <div class="lowerst-font my_Title font_weight_700 pc_Template_Modal_Title">모바일 미리보기</div>
                <div class="mb_Template_Modal_Close">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <%--디폴트 이미지 영역--%>
            <div class="mb_preview_Default_Img_Area">
                 <img src="/Source/client/image/preview_mobile.png"/>
            </div>
            <%--바--%>
            <ul class="menu_wrap">
                <li class="lowerst-font click_menu" id="click_menu1"  >상세정보</li>
                <li class="lowerst-font click_menu" id="click_menu2"  >리뷰(120)</li>
                <li class="lowerst-font click_menu" id="click_menu3"  >상품문의</li>
                <li class="lowerst-font click_menu" id="click_menu4"  >구매정보</li>
            </ul>
            <%--각 내용에 맞는 미리보기 컨텐츠 영역--%>
            <div class="mb_contents_here">

            </div>
        </div>
    </div>
     <%--상품상세 컨텐츠- PC --%>
    <script type="text/html" id="PC_PRODUCT_CONTENTS">
        <div class="preview_Contents_Area">
            <div class="deli">
                <%--<div class="lower-font font_weight_700">교환 및 반품 안내</div>--%>
                <div class="pc_product_contents_here">

                </div>
            </div>
        </div>
    </script>
     <%--상품상세 컨텐츠- 모바일 --%>
    <script type="text/html" id="MB_PRODUCT_CONTENTS">
        <div class="mb_preview_Contents_Area">
            <div class="deli">
                <div class="mb_product_contents_here"></div>
            </div>
        </div>
    </script>
      <%--팝업 상품 리스트 테이블--%>
      <script type="text/html" id="PRODUCT_TABLE_TEMPLATE">
        <tr class="product_tr" data-sub-tr="{PRODUCT_SID}">
            <%--HJH 상품 SID, BV 추가--%>
            <input type="hidden" name="CHOICE_PRODUCT_SID"  value="{PRODUCT_SID}" /> 
            <input type="hidden" name="CHOICE_PRODUCT_BV"  value="{PRODUCT_BV_RATE}" />
            <%--체크박스--%>
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{PRODUCT_SID}" name="SUB_CHECK_BOX" />
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <%--넘버--%>
            <td class="lower-font rows_count">
                <div class="drkid-input input-lowheight">{PRODUCT_COUNT}</div>
                <input type="hidden" name="PRODUCT_COUNT" value="{PRODUCT_COUNT}" />
            </td>
            <%--상품번호--%>
            <td class="lower-font">
                <div class="drkid-input input-lowheight">{PRODUCT_CD}</div>
                <input type="hidden" name="PRODUCT_CD" value="{PRODUCT_CD}" />
            </td>
            <%--상품명--%>
            <td class="lower-font">
                <div class="drkid-input  input-lowheight">{PRODUCT_NM}</div>
                <input type="hidden" name="PRODUCT_NM" value="{PRODUCT_NM}" />
            </td>
            <%--판매가--%>
            <td class="lower-font">
                <div class="drkid-input  input-lowheight prodRate">{VIEW_SALE_RATE}</div>
                <input type="hidden" name="VIEW_SALE_RATE" value="{VIEW_SALE_RATE}" />
            </td>
            <%--전시상태--%>
            <td class="lower-font">
                <div class="drkid-input  input-lowheight">{VIEW_FLAG}</div>
                <input type="hidden" name="VIEW_FLAG" value="{VIEW_FLAG}" />
            </td>
        </tr>
    </script>

</asp:Content>
