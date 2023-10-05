﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_PRODUCT_EDIT.aspx.cs" Inherits="drKidAdmin.Source.admin.product.A_PRODUCT_EDIT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>  
       .sub-warp {
            /*background-color: var(--mono_back);*/
            border: none;
            background-color: var(--mono_back);
        }

        .sub-warp-title {
            background: #fff;
            border: 1px solid #dbdde2;
        }

        .product_name_wrap {
            margin-top: 30px;
            /*border: 1px solid var(--mono_line);*/
            border-right: 1px solid var(--mono_line);
            border-left: 1px solid var(--mono_line);
            border-bottom: 1px solid var(--mono_line);
        }

        .wrap_margin_top {
            margin-top: 30px;
        }

        .product_name_wrap_title {
            display: flex;
            width: 100%;
            padding: 15px 30px;
            align-items: center;
            justify-content: space-between;
            background: #fff;
            border-bottom: 1px solid var(--mono_line);
            border-top: 1px solid var(--mono_line);
        }

        .product_name_wrap_title > span:last-child {
            display:block;
            border: 1px solid var(--mono_line);
            color: #e2e2e2;
            cursor: pointer;
        }

        .product_name_sub_wrap {
            padding: 15px 30px;
            background: #fff;
        }

        .product_name_sub_wrap_title {
            display: flex;
            align-items: center;
        }

        .EDIT_title {
            width: 15%;
        }

        .box {
            width: 85%;
        }
        .box > input {
            width: 100%;
        }

        .product_name_sub_wrap_code {
            display: flex;
            align-items: center;
            padding-top: 15px;
        }

        .EDIT_code {
            display: flex;
            flex-direction:column;
            width:85%;
        }

        .title_vox {
            border: 1px solid var(--mono_line);
            padding-right: 10px;
            display: flex;
            align-items: center;
            height: 40px;
        }

        .drkid-input {
            text-align: start;
        }

        .drkid-input_box {
            text-align: start;
            height: 100%;
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

        .title_vox {
            padding-right: 10px;
        }

        .drkid-btn {
            height: 32px;
            min-height: 32px;
            padding: 10px;
        }

        .red {
            color:var(--drkid_Negative);
        }

        .padding-bottom {
            padding-bottom: 20px;
        }

        .block-example {
            display: flex;
            align-items: center;
            gap: 40px;
        }

        .drkid-radio {
            display: flex;
            align-items: center;
            gap: 7px;
        }

        input[type="radio"] {
            margin: 0;
        }

        .main_title {
            color:#111111;
            font-weight: 600;
        }
        .title_box_select {
            width: 245px;
        }

        .drkid-select-div {
            display: flex;
            align-items: center;
        }

        .left_button, 
        .left_button1 {
            border-color:var(--main_color);
            color:var(--mono_back);
        }

        /*hide*/
        #hide_button_wrap {
          display: block;
        }

        .hidden {
          display: none;
        }

        .rotated {
          transform: rotate(180deg);
        }

        .img_grid {
           display:grid;
           grid-template-columns: repeat(5,1fr);
           gap: 15px;
        }

        .img_grid_box {
            width: 140px;
            height: 140px;
            border: 1px solid var(--mono_line);
            text-align: center;
            position:relative;
        }
        .target-clicker{
            width:100%;
            height:100%;
            cursor:pointer;
        }
        .img_grid_box img{
            width:100%;
            height:100%;
            object-fit:cover;
        }

        .img_grid_box .plusicons {
            line-height: 140px;
            font-size: 35px;
            color: #e2e2e2;
        }

        .EDIT_code > span:first-child {
            display: block;
            padding: 0 20px;
            color: #828282;
            border: 1px solid #828282;
            background-color: var(--mono_back);
        }
        .EDIT_code > .drkid-input{
            width:100%;
        }

        .EDIT_code > span:last-child {
            font-size: 12px;
            color:var(--drkid_Negative);
        }

        .border_none1 {
            border:none;
        }

        .box_width {
            width: 255px;
        }

        .border_none {
            border-right: none;
             border-left: none;
        }

        /*.bottom_padding {
            padding-bottom: 10px;
        }*/

        .option_button {
            display: flex;
            gap: 20px;
        }
        /*Option Radio 수정*/
        .noRidio > input[type="radio"]{
            display:none;
        }
        .noRidio{
            width: 150px;
            text-align: center;
            justify-content: center;
            padding: 5px 0;
            border: 1px solid var(--mono_line);
            cursor:pointer;
        }
        .noRidio.noRadioActive{
            color:white;
            background-color:var(--main_color);
            border:1px solid var(--main_color);
        }
        .option_box {
            /*border: 1px solid var(--mono_line);*/
        }

        .option_box_wrap {
            padding: 0 15px;
            border: 1px solid var(--mono_line);
            margin-bottom:5px;
        }

        .option_box_wrap_top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid var(--mono_line);
            padding: 10px 0;
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
            border: none;
        }

        .option_box_wrap_top > .option_title_input {
            padding-right: 10px;
            
        }

        .option_box_wrap_top > .option_title_input > span {
            display: block; 
            padding: 0 2px;
        }



        .option_box_wrap_top > .option_title_input > input {
            border: none;
        }

        .option_title {
            width: 15%;
        }

        .option_title_input {
            width: 85%;
        }

        .option_title_input > input {
            width: 100%;;
        }

        .option_box_price {
            display: flex;
            align-items: center;
        }

        .option_box_price {
            padding: 15px 0;
        }

        .option_box_price_wrap {
            display:flex;
            align-items:center;
            justify-content:flex-start;
            gap: 20px;
        }

        .option_v {
            display:flex;
            align-items:center;
            padding: 15px 0;
        }

        .pv_wrap {
            width: 255px;
        }

        .pv_wrap > input {
            width: 100%;
        }

         .inner_wrap{
            /*display:flex;
            align-items: center;*/
        }
        .search_field{
            width:100%;
        }
        .search_title{
            margin: 10px 0;
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
        .disableColor{
            color:var(--mono_sub);
            background-color:var(--mono_line);
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

        .top_margin {
            width:85%;
        }

        .content_inner {
            display: flex;
        }

        .content_inner partion {
            display: flex;
        }

        .ed_lower_font {
            font-size:12px;
        }

        .table-wraper {
                border-bottom: 1px solid var(--mono_line);
                border-right: 1px solid var(--mono_line);
                border-left: 1px solid var(--mono_line);
        }
        .product_name_sub_wrap > .drkid-btn > span {
            color: #fff;
        }

        .title_box_select > .drkid-select-div {
            border: none;
        }

        .operation_date {
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .img_wrap_inner {
            display: flex;
        }

        .img_padding_line {
            padding: 15px 0;
            border-bottom: 1px solid #e2e2e2;
        }

        .change_button {
            width: 82px;
            height: 32px;
            border: 1px solid #e2e2e2;
            text-align: center;
            margin-top: 15px;
            /* color: #e2e2e2; */
            cursor: pointer;
        }

        .change_button > span {
            line-height: 32px;
        }

        .option_plus_button {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            width: 100%;
            height: 50px;
            background-color: #F9F9F9;
            border: 1px solid #115C5E;
            cursor: pointer;
            margin-top: 10px;
        }

        .top_button_wrap {
            display:flex;
            align-items:center;
            justify-content:space-between;
            margin-top: 30px;
            padding: 0;
        }

        .top_button_wrap > .first_button {
            width:119px;
            height:40px;
            text-align:center;
            background:#fff;
            border: 1px solid #E2E2E2;
        }

        .top_button_wrap > .first_button > span {
            line-height: 40px;
        }

        .second_button {
            display:flex;
            align-items:center;
            gap: 20px;
        }

        .second_button > .one {
            color: #fff;
        }

        .second_button > .one,
        .second_button > .two{
            width:119px;
            height:40px;
            border: 1px solid #E2E2E2;
            text-align:center;
            cursor:pointer;
        }

        .second_button > .one > span,
        .second_button > .two > span{
            line-height: 40px;
        }

        .textarea {
            width:85%;
        }

        .textarea > .textarea_wrap {
            width:100%;
        }

        .textarea > .textarea_wrap > textarea {
            width:100%;
            height:250px;
            resize:none;
            border-color: #E1E1E1;
        }

        .textarea_button_wrap {
            display: flex;
            align-items:center;
            justify-content:space-between;
        }

        .textarea_button_wrap > .img_button {
            border: 1px solid #E2E2E2;
            padding: 7px 20px;
            cursor: pointer;
            text-align:center;
        }

        .textarea_second_button {
             display: flex;
            align-items:center;
            gap: 10px;
        }

        .textarea_second_button > .one {
            border: 1pxd solid #115c5e;
            text-align:center;
            padding: 7px 40px;
            color:#fff;
            cursor: pointer;
        }

        .textarea_second_butto_padding {
            justify-content: flex-end;
            margin-bottom:10px;
        }

        .option_total {
            display: none;
            margin-top: 20px;
        }

        .drkid-select-ul {
            top: calc(100% + 4px);
            width: 254.4px;
        }

        .delete-icon {
            width: 150px;
            color: red;
            display: block;      
            text-align: center;               
            border: 1px solid;          
            margin-inline-start: auto;
            margin-bottom: 10px;
            cursor:pointer;  
        }ss

        .option_price_one {
             padding-top: 20px;
             border-top: 1px solid #e2e2e2;
        }

       .cnr {
            align-items: center;
            padding-bottom: 15px;
       }

       .product_name_sub_wrap_title > .txt {
           font-size:12px;
       }

       .gong {
           padding-left: 10px;
       }

       .product_name_wrap_title.rotate .material-icons {
            transform: rotate(180deg);
            transition: transform 0.5s ease;
        }

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
       /*템플릿 명 입력 모달*/
       .template_Modal_Area {
            position: fixed;
            z-index: 99999;
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
        .template_Modal {
            width: 635px;
            height: 320px;
            background: #ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 20px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .delivery_Modal_Top_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0px 0px 10px 0px;
        }
        .delivery_Modal_Close {
            cursor:pointer;
        }
        .choice_Template_Modal_Close {
            cursor:pointer;
        }
        .clear-icon:after {
            content: "clear";
            font-size: 28px;
            line-height: 40px;
        }
        .delivery_Modal_Input_Area {
            border: 1px solid #E2E2E2;
            border-left: none;
            border-right: none;
            padding: 10px 0px;
        }
        .modal_Input_Area {
            width: 100%;
            display: flex;
            align-items: center;
            padding: 0px 0px 20px 0px;
            align-items: baseline;
        }
        .modal_Input_Info_Area {
            display: flex;
            align-items: center;
            width: 20%;
        }
        .modal_Input {
            width: 80%;
        }
        .modal_Input_Phone {
            width: 80%;
            display: flex;
            justify-content: space-between;
        }
        .modal_Input_Address {
            width: 80%;
        }
        #I_TEMPLATE_NAME{
            width:100%;
            padding: 0px 15px;
            height: 50px;
        }

        .all_Delivery_Address_Wrap {
            width: 80%;
        }
        .modal_Input_Address {
            display: flex;
            align-items: center;
            width: 100%;
            justify-content: space-between;
            padding: 0px 0px 10px 0px;
        }
        .search_Address_Btn {
            width: 190px;
            height: 50px;
            background: #343434;
            color: #ffffff;
            text-align: center;
            line-height: 50px;
            border-radius: 4px;
            cursor:pointer;
        }
        .delivery_Modal_Bottom_Area {
            display: flex;
            width: 100%;
            padding: 15px 0px 30px 0px;
        }
        .default_Delivery_Check_Area {
            width: 20%;
        }
        .default_Delivery_Check {
           width: 80%;
        }
        #delivery_Modal_Checkbox {
            display: flex;
            gap: 0px 5px;
        }
        .checkbox_txt {
             color: #343434;
        }
        .delivery_Modal_Btn_Area {
            width: 100%;
            display: flex;
            gap: 0px 15px;
            justify-content: center;
        }
        .modal_Save_Btn {
            width: 120px;
            height: 50px;
            background: var(--main_color);
            color: #ffffff;
            text-align: center;
            line-height: 50px;
            cursor:pointer;
        }
        .modal_Cansle_Btn {
            width: 120px;
            height: 50px;
            text-align: center;
            line-height: 50px;
            border: 1px solid #E2E2E2;
            cursor:pointer;
        }
        .textarea_button {
            padding: 5px 0px 0px 0px;
        }
        /*템플릿 선택 모달*/
        #choice_Template_Modal_Area_DELIVERY {
            display: none;
        }
        #choice_Template_Modal_Area_EXCHANGE {
            display: none;
        }
        .choice_Template_Modal_Area {
            position: fixed;
            z-index: 99;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            
            justify-content: center;
            align-items: center;
            flex-direction: column;
            width: 100%;
            height: 100%;
            background: #23232333;
        }
        .choice_Template_Modal {
            width: 635px;
            height: 420px;
            background: #ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 20px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .choice {
            background:#F4FAFF;
        }
        /*pc미리보기 모들*/
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
            top: 42%;
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
            width: fit-content;
            height: fit-content;
            max-width: 100%;
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
        /*미디어쿼리*/

        /*pc미리보기 미디어쿼리*/
         @media screen and (min-width: 1450px) {
            .pc_Template_Modal {
                width: 1360px;
                height: 720px;
            }
        }


        /*08.02 이용호 수정 css*/
        .star_hidden {
            visibility:hidden;
        }

        .new_price {
          width: 255px;
        }

        .new_price > input {
          width: 100%;
        }

        .product_radio2_wrap,
        .product_radio3_wrap,
        .product_radio4_wrap,
        .product_radio5_wrap,
        .product_radio6_wrap {
           display:none;
        }

        .product_radio2_wrap,
        .product_radio5_wrap,
        .product_radio6_wrap {
            padding-top: 20px;
        }

        .product_radio4_wrap {
            margin-top: 20px;
        }
        
        .delivery_bottom {
            border-bottom: 1px solid #e2e2e2;
        }

        .padding-top {
            padding-top:20px;
        }

        .delivery_padding_top {
            padding-top: 20px;
        }

        .baseline {
            align-items: baseline;
        }

        .option_select > .drkid-select-ul {
            width: 77px;
            top: calc(100% + 2px);
        }

        .width_wrap {
            width: 255px;
        }

        .re_txt {
            line-height: 1;
        }

        .re_text_font {
            font-size: 12px;
            color:var(--drkid_Negative);
            font-weight: 400;
        }

        .border-left-none {
            border-left: none;
        }

        .border-right-none {
            border-right: none;
        }

        #re_check_wrap {
            display: none;
        }

        .category {
            display:none;
        }

        .t2l-bg-background {
            z-index:998;
            background:#23232333;
           min-height:5200px;
        }

        .t2l-alert-inner-wraper {
            z-index: 999;
            padding: 20px 0;
        }

        .category_content_top {
            border-bottom: 1px solid var(--mono_line);
        }

        .category_content_top_wrap {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 40px 20px;
        }

        .category_content_bottom {
            padding: 0 40px;
        }

        .category_content_bottom_input_wrap {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 0 10px;
        }

        .template_content_header_title {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .choi {
            min-width: 15%;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .choi > span {
            line-height:40px;
        }

        .choice_category {
            height: 40px;
            text-align: center;
        }

        .choice_category > span {
            line-height: 40px;
        }

        .template_content_header {
            border: 1px solid var(--mono_line);
        }

        .template_content_border_bottom {
            border-bottom: 1px solid var(--mono_line);
        }

        .template_content_border_right {
            border-right : 1px solid var(--mono_line);
        }

        .choice_category {
            min-width:85%;
        }

        .category_content_top_wrap_title {
            font-weight:600
        }

        .category_content_bottom_input > input {
            min-width: 290px
        }

        .add_button {
            border: 1px solid var(--mono_line);
            height: 40px;
            padding: 0 20px;
            cursor: pointer;
        }

        .add_button > span {
            line-height: 40px;
        }

        .category_button_wrap {
            justify-content:center;
            padding: 150px 0 20px;
            border-bottom: 1px solid var(--mono_line);
            gap: 20px;
        }

        .button_padding {
            padding: 25px 40px;
        }

        .drkid-btn-active {
            background-color: var(--main_color);
        }

        .category_content_top_wrap_close {
            cursor:pointer;
            display: flex;
        }

        .category_bottom_button {
            padding: 20px 40px 0;
        }

        .category_background {
            background: var(--mono_back);
        }

        .template_top {
            padding-bottom: 10px;
        }

        #category_check_box_wrap {
            padding-bottom: 10px;
            display:none;
        }

        .category_check_box_content_wrap {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .category_check_box_wrap_title {
            font-size: 12px;
            padding-bottom: 10px;
        }

        .category_check_box_content {
            padding: 5px 10px;
            border: 1px solid #cacaca;
        }

        .inner-center {
            top: 10%;
        }

        .product-category-show-block{
            width:100%;
            display:flex;
            flex-direction:row;
            padding-bottom:10px;
        }
        .product-category-wraper{
            display:flex;
            align-items:center;
            justify-content:center;
            margin-right:10px;
            height:40px;
            border:1px solid var(--main_color);
            padding-left:8px;
        }
        .product-category-wraper > .category-name{
            min-width:100px;
            padding-right:8px;
        }
        .product-category-wraper > .xbtnx-cate{
            width:30px;
            text-align:center;
            cursor:pointer;
            height:100%;
            display:flex;
            align-items:center;
        }
        .padding-bottom-product{
            padding-bottom:8px;
        }
        .product-auto-insert-wraper ,.product-auto-insert-wraper_p{
            padding-top:20px;
        }
        .option-auto-insert-wraper{
            padding-top:20px;
            display:none;
        }
        .radio-wraper-showhide{
            display:none;
        }
    </style>
    <script src="/smarteditor2.3.10/js/HuskyEZCreator.js" charset="utf-8"></script>
    <script>
        var $result_code = `<%=cp_ret_status%>`;
        var $result_message = `<%=cp_ret_message%>`;
        var $flag = `<%=flag%>`;
        var $del_flag = `<%=del_flag %>`;
        var option_auto_flag_list = [];
        //Image Upload에 사용
        let _NowTarget;
        document.addEventListener('DOMContentLoaded', function () {
            if ($result_code == `Y`) {
                _popModal.Alert('알림', $result_message);
                $result_code = '';
                $result_message = '';
            }
            if ($result_code == "N") {
                if ($flag == "save") {
                    _popModal.Alert('알림', '저장되었습니다.');
                    Reload('/Source/admin/product/A_PRODUCT_CHECK.aspx');
                    setTimeout(() => {
                        window.scrollTo(0, 0);
                }, 100);
            }
        }
        });
        //Option 관련 Field 값
        var _SelectSeq = 100;

        //스마트 에디터 관련
        function clickHideFileInput(id) {
            $('#' + id).click();
        }
        //Text change가 일어날떄 -> Upload 가 일어날떄
        function UpdateUploadButton1() {
            //업로드를 업로드 시켜 Callback을 타게함.
            //이때 Process bar 넣어서 로딩 처리
            uploader1.Upload();
        }
        function UpdateUploadButton2() {
            uploader2.Upload();
        }
        function UpdateUploadButton3() {
            uploader3.Upload();
        }
        //여러개 올릴때 Upload file이 계속 바뀌므로 계속 타게 처리.
        function Uploader_OnFilesUploadComplete1(args) {
            UpdateUploadButton1();
        }
        function Uploader_OnFilesUploadComplete2(args) {
            UpdateUploadButton2();
        }
        function Uploader_OnFilesUploadComplete3(args) {
            UpdateUploadButton3();
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
                    oEditors.getById["smarteditor2"].exec("PASTE_HTML", [JsonData["imgSrc"]]);
                } else {
                    alert(JsonData['message']);
                }
            }
        }
        function Uploader_OnFileUploadComplete3(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    oEditors.getById["smarteditor3"].exec("PASTE_HTML", [JsonData["imgSrc"]]);
                } else {
                    alert(JsonData['message']);
                }
            }
        }
        //체크박스 Tr Active 처리.
        function checkBoxActive(target) {
            let _tr = $(target).parents('tr');
            console.log(_tr)
            if ($(target).is(':checked')) {
                _tr.addClass('choice');
              
            } else {
                _tr.removeClass('choice');
        
            }
        }
        // 전체선택 
        function allCheck(target) {
            let targetTableBody = $(target).parents('table').find('tbody');
            let boolChecker = $(target).is(":checked");
            if (boolChecker) {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', true);
                    checkBoxActive(item);
                });
            } else {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', false);
                    checkBoxActive(item);
                });
            }
        }
        var del_sid_list = [];//삭제할 여러 sid들을 담는 배열
        var oEditors = [];
        $(document).ready(function () {
            var maxOptions = 3;
            var currentOptions = 1;
            ////////////
            //허정현 시작
            function smartEditorIFrame() {
                showProgress();
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

                nhn.husky.EZCreator.createInIFrame({
                    oAppRef: oEditors,
                    elPlaceHolder: "smarteditor2",
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

                nhn.husky.EZCreator.createInIFrame({
                    oAppRef: oEditors,
                    elPlaceHolder: "smarteditor3",
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

            //PRODUCT STOCK 전체 선택
            $('#all-selecter').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            //체크박스 클릭 시 해당 레코드 css 
            $('input[type="checkbox"][name="LIST_CHECK_BOX"]').on('click', function () {
                checkBoxActive(this);
            });
            //기존에 뿌려져있는 체크박스 기능 바인드
            $("input:checkbox[name='CHECK_BOX']").each(function (index, item) {
                $(item).on('click', function (e) {
                    checkBoxActive(e.currentTarget);
                });
            });
            //모달 -취소 
            $('#template_Name_Cansle,.delivery_Modal_Close').on('click', function () {
                $(".template_Modal_Area").hide();
                $('input[name="I_TEMPLATE_NAME"]').val(''); //템플릿명 공백으로 초기화
              
            });
            // 템플릿명 모달 저장버튼
            $("#template_Name_Save").on('click', function () {
            });

            //배송안내 템플릿선택 버튼
            $('#choice_Delivery_Template').on('click', function () {
                $("#choice_Template_Modal_Area_DELIVERY").show();
            });
            //교환 및 반품안내 템플릿 선택
            $('#choice_Exchange_Template').on('click', function () {
                $("#choice_Template_Modal_Area_EXCHANGE").show();
            });
            
            //배송템플릿 선택팝업 닫기버튼
            $(".choice_Template_Modal_Close").on('click', function () {
                $("#choice_Template_Modal_Area_DELIVERY").hide();
                $("#choice_Template_Modal_Area_EXCHANGE").hide();
            });

            //배송템플릿 선택팝업 선택버튼
            $("#choice_Template_Modal_Choice_D").on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="LIST_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length != 1) {
                    _popModal.Alert('알림', '하나의 템플릿을 선택해주세요.');
                    return;
                }
                var template_data_id = $(_checkBoxChecker).parent().parent().data('value');
                console.log("template_data_id:", template_data_id)
                //체크한 템플릿과 연결되는 템플릿 id를 가진 요소가 있을경우 
                if (template_data_id != "" && template_data_id != null) {
                    var appnd_data = $("#" + template_data_id).html();
                    //배송안내 스마트에디터에 배송아내 템플릿 내용 삽입
                    oEditors.getById["smarteditor2"].exec("PASTE_HTML", [appnd_data]); 
                    $("#choice_Template_Modal_Area_DELIVERY").hide();// 템플릿 선택 팝업 닫기
                    //$('input[type="checkbox"][name="LIST_CHECK_BOX"]').prop("checked", false); // 모든 템플릿 선택되지 않게 만듦
                }
            });

            //교환 템플릿 선택팝업 선택버튼  
            $("#choice_Template_Modal_Choice_E").on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="LIST_CHECK_BOX2"]:checked');
                if (_checkBoxChecker.length != 1) {
                    _popModal.Alert('알림', '하나의 템플릿을 선택해주세요.');
                    return;
                }
                var template_data_id = $(_checkBoxChecker).parent().parent().data('value');
                console.log("template_data_id:", template_data_id)
                //체크한 템플릿과 연결되는 템플릿 id를 가진 요소가 있을경우 
                if (template_data_id != "" && template_data_id != null) {
                    var appnd_data = $("#" + template_data_id).html();
                    //배송안내 스마트에디터에 배송아내 템플릿 내용 삽입
                    oEditors.getById["smarteditor3"].exec("PASTE_HTML", [appnd_data]);
                    $("#choice_Template_Modal_Area_EXCHANGE").hide();// 템플릿 선택 팝업 닫기
                    //$('input[type="checkbox"][name="LIST_CHECK_BOX"]').prop("checked", false); // 모든 템플릿 선택되지 않게 만듦
                }

            });

            //선택 템플릿 삭제버튼
            $("#choice_Template_Modal_Del").on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="LIST_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나 이상의 메뉴를 선택해주세요.');
                    return;
                }
                del_sid_list = [];
                _popModal.Promt('', '삭제하시겠습니까?',
                    function () {
                        _checkBoxChecker.each(function (index, item) {
                            //사용자 눈에 제거만 함
                            //let _ui_del = $(item).val(); //새로만든거 -1, -2
                            //$(`[data-sub-tr="${_ui_del}"]`).remove(); // data-big-tr -> big-tbody
                            //db부분
                            var parentDataValue = $(this).parent().parent().data('value');
                            del_sid_list.push(parentDataValue);
                            //체크되어 있는 sid값들을 , 로 구분해 #delete-sid 인풋요소에 저장
                            var valueString = del_sid_list.join(',');
                            $("#delete_sid").val(valueString);

                        });
                        console.log("delete_sid 값", $("#delete_sid").val())
                        //$('#flag').val('del');
                        //$('#form1').submit();
                    }, function (error) { _popModal.Alert('알림', error); });
            });
            
            //PC 미리보기

            //배송안내 미리보기
            $("#preview_delivery_pc").on('click',function() {
                oEditors.getById["smarteditor2"].exec("UPDATE_CONTENTS_FIELD", []);
                //내용에 아무것도 안적으면 alert 출력
                if ($.trim($("#smarteditor2").val()) == "<p>&nbsp;</p>") {
                    _popModal.Alert('', '내용을 입력해주세요.');
                    return false;
                }

                $(".pc_Template_Modal_Area").show();
                $(".detail_box").removeClass('detail_box_child');
                $("#detail2").addClass('detail_box_child');
                var _template = $("#PC_DELIVERU_CONTENTS").html();
                $('.pc_contents_here').empty();
                //미리보기 컨텐츠 영역에  컨텐츠 템플릿 삽입
                $('.pc_contents_here').append(_template);
                // 컨텐츠에 사용자가 스마트에디터에 입력시킨 템플릿 불러와서 출력
                oEditors.getById["smarteditor2"].exec("UPDATE_CONTENTS_FIELD", []);
                $(".pc_delivery_contents_here").empty();
                $(".pc_delivery_contents_here").append($.trim($("#smarteditor2").val()));

            });
            //배송안내 미리보기 닫기
            $(".pc_Template_Modal_Close").on('click', function () {
                $(".pc_Template_Modal_Area").hide();
            });

            //교환 및 반품안내 미리보기
            $("#preview_exchange_pc").on('click', function () {
                oEditors.getById["smarteditor3"].exec("UPDATE_CONTENTS_FIELD", []);
                //내용에 아무것도 안적으면 alert 출력
                if ($.trim($("#smarteditor3").val()) == "<p>&nbsp;</p>") {
                    _popModal.Alert('', '내용을 입력해주세요.');
                    return false;
                }

                $(".pc_Template_Modal_Area").show();
                $(".detail_box").removeClass('detail_box_child');
                $("#detail3").addClass('detail_box_child');
                var _template = $("#PC_EXCHANGE_CONTENTS").html();
                $('.pc_contents_here').empty();
                //미리보기 컨텐츠 영역에  컨텐츠 템플릿 삽입
                $('.pc_contents_here').append(_template);
                // 컨텐츠에 사용자가 스마트에디터에 입력시킨 템플릿 불러와서 출력
                oEditors.getById["smarteditor3"].exec("UPDATE_CONTENTS_FIELD", []);
                $(".pc_exchange_contents_here").empty();
                $(".pc_exchange_contents_here").append($.trim($("#smarteditor3").val()));

            });

            //상품상세 미리보기
            $("#preview_product_pc").on('click', function () {
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
            //모바일 미리보기
            //모바일 미리보기 닫기 버튼
            $(".mb_Template_Modal_Close").on('click', function () {
                $(".mb_Template_Modal_Area").hide();
            });

            //상품상세 미리보기
            $("#preview_product_mb").on('click', function () {
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
            
            //배송안내 미리보기
            $("#preview_delivery_mb").on('click', function () {
                oEditors.getById["smarteditor2"].exec("UPDATE_CONTENTS_FIELD", []);
                //내용에 아무것도 안적으면 alert 출력
                if ($.trim($("#smarteditor2").val()) == "<p>&nbsp;</p>") {
                    _popModal.Alert('', '내용을 입력해주세요.');
                    return false;
                }
                $(".mb_Template_Modal_Area").show();
                $(".click_menu").removeClass('mb_active');
                $("#click_menu2").addClass('mb_active');
                var _template = $("#MB_DELIVERY_CONTENTS").html();
                $('.mb_contents_here').empty();
                //미리보기 컨텐츠 영역에 배송안내 컨텐츠 템플릿 삽입
                $('.mb_contents_here').append(_template);
                // 컨텐츠에 사용자가 스마트에디터에 입력시킨 템플릿 불러와서 출력
                oEditors.getById["smarteditor2"].exec("UPDATE_CONTENTS_FIELD", []);
                $(".mb_delivery_contents_here").empty();
                $(".mb_delivery_contents_here").append($.trim($("#smarteditor2").val()));
            });

            //교환 및 반품안내 미리보기
            $("#preview_exchange_mb").on('click', function () {
                oEditors.getById["smarteditor3"].exec("UPDATE_CONTENTS_FIELD", []);
                //내용에 아무것도 안적으면 alert 출력
                if ($.trim($("#smarteditor3").val()) == "<p>&nbsp;</p>") {
                    _popModal.Alert('', '내용을 입력해주세요.');
                    return false;
                }
                $(".mb_Template_Modal_Area").show();
                $(".click_menu").removeClass('mb_active');
                $("#click_menu3").addClass('mb_active');
                var _template = $("#MB_EXCHANGE_CONTENTS").html();
                $('.mb_contents_here').empty();
                //미리보기 컨텐츠 영역에 배송안내 컨텐츠 템플릿 삽입
                $('.mb_contents_here').append(_template);
                // 컨텐츠에 사용자가 스마트에디터에 입력시킨 템플릿 불러와서 출력
                oEditors.getById["smarteditor3"].exec("UPDATE_CONTENTS_FIELD", []);
                $(".mb_exchange_contents_here").empty();
                $(".mb_exchange_contents_here").append($.trim($("#smarteditor3").val()));
            });
            //상품 삭제하기 버튼
            $("#prodDel_Btn").on('click', function () {
                _popModal.Promt('알림', '정말로 삭제하시겠습니까?'
                    , function () {
                        showProgress();
                        $('#flag').val('del');
                        $('#form1').submit();
                    }
                    , function (err) { _popModal.Alert('알림', err); }
                );
            });
            // 삭제되었으면 
            if ($del_flag == "Y") {
                hideProgress();
                closeTabPath("/Source/admin/product/A_PRODUCT_EDIT.aspx");//탭 닫기
            }


            ////////////
            //허정현 끝

            //이용호 시작

            var isAnimating = {};

            $(".hide_button").click(function () {
                var targetId = $(this).data("target");
                if (!isAnimating[targetId]) {
                    isAnimating[targetId] = true;
                    $("#hide_button_wrap_" + targetId).slideUp(500, function () {
                        $(this).addClass("hidden");
                        $(".product_name_wrap_title#" + targetId).addClass("rotate"); 
                        isAnimating[targetId] = false;
                    });
                }
            });

            $(".product_name_wrap_title").click(function () {
                var targetId = this.id;
                if (!isAnimating[targetId]) {
                    isAnimating[targetId] = true;
                    $("#hide_button_wrap_" + targetId).slideToggle(500, function () {
                        $(this).toggleClass("hidden");
                        $(".product_name_wrap_title#" + targetId).toggleClass("rotate");                      
                        $(".product_name_wrap_title#" + targetId + " .material-icons").css("transition", "transform 0.5s ease");
                        isAnimating[targetId] = false;
                    });
                }
            });


            //글자수 200자 제한 
            $(".option_title_input > input").on("input", function () {
                var inputText = $(this).val();
                var charCount = inputText.length;
                var maxCharLimit = 200;

                if (charCount > maxCharLimit) {
                    //200자로 제한
                    inputText = inputText.substring(0, maxCharLimit);
                    $(this).val(inputText);
                    charCount = maxCharLimit;
                }
                //input 다음 요소를 charCount를 통해서 업데이트
                $(this).next().text(charCount);

            });


            $('#product_radio2').change(function () {
                if ($(this).is(':checked')) {
                    $('.product_radio2_wrap').css('display', 'none');
                }
            });
          
            $('#product_radio1').change(function () {
                if ($(this).is(':checked')) {
                    $('.product_radio2_wrap').css('display', 'block');
                }
            });

            $(".right_button").click(function () {
                $(".right_button").css("border-color", "#e2e2e2");
                $(".right_button").css("color", "#fff");
                $(".right_button").css("background-color", "#115c5e");
                $(".left_button").css("border-color", "#e2e2e2");
                $(".left_button").css("color", "black");
                $(".left_button").css("background-color", "#fff");
            });

            $(".left_button").click(function () {
                $(".left_button").css("border-color", "#115c5e");
                $(".left_button").css("color", "#fff");
                $(".left_button").css("background-color", "#115c5e");
                $(".right_button").css("border-color", "#e2e2e2");
                $(".right_button").css("color", "#4E4E4E");
                $(".right_button").css("background-color", "#fff");
            });

            //Radio Change Event
            $('input[name="VIEW_FLAG"]').on('change', function (e) {
                if ($(e.currentTarget).is(':checked')) {
                    $('.noRadioActive').removeClass('noRadioActive');
                    $(e.currentTarget).parents('.drkid-radio').addClass('noRadioActive');
                }
            });
            //Radio Change 옵션 사용 여부
            $('input[name="OPTION_USED_FLAG"]').on('change', function (e) {
                if ($(e.currentTarget).is(':checked')) {
                    $('.noRadioActive').removeClass('noRadioActive');
                    $(e.currentTarget).parents('.drkid-radio').addClass('noRadioActive');
                }
                if ($(e.currentTarget).val() + '' == 'Y') {
                    $('.option_total').show();
                } else {
                    $('.option_total').hide();
                }
            })
            // 카테고리 판매가 사용여부
            //사용 클릭시에 판매가 적용 부분이 나옴 지금은 display none 되어있음
            // 카테고리 판매가 사용여부

            // 정기배송 사용여부
            ////사용 클릭시에 정기배송 적용 부분이 나옴 지금은 display none 되어있음
            //$('#product_radio5').change(function () {
            //    if ($(this).is(':checked')) {
            //        $('.product_radio4_wrap').css('display', 'block');
            //    }
            //});
            ////사용 안함
            //$('#product_radio6').change(function () {
            //    if ($(this).is(':checked')) {
            //        $('.product_radio4_wrap').css('display', 'none');
            //    }
            //});
            // 정기배송 사용여부


            // 재구매할인 사용여부
            //사용 클릭시에 재구매할인 적용 부분이 나옴 지금은 display none 되어있음
            $('#product_radio7').change(function () {
                if ($(this).is(':checked')) {
                    $('.product_radio5_wrap').css('display', 'block');
                }
            });
            //사용 안함
            $('#product_radio8').change(function () {
                if ($(this).is(':checked')) {
                    $('.product_radio5_wrap').css('display', 'none');
                }
            });
            // 재구매할인 사용여부


            // 회원할인 사용여부
            //사용 클릭시에 회원할인 적용 부분이 나옴 지금은 display none 되어있음
            $('#product_radio9').change(function () {
                if ($(this).is(':checked')) {
                    $('.product_radio6_wrap').css('display', 'block');
                }
            });
            //사용 안함
            $('#product_radio10').change(function () {
                if ($(this).is(':checked')) {
                    $('.product_radio6_wrap').css('display', 'none');
                }
            });
            // 회원할인 사용여부

            //이용호 끝

            //카테고리
            //수정 2023 08 08 KSM
            $(".catagory_button").click(function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    let usedSid = String(data.CODE_SID);
                let _bools = true;
                $('.product-category-show-block').find('.product-category-wraper').each(function (index, item) {
                    if (($(item).data('targetsid') + '') == usedSid) {
                        _bools = false;
                    }
                });

                if (_bools == false) {
                    _popModal.Alert('알림', '이미 추가된 카테고리입니다.');
                    return;
                }

                let _template = `<div class="product-category-wraper" data-targetsid="{SID}">
                                    <div class="lower-font category-name">{NAME}</div>
                                    <div class="lowerst-font xbtnx-cate" data-targetdel="{SID}">
                                        <span class="material-icons lowerst-font">close</span>
                                    </div>
                                    <input type="hidden" name="CATEGORY_SID" value="{SID}" />
                                </div>`;
                _template = _template.replace(/{SID}/g, data.CODE_SID);
                _template = _template.replace(/{NAME}/g, data.CODE_NAME);
                let _appendTemp = $(_template);
                _appendTemp.find('.xbtnx-cate').on('click', function (e) {
                    delCategory(e.currentTarget);
                })

                $('.product-category-show-block').append(_appendTemp);
            }).catch((err) => {
                console.log(err);
        });
        });
        //카테고리 최초 바인딩
        $('.xbtnx-cate').on('click', function (e) {
            delCategory(e.currentTarget);
        });
        //id로 show hide
        $('select[name="DELIVERY_CD"]').on('change', function (e) {
            let _nowSelectValue = String($(e.currentTarget).val()).toUpperCase();
            // COST,HFREE,FREE
            $('.delivery-div-wrap').each(function (index, item) {
                let dataTarget = ($(item).data('dtarget') + '').split('|');
                let bools = false;
                for (let i = 0; i < dataTarget.length; i++) {
                    if (dataTarget[i] == _nowSelectValue) {
                        bools = true;
                    }
                }
                if (bools) {
                    $(item).show();
                } else {
                    $(item).hide();
                }
            });

            if (_nowSelectValue == "FREE") {
                $('input[name="DELIVERY_COST"]').val(0);
                $('input[name="DELIVERY_COST"]').prop('readonly', true);
                $('input[name="DELIVERY_COST"]').addClass('disableColor');
            } else {
                $('input[name="DELIVERY_COST"]').prop('readonly', false);
                $('input[name="DELIVERY_COST"]').removeClass('disableColor');
            }
        });
        //Stock Bind Pop
        $('#find-stock').on('click', function (e) {
            openPopPromise(e.currentTarget, 1).then((data) => {
                let CLASS = 'P_STOCK_GRID';
            let STOCK_CD = data.CODE_CODE;
            let STOCK_NM = data.CODE_NAME;
            let REMARK = data.CODE_SID;
            let PCS_COUNT = data.CODE_COUNT;

            let _bools = true;

            $(`#p-stock-tbody .${CLASS}`).each(function (index, item) {
                if (String($(item).find('input[name="STOCK_CD"]').val()) == STOCK_CD)
                {
                    _bools = false;
                }
            });

        if (!_bools) {
            _popModal.Alert('알림', '이미 추가된 제품입니다.');
            return;
        }
                    
        let _Html = getStockTemplate(CLASS, STOCK_CD, STOCK_NM, PCS_COUNT, REMARK);
        $('#p-stock-tbody').append(_Html);
        $('.count_number_stock').html($('#p-stock-tbody > tr').length);
        }).catch((err) => {
            console.log(err);
        });
        });
        //GridDelBinding
        $('.delGridClass').on('click', function (e) {
            let returnArr = delGridData(e.currentTarget);
            if (returnArr["STATUS"] == "Y") {
                _popModal.Alert('알림', returnArr["MESSAGE"]);
            } else {
                console.log(returnArr["STATUS"]);
            }

            $('.count_number_stock').html($('#p-stock-tbody > tr').length);
        });
        //정기 배송 RadioBox작업
        $('input[name="AUTO_FLAG"]').change(function (e) {
            let _WraperTarget = $('.product-auto-insert-wraper');
            let _OptionWarper = $('.option-auto-insert-wraper');
            if (String($(e.currentTarget).val()) == 'Y') {
                _WraperTarget.show();
                _OptionWarper.show();
            } else {
                _WraperTarget.hide();
                _OptionWarper.hide();
            }
        });
        //포인트 RadioBox작업
        $('input[name="POINT_FLAG"]').change(function (e) {
            let _WraperTarget = $('.product-auto-insert-wraper_p');
            if (String($(e.currentTarget).val()) == 'Y') {
                _WraperTarget.show();
            } else {
                _WraperTarget.hide();
            }
        });
        //포인트 % 인풋박스 
        $('input[name="POINT_PER"]').inputmask("decimal", {//환율 소수점 두자리
            groupSeparator: ",",
            autoGroup: true,
            removeMaskOnSubmit: true,
            digits: 1
        });
        $('.AUTO_FLAG_OPTION').change(function (e) {
            let _Target = $(e.currentTarget)
            let _Data = _Target.data('opsid');
            let _value = _Target.val() + '';
            $(`input[name="AUTO_FLAG_OPTION"][data-opsid="${_Data}"]`).val(_value);
            if (_value == 'Y') {
                $(`.option-auto-insert-wraper[data-opsid="${_Data}"]`).show();
            } else {
                $(`.option-auto-insert-wraper[data-opsid="${_Data}"]`).hide();
            }
        });
        //Option의 판매가 사용 Flag Event Binding
        $('.OPTION_VIEW_SALE_FLAG').on('change', function (e) {
            changeViewsaveflag(e.currentTarget,'OPTION_VIEW_SALE_FLAG');
        });
        $('.OPTION_AUTO_FLAG').on('change', function (e) {
            changeViewsaveflag(e.currentTarget, 'OPTION_AUTO_FLAG');
        })
        $('input[name="OPTION_NAME"]').on('input', function (e) {
            updateCharacterCount($(e.currentTarget));
        });
        //Option Add Btn
        $('#OptionAddButton').on('click', function () {
                
            let _checker = $('input:radio[name="AUTO_FLAG"]:checked').val() + '';
            console.log("_checker:",_checker)
            let _html = $('#OptionTemplate').html();
            //_SelectSeq
            //Set Save Option Sid
            let _OPTION_SID = -1;
            $('.option_box .option_box_wrap').each(function (index, item) {
                let _Sid = $(item).data('wrap') * 1;
                if (_Sid <= _OPTION_SID) {
                    _OPTION_SID = _Sid - 1;
                }
            });
            _html = _html.replace(/{OPTION_SID}/g, _OPTION_SID);
            let _appendHtml = $(_html);
            //Number Bind
            _appendHtml.find('.IntNum').inputmask("decimal", {
                groupSeparator: ",",
                autoGroup: true,
                removeMaskOnSubmit: true,
                digits: 0
            });
            //Text Change Bind
            _appendHtml.find('input[name="OPTION_NAME"]').on('input', function (e) {
                updateCharacterCount($(e.currentTarget));
            });
            _appendHtml.find('.OPTION_VIEW_SALE_FLAG').on('change', function (e) {
                changeViewsaveflag(e.currentTarget,'OPTION_VIEW_SALE_FLAG');
            });
            _appendHtml.find('.OPTION_AUTO_FLAG').on('change', function (e) {
                changeViewsaveflag(e.currentTarget, 'OPTION_AUTO_FLAG');
            })
            //Option Click binding
            _appendHtml.find('.find-option-stock').on('click', function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    let CLASS = 'O_STOCK_GRID_' + _OPTION_SID;
                let STOCK_CD = data.CODE_CODE;
                let STOCK_NM = data.CODE_NAME;
                let REMARK = data.CODE_SID;
                let PCS_COUNT = data.CODE_COUNT;

                let _bools = true;

                $(`#o-stock-tbody_${_OPTION_SID} .${CLASS}`).each(function (index, item) {
                    if (String($(item).find('input[name="OPTION_STOCK_CD"]').val()) == STOCK_CD) {
                        _bools = false;
                    }
                });
        if (!_bools) {
            _popModal.Alert('알림', '이미 추가된 제품입니다.');
            return;
        }
        let _Html = getStockTemplate(CLASS, STOCK_CD, STOCK_NM, PCS_COUNT, REMARK, 'OPTION', _OPTION_SID);
        $(`#o-stock-tbody_${_OPTION_SID}`).append(_Html);
        $('.count_number_stock').html($(`#o-stock-tbody_${_OPTION_SID} > tr`).length);
        }).catch((err) => {
            console.log(err);
        });
        });

        $('.option_box').append(_appendHtml);
        if (_checker == 'Y') {
            console.log("show")
            console.log("_appendHtml:",_appendHtml)
            _appendHtml.find('.option-auto-insert-wraper').show();
            //$('.option-auto-insert-wraper').show();
        } else {
            console.log("hide")
            _appendHtml.find('.option-auto-insert-wraper').hide();
        }
        $(`.option_box [data-wrap="${_OPTION_SID}"]`).find('.option_select').each(function (index, item) {
            _SelectSeq = _SelectSeq + index + 1;
            let _indexs = _SelectSeq;
            _SelectBoxOption.TemplaterSetup(item, _indexs);
        });
        });
        //Save Data
        $('.save-data-btn').on('click', function () {
            //Validation
            let _VaReturn = Validation();
            if (_VaReturn["STATUS"] == "Y") {
                _popModal.Alert('알림', _VaReturn["MESSAGE"]);
                return;
            }
            _popModal.Promt('알림', '저장하시겠습니까?', () => {
                oEditors.getById["smarteditor1"].exec("UPDATE_CONTENTS_FIELD", []);
            oEditors.getById["smarteditor2"].exec("UPDATE_CONTENTS_FIELD", []);
            oEditors.getById["smarteditor3"].exec("UPDATE_CONTENTS_FIELD", []);
            //showProgress();
            //ㅈㅎ OPTION_AUTO_FLAG_LIST
            $("#OPTION_AUTO_FLAG_LIST").val('');
            option_auto_flag_list = [];
            $('input[type="radio"][name^="OPTION_AUTO_FLAG_"]:checked').each(function() {
                option_auto_flag_list.push($(this).val())
                var valueString = option_auto_flag_list.join(',');
                $("#OPTION_AUTO_FLAG_LIST").val(valueString);
            });
            console.log($("#OPTION_AUTO_FLAG_LIST").val())
            $('#flag').val('save');
            $('#form1').submit();
        }, (err) => { _popModal.Alert('알림', err); });
        });
        //Image Upload
        $('.target-clicker').on('click', function (e) {
            let _TargetType = $(e.currentTarget).data('type');
            _NowTarget = _TargetType;
            $('#uploader4_TextBox0_Input').click();
        })
        //HJH DB로 불러온 EDMS 이미지 X버튼 이벤트
        $(".DB_xbtn-wraper").on("click",function(e,event) {
            $(e.currentTarget).parent().find('.target-clicker').empty();
            $(e.currentTarget).parent().find('.target-clicker').html(`<span class="material-icons plusicons">add</span>`);
            $(e.currentTarget).remove();
        });
        });
        //이용호 추가 END
        //Save Validation
        function Validation() {
            let _returnArr = {
                STATUS: "N",
                MESSAGE : ""
            };
            $('.importantInput').each(function (index, item) {
                if ($.trim($(item).val() + '') == '') {
                    _returnArr["STATUS"] = "Y";
                    _returnArr["MESSAGE"] = $(item).data('title') + '을 입력해주세요.';
                    return _returnArr;
                }
            });
            if ($('input[name="CATEGORY_SID"]').length == 0) {
                _returnArr["STATUS"] = "Y";
                _returnArr["MESSAGE"] = '하나이상의 카테고리를 연결해주세요.'
                return _returnArr;
            }
            if ($('input[name="STOCK_CD"]').length == 0) {
                _returnArr["STATUS"] = "Y";
                _returnArr["MESSAGE"] = '하나이상의 제품을 연결해주세요.'
                return _returnArr;
            }
            return _returnArr;
        }
        //Category Delete
        function delCategory(target) {
            let _targetSid = $(target).data('targetdel');
            $(`[data-targetsid="${_targetSid}"]`).remove();
        }

        //200자 글자 제한 Fuction 
        function updateCharacterCount(inputElement) {
            var inputText = inputElement.val();
            var charCount = inputText.length;
            var maxCharLimit = 200;
            //작성되는 글자수가 maxCharLimit(200)자를 넘었을때 
            if (charCount > maxCharLimit) {
                inputText = inputText.substring(0, maxCharLimit);
                inputElement.val(inputText);
                charCount = maxCharLimit;
            }
            //input 다음요소에 글자수 카운트를 적용시킴
            inputElement.next().text(charCount);
        }

        //.option_title_input > input에 업로드 되는 글자수 카운터를 적용 시킴 
        // ex) t2l이라는 글자수 3글자를 적으면 input 다음요소에 3이라는 카운터를 적용시킴
        function bindInputEvents(optionBox) {
            optionBox.find(".option_title_input > input").on("input", function () {
                updateCharacterCount($(this));
            });
        }

        //KSM
        function getStockTemplate(CLASS, STOCK_CD, STOCK_NM, STOCK_COUNT, STOCK_REMARK,TYPE,OPTION_SID) {
            let _CLASS = CLASS != undefined ? CLASS : '';
            let _STOCK_CD = STOCK_CD != undefined ? STOCK_CD : '';
            let _STOCK_NM = STOCK_NM != undefined ? STOCK_NM : '';
            let _STOCK_COUNT = STOCK_COUNT != undefined ? STOCK_COUNT : '';
            let _STOCK_REMARK = STOCK_REMARK != undefined ? STOCK_REMARK : '';
            let _TYPE = TYPE != undefined ? TYPE : 'PRODUCT';
            let _OPTION_SID = OPTION_SID != undefined ? OPTION_SID : '0';

            let _html;
            _html = $('#STOCK_TEMPLATE').html();
            if (_TYPE == "OPTION") {
                _html = $('#STOCK_OPTION_TEMPLATE').html();
                _html = _html.replace(/{OPTION_SID}/g, _OPTION_SID);
            }
            _html = _html.replace(/{CLASS}/g, _CLASS);
            _html = _html.replace(/{STOCK_CD}/g, _STOCK_CD);
            _html = _html.replace(/{STOCK_NM}/g, _STOCK_NM);
            _html = _html.replace(/{STOCK_COUNT}/g, _STOCK_COUNT);
            _html = _html.replace(/{REMARK}/g, _STOCK_REMARK);

            let _appendHtml = $(_html);
            //number Bind
            _appendHtml.find('.IntNum').inputmask("decimal", {
                groupSeparator: ",",
                autoGroup: true,
                removeMaskOnSubmit: true,
                digits: 0
            });
            //Event bind
            _appendHtml.find('input[name="CHECK_BOX"]').on('click', function (e) {
                checkBoxActive(e.currentTarget);
            });
            return _appendHtml;
        }
        //Del Grid
        function delGridData(target) {
            let returnArr = {
                STATUS: "N",
                MESSAGE: ""
            }
            let _TargetClass = $(target).data('class');
            if (_TargetClass == null || _TargetClass == undefined) {
                returnArr["STATUS"] = "Y";
                returnArr["MESSAGE"] = "타겟클래스가 지정되지 않았습니다.";
                return returnArr;
            }

            $(`.${_TargetClass}`).each(function (index, item) {
                if ($(item).find('input[name="CHECK_BOX"]').is(':checked')) {
                    $(item).remove();
                }
            });
        return returnArr;
        }
        //option view sale flag 교환 fuction
        function changeViewsaveflag(target,inputName) {
            let _target = $(target);
            let _targetValue = _target.val()+'';
            let _targetHidden = _target.parents('.radio-wraper').find(`input[name="${inputName}"]`);
            _targetHidden.val(_targetValue);
            let _targetHeader = _target.parents('.radio-wraper-header');
            if (_targetHeader.length != 0 && _targetValue == "Y") {
                _targetHeader.siblings('.radio-wraper-showhide').show();
            } else {
                _targetHeader.siblings('.radio-wraper-showhide').hide();
            }
        }
        
        //Image Upload Setting
        function UpdateUploadButton4() {
            //업로드를 업로드 시켜 Callback을 타게함.
            //이때 Process bar 넣어서 로딩 처리
            uploader4.Upload();
        }
        //여러개 올릴때 Upload file이 계속 바뀌므로 계속 타게 처리.
        function Uploader_OnFilesUploadComplete4(args) {
            UpdateUploadButton4();
        }
        function Uploader_OnFileUploadComplete4(args) {
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
        } else {
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
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="DELETE_SID" id="delete_sid" value="" />
        <input type="text" name="OPTION_AUTO_FLAG_LIST" id="OPTION_AUTO_FLAG_LIST" value="" />
        <input type="text" name="PRODUCT_SID" id="PRODUCT_SID" value="<%=PRODUCT_SID %>" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font">상품등록</span>
        </div>
        <div class="top_button">
            <div class="top_button_wrap">
                <div class="first_button">
                    <span>상품리뷰</span>
                </div>
                <div class="second_button">
                    <div class="one main_bg_color save-data-btn">
                        <span>저장하기</span>
                    </div>
                    <div class="two">
                        <span>삭제하기</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="product_name_wrap">
            <%--상품명--%>
            <div class="product_name_wrap_title" id="product1">
                <span class="middle-font main_title">상품명</span>
                <span class="material-icons arrow hide_button" data-target="product1">expand_less</span>
            </div>
            <%--상품명 상품 코드--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product1">
                <div class="product_name_sub_wrap_title">
                    <div class="EDIT_title">
                        <span class="red">*</span>
                        <span>상품명</span>
                    </div>
                    <div class="box">
                        <div class="option_title_input">
                            <input class="drkid-input drkid-input_box importantInput" data-title="상품명" type="text" name="PRODUCT_NM" value="<%=PRODUCT_NM %>" maxlength="200" />
                            <span class="main_color"><%=PRODUCT_NM.Length %></span>
                            <span>/200</span>
                        </div>
                    </div>

                </div>
                <div class="product_name_sub_wrap_code">
                    <div class="EDIT_title">
                        <span class="red">*</span>
                        <span>상품코드</span>
                    </div>
                    <div class="EDIT_code">
                        <input type="text" class="drkid-input lowerst-font input-searchheight disableColor" value="<%=PRODUCT_CD %>" name="PRODUCT_CD" maxlength="50" placeholder="상품코드" readonly="readonly" />
                        <span>상품 코드는 자동생성됩니다. 자동 생성 후 수정 불가합니다.</span>
                    </div>
                </div>
            </div>
        </div>

        <%--상품 주요 정보--%>
        <div class="product_name_wrap">
            <div class="product_name_wrap_title" id="product15">
                <span class="middle-font main_title">상품 주요 정보</span>
                <span class="material-icons arrow hide_button" data-target="product15">expand_less</span>
            </div>
            <div id="hide_button_wrap_product15">
                <%--상품 전시--%>
                <div class="product_name_sub_wrap">
                    <div class="product_name_sub_wrap_title">
                        <div class="EDIT_title">
                            <span class="red">*</span>
                            <span>상품 전시</span>
                        </div>
                        <div class="option_button">
                            <label class="drkid-radio noRidio <%= VIEW_FLAG == "Y" || VIEW_FLAG == "" ? "noRadioActive" : "" %>">
                                <input type="radio" name="VIEW_FLAG" value="Y" <%=VIEW_FLAG == "" || VIEW_FLAG == "Y" ? "checked=\"checked\"" : "" %> />
                                <span class="lowerst-font">전시</span>
                            </label>
                            <label class="drkid-radio noRidio <%= VIEW_FLAG == "N" ? "noRadioActive" : "" %>">
                                <input type="radio" name="VIEW_FLAG" value="N" <%=VIEW_FLAG == "N" ? "checked=\"checked\"" : "" %> />
                                <span class="lowerst-font">전시중단</span>
                            </label>
                        </div>
                    </div>
                </div>
                <%--상품 검색 키워드--%>
                <div class="product_name_sub_wrap">
                    <div class="product_name_sub_wrap_title baseline">
                        <div class="EDIT_title">
                            <span class="red star_hidden">*</span>
                            <span>상품 검색 키워드</span>
                        </div>
                        <div class="box">
                            <div class="option_title_input">
                                <input class="drkid-input drkid-input_box lowerst-font importantInput" data-title="검색 키워드" type="text" name="PRODUCT_SEARCH_TAG" value="<%=PRODUCT_SEARCH_TAG %>" maxlength="200" placeholder="키워드를 입력해주세요." />
                                <span class="main_color"><%=PRODUCT_SEARCH_TAG.Length %></span>
                                <span>/200</span>
                            </div>

                            <div class="re_txt padding-top">
                                <span class="re_text_font">자사몰에서 고객들이 검색이용시 상품검색이 적용되는 키워드를 등록합니다.<br />
                                    키워드 등록은 #으로 구분됩니다.<br />
                                    예시) #닥터키드니 #비타민#화장품#엠플 #마스크팩
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <%--셀럽 상품 등록 가능 여부--%>
                <div class="product_name_sub_wrap">
                    <div class="product_name_sub_wrap_title">
                        <div class="EDIT_title">
                            <span class="red">*</span>
                            <span>셀럽 상품 등록 가능 여부</span>
                        </div>
                        <div class="title_box">
                            <div class="block-example bottom_padding">
                                <label class="drkid-radio">
                                    <input type="radio" name="USED_SELOVE" value="Y" <%=USED_SELOVE == "Y" ? "checked=\"checked\"" : "" %> />
                                    <span class="lowerst-font">셀럽 상품 등록</span>
                                </label>
                                <label class="drkid-radio">
                                    <input type="radio" name="USED_SELOVE" value="N" <%=USED_SELOVE == "" || USED_SELOVE == "N" ? "checked=\"checked\"" : "" %> />
                                    <span class="lowerst-font">셀럽 상품 등록 안함</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--카테고리--%>
        <div class="product_name_wrap">
            <%--카테고리 명--%>
            <div class="product_name_wrap_title" id="product2">
                <span class="middle-font main_title">카테고리</span>
                <span class="material-icons hide_button" data-target="product2">expand_less</span>
            </div>

            <%--카테고리 버튼--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product2">
                <div class="product-category-show-block">
                    <%for (int i = 0; i < CATEGORY_LIST.Rows.Count; i++)
                      { %>
                    <div class="product-category-wraper" data-targetsid="<%=CATEGORY_LIST.Rows[i]["CATEGORY_SID"]%>">
                        <div class="lower-font category-name"><%=CATEGORY_LIST.Rows[i]["CATEGORY_NAME"]%></div>
                        <div class="lowerst-font xbtnx-cate" data-targetdel="<%=CATEGORY_LIST.Rows[i]["CATEGORY_SID"]%>">
                            <span class="material-icons lowerst-font">close</span>
                        </div>
                        <input type="hidden" name="CATEGORY_SID" value="<%=CATEGORY_LIST.Rows[i]["CATEGORY_SID"]%>" />
                    </div>
                    <%} %>
                </div>
                <div class="drkid-btn lowerst-font main_bg_color catagory_button" data-class-code="PRODUCT_CATEGORY" data-title="카테고리 선택" data-search-target-id="CATEGORY" data-target="COMMON_POPUP_1" style="margin-bottom: 10px;">
                    <span>카테고리 선택</span>
                </div>
            </div>
        </div>
        <div class="product_name_wrap">
            <%--상품가--%>
            <div class="product_name_wrap_title" id="product3">
                <span class="middle-font main_title">상품가</span>
                <span class="material-icons hide_button" data-target="product3">expand_less</span>
            </div>
            <%--상품명 상품 코드--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product3">
                <%--상품가--%>
                <div class="product_name_sub_wrap_title padding-bottom">
                    <div class="EDIT_title">
                        <span class="red">*</span>
                        <span>상품가</span>
                    </div>
                    <div class="title_vox">
                        <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="SALE_RATE" value="<%=SALE_RATE %>" />
                        <span>원</span>
                    </div>
                </div>
                <%--판매가--%>
                <div class="product_name_sub_wrap_title padding-bottom">
                    <div class="EDIT_title">
                        <span class="red">*</span>
                        <span>판매가</span>
                    </div>
                    <div class="title_box">
                        <div class="block-example bottom_padding">
                            <label class="drkid-radio">
                                <input type="radio" name="VIEW_SALE_FLAG" value="Y" <%=VIEW_SALE_FLAG == "Y" ? "checked=\"checked\"" : "" %> id="product_radio1" />
                                <span class="lowerst-font">사용</span>
                            </label>
                            <label class="drkid-radio">
                                <input type="radio" name="VIEW_SALE_FLAG" value="N" <%=VIEW_SALE_FLAG == "N" || VIEW_SALE_FLAG == "" ? "checked=\"checked\"" : "" %> id="product_radio2" />
                                <span class="lowerst-font">사용안함</span>
                            </label>
                        </div>
                        <div class="product_radio2_wrap" <%=VIEW_SALE_FLAG == "Y" ? "style='display:block;'" :"" %>>
                            <div class="title_vox">
                                <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="VIEW_SALE_RATE" value="<%=VIEW_SALE_RATE %>" />
                                <span>원</span>
                            </div>
                        </div>
                    </div>
                </div>
                <%--pv--%>
                <div class="product_name_sub_wrap_title padding-bottom">
                    <div class="EDIT_title">
                        <span class="red star_hidden">*</span>
                        <span>PV</span>
                    </div>
                    <div class="new_price box_width">
                        <input class="drkid-input IntNum" type="text" name="PV_RATE" value="<%=PV_RATE %>" />
                    </div>
                </div>
                <%--Bv--%>
                <div class="product_name_sub_wrap_title padding-bottom">
                    <div class="EDIT_title">
                        <span class="red star_hidden">*</span>
                        <span>BV</span>
                    </div>
                    <div class="new_price box_width">
                        <input class="drkid-input IntNum" type="text" name="BV_RATE" value="<%=BV_RATE %>" />
                    </div>
                </div>
            </div>
        </div>
        <%--배송비--%>
        <div class="product_name_wrap">
            <div class="product_name_wrap_title" id="product4">
                <span class="middle-font main_title">배송비</span>
                <span class="material-icons hide_button" data-target="product4">expand_less</span>
            </div>
            <%--상품명 상품 코드--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product4">
                <%--배송비 종류--%>
                <div class="product_name_sub_wrap_title padding-bottom delivery_bottom">
                    <div class="EDIT_title">
                        <span class="red">*</span>
                        <span>배송비 종류</span>
                    </div>
                    <div class="title_vox">
                        <div class="block-example title_box_select">
                            <select class="drkid-select lower-font" style="width: 200px;" name="DELIVERY_CD" data-font-class="lower-font">
                                <option value="FREE" <%=DELIVERY_CD == "FREE" ? "selected=\"selected\"" : "" %>>무료</option>
                                <option value="HFREE" <%=DELIVERY_CD == "HFREE" ? "selected=\"selected\"" : "" %>>조건부 무료</option>
                                <option value="COST" <%=DELIVERY_CD == "COST" ? "selected=\"selected\"" : "" %>>유료</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="option_price_option delivery_padding_top">
                    <div class="product_name_sub_wrap_title padding-bottom-product delivery-div-wrap" data-dtarget="COST|HFREE|FREE">
                        <div class="EDIT_title">
                            <span class="red">*</span>
                            <span>기본 배송비</span>
                        </div>
                        <div class="title_vox">
                            <input class="drkid-input drkid-input_box border_none1 IntNum <%=DELIVERY_CD == "FREE" || DELIVERY_CD == "" ? "disableColor" : "" %>" type="text" name="DELIVERY_COST" value="<%=DELIVERY_COST %>" <%=DELIVERY_CD == "FREE" || DELIVERY_CD == "" ? "readonly=\"readonly\"" : "" %> />
                            <span>원</span>
                        </div>
                    </div>
                    <div class="product_name_sub_wrap_title padding-bottom-product delivery-div-wrap" data-dtarget="COST|HFREE|FREE">
                        <div class="EDIT_title">
                            <span class="red star_hidden">*</span>
                            <span>제주/도서산간 추가 배송비</span>
                        </div>
                        <div class="title_vox">
                            <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="DELIVERY_COST2" value="<%=DELIVERY_COST2 %>" />
                            <span>원</span>
                        </div>
                    </div>
                    <div class="product_name_sub_wrap_title padding-bottom-product delivery-div-wrap" data-dtarget="HFREE" <%=DELIVERY_CD == "HFREE" ? "" : "style='display:none;'" %>>
                        <div class="EDIT_title">
                            <span class="red">*</span>
                            <span>배송비 조건</span>
                        </div>
                        <div class="title_vox">
                            <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="DELIVERY_FREE_COST" value="<%=DELIVERY_FREE_COST %>" />
                            <span>원</span>
                        </div>
                        <div class="gong lowerst-font">
                            <span>이상 무료</span>
                        </div>
                    </div>
                    <div class="product_name_sub_wrap_title delivery-div-wrap" data-dtarget="HFREE" <%=DELIVERY_CD == "HFREE" ? "" : "style='display:none;'" %>>
                        <div class="EDIT_title"></div>
                        <div class="txt">
                            <span class="red">장바구니 상품 판매가 합계 (할인이 적용된 판매가+옵션가/추가상품가 포함 금액)</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--제품연결--%>
        <div class="product_name_wrap">
            <div class="product_name_wrap_title" id="product5">
                <span class="middle-font main_title">제품연결</span>
                <span class="material-icons hide_button" data-target="product5">expand_less</span>
            </div>
            <%--상품명 상품 코드--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product5">
                <%--제품연결--%>
                <div class="content_inner partion">
                    <div class="inner_wrap option_title">
                        <div class="label">
                            <span class="red">*</span>
                            <span>제품연결</span>
                        </div>
                    </div>
                    <div class="top_margin">
                        <div class="search_field">
                            <div class="drkid-btn-sub2 drkid-btn-active" id="find-stock" data-class-code="P_STOCK" data-title="제품 선택" data-search-target-id="CATEGORY" data-target="COMMON_POPUP_1">
                                <span class="lowerst-font">제품찾기</span>
                            </div>
                            <span>&nbsp&nbsp</span>
                            <div class="drkid-btn-sub2 delGridClass" data-class="P_STOCK_GRID">
                                <span class="lowerst-font">선택삭제</span>
                            </div>
                            <div class="search_title">
                                <span class="lower-font fcolor_dea">연결된 제품&nbsp</span>
                                <span class="lower-font count_sapn"><span class="count_number_stock"><%=connected_StockCount %></span> 개</span>
                            </div>
                            <div class="table-wraper max-height-overflow">
                                <table class="table-common">
                                    <colgroup>
                                        <col style="width: 40px" />
                                        <col style="width: 15%;" />
                                        <col style="width: 20%;" />
                                        <col style="width: 10%" />
                                        <col style="width: 10%" />
                                        <col />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th class="lower-font border-left-none">
                                                <label class="drkid-checkbox">
                                                    <input type="checkbox" value="Y" id="all-selecter" />
                                                    <span class="fake-check-box"></span>
                                                </label>
                                            </th>
                                            <th class="lower-font">제품코드</th>
                                            <th class="lower-font">제품명</th>
                                            <th class="lower-font">재고</th>
                                            <th class="lower-font">연결수량</th>
                                            <th class="lower-font">적재방식</th>
                                        </tr>
                                    </thead>
                                    <tbody id="p-stock-tbody">
                                        <%if (REQUEST_PROD_STOCK != null)
                                          {%>
                                            <%for (int i = 0; i < REQUEST_PROD_STOCK.Rows.Count; i++)
                                              {%>
                                                <tr class="P_STOCK_GRID" data-stocktr="<%=REQUEST_PROD_STOCK.Rows[i]["STOCK_CD"]%>">
                                                    <td class="lower-font">
                                                        <label class="drkid-checkbox">
                                                            <input type="checkbox" value="<%=REQUEST_PROD_STOCK.Rows[i]["STOCK_CD"]%>" name="CHECK_BOX">
                                                            <span class="fake-check-box"></span>
                                                        </label>
                                                    </td>
                                                    <td class="lower-font">
                                                        <input type="text" name="STOCK_CD" class="drkid-input lowerst-font input-lowheight disableColor" value="<%=REQUEST_PROD_STOCK.Rows[i]["STOCK_CD"]%>" placeholder="제품 코드" maxlength="100" readonly="readonly">
                                                    </td>
                                                    <td class="lower-font">
                                                        <input type="text" name="STOCK_NM" class="drkid-input lowerst-font input-lowheight disableColor" value="<%=REQUEST_PROD_STOCK.Rows[i]["STOCK_NM"]%>" placeholder="제품 명" maxlength="100" readonly="readonly">
                                                    </td>
                                                    <td class="lower-font">
                                                        <input type="text" name="STOCK_NM" class="drkid-input lowerst-font input-lowheight IntNum disableColor" value="<%=REQUEST_PROD_STOCK.Rows[i]["PCS_QTY"]%>" placeholder="재고 수" maxlength="100" readonly="readonly" inputmode="numeric" style="text-align: right;">
                                                    </td>
                                                    <td class="lower-font">
                                                        <input type="text" name="STOCK_COUNT" class="drkid-input lowerst-font input-lowheight IntNum" value="<%=REQUEST_PROD_STOCK.Rows[i]["STOCK_COUNT"]%>" placeholder="연결 수량" maxlength="20" inputmode="numeric" style="text-align: right;">
                                                    </td>
                                                    <td class="lower-font">
                                                        <input type="text" name="REMARK" class="drkid-input lowerst-font input-lowheight disableColor" value="<%=REQUEST_PROD_STOCK.Rows[i]["REMARK"]%>" placeholder="적재방식" maxlength="100" readonly="readonly">
                                                    </td>
                                                </tr>
                                            <%}%>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--포인트 허정현0823--%>
        <div class="product_name_wrap">
            <div class="product_name_wrap_title" id="product13">
                <span class="middle-font main_title">포인트</span>
                <span class="material-icons hide_button" data-target="product13">expand_less</span>
            </div>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product13">
                <%--포인트 사용여부 라디오 영역--%>
                <div class="product_name_sub_wrap_title">
                    <div class="EDIT_title">
                        <span class="red star_hidden">*</span>
                        <span>포인트 사용</span>
                    </div>
                    <div class="title_box">
                        <div class="block-example bottom_padding">
                            <label class="drkid-radio">
                                <input type="radio" name="POINT_FLAG" value="Y" <%=POINT_FLAG == "Y" ? "checked=\"checked\"" : "" %> />
                                <span class="lowerst-font">사용</span>
                            </label>
                            <label class="drkid-radio">
                                <input type="radio" name="POINT_FLAG" value="N" <%=POINT_FLAG == "" || POINT_FLAG == "N" ? "checked=\"checked\"" : "" %> />
                                <span class="lowerst-font">사용안함</span>
                            </label>
                        </div>
                    </div>
                </div>
                <%--포인트 % 인풋영역--%>
                <div class="product-auto-insert-wraper_p" <%=POINT_FLAG == "" || POINT_FLAG == "N" ? "style='display:none';" : "" %>>
                    <div class="product_name_sub_wrap_title padding-bottom">
                        <div class="EDIT_title">
                            <span class="red star_hidden">*</span>
                            <span>포인트</span>
                        </div>
                        <div class="title_vox">
                            <input class="drkid-input drkid-input_box border_none1" type="text" name="POINT_PER" value="<%=POINT_PER%>" maxlength="4" />
                            <span>%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--정기배송--%>
        <div class="product_name_wrap">
            <%--상품명--%>
            <div class="product_name_wrap_title" id="product8">
                <span class="middle-font main_title">정기배송</span>
                <span class="material-icons hide_button" data-target="product8">expand_less</span>
            </div>
            <%--상품명 상품 코드--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product8">
                <%--판매가--%>
                <div class="product_name_sub_wrap_title">
                    <div class="EDIT_title">
                        <span class="red star_hidden">*</span>
                        <span>정기배송</span>
                    </div>
                    <div class="title_box">
                        <div class="block-example bottom_padding">
                            <label class="drkid-radio">
                                <input type="radio" name="AUTO_FLAG" value="Y" <%=AUTO_FLAG == "Y" ? "checked=\"checked\"" : "" %> />
                                <span class="lowerst-font">사용</span>
                            </label>
                            <label class="drkid-radio">
                                <input type="radio" name="AUTO_FLAG" value="N" <%=AUTO_FLAG == "" || AUTO_FLAG == "N" ? "checked=\"checked\"" : "" %> />
                                <span class="lowerst-font">사용안함</span>
                            </label>
                        </div>
                    </div>
                </div>
                <%--정기구매가--%>
                <div class="product-auto-insert-wraper" <%=AUTO_FLAG == "" || AUTO_FLAG == "N" ? "style='display:none';" : "" %>>
                    <div class="product_name_sub_wrap_title padding-bottom">
                        <div class="EDIT_title">
                            <span class="red star_hidden">*</span>
                            <span>정기구매가</span>
                        </div>
                        <div class="title_vox">
                            <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="AUTO_RATE" value="<%=AUTO_RATE %>" />
                            <span>원</span>
                        </div>
                    </div>
                    <%--pv--%>
                    <div class="product_name_sub_wrap_title padding-bottom">
                        <div class="EDIT_title">
                            <span class="red star_hidden">*</span>
                            <span>PV</span>
                        </div>
                        <div class="box_width new_price">
                            <input class="drkid-input IntNum" type="text" name="AUTO_PV_RATE" value="<%=AUTO_PV_RATE %>" />
                        </div>
                    </div>
                    <%--Bv--%>
                    <div class="product_name_sub_wrap_title padding-bottom">
                        <div class="EDIT_title">
                            <span class="red star_hidden">*</span>
                            <span>BV</span>
                        </div>
                        <div class="box_width new_price">
                            <input class="drkid-input IntNum" type="text" name="AUTO_BV_RATE" value="<%=AUTO_BV_RATE %>" />
                        </div>
                    </div>
                    <%--기간별 할인율--%>
                    <%--숨겨 놓음 필요시 주석 해제--%>
                    <%--<div class="product_name_sub_wrap_title padding-bottom">
                                <div class="EDIT_title">
                                    <span class="red">*</span>                         
                                    <span>기간별 할인율</span>
                                </div>
                                <div class="operation_date">
                                    <span>3개월</span>
                                    <div class="title_vox">
                                        <input class="drkid-input drkid-input_box border_none1" type="text" name="" value="" style="width:100px;"/>
                                        <span>%</span>
                                    </div>
                                    <span>6개월</span>
                                    <div class="title_vox">
                                        <input class="drkid-input drkid-input_box border_none1" type="text" name="" value="" style="width:100px;"/>
                                        <span>%</span>
                                    </div>
                                    <span>12개월</span>
                                    <div class="title_vox">
                                        <input class="drkid-input drkid-input_box border_none1" type="text" name="" value="" style="width:100px;"/>
                                        <span>%</span>
                                    </div>
                                </div>                      
                            </div>--%>
                </div>
            </div>
        </div>

        <%--옵션--%>
        <div class="product_name_wrap">
            <div class="product_name_wrap_title" id="product6">
                <span class="middle-font main_title">옵션</span>
                <span class="material-icons hide_button" data-target="product6">expand_less</span>
            </div>
            <%--상품명 상품 코드--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product6">
                <%--배송비 종류--%>
                <div class="product_name_sub_wrap_title">
                    <div class="EDIT_title">
                        <span class="red star_hidden">*</span>
                        <span>옵션</span>
                    </div>
                    <div class="option_button">
                        <label class="drkid-radio noRidio <%=OPTION_USED_FLAG == "Y" ? "noRadioActive" : "" %>">
                            <input type="radio" name="OPTION_USED_FLAG" value="Y" <%=OPTION_USED_FLAG == "Y" ? "checked=\"checked\"" : "" %> />
                            <span class="lowerst-font">설정함</span>
                        </label>
                        <label class="drkid-radio noRidio <%=OPTION_USED_FLAG == "" || OPTION_USED_FLAG == "N" ? "noRadioActive" : "" %>">
                            <input type="radio" name="OPTION_USED_FLAG" value="N" <%=OPTION_USED_FLAG == "" || OPTION_USED_FLAG == "N" ? "checked=\"checked\"" : "" %> />
                            <span class="lowerst-font">설정안함</span>
                        </label>
                    </div>
                </div>
                <%--옵션 박스--%>
                <div class="option_total" <%=OPTION_USED_FLAG == "Y" ? "style='display:block;'" : "" %>>
                    <div class="option_box">
                        <%--ㅈㅎ 옵션--%>
                        <% if (REQUEST_PROD_OPTION != null)
                           {%>
                            <%for (int j = 0; j < REQUEST_PROD_OPTION.Rows.Count; j++)
                              {%>
                                <div class="option_box_wrap" data-wrap="<%=REQUEST_PROD_OPTION.Rows[j]["PRODUCT_SID"]%>">
                                    <%--ㅈㅎPRODUCT_SID == OPTION_SID와 같음--%>
                                    <input type="hidden" name="OPTION_SID" value="<%=REQUEST_PROD_OPTION.Rows[j]["PRODUCT_SID"]%>" />
                                    <!-- 옵션명  -->
                                    <div class="option_box_wrap_top">
                                        <div class="option_title">
                                            <span class="red">*</span>
                                            <span>옵션명</span>
                                        </div>
                                        <div class="option_title_input">
                                            <input class="drkid-input drkid-input_box" type="text" name="OPTION_NAME" value="<%=REQUEST_PROD_OPTION.Rows[j]["OPTION_NAME"]%>" />
                                            <span class="main_color"><%=REQUEST_PROD_OPTION.Rows[j]["OPTION_NAME"].ToString().Length%></span>
                                            <span>/200</span>
                                        </div>
                                    </div>
                                    <!-- 상품가 -->
                                    <div class="option_box_price">
                                        <div class="option_title">
                                            <span class="red star_hidden">*</span>
                                            <span>상품가</span>
                                        </div>
                                        <div class="option_box_price_wrap">
                                            <div class="option_box_price_wrap_title">
                                                <span class="ed_lower_font">기존 상품가</span>
                                            </div>
                                            <div class="option_box_price_wrap_select">
                                                <div class="block-example">
                                                    <select class="drkid-select option_select" name="OPTION_SALE_TYPE" style="width: 250px;" data-font-class="lower-font" data-styles='{"width":"80px","height":"40px"}'>
                                                        <option <%=REQUEST_PROD_OPTION.Rows[j]["OPTION_SALE_TYPE"].ToString() == "+" ? "selected=\"selected\"" : "" %>>+</option>
                                                        <option <%=REQUEST_PROD_OPTION.Rows[j]["OPTION_SALE_TYPE"].ToString() == "-" ? "selected=\"selected\"" : "" %>>-</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="option_box_price_wrap_box">
                                                <div class="title_vox">
                                                    <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="OPTION_SALE_RATE" value="<%=REQUEST_PROD_OPTION.Rows[j]["OPTION_SALE_RATE"]%>" />
                                                    <span>원</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--판매가-->
                                    <div class="option_box_price baseline">
                                        <div class="option_title">
                                            <span class="red star_hidden">*</span>
                                            <span>판매가</span>
                                        </div>
                                        <div>
                                            <div class="option_box_price_wrap_title radio-wraper-header">
                                                <div class="title_box">
                                                    <div class="block-example bottom_padding radio-wraper">
                                                        <label class="drkid-radio">
                                                            <input type="radio" name="OPTION_VIEW_SALE_FLAG_<%=REQUEST_PROD_OPTION.Rows[j]["PRODUCT_SID"]%>" class="OPTION_VIEW_SALE_FLAG" value="Y" <%=REQUEST_PROD_OPTION.Rows[j]["OPTION_VIEW_SALE_FLAG"].ToString() == "Y"  ? "checked=\"checked\"" : "" %> />
                                                            <span class="lowerst-font">사용</span>
                                                        </label>
                                                        <label class="drkid-radio">
                                                            <input type="radio" name="OPTION_VIEW_SALE_FLAG_<%=REQUEST_PROD_OPTION.Rows[j]["PRODUCT_SID"]%>" class="OPTION_VIEW_SALE_FLAG" value="N" <%=REQUEST_PROD_OPTION.Rows[j]["OPTION_VIEW_SALE_FLAG"].ToString() == "N" ? "checked=\"checked\"" : "" %> />
                                                            <span class="lowerst-font">사용안함</span>
                                                        </label>
                                                        <input type="hidden" name="OPTION_VIEW_SALE_FLAG" value="<%=REQUEST_PROD_OPTION.Rows[j]["OPTION_VIEW_SALE_FLAG"]%>" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product_radio3_wrap padding-top radio-wraper-showhide">
                                                <div class="option_box_price_wrap">
                                                    <div class="option_box_price_wrap_title">
                                                        <span class="ed_lower_font">기존 판매가</span>
                                                    </div>
                                                    <div class="option_box_price_wrap_select">
                                                        <div class="block-example">
                                                            <select class="drkid-select option_select" name="OPTION_VIEW_SALE_TYPE" style="width: 250px;" data-font-class="lower-font" data-styles='{"width":"80px","height":"40px"}'>
                                                                <option <%=REQUEST_PROD_OPTION.Rows[j]["OPTION_VIEW_SALE_TYPE"].ToString() == "+" ? "selected=\"selected\"" : "" %>>+</option>
                                                                <option <%=REQUEST_PROD_OPTION.Rows[j]["OPTION_VIEW_SALE_TYPE"].ToString() == "-" ? "selected=\"selected\"" : "" %>>-</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="option_box_price_wrap_box">
                                                        <div class="title_vox">
                                                            <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="OPTION_VIEW_SALE_RATE" value="<%=REQUEST_PROD_OPTION.Rows[j]["OPTION_VIEW_SALE_RATE"]%>" />
                                                            <span>원</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="option_v">
                                        <div class="option_title">
                                            <span class="red star_hidden">*</span>
                                            <span>PV</span>
                                        </div>
                                        <div class="pv_wrap">
                                            <input type="text" class="IntNum" name="OPTION_PV_RATE" value="<%=REQUEST_PROD_OPTION.Rows[j]["PV_RATE"]%>" />
                                        </div>
                                    </div>
                                    <div class="option_v">
                                        <div class="option_title">
                                            <span class="red star_hidden">*</span>
                                            <span>BV</span>
                                        </div>
                                        <div class="pv_wrap">
                                            <input type="text" class="IntNum" name="OPTION_BV_RATE" value="<%=REQUEST_PROD_OPTION.Rows[j]["BV_RATE"]%>" />
                                        </div>
                                    </div>
                                    <!--제품연결-->
                                    <div class="content_inner partion">
                                        <div class="inner_wrap option_title">
                                            <div class="label">
                                                <span class="red star_hidden">*</span>
                                                <span>제품연결</span>
                                            </div>
                                        </div>
                                        <div class="top_margin">
                                            <div class="search_field">
                                                <div class="drkid-btn-sub2 drkid-btn-active find-option-stock" data-class-code="P_STOCK" data-title="제품 선택" data-search-target-id="CATEGORY" data-target="COMMON_POPUP_1">
                                                    <span class="lowerst-font">제품찾기</span>
                                                </div>
                                                <span>&nbsp&nbsp</span>
                                                <div class="drkid-btn-sub2 delGridClass" data-class="O_STOCK_GRID_<%=REQUEST_PROD_OPTION.Rows[j]["PRODUCT_SID"]%>">
                                                    <span class="lowerst-font">선택삭제</span>
                                                </div>
                                                <div class="top_margin">
                                                    <div class="table-wraper max-height-overflow">
                                                        <table class="table-common">
                                                            <colgroup>
                                                                <col style="width: 40px" />
                                                                <col style="width: 15%;" />
                                                                <col style="width: 20%;" />
                                                                <col style="width: 10%" />
                                                                <col style="width: 10%" />
                                                                <col />
                                                            </colgroup>
                                                            <thead>
                                                                <tr>
                                                                    <th class="lower-font border-left-none">
                                                                        <label class="drkid-checkbox">
                                                                            <input type="checkbox" value="Y" class="option-selector" />
                                                                            <span class="fake-check-box"></span>
                                                                        </label>
                                                                    </th>
                                                                    <th class="lower-font">제품코드</th>
                                                                    <th class="lower-font">제품명</th>
                                                                    <th class="lower-font">재고</th>
                                                                    <th class="lower-font">연결수량</th>
                                                                    <th class="lower-font">적재방식</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody id="o-stock-tbody_<%=REQUEST_PROD_OPTION.Rows[j]["PRODUCT_SID"]%>">
                                                                <% if (REQUEST_PROD_OPTION_STOCK != null)
                                                                   { %>
                                                                    <%for (int k = 0; k < REQUEST_PROD_OPTION_STOCK.Rows.Count; k++)
                                                                      { %>
                                                                        <% if (REQUEST_PROD_OPTION.Rows[j]["PRODUCT_SID"].ToString() == REQUEST_PROD_OPTION_STOCK.Rows[k]["PRODUCT_SID"].ToString())
                                                                           { %>
                                                                                <tr class="O_STOCK_GRID_<%=REQUEST_PROD_OPTION_STOCK.Rows[k]["PRODUCT_SID"]%>" data-stocktr="<%=REQUEST_PROD_OPTION_STOCK.Rows[k]["STOCK_CD"]%>">
                                                                                    <td class="lower-font">
                                                                                        <label class="drkid-checkbox">
                                                                                            <input type="checkbox" value="<%=REQUEST_PROD_OPTION_STOCK.Rows[k]["STOCK_CD"]%>" name="CHECK_BOX">
                                                                                            <span class="fake-check-box"></span>
                                                                                        </label>
                                                                                    </td>
                                                                                    <td class="lower-font">
                                                                                        <input type="text" name="OPTION_STOCK_CD" class="drkid-input lowerst-font input-lowheight disableColor" value="<%=REQUEST_PROD_OPTION_STOCK.Rows[k]["STOCK_CD"]%>" placeholder="제품 코드" maxlength="100" readonly="readonly">
                                                                                    </td>
                                                                                    <td class="lower-font">
                                                                                        <input type="text" name="OPTION_STOCK_NM" class="drkid-input lowerst-font input-lowheight disableColor" value="<%=REQUEST_PROD_OPTION_STOCK.Rows[k]["STOCK_NM"]%>" placeholder="제품 명" maxlength="100" readonly="readonly">
                                                                                    </td>
                                                                                    <td class="lower-font">
                                                                                        <input type="text" name="OPTION_STOCK_NM" class="drkid-input lowerst-font input-lowheight IntNum disableColor" value="<%=REQUEST_PROD_OPTION_STOCK.Rows[k]["PCS_QTY"]%>" placeholder="재고 수" maxlength="100" readonly="readonly" inputmode="numeric" style="text-align: right;">
                                                                                    </td>
                                                                                    <td class="lower-font">
                                                                                        <input type="text" name="OPTION_STOCK_COUNT" class="drkid-input lowerst-font input-lowheight IntNum" value="<%=REQUEST_PROD_OPTION_STOCK.Rows[k]["STOCK_COUNT"]%>" placeholder="연결 수량" maxlength="20" inputmode="numeric" style="text-align: right;">
                                                                                    </td>
                                                                                    <td class="lower-font">
                                                                                        <input type="text" name="REMARK" class="drkid-input lowerst-font input-lowheight disableColor" value="<%=REQUEST_PROD_OPTION_STOCK.Rows[k]["REMARK"]%>" placeholder="적재방식" maxlength="100" readonly="readonly">
                                                                                        <input type="hidden" name="STOCK_OPTION_SID" value="<%=REQUEST_PROD_OPTION_STOCK.Rows[k]["PRODUCT_SID"]%>">
                                                                                    </td>
                                                                                </tr>
                                                                        <%}%>
                                                                    <%}%>
                                                                <%}%>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--옵션 정기배송--%>
                                    <div class="option-auto-insert-wraper" <%=AUTO_FLAG == "Y" ? "style='display:block;'" : "" %>>
                                        <div class="option_box_price baseline radio-wraper-header">
                                            <div class="option_title">
                                                <span class="red star_hidden">*</span>
                                                <span>옵션 정기배송</span>
                                            </div>
                                            <div>
                                                <div class="option_box_price_wrap_title">
                                                    <div class="title_box">
                                                        <div class="block-example bottom_padding radio-wraper">
                                                            <label class="drkid-radio">
                                                                <input type="radio" name="OPTION_AUTO_FLAG_<%=REQUEST_PROD_OPTION.Rows[j]["PRODUCT_SID"]%>" class="OPTION_AUTO_FLAG" value="Y" <%=REQUEST_PROD_OPTION.Rows[j]["AUTO_FLAG"].ToString() == "Y" ? "checked=\"checked\"" : "" %> />
                                                                <span class="lowerst-font">사용</span>
                                                            </label>
                                                            <label class="drkid-radio">
                                                                <input type="radio" name="OPTION_AUTO_FLAG_<%=REQUEST_PROD_OPTION.Rows[j]["PRODUCT_SID"]%>" class="OPTION_AUTO_FLAG" value="N" <%=REQUEST_PROD_OPTION.Rows[j]["AUTO_FLAG"].ToString() == "N" ? "checked=\"checked\"" : "" %> />
                                                                <span class="lowerst-font">사용안함</span>
                                                            </label>
                                                            <%--<input type="hidden" name="OPTION_AUTO_FLAG" value="N" />--%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="radio-wraper-showhide" <%=REQUEST_PROD_OPTION.Rows[j]["AUTO_FLAG"].ToString() == "Y" ? "style='display:block;'" : "" %>>
                                            <div class="option_v">
                                                <div class="option_title">
                                                    <span class="red star_hidden">*</span>
                                                    <span>옵션정기구매가</span>
                                                </div>
                                                <div class="title_vox">
                                                    <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="OPTION_AUTO_RATE" value="<%=Convert.ToInt64(REQUEST_PROD_OPTION.Rows[j]["AUTO_RATE3"])%>" />
                                                    <span>원</span>
                                                </div>
                                            </div>
                                            <div class="option_v">
                                                <div class="option_title">
                                                    <span class="red star_hidden">*</span>
                                                    <span>PV</span>
                                                </div>
                                                <div class="pv_wrap">
                                                    <input type="text" class="IntNum" name="OPTION_AUTO_PV_RATE" value="<%=REQUEST_PROD_OPTION.Rows[j]["AUTO_PV_RATE"]%>" />
                                                </div>
                                            </div>
                                            <div class="option_v">
                                                <div class="option_title">
                                                    <span class="red star_hidden">*</span>
                                                    <span>BV</span>
                                                </div>
                                                <div class="pv_wrap">
                                                    <input type="text" class="IntNum" name="OPTION_AUTO_BV_RATE" value="<%=REQUEST_PROD_OPTION.Rows[j]["AUTO_BV_RATE"]%>" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <%}%>
                        <%}%>
                    </div>
                    <%--옵션 추가 버튼--%>
                    <div class="option_plus_button main_color" id="OptionAddButton">
                        <span class="material-icons middle-font">add</span>
                        <span class="middle-font">옵션 추가하기</span>
                    </div>
                </div>
            </div>
        </div>

        <%--할인--%>
        <div class="product_name_wrap">
            <div class="product_name_wrap_title" id="product7">
                <span class="middle-font main_title">할인</span>
                <span class="material-icons hide_button" data-target="product7">expand_less</span>
            </div>
            <%--할인 hidden--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product7">
                <%--재구매 할인--%>
                <div class="product_name_sub_wrap_title baseline padding-bottom delivery_bottom">
                    <div class="EDIT_title">
                        <span class="red star_hidden">*</span>
                        <span>재구매 할인</span>
                    </div>
                    <div class="title_box">
                        <div class="re_txt padding-bottom">
                            <span class="re_text_font">재구매 할인과 회원할인은 BV기준으로 할인%가 적용됩니다.
                                <br />
                                기타 할인의 경우는 프로모션으로 적용하세요.
                            </span>
                        </div>

                        <div class="block-example bottom_padding">
                            <label class="drkid-radio">
                                <input type="radio" name="REBUY_FLAG" value="Y" <%=REBUY_FLAG == "Y" ? "checked=\"checked\"" : "" %> id="product_radio7" />
                                <span class="lowerst-font">사용</span>
                            </label>
                            <label class="drkid-radio">
                                <input type="radio" name="REBUY_FLAG" value="N" <%=REBUY_FLAG == "" || REBUY_FLAG == "N" ? "checked=\"checked\"" : "" %> id="product_radio8" />
                                <span class="lowerst-font">사용안함</span>
                            </label>
                        </div>
                        <div class="product_radio5_wrap" <%=REBUY_FLAG == "Y" ? "style= 'display:block';" : "" %>>
                            <div class="title_vox width_wrap">
                                <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="REBUY_RATE" value="<%=REBUY_RATE %>" />
                                <span>%</span>
                            </div>
                        </div>
                    </div>
                </div>
                <%--회원 할인--%>
                <div class="product_name_sub_wrap_title baseline padding-top">
                    <div class="EDIT_title">
                        <span class="red star_hidden">*</span>
                        <span>회원 할인</span>
                    </div>
                    <div class="title_box">
                        <div class="re_txt padding-bottom">
                            <span class="re_text_font">회원할인 - 비회원이 아닌 회원(회원가입한 회원이면 전체)를 뜻하며, 등급회원할인과 별개로 운영
                            </span>
                        </div>

                        <div class="block-example bottom_padding">
                            <label class="drkid-radio">
                                <input type="radio" name="USER_SALE_FLAG" value="Y" <%=USER_SALE_FLAG == "Y" ? "checked=\"checked\"" : "" %> id="product_radio9" />
                                <span class="lowerst-font">사용</span>
                            </label>
                            <label class="drkid-radio">
                                <input type="radio" name="USER_SALE_FLAG" value="N" <%=USER_SALE_FLAG == "" || USER_SALE_FLAG == "N" ? "checked=\"checked\"" : "" %> id="product_radio10" />
                                <span class="lowerst-font">사용안함</span>
                            </label>
                        </div>
                        <div class="product_radio6_wrap" <%=USER_SALE_FLAG == "Y" ? "style= 'display:block';" : "" %>>
                            <div class="title_vox width_wrap">
                                <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="USER_SALE_RATE" value="<%=USER_SALE_RATE %>" />
                                <span>%</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--상품이미지--%>
        <div class="product_name_wrap">
            <div class="product_name_wrap_title" id="product9">
                <span class="middle-font main_title">상품이미지</span>
                <span class="material-icons hide_button" data-target="product9">expand_less</span>
            </div>

            <div id="hide_button_wrap_product9">
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
                                <% if (REQUEST_PROD_IMG != null && REQUEST_PROD_IMG.Rows.Count > 0)
                                {%>
                                    <%for (int e = 0; e < REQUEST_PROD_IMG.Rows.Count; e++)
                                      { %>
                                        <%if (REQUEST_PROD_IMG.Rows[e]["RELATION_CODE"].ToString() == "MAIN_IMAGE")
                                          { %>
                                            <div class="img_grid_box">
                                                <div class="target-clicker MAIN_IMAGE" data-type="MAIN_IMAGE">
                                                    <div class="hidden-data" style="display: none;">
                                                        <input type='hidden' name='image_upload_byte' value='' />
                                                        <input type='hidden' name='image_upload_name' value='<%=REQUEST_PROD_IMG.Rows[e]["SOURCE_FILE_NAME"] %>' />
                                                        <input type='hidden' name='image_upload_ext' value='<%=REQUEST_PROD_IMG.Rows[e]["EXT"] %>' />
                                                        <input type='hidden' name='image_upload_sid' value='<%=REQUEST_PROD_IMG.Rows[e]["EDM_SID"] %>' />
                                                        <input type="hidden" name="image_upload_useble" value="Y" />
                                                        <input type="hidden" name="image_upload_type" value="<%=REQUEST_PROD_IMG.Rows[e]["RELATION_CODE"] %>" />
                                                    </div>
                                                    <img class='image_for_class2' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=REQUEST_PROD_IMG.Rows[e]["TARGET_READ_PATH"] %>' />
                                                </div>
                                                <div class="xbtn-wraper DB_xbtn-wraper" style="position: absolute; top: 5px; right: 5px; cursor: pointer; z-index: 100;">
                                                    <span class="material-icons lowerst-font">close</span>
                                                </div>
                                            </div>
                                        <%}%>
                                    <%}%>

                                <%}%>
                                <%else
                                   {%>
                                    <div class="img_grid_box">
                                        <div class="target-clicker MAIN_IMAGE" data-type="MAIN_IMAGE">
                                            <span class="material-icons plusicons">add</span>
                                        </div>
                                    </div>
                                <%}%>
                            </div>
                        </div>
                    </div>

                    <div class="img_wrap_inner img_padding_line">
                        <div class="EDIT_title">
                            <%--<span class="red">*</span>
                                <span>대표이미지</span>--%>
                        </div>
                        <div class="img_title">
                            <p class="main_color">
                                권장 크기 : 1000 x 1000<br />
                                jpg, png, gif / 최대 2MB 이하 파일만 등록 가능
                            </p>
                        </div>

                    </div>
                </div>

                <div class="product_name_sub_wrap">
                    <div class="img_wrap_inner">
                        <div class="EDIT_title">
                            <%--<span class="red">*</span>--%>
                                &nbsp&nbsp<span>추가이미지 (<span class="image-lenght-span">0</span>/5)</span>
                        </div>
                        <div class="img_up_wrap">
                            <%--이미지 업로드 박스--%>
                            <div class="img_grid">
                                <%--DB 서브 IMG--%>
                                <% if (REQUEST_PROD_IMG != null && REQUEST_PROD_IMG.Rows.Count > 0)
                                {%>
                                <%int subCount = 0;%>
                                    <%for (int e = 0; e < REQUEST_PROD_IMG.Rows.Count; e++)
                                      { %>
                                        <%if (REQUEST_PROD_IMG.Rows[e]["RELATION_CODE"].ToString() == "SUB_IMAGE")
                                          { %>
                                                <% subCount++;%>
                                                <div class="img_grid_box">
                                                    <div class="target-clicker SUB_IMAGE" data-type="SUB_IMAGE">
                                                        <div class="hidden-data" style="display: none;">
                                                            <input type='hidden' name='image_upload_byte' value='' />
                                                            <input type='hidden' name='image_upload_name' value='<%=REQUEST_PROD_IMG.Rows[e]["SOURCE_FILE_NAME"] %>' />
                                                            <input type='hidden' name='image_upload_ext' value='<%=REQUEST_PROD_IMG.Rows[e]["EXT"] %>' />
                                                            <input type='hidden' name='image_upload_sid' value='<%=REQUEST_PROD_IMG.Rows[e]["EDM_SID"] %>' />
                                                            <input type="hidden" name="image_upload_useble" value="Y" />
                                                            <input type="hidden" name="image_upload_type" value="<%=REQUEST_PROD_IMG.Rows[e]["RELATION_CODE"] %>" />
                                                        </div>
                                                        <img class='image_for_class2' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=REQUEST_PROD_IMG.Rows[e]["TARGET_READ_PATH"] %>' />
                                                    </div>
                                                    <div class="xbtn-wraper DB_xbtn-wraper" style="position: absolute; top: 5px; right: 5px; cursor: pointer; z-index: 100;">
                                                        <span class="material-icons lowerst-font">close</span>
                                                    </div>

                                                </div>
                                        <%}%>
                                    <%}%>
                                    <%for (int s = subCount; s < 5; s++)
                                      { %>
                                        <%--이미지 박스--%>
                                        <div class="img_grid_box">
                                            <div class="target-clicker SUB_IMAGE" data-type="SUB_IMAGE">
                                                <span class="material-icons plusicons">add</span>
                                            </div>
                                        </div>
                                    <%}%>
                                <%}%>
                                <%else
                                {%>
                                    <%--이미지 박스--%>
                                    <div class="img_grid_box">
                                        <div class="target-clicker SUB_IMAGE" data-type="SUB_IMAGE">
                                            <span class="material-icons plusicons">add</span>
                                        </div>
                                    </div>
                                    <%--이미지 박스--%>
                                    <div class="img_grid_box">
                                        <div class="target-clicker SUB_IMAGE" data-type="SUB_IMAGE">
                                            <span class="material-icons plusicons">add</span>
                                        </div>
                                    </div>
                                    <%--이미지 박스--%>
                                    <div class="img_grid_box">
                                        <div class="target-clicker SUB_IMAGE" data-type="SUB_IMAGE">
                                            <span class="material-icons plusicons">add</span>
                                        </div>
                                    </div>
                                    <%--이미지 박스--%>
                                    <div class="img_grid_box">
                                        <div class="target-clicker SUB_IMAGE" data-type="SUB_IMAGE">
                                            <span class="material-icons plusicons">add</span>
                                        </div>
                                    </div>
                                    <%--이미지 박스--%>
                                    <div class="img_grid_box">
                                        <div class="target-clicker SUB_IMAGE" data-type="SUB_IMAGE">
                                            <span class="material-icons plusicons">add</span>
                                        </div>
                                    </div>
                                <%}%>
                            </div>
                        </div>
                    </div>

                    <div class="img_wrap_inner">
                        <div class="EDIT_title">
                            <%--<span class="red">*</span>
                                <span>대표이미지</span>--%>
                        </div>
                        <%--<div class="change_button">
                                <span>순서변경</span>
                            </div>--%>
                    </div>


                    <div class="img_wrap_inner img_padding_line">
                        <div class="EDIT_title">
                            <%--<span class="red">*</span>
                                <span>대표이미지</span>--%>
                        </div>
                        <div class="img_title">
                            <p class="main_color">
                                권장 크기 : 1000 x 1000<br />
                                jpg, png, gif / 최대 2MB 이하 파일만 등록 가능<br />
                                추가이미지는 최대 5개까지 설정할 수 있습니다.
                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <%--상세 설명--%>
        <div class="product_name_wrap">
            <div class="product_name_wrap_title" id="product10">
                <span class="middle-font main_title">상세설명</span>
                <span class="material-icons hide_button" data-target="product10">expand_less</span>
            </div>
            <%--상품명 상품 코드--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product10">
                <%--배송비 종류--%>
                <div class="product_name_sub_wrap_title padding-bottom">
                    <div class="EDIT_title">
                        <span>상품 상세설명</span>
                    </div>
                    <div class="textarea">
                        <div class="textarea_wrap">
                            <textarea class="lower-font" name="PRODUCT_DETAIL_INFO" id="smarteditor1" style="width: 100%;"><%=PRODUCT_DETAIL_INFO %></textarea>
                        </div>
                        <div class="textarea_button">
                            <div class="textarea_button_wrap">
                                <div class="img_button" onclick="clickHideFileInput('uploader1_TextBox0_Input')">
                                    <span>이미지 등록</span>
                                </div>
                                <div class="textarea_second_button">
                                    <div class="one main_bg_color" id="preview_product_pc">
                                        <span>pc미리보기</span>
                                    </div>
                                    <div class="one main_bg_color" id="preview_product_mb">
                                        <span>모바일 미리보기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <%--상세 설명--%>
        <div class="product_name_wrap">
            <div class="product_name_wrap_title" id="product11">
                <span class="middle-font main_title">배송안내</span>
                <span class="material-icons hide_button" data-target="product11">expand_less</span>
            </div>
            <%--상품명 상품 코드--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product11">
                <%--배송비 종류--%>
                <div class="product_name_sub_wrap_title padding-bottom">
                    <div class="EDIT_title">
                        <span>배송안내</span>
                    </div>
                    <div class="textarea">
                        <div class="textarea_second_button textarea_second_butto_padding">
                            <div class="one main_bg_color" id="choice_Delivery_Template">
                                <span>배송안내 템플릿 선택</span>
                            </div>

                        </div>
                        <div class="textarea_wrap">
                            <textarea class="lower-font" name="PRODUCT_DELIVERY_INFO" id="smarteditor2" style="width: 100%;"><%=PRODUCT_DELIVERY_INFO %></textarea>
                        </div>
                        <div class="textarea_button">
                            <div class="textarea_button_wrap">
                                <div class="img_button" onclick="clickHideFileInput('uploader2_TextBox0_Input')">
                                    <span>이미지 등록</span>
                                </div>
                                <div class="textarea_second_button">
                                    <div class="one main_bg_color" id="preview_delivery_pc">
                                        <span>pc미리보기</span>
                                    </div>
                                    <div class="one main_bg_color" id="preview_delivery_mb">
                                        <span>모바일 미리보기</span>
                                    </div>
                                </div>

                            </div>
                        </div>


                    </div>

                </div>
            </div>
        </div>

        <%--상세 설명--%>
        <div class="product_name_wrap">
            <div class="product_name_wrap_title" id="product12">
                <span class="middle-font main_title">교환 및 반품안내</span>
                <span class="material-icons hide_button" data-target="product12">expand_less</span>
            </div>
            <%--상품명 상품 코드--%>
            <div class="product_name_sub_wrap" id="hide_button_wrap_product12">
                <%--배송비 종류--%>
                <div class="product_name_sub_wrap_title padding-bottom">
                    <div class="EDIT_title">
                        <span>교환 및 반품안내</span>
                    </div>
                    <div class="textarea">
                        <div class="textarea_second_button textarea_second_butto_padding">
                            <div class="one main_bg_color" id="choice_Exchange_Template">
                                <span>교환 및 반품안내 템플릿 선택</span>
                            </div>

                        </div>
                        <div class="textarea_wrap">
                            <textarea class="lower-font" name="PRODUCT_STORE_INFO" id="smarteditor3" style="width: 100%;"><%=PRODUCT_STORE_INFO %></textarea>
                        </div>
                        <div class="textarea_button">
                            <div class="textarea_button_wrap">
                                <div class="img_button" onclick="clickHideFileInput('uploader3_TextBox0_Input')">
                                    <span>이미지 등록</span>
                                </div>
                                <div class="textarea_second_button">
                                    <div class="one main_bg_color" id="preview_exchange_pc">
                                        <span>pc미리보기</span>
                                    </div>
                                    <div class="one main_bg_color" id="preview_exchange_mb">
                                        <span>모바일 미리보기</span>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <%--최하단 버튼--%>
        <div class="last_button">
            <div class="save_button main_bg_color save-data-btn">
                <span>저장하기</span>
            </div>
            <%if (PRODUCT_SID > 0)
              { %>
            <div class="Delete_buton" id="prodDel_Btn">
                <span>삭제하기</span>
            </div>
            <%} %>
        </div>
    </div>


    <%-- 배송 템플릿 선택 모달--%>
    <div class="choice_Template_Modal_Area"id="choice_Template_Modal_Area_DELIVERY">
        <div class="choice_Template_Modal">
            <%--상단--%>
            <div class="delivery_Modal_Top_Area">
                <div class="my_Title">템플릿 선택</div>
                <div class="choice_Template_Modal_Close">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <%--중단 입력영역--%>
            <div class="delivery_Modal_Input_Area">
                 
                <div class="table-wraper max-height-overflow">
                    <table class="table-common">
                        <colgroup>
                            <col style="width:40px;"/>
                            <col style="width:10%;" />
                            <col style="width: 90%;" />
     
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="lower-font">
                                    <label class="drkid-checkbox">
                                        <input type="checkbox" value="Y" id="all-select-big" />
                                        <span class="fake-check-box"></span>
                                    </label>
                                </th>
                                <th class="lower-font">No.</th>
                                <th class="lower-font">템플릿명</th>
                            </tr>
                        </thead>
                        <tbody>
                             <% if (DELIVERY_TEMPLATE_LIST != null)
                                { %>
                                <%for (int i = 0; i < DELIVERY_TEMPLATE_LIST.Rows.Count; i++)
                                  { %>
                                    <tr data-sub-tr="<%=i%>">
                                        <td id="<%=DELIVERY_TEMPLATE_LIST.Rows[i]["TEMPLATE_SID"] %>" style="display:none;"><%=DELIVERY_TEMPLATE_LIST.Rows[i]["TEMPLATE_BODY"]%></td>
                                        <td class="lower-font"data-value="<%=DELIVERY_TEMPLATE_LIST.Rows[i]["TEMPLATE_SID"] %>"">
                                            <label class="drkid-checkbox list_checkbox_area">
                                                <input type="checkbox" value="<%=i%>" name="LIST_CHECK_BOX"/>
                                                <span class="fake-check-box"></span>
                                            </label>
                                        </td>
                                        <td><%= i+1 %></td>
                                        <td><%=DELIVERY_TEMPLATE_LIST.Rows[i]["TEMPLATE_TITLE"] %></td>
                                    </tr>

                                <%}%>
                              <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
            <%--모달 하단 버튼 및 체크박스--%>
            <div class="delivery_Modal_Bottom_Area">
                <div class="default_Delivery_Check_Area">
                    <div class="modal_Empty_Area"></div>
                </div>
            </div>
            <div class="delivery_Modal_Btn_Area">
                <div class="modal_Save_Btn middle-font" id="choice_Template_Modal_Choice_D">선택</div>
                <div class="modal_Cansle_Btn middle-font" id="choice_Template_Modal_Del">삭제</div>
            </div>
        </div>
    </div>



    <%--교환 및 반품안내 템플릿 선택 모달--%>
    <div class="choice_Template_Modal_Area"id="choice_Template_Modal_Area_EXCHANGE">
        <div class="choice_Template_Modal">
            <%--상단--%>
            <div class="delivery_Modal_Top_Area">
                <div class="my_Title">템플릿 선택</div>
                <div class="choice_Template_Modal_Close">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <%--중단 입력영역--%>
            <div class="delivery_Modal_Input_Area">
                 
                <div class="table-wraper max-height-overflow">
                    <table class="table-common">
                        <colgroup>
                            <col style="width:40px;"/>
                            <col style="width:10%;" />
                            <col style="width: 90%;" />
     
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="lower-font">
                                    <label class="drkid-checkbox">
                                        <input type="checkbox" value="Y" id="all-select-big2" />
                                        <span class="fake-check-box"></span>
                                    </label>
                                </th>
                                <th class="lower-font">No.</th>
                                <th class="lower-font">템플릿명</th>
                            </tr>
                        </thead>
                        <tbody>
                             <% if (EXCHANGE_TEMPLATE_LIST != null)
                                { %>
                                <%for (int i = 0; i < EXCHANGE_TEMPLATE_LIST.Rows.Count; i++)
                                  { %>
                                    <tr data-sub-tr="<%=i%>">
                                        <td id="<%=EXCHANGE_TEMPLATE_LIST.Rows[i]["TEMPLATE_SID"] %>" style="display:none;"><%=EXCHANGE_TEMPLATE_LIST.Rows[i]["TEMPLATE_BODY"]%></td>
                                        <td class="lower-font"data-value="<%=EXCHANGE_TEMPLATE_LIST.Rows[i]["TEMPLATE_SID"] %>"">
                                            <label class="drkid-checkbox list_checkbox_area">
                                                <input type="checkbox" value="<%=i%>" name="LIST_CHECK_BOX2"/>
                                                <span class="fake-check-box"></span>
                                            </label>
                                        </td>
                                        <td><%= i+1 %></td>
                                        <td><%=EXCHANGE_TEMPLATE_LIST.Rows[i]["TEMPLATE_TITLE"] %></td>
                                    </tr>

                            <%}%>
                          <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
            <%--모달 하단 버튼 및 체크박스--%>
            <div class="delivery_Modal_Bottom_Area">
                <div class="default_Delivery_Check_Area">
                    <div class="modal_Empty_Area"></div>
                </div>
            </div>
            <div class="delivery_Modal_Btn_Area">
                <div class="modal_Save_Btn middle-font" id="choice_Template_Modal_Choice_E">선택</div>
                <div class="modal_Cansle_Btn middle-font" id="choice_Template_Modal_Del">삭제</div>
            </div>
        </div>
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
                 <img src="/Source/admin/image/preview.png"  />
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

     <%--배송안내 컨텐츠- PC --%>
    <script type="text/html" id="PC_DELIVERU_CONTENTS">
        <div class="preview_Contents_Area">
            <div class="deli">
                <div class="lower-font font_weight_700">배송안내</div>
                <div class="pc_delivery_contents_here">

                </div>
            </div>
        </div>
    </script>

    <%--교환 및 반품안내 컨텐츠- PC --%>
    <script type="text/html" id="PC_EXCHANGE_CONTENTS">
        <div class="preview_Contents_Area">
            <div class="deli">
                <div class="lower-font font_weight_700">교환 및 반품 안내</div>
                <div class="pc_exchange_contents_here">

                </div>
            </div>
        </div>
    </script>

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
                 <img src="/Source/admin/image/preview_mobile.png"/>
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

    <%--상품상세 컨텐츠- 모바일 --%>
    <script type="text/html" id="MB_PRODUCT_CONTENTS">
        <div class="mb_preview_Contents_Area">
            <div class="deli">
                <div class="mb_product_contents_here"></div>
            </div>
        </div>
    </script>
    <%--배송안내 컨텐츠- 모바일 --%>
    <script type="text/html" id="MB_DELIVERY_CONTENTS">
        <div class="mb_preview_Contents_Area">
            <div class="deli">
                <div class="mb_delivery_contents_here"></div>
            </div>
        </div>
    </script>
     <%--교환 및 반품안내 컨텐츠 - 모바일 --%>
    <script type="text/html" id="MB_EXCHANGE_CONTENTS">
        <div class="mb_preview_Contents_Area">
            <div class="deli">
                <div class="mb_exchange_contents_here"></div>
            </div>
        </div>
    </script>

    <!-- image Upload Control 숨김 처리.  -->
    <!-- fileinput 명 uploader_TextBox0_Input -->
    <!-- 아래 Client 기능을 바꾸어야함 ex updateuploadbutton -->
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
        <%--배송안내 관련 이미지 등록--%>
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
        <%--교환 및 반품안내 관련 이미지 등록--%>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader3" runat="server" ClientInstanceName="uploader3" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="UploadControl_FilesUploadComplete3" CssClass="input">
            <ClientSideEvents 
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete3(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete3(e); }"
                TextChanged="function(s, e) { UpdateUploadButton3(); }" />
            <ValidationSettings MaxFileSize="5242880" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>                                
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload3" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload3" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader2.Upload(); }" />
        </dx:ASPxButton>
        <dx:ASPxUploadControl ClientIDMode="Static" ID="uploader4" runat="server" ClientInstanceName="uploader4" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="uploader4_FileUploadComplete" CssClass="input">
            <ClientSideEvents 
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete4(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete4(e); }"
                TextChanged="function(s, e) { UpdateUploadButton4(); }" />
            <ValidationSettings MaxFileSize="15728640" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>                                
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader4.Upload(); }" />
        </dx:ASPxButton>
    </div>
    <!-- Stock Template -->
    <script id="STOCK_TEMPLATE" type="text/html">
        <tr class="{CLASS}" data-stocktr="{STOCK_CD}">
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{STOCK_CD}" name="CHECK_BOX"/>
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <td class="lower-font">
                <input type="text" name="STOCK_CD" class="drkid-input lowerst-font input-lowheight disableColor" value="{STOCK_CD}" placeholder="제품 코드" maxlength="100" readonly="readonly" />
            </td>
            <td class="lower-font">
                <input type="text" name="STOCK_NM" class="drkid-input lowerst-font input-lowheight disableColor" value="{STOCK_NM}" placeholder="제품 명" maxlength="100" readonly="readonly" />
            </td>
            <td class="lower-font">
                <input type="text" name="STOCK_NM" class="drkid-input lowerst-font input-lowheight IntNum disableColor" value="{STOCK_COUNT}" placeholder="재고 수" maxlength="100" readonly="readonly" />
            </td>
            <td class="lower-font">
                <input type="text" name="STOCK_COUNT" class="drkid-input lowerst-font input-lowheight IntNum" value="1" placeholder="연결 수량" maxlength="20"/>
            </td>
            <td class="lower-font">
                <input type="text" name="REMARK" class="drkid-input lowerst-font input-lowheight disableColor" value="{REMARK}" placeholder="적재방식" maxlength="100" readonly="readonly" />
            </td>
        </tr>
    </script>
    <!--Stock Template In Stock -->
    <script id="STOCK_OPTION_TEMPLATE" type="text/html">
        <tr class="{CLASS}" data-stocktr="{STOCK_CD}">
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{STOCK_CD}" name="CHECK_BOX"/>
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <td class="lower-font">
                <input type="text" name="OPTION_STOCK_CD" class="drkid-input lowerst-font input-lowheight disableColor" value="{STOCK_CD}" placeholder="제품 코드" maxlength="100" readonly="readonly" />
            </td>
            <td class="lower-font">
                <input type="text" name="OPTION_STOCK_NM" class="drkid-input lowerst-font input-lowheight disableColor" value="{STOCK_NM}" placeholder="제품 명" maxlength="100" readonly="readonly" />
            </td>
            <td class="lower-font">
                <input type="text" name="OPTION_STOCK_NM" class="drkid-input lowerst-font input-lowheight IntNum disableColor" value="{STOCK_COUNT}" placeholder="재고 수" maxlength="100" readonly="readonly" />
            </td>
            <td class="lower-font">
                <input type="text" name="OPTION_STOCK_COUNT" class="drkid-input lowerst-font input-lowheight IntNum" value="1" placeholder="연결 수량" maxlength="20"/>
            </td>
            <td class="lower-font">
                <input type="text" name="REMARK" class="drkid-input lowerst-font input-lowheight disableColor" value="{REMARK}" placeholder="적재방식" maxlength="100" readonly="readonly" />
                <input type="hidden" name="STOCK_OPTION_SID" value="{OPTION_SID}" />
            </td>
        </tr>
    </script>
    <!-- OptionTemplate -->
    <script id="OptionTemplate" type="text/html">
        <div class="option_box_wrap" data-wrap="{OPTION_SID}">
            <!-- Option Hidden Field -->
            <input type="hidden" name="OPTION_SID" value="{OPTION_SID}" />
            <!-- 옵션명  -->
            <div class="option_box_wrap_top">
                <div class="option_title">
                    <span class="red">*</span>
                    <span>옵션명</span>
                </div>
                <div class="option_title_input">
                    <input class="drkid-input drkid-input_box" type="text" name="OPTION_NAME" value="" />
                    <span class="main_color">0</span>
                    <span>/200</span>
                </div>
            </div>
            <!-- 상품가 -->
            <div class="option_box_price">
                <div class="option_title">
                    <span class="red star_hidden">*</span>
                    <span>상품가</span>
                </div>
                <div class="option_box_price_wrap">
                    <div class="option_box_price_wrap_title">
                        <span class="ed_lower_font">기존 상품가</span>
                    </div>
                    <div class="option_box_price_wrap_select">
                            <div class="block-example">        
                            <select class="drkid-select option_select" name="OPTION_SALE_TYPE" style="width:250px;"data-font-class="lower-font" data-styles='{"width":"80px","height":"40px"}'>
                                <option>+</option>
                                <option>-</option>
                            </select>
                        </div>
                    </div>
                    <div class="option_box_price_wrap_box">
                        <div class="title_vox">
                            <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="OPTION_SALE_RATE" value="" />
                            <span>원</span>
                        </div>
                    </div>
                </div>
            </div>
            <!--판매가-->
            <div class="option_box_price baseline">
                <div class="option_title">
                    <span class="red star_hidden">*</span>
                    <span>판매가</span>
                </div>
                <div>
                    <div class="option_box_price_wrap_title radio-wraper-header">
                        <div class="title_box">
                            <div class="block-example bottom_padding radio-wraper">
                                <label class="drkid-radio">
                                    <input type="radio" name="OPTION_VIEW_SALE_FLAG_{OPTION_SID}" class="OPTION_VIEW_SALE_FLAG" value="Y"/>
                                    <span class="lowerst-font">사용</span>
                                </label>
                                <label class="drkid-radio">
                                    <input type="radio" name="OPTION_VIEW_SALE_FLAG_{OPTION_SID}" class="OPTION_VIEW_SALE_FLAG" value="N" checked="checked"/>
                                    <span class="lowerst-font">사용안함</span>
                                </label>
                                <input type="hidden" name="OPTION_VIEW_SALE_FLAG" value="N" />
                            </div>
                        </div>
                    </div>
                    <div class="product_radio3_wrap padding-top radio-wraper-showhide">
                        <div class="option_box_price_wrap">
                            <div class="option_box_price_wrap_title">
                                <span class="ed_lower_font">기존 판매가</span>
                            </div>
                            <div class="option_box_price_wrap_select">
                                    <div class="block-example">        
                                    <select class="drkid-select option_select" name="OPTION_VIEW_SALE_TYPE" style="width:250px;"data-font-class="lower-font" data-styles='{"width":"80px","height":"40px"}'>
                                        <option>+</option>
                                        <option>-</option>
                                    </select>
                                </div>
                            </div>
                            <div class="option_box_price_wrap_box">
                                <div class="title_vox">
                                    <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="OPTION_VIEW_SALE_RATE" value="" />
                                    <span>원</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="option_v">
                <div class="option_title">
                    <span class="red star_hidden">*</span>
                    <span>PV</span>
                </div>
                <div class="pv_wrap">
                    <input type="text" class="IntNum" name="OPTION_PV_RATE" value="" />
                </div>
            </div>
            <div class="option_v">
                <div class="option_title">
                    <span class="red star_hidden">*</span>
                    <span>BV</span>
                </div>
                <div class="pv_wrap">
                    <input type="text" class="IntNum" name="OPTION_BV_RATE" value="" />
                </div>
            </div>
            <!--제품연결-->
            <div class="content_inner partion">
                <div class="inner_wrap option_title">
                    <div class="label">
                        <span class="red star_hidden">*</span>
                        <span>제품연결</span>
                    </div>
                </div>
                <div class="top_margin">
                    <div class="search_field">
                        <div class="drkid-btn-sub2 drkid-btn-active find-option-stock" data-class-code="P_STOCK" data-title="제품 선택" data-search-target-id="CATEGORY" data-target="COMMON_POPUP_1">
                            <span class="lowerst-font">제품찾기</span>
                        </div>
                        <span>&nbsp&nbsp</span>
                        <div class="drkid-btn-sub2 delGridClass" data-class="O_STOCK_GRID_{OPTION_SID}">
                            <span class="lowerst-font">선택삭제</span>
                        </div>
                        <div class="top_margin">
                            <div class="table-wraper max-height-overflow">
                                <table class="table-common">
                                    <colgroup>
                                        <col style="width:40px" />
                                        <col style="width:15%;" />
                                        <col style="width:20%;" />
                                        <col style="width:10%" />
                                        <col style="width:10%" />
                                        <col />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th class="lower-font border-left-none">
                                                <label class="drkid-checkbox">
                                                    <input type="checkbox" value="Y" class="option-selector" />
                                                    <span class="fake-check-box"></span>
                                                </label>
                                            </th>
                                            <th class="lower-font">제품코드</th>
                                            <th class="lower-font">제품명</th>
                                            <th class="lower-font">재고</th>
                                            <th class="lower-font">연결수량</th>
                                            <th class="lower-font">적재방식</th>
                                        </tr>
                                    </thead>
                                    <tbody id="o-stock-tbody_{OPTION_SID}">
                                            
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--옵션 정기배송--%>  
            <div class="option-auto-insert-wraper">
                <div class="option_box_price baseline radio-wraper-header">
                    <div class="option_title">
                        <span class="red star_hidden">*</span>
                        <span>옵션 정기배송</span>
                    </div>
                    <div>
                        <div class="option_box_price_wrap_title">
                            <div class="title_box">
                                <div class="block-example bottom_padding radio-wraper">
                                    <label class="drkid-radio">
                                        <input type="radio" name="OPTION_AUTO_FLAG_{OPTION_SID}" class="OPTION_AUTO_FLAG" value="Y"/>
                                        <span class="lowerst-font">사용</span>
                                    </label>
                                    <label class="drkid-radio">
                                        <input type="radio" name="OPTION_AUTO_FLAG_{OPTION_SID}" class="OPTION_AUTO_FLAG" value="N" checked="checked"/>
                                        <span class="lowerst-font">사용안함</span>
                                    </label>
                                    <input type="hidden" name="OPTION_AUTO_FLAG" value="N" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="radio-wraper-showhide">
                    <div class="option_v">
                        <div class="option_title">
                            <span class="red star_hidden">*</span>
                            <span>옵션정기구매가 </span>
                        </div>
                        <div class="title_vox">
                            <input class="drkid-input drkid-input_box border_none1 IntNum" type="text" name="OPTION_AUTO_RATE" value="" />
                            <span>원</span>
                        </div>
                    </div>
                    <div class="option_v">
                        <div class="option_title">
                            <span class="red star_hidden">*</span>
                            <span>PV</span>
                        </div>
                        <div class="pv_wrap">
                            <input type="text" class="IntNum" name="OPTION_AUTO_PV_RATE" value="" />
                        </div>
                    </div>        
                    <div class="option_v">
                        <div class="option_title">
                            <span class="red star_hidden">*</span>
                            <span>BV</span>
                        </div>
                        <div class="pv_wrap">
                            <input type="text" class="IntNum" name="OPTION_AUTO_BV_RATE" value="" />
                        </div>
                    </div>
                </div>      
            </div>  
        </div>
    </script>
</asp:Content>
 