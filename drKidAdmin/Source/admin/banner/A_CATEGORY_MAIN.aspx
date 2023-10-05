﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_CATEGORY_MAIN.aspx.cs" Inherits="drKidAdmin.Source.admin.banner.A_CATEGORY_MAIN" %>
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
        /*카테고리*/
        .all_Wrap {
            display: flex;
            width: 100%;
            min-width:1185px;
        }
        .left_Wrap {
            width: 230px;
        }
        .right_Wrap{
            width: calc(100% - 230px);
        }
        .category_Box_Area {
            width: 230px;
        }
        .category_Box {
            width: 100%;
            border: 1px solid #E2E2E2;
        }
        .category_Top_Area {
            width: 100%;
            height: 45px;
            background: #F9F9F9;
        }
        .category_Top {
            padding: 13px;
            height: 100%;
            font-weight: 500;
            border-bottom: 1px solid #E2E2E2;
            
        }
        .category_Middle_Area {
            min-height: 350px;
            padding: 10px 0px;
        }
        .category_Middle {
           
        }
        .category_Bottom_Area {
            height: 48px;
        }
        .category_Box_Btn_Area {
            display: flex;
            height: 100%;
            text-align: center;
            align-items: center;
            border-top: 1px solid #E2E2E2;
        }
        .add_Btn {
            width: 50%;
            height: 100%;
            background: #F9F9F9;
            line-height: 48px;
            border-right: 1px solid #E2E2E2;
            background: #E2E2E2;
            cursor:pointer;
        }
        .del_Btn {
            width: 50%;
            height: 100%;
            background: #F9F9F9;
            line-height: 48px;
        }
        .big_Cate_Btn_Active {
             background:#E2E2E2;
             cursor:pointer;
        }
        .custom-liner-icon-wraper {
            border-left: none;
            padding: 15px 0px;
        }
        .guid_Txt_Area {
            padding: 0px 20px 10px 20px;
            border-bottom: 1px solid #E2E2E2;
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
        }
        .category_Contents_Area {
            min-height: 400px;
            padding: 20px;
            display:none;
        }
        .d_category_Contents_Area {
            min-height: 400px;
            padding: 20px;
            display:none;
        }
        .category_Contents {
            display: flex;
            align-items: center;
            padding: 10px 0px;
        }
        .category_Contents_Txt {
            width: 120px;
        }
        .category_Contents_Input {
            width: 280px;
            height: 35px;
            line-height: 35px;
            display: flex;
            align-items: center;
        }
      
        .big_Category_Add_Btn_Area {
            width: 100%;
            display: flex;
        }
        .big_Category_Add_Btn {
            margin: 0 auto;
            
        }
        .big_Category_List {
            padding: 10px 0px;
        }
        .big_Cate_Info {
            padding:5px 15px;
            font-weight:500;
            cursor:pointer;
        }
        .clicked {
            background: #efeded;
        }
        /*중분류*/
        .CATE_UI_Wrap {
            width: 600px;
            padding: 10px 20px;
            border: 1px solid #E2E2E2;
        }
        .sub_Category_record {
            display: flex;
            gap: 0px 10px;
            padding: 5px 0px;
        }
        .sub_Category_Add_Btn {
            width:100%;
        }
        .SUB_TITLE_WRAP {
            height: 35px;
            width: 90%;

        }
        /*이미지 업로드*/
        .image_for_class {
            object-fit: cover;
        }
        .pc_Mobile_Area {
            padding: 30px 0px 0px 0px;
        }
        .pc_Mobile_Wrap {
            display: flex;
            gap: 0px 30px;
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
        .inactive {
            color:#E2E2E2;
            cursor:inherit;
        }
        .banner_Add_Btn_Area {
            padding: 20px 0px;
        }
        .banner_Add_Btn{
            border: 1px solid #DDDDDD;
            color: #999999;
            width: 100%;
            height: 35px;
            line-height: 35px;
            text-align: center;
            font-weight: 500;
            cursor: pointer;
        }
        .category_Contents_Url {
           width: 730px;
            height: 35px;
            line-height: 35px;
            display: flex;
            align-items: center;
        }
        .sub_Cate_Info {
            padding: 3px 20px;
            font-weight: 400;
            cursor: pointer;
        }
        /*카테고리 팝업*/
        .category_Popup_Area {
            position: relative;
            display:none;
        }
        .category_Popup {
            position: absolute;
            /*z-index: 9999;*/
            width: 600px;
            background: #ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            border: 1px solid #E2E2E2;
        }
        .category_Popup_Top_Area {
            padding: 10px 20px;
            border-bottom: 1px solid #E1E1E1;
        }
        .category_Popup_Top {
            align-items: center;
            display: flex;
            width: 100%;
            justify-content: space-between;
        }
        .category_Popup_Top_Txt {
            font-weight:500;
        }
        .popup_Cnasle_Area {
            cursor:pointer;
        }
        .category_Popup_Middle_Area {
            padding: 10px 20px;
        }
        .big_Category_record {
            padding: 5px 0px;
            display: flex;
            width: 100%;
            justify-content: space-between;
            align-items: center;
            height: 45px;
        }
        .I_TITLE_WRAP {
            height:35px;
            width: 60%;
        }
        .popup_Record_Cansle_Area {
            width: 35px;
            border: 1px solid #E1E1E1;
            height: 35px;
            cursor:pointer;
        }
        .B_popup_Record_Cansle_Area {
            position: relative;
            top: 24px;
        }
        .popup_Record_Cansle_Layout {
            width: fit-content;
            height: fit-content;
            margin: 0 auto;
            line-height: 35px;
            color: var(--mono_dea);
        }
        .popup_Record_Cansle {
            
        }
        .category_Radio_Area {
            width: 30%;
        }
        .custom-drkid-input {
            width:100%;
            height:100%;
        }
        .popup_Category_Add_Btn_Area {
            padding:10px 0px;
        }
        .popup_Category_Add_Btn {
            width:100%;
        }
        .popup_Cansle {
            cursor:pointer;
        }
        .big_Category_Guidetxt_Area {
            padding: 0px 0px 20px 0px;
        }
        .popup_Bottom_Btn_Area {
            padding: 20px 0px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0px 15px;
        }
        /*상품연결*/
        .PROD_UI_AREA {
            
        }
        .PROD_UI_Wrap {
            display: flex;
            width: 100%;
            align-items: center;
            padding: 20px 0px 10px 0px;
            gap: 0px 30px;
        }
        /*.category_txt {
            width: 140px;
        }*/
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
        /*카테고리 바인드*/
        .cate_Bind_Area {
            padding: 50px 0px 0px 0px;
        }
        .cate_BindTable_Area {
            display: flex;
            gap: 0px 20px;
            min-width: 915px;
            
        }
        .cate_Bind_Table {
            min-width: 450px;
        }
        .cate_Bind_Btn_Area {
            display: flex;
            justify-content: end;
            padding: 5px 0px;
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
       
        function UpdateUploadButton2_1() {
            uploader2_1.Upload();
        }
        function UpdateUploadButton2_2() {
            uploader2_2.Upload();
        }
        function UpdateUploadButton3_1() {
            uploader3_1.Upload();
        }
        function UpdateUploadButton3_2() {
            uploader3_2.Upload();
        }
        function UpdateUploadButton4_1() {
            uploader4_1.Upload();
        }
        function UpdateUploadButton4_2() {
            uploader4_2.Upload();
        }
        function UpdateUploadButton5_1() {
            uploader5_1.Upload();
        }
        function UpdateUploadButton5_2() {
            uploader5_2.Upload();
        }
        function UpdateUploadButton6() {
            uploader6.Upload();
        }
        function UpdateUploadButton7() {
            uploader7.Upload();
        }
        

        //여러개 올릴때 Upload file이 계속 바뀌므로 계속 타게 처리.
        function Uploader_OnFilesUploadComplete(args) {
            UpdateUploadButton();
        }
        function Uploader_OnFilesUploadComplete2(args) {
            UpdateUploadButton2();
        }
        function Uploader_OnFilesUploadComplete2_1(args) {
            UpdateUploadButton2_1();
        }
        function Uploader_OnFilesUploadComplete2_2(args) {
            UpdateUploadButton2_2();
        }
        function Uploader_OnFilesUploadComplete3_1(args) {
            UpdateUploadButton3_1();
        }
        function Uploader_OnFilesUploadComplete3_2(args) {
            UpdateUploadButton3_2();
        }
        function Uploader_OnFilesUploadComplete4_1(args) {
            UpdateUploadButton4_1();
        }
        function Uploader_OnFilesUploadComplete4_2(args) {
            UpdateUploadButton4_2();
        }
        function Uploader_OnFilesUploadComplete5_1(args) {
            UpdateUploadButton5_1();
        }
        function Uploader_OnFilesUploadComplete5_2(args) {
            UpdateUploadButton5_2();
        }
        function Uploader_OnFilesUploadComplete6(args) {
            UpdateUploadButton6();
        }
        function Uploader_OnFilesUploadComplete7(args) {
            UpdateUploadButton7();
        }
        function Uploader_OnFileUploadComplete(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                console.log(JsonData)
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    //$('#pc_no_img_0').css("display","none");
                    $('#pc_img_wrap_0').empty();
                    $('#pc_img_wrap_0').append(html);
                    $('#pc_img_wrap_0').append(JsonData["imgSrc"]);
                    $("#del_pc_btn_0").removeClass('inactive');
                    $("#del_pc_btn_0").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        function Uploader_OnFileUploadComplete2(args) {
            console.log("args ",args)
            //console.log(JSON.stringify(args));
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#mobile_img_wrap_0').empty();
                    $('#mobile_img_wrap_0').append(html);
                    $('#mobile_img_wrap_0').append(JsonData["imgSrc"]);
                    $("#del_mb_btn_0").removeClass('inactive');
                    $("#del_mb_btn_0").addClass('img_Btn_Active');
                    
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }

        //2 
        function Uploader_OnFileUploadComplete2_1(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                console.log(JsonData)
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#pc_img_wrap_1').empty();
                    $('#pc_img_wrap_1').append(html);
                    $('#pc_img_wrap_1').append(JsonData["imgSrc"]);
                    $("#del_pc_btn_1").removeClass('inactive');
                    $("#del_pc_btn_1").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        function Uploader_OnFileUploadComplete2_2(args) {
            console.log("args ",args)
            //console.log(JSON.stringify(args));
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#mobile_img_wrap_1').empty();
                    $('#mobile_img_wrap_1').append(html);
                    $('#mobile_img_wrap_1').append(JsonData["imgSrc"]);
                    $("#del_mb_btn_1").removeClass('inactive');
                    $("#del_mb_btn_1").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        //3
        function Uploader_OnFileUploadComplete3_1(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                console.log(JsonData)
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#pc_img_wrap_2').empty();
                    $('#pc_img_wrap_2').append(html);
                    $('#pc_img_wrap_2').append(JsonData["imgSrc"]);
                    $("#del_pc_btn_2").removeClass('inactive');
                    $("#del_pc_btn_2").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        function Uploader_OnFileUploadComplete3_2(args) {
            console.log("args ",args)
            //console.log(JSON.stringify(args));
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#mobile_img_wrap_2').empty();
                    $('#mobile_img_wrap_2').append(html);
                    $('#mobile_img_wrap_2').append(JsonData["imgSrc"]);
                    $("#del_mb_btn_2").removeClass('inactive');
                    $("#del_mb_btn_2").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        //4
        function Uploader_OnFileUploadComplete4_1(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                console.log(JsonData)
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#pc_img_wrap_3').empty();
                    $('#pc_img_wrap_3').append(html);
                    $('#pc_img_wrap_3').append(JsonData["imgSrc"]);
                    $("#del_pc_btn_3").removeClass('inactive');
                    $("#del_pc_btn_3").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        function Uploader_OnFileUploadComplete4_2(args) {
            console.log("args ",args)
            //console.log(JSON.stringify(args));
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#mobile_img_wrap_3').empty();
                    $('#mobile_img_wrap_3').append(html);
                    $('#mobile_img_wrap_3').append(JsonData["imgSrc"]);
                    $("#del_mb_btn_3").removeClass('inactive');
                    $("#del_mb_btn_3").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        //5
        function Uploader_OnFileUploadComplete5_1(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                console.log(JsonData)
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#pc_img_wrap_4').empty();
                    $('#pc_img_wrap_4').append(html);
                    $('#pc_img_wrap_4').append(JsonData["imgSrc"]);
                    $("#del_pc_btn_4").removeClass('inactive');
                    $("#del_pc_btn_4").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        function Uploader_OnFileUploadComplete5_2(args) {
            console.log("args ",args)
            //console.log(JSON.stringify(args));
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#mobile_img_wrap_4').empty();
                    $('#mobile_img_wrap_4').append(html);
                    $('#mobile_img_wrap_4').append(JsonData["imgSrc"]);
                    $("#del_mb_btn_4").removeClass('inactive');
                    $("#del_mb_btn_4").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        function Uploader_OnFileUploadComplete6(args) {
            console.log("args ",args)
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid' value='-1'/></div>`;
                    $('#sub_pc_img_wrap_5').empty();
                    $('#sub_pc_img_wrap_5').append(html);
                    $('#sub_pc_img_wrap_5').append(JsonData["imgSrc"]);
                    $("#del_pc_btn_5").removeClass('inactive');
                    $("#del_pc_btn_5").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }
        function Uploader_OnFileUploadComplete7(args) {
            console.log("args ",args)
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    var html = `<div><input type='hidden' name='image_upload_byte2' value='${JsonData['byte']}'/><input type='hidden' name='image_upload_name2' value='${JsonData['imgName']}'/><input type='hidden' name='image_upload_ext2' value='${JsonData['ext']}'/><input type='hidden' name='image_upload_sid2' value='-1'/></div>`;
                    $('#sub_pc_img_wrap_6').empty();
                    $('#sub_pc_img_wrap_6').append(html);
                    $('#sub_pc_img_wrap_6').append(JsonData["imgSrc"]);
                    $("#del_pc_btn_6").removeClass('inactive');
                    $("#del_pc_btn_6").addClass('img_Btn_Active');
                } else {
                    //에러가 날경우 alert 처리
                    alert(JsonData['message']);
                }
            } 
        }

        //이미지 등록 버튼 pc
        function upload_pc_test(type){
            switch(type){
                case 1:
                    if($('#pc_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader_TextBox0_Input').click();
                    }
                    break;
                case 2:
                    if($('#pc_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader2_1_TextBox0_Input').click();
                    }
                    break;
                case 3:
                    if($('#pc_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader3_1_TextBox0_Input').click();
                    }
                    break;
                case 4:
                    if($('#pc_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader4_1_TextBox0_Input').click();
                    }
                    break;
                case 5:
                    if($('#pc_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader5_1_TextBox0_Input').click();
                    }
                    break;
                case 6:
                    if($('#sub_pc_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader6_TextBox0_Input').click();
                    }
                    break;
                case 7:
                    if($('#sub_pc_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader7_TextBox0_Input').click();
                    }
                    break;
            }
        }
        //이미지 등록 버튼 mobile
        function upload_mb_test(type){
            switch(type){
                case 1:
                    if($('#mobile_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader2_TextBox0_Input').click();
                    }
                    break;
                case 2:
                    if($('#mobile_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader2_2_TextBox0_Input').click();
                    }
                    break;
                case 3:
                    if($('#mobile_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader3_2_TextBox0_Input').click();
                    }
                    break;
                case 4:
                    if($('#mobile_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader4_2_TextBox0_Input').click();
                    }
                    break;
                case 5:
                    if($('#mobile_img_wrap_'+(type-1)).find('*').length > 4){
                        _popModal.Alert('', '이미지가 이미 등록되었습니다.');
                    }
                    else{
                        $('#uploader5_2_TextBox0_Input').click();
                    }
                    break;
            }
        }
        //이미지 삭제 pc
        function del_pc_test(type){
            //삭제할 요소가 있으면 이미지, 이미지관련 인풋정보 삭제
            if($('#pc_img_wrap_'+type).find('*').length > 4){
                $("#pc_img_wrap_"+type).empty();
                var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                $("#pc_img_wrap_"+type).append(img);
                $("#del_pc_btn_"+type).removeClass('img_Btn_Active');
                $("#del_pc_btn_"+type).removeClass('inactive');
                $("#del_pc_btn_"+type).addClass('inactive');
            }
            else{
                console.log("삭제할 요소 없음")
            }
        }
        //이미지 삭제 mobile
        function del_mobile_test(type){
            //삭제할 요소가 있으면 이미지, 이미지관련 인풋정보 삭제
            if($('#mobile_img_wrap_'+type).find('*').length > 4){
                $("#mobile_img_wrap_"+type).empty();
                var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                $("#mobile_img_wrap_"+type).append(img);
                $("#del_mb_btn_"+type).removeClass('img_Btn_Active');
                $("#del_mb_btn_"+type).removeClass('inactive');
                $("#del_mb_btn_"+type).addClass('inactive');
                
            }
            else{
                console.log("삭제할 요소 없음")
            }

        }
        //이미지 삭제 중분류 이미지
        function del_pc_sub() {
            if($('#sub_pc_img_wrap_5').find('*').length > 4){
                $("#sub_pc_img_wrap_5").empty();
                var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                $("#sub_pc_img_wrap_5").append(img);
                $("#del_pc_btn_5").removeClass('img_Btn_Active');
                $("#del_pc_btn_5").removeClass('inactive');
                $("#del_pc_btn_5").addClass('inactive');
            }
            else{
                console.log("삭제할 요소 없음")
            }
        }
        //이미지 삭제 카테고리형 대분류 대표 이미지
        function del_CATE_BIG_image() {
            if($('#sub_pc_img_wrap_6').find('*').length > 4){
                $("#sub_pc_img_wrap_6").empty();
                var img = $('<img src="/Source/image/no_img.svg" class="no_img"/> ');
                $("#sub_pc_img_wrap_6").append(img);
                $("#del_pc_btn_6").removeClass('img_Btn_Active');
                $("#del_pc_btn_6").removeClass('inactive');
                $("#del_pc_btn_6").addClass('inactive');
            }
            else{
                console.log("삭제할 요소 없음")
            }
        }
        // 대분류 배너 (X) 삭제하기 버튼
        function del_template(index){
            var pc_Mobile_Area = 0;
            $("[id^='pc_Mobile_Area_']").each(function() {
                pc_Mobile_Area++; 
            });
            if(pc_Mobile_Area > 1){
                _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                   function () {
                      
                       $("#pc_Mobile_Area_"+index).remove();
                       seq_optimization_Banner();
                   }, function (error) { _popModal.Alert('', error); });
            }
            else{
                _popModal.Alert('', '2개 이상부터 삭제가능 합니다.');
            }
           
        }

        // 대분류 배너 SEQ 시퀀스 최적화
        function seq_optimization_Banner(){
            console.log("동작")
            var inputs = $("input[name='MAIN_SEQ']");
            inputs.each(function (index, element) {
                element.value = index + 1 ;
            });

            //$("#pc_img_wrap_").each(function(index,item) {
            $("[id^='pc_img_wrap_']").each(function(index,item) {
                var newID  = "pc_img_wrap_" + index; 
                console.log(newID)
                $(item).attr("id", newID);
            });
           
            //$("#mobile_img_wrap_").each(function(index, item) {
            $("[id^='mobile_img_wrap_']").each(function(index,item) {
                var newID = "mobile_img_wrap_" + index;
                $(item).attr("id", newID);
            });
        }
        //////////////////////
        //이미지업로드 관련 끝


        //템플릿 관련 함수 시작
        ////////////////////////  

        

        //대분류 카테고리 템플릿 추가 시 시퀀스 순서
        function getNextSeq_Record() {
            //let _Seq = 1;
            let _Seq = $('.big_Cate_Info[data-info="CATE"]').length + $('.big_Cate_Info[data-info="PROD"]').length + 1;
            $('.big_Category_record').each(function (index, item) {
                let _trSeq = $(item).find('input[name="VIEW_SEQ"]').val() * 1;
                if (_Seq <= _trSeq) {
                    _Seq = _trSeq + 1;
                }
            });
            return _Seq;
        }
        //대분류 카테고리 템플릿 추가 시 시퀀스 순서
        function getNewSid_Record() {
            let _SID = -1;
            $('.big_Category_record').each(function (index, item) {
                let _trSID = $(item).find('input[name="VIEW_SID"]').val() * 1;
                if (_SID >= _trSID) {
                    _SID = _trSID - 1;
                }
            });
            return _SID;
        }
        //대분류 디테일 전용
        function getNextSeq() {
            let _Seq = 1;
            $('.pc_Mobile_Area').each(function (index, item) {
                let _trSeq = $(item).find('input[name="MAIN_SEQ"]').val() * 1;
                if (_Seq <= _trSeq) {
                    _Seq = _trSeq + 1;
                }
            });
            return _Seq;
        }
        //대분류 디테일 전용
        function getNewSid() {
            let _SID = -1;
            $('.pc_Mobile_Area').each(function (index, item) {
                let _trSID = $(item).find('input[name="MAIN_SID"]').val() * 1;
                if (_SID >= _trSID) {
                    _SID = _trSID - 1;
                }
            });
            return _SID;
        }
        //중분류 카테고리 전용
        function getNewSid_Sub_Record(){
            let _SID = -1;
            $('.sub_Category_record').each(function (index, item) {
                let _trSID = $(item).find('input[name="SUB_VIEW_SID"]').val() * 1;
                if (_SID >= _trSID) {
                    _SID = _trSID - 1;
                }
            });
            return _SID;
        }

        //중분류 카테고리 전용
        function getNewSeq_Sub_Record(){
            let _Seq = 1;
            $('.sub_Category_record').each(function (index, item) {
                let _trSeq = $(item).find('input[name="SUB_VIEW_SEQ"]').val() * 1;
                if (_Seq <= _trSeq) {
                    _Seq = _trSeq + 1;
                }
            });
            return _Seq;
        }
       

        
        //팝업 - X 버튼
        function del_Record(index) {
            var record_Value = index;
            if (record_Value != null || record_Value != "") {
                $("#big_Category_record_" + record_Value).remove();
            }
            seq_optimization_record();
        }

        // 중분류 - X 버튼
        function sub_del_Record(index) {
            var record_Value = index;
            if (record_Value != null || record_Value != "") {
                $("#sub_Category_record_" + record_Value).remove();
            }
            seq_optimization_record_sub();
        }
        

        //SEQ 최적화 - 대분류 팝업 레코드 
        function seq_optimization_record() {

            // 대분류 팝업 레코드의 ORDER_SEQ 최적화
            //let _Seq = $('.big_Cate_Info[data-value="Y"]').length;
            let _Seq = $('.big_Cate_Info[data-info="CATE"]').length + $('.big_Cate_Info[data-info="PROD"]').length
            
            var inputs = $("input[name='VIEW_SEQ']");
            inputs.each(function (index, element) {
                element.value = index + 1 + _Seq;
            });

            // 대분류 팝업 레코드의 라디오 요소들 name 최적화
            $(".category_Radio_Area").each(function(index) {
                var newName = "I_USED_TYPE_" + (index + 1 + _Seq); 
                $(this).find("input[type='radio']").attr("name", newName);
            });

        
        }

        //SEQ 최적화 - 중분류  레코드
        function seq_optimization_record_sub() {
            var inputs = $("input[name='SUB_VIEW_SEQ']");
            inputs.each(function (index, element) {
                element.value = index + 1;
            });
        }

        // SEQ 최적화 - 대분류 카테고리 리스트 전용
        function seq_optimization_Big_Cate() {
            $(".cate_Wrap_Common").each(function(index,element) {
                $(this).find("input[type='hidden'][name='M_VIEW_SEQ']").val(index+1)
            });
        }


        //화살표 Move 기능
        function moveTr(gbn, targetSid,type) {
            //let _targetTr = $(`[${type}="${targetSid}"]`);
            let _targetTr = type;
            console.log(_targetTr)
            if (gbn == "UP") {
                _targetTr.prev().before(_targetTr);
                seq_optimization_Big_Cate();
            } else {
                var nextElementClass = $(type).next().attr('class');
                //선택한 바로 아래요소가 사용자 지정 카테고리일때만 아래로 이동
                if(nextElementClass == "cate_Wrap_Common")
                {
                    _targetTr.next().after(_targetTr);
                    seq_optimization_Big_Cate();
                }
            }
        }
        function allCheck(target) {
            let targetTableBody = $(target).parents('table').find('tbody');
            let boolChecker = $(target).is(":checked");
            if (boolChecker) {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', true);
                });
            } else {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', false);
                });
            }
        }

        var CHOICE = '<%=CHOICE_SID%>';
        var big_Detail_Save = '<%=big_Detail_Save%>';  // 대분류 카테고리 디테일 저장 플래그
        var big_Detail_Inquery = '<%=big_Detail_Inquery%>';  // 대분류 카테고리 디테일 조회 플래그 
        var VIEW_USED_TYPE = '<%=VIEW_USED_TYPE%>';//선택 대분류가 상품형인지 카테고리형인지 ==> PROD OR CATE

        var SUB_CHOICE = '<%=SUB_CHOICE_SID%>';
        var sub_Detail_Save ='<%=sub_Detail_Save%>';// 중분류 카테고리 디테일 저장 플래그
        var sub_Detail_Inquery = '<%=sub_Detail_Inquery%>'; // 중분류 카테고리 디테일 조회 플래그 

        var inquiry_flag = '<%=inquiry_flag%>'; // 대분류, 중분류 디테일 조회 플래그
        var save_flag = '<%=save_flag%>';// 대분류, 중분류 디테일 저장 플래그
        var del_flag = '<%=del_flag%>';
           
        $(function () {
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


            //위 버튼
            $('#big-up-arrow').on('click', function () {
                if(CHOICE == 0)
                {
                    _popModal.Alert('', '카테고리가 선택되지 않았습니다');
                    return false;
                }
                else
                {
                    //var move_Element = $("#"+CHOICE);
                    var move_Element = $('.cate_Wrap_Common[data-info="' + CHOICE + '"]');
                    moveTr('UP', '', move_Element);
                }
            });
            //아래버튼
            $('#big-down-arrow').on('click', function () {
                if(CHOICE == 0)
                {
                    _popModal.Alert('', '카테고리가 선택되지 않았습니다');
                    return false;
                }
                else
                {
                    //var move_Element = $("#"+CHOICE);
                    var move_Element = $('.cate_Wrap_Common[data-info="' + CHOICE + '"]');
                    moveTr('DOWN', '', move_Element);
                }
            });

            // 대분류 카테고리 리스트 관련 저장 버튼
            $('#big_Cate_Save').on('click', function () {
                _popModal.Promt('알림', '카테고리 리스트를 저장하시겠습니까?',
                function () {
                    $('#flag').val('save_Sub_Cate_List');
                    $('#form1').submit();
                     
                }, function (error) { _popModal.Alert('', error); });
            });

            //카테고리 배너 라디오 값에 따른 배너영역 컨트롤
            //대분류 카테고리 배너 
            var selectedValue = $('input[name="BANNER_FLAG"]:checked').val();
            if(selectedValue == "N"){
                $(".category_Contents_Banner").hide();
            }
            $('input[name="BANNER_FLAG"][value="N"]').change(function() {
                //N이 체크되면
                $(".category_Contents_Banner").hide();
            });

            $('input[name="BANNER_FLAG"][value="Y"]').change(function() {
                //Y가 체크되면 
                $(".category_Contents_Banner").show();
            });

            //카테고리 타입의 대분류 카테고리 대표이미지 라디오 값에 따른 이미지 영역 컨트롤
            var selectedValue = $('input[name="TITLE_IMG_FLAG"]:checked').val();
            if(selectedValue == "N"){
                $(".sub_pc_Mobile_Area2").hide();
            }
            $('input[name="TITLE_IMG_FLAG"][value="N"]').change(function() {
                //N이 체크되면
                $(".sub_pc_Mobile_Area2").hide();
            });

            $('input[name="TITLE_IMG_FLAG"][value="Y"]').change(function() {
                //Y가 체크되면 
                $(".sub_pc_Mobile_Area2").show();
            });



            // 중분류 PC 카테고리 사진
            //*****임시 안씀*****
            //var selectedValue2 = $('input[name="VIEW_PC_FLAG"]:checked').val();
            //if(selectedValue2 == "N"){
            //    $(".sub_pc_Mobile_Area").hide();
            //}
            //$('input[name="VIEW_PC_FLAG"][value="N"]').change(function() {
            //    //N이 체크되면
            //    $(".sub_pc_Mobile_Area").hide();
            //});

            //$('input[name="VIEW_PC_FLAG"][value="Y"]').change(function() {
            //    //Y가 체크되면 
            //    $(".sub_pc_Mobile_Area").show();
            //});

            //우측 하단 대분류 및 중분류 디테일 영역 숨김
            $(".category_Contents_Area").hide();

            //대분류 카테고리 추가 버튼
            $('#big_Category_Add_Btn').on('click', function () {
                var All_elements = $('.big_Cate_Info');
                var All_elements_length = All_elements.length;
                //기존 저장된 대분류가 9개 미만이면 
                if (All_elements_length <= 9) {
                    // 신규 레코드가 없으면 하나 생성 후에 팝업 show 
                    if ($(".big_Category_record").length == 0) {
                        $(".popup_Category_Add_Btn").click();
                        $(".category_Popup_Area").show();
                    }
                    else {
                        //이미 하나이상 생성되어있는 상태일경우 팝업 show
                        $(".category_Popup_Area").show();
                    }
                }
                else {
                    _popModal.Alert('', '대분류 카테고리를 최대생성 하셨습니다.');
                }
                
            });
            //팝업 X 버튼
            $('#popup_Cansle').on('click', function () {
                $(".category_Popup_Area").hide();
            });
            //팝업 취소 버튼 , 팝업 X와 같음
            $('.Popup_Bottom_Cansle').on('click', function () {
                $(".category_Popup_Area").hide();
            });

            //팝업 - 카테고리 추가 버튼
            $('.popup_Category_Add_Btn').on('click', function () {
                var limit = 8;
                var big_Category = $(".big_Cate_Info").length;
                var new_Category = $(".big_Category_record").length; 
                //기본 대분류 4개(셀럽,이벤트,매거진,리뷰)
                if (limit >= big_Category + new_Category) {
                    var _template = $('#POPUP_RECORD').html();
                    let _sid = getNewSid_Record();
                    let _seq = getNextSeq_Record();

                    _template = _template.replace(/{SID}/g, _sid);
                    _template = _template.replace(/{SEQ}/g, _seq);
                    $('.template_add_here').append(_template);
                }
                else{
                    _popModal.Alert('', '대분류 카테고리를 최대생성 하셨습니다.');
                }

                
                
            });

            //팝업 - 저장
            $('.Popup_Bottom_Save').on('click', function () {
                var I_TITLE_CHECK = false; // I_TITLE 대분류명 체크 변수

                //1개 이상의 레코드 작성 체크
                var record_Length = $(".big_Category_record").length
                if (record_Length > 0) {
                    //대분류명 값 체크
                    $('input[name^="I_TITLE"]').each(function () {
                        if ($(this).val() === "") {
                            I_TITLE_CHECK = true;
                            return false;
                        }
                    });
                    if (I_TITLE_CHECK) {
                        _popModal.Alert('', '대분류명을 입력해주세요.');
                    } 

                    //라디오 값(카테고리 형, 상품 형) USED_TYPE_LIST에 값 담음
                    var typeArray = [];
                    $('input[type=radio][name^="I_USED_TYPE_"]:checked').each(function () {
                        typeArray.push($(this).val());
                    });
                    var typeString = typeArray.join();
                    $('#USED_TYPE_LIST').val(typeString);

                    if ($('#USED_TYPE_LIST').val() != null || $('#USED_TYPE_LIST').val() != "") {
                        $('#flag').val('save');
                        $('#form1').submit();
                        console.log("저장")
                    }
                }
                else {
                    _popModal.Alert('', '카테고리 추가 버튼을 통해, 1개 이상의 카테고리 정보를 입력해주세요.');
                }
               

            });

            //대분류 카테고리 클릭
            $('.big_Cate_Info').on('click', function () {
                $('.big_Cate_Info').removeClass('clicked');
                $(this).addClass('clicked');

                //대분류 디테일 카테고리명 INPUT 세팅
                var Big_Cate_Txt = $(this).text();
                $("input[name='D_TITLE']").val(Big_Cate_Txt.trim());
                $(".category_Contents_Area").show();

                //클릭한 대분류의 SID를 CHOICE_SID에 넣음
                var Big_Cate_Sid = $(this).attr("id");
                $("input[name='CHOICE_SID']").val(Big_Cate_Sid);
                console.log("CHOICE_SID VAL() : ", $("input[name='CHOICE_SID']").val() )
                //클릭한 대분류의 USED_TYPE을 CHOICE_USED_TYPE에 넣음 null이나 공백이면 기본 대분류이기에 삭제안되야 함
                var Big_Cate_USED_TYPE = $(this).data("info");
                $("input[name='CHOICE_USED_TYPE']").val(Big_Cate_USED_TYPE);
                console.log("CHOICE_USED_TYPE VAL() : ", $("input[name='CHOICE_USED_TYPE']").val() )
                //대분류 카테고리를 클릭하면 중분류 카테고리 SUB_CHOICE_SID 값 ""공백으로 초기화
                $("#SUB_CHOICE_SID").val("");
                // 대분류 디테일 조회
                showProgress();
                $('#flag').val('Big_Detail_Inquery');
                $('#form1').submit();
         

            });
            
            //대분류 디테일 + 버튼
            $('.banner_Add_Btn').on('click', function () {
                var _template = $('#PC_MOBILE_IMG').html();
                var count = $('.pc_Mobile_Area').length;
                if (count <= 4) {
                    //let _sid = getNewSid();
                    let _seq = getNextSeq();
                    let _sid = getNewSid();
                    //_template = _template.replace(/{SID}/g, _sid);
                    _template = _template.replace(/{I_SEQ}/g, _seq);
                    _template = _template.replace(/{I_SID}/g, _sid);
                    _template = _template.replace(/{B_SEQ}/g, (_seq-1));
                    $('.add_Upload_Img_Here').append(_template);
                }
                else {
                    _popModal.Alert('', '최대 5개까지 생성가능합니다.');
                }

            });

            //적용하기 버튼
            $('.banner_Save_Btn').on('click', function () {
                // CHOICE_SID 값이 있으면 즉, 대분류 디테일일 경우. (나중에 중분류 디테일일 경우 추가해줘야 함)
                // 1. 대분류 누른상태일 경우 대분류 디테일 저장
                if($("#CHOICE_SID").val() != null && $("#CHOICE_SID").val() != ""&& $("#CHOICE_SID").val() != 0  && $("#SUB_CHOICE_SID").val() == 0 ){
                    //카테고리 타입의 대분류일경우, 대표이미지 체크
                    var pc_element_count3 = 0;
                    $("[id^='sub_pc_img_wrap_6']").each(function() {
                        pc_element_count3++; 
                    });
                    var selector3 = "#sub_pc_img_wrap_6";
                    var childElementCount3 = $(selector3).children().length;
                    console.log(childElementCount3)
                    if(childElementCount3 <= 1){
                        //카테고리 배너 사용 라디오 버튼 체크 시
                        if($("input[name='TITLE_IMG_FLAG']:checked").val() == "Y"){
                            console.log("childElementCount3:",childElementCount3)
                            _popModal.Alert('', '카테고리 대표이미지를 등록해주세요.');
                            return false;
                        }    
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
                        console.log(childElementCount)
                        if(childElementCount <= 1){
                            //카테고리 배너 사용 라디오 버튼 체크 시
                            if ($("input[name='BANNER_FLAG']:checked").val() === "Y") {
                                _popModal.Alert('', 'PC 카테고리 배너 이미지를 모두 등록해주세요.');
                                return false;
                            }
                                
                        }
                    }
                    for (var i = 0; i < mb_element_count; i++) {
                        var selector = "#mobile_img_wrap_" + i;
                        var childElementCount = $(selector).children().length;
                        if(childElementCount <= 1){
                            //카테고리 배너 사용 라디오 버튼 체크 시
                            if ($("input[name='BANNER_FLAG']:checked").val() === "Y") {
                                _popModal.Alert('', '모바일 카테고리 배너 이미지를 모두 등록해주세요.');
                                return false;
                            }
                        }
                    }
                    $("input[name='CATE_LIST_CHOICE']").prop('checked', true); // 중분류 카테고리 바인드 관련 전체 선택시킨 후 저장

                    showProgress();
                    if(VIEW_USED_TYPE == "PROD"){
                        console.log("상품형 대분류 상품바인드 정보 저장")
                        $('input:checkbox[name="SUB_CHECK_BOX"]').prop("checked", true);
                    }
                    console.log("대분류 디테일 저장")
                    $('#flag').val('Big_Detail_Save');
                    $('#form1').submit();
                }

                // 2. 중분류를 누른상태일 경우 중분류 디테일 저장되어야 함
                if($("#SUB_CHOICE_SID").val() != null && $("#SUB_CHOICE_SID").val() != "" && $("#SUB_CHOICE_SID").val() != 0 && $("#CHOICE_SID").val() == 0 ){
                    // *****임시 안씀*****
                    //pc, 모바일 이미지 등록 체크
                    //pc 이미지 요소 체크
                    //var pc_element_count2 = 0;
                    //$("[id^='sub_pc_img_wrap_5']").each(function() {
                    //    pc_element_count2++; 
                    //});
                      
                    //var selector2 = "#sub_pc_img_wrap_5";
                    //var childElementCount2 = $(selector2).children().length;
                    //console.log(childElementCount2)
                    //if(childElementCount2 <= 1){
                    //    //카테고리 배너 사용 라디오 버튼 체크 시
                    //    if($("input[name='VIEW_PC_FLAG']:checked").val() == "Y"){
                    //        console.log("childElementCount2:",childElementCount2)
                    //        _popModal.Alert('', 'PC 카테고리 사진을 등록해주세요.');
                    //        return false;
                    //    }      
                    //}
                    //console.log("childElementCount2:",childElementCount2)
                        
                    console.log("중분류 디테일 저장")
                    $("input[name='CATE_LIST_CHOICE']").prop('checked', true);
                    showProgress();
                    $('#flag').val('Sub_Detail_Save');
                    $('#form1').submit();
                }


                if($("#CHOICE_SID").val() == 0 && $("#SUB_CHOICE_SID").val() == 0){
                    console.log("디테일 말고 대분류 전체 리스트 저장")
                    _popModal.Alert('', '적용할 대분류 또는 중분류 카테고리가 지정되지 않았습니다.');
                    //$('#flag').val('Big_Save');
                    //$('#form1').submit();
                }

            });

            //삭제버튼 
            $('.del_Btn').on('click', function () {

                //대분류 
                if( CHOICE != 0 &&  SUB_CHOICE == 0 ){
                    // 해당 대분류 요소의 USED_TYPE이 있으면 삭제.
                    // 없으면 셀럽#,이벤트,매거진,리뷰오 같은 기본 카테고리이므로 삭제 불가
                    var big_Used_Type = $("#"+CHOICE).data("info");
                    if(big_Used_Type != null && big_Used_Type != ""){
                        _popModal.Promt('알림', '선택한 대분류를 삭제하시겠습니까?',
                            function () {
                                console.log("대분류 삭제")
                                $('#flag').val('Big_Detail_Del');
                                $('#form1').submit();
                            }, function (error) { _popModal.Alert('', error); });
                        
                    }
                    else{
                        _popModal.Alert('', '기본 카테고리는 삭제불가 합니다.');
                    }
                }

                    //중분류
                else if( SUB_CHOICE != 0 &&  CHOICE == 0 ){
                    _popModal.Promt('알림', '선택한 중분류를 삭제하시겠습니까?',
                        function () {
                            console.log("중분류 삭제")
                            $('#flag').val('Sub_Detail_Del');
                            $('#form1').submit();
                        }, function (error) { _popModal.Alert('', error); });
                }

                else{
                    //_popModal.Alert('', '삭제할 카테고리가 선택되지 않았습니다.');
                    console.log("삭제할 카테고리가 선택되지 않았습니다")
                }

            });

            //추가버튼


            //대분류 디테일 저장이나 조회 후 처리
            if(big_Detail_Save == "Y" || big_Detail_Inquery == "Y"){
                // 1.디테일 영역 출력
                $(".category_Contents_Area").show();
                // 2. 디테일 카테고리명 추가 , sid로 text 추출
                var detail_Category_Name = $("#"+CHOICE).text();
                $("input[name='D_TITLE']").val(detail_Category_Name.trim());
                // 3. 클릭했던 대분류 카테고리가 있을경우 클릭된 css 처리, 실제 클릭시켰더니 무한 form.submit 때문에
                // 이렇게 처리하고 클릭했던 대분류 sid는 CHOICE 로 제어
                $(".big_Cate_Info").removeClass('clicked');
                $("#"+CHOICE).addClass('clicked');
                // 4. 삭제버튼 활성화 
                $(".del_Btn").removeClass('big_Cate_Btn_Active');
                $(".del_Btn").addClass('big_Cate_Btn_Active');
            }
            

            //////////////////////
            ///////////중분류 관련

            //중분류 디테일 저장이나 조회 후 처리
            if(sub_Detail_Save == "Y" || sub_Detail_Inquery == "Y"){
                // 1.디테일 영역 출력
                $(".d_category_Contents_Area").show();
                // 2. 디테일 카테고리명 추가 , sid로 text 추출
                var detail_Category_Name = $("#"+SUB_CHOICE).text().replace(/└/g, '').trim();;
                $("input[name='D_SUB_TITLE']").val(detail_Category_Name);
                // 3. 클릭했던 중분류 카테고리가 있을경우 클릭된 css 처리, 실제 클릭시켰더니 무한 form.submit 때문에
                // 이렇게 처리하고 클릭했던 대분류 sid는 CHOICE 로 제어
                $(".sub_Cate_Info").removeClass('clicked');
                $("#"+SUB_CHOICE).addClass('clicked');
                // 4. 삭제버튼 활성화 
                $(".del_Btn").removeClass('big_Cate_Btn_Active');
                $(".del_Btn").addClass('big_Cate_Btn_Active');
            }

            //중분류 카테고리 추가 버튼
            $('.sub_Category_Add_Btn').on('click', function () {
                var limit = 3;
                var sub_Category = $(".sub_Category_record").length;
                
                //기본 대분류 4개(셀럽,이벤트,매거진,리뷰)
                if (limit >= sub_Category) {
                    var _template = $('#POPUP_RECORD_SUB').html();
                    let _sid = getNewSid_Sub_Record();
                    let _seq = getNewSeq_Sub_Record();

                    _template = _template.replace(/{SUB_SID}/g, _sid);
                    _template = _template.replace(/{SUB_SEQ}/g, _seq);
                    $('.sub_template_add_here').append(_template);
                }
                else{
                    _popModal.Alert('', '중분류 카테고리를 최대생성 하셨습니다.');
                }

            });
            //중분류 저장 버튼
            $('#sub_Cate_Save_Btn').on('click', function () {
                var SUB_TITLE_CHECK = false; // SUB_TITLE 중분류명 체크 변수

                //1개 이상의 레코드 작성 체크
                var record_Length = $(".sub_Category_record").length;
                if (record_Length > 0) {
                    //대분류명 값 체크
                    $('input[name^="SUB_TITLE"]').each(function () {
                        if ($(this).val() === "") {
                            SUB_TITLE_CHECK = true;
                            return false;
                        }
                    });
                    if (SUB_TITLE_CHECK) {
                        _popModal.Alert('', '중분류명을 입력해주세요.');
                    } 
                    console.log("중분류 저장")
                    // 중분류 저장 
                    $('#flag').val('save_Sub_Category');
                    $('#form1').submit();
                }
                else {
                    $('#flag').val('save_Sub_Category');
                    $('#form1').submit();
                    //_popModal.Alert('', '카테고리 추가 버튼을 통해, 1개 이상의 카테고리 정보를 입력해주세요.');
                }

            });
                
            //중분류 카테고리 클릭
            $('.sub_Cate_Info').on('click', function () {
                //중분류 SUB_CHOICE_SID 에 sid 값 넣음
                var Sub_Cate_Sid = $(this).attr("id");
                $("input[name='SUB_CHOICE_SID']").val(Sub_Cate_Sid);
                console.log("SUB_CHOICE_SID VAL() : ", $("input[name='SUB_CHOICE_SID']").val() )
                //대분류 CHOICE_SID 공백으로 초기화
                $("input[name='CHOICE_SID']").val("");
                //대분류 클릭 css 제거
                $(".big_Cate_Info").removeClass('clicked');
                //중분류 텍스트 네임이 D_SUB_TITLE 에 값 전달
                var textValue = $(this).text().replace(/└/g, '').trim();
                $("input[name='D_SUB_TITLE']").val(textValue);
                //중분류 CHOICE_SID 가 있으면 form_submit
                if( $("input[name='SUB_CHOICE_SID']").val() != "" && $("input[name='SUB_CHOICE_SID']").val() != null ){
                    showProgress();
                    $('#flag').val('Sub_Detail_Inquery');
                    $('#form1').submit();
                }
            });

            //중분류 카테고리 바인드 - 선택추가
            $('#add-cate').on('click', function () {
                let _checkData = $('input:checkbox[name="CATE_LIST"]:checked');
                if (_checkData.length == 0) {
                    _popModal.Alert('알림', '하나이상의 카테고리를 선택해주세요.');
                    return;
                }

                _checkData.each(function (index, item) {
                    let _AuthId = $(item).val();
                    let _PTr = $(item).parents('tr');
                    _PTr.find('input:checkbox[name="CATE_LIST"]').prop('name', 'CATE_LIST_CHOICE');
                    let _newInput = `<input type="hidden" name="CATE_SID" value="${_AuthId}" />`;
                    _PTr.find('.drkid-checkbox').after($(_newInput));
                    $('#CHOICE_TBODY').append(_PTr);
                });
            });

            //중분류 카테고리 바인드 - 선택 제거
            $('#remove-cate').on('click', function () {
                let _checkData = $('input:checkbox[name="CATE_LIST_CHOICE"]:checked');
                if (_checkData.length == 0) {
                    _popModal.Alert('알림', '하나이상의 권한을 선택해주세요.');
                    return;
                }
                _checkData.each(function (index, item) {
                    let _PTr = $(item).parents('tr');
                    _PTr.find('input:checkbox[name="CATE_LIST_CHOICE"]').prop('name', 'CATE_LIST');
                    _PTr.find('input[name="CATE_SID"]').remove();
                    $('#COMMON_TBODY').append(_PTr);
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
            //상품 조회 버튼
            $("#openModalButton").on("click", function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    console.log(data);
                var total_count = data.length;
                console.log("total_count: ",total_count)
                let html,html1;
               
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
                    html = html.replace(/{PARENT_SID_VAL}/g, CHOICE); 
                    html = html.replace(/{ORDER_SEQ_VAL}/g, i);
                    $("#bigM").append(html);
                }
                $("#content_product_count").text(total_count+" 개");
                
               
            }).catch((err) => {
                console.log(err);
        });
        });

        $('#all-select-class').on('change', function (e) {
            allCheck(e.currentTarget);
        });

        
           
        //대분류,중분류 조회 후 hideprogress()
        if(inquiry_flag == "Y"){
            hideProgress();
        }
        if(save_flag == "Y"){
            hideProgress();
            _popModal.Alert('', '저장되었습니다.');
        }
        if(del_flag == "Y"){
            hideProgress();
            _popModal.Alert('', '삭제되었습니다.');
        }
        });
        


    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="USED_TYPE_LIST" id="USED_TYPE_LIST" value="" />
        <%--대분류--%>
        <input type="text" name="CHOICE_SID" id="CHOICE_SID" value="<%=CHOICE_SID%>" />
        <input type="text" name="CHOICE_USED_TYPE" id="CHOICE_USED_TYPE" value="" />
        <input type="text" name="PROD_BIND_FLAG" value="<%=VIEW_USED_TYPE%>" />
        <%--중분류--%>
        <input type="text" name="SUB_CHOICE_SID" id="SUB_CHOICE_SID" value="<%=SUB_CHOICE_SID%>" />

    </div>
    <div class="sub-warp">
        <div class="sub-warp-title custom-sub-warp-title">
            <div><span class="middle-font custom-sub-warp-txt "><%=pageAuth.nowtitle %></span></div>
            <div class="info_Icon_Area"></div>
        </div>
         <div class="sub-content-wrap">
            <div class="custom-table-wraper">
                <%--전체 영역--%>
                <div class="all_Wrap">
                    <%--좌측 영역--%>
                    <div class="left_Wrap">
                        <%--전시 카테고리 박스--%>
                        <div class="category_Box_Area">
                            <div class="category_Box">
                                <%--박스 상단--%>
                                <div class="category_Top_Area">
                                    <div class="category_Top lowerst-font main_color">전시 카테고리</div>
                                </div>
                                <%--박스 중단(카테고리 내용)--%>
                                <div class="category_Middle_Area">
                                    <div class="category_Middle">
                                        <div class="big_Category_Add_Btn_Area">
                                            <div class="lowerst-font drkid-btn td-btn drkid-btn-active big_Category_Add_Btn" id="big_Category_Add_Btn">대분류 카테고리 추가</div>
                                        </div>
                                        <%--팝업--%>
                                        <div class="category_Popup_Area">
                                        
                                            <div class="category_Popup">
                                                <%--팝업상단--%>
                                                <div class="category_Popup_Top_Area">
                                                    <div class="category_Popup_Top">
                                                        <div class="middle-font category_Popup_Top_Txt">대분류 카테고리 추가</div>
                                                        <div class="popup_Cnasle_Area"><span class="clear-icon drkid-icon popup_Cnasle" id="popup_Cansle"></span></div>
                                                    </div>
                                                </div>
                                                <%--중단--%>
                                                <div class="category_Popup_Middle_Area">
                                                    <div class="category_Popup_Middle">
                                                        <%--전체 대분류 카테고리 인풋 레코드--%>
                                                        <div class="big_Category_record_Area">
                                                            <div class="template_add_here"></div>
                                                        </div>
                                                        
                
                                                        <%--카테고리 추가 버튼--%>
                                                        <div class="popup_Category_Add_Btn_Area">
                                                            <div class="lowerst-font drkid-btn td-btn drkid-btn-active popup_Category_Add_Btn">카테고리 추가</div>
                                                        </div>

                                                        <%--대분류 카테고리 안내 텍스트--%>
                                                        <div class="big_Category_Guidetxt_Area">
                                                            <div class="lowerst-font mono_sub_color big_Category_Guidetxt">대분류 카테고리는 5개까지 추가 가능합니다.</div>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                                <%--하단--%>
                                                <div class="category_Popup_Bottom_Area">
                                                    <div class="category_Popup_Bottom">
                                                        <%--대분류 취소, 저장 버튼--%>
                                                        <div class="popup_Bottom_Btn_Area">
                                                            <div class="lowerst-font drkid-btn td-btn Popup_Bottom_Cansle">취소</div>
                                                            <div class="lowerst-font drkid-btn td-btn drkid-btn-active Popup_Bottom_Save">저장</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--대분류 카테고리 리스트--%>
                                        <div class="big_Category_List">
                                               <%if (viewTable.Rows.Count > 0)
                                                {%>
                                                     <%for (int i = 0; i < viewTable.Rows.Count; i++)
                                                    { %>
                                                        <%--사용자 생성 대분류는 COMMON--%>
                                                        <%if (viewTable.Rows[i]["BIG_CATE_TYPE"].ToString() == "COMMON")
                                                         {%>
                                                            <div data-info="<%=viewTable.Rows[i]["VIEW_SID"] %>" class="cate_Wrap_Common">
                                                        <%}%> 
                                                         <%else
                                                           {%>
                                                              <div data-info="<%=viewTable.Rows[i]["VIEW_SID"] %>" class="cate_Wrap">
                                                         <%}%> 
                                                         
                                                             <div class="lower-font main_color big_Cate_Info" id="<%=viewTable.Rows[i]["VIEW_SID"] %>" data-value="<%=viewTable.Rows[i]["BANNER_FLAG"] %>" data-info="<%=viewTable.Rows[i]["USED_TYPE"] %>"><%=viewTable.Rows[i]["TITLE"] %>
                                                                 <input type="hidden" name="M_VIEW_SID" value="<%=viewTable.Rows[i]["VIEW_SID"] %>"/>
                                                                 <input type="hidden" name="M_VIEW_SEQ" value="<%=viewTable.Rows[i]["VIEW_SEQ"] %>"/>
                                                             </div>
                                                              <%--중분류 있으면 출력--%>
                                                                 <%if (subViewTable.Rows.Count > 0)
                                                                 {%>
                                                                        <%for (int h = 0; h < subViewTable.Rows.Count; h++)
                                                                       {%>
                                                                            <%if ( viewTable.Rows[i]["VIEW_SID"].ToString() == subViewTable.Rows[h]["PARENT_SID"].ToString())
                                                                             {%>   
                                                                                    <div class="mono_sub_color lowerst-font sub_Cate_Info" id="<%=subViewTable.Rows[h]["VIEW_SID"]%>">└ <%=subViewTable.Rows[h]["TITLE"]%></div>
                                                                            <%}%>
                                                                        <%}%>
                                                                 <%}%>  
                                                            </div>

                                                     <%}%> 
                                             <%}%> 
                                        </div>
                                        

                                    </div>
                                    
                                </div>
                                <%--박스 하단 추가, 삭제 버튼--%>
                                <div class="category_Bottom_Area">
                                    <div class="category_Box_Btn_Area">
                                        <div class="mono_dea_color lowerst-font add_Btn"id="big_Cate_Save">저장</div>
                                        <div class="mono_dea_color lowerst-font del_Btn">삭제</div>
                                    </div>
                                </div>
                            </div>

                            <%--위아래 버튼--%>
                            <div class="liner-icon-wraper custom-liner-icon-wraper">
                                <span class="drkid-icon arrow-big up-arrow" id="big-up-arrow" data-value="" ></span>
                                <span class="drkid-icon arrow-big down-arrow" id="big-down-arrow"data-value="" ></span>
                            </div>
                        </div>
                    </div>
       
                    <%--오른쪽 영역--%>
                    <div class="right_Wrap">
                        <%--안내텍스트--%>
                        <div class="guid_Txt_Area">
                            <div class="lowerst-font mono_sub_color">- 직접 카테고리를 만들어 자유롭게 상품을 전시할 수 있습니다.</div>
                            <div class="lowerst-font mono_sub_color">- 대분류 중분류 카테고리의 작성, 삭제, 편집이 가능합니다. (대분류 최대9가지, 중분류 최대4가지)</div>
                            <div class="lowerst-font mono_sub_color">- 카테고리 순서는 동일 레벨 내에서만 순서 이동이 가능합니다.</div>
                            <div class="lowerst-font mono_sub_color">- 대분류 중분류 카테고리를 선택하면 상세정보를 볼수있고 수정도 가능합니다.</div>
                        </div>


                        <%if (mainTable.Rows.Count > 0)
                        {%>  

                            <%--카테고리 컨텐츠 영역(수정하는 영역)--%>
                                <div class="category_Contents_Area">
                                    <%--디폴트--%>
                                    <%--카테고리 명--%>
                                    <div class="category_Contents">
                                        <div class="lowerst-font category_Contents_Txt">카테고리명</div>
                                        <div class="lowerst-font category_Contents_Input">
                                            <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="D_TITLE" value="" maxlength="20" />
                                        </div>
                                    </div>
                                    <% if (VIEW_USED_TYPE == "CATE")
                                    { %>
                                        <%--카테고리 대표이미지 사용유무 라디오--%>
                                         <div class="category_Contents">
                                            <div class="lowerst-font category_Contents_Txt">카테고리 대표이미지</div>
                                            <div class="lowerst-font category_Contents_Input">
                                                    <label class="drkid-radio">
                                                        <input type="radio" name="TITLE_IMG_FLAG" value="Y" <%=TITLE_IMG_FLAG == "Y" ? "checked=\"checked\"" : "" %>/>
                                                        <span class="radio-txt lowerst-font">사용</span>
                                                    </label>
                                                    <label class="drkid-radio">
                                                        <input type="radio" name="TITLE_IMG_FLAG" value="N" <%=TITLE_IMG_FLAG == "N" ? "checked=\"checked\"" : "" %> />
                                                        <span class="radio-txt lowerst-font">사용안함</span>
                                                  </label>
                                            </div>
                                        </div>

                                    <%if (REPRESENT_IMAGE_TABLE != null && REPRESENT_IMAGE_TABLE.Rows.Count > 0)
                                    {%>
                                      <%for (int r = 0; r < REPRESENT_IMAGE_TABLE.Rows.Count; r++) 
                                        { %>

                                            <div class="pc_Mobile_Area sub_pc_Mobile_Area2">
                                            <input type="hidden" name="CATE_BIG_MAIN_SID" value="<%=REPRESENT_IMAGE_TABLE.Rows[r]["MAIN_SID"] %>" />
                                                <div class="empty_Space"></div>
                                                <div class="pc_Mobile_Wrap">
                                          
                                                    <div class="column_2_Area_1">
                                                        <div class="column_2_Area_1_txt1">PC</div>
                                                        <div class="img_wrap_200 img_wrap" id="sub_pc_img_wrap_6" style="width: 400px; height: 202px;">
                                                        <%--<img src="/Source/image/no_img.svg" class="no_img"/>--%>
                                                            <input type='hidden' name='image_upload_byte2' value=''/>
                                                            <input type='hidden' name='image_upload_name2' value='<%=REPRESENT_IMAGE_TABLE.Rows[r]["SOURCE_FILE_NAME"] %>'/>
                                                            <input type='hidden' name='image_upload_ext2' value='<%=REPRESENT_IMAGE_TABLE.Rows[r]["EXT"] %>'/>
                                                            <input type='hidden' name='image_upload_sid2' value='<%=REPRESENT_IMAGE_TABLE.Rows[r]["EDM_SID"] %>'/>
                                                            <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=REPRESENT_IMAGE_TABLE.Rows[r]["TARGET_READ_PATH"] %>'/>
                                                        </div>
                                                        <div class="column_2_Area_1_txt2">
                                                            <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                                                            <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                                            <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                                        </div>
                                                        <div class="column_2_Area_1_txt3">
                                                            <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                                        </div>
                                                        <div class="img_Btn_Area">
                                                            <div class="img_Btn lowerst-font pc_img_Btn" id="pc_img_Btn_6"  onclick="upload_pc_test(7)">이미지 등록</div>
                                                            <div class="img_Btn lowerst-font pcimg_Del_Btn" id="sub_del_pc_btn_6" onclick="del_CATE_BIG_image();">삭제</div>
                                                        </div>
                                                    </div>
                                    
                                                </div>
                                            </div>
                                       <%}%>
                                    <%}%>
                                     <%else 
                                    {%>

                                        <div class="pc_Mobile_Area sub_pc_Mobile_Area2">
                                        <input type="hidden" name="CATE_BIG_MAIN_SID" value="-1" />
                                            <div class="empty_Space"></div>
                                            <div class="pc_Mobile_Wrap">
                                          
                                                <div class="column_2_Area_1">
                                                    <div class="column_2_Area_1_txt1">PC</div>
                                                    <div class="img_wrap_200 img_wrap" id="sub_pc_img_wrap_6" style="width: 400px; height: 202px;">
                                                    <img src="/Source/image/no_img.svg" class="no_img"/>
                                                    <%--    <input type='hidden' name='image_upload_byte' value=''/>
                                                        <input type='hidden' name='image_upload_name' value='<%=subCateTable.Rows[y]["SOURCE_FILE_NAME"] %>'/>
                                                        <input type='hidden' name='image_upload_ext' value='<%=subCateTable.Rows[y]["EXT"] %>'/>
                                                        <input type='hidden' name='image_upload_sid' value='<%=subCateTable.Rows[y]["EDM_SID"] %>'/>
                                                        <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=subCateTable.Rows[y]["TARGET_READ_PATH"] %>'/>--%>
                                                    </div>
                                                    <div class="column_2_Area_1_txt2">
                                                        <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                                                        <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                                        <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                                    </div>
                                                    <div class="column_2_Area_1_txt3">
                                                        <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                                    </div>
                                                    <div class="img_Btn_Area">
                                                        <div class="img_Btn lowerst-font pc_img_Btn" id="pc_img_Btn_6"  onclick="upload_pc_test(7)">이미지 등록</div>
                                                        <div class="img_Btn lowerst-font pcimg_Del_Btn" id="sub_del_pc_btn_6" onclick="del_CATE_BIG_image();">삭제</div>
                                                    </div>
                                                </div>
                                    
                                            </div>
                                        </div>

                                    <%}%>

                                 <%}%>









                                    <%--배너 사용유무 라디오--%>
                                    <div class="category_Contents">
                                        <div class="lowerst-font category_Contents_Txt">카테고리 배너</div>
                                        <div class="lowerst-font category_Contents_Input">
                                                <label class="drkid-radio">
                                                    <input type="radio" name="BANNER_FLAG" value="Y" <%=VIEW_BANNER_FLAG == "Y" ? "checked=\"checked\"" : "" %>/>
                                                    <span class="radio-txt lowerst-font">사용</span>
                                                </label>
                                                <label class="drkid-radio">
                                                    <input type="radio" name="BANNER_FLAG" value="N" <%=VIEW_BANNER_FLAG == "N" ? "checked=\"checked\"" : "" %>/>
                                                    <span class="radio-txt lowerst-font">사용안함</span>
                                              </label>
                                        </div>
                                    </div>

                            <div class="category_Contents_Banner">
                             <%for (int i = 0; i < mainTable.Rows.Count; i++)
                             { %>
                                    <%--pc,모바일--%>
                                    <div class="pc_Mobile_Area" id="pc_Mobile_Area_<%=i+1%>">
                                     <%--PC/MOBILE이미지 등록 영역--%>
                                     <input type="hidden" name="MAIN_SID" value="<%=mainTable.Rows[i]["MAIN_SID"] %>" />
                                     <input type="hidden" name="MAIN_SEQ" value="<%=mainTable.Rows[i]["ORDER_SEQ"] %>" />
                                        <div class="empty_Space"></div>
                                        <div class="pc_Mobile_Wrap">
                                              <%if (bannerTable != null)
                                             {%>  
                                                 <%for (int j = 0; j < bannerTable.Rows.Count; j++)
                                                 { %>
                                                    <%if (bannerTable.Rows[j]["BANNER_TYPE"].ToString() == "WEB" && mainTable.Rows[i]["MAIN_SID"].ToString() == bannerTable.Rows[j]["PARENT_SID"].ToString())
                                                    {%> 

                                                        <%--pc--%>
                                                        <input type="hidden" name="BANNER_SID" value="<%=bannerTable.Rows[j]["BANNER_SID"]%>" />
                                                        <input type="hidden" name="PARENT_SID" value="<%=bannerTable.Rows[j]["PARENT_SID"]%>" />
                                                        <input type="hidden" name="BANNER_TYPE" value="<%=bannerTable.Rows[j]["BANNER_TYPE"]%>" />
                                                        <div class="column_2_Area_1">
                                                            <div class="column_2_Area_1_txt1">PC</div>
                                                            <div class="img_wrap_200 img_wrap" id="pc_img_wrap_<%=i%>" style="width: 400px; height: 202px;">
                                                                <%--<img src="/Source/image/no_img.svg" class="no_img" id="pc_no_img" />--%>
                                                                 <input type='hidden' name='image_upload_byte' value=''/>
                                                                <input type='hidden' name='image_upload_name' value='<%=bannerTable.Rows[j]["SOURCE_FILE_NAME"] %>'/>
                                                                <input type='hidden' name='image_upload_ext' value='<%=bannerTable.Rows[j]["EXT"] %>'/>
                                                                <input type='hidden' name='image_upload_sid' value='<%=bannerTable.Rows[j]["EDM_SID"] %>'/>
                                                                <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=bannerTable.Rows[j]["TARGET_READ_PATH"] %>'/>
                                                            </div>
                                                    <%}%>
                                                <%}%>

                                                            
                                                            <div class="column_2_Area_1_txt2">
                                                                <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                                                                <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                                                <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                                            </div>
                                                            <div class="column_2_Area_1_txt3">
                                                                <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                                            </div>
                                                            <div class="img_Btn_Area">
                                                                <div class="img_Btn lowerst-font pc_img_Btn" id="pc_img_Btn_<%=i%>" data-value="<%=i%>" onclick="upload_pc_test(<%=i+1%>)">이미지 등록</div>
                                                                <div class="img_Btn lowerst-font pcimg_Del_Btn" id="del_pc_btn_<%=i%>" data-value="<%=i%>" onclick="del_pc_test(<%=i%>);">삭제</div>
                                                            </div>
                                                        </div>


                                             <%for (int z = 0; z < bannerTable.Rows.Count; z++)
                                            { %>  
                                                <%  if (bannerTable.Rows[z]["BANNER_TYPE"].ToString() == "MOBILE" && mainTable.Rows[i]["MAIN_SID"].ToString() == bannerTable.Rows[z]["PARENT_SID"].ToString())
                                                { %>
                                                    <%--모바일--%>
                                                    <input type="hidden" name="BANNER_SID" value="<%=bannerTable.Rows[z]["BANNER_SID"]%>" />
                                                    <input type="hidden" name="PARENT_SID" value="<%=bannerTable.Rows[z]["PARENT_SID"]%>" />
                                                    <input type="hidden" name="BANNER_TYPE" value="<%=bannerTable.Rows[z]["BANNER_TYPE"]%>" />
                                                    <div class="column_2_Area_2">
                                                        <div class="column_2_Area_1_txt1">모바일</div>
                                                        <div class="img_wrap_200 img_wrap" id="mobile_img_wrap_<%=i%>" style="width: 400px; height: 202px;">
                                                            <%--<img src="/Source/image/no_img.svg" class="no_img" id="mobile_no_img" />--%>
                                                             <input type='hidden' name='image_upload_byte' value=''/>
                                                            <input type='hidden' name='image_upload_name' value='<%=bannerTable.Rows[z]["SOURCE_FILE_NAME"] %>'/>
                                                            <input type='hidden' name='image_upload_ext' value='<%=bannerTable.Rows[z]["EXT"] %>'/>
                                                            <input type='hidden' name='image_upload_sid' value='<%=bannerTable.Rows[z]["EDM_SID"] %>'/>
                                                            <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=bannerTable.Rows[z]["TARGET_READ_PATH"] %>'/>
                                                        </div>
                                                 <%}%>  
                                            <%}%> 
                                                        <div class="column_2_Area_1_txt2">
                                                            <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                                                            <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                                            <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                                        </div>
                                                        <div class="column_2_Area_1_txt3">
                                                            <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                                        </div>
                                                        <div class="img_Btn_Area">
                                                            <div class="img_Btn lowerst-font mobile_img_Btn" id="mobile_img_Btn_<%=i%>" data-value="<%=i%>" onclick="upload_mb_test(<%=i+1%>);">이미지 등록</div>
                                                            <div class="img_Btn lowerst-font mbimg_Del_Btn" id="del_mb_btn_<%=i%>" data-value="<%=i%>" onclick="del_mobile_test(<%=i%>);">삭제</div>
                                                        </div>
                                                    </div>

                                                    <%--배너 x버튼--%>
                                                    <div class="popup_Record_Cansle_Area B_popup_Record_Cansle_Area" onclick="del_template(<%=i+1%>)" >
                                                        <div class="popup_Record_Cansle_Layout">
                                                            <span class="clear-icon drkid-icon popup_Record_Cansle"></span>
                                                        </div>
                                                    </div>
                                        </div>
                                         <%--배너 URL--%>
                                        <div class="category_Contents">
                                            <div class="lowerst-font category_Contents_Txt">배너 URL</div>
                                            <div class="lowerst-font category_Contents_Url">
                                                <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="I_URL" value="<%=mainTable.Rows[i]["URL"]%>" maxlength="250" />
                                            </div>
                                        </div>
                                    </div>
       
                                  <%}%>  
                                <%}%>
                                
                                 <%--반복문 여기서 끊어야함--%>
                                    <div class="add_Upload_Img_Here"></div>

                                    <%--카테고리 + 버튼--%>
                                    <div class="banner_Add_Btn_Area">
                                        <div class="big-font banner_Add_Btn">+</div>
                                    </div>
                            </div>
                                    <%--USED_TYPE에 따른 UI--%>
                                    <%  if (VIEW_USED_TYPE == "CATE")
                                    { %>
                                        <div class="CATE_UI_AREA">
                                            <div class="CATE_UI_Wrap">
                                                <div class="CATE_UI_Title_Area">
                                                    <div class="lowerst-font CATE_UI_Title">중분류 카테고리 추가</div>
                                                </div>
                                                <div class="CATE_UI_Middle_Area">
                                                    <div class="CATE_UI_Middle">
                                                        <div class="sub_Category_record_Area">
                                                            <div class="sub_template_add_here">
                                                                
                                                                 <%if (subdataTable != null && subdataTable.Rows.Count > 0)
                                                                   {%>  
                                                                     <%for (int s = 0; s < subdataTable.Rows.Count; s++)
                                                                    { %>  
                                                                        <%--개별 레코드--%>
                                                                        <div class="sub_Category_record" id="sub_Category_record_<%=s+1%>">
                                                                        <input type="hidden" name="SUB_VIEW_SID" value="<%=subdataTable.Rows[s]["VIEW_SID"] %>" />
                                                                        <input type="hidden" name="SUB_VIEW_SEQ" value="<%=subdataTable.Rows[s]["VIEW_SEQ"] %>" />
                               
                                                                            <div class="SUB_TITLE_WRAP">
                                                                                <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="SUB_TITLE" value="<%=subdataTable.Rows[s]["TITLE"] %>" placeholder="대분류명을 입력하세요" maxlength="20" />
                                                                            </div>
                                                                            <%--레코드 X 버튼--%>
                                                                            <div class="popup_Record_Cansle_Area"  onclick="sub_del_Record(<%=s+1%>);">
                                                                                <div class="popup_Record_Cansle_Layout">
                                                                                    <span class="clear-icon drkid-icon popup_Record_Cansle"></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                   <%}%>
                                                                <%}%>

                                                            </div>
                                                            <%--카테고리 추가 버튼--%>
                                                            <div class="popup_Category_Add_Btn_Area">
                                                                <div class="lowerst-font drkid-btn td-btn drkid-btn-active sub_Category_Add_Btn">카테고리 추가</div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <%--하단--%>
                                                    <div class="CATE_UI_Bottom">
                                                        <%--대분류 취소, 저장 버튼--%>
                                                        <div class="popup_Bottom_Btn_Area">
                                                            <%--<div class="lowerst-font drkid-btn td-btn ">취소</div>--%>
                                                            <div class="lowerst-font drkid-btn td-btn drkid-btn-active" id="sub_Cate_Save_Btn">저장</div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    <%}%>

                                    <%  if (VIEW_USED_TYPE == "PROD")
                                    { %>
                                        <div class="PROD_UI_AREA">
                                                <div class="PROD_UI_Wrap">
                                                    <div class="category_txt lowerst-font"><span class="drkid_Negative_color lowerst-font">&nbsp;</span>상품연결</div>
                                                    <div>
                                                        <div>
                                                            <div class="drkid-btn-sub2 drkid-btn-active" id="openModalButton" data-class-code="POP_PRODUCT" data-title="상품 조회" data-target="COMMON_POPUP_2">
                                                                <span class="lowerst-font">상품조회
                                                                </span>
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
                                                                                    <input type='hidden' name='B_PARENT_SID' value= "<%=prodTable.Rows[j]["PARENT_OBJECT_SID"] %>"/>
                                                                                    <input type="hidden" name="RELATION_ORDER_SEQ" value="<%=prodTable.Rows[j]["RELATION_ORDER_SEQ"] %>" />
                                                                                </tr>
                                                                        <%}%>
                                                                    <%}%>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--상품연결 리스트 끝--%>
                                         </div>
                                    <%}%>
                                </div>
                        <%}%>
                        <%if (mainTable.Rows.Count == 0)
                       {%>
                            <%--카테고리 컨텐츠 영역(수정하는 영역)--%>
                            <div class="category_Contents_Area">
                                <%--디폴트--%>
                                <%--카테고리 명--%>
                                <div class="category_Contents">
                                    <div class="lowerst-font category_Contents_Txt">카테고리명</div>
                                    <div class="lowerst-font category_Contents_Input">
                                        <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="D_TITLE" value="" maxlength="20" />
                                    </div>
                                </div>

                             <% if (VIEW_USED_TYPE == "CATE")
                                    { %>
                                        <%--카테고리 대표이미지 사용유무 라디오--%>
                                         <div class="category_Contents">
                                            <div class="lowerst-font category_Contents_Txt">카테고리 대표이미지</div>
                                            <div class="lowerst-font category_Contents_Input">
                                                    <label class="drkid-radio">
                                                        <input type="radio" name="TITLE_IMG_FLAG" value="Y" <%=TITLE_IMG_FLAG == "Y" ? "checked=\"checked\"" : "" %>/>
                                                        <span class="radio-txt lowerst-font">사용</span>
                                                    </label>
                                                    <label class="drkid-radio">
                                                        <input type="radio" name="TITLE_IMG_FLAG" value="N" <%=TITLE_IMG_FLAG == "N" ? "checked=\"checked\"" : "" %> />
                                                        <span class="radio-txt lowerst-font">사용안함</span>
                                                  </label>
                                            </div>
                                        </div>

                                   <%if (REPRESENT_IMAGE_TABLE != null && REPRESENT_IMAGE_TABLE.Rows.Count > 0)
                                    {%>
                                      <%for (int r = 0; r < REPRESENT_IMAGE_TABLE.Rows.Count; r++) 
                                        { %>

                                            <div class="pc_Mobile_Area sub_pc_Mobile_Area2">
                                            <input type="hidden" name="CATE_BIG_MAIN_SID" value="<%=REPRESENT_IMAGE_TABLE.Rows[r]["MAIN_SID"] %>" />
                                                <div class="empty_Space"></div>
                                                <div class="pc_Mobile_Wrap">
                                          
                                                    <div class="column_2_Area_1">
                                                        <div class="column_2_Area_1_txt1">PC</div>
                                                        <div class="img_wrap_200 img_wrap" id="sub_pc_img_wrap_6" style="width: 400px; height: 202px;">
                                                        <%--<img src="/Source/image/no_img.svg" class="no_img"/>--%>
                                                            <input type='hidden' name='image_upload_byte2' value=''/>
                                                            <input type='hidden' name='image_upload_name2' value='<%=REPRESENT_IMAGE_TABLE.Rows[r]["SOURCE_FILE_NAME"] %>'/>
                                                            <input type='hidden' name='image_upload_ext2' value='<%=REPRESENT_IMAGE_TABLE.Rows[r]["EXT"] %>'/>
                                                            <input type='hidden' name='image_upload_sid2' value='<%=REPRESENT_IMAGE_TABLE.Rows[r]["EDM_SID"] %>'/>
                                                            <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=REPRESENT_IMAGE_TABLE.Rows[r]["TARGET_READ_PATH"] %>'/>
                                                        </div>
                                                        <div class="column_2_Area_1_txt2">
                                                            <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                                                            <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                                            <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                                        </div>
                                                        <div class="column_2_Area_1_txt3">
                                                            <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                                        </div>
                                                        <div class="img_Btn_Area">
                                                            <div class="img_Btn lowerst-font pc_img_Btn" id="pc_img_Btn_6"  onclick="upload_pc_test(7)">이미지 등록</div>
                                                            <div class="img_Btn lowerst-font pcimg_Del_Btn" id="sub_del_pc_btn_6" onclick="del_CATE_BIG_image();">삭제</div>
                                                        </div>
                                                    </div>
                                    
                                                </div>
                                            </div>
                                       <%}%>
                                    <%}%>
                                     <%else 
                                    {%>

                                        <div class="pc_Mobile_Area sub_pc_Mobile_Area2">
                                        <input type="hidden" name="CATE_BIG_MAIN_SID" value="-1" />
                                            <div class="empty_Space"></div>
                                            <div class="pc_Mobile_Wrap">
                                          
                                                <div class="column_2_Area_1">
                                                    <div class="column_2_Area_1_txt1">PC</div>
                                                    <div class="img_wrap_200 img_wrap" id="sub_pc_img_wrap_6" style="width: 400px; height: 202px;">
                                                    <img src="/Source/image/no_img.svg" class="no_img"/>
                                                    <%--    <input type='hidden' name='image_upload_byte' value=''/>
                                                        <input type='hidden' name='image_upload_name' value='<%=subCateTable.Rows[y]["SOURCE_FILE_NAME"] %>'/>
                                                        <input type='hidden' name='image_upload_ext' value='<%=subCateTable.Rows[y]["EXT"] %>'/>
                                                        <input type='hidden' name='image_upload_sid' value='<%=subCateTable.Rows[y]["EDM_SID"] %>'/>
                                                        <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=subCateTable.Rows[y]["TARGET_READ_PATH"] %>'/>--%>
                                                    </div>
                                                    <div class="column_2_Area_1_txt2">
                                                        <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                                                        <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                                        <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                                    </div>
                                                    <div class="column_2_Area_1_txt3">
                                                        <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                                    </div>
                                                    <div class="img_Btn_Area">
                                                        <div class="img_Btn lowerst-font pc_img_Btn" id="pc_img_Btn_6"  onclick="upload_pc_test(7)">이미지 등록</div>
                                                        <div class="img_Btn lowerst-font pcimg_Del_Btn" id="sub_del_pc_btn_6" onclick="del_CATE_BIG_image();">삭제</div>
                                                    </div>
                                                </div>
                                    
                                            </div>
                                        </div>

                                    <%}%>

                                 <%}%>




                                <%--배너 사용유무 라디오--%>
                                <div class="category_Contents">
                                    <div class="lowerst-font category_Contents_Txt">카테고리 배너</div>
                                    <div class="lowerst-font category_Contents_Input">
                                            <label class="drkid-radio">
                                                <input type="radio" name="BANNER_FLAG" value="Y" />
                                                <span class="radio-txt lowerst-font">사용</span>
                                            </label>
                                            <label class="drkid-radio">
                                                <input type="radio" name="BANNER_FLAG" value="N"  checked="checked" />
                                                <span class="radio-txt lowerst-font">사용안함</span>
                                          </label>
                                    </div>
                                </div>

                            <div class="category_Contents_Banner">
                                <%--pc,모바일--%>
                                <div class="pc_Mobile_Area" id="pc_Mobile_Area_1">
                                 <%--PC/MOBILE이미지 등록 영역--%>
                                 <input type="hidden" name="MAIN_SID" value="-1" />
                                 <input type="hidden" name="MAIN_SEQ" value="1" />
                                    <div class="empty_Space"></div>
                                    <div class="pc_Mobile_Wrap">
                                        <%--pc--%>
                                        <input type="hidden" name="BANNER_SID" value="-1" />
                                        <input type="hidden" name="PARENT_SID" value="-1" />
                                        <input type="hidden" name="BANNER_TYPE" value="WEB" />
                                        <div class="column_2_Area_1">
                                            <div class="column_2_Area_1_txt1">PC</div>
                                            <div class="img_wrap_200 img_wrap" id="pc_img_wrap_0" style="width: 400px; height: 202px;">
                                                <img src="/Source/image/no_img.svg" class="no_img" id="pc_no_img" />
                                            </div>
                                            <div class="column_2_Area_1_txt2">
                                                <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                                                <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                                <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                            </div>
                                            <div class="column_2_Area_1_txt3">
                                                <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                            </div>
                                            <div class="img_Btn_Area">
                                                <div class="img_Btn lowerst-font pc_img_Btn" id="pc_img_Btn_0" data-value="0" onclick="upload_pc_test(1)">이미지 등록</div>
                                                <div class="img_Btn lowerst-font inactive pcimg_Del_Btn" id="del_pc_btn_0" data-value="0" onclick="del_pc_test(0);">삭제</div>
                                            </div>
                                        </div>
                                        <%--모바일--%>
                                        <input type="hidden" name="BANNER_SID" value="-1" />
                                        <input type="hidden" name="PARENT_SID" value="-1" />
                                        <input type="hidden" name="BANNER_TYPE" value="MOBILE" />
                                        <div class="column_2_Area_2">
                                            <div class="column_2_Area_1_txt1">모바일</div>
                                            <div class="img_wrap_200 img_wrap" id="mobile_img_wrap_0" style="width: 400px; height: 202px;">
                                                <img src="/Source/image/no_img.svg" class="no_img"/>
                                            </div>
                                            <div class="column_2_Area_1_txt2">
                                                <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                                                <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                                <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                            </div>
                                            <div class="column_2_Area_1_txt3">
                                                <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                            </div>
                                            <div class="img_Btn_Area">
                                                <div class="img_Btn lowerst-font mobile_img_Btn" id="mobile_img_Btn_0" data-value="0" onclick="upload_mb_test(1)">이미지 등록</div>
                                                <div class="img_Btn lowerst-font inactive mbimg_Del_Btn" id="del_mb_btn_0" data-value="0" onclick="del_mobile_test(0);">삭제</div>
                                            </div>
                                        </div>
                                        <%--배너 x버튼--%>
                                        <div class="popup_Record_Cansle_Area B_popup_Record_Cansle_Area" onclick="del_template(1)">
                                            <div class="popup_Record_Cansle_Layout">
                                                <span class="clear-icon drkid-icon popup_Record_Cansle"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <%--배너 URL--%>
                                    <div class="category_Contents">
                                        <div class="lowerst-font category_Contents_Txt">배너 URL</div>
                                        <div class="lowerst-font category_Contents_Url">
                                            <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="I_URL" value="" maxlength="250" />
                                        </div>
                                    </div>
                                </div>
                                <div class="add_Upload_Img_Here"></div>
                                <%--카테고리 + 버튼--%>
                                <div class="banner_Add_Btn_Area">
                                    <div class="big-font banner_Add_Btn">+</div>
                                </div>

                            </div>
                                  <%--USED_TYPE에 따른 UI--%>
                                    <%  if (VIEW_USED_TYPE == "CATE")
                                    { %>
                                        <div class="CATE_UI_AREA">
                                            <div class="CATE_UI_Wrap">
                                                <div class="CATE_UI_Title_Area">
                                                    <div class="lowerst-font CATE_UI_Title">중분류 카테고리 추가</div>
                                                </div>
                                                <div class="CATE_UI_Middle_Area">
                                                    <div class="CATE_UI_Middle">
                                                        <div class="sub_Category_record_Area">
                                                            <%--<div class="sub_template_add_here"></div>--%>
                                                            <div class="sub_template_add_here">
                                                                
                                                                 <%if (subdataTable != null && subdataTable.Rows.Count > 0)
                                                                   {%>  
                                                                     <%for (int s = 0; s < subdataTable.Rows.Count; s++)
                                                                    { %>  
                                                                        <%--개별 레코드--%>
                                                                        <div class="sub_Category_record" id="sub_Category_record_<%=s+1%>">
                                                                        <input type="hidden" name="SUB_VIEW_SID" value="<%=subdataTable.Rows[s]["VIEW_SID"] %>" />
                                                                        <input type="hidden" name="SUB_VIEW_SEQ" value="<%=subdataTable.Rows[s]["VIEW_SEQ"] %>" />
                               
                                                                            <div class="SUB_TITLE_WRAP">
                                                                                <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="SUB_TITLE" value="<%=subdataTable.Rows[s]["TITLE"] %>" placeholder="대분류명을 입력하세요" maxlength="20" />
                                                                            </div>
                                                                            <%--레코드 X 버튼--%>
                                                                            <div class="popup_Record_Cansle_Area"  onclick="sub_del_Record(<%=s+1%>);">
                                                                                <div class="popup_Record_Cansle_Layout">
                                                                                    <span class="clear-icon drkid-icon popup_Record_Cansle"></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                   <%}%>
                                                                <%}%>
                                                            </div>
                                                            <%--카테고리 추가 버튼--%>
                                                            <div class="popup_Category_Add_Btn_Area">
                                                                <div class="lowerst-font drkid-btn td-btn drkid-btn-active sub_Category_Add_Btn">카테고리 추가</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%--하단--%>
                                                    <div class="CATE_UI_Bottom">
                                                        <%--대분류 취소, 저장 버튼--%>
                                                        <div class="popup_Bottom_Btn_Area">
                                                            <%--<div class="lowerst-font drkid-btn td-btn ">취소</div>--%>
                                                            <div class="lowerst-font drkid-btn td-btn drkid-btn-active" id="sub_Cate_Save_Btn">저장</div>
                                                        </div>
                                                    </div>
                                                </div>
          
                                            </div>
                                        </div>
                                    <%}%>

                                    <%  if (VIEW_USED_TYPE == "PROD")
                                    { %>
                                    
                                        <div class="PROD_UI_AREA">
                                                <div class="PROD_UI_Wrap">
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
                                                                                <input type='hidden' name='B_PARENT_SID' value= "<%=prodTable.Rows[j]["PARENT_OBJECT_SID"] %>"/>
                                                                                <input type="hidden" name="RELATION_ORDER_SEQ" value="<%=prodTable.Rows[j]["RELATION_ORDER_SEQ"] %>" />
                                                                            </tr>
                                                                    <%}%>
                                                                <%}%>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--상품연결 리스트 끝--%>
                                         </div>
                                    <%}%>
                            </div>
                       <%}%>




                        <%if (subCateTable.Rows.Count > 0)
                       {%>
                            <%--중분류 디테일--%>
                            <div class="d_category_Contents_Area">
                                <div class="category_Contents">
                                    <div class="lowerst-font category_Contents_Txt">카테고리명</div>
                                    <div class="lowerst-font category_Contents_Input">
                                        <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="D_SUB_TITLE" value="" maxlength="20" />
                                    </div>
                                </div>
                                    <%--배너 사용유무 라디오--%>
                                     <%--*****임시안씀*****--%>
                                    <%--<div class="category_Contents">
                                        <div class="lowerst-font category_Contents_Txt">PC 카테고리 사진</div>
                                        <div class="lowerst-font category_Contents_Input">
                                                <label class="drkid-radio">
                                                    <input type="radio" name="VIEW_PC_FLAG" value="Y" <%=request_view_pc_flag == "Y" ? "checked=\"checked\"" : "" %> />
                                                    <span class="radio-txt lowerst-font">사용</span>
                                                </label>
                                                <label class="drkid-radio">
                                                    <input type="radio" name="VIEW_PC_FLAG" value="N"  <%=request_view_pc_flag == "N" ? "checked=\"checked\"" : "" %> />
                                                    <span class="radio-txt lowerst-font">사용안함</span>
                                              </label>
                                        </div>
                                    </div>--%>

                             <%for (int y = 0; y < subCateTable.Rows.Count; y++)
                              { %>
                                    <%--*****임시안씀*****--%>
                                    <%--<div class="pc_Mobile_Area sub_pc_Mobile_Area">
                    
                                        <div class="empty_Space"></div>
                                        <div class="pc_Mobile_Wrap">
                                          
                                            <div class="column_2_Area_1">
                                                <div class="column_2_Area_1_txt1">PC</div>
                                                <div class="img_wrap_200 img_wrap" id="sub_pc_img_wrap_5" style="width: 400px; height: 202px;">
                                        
                                                    <input type='hidden' name='image_upload_byte' value=''/>
                                                    <input type='hidden' name='image_upload_name' value='<%=subCateTable.Rows[y]["SOURCE_FILE_NAME"] %>'/>
                                                    <input type='hidden' name='image_upload_ext' value='<%=subCateTable.Rows[y]["EXT"] %>'/>
                                                    <input type='hidden' name='image_upload_sid' value='<%=subCateTable.Rows[y]["EDM_SID"] %>'/>
                                                    <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=subCateTable.Rows[y]["TARGET_READ_PATH"] %>'/>
                                                </div>
                                                <div class="column_2_Area_1_txt2">
                                                    <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                                                    <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                                    <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                                </div>
                                                <div class="column_2_Area_1_txt3">
                                                    <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                                </div>
                                                <div class="img_Btn_Area">
                                                    <div class="img_Btn lowerst-font pc_img_Btn" id="pc_img_Btn_5"  onclick="upload_pc_test(6)">이미지 등록</div>
                                                    <div class="img_Btn lowerst-font pcimg_Del_Btn" id="sub_del_pc_btn_5" onclick="del_pc_sub();">삭제</div>
                                                </div>
                                            </div>
                                    
                                        </div>
                                    </div>--%>
                                     <%--pc 카테고리 이미지 끝--%>

                                    <%--카테고리 바인드--%>
                                    <div class="cate_Bind_Area">
                                        <div class="cate_Bind_Title">
                                            <div class="lowest-font">상품 카테고리 바인드</div>
                                        </div>
                                    
                                        <div class="cate_BindTable_Area">
                                            <div class="table-wraper max-height-overflow cate_Bind_Table">
                                                <div class="cate_Bind_Btn_Area">
                                                    <div class="lowerst-font drkid-btn td-btn drkid-btn-active" id="add-cate">선택추가</div>
                                                </div>

                                                <table class="table-common">
                                                    <colgroup>
                                                        <col style="width: 5%;" />
                                                        <%--<col style="width: 10%;" />
                                                        <col style="width: 27%;" />--%>
                                                        <col style="width: 35%;" />
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th class="lower-font">선택
                                                                <%--<label class="drkid-checkbox">
                                                                    <input type="checkbox" value="Y" id="all-select-class" />
                                                                    <span class="fake-check-box"></span>
                                                                </label>--%>
                                                            </th>
                                                            <%-- <th class="lower-font">선택</th>--%>
                                                            <%--<th class="lower-font">권한코드</th>--%>
                                                            <th class="lower-font">선택 가능한 카테고리명</th>

                                                        </tr>
                                                    </thead>
                                                    <tbody id="COMMON_TBODY">
                                                        <%for (int i = 0; i < subCateTable_prodCate.Rows.Count; i++)
                                                          { %>
                                                        <tr data-tr="<%=subCateTable_prodCate.Rows[i]["CATEGORY_SID"] %>">
                                                            <td class="lower-font">
                                                                <label class="drkid-checkbox">
                                                                    <input type="checkbox" value="<%=subCateTable_prodCate.Rows[i]["CATEGORY_SID"] %>" name="CATE_LIST"/>
                                                                    <span class="fake-check-box"></span>
                                                                </label>
                                                            </td>
                                                            <td class="lower-font"><%=subCateTable_prodCate.Rows[i]["CATEGORY_NAME"] %></td>
                                                        </tr>
                                                        <%} %>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="table-wraper max-height-overflow cate_Bind_Table">
                                                <div class="cate_Bind_Btn_Area">
                                                    <div class="lowerst-font drkid-btn td-btn" id="remove-cate">선택제거
                                                    </div>
                                                </div>
                                                <table class="table-common">
                                                    <colgroup>
                                                        <col style="width: 5%;" />
                                                       <%-- <col style="width: 10%;" />
                                                        <col style="width: 27%;" />--%>
                                                        <col style="width: 35%;" />
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th class="lower-font">선택
                                                                <%--<label class="drkid-checkbox">
                                                                    <input type="checkbox" value="Y" id="all-select-class" />
                                                                    <span class="fake-check-box"></span>
                                                                </label>--%>
                                                            </th>
                                                            <%-- <th class="lower-font">선택</th>--%>
                                                            <%--<th class="lower-font">권한코드</th>--%>
                                                            <th class="lower-font">선택된 카테고리명</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="CHOICE_TBODY">
                                                         <%for (int i = 0; i < subCateTable_prodCate_CHOICE.Rows.Count; i++)
                                                              { %>
                                                                <tr data-tr="<%=subCateTable_prodCate_CHOICE.Rows[i]["CATEGORY_SID"] %>">
                                                                    <td class="lower-font">
                                                                        <label class="drkid-checkbox">
                                                                            <input type="checkbox" value="<%=subCateTable_prodCate_CHOICE.Rows[i]["CATEGORY_SID"] %>" name="CATE_LIST_CHOICE"/>
                                                                            <span class="fake-check-box"></span>
                                                                        </label>
                                                                        <input type="hidden" name="" value="" />
                                                                        <input type="hidden" name="" value=""  />
                                                                    </td>
                                                                    <td class="lower-font"><%=subCateTable_prodCate_CHOICE.Rows[i]["CATEGORY_NAME"] %></td>
                                                                </tr>
                                                            <%} %>
                                                
                                                    <%--    <tr data-tr="">
                                                            <td class="lower-font">
                                                                <label class="drkid-checkbox">
                                                                    <input type="checkbox" value="" name="CATE_LIST_CHOICE"/>
                                                                    <span class="fake-check-box"></span>
                                                                </label>
                                                                <input type="hidden" name="" value="" />
                                                                <input type="hidden" name="" value=""  />
                                                            </td>
                                                            <td class="lower-font">테스트</td>
                                                        </tr>--%>
                                                     
                                                   
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
     
                                    </div>
                           <%}%>

                        </div>

                     <%}%>


                        <%if (subCateTable.Rows.Count == 0)
                       {%>

                                <%--중분류 디테일--%>
                                <div class="d_category_Contents_Area">
                                    <div class="category_Contents">
                                        <div class="lowerst-font category_Contents_Txt">카테고리명</div>
                                        <div class="lowerst-font category_Contents_Input">
                                            <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="D_SUB_TITLE" value="" maxlength="20" />
                                        </div>
                                    </div>
                                    <%--배너 사용유무 라디오--%>
                                        <%--*****임시안씀*****--%>
                                        <%--<div class="category_Contents">
                                            <div class="lowerst-font category_Contents_Txt">PC 카테고리 사진</div>
                                            <div class="lowerst-font category_Contents_Input">
                                                    <label class="drkid-radio">
                                                        <input type="radio" name="VIEW_PC_FLAG" value="Y" />
                                                        <span class="radio-txt lowerst-font">사용</span>
                                                    </label>
                                                    <label class="drkid-radio">
                                                        <input type="radio" name="VIEW_PC_FLAG" value="N"  checked="checked" />
                                                        <span class="radio-txt lowerst-font">사용안함</span>
                                                  </label>
                                            </div>
                                        </div>--%>
                                        <%--pc 카테고리 이미지--%>
                                        <%--pc,모바일--%>
                                        <%--*****임시안씀*****--%>
                                        <%--<div class="pc_Mobile_Area sub_pc_Mobile_Area">
                                            <div class="empty_Space"></div>
                                            <div class="pc_Mobile_Wrap">
                                                <div class="column_2_Area_1">
                                                    <div class="column_2_Area_1_txt1">PC</div>
                                                    <div class="img_wrap_200 img_wrap" id="sub_pc_img_wrap_5" style="width: 400px; height: 202px;">
                                                        <img src="/Source/image/no_img.svg" class="no_img"/>
                                                    </div>
                                                    <div class="column_2_Area_1_txt2">
                                                        <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                                                        <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                                                        <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                                                    </div>
                                                    <div class="column_2_Area_1_txt3">
                                                        <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                                                    </div>
                                                    <div class="img_Btn_Area">
                                                        <div class="img_Btn lowerst-font pc_img_Btn" id="sub_pc_img_Btn_5"  onclick="upload_pc_test(6)">이미지 등록</div>
                                                        <div class="img_Btn lowerst-font inactive pcimg_Del_Btn" id="del_pc_btn_5" onclick="del_pc_sub();">삭제</div>
                                                    </div>
                                                </div>
                                    
                                            </div>
                                        </div>--%>
                                        <%--pc 카테고리 이미지 끝--%>
                                        <%--카테고리 바인드--%>
                                        <div class="cate_Bind_Area">
                                            <div class="cate_Bind_Title">
                                                <div class="lowest-font">상품 카테고리 바인드</div>
                                            </div>
                                    
                                            <div class="cate_BindTable_Area">
                                                <div class="table-wraper max-height-overflow cate_Bind_Table">
                                                    <div class="cate_Bind_Btn_Area">
                                                        <div class="lowerst-font drkid-btn td-btn drkid-btn-active" id="add-cate">선택추가</div>
                                                    </div>

                                                    <table class="table-common">
                                                        <colgroup>
                                                             <col style="width: 5%;" />
                                                        <%--<col style="width: 10%;" />
                                                        <col style="width: 27%;" />--%>
                                                        <col style="width: 35%;" />

                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th class="lower-font">선택
                                                                    <%--<label class="drkid-checkbox">
                                                                        <input type="checkbox" value="Y" id="all-select-class" />
                                                                        <span class="fake-check-box"></span>
                                                                    </label>--%>
                                                                </th>
                                                                <%-- <th class="lower-font">선택</th>--%>
                                                                <%--<th class="lower-font">권한코드</th>--%>
                                                                <th class="lower-font">선택 가능한 카테고리명</th>

                                                            </tr>
                                                        </thead>
                                                        <tbody id="COMMON_TBODY">
                                                             <%for (int i = 0; i < subCateTable_prodCate.Rows.Count; i++)
                                                              { %>
                                                            <tr data-tr="<%=subCateTable_prodCate.Rows[i]["CATEGORY_SID"] %>">
                                                                <td class="lower-font">
                                                                    <label class="drkid-checkbox">
                                                                        <input type="checkbox" value="<%=subCateTable_prodCate.Rows[i]["CATEGORY_SID"] %>" name="CATE_LIST"/>
                                                                        <span class="fake-check-box"></span>
                                                                    </label>
                                                                    <input type="hidden" name="" value="" />
                                                                    <input type="hidden" name="" value=""  />
                                                                </td>
                                                                <td class="lower-font"><%=subCateTable_prodCate.Rows[i]["CATEGORY_NAME"] %></td>
                                                            </tr>
                                                            <%} %>
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div class="table-wraper max-height-overflow cate_Bind_Table">
                                                    <div class="cate_Bind_Btn_Area">
                                                        <div class="lowerst-font drkid-btn td-btn" id="remove-cate">선택제거
                                                        </div>
                                                    </div>
                                                    <table class="table-common">
                                                        <colgroup>
                                                            <col style="width: 5%;" />
                                                      
                                                            <col style="width: 35%;" />

                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th class="lower-font">선택
                                                                    <%--<label class="drkid-checkbox">
                                                                        <input type="checkbox" value="Y" id="all-select-class" />
                                                                        <span class="fake-check-box"></span>
                                                                    </label>--%>
                                                                </th>
                                                                <%-- <th class="lower-font">선택</th>--%>
                                                                <%--<th class="lower-font">권한코드</th>--%>
                                                                <th class="lower-font">선택된 카테고리명</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="CHOICE_TBODY">
                                                             <%for (int i = 0; i < subCateTable_prodCate_CHOICE.Rows.Count; i++)
                                                              { %>
                                                                <tr data-tr="<%=subCateTable_prodCate_CHOICE.Rows[i]["CATEGORY_SID"] %>">
                                                                    <td class="lower-font">
                                                                        <label class="drkid-checkbox">
                                                                            <input type="checkbox" value="<%=subCateTable_prodCate_CHOICE.Rows[i]["CATEGORY_SID"] %>" name="CATE_LIST_CHOICE"/>
                                                                            <span class="fake-check-box"></span>
                                                                        </label>
                                                                        <input type="hidden" name="" value="" />
                                                                        <input type="hidden" name="" value=""  />
                                                                    </td>
                                                                    <td class="lower-font"><%=subCateTable_prodCate_CHOICE.Rows[i]["CATEGORY_NAME"] %></td>
                                                                </tr>
                                                            <%} %>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
     
                                        </div>

                                </div>
                        <%}%>





                    </div>
                </div>
            </div>


        </div>
        <%--적용하기--%>
        <div class="banner_Save_Btn_Area">
            <div class="drkid-btn td-btn drkid-btn-active banner_Save_Btn middle-font">적용하기</div>
        </div>
    </div>




     <%--템플릿 , 대분류 디테일 PC,모바일 이미지 관련--%>
     <script type="text/html" id="PC_MOBILE_IMG">
        <%--pc,모바일--%>
        <div class="pc_Mobile_Area" id="pc_Mobile_Area_{I_SEQ}">
        <%--PC/MOBILE이미지 등록 영역--%>
        <input type="hidden" name="MAIN_SID" value="{I_SID}" />
        <input type="hidden" name="MAIN_SEQ" value="{I_SEQ}" />
            <div class="empty_Space"></div>
            <div class="pc_Mobile_Wrap">
                <%--pc--%>
                <input type="hidden" name="BANNER_SID" value="{I_SID}" />
                <input type="hidden" name="PARENT_SID" value="{I_SID}" />
                <input type="hidden" name="BANNER_TYPE" value="WEB" />
                <div class="column_2_Area_1">
                    <div class="column_2_Area_1_txt1">PC</div>
                    <div class="img_wrap_200 img_wrap" id="pc_img_wrap_{B_SEQ}" style="width: 400px; height: 202px;">
                        <img src="/Source/image/no_img.svg" class="no_img" id="pc_no_img" />
                    </div>
                    <div class="column_2_Area_1_txt2">
                        <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                        <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                        <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                    </div>
                    <div class="column_2_Area_1_txt3">
                        <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                    </div>
                    <div class="img_Btn_Area">
                        <div class="img_Btn lowerst-font pc_img_Btn" id="pc_img_Btn_0" data-value="0" onclick="upload_pc_test({I_SEQ})">이미지 등록</div>
                        <div class="img_Btn lowerst-font inactive pcimg_Del_Btn" id="del_pc_btn_{B_SEQ}" data-value="0" onclick="del_pc_test({B_SEQ});">삭제</div>
                    </div>
                </div>
                <%--모바일--%>
                <input type="hidden" name="BANNER_SID" value="{I_SID}" />
                <input type="hidden" name="PARENT_SID" value="{I_SID}" />
                <input type="hidden" name="BANNER_TYPE" value="MOBILE" />
                <div class="column_2_Area_2">
                    <div class="column_2_Area_1_txt1">모바일</div>
                    <div class="img_wrap_200 img_wrap" id="mobile_img_wrap_{B_SEQ}" style="width: 400px; height: 202px;">
                        <img src="/Source/image/no_img.svg" class="no_img" id="mobile_no_img" />
                    </div>
                    <div class="column_2_Area_1_txt2">
                        <div class="lowerst-font mono_dea_color">권장 사이즈 (<span class="lowerst-font drkid_Negative_color">가로 690,세로 350 px</span>)오차범위 200</div>
                        <div class="lowerst-font mono_dea_color">파일용량 (<span class="lowerst-font drkid_Negative_color">2,000KB 초과불가</span></div>
                        <div class="lowerst-font mono_dea_color">확장자 jpg,png 가능</div>
                    </div>
                    <div class="column_2_Area_1_txt3">
                        <div class="lowerst-font mono_dea_color">좌/우 여백없는 크롭된 이미지 권장</div>
                    </div>
                    <div class="img_Btn_Area">
                        <div class="img_Btn lowerst-font mobile_img_Btn" id="mobile_img_Btn_0" data-value="0" onclick="upload_mb_test({I_SEQ})">이미지 등록</div>
                        <div class="img_Btn lowerst-font inactive mbimg_Del_Btn" id="del_mb_btn_{B_SEQ}" data-value="0"  onclick="del_mobile_test({B_SEQ});">삭제</div>
                    </div>
                </div>
                <%--배너 x버튼--%>
                <div class="popup_Record_Cansle_Area B_popup_Record_Cansle_Area" onclick="del_template({I_SEQ})" >
                    <div class="popup_Record_Cansle_Layout">
                        <span class="clear-icon drkid-icon popup_Record_Cansle"></span>
                    </div>
                </div>

                
            </div>
             <%--배너 URL--%>
            <div class="category_Contents">
                <div class="lowerst-font category_Contents_Txt">배너 URL</div>
                <div class="lowerst-font category_Contents_Url">
                    <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="I_URL" value="" maxlength="250" />
                </div>
            </div>
        </div>
       
     </script>



     <%--템플릿 , 대분류 카테고리 레코드--%>
    <script type="text/html" id="POPUP_RECORD">
        <%--대분류 카테고리 인풋 레코드--%>
        <div class="big_Category_record" id="big_Category_record_{SEQ}">
        <input type="hidden" name="VIEW_SID" value="{SID}" />
        <input type="hidden" name="VIEW_SEQ" value="{SEQ}" />
            <%--라디오 버튼--%>
            <div class="category_Radio_Area">
                <label class="drkid-radio">
                    <input type="radio" name="I_USED_TYPE_{SEQ}" value="CATE" checked="checked" />
                    <span class="radio-txt lowerst-font">카테고리 형</span>
                </label>
                <label class="drkid-radio">
                    <input type="radio" name="I_USED_TYPE_{SEQ}" value="PROD" />
                    <span class="radio-txt lowerst-font">상품 형</span>
                </label>
            </div>
            <div class="I_TITLE_WRAP">
                <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="I_TITLE" value="" placeholder="대분류명을 입력하세요" maxlength="20" />
            </div>
            <%--레코드 X 버튼--%>
            <div class="popup_Record_Cansle_Area"  onclick="del_Record({SEQ});">
                <div class="popup_Record_Cansle_Layout">
                    <span class="clear-icon drkid-icon popup_Record_Cansle"></span>
                </div>
            </div>
        </div>
    </script>

    <%--템플릿, 중분류 카테고리 레코드--%>
    <script type="text/html" id="POPUP_RECORD_SUB">
        <%--개별 레코드--%>
        <div class="sub_Category_record" id="sub_Category_record_{SUB_SEQ}">
        <input type="hidden" name="SUB_VIEW_SID" value="{SUB_SID}" />
        <input type="hidden" name="SUB_VIEW_SEQ" value="{SUB_SEQ}" />
                               
            <div class="SUB_TITLE_WRAP">
                <input type="text" class="drkid-input lowerst-font custom-drkid-input" name="SUB_TITLE" value="" placeholder="중분류명을 입력하세요" maxlength="20" />
            </div>
            <%--레코드 X 버튼--%>
            <div class="popup_Record_Cansle_Area"  onclick="sub_del_Record({SUB_SEQ});">
                <div class="popup_Record_Cansle_Layout">
                    <span class="clear-icon drkid-icon popup_Record_Cansle"></span>
                </div>
            </div>
        </div>
    </script>

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
            <input type='hidden' name='B_PARENT_SID' value="{PARENT_SID_VAL}" />
            <input type='hidden' name='RELATION_ORDER_SEQ' value="{ORDER_SEQ_VAL}" />
        </tr>
    </script>



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
        <%--pc2--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader2_1" runat="server" ClientInstanceName="uploader2_1" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete2_1" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete2_1(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete2_1(e); }"
                TextChanged="function(s, e) { UpdateUploadButton2_1(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload2_1" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload2_1" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader2_1.Upload(); }" />
        </dx:ASPxButton>
        <%--mobile2--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader2_2" runat="server" ClientInstanceName="uploader2_2" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete2_2" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete2_2(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete2_2(e); }"
                TextChanged="function(s, e) { UpdateUploadButton2_2(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload2_2" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload2_2" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader2_2.Upload(); }" />
        </dx:ASPxButton>
         <%--pc3--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader3_1" runat="server" ClientInstanceName="uploader3_1" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete3_1" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete3_1(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete3_1(e); }"
                TextChanged="function(s, e) { UpdateUploadButton3_1(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload3_1" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload3_1" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader3_1.Upload(); }" />
        </dx:ASPxButton>
        <%--mobile3--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader3_2" runat="server" ClientInstanceName="uploader3_2" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete3_2" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete3_2(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete3_2(e); }"
                TextChanged="function(s, e) { UpdateUploadButton3_2(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload3_2" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload3_2" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader3_2.Upload(); }" />
        </dx:ASPxButton>
        <%--pc4--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader4_1" runat="server" ClientInstanceName="uploader4_1" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete4_1" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete4_1(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete4_1(e); }"
                TextChanged="function(s, e) { UpdateUploadButton4_1(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload4_1" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload4_1" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader4_1.Upload(); }" />
        </dx:ASPxButton>
        <%--mobile4--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader4_2" runat="server" ClientInstanceName="uploader4_2" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete4_2" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete4_2(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete4_2(e); }"
                TextChanged="function(s, e) { UpdateUploadButton4_2(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload4_2" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload4_2" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader4_2.Upload(); }" />
        </dx:ASPxButton>
        <%--pc5--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader5_1" runat="server" ClientInstanceName="uploader5_1" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete5_1" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete5_1(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete5_1(e); }"
                TextChanged="function(s, e) { UpdateUploadButton5_1(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload5_1" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload5_1" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader5_1.Upload(); }" />
        </dx:ASPxButton>
        <%--mobile5--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader5_2" runat="server" ClientInstanceName="uploader5_2" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete5_2" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete5_2(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete5_2(e); }"
                TextChanged="function(s, e) { UpdateUploadButton5_2(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload5_2" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload5_2" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader5_2.Upload(); }" />
        </dx:ASPxButton>
        <%--pc_카테고리배너--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader6" runat="server" ClientInstanceName="uploader6" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete6" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete6(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete6(e); }"
                TextChanged="function(s, e) { UpdateUploadButton6(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload6" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload6" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader6.Upload(); }" />
        </dx:ASPxButton>
        <%--카테고리 타입의 대분류 카테고리 대표이미지--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader7" runat="server" ClientInstanceName="uploader7" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader_FileUploadComplete7" CssClass="input">
            <ClientSideEvents
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete7(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete7(e); }"
                TextChanged="function(s, e) { UpdateUploadButton7(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload7" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload7" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader6.Upload(); }" />
        </dx:ASPxButton>

    </div>



</asp:Content>
