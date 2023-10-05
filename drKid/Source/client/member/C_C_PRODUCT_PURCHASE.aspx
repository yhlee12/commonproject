﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_C_PRODUCT_PURCHASE.aspx.cs" Inherits="drKid.Source.client.member.C_C_PRODUCT_PURCHASE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #sub_content {
            padding: 7rem 0;
            position: relative;
            z-index: 1;
            border-top: 1px solid;
        }
        .sub_layout {
            width: 95rem;
            max-width: 100%;
            margin: 0 auto;
            position: relative;
            height: 100%;
        }
        #content {
            max-width: 1350px;
            margin: auto;
        }
        .product_info_box_wrap {
            display: flex;
            align-items: center;
            text-align: center;
            border-top: 1px solid #000000;
            padding: 25px 0px;
        }



        .product_info_txt {
            padding-bottom: 20px;
            font-size: 22px;
            font-weight: 700;
        }

        .product_info_box_top {
            background-color:#F9F9F9;
        }

        .product_info_box_menu_first {
            width:500px;
            font-weight: 400;
        }

        .product_info_box_menu_second {
            display:flex;
            width: 850px;
            justify-content: space-around;
        }

        .second_menu {
            width: 133px;
        }

        .product_info_box_menu {
            font-weight: 400;
        }

        .product_info_box_bottom {
            display: flex;
            height: 110px;
            border-top: 1px solid #cacaca;
            border-bottom: 1px solid #cacaca;
        }

        .product_info_box_bottom_first {
            display: flex;
            align-items: center;
            width: 500px;
            padding: 0 30px;
        }

        .product_info_box_bottom_img {
            width: 55px;
            height: 55px;
        }

        .img_txt_top  {
            margin-bottom: 5px;
            
        }
        .img_txt {
            margin-left: 10px;
            line-height: 8px;
        }
        .product_info_box_bottom_img > img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
            
        .product_info_box_bottom_second {
            width: 850px;
            height: 110px;
            display: flex;
            align-items: center;
            justify-content: space-around;
        }

        /*.product_info_box_bottom_second > div:nth-child(4) {
            border-left: 1px solid #cacaca;
            border-right: 1px solid #cacaca;
        }*/
        .product_info_box_bottom_menu {
            width: 133px;
            height: 108px;
            text-align: center;
            font-size: 14px;
        }

        .product_info_box_bottom_menu > span {
            line-height: 110px;
        }

        .dis {
            font-size: 14px;
            color:#8F8F8F;
        }

        .barket {
            font-size: 14px;
            color:#8F8F8F;
        }

        .product_price_Area_wrap {
            display: flex;
            text-align: center;
        }

        .product_price_Area {
            border: 1px solid #111111;
            margin-top: 20px;
        }
        .product_price_Area_first {
            width: 500px;
            height: 190px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction:column;
        }

        .product_price_Area_first > p:nth-child(2) {
            font-size: 26px;
            color: #262626;
            font-weight: 700;
            margin-top: 20px;
        }
        .product_price_Area_center {
            width: 500px;
            height: 190px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction:column;
            border-left: 1px solid #cacaca;
            border-right: 1px solid #cacaca;
            position: relative;
        }
        .product_price_Area_center > p:nth-child(2) {
            font-size: 26px;
            color: #262626;
            font-weight: 700;
            margin-top: 20px;
        }

        .product_price_Area_last {
            width: 350px;
            height: 190px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction:column;
            background-color: #F9F9F9;
        }

        .product_price_Area_last > p:nth-child(2) {
            font-size: 26px;
            color: #262626;
            font-weight: 700;
            margin: 20px 0;
        }

        .product_price_Area_last > p:last-child {
            font-size: 14px;
            color: #8F8F8F;
        }

         .product_info_box_bottom_second > .product_info_box_bottom_menu:first-child,
         .product_info_box_bottom_second > .product_info_box_bottom_menu:nth-child(3)

         {
             color: #8F8F8F;
         }
   

        .product_info_box_bottom_second > .product_info_box_bottom_menu:nth-child(2),
        .product_info_box_bottom_second > .product_info_box_bottom_menu:nth-child(3),
        .product_info_box_bottom_second > .product_info_box_bottom_menu:nth-child(4),
        .product_info_box_bottom_second > .product_info_box_bottom_menu:nth-child(5){
            border-right: 1px solid #ccc;
        }

        .border-right {
            border-right: 1px solid #ccc;
        }

        .price {
            padding-left: 10px;
        }

        .price > span {
            color:#262626;
        }

        input {
            width: 200px;
            height: 35px;
            padding-left: 20px;
            border-radius: 6px;
            font-size: 14px;
        }

        .order_box {
            border-top: 1px solid #111111;
        }

        .orderer {
            margin-top: 50px;
        }

        .orderer_content {
            display: flex;
            align-items: center;
            height: 55px;
            border-bottom: 1px solid #cacaca;
        }
        .content_title {
            width: 218px;
            line-height: 55px;
            padding-left: 20px;
            background-color: #f3f3f3;
            border-bottom: 1px solid #cacaca;
        }
        .content_title > span::before {
            content:"*";
            color:red;
        }
        .content_box {
            margin-left: 10px;
        }
        .deli_info {       
            border-top: 1px solid #bbb;
        }
        .deli_info:first-child {
            border-top-color:black;
        }
        .del_weight {
            font-weight:400;
        }
        .del_padding {
            padding-top: 10px;
        }

        .deli_info_flex_box {
            display: flex;
            align-items: center;
            border-bottom: 1px solid #cacaca;
        }

        .deli_main_txt {
            font-weight:700;
            padding-bottom: 15px;
        }

        .deli_info_main_txt {
            width: 20%;
            min-width: 230px;
            background-color:#F9F9F9;
        }
        .deli_info_main_txt_font {
            width: 220px;
            font-size: 14px;
            color:#828282;
            padding: 15px 19px;
        }
        .deli_info_main_sub_font {
            font-size: 14px;
        } 

        .deli_info_sub_txt {
            padding: 10px 15px;
        }

        .select_style {
            width: 200px;
            height: 35px;
        }

        .drkid-select-div {
            border-radius: 6px;
        }

        .left-padding2 {
            padding-left: 10px;
        }
        .left-padding {
            padding-left: 28px;
        }
        .star {
            color: red;
        }
        .management {
            margin-left: 10px;
            width: 114px;
            border-radius: 6px;
            text-align: center;
            background-color: #115c5e;
            color: white;
            padding: 5px 20px;
            cursor:pointer;
        }
        .method {
            margin-top: 50px;
        }

        /*팝업창*/
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
        #I_DELIVERY_NAME,#I_DELIVERY_PERSON{
            width:100%;
            padding: 0px 15px;
            height: 50px;
        }
        #I_DELIVERY_PHONE_1, #I_DELIVERY_PHONE_2, #I_DELIVERY_PHONE_3 {
            width: 141px;
            height: 50px;
        }
        #I_DELIVERY_SECCOND_NUM_1, #I_DELIVERY_SECCOND_NUM_2, #I_DELIVERY_SECCOND_NUM_3 {
            width: 141px;
            height: 50px;
        }
        /*#I_DELIVERY_ADDRESS_1 {
            width: 255px;
            height: 50px;
            background: #F3F3F3;
            border-radius: 4px;
            border: 1px solid #E1E1E1;
            padding: 0px 15px;
        }
        #I_DELIVERY_ADDRESS_2 {
            width:100%;
            padding: 0px 15px;
            height: 50px;
             background: #F3F3F3;
        }
        #I_DELIVERY_ADDRESS_3 {
            width:100%;
            padding: 0px 15px;
            height: 50px;
        }*/
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
            background: #115C5E;
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

        input {
            margin: 0;
        }

        .first_border {
          border-top: 1px solid #000;
        }

        .bottom_border {
          border-bottom: 1px solid #CCCCCC;
        }

        .info_box {
          width: 100%;
          display: flex;
          justify-self: center;
        }

        .info_box_menu {
          width: 220px;
          padding: 15px 28px;
          background-color: #F9F9F9;
          font-size: 14px;
          color: #828282;
        }

        .info_box_menu_content {
          width: 80%;
          padding: 15px 15px;
          display: flex;
          align-items: center;
        }

        .info_box_menu_content > .menu_content {
          margin: 0;
          line-height: 25px;
          color: #8F8F8F;
          font-size: 14px;
        }

        .info_box_large_content_txt > span { 
          color: #FF441D;
          font-size: 14px;
        }

        .info_box_large_content > .info_box_large_content_txt {
          margin: 10px 0;
          gap: 20px;
        }

        .info_box_large_content_txt {
          display: flex;
        }

        .info_box_large_content_txt > .input_box {
          width: 200px;
          height: 35px;
        }

        .info_box_large_content_txt > .input_box > input {
          width: 100%;
          height: 100%;
          border: 1px solid #E1E1E1;
        }

        .info_box_large_content_txt > .button {
          width: 114px;
          height: 35px;
          text-align: center;
          background-color: #115C5E;
          border: 1px solid #115C5E;
          border-radius: 5px;
          color: white;
          font-size: 14px;
        }

        .info_box_large_content_txt > .button > span {
          line-height: 35px;
        }

        .deli_info_first > .button {
            width: 114px;
          height: 35px;
          margin: 9px 0;
          text-align: center;
          background-color: #115C5E;
          border: 1px solid #115C5E;
          border-radius: 5px;
          color: white;
          font-size: 14px;
          margin-left: 20px;
        }

        .deli_info_first > .button > span {
            line-height: 30px;
        }

        .info_box_large_content > .button {
          width: 114px;
          height: 35px;
          text-align: center;
          background-color: #115C5E;
          border: 1px solid #115C5E;
          border-radius: 5px;
          color: white;
          font-size: 14px;
        }

        .info_box_large_content > .button > span {
          line-height: 35px;
        }

        .block > .info_box_menu_content {
          display: block;
        }

        .info_box_large_content_small_txt > span {
          color: #8F8F8F;
          font-size: 14px;
        }

        .last_price {
          display: flex;
          align-items: center;
          color: #115C5E;
          font-weight: 700;
          padding-left: 15px;
        }

        .pay {
          display: flex;
          align-items: center;
          gap: 10px;
        }

        .pay_wrap {
          display: flex;
          border-top: 1px solid #262626;
          padding: 20px 0;
        }
        .bill_guide{
          width: 100%;
          padding: 0 25px;
        }
        .method_contnet_inner > .content > .pay_wrap:nth-child(3) {
            border-bottom: 1px solid #262626;
        }

        .pay_content {
          width: 76px;
          height: 99px;
          padding: 20px 0;
          border: 1px solid #E2E2E2;
          border-radius: 8px;
          display: grid;
          align-items: center;
          justify-content: center;
          text-align: center;
          cursor: pointer;
        }

        .pay_content_2 {
          width: 76px;
          height: 99px;
          padding: 20px 0;
          border: 1px solid #E2E2E2;
          border-radius: 8px;
          display: grid;
          align-items: center;
          justify-content: center;
          text-align: center;
          cursor: pointer;
        }

        .pay_content_wrap > span {
          font-size: 25px;
          color: #898989;
        }

        .pay_content_wrap_2 > span {
          font-size: 25px;
          color: #898989;
        }

        .pay_content_txt > span {
          font-size: 14px;
          color: #898989;
        }

        .pay_txt > p {
          color:#115C5E;
          font-size: 14px;
        }

        .method_contnet_inner {
          display: flex;
          justify-content: space-between;
        }

        .method_contnet_inner > .content {
          width: 65%;
        }

        /* .method_contnet_inner > .content {
          display: flex;
        } */

        .radio {
          width: 220px;
          padding: 0 25px;
        }

        .right_content {
          display: flex;
          align-items: center;
          justify-content: center;
          text-align: center;
          width: 390px;
          height: 202px;
          border: 2px solid #707070;
          padding: 20px 0;
        }

        .right_content_title {
          font-size: 16px;
          color: #4E4E4E;
        }

        .price {
          font-size: 26px;
          font-weight: 700;
          color: #115C5E;
          margin: 15px 0;
        }

        .price_button {
          width: 345px;
          padding: 15px 0;
          color: white;
          background-color: #115C5E;
          cursor: pointer;
        }

        .ascro {
          font-size: 14px;
          padding: 20px 25px;
          border-bottom: 2px solid #707070;
        }

        .kakao_img {
            width: 28px;
            height: 28px;
            margin: auto;
        }

        .block-example {
            display: flex;
            gap: 15px;
            padding-left: 15px;
        }

        .last_txt > .deli_info_sub_txt {
            width: 700px;
        }

        .last_txt > .deli_info_sub_txt > input {
            width: 700px;
        }

        .number_btton {
            width:150px;
            height: 35px;
            background-color: #F3F3F3;
            color:#343434;
            text-align: center;
            cursor: pointer;
            border-radius: 5px;
        }

        .number_btton > span { 
            line-height: 35px;
        }

        .button {
            cursor: pointer;
        }

        /*페이징관련*/
        .number-button-Area {
           
        }
        .number-button-wrap {
            display: flex;
            justify-content: center;
        }
          #sub_content {
            padding: 7rem 0;
            position: relative;
              z-index: 1;
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
        .title_Bar {
            width: 289px;
            height: 220px;
            background: #F5F5F5 0% 0% no-repeat padding-box;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
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
            gap:0px 85px;
            padding: 45px 0px 0px 0px;
        }
        .Bottom_Area {
            width:100%;
        }
        .progress_Order_Title_Area {
            padding: 0px 0px 20px 0px;
        }
        .new_Order_Title_Area {
            display: flex;
            justify-content: space-between;
            align-items: center;
             padding: 0px 0px 20px 0px;
                 border-bottom: 1px solid #262626;
        }
        .new_Order_Area {
            padding:0px 0px 42px 0px;
            width:1000px;
        }
        .new_Delivery_Btn {
            width:120px;
            text-align:center;
            color:#115C5E;
            border:1px solid #115C5E;
            padding: 3px 0px;
            cursor:pointer;
            font-weight: 400;
        }
        .new_Order_List_Column_Area {
            display: flex;
            padding: 15px 40px;
            background: #F9F9F9;
            text-align: center;
            width:100%;
                border-top: 1px solid #262626;
        }
        .new_Order_List_Column_1_Area {
             width:15%;
             /*width: 179.69px;*/
        }
        .new_Order_List_Column_2_Area {
            width:48%;
            /*width: 484.64px;*/
        }
        .new_Order_List_Column_3_Area {
            width:13%;
            /*width: 146.68px;*/
        }
        .new_Order_List_Column_4_Area {
            width:12%;
            /*width: 99.8px;*/
        }
        .new_Order_List_Column_5_Area {
            width:12%;
            /*width: 119.75px;*/
        }
        .new_Order_List_Column {
            font-weight:500;
        }
        .new_Order_List_Row_Area {
                width: 100%;
        }
        .new_Order_List_Row {
            display: flex;
            padding: 10px 40px;
            align-items: center;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
        }

        .new_Order_List_Row_1_Area {
            width:15%;
            /*cursor:pointer;*/
             /*width: 179.69px;*/
        }
        /*.new_Order_List_Row_2_Area_Wrap {
            display: grid;
            gap: 5px 0px;
        }*/
        .new_Order_List_Row_2_Area{
            width:48%;
            /*width: 441px;*/
            text-align: start;
            padding: 0px 20px 0px 20px;
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        .new_Order_List_Row_3_Area {
             width:13%;
             /*width: 138px;*/
        }
        .new_Order_List_Row_4_Area {
             width:12%;
             /*width: 92px;*/
        }
        .new_Order_List_Row_5_Area {
             width:12%;
            /*width: 110px;*/
             display: grid;
             gap: 5px 0px;
        }
        .new_Order_List_Row_1 {
             color:#828282;
        }
        .new_Order_List_Row_1_1 {
            font-weight: 400;
        }

        .new_Order_List_Row_img {
            width:55px;
            height:55px;
            object-fit: cover;
      
        }
        .new_Order_List_Row_2_1_1 {
            color:#9F9F9F;
            font-weight: 400;
        }
        .new_Order_List_Row_2_1_1 {
            font-weight:500;
            color:#9F9F9F;
        }
        .new_Order_List_Row_2_1_2 {
            font-weight:500;
              
        }
        .new_Order_List_Row_3 ,.new_Order_List_Row_4,
        .new_Order_List_Row_4_1 
        
        {
            font-weight:400;
        }
        .new_Order_List_Row_5 {
            font-weight:500;
            width: 64px;
            color: #115C5E;
            border: 1px solid #115C5E;
            margin: auto;
            padding: 3px 0px;
            cursor:pointer;

        }
        .new_Order_List_Row_5_1 {
            font-weight:500;
            border: 1px solid #115C5E;
            background: #115C5E;
            color: #ffffff;
            width: 64px;
            margin: auto;
            padding: 3px 0px;
            cursor:pointer;
        }
        .multi_Order_Row_Area {
            display: grid;
             gap: 10px 0px;
        }
        .multi_Order_Row {
            display: flex;
            align-items: center;
        }
        .new_Order_List_Filed {
            width:1000px;
             
        }
        .new_Order_List_Empty {
            color:#828282;
            padding: 40px 40px;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
        }
        .delivery_Count_Info {
             
        }
        .delivery_Count_Info {
            color:#8F8F8F;
            font-weight:400;
        }
        .my_sub_Title_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 100%;
            padding: 20px 0px 0px 0px;
        }
        /*배송지관리 모달*/
        .delivery_Modal_Area {
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

        .delivery_Modal_Area5 {
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
        .delivery_Modal {
            width:635px;
            height:720px;
            background:#ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 20px;
        }

        .delivery_Modal5 {
            width:635px;
            height:720px;
            background:#ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 20px;
        }

        /*배송지관리 모달*/
        .delivery_Modal_Area2 {
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
        .delivery_Modal2 {
            width:635px;
            height:720px;
            background:#ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 20px;
        }

        /*배송지관리 모달*/
        .delivery_Modal_Area2 {
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
        .delivery_Modal2 {
            width:635px;
            height:720px;
            background:#ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 20px;
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

        .new_Modal_Close {
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
        #I_DELIVERY_NAME,#I_DELIVERY_PERSON{
            width:100%;
            padding: 0px 15px;
            height: 50px;
        }
        #I_DELIVERY_PHONE_1, #I_DELIVERY_PHONE_2, #I_DELIVERY_PHONE_3 {
            width: 141px;
            height: 50px;
        }
        #I_DELIVERY_SECCOND_NUM_1, #I_DELIVERY_SECCOND_NUM_2, #I_DELIVERY_SECCOND_NUM_3 {
            width: 141px;
            height: 50px;
        }
        /*#I_DELIVERY_ADDRESS_1 {
            width: 255px;
            height: 50px;
            background: #F3F3F3;
            border-radius: 4px;
            border: 1px solid #E1E1E1;
            padding: 0px 15px;

        }
        #I_DELIVERY_ADDRESS_2 {
            width:100%;
            padding: 0px 15px;
            height: 50px;
             background: #F3F3F3;
        }
        #I_DELIVERY_ADDRESS_3 {
            width:100%;
            padding: 0px 15px;
            height: 50px;
        }*/
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
            margin-top: 20px;
        }
        .modal_Save_Btn {
            width: 120px;
            height: 50px;
            background: #115C5E;
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
            cursor: pointer;
        }

        /*다음레이어*/
         #daumLayer {
             display:none;width:100%;height:300px;position:absolute; z-index:999;border: 1px solid #918d8d; 
        }
        .daumLayer_Top {
            /*width: 579px;
            height: 45px;
            padding: 0px 8px;
            border-right: solid 1px #E2E2E2;
            border-bottom: solid 1px #E2E2E2;
            background: white;
            display:flex;
            align-items:center;*/
             width: 595px;
            height: 45px;
            padding: 0px 7px;
            background: white;
            display: flex;
            align-items: center;
            border-bottom: solid 1px #d7d7d7;
        }
        .daumLayer_Top_area_1,.daumLayer_Top_area_3 {
            width:33%;
            /*height: 24px;*/

        }
        .daumLayer_Top_area_2 {
            width:33%;  
            /*height: 24px;*/
            text-align:center;
        }
        .form_search {
           border-bottom: 1px solid 1px solid #363636 !important;
        }
        .popup_head {
            height: 46px;
            z-index: 2;
            border-bottom: 1px solid #E2E2E2 !important;
        }
        .address_Icon_Area {
            float:right;
            cursor:pointer;
        }
        /*.clear-icon:after {
            content: "clear";
            font-size: 22px;
        }*/
        .daumLayer_Top_Title {
             font-weight: 500;
        }
        .drkid-select-ul {
            overflow: scroll;
            height: 300px;
        }
        .form_search .post_search {
            height: 96px;
            padding: 0 65px 0 15px;
            background-color: #fff;
            position: relative
        }
        /*마이페이지 공용*/
        .my_Title_Area {
            padding: 0px 0px 10px 0px;
        }
        .my_Title {
            font-size: 28px;
            font-weight: 600;
        }
        /*프롬프트*/
        .t2l-alert-inner-wraper {
            min-width: 462px;
        }

        .input_txt > p {
            font-size: 14px;
            color: #115C5E;
            font-weight: 500;
        }

        .cupon_box {
            width: 82%;
        }

        .product_list {
            display: flex;
            width: 100%;
            justify-content: space-between;
            background-color: #F9F9F9;
            border-top: 1px solid #ccc;
            border-bottom: 1px solid #ccc;
        }


        /*쿠폰 모달*/
        .cupon_Modal_Area2 {
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
        .cupon_Modal {
            width:590px;
            background:#ffffff;
            box-shadow: 0px 0px 10px #0000001A;
            padding: 20px;
        }

        .cupon_Modal > .cupon_Modal_Top_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .first_title, 
        .second_title {
            height: 55px;
            font-weight:500;
            width: 220px;
            text-align: center;
        }

        .first_title > span,
        .second_title > span {
            line-height: 55px;
        }

        .between {
            justify-content: space-between;
            align-items: center;
        }

        .border-bottom {
            border-bottom: 1px solid #CCCCCC;
            margin-bottom: 20px;
        }

        .input_img {
            display: flex;
            align-items: center;
            padding: 0px 30px;
        }

        .input_img > .img { 
            width:55px;
            height:55px;
        }

        .input_img > img > img {
             width: 100%;
             height: 100%;
             object-fit: cover;
         }

        .input_img > img > .img_txt {
             line-height: 8px;
         }

        .right_txt {
            padding: 0 64px;
        }
        .padding {
            padding: 20px 30px;
            border-top: 1px solid #ccc;
          
        }
        .scroll {
            overflow-y: scroll;
            max-height: 510px;
        }
        .border_bottom {
            border-bottom: 1px solid;
            margin-bottom: 20px;
        }

        .img_txt > p:first-child {
            color: #9F9F9F;
            font-size:14px;
        }
        .img_txt > p:last-child {
            color: #262626;
            font-size:16px;
            font-weight: 500;
        }

        .cupon_Modal_Close {
            cursor: pointer;
        }

        .drkid-radio > span { 
            color: #707070;
            font-size: 14px;
        }

        .drkid-radio > input {
            cursor: pointer;
        }

        .deli_info_main_txt > .main_title { 
            font-size: 14px;
            color:#343434;
        }

        .info_box_menu > .main_title {
            font-size: 14px;
            color:#343434;
        }

        .give {
          display: flex;
          border-bottom: 1px solid #ccc;
        }

        .give > .first {
          width: 230px;
          padding: 15px 18px;
          background-color: #F9F9F9;
          font-size: 14px;
          color: #828282;
        }

        .give > .first > .first_txt {
          font-size: 14px;
          color: #343434;
        }

        .give > .second {
            padding:10px 15px;
        }

        .give > .second > .second_top {
          display: flex;
          align-items: center;
          padding-bottom: 10px;
        }

        .give > .second > .second_top > .input_box > input {
          width: 200px;
          height: 35px;
        }

        .give > .second > .second_top > .number_button {
          width: 150px;
          height: 35px;
          background-color: #F3F3F3;
          color: #343434;
          text-align: center;
          cursor: pointer;
          border-radius: 5px;
          margin-left: 20px;
          line-height: 35px;
        }

        .give > .second > .second_top > .number_button > span {
          line-height: 35px;
        }

        .give > .second > .second_bottom {
          display: flex;
          align-items: center;
          gap: 20px;
        }

        .give > .second > .second_bottom  > .input_box > input {
          width: 370px;
        }

        .give > .second > .second_bottom  > .long_input_box > input {
          width: 325px;
        }
        
        .radio > input {
            margin-bottom: 3px;
            margin-right: 5px;
            cursor: pointer;
        }

        .flex-column {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .pluse {
             position: absolute;
            background: #fff;
            left: -12px;
            width: 25px;
            height: 25px;
            border: 1px solid;
        }
        .minus {
           position: absolute;
            background: #fff;
            right: -13px;
            width: 25px;
            height: 25px;
            border: 1px solid;
        }

        .order_List_Area {
            background: #fff;
            padding: 20px;
        }

        .my_Title_Area > .title {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .none2 {
            display: none;
        }

        .delivery_info_wrap_wrap > .info_box:first-child > .info_box_menu_content > span {
            font-weight: 700;
        }

        .delivery_info_wrap_wrap > .info_box:nth-child(2) > .info_box_menu_content > span {
            color:#8F8F8F;
        }

        .fist_bg {
            background-color: #115C5E
        }

        .fist_bg > .pay_content_wrap > span,
        .fist_bg > .pay_content_txt > span {
            color: white;
        }

        .fist_bg > .pay_content_wrap_2 > span,
        .fist_bg > .pay_content_txt_2 > span {
            color: white;
        }
       
        .drkid-select-ul {
            overflow-y: scroll;
             height: 200px;
        }

    </style>

    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>    
    <%--이니시스--%>
    <%--일반결제--%>
    <%if (payment_flag == "common")
      { %>
    <script language="javascript" type="text/javascript" src="https://stgstdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
    <%} %>
    
    <%--정기결제--%>
    <%if (payment_flag == "bill")
      { %>
    <%--<script language="javascript" type="text/javascript" src="https://stgstdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>--%>
    <script language="javascript" type="text/javascript" src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
    <%} %>
    <script>
        $(document).ready(function () {
            $("#mypage_Btn").click(function () {
                location.href = "/Source/client/my/C_MY_MYPAGEMAIN.aspx";
            });
            //레프트메뉴 클릭 시 해당하는 페이지 이동
            $(".KeyDni_Info,.KeyDni_Info_Clicked").click(function () {
                var page = $(this).attr("id");
                if (page != '' && page != null) {
                    var page_type = page.split("_")[1]; //폴더가 CS인지 MY인지 추출
                    location.href = "/Source/client/" + page_type + "/" + page + ".aspx";
                }
                else {
                    _popModal.Alert('', '준비중입니다.');
                }
            });

            //이니시스 연결
            $("#go_paymnet").on("click", function () {
                if (Validation() == false) {

                }
                if (Validation() == true) {
                    INIStdPay.pay('form1');
                }
            });

            //배송지 삭제 버튼 클릭
            $(".new_Order_List_Row_5_1").click(function () {
                var OkCallBack = function () {
                    console.log("성공")
                }
                var esrrorCallBack = function (ex) {
                    console.log(ex);
                }
                _popModal.Promt('', '나의 배송지 [원인터내셔]을(를) 정말로 삭제하시겠습니까?', OkCallBack, esrrorCallBack);
            });

            //새 배송지 추가 클릭
            $(".new_Delivery_Btn").click(function () {
                show_Delivery_Modal();
            });
            //배송지관리 모달 닫기 클릭
            $(".delivery_Modal_Close,.modal_Cansle_Btn").click(function () {
                hide_Delivery_Modal();
            });
            //우편번호 검색 클릭
            $(".search_Address_Btn").click(function () {
                execDaumPostCode();
            });
            //다음 레이어 닫기 버튼
            $(".address_Icon_Area").click(function () {
                closeDaumPostcode();
            });

            //쿠폰 모달관련 함수
            $(".new_cupon_Btn").click(function () {
                show_cupon_Modal();
            });
            //쿠폰 모달 닫기 클릭
            $(".cupon_Modal_Close,.modal_Cansle_Btn").click(function () {
                hide_cupon_Modal();
            });

            //새배송지 추가 모달관련 함수
            $(".new_Btn").click(function () {
                show_delivery_Modal5();

            });
            //새배송지 추가 모달 닫기 클릭
            $(".new_Modal_Close,.modal_Cansle_Btn").click(function () {
                hide_delivery_Modal5();
            });

        });
        //delivery 모달관련 함수
        function show_Delivery_Modal() {
            $(".delivery_Modal_Area").css("display", "flex");
        }
        function hide_Delivery_Modal() {
            $(".delivery_Modal_Area").css("display", "none");
        }

        //새배송지 모달관련 함수
        function show_delivery_Modal5() {
            $(".delivery_Modal_Area5").css("display", "flex");
        }
        function hide_delivery_Modal5() {
            $(".delivery_Modal_Area5").css("display", "none");
        }

        //쿠폰 모달관련 함수
        function show_cupon_Modal() {
            $(".cupon_Modal_Area2").css("display", "flex");
        }
        function hide_cupon_Modal() {
            $(".cupon_Modal_Area2").css("display", "none");
        }


        //우편번호 검색 관련 함수
        function execDaumPostCode() {
            new daum.Postcode({
                oncomplete: function (data) {
                    // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var fullAddr = data.address; // 최종 주소 변수
                    var extraAddr = ''; // 조합형 주소 변수

                    // 기본 주소가 도로명 타입일때 조합한다.
                    if (data.addressType === 'R') {
                        //법정동명이 있을 경우 추가한다.
                        if (data.bname !== '') {
                            extraAddr += data.bname;
                        }
                        // 건물명이 있을 경우 추가한다.
                        if (data.buildingName !== '') {
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                        fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    $("#I_DELIVERY_ADDRESS_1").val(data.zonecode);
                    $("#I_DELIVERY_ADDRESS_2").val(fullAddr);
                    $("#I_DELIVERY_ADDRESS_3").focus();
                    // iframe을 넣은 element를 안보이게 한다.
                    // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                    $("#daumLayer").hide();
                },
                width: '100%',
                border: '1px solid black',
                height: '100%'
            }).embed($("#daumLayer")[0]);
            // iframe을 넣은 element를 보이게 한다.
            $("#daumLayer").show();
            $(".post_search").css("height", "99px");
            // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
            initLayerPosition();
        }
        function initLayerPosition() {
            var width = 598; //우편번호 서비스가 들어갈 element의 width
            var height = 460; //우편번호 서비스가 들어갈 element의 height
            var borderWidth = 1; //샘플에서 사용하는 border의 두께

            var offsetTop = $(".search_Address_Btn").offset().top;
            var offsetleft = $(".search_Address_Btn").offset().left;
            var offsetbottom = $(".search_Address_Btn").offset().bottom;
            console.log("top" + offsetTop + "left" + offsetleft + "bottom" + offsetbottom);
            // 위에서 선언한 값들을 실제 element에 넣는다.
            $("#daumLayer").css({
                "width": width + 'px',
                "height": height + "px"
                //"border": borderWidth + "px solid",
                //"left": (offsetleft) + 'px',
                //"top": (offsetTop + 2 * height) + 'px'
            });

            //"left": (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth) + 'px',
            //    "top": (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth) + 'px'
        }
        function closeDaumPostcode() {
            // iframe을 넣은 element를 안보이게 한다.
            $("#daumLayer").hide();
        }

        //밸리데이션
        function Validation() {
            var return_value = true;
            //******주문자 정보******
            //주문하시는 분
            if ($('input[name="PURCHASER_NAME"]').val() == "") {
                _popModal.Alert('주문자 필수 정보 누락', '주문하시는 분의 성함을 입력해주세요.');
                return_value = false;
                return false;
            }
            //휴대폰 번호
            if ($('input[name="PURCHASER_PHONE1"]').val() == "") {
                _popModal.Alert('주문자 필수 정보 누락', '주문하시는 분의 휴대폰 번호를 입력해주세요.');
                return_value = false;
                return false;
            }
            //이메일
            if ($('input[name="PURCHASER_EMAIL"]').val() == "") {
                _popModal.Alert('주문자 필수 정보 누락', '주문하시는 분의 이메일을 입력해주세요.');
                return_value = false;
                return false;
            }
            //******배송정보******
            //받으실분
            if ($('input[name="DELIVERY_NAME"]').val() == "") {
                _popModal.Alert('배송 필수 정보 누락', '받으실분의 성함을 입력해주세요.');
                return_value = false;
                return false;
            }
            //받으실 곳[우편번호]
            if ($('#I_DELIVERY_ADDRESS_1').val() == "") {
                _popModal.Alert('배송 필수 정보 누락', '받으실분의 우편번호을 입력해주세요.');
                return_value = false;
                return false;
            }
            //받으실 곳[상세주소1]
            if ($('#I_DELIVERY_ADDRESS_2').val() == "") {
                _popModal.Alert('배송 필수 정보 누락', '받으실분의 우편주소을 입력해주세요.');
                return_value = false;
                return false;
            }
            //휴대폰 번호
            if ($('input[name="DELIVERY_PHONE"]').val() == "") {
                _popModal.Alert('배송 필수 정보 누락', '받으실분의 휴대폰 번호를 입력해주세요.');
                return_value = false;
                return false;
            }
            return return_value;
        };

    </script>

    <script>
        $(document).ready(function () {
            $('#radio1').prop('checked', true);

            $('#radio1').click(function () {
                $('.none1').css('display', 'flex');
                $('.none2').css('display', 'none');
            });

            $('#radio2').click(function () {
                $('.none2').css('display', 'flex');
                $('.none1').css('display', 'none');

                $("#gopaymethod").val("onlykakaopay");
                $("#acceptmethod").val("HPP(1):below1000:cardonly");
            });

            $('#radio3').click(function () {
                $('.none1').css('display', 'none');
                $('.none2').css('display', 'none');
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            //결제 수단선택



            $('#hover2').click(function () {
                $('#hover2').css('background-color', '#115C5E');
                $('.pay_content_wrap > span, .pay_content_txt > span').css('color', 'white');
                $('#hover1, #hover3, #hover4').css('background-color', 'white');
                $('.pay_content_wrap > span, .pay_content_txt > span').not('#hover2 .pay_content_wrap > span, #hover2 .pay_content_txt > span').css('color', '#898989');
                $("#gopaymethod").val("DirectBank");
            });

            $('#hover3').click(function () {
                $('#hover3').css('background-color', '#115C5E');
                $('.pay_content_wrap > span, .pay_content_txt > span').css('color', 'white');
                $('#hover1, #hover2, #hover4').css('background-color', 'white');
                $('.pay_content_wrap > span, .pay_content_txt > span').not('#hover3 .pay_content_wrap > span, #hover3 .pay_content_txt > span').css('color', '#898989');
                $("#gopaymethod").val("VBank");
            });
            if ("<%=payment_flag%>" == "common") {
                $('#hover1').click(function () {
                    $('#hover1').css('background-color', '#115C5E');
                    $('.pay_content_wrap > span, .pay_content_txt > span').css('color', 'white');
                    $('#hover2, #hover3, #hover4').css('background-color', 'white');
                    $('.pay_content_wrap > span, .pay_content_txt > span').not('#hover1 .pay_content_wrap > span, #hover1 .pay_content_txt > span').css('color', '#898989');
                    $("#gopaymethod").val("Card");
                });

                $('#hover4').click(function () {
                    $('#hover4').css('background-color', '#115C5E');
                    $('.pay_content_wrap > span, .pay_content_txt > span').css('color', 'white');
                    $('#hover1, #hover2, #hover3').css('background-color', 'white');
                    $('.pay_content_wrap > span, .pay_content_txt > span').not('#hover4 .pay_content_wrap > span, #hover4 .pay_content_txt > span').css('color', '#898989');
                    $("#gopaymethod").val("HPP");
                    //$("#gopaymethod").val("onlykakaopay");
                    //$("#acceptmethod").val("HPP(1):below1000:cardonly");

                });
            }
            if ("<%=payment_flag%>" == "bill") {
                $('#hover1').click(function () {
                    $('#hover1').css('background-color', '#115C5E');
                    $('.pay_content_wrap > span, .pay_content_txt > span').css('color', 'white');
                    $('#hover2, #hover3, #hover4').css('background-color', 'white');
                    $('.pay_content_wrap > span, .pay_content_txt > span').not('#hover1 .pay_content_wrap > span, #hover1 .pay_content_txt > span').css('color', '#898989');
                    $("#gopaymethod").val("");
                    $("#acceptmethod").val("below1000:va_receipt:centerCd(Y):BILLAUTH(Card)");
                });
                $('#hover4').click(function () {
                    $('#hover4').css('background-color', '#115C5E');
                    $('.pay_content_wrap > span, .pay_content_txt > span').css('color', 'white');
                    $('#hover1, #hover2, #hover3').css('background-color', 'white');
                    $('.pay_content_wrap > span, .pay_content_txt > span').not('#hover4 .pay_content_wrap > span, #hover4 .pay_content_txt > span').css('color', '#898989');
                    $("#gopaymethod").val("");
                    $("#acceptmethod").val("centerCd(Y):BILLAUTH(HPP):HPP(4)");
                    console.log("폰빌");
                });
            }
        });
    </script>

    <script>
        $(document).ready(function () {
            $('#hover5').click(function () {
                $('#hover5').css('background-color', '#115C5E');
                $('.pay_content_wrap_2 > span, .pay_content_txt_2 > span').css('color', 'white');
                $('#hover6, #hover7').css('background-color', 'white');
                $('.pay_content_wrap_2 > span, .pay_content_txt_2 > span').not('#hover5 .pay_content_wrap_2 > span, #hover5 .pay_content_txt_2 > span').css('color', '#898989');
                $("#gopaymethod").val("onlykakaopay");
                $("#acceptmethod").val("HPP(1):below1000:cardonly");
            });
            $('#hover6').click(function () {
                $('#hover6').css('background-color', '#115C5E');
                $('.pay_content_wrap_2 > span, .pay_content_txt_2 > span').css('color', 'white');
                $('#hover5, #hover7').css('background-color', 'white');
                $('.pay_content_wrap_2 > span, .pay_content_txt_2 > span').not('#hover6 .pay_content_wrap_2 > span, #hover6 .pay_content_txt_2 > span').css('color', '#898989');
                $("#gopaymethod").val("onlynaverpay");
                $("#acceptmethod").val("HPP(1):below1000:cardonly");
            });
            $('#hover7').click(function () {
                $('#hover7').css('background-color', '#115C5E');
                $('.pay_content_wrap_2 > span, .pay_content_txt_2 > span').css('color', 'white');
                $('#hover5, #hover6').css('background-color', 'white');
                $('.pay_content_wrap_2 > span, .pay_content_txt_2 > span').not('#hover7 .pay_content_wrap_2 > span, #hover7 .pay_content_txt_2 > span').css('color', '#898989');
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('#place1, #place2').click(function () {
                $('#place_input1, #place_input2, #place_input3, #place_input4, #place_input5').each(function () {
                    var placeholderText = $(this).data('placeholder');
                    $(this).attr('placeholder', placeholderText);
                });
            });

            $('#place3').click(function () {
                $('#place_input1, #place_input2, #place_input3, #place_input4, #place_input5').removeAttr('placeholder');
            });

            $('#place4').click(function () {
                $('#place_input1, #place_input5').each(function () {
                    var placeholderText = $(this).data('placeholder');
                    $(this).attr('placeholder', placeholderText);
                });
            });

            function resetPlaceholders() {
                $('#place_input1, #place_input2, #place_input3, #place_input4, #place_input5').each(function () {
                    var placeholderText = $(this).attr('data-placeholder');
                    $(this).attr('placeholder', placeholderText);
                });
            }

            $('#place1, #place2').click(function () {
                resetPlaceholders();
            });
        });
    </script>

     <script>
         // 이동규 로그인 유무 추천인 코드 텍스트박스 
         var userId = '<%=baseUser.userId%>';
         $(function () {
             if (userId != "" && userId != null && userId != undefined) {
                 // 로그인 되어있을 경우
                 $('#Recommander_Space').css('display', 'none');
             }
             else {
                 // 로그인 안되어있을 경우 
                 $('#Recommander_Space').css('display', 'flex');
             }
         })
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content">
        <div class="sub_layout">
            <div id="content">
                <div class="product_info">
                    <div class="product_info_wrap">
                        <div class="product_info_wrap_inner">
                            <div class="product_info_Area">
                                <div class="product_info_txt mono_point">
                                    <span>상품정보</span>
                                </div>
                                <div class="product_info_box">
                                    <%--상품정보 top--%>
                                    <div class="product_info_box_top">
                                        <div class="product_info_box_wrap">
                                            <div class="product_info_box_menu product_info_box_menu_first">
                                                <span>상품정보</span>
                                            </div>
                                            <div class="product_info_box_menu_second">
                                                <div class="product_info_box_menu second_menu">
                                                    <span>수량</span>
                                                </div>
                                                <div class="product_info_box_menu second_menu">
                                                    <span>상품금액</span>
                                                </div>
                                                <div class="product_info_box_menu second_menu">
                                                    <span>PV</span>
                                                </div>
                                                <div class="product_info_box_menu second_menu">
                                                    <span>할인/적립</span>
                                                </div>
                                                <div class="product_info_box_menu second_menu">
                                                    <span>결제금액</span>
                                                </div>
                                                <div class="product_info_box_menu second_menu">
                                                    <span>배송비</span>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                    <%--상품정보 bottom--%>
                                    <div class="product_info_box_bottom">
                                        <%--상품정보--%>
                                        <div class="product_info_box_bottom_first">
                                            <div class="product_info_box_bottom_img">
                                                <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                            </div>
                                            <div class="img_txt">
                                                <div class="img_txt_top lower-font mono_sub_color">
                                                    <span>신당케어</span>
                                                </div>
                                                <div class="img_txt_bottom">
                                                    <span>비건오메가3 (30인분)</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product_info_box_bottom_second">
                                            <%--수량--%>
                                            <div class="product_info_box_bottom_menu">
                                                <span><%=good_count %></span>
                                            </div>
                                            <%--상품금액--%>
                                            <div class="product_info_box_bottom_menu">
                                                <span>6,500원</span>
                                            </div>
                                            <%--pv--%>
                                            <div class="product_info_box_bottom_menu">
                                                <span>0</span>
                                            </div>
                                            <%--할인/적립--%>
                                            <div class="product_info_box_bottom_menu flex-column">
                                                <div class="dis">
                                                    <span>등급할인 0원
                                                        
                                                    </span>
                                                </div>
                                                <div class="dis">
                                                    <span>마일리지 0원
                                                        
                                                    </span>
                                                </div>

                                            </div>
                                            <%--결제금액--%>
                                            <div class="product_info_box_bottom_menu">
                                                <span><%=t_price %>원</span>
                                            </div>
                                            <%--배송비--%>
                                            <div class="product_info_box_bottom_menu flex-column">
                                                <div class="barket">
                                                    <span>배송비</span>
                                                </div>
                                                <div class="barket">
                                                    <span>0원</span>
                                                </div>
                                                <div class="barket">
                                                    <span>(택배-선결제)</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="product_price_Area">
                        <div class="product_price_Area_wrap">
                            <div class="product_price_Area_first">
                                <p>
                                    총 <%=good_count %>개의 상품금액                              
                                </p>
                                <p>
                                    <%=t_price %>원
                                </p>
                            </div>
                            <div class="product_price_Area_center">
                                <p>
                                    배송비 
                                </p>
                                <p>
                                    0원 
                                </p>

                                <div class="pluse">
                                    <span class="material-icons">add</span>
                                </div>
                                <div class="minus">
                                    <span class="material-icons">drag_handle</span>
                                </div>
                            </div>
                            <div class="product_price_Area_last">
                                <p>
                                    총 결제 금액     
                                </p>
                                <p>
                                    <%=t_price %>원    
                                </p>
                                <p>
                                    적립 마일리지 = 0원
                                </p>
                            </div>
                        </div>
                    </div>

                    <%--주문자 정보--%>
                    <div class="orderer">
                        <div class="orderer_wrap">
                            <div class="orderer_wrap_inner">
                                <div class="product_info_txt mono_point">
                                    <span>주문자 정보</span>
                                </div>
                                <div class="deli_info">
                                    <div class="deli_info_first deli_info_flex_box">

                                        <div class="deli_info_main_txt deli_info_main_txt_font">
                                            <span class="star">*</span>
                                            <span class="main_title">주문하시는 분</span>
                                        </div>
                                        <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                            <input type="text" name="PURCHASER_NAME" placeholder="키드니" value="<%=baseUser.userName %>" />
                                        </div>
                                    </div>
                                    <div class="deli_info_first deli_info_flex_box">
                                        <div class="deli_info_main_txt deli_info_main_txt_font">
                                            <span class="star">*</span>
                                            <span class="main_title">휴대폰 번호</span>
                                        </div>
                                        <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                            <input type="text" name="PURCHASER_PHONE1" placeholder="010-1234-5678" value="<%=baseUser.userPhone %>" />
                                        </div>
                                    </div>
                                    <div class="deli_info_first deli_info_flex_box">
                                        <div class="deli_info_main_txt deli_info_main_txt_font left-padding">
                                            <span class="main_title">추가 연락처</span>
                                        </div>
                                        <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                            <input type="text" name="PURCHASER_PHONE2" />
                                        </div>
                                    </div>
                                    <div class="deli_info_first deli_info_flex_box">
                                        <div class="deli_info_main_txt deli_info_main_txt_font">
                                            <span class="star">*</span>
                                            <span class="main_title">이메일</span>
                                        </div>
                                        <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                            <input type="text" name="PURCHASER_EMAIL" placeholder="2023" value="<%=baseUser.userEmail %>"/>
                                        </div>
                                        <div class="block-example select_style">
                                            <select class="drkid-select lower-font" style="width: 200px;" data-font-class="lower-font">
                                                <option>직접입력</option>
                                                <option>naver.com</option>
                                                <option>gmail.com</option>
                                                <option>hanmail.net</option>
                                                <option>nate.com</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--배송자 정보--%>
                    <div class="orderer">
                        <div class="orderer_wrap">
                            <div class="orderer_wrap_inner">
                                <div class="product_info_txt mono_point">
                                    <span>배송 정보</span>
                                </div>
                                <div class="deli_info">                                    
                                    <div class="deli_info_first deli_info_flex_box">
                                        <div class="deli_info_main_txt deli_info_main_txt_font">
                                            <span class="star">*</span>
                                            <span class="main_title">받으실분</span>
                                        </div>
                                        <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                            <input type="text" name="DELIVERY_NAME" data-placeholder="010-1234-5678" id="place_input1" />
                                        </div>
                                    </div>

                                    <div class="give">
                                        <div class="first">
                                            <div class="first_txt">
                                                <span class="star">*</span>
                                                <span class="main_title">받으실 곳</span>
                                            </div>
                                        </div>
                                        <div class="second">
                                            <div class="second_top">
                                                <div class="input_box">
                                                    <input type="text" data-placeholder="" id="I_DELIVERY_ADDRESS_1" />
                                                </div>
                                                <div class="number_button search_Address_Btn">
                                                    <span>우편번호 검색</span>
                                                </div>
                                                <%--다음레이어--%>
                                                <div id="daumLayer">
                                                    <div class="daumLayer_Top" id="daumLayer_Top">
                                                        <div class="daumLayer_Top_area_1"></div>
                                                        <div class="daumLayer_Top_area_2">
                                                            <div class="daumLayer_Top_Title middle-font">주소찾기</div>
                                                        </div>
                                                        <div class="daumLayer_Top_area_3">
                                                            <div class="address_Icon_Area" onclick="closeDaumPostcode();">
                                                                <span class="clear-icon drkid-icon"></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="second_bottom">
                                                <div class="input_box">
                                                    <input type="text" data-placeholder="부산광역시 해운대구 센텀동로99 (벽산이센텀클래스원)" id="I_DELIVERY_ADDRESS_2" />
                                                </div>
                                                <div class="long_input_box">
                                                    <input type="text" data-placeholder="618-1호" id="I_DELIVERY_ADDRESS_3" placeholder="상세주소" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="deli_info_first deli_info_flex_box">
                                        <div class="deli_info_main_txt deli_info_main_txt_font">
                                            <span class="star">*</span>
                                            <span class="main_title">휴대폰 번호</span>
                                        </div>
                                        <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                            <input type="text" name="DELIVERY_PHONE" data-placeholder="010-1234-5678" id="place_input5" />
                                        </div>
                                        <%-- <div class="block-example select_style">          
                                            <select class="drkid-select lower-font" style="width:200px;" data-font-class="lower-font">
                                                <option>직접 입력</option>                                             
                                            </select>
                                        </div>  --%>
                                    </div>
                                    <div class="deli_info_first deli_info_flex_box">
                                        <div class="deli_info_main_txt deli_info_main_txt_font left-padding">
                                            <%--<span class="star">*</span>--%>
                                            <span class="main_title">추가 연락처</span>
                                        </div>
                                        <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                            <input type="text" name="name" placeholder="" />
                                        </div>
                                    </div>
                                    <div class="deli_info_first deli_info_flex_box last_txt">
                                        <div class="deli_info_main_txt deli_info_main_txt_font left-padding">
                                            <%--<span class="star">*</span>--%>
                                            <span class="main_title">남기실 말씀</span>
                                        </div>
                                        <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                            <input type="text" name="name" placeholder="" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="orderer">
                        <div class="orderer_wrap">
                            <div class="orderer_wrap_inner">
                                <div class="product_info_txt mono_point">
                                    <span>결제 수단</span>
                                </div>

                                <div class="method_content">
                                    <div class="method_contnet_wrap">
                                        <div class="method_contnet_inner">
                                            <%--일반결제--%>
                                            <%if (payment_flag == "common"){%>
                                            <div class="content">
                                                <div class="pay_wrap">
                                                    <div class="radio">
                                                        <input type="radio" name="chk_info" value="HTML" id="radio1"/>일반결제
                                                    </div>
                                                    <div class="pay none1">
                                                        <!--신용카드-->
                                                        <div class="pay_content fist_bg" id="hover1">
                                                            <div class="pay_content_wrap">
                                                                <span class="material-icons">credit_card</span>
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span>신용카드</span>
                                                            </div>
                                                        </div>
                                                        <!--계좌이체-->
                                                        <div class="pay_content" id="hover2">
                                                            <div class="pay_content_wrap">
                                                                <span class="material-icons">paid</span>
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span>계좌이체</span>
                                                            </div>
                                                        </div>
                                                        <!--가상계좌-->
                                                        <div class="pay_content" id="hover3">
                                                            <div class="pay_content_wrap">
                                                                <span class="material-icons">account_balance</span>
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span>가상계좌<br>
                                                                    (무통장)
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <!--카카오페이-->
                                                        <div class="pay_content" id="hover4">
                                                            <div class="pay_content_wrap">
                                                                <span class="material-icons">phone_android</span>
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span>핸드폰결제</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="pay_wrap">
                                                    <div class="radio">
                                                        <input type="radio" name="chk_info" value="HTML" id="radio2" />간편결제
                                                    </div>
                                                    <div class="pay_wrap_content">
                                                        <div class="pay none2">
                                                            <!--카카오페이-->
                                                            <div class="pay_content_2 fist_bg" id="hover5">
                                                                <div class="pay_content_wrap_2 kakao_img">
                                                                    <img src="/Source/client/image/kakao_img.svg" alt="kakao_img">
                                                                </div>
                                                                <div class="pay_content_txt_2">
                                                                    <span>카카오페이</span>
                                                                </div>
                                                            </div>
                                                            <!--네이버페이-->
                                                            <div class="pay_content_2" id="hover6">
                                                                <div class="pay_content_wrap_2 kakao_img">
                                                                    <img src="/Source/client/image/naver_logo2.png" alt="naver_img" />
                                                                </div>
                                                                <div class="pay_content_txt_2">
                                                                    <span>네이버페이</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--<div class="pay_wrap">
                                                    <div class="radio">
                                                        <input type="radio" name="chk_info" value="HTML" id="radio3">다른 결제
                                                    </div>
                                                </div>--%>
                                            </div>
                                            <%} %>
                                            <%--정기결제--%>
                                            <%if (payment_flag == "bill"){%>
                                            <div class="content">
                                                <div class="pay_wrap">
                                                    <div class="radio">
                                                        <input type="radio" name="chk_info" value="HTML" id="radio1"/>일반결제
                                                    </div>
                                                    <div class="pay none1">
                                                        <!--신용카드-->
                                                        <div class="pay_content fist_bg" id="hover1">
                                                            <div class="pay_content_wrap">
                                                                <span class="material-icons">credit_card</span>
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span>신용카드</span>
                                                            </div>
                                                        </div>
                                                        <!--핸드폰결제-->
                                                        <div class="pay_content" id="hover4">
                                                            <div class="pay_content_wrap">
                                                                <span class="material-icons">phone_android</span>
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span>핸드폰결제</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="pay_wrap">
                                                    <div class="bill_guide">
                                                        ※ PC 신용카드 정기결제시 금융인증서가 필요합니다.
                                                    </div>
                                                </div>
                                            </div>
                                            <%} %>
                                            <!--오른쪽-->
                                            <div class="right_content">
                                                <div class="right_content_wrap">
                                                    <div class="right_content_wrap_inner">
                                                        <div class="right_content_title">
                                                            <span>최종 결제 금액</span>
                                                        </div>
                                                        <div class="price"><%if (payment_flag =="bill")
                                                                             { %>
                                                            <span>월 </span>
                                                            <%} %>
                                                            <span>6,500원</span>
                                                        </div>
                                                        <%--결제하기 버튼--%>
                                                        <div class="price_button_wrap" id="go_paymnet">
                                                            <div class="price_button">
                                                                <span>결제하기</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--이니시스--%>
                                        <%--공통--%>
                                        <label class="col-10 col-sm-2 input param" style="border: none;">merchantData(가맹점 임의데이터)</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="merchantData" value="<%=merchantData %>" />
                                            </label>
                                         <br />
                                        <b>***** 필 수 *****</b>
                                        <div style="border: 2px #dddddd double; padding: 10px; background-color: #f3f3f3; text-align: left">

                                        <%--일반구매--%>
                                        <%if (payment_flag== "common")
                                          { %>
                                        <!-- 필수 -->
                                       
                                            <input type="hidden" name="version" id="version" value="<%=strVersion %>"/>

                                            <br />
                                            <b>mid</b> :
                                                    <br />
                                            <input type="text" name="mid" id="mid" value="<%=strMid %>"/>

                                            <br />
                                            <b>goodname</b> :
                                                    <br />
                                            <input type="text" name="goodname" id="goodname" value="<%=strGoodName %>"/>

                                            <br />
                                            <b>oid</b> :
                                                    <br />
                                            <input type="text" name="oid" id="oid" value="<%=oid %>"/>

                                            <br />
                                            <b>price</b> :
                                                    <br />
                                            <input type="text" name="price" id="price" value="<%=strPrice %>"/>

                                            <br />
                                            <b>currency</b> :
                                                    <br />
                                            [WON|USD]
                                                    <br />
                                            <input type="text" name="currency" id="currency" value="<%=strCurrency %>"/>

                                            <br />
                                            <b>buyername</b> :
                                                    <br />
                                            <input type="text" name="buyername" id="buyername" value="<%=strBuyerName %>"/>

                                            <br />
                                            <b>buyertel</b> :
                                                    <br />
                                            <input type="text" name="buyertel" id="buyertel" value="<%=strBuyerTel %>"/>

                                            <br />
                                            <b>buyeremail</b> :
                                                    <br />
                                            <input type="text" name="buyeremail" id="buyeremail" value="<%=strBuyerEmail %>"/>

                                            <br />
                                            <b>timestamp</b> :
                                                    <br />
                                            <input type="text" name="timestamp" id="timestamp" value="<%=timestamp %>"/>


                                            <br />
                                            <b>signature</b> :
                                                    <br />
                                            <input type="text" name="signature" id="signature" value="<%=signature %>"/>

                                            <br />
                                            <b>use_chkfake</b> :
                                                    <br />
                                            <input type="text" name="use_chkfake" id="use_chkfake" value="<%=use_chkfake %>"/>

                                            <br />
                                            <b>verification</b> :
                                                    <br />
                                            <input type="text" name="verification" id="verification" value="<%=verification %>"/>

                                            <br />
                                            <b>returnUrl</b> :
                                                    <br />
                                            <input type="text" name="returnUrl" id="returnUrl" value="<%=returnUrl %>"/>
                                            <br />
                                            <b>MKEY(가맹점키)</b> :
                                                    <br />
                                            <input type="text" name="mKey" id="mKey" value="<%=mKey %>"/>
                                        </div>

                                        <br />
                                        <br />
                                        <b>***** 기본 옵션 *****</b>
                                        <div style="border: 2px #dddddd double; padding: 10px; background-color: #f3f3f3; text-align: left">
                                            <b>gopaymethod</b> : 결제 수단 선택
                                                    <br />
                                            ex) Card (계약 결제 수단이 존재하지 않을 경우 에러로 리턴)
                                                    <br />
                                            사용 가능한 입력 값
                                                    <br />
                                            Card,DirectBank,HPP,Vbank,kpay,Swallet,Paypin,EasyPay,PhoneBill,GiftCard,EWallet
                                                    <br />
                                            onlypoint,onlyocb,onyocbplus,onlygspt,onlygsptplus,onlyupnt,onlyupntplus
                                                    <br />
                                            <input type="text" name="gopaymethod" id="gopaymethod" value="<%=gopaymethod %>"/>
                                            <br />
                                            <br />

                                            <br />
                                            <b>offerPeriod</b> : 제공기간
                                                    <br />
                                            ex)20150101-20150331, [Y2:년단위결제, M2:월단위결제, yyyyMMdd-yyyyMMdd : 시작일-종료일]
                                                    <br />
                                            <asp:TextBox ID="offerPeriod" Text="2015010120150331" runat="server" />
                                            <br />
                                            <br />

                                            <br />
                                            <b>acceptmethod</b> : acceptmethod
                                                    <br />
                                            acceptmethod  ex) CARDPOINT:SLIMQUOTA(코드-개월:개월):no_receipt:va_receipt:vbank(20150425):va_ckprice: 
                                                    <br />
                                            KWPY_TYPE(0):KWPY_VAT(10|0) 기타 옵션 정보 및 설명은 연동정의보 참조 구분자 ":"
                                                    <br />
                                            <input type="text" name="acceptmethod" id="acceptmethod" value="HPP(1):no_receipt:va_receipt:below1000:centerCd(Y)"/>
                                        </div>

                                        <br />
                                        <br />
                                        <b>***** 표시 옵션 *****</b>
                                        <div style="border: 2px #dddddd double; padding: 10px; background-color: #f3f3f3; text-align: left">
                                            <br />
                                            <b>languageView</b> : 초기 표시 언어
                                                    <br />
                                            [ko|en] (default:ko)
                                                    <br />
                                            <asp:TextBox ID="languageView" Text="" runat="server" />

                                            <br />
                                            <b>charset</b> : 리턴 인코딩
                                                    <br />
                                            [UTF-8|EUC-KR] (default:UTF-8)
                                                    <br />
                                            <asp:TextBox ID="charset" Text="" runat="server" />

                                            <br />
                                            <b>payViewType</b> : 결제창 표시방법
                                                    <br />
                                            [overlay] (default:overlay)
                                                    <br />
                                            <asp:TextBox ID="payViewType" Text="" runat="server" Width="210px" />

                                            <br />
                                            <b>closeUrl</b> : payViewType='overlay','popup'시 취소버튼 클릭시 창닫기 처리 URL(가맹점에 맞게 설정)
                                                    <br />
                                            close.jsp 샘플사용(생략가능, 미설정시 사용자에 의해 취소 버튼 클릭시 인증결과 페이지로 취소 결과를 보냅니다.)
                                                    <br />
                                            <input type="text" name="closeUrl" id="closeUrl" value="<%=closeUrl %>"/>

                                        </div>

                                        <b>***** 결제 수단별 옵션 *****</b>
                                        <br />
                                        <b>-- 카드(간편결제도 사용) --</b>
                                        <div style="border: 2px #cccccc solid; padding: 10px; background-color: #f3f3f3; text-align: left">
                                            <br />
                                            <b>nointerest</b> : 무이자 할부 개월
                                                    <br />
                                            ex) 11-2:3:4,04-2:3:4
                                                    <br />
                                            <asp:TextBox ID="nointerest" Text="11-2:3:,34-5:12,14-6:12:24,12-12:36,06-9:12,01-3:4" runat="server" Width="400px" />

                                            <br />
                                            <b>quotabase</b> : 할부 개월
                                                    <br />
                                            ex) 2:3:4
                                                    <br />
                                            <asp:TextBox ID="quotabase" Text="2:3:4:5:6:11:12:24:36" runat="server" Width="400px" />

                                        </div>

                                        <b>-- 가상계좌 --</b>
                                        <div style="border: 2px #cccccc solid; padding: 10px; background-color: #f3f3f3; text-align: left">
                                            <br />
                                            <b>INIregno</b> : 주민번호 설정 기능
                                                    <br />
                                            13자리(주민번호),10자리(사업자번호),미입력시(화면에서입력가능)
                                                    <br />
                                            <asp:TextBox ID="INIregno" Text="" runat="server" Width="400px" />
                                        </div>

                                        <%} %>

                                        <%--정기구매--%>
                                        <%if (payment_flag== "bill")
                                          { %>
                                            <input type="hidden" name="version" value="1.0" />

                                            <label class="col-10 col-sm-2 input param" style="border: none;">gopaymethod</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="gopaymethod" value="<%=gopaymethod %>" />
                                            </label>

                                            <label class="col-10 col-sm-2 input param" style="border: none;">mid</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="mid" value="<%=strMid%>" />
                                            </label>

                                            <label class="col-10 col-sm-2 input param" style="border: none;">oid</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="oid" value="<%=oid%>" />
                                            </label>

                                            <label class="col-10 col-sm-2 input param" style="border: none;">price</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="price" value="<%=strPrice%>" />
                                            </label>

                                            <label class="col-10 col-sm-2 input param" style="border: none;">timestamp</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="timestamp" value="<%=timestamp%>" />
                                            </label>

                                            <label class="col-10 col-sm-2 input param" style="border: none;">offerPeriod</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="offerPeriod" value="M2" />
                                            </label>

                                            <input type="hidden" name="use_chkfake" value="<%=use_chkfake%>" />
                                            <input type="hidden" name="signature" value="<%=signature%>" />
                                            <input type="hidden" name="verification" value="<%=verification%>" />

                                            <input type="hidden" name="mKey" value="<%=mKey%>" />
                                            <input type="hidden" name="currency" value="WON" />

                                            <label class="col-10 col-sm-2 input param" style="border: none;">goodname</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="goodname" value="테스트상품" />
                                            </label>

                                            <label class="col-10 col-sm-2 input param" style="border: none;">buyername</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="buyername" value="테스터" />
                                            </label>

                                            <label class="col-10 col-sm-2 input param" style="border: none;">buyertel</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="buyertel" value="01012345678" />
                                            </label>

                                            <label class="col-10 col-sm-2 input param" style="border: none;">buyeremail</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" name="buyeremail" value="test@test.com" />
                                            </label>

                                            <input type="hidden" name="returnUrl" value="<%=returnUrl %>" />
                                            <input type="hidden" name="closeUrl" value="<%=closeUrl %>" />

                                            <label class="col-10 col-sm-2 input param" style="border: none;">acceptmethod</label>
                                            <label class="col-10 col-sm-9 input">
                                                <input type="text" id="acceptmethod" name="acceptmethod" value="below1000:va_receipt:centerCd(Y):BILLAUTH(Card)" />
                                            </label>
                                        </div>
                                        <%} %>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <%--배송지 관리 모달--%>
                <%--레프트 메뉴 제외 하단 전체 영역--%>
                <div class="Bottom_Area delivery_Modal_Area">

                    <%--배송지 관리  전체 영역--%>
                    <div class="order_List_Area delivery_Moda">
                        <div class="my_Title_Area">
                            <div class="title">
                                <div class="my_Title">배송지 관리</div>
                                <div class="delivery_Modal_Close">
                                    <span class="clear-icon drkid-icon"></span>
                                </div>
                            </div>

                            <div class="my_sub_Title_Area">
                                <div class="delivery_Count_Info olower-font">배송지 관리 내역 총 <span class="main_color">5</span>건</div>
                                <div class="new_Delivery_Btn lowerst-font main_color new_Btn">새 배송지 추가</div>
                            </div>

                        </div>
                        <%--리스트--%>
                        <div class="new_Order_Area">
                            <div class="new_Order_List_Area">
                                <%--배송지 관리 리스트--%>
                                <div class="new_Order_List">
                                    <%--배송지 관리 리스트 컬럼--%>
                                    <div class="new_Order_List_Column_Area">
                                        <div class="new_Order_List_Column_1_Area">
                                            <div class="new_Order_List_Column lowerst-font">배송지 이름</div>
                                        </div>
                                        <div class="new_Order_List_Column_3_Area">
                                            <div class="new_Order_List_Column lowerst-font">받으실 분</div>
                                        </div>

                                        <div class="new_Order_List_Column_2_Area">
                                            <div class="new_Order_List_Column lowerst-font">주소</div>
                                        </div>
                                        <div class="new_Order_List_Column_4_Area">
                                            <div class="new_Order_List_Column lowerst-font">연락처</div>
                                        </div>
                                        <div class="new_Order_List_Column_5_Area">
                                            <div class="new_Order_List_Column lowerst-font">수정/삭제</div>
                                        </div>
                                    </div>
                                    <%--주문/배송상세 리스트 내용--%>
                                    <div class="new_Order_List_Filed">
                                        <%--등록된 배송지가 없을때--%>

                                        <%-- <div class="new_Order_List_Empty lowerst-font">등록된 배송지가 없습니다.</div>--%>

                                        <%--조회내역이 있을때 개별 레코드--%>
                                        <div class="new_Order_List_Row_Area">
                                            <div class="new_Order_List_Row">
                                                <%--배송지 이름--%>
                                                <div class="new_Order_List_Row_1_Area">
                                                    <div class="new_Order_List_Row_1 lowerst-font">(기본 배송지)</div>
                                                    <div class="new_Order_List_Row_1_1 drkid_postive_color lowerst-font">원인터내셔널</div>
                                                </div>
                                                <%--받으실 분--%>
                                                <div class="new_Order_List_Row_3_Area">
                                                    <div class="new_Order_List_Row_3 lowerst-font">김철수</div>
                                                </div>

                                                <%--상품금액/수량--%>
                                                <div class="new_Order_List_Row_2_Area">

                                                    <div class="new_Order_List_Row_2_1">
                                                        <div class="new_Order_List_Row_2_1_1 lowerst-font">(48048)</div>
                                                        <div class="new_Order_List_Row_2_1_2 lowerst-font">부산광역시 해운대구 센텀동로 99 (벽산이센텀클래스원) 618-1호</div>
                                                    </div>
                                                </div>
                                                <%--주문상태--%>
                                                <div class="new_Order_List_Row_4_Area">
                                                    <div class="new_Order_List_Row_4 lowerst-font">휴대폰</div>
                                                    <div class="new_Order_List_Row_4_1 lowerst-font">010-1234-5678</div>
                                                </div>
                                                <%--확인/리뷰--%>
                                                <div class="new_Order_List_Row_5_Area">
                                                    <div class="new_Order_List_Row_5 lowerst-font">수정</div>
                                                    <div class="new_Order_List_Row_5_1 lowerst-font">삭제</div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--조회내역이 있을때 개별 레코드--%>
                                        <div class="new_Order_List_Row_Area">
                                            <div class="new_Order_List_Row">
                                                <%--배송지 이름--%>
                                                <div class="new_Order_List_Row_1_Area">
                                                    <div class="new_Order_List_Row_1_1 drkid_postive_color lowerst-font">원인터내셔널</div>
                                                </div>
                                                <%--받으실 분--%>
                                                <div class="new_Order_List_Row_3_Area">
                                                    <div class="new_Order_List_Row_3 lowerst-font">김철수</div>
                                                </div>

                                                <%--상품금액/수량--%>
                                                <div class="new_Order_List_Row_2_Area">

                                                    <div class="new_Order_List_Row_2_1">
                                                        <div class="new_Order_List_Row_2_1_1 lowerst-font">(48048)</div>
                                                        <div class="new_Order_List_Row_2_1_2 lowerst-font">부산광역시 해운대구 센텀동로 99 (벽산이센텀클래스원) 618-1호</div>
                                                    </div>
                                                </div>
                                                <%--주문상태--%>
                                                <div class="new_Order_List_Row_4_Area">
                                                    <div class="new_Order_List_Row_4 lowerst-font">휴대폰</div>
                                                    <div class="new_Order_List_Row_4_1 lowerst-font">010-1234-5678</div>
                                                </div>
                                                <%--확인/리뷰--%>
                                                <div class="new_Order_List_Row_5_Area">
                                                    <div class="new_Order_List_Row_5 lowerst-font">수정</div>
                                                    <div class="new_Order_List_Row_5_1 lowerst-font">삭제</div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--조회내역이 있을때 개별 레코드--%>
                                        <div class="new_Order_List_Row_Area">
                                            <div class="new_Order_List_Row">
                                                <%--배송지 이름--%>
                                                <div class="new_Order_List_Row_1_Area">
                                                    <div class="new_Order_List_Row_1_1 drkid_postive_color lowerst-font">원인터내셔널</div>
                                                </div>
                                                <%--받으실 분--%>
                                                <div class="new_Order_List_Row_3_Area">
                                                    <div class="new_Order_List_Row_3 lowerst-font">김철수</div>
                                                </div>

                                                <%--상품금액/수량--%>
                                                <div class="new_Order_List_Row_2_Area">

                                                    <div class="new_Order_List_Row_2_1">
                                                        <div class="new_Order_List_Row_2_1_1 lowerst-font">(48048)</div>
                                                        <div class="new_Order_List_Row_2_1_2 lowerst-font">부산광역시 해운대구 센텀동로 99 (벽산이센텀클래스원) 618-1호부산광역시 해운대구 센텀동로 9</div>
                                                    </div>
                                                </div>
                                                <%--주문상태--%>
                                                <div class="new_Order_List_Row_4_Area">
                                                    <div class="new_Order_List_Row_4 lowerst-font">휴대폰</div>
                                                    <div class="new_Order_List_Row_4_1 lowerst-font">010-1234-5678</div>
                                                </div>
                                                <%--확인/리뷰--%>
                                                <div class="new_Order_List_Row_5_Area">
                                                    <div class="new_Order_List_Row_5 lowerst-font">수정</div>
                                                    <div class="new_Order_List_Row_5_1 lowerst-font">삭제</div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>




                        <%--페이징--%>
                        <div class="number-button-Area">
                            <div class="number-button-wrap">
                                <div class="number-button shopnvbtn all_prev">
                                    <span class="drkid-icon arrow-navi double-left-arrow allprev"></span>
                                </div>
                                <div class="number-button shopnvbtn one_prev">
                                    <span class="drkid-icon arrow-navi left-arrow oneprev"></span>
                                </div>
                                <div class="number-button nvnum shopPageNum">1</div>
                                <div class="number-button shopnvbtn one_next">
                                    <span class="drkid-icon arrow-navi right-arrow onenext"></span>
                                </div>
                                <div class="number-button shopnvbtn all_next">
                                    <span class="drkid-icon arrow-navi double-right-arrow allnext"></span>
                                </div>
                                <input type="hidden" class="shopnowpage" />
                            </div>
                        </div>
                    </div>
                </div>

                <%--배송지 관리 모달--%>
                <div class="delivery_Modal_Area5">
                    <div class="delivery_Modal5">
                        <%--상단--%>
                        <div class="delivery_Modal_Top_Area">
                            <div class="my_Title">배송지 관리</div>
                            <div class="new_Modal_Close">
                                <span class="clear-icon drkid-icon"></span>
                            </div>
                        </div>

                        <%--중단 입력영역--%>
                        <div class="delivery_Modal_Input_Area">
                            <%--배송지 명--%>
                            <div class="modal_Input_Area">
                                <div class="modal_Input_Info_Area">
                                    <div class="drkid_Negative_color lowerst-font">*&nbsp</div>
                                    <div class="modal_Input_Info lowerst-font">배송지명</div>
                                </div>
                                <div class="modal_Input">
                                    <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_NAME" name="I_DELIVERY_NAME" value="" placeholder="배송지명을 입력해주세요" />
                                </div>
                            </div>
                            <%--받는분--%>
                            <div class="modal_Input_Area">
                                <div class="modal_Input_Info_Area">
                                    <div class="drkid_Negative_color lowerst-font">*&nbsp&nbsp</div>
                                    <div class="modal_Input_Info lowerst-font">받는분</div>
                                </div>
                                <div class="modal_Input">
                                    <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_PERSON" name="I_DELIVERY_PERSON" value="" placeholder="받는분을 입력해주세요" />
                                </div>
                            </div>
                            <%--휴대폰번호--%>
                            <div class="modal_Input_Area">
                                <div class="modal_Input_Info_Area">
                                    <div class="drkid_Negative_color lowerst-font">*&nbsp&nbsp</div>
                                    <div class="modal_Input_Info lowerst-font">휴대폰번호</div>
                                </div>
                                <div class="modal_Input_Phone">
                                    <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_PHONE_1" name="I_DELIVERY_PHONE_1" value="" />
                                    <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_PHONE_2" name="I_DELIVERY_PHONE_2" value="" />
                                    <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_PHONE_3" name="I_DELIVERY_PHONE_3" value="" />
                                </div>
                            </div>
                            <%--추가 연락처--%>
                            <div class="modal_Input_Area">
                                <div class="modal_Input_Info_Area">
                                    <div class="drkid_Negative_color lowerst-font">&nbsp&nbsp&nbsp&nbsp</div>
                                    <div class="modal_Input_Info lowerst-font">추가 연락처</div>
                                </div>
                                <div class="modal_Input_Phone">
                                    <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_SECCOND_NUM_1" name="I_DELIVERY_SECCOND_NUM_1" value="" />
                                    <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_SECCOND_NUM_2" name="I_DELIVERY_SECCOND_NUM_2" value="" />
                                    <input type="text" class="drkid-input lowerst-font" id="I_DELIVERY_SECCOND_NUM_3" name="I_DELIVERY_SECCOND_NUM_3" value="" />
                                </div>
                            </div>

                        </div>
                        <%--모달 하단 버튼 및 체크박스--%>
                        <div class="delivery_Modal_Bottom_Area">
                            <div class="default_Delivery_Check_Area">
                                <div class="modal_Empty_Area"></div>
                            </div>
                            <div class="default_Delivery_Check">
                                <label class="drkid-checkbox" id="delivery_Modal_Checkbox">
                                    <input type="checkbox" value="N" id="default_Adress_Check" />
                                    <span class="fake-check-box"></span>
                                    <span class="checkbox_txt lower-font">기본 배송지로 설정 합니다</span>
                                </label>
                            </div>
                        </div>
                        <div class="delivery_Modal_Btn_Area">
                            <div class="modal_Save_Btn middle-font">저장</div>
                            <div class="modal_Cansle_Btn middle-font">취소</div>
                        </div>
                    </div>
                </div>

                <%--쿠폰 조회 관리 모달--%>
                <div class="cupon_Modal_Area2">
                    <div class="cupon_Modal">
                        <%--상단--%>
                        <div class="cupon_Modal_Top_Area">
                            <div class="my_Title">쿠폰 조회</div>
                            <div class="cupon_Modal_Close">
                                <span class="clear-icon drkid-icon"></span>
                            </div>
                        </div>

                        <%--중단 입력영역--%>
                        <div class="delivery_Modal_Input_Area">
                            <%--배송지 명--%>
                            <div class="modal_Input_Area">
                                <div class="input_txt">
                                    <p>
                                        ※ 사용 가능한 쿠폰만 노출됩니다.<br />
                                        ※ 실제 보유한 쿠폰과 차이가 있을 수 있습니다.
                                        <br />
                                        ※ 쿠폰 사용가능 조건을 확인해주세요.<br />
                                    </p>
                                </div>
                            </div>



                            <div class="scroll">
                                <%--받는 주소--%>
                                <div class="modal_Input_Area">
                                    <div class="product_list">
                                        <div class="first_title">
                                            <span>상품정보</span>
                                        </div>
                                        <div class="second_title">
                                            <span>상품금액/수량</span>
                                        </div>
                                    </div>
                                </div>
                                <%--상품정보 이미지--%>
                                <div class="modal_Input_Area between">
                                    <div class="input_img">
                                        <div class="img">
                                            <img src="/Source/client/image/product_img1.jpg" alt="product_img" />
                                        </div>
                                        <div class="img_txt">
                                            <p>신당케어</p>
                                            <br />
                                            <p>비건오메가3 (30일분)</p>
                                        </div>
                                    </div>
                                    <div class="right_txt">
                                        <span>88,400원/1개</span>
                                    </div>
                                </div>
                                <%--쿠폰적용--%>
                                <div class="modal_Input_Area padding">
                                    <div class="cupon_txt">
                                        <span>쿠폰적용</span>
                                    </div>
                                    <div class="cupon_box">
                                        <div class="block-example">
                                            <%--<div class="middle-font underline_block_example">fake select box</div>          --%>
                                            <select class="drkid-select lower-font" style="width: 200px;" data-font-class="lower-font">
                                                <option>선택해주세요</option>

                                            </select>
                                        </div>
                                    </div>
                                </div>


                                <div class="modal_Input_Area">
                                    <div class="product_list">
                                        <div class="first_title">
                                            <span>상품정보</span>
                                        </div>
                                        <div class="second_title">
                                            <span>상품금액/수량</span>
                                        </div>
                                    </div>
                                </div>

                                <%--상품정보 이미지--%>
                                <div class="modal_Input_Area between border-bottom">
                                    <div class="input_img">
                                        <div class="img">
                                            <img src="/Source/client/image/product_img1.jpg" alt="product_img" />
                                        </div>
                                        <div class="img_txt">
                                            <p>신당케어</p>
                                            <br />
                                            <p>비건오메가3 (30일분)</p>
                                        </div>

                                    </div>
                                    <div class="right_txt">
                                        <span>88,400원/1개</span>
                                    </div>
                                </div>
                                <div class="modal_Input_Area between border-bottom">
                                    <div class="input_img">
                                        <div class="img">
                                            <img src="/Source/client/image/product_img1.jpg" alt="product_img" />
                                        </div>
                                        <div class="img_txt">
                                            <p>신당케어</p>
                                            <br />
                                            <p>비건오메가3 (30일분)</p>
                                        </div>
                                    </div>
                                    <div class="right_txt">
                                        <span>88,400원/1개</span>
                                    </div>
                                </div>
                                <div class="modal_Input_Area between border-bottom">
                                    <div class="input_img">
                                        <div class="img">
                                            <img src="/Source/client/image/product_img1.jpg" alt="product_img" />
                                        </div>
                                        <div class="img_txt">
                                            <p>신당케어</p>
                                            <br />
                                            <p>비건오메가3 (30일분)</p>
                                        </div>

                                    </div>
                                    <div class="right_txt">
                                        <span>88,400원/1개</span>
                                    </div>
                                </div>
                                <div class="modal_Input_Area between border-bottom">
                                    <div class="input_img">
                                        <div class="img">
                                            <img src="/Source/client/image/product_img1.jpg" alt="product_img" />
                                        </div>
                                        <div class="img_txt">
                                            <p>신당케어</p>
                                            <br />
                                            <p>비건오메가3 (30일분)</p>
                                        </div>

                                    </div>
                                    <div class="right_txt">
                                        <span>88,400원/1개</span>
                                    </div>
                                </div>

                            </div>
                            <%--모달 하단 버튼 및 체크박스--%>

                            <div class="delivery_Modal_Btn_Area">
                                <div class="modal_Save_Btn middle-font">취소</div>
                                <div class="modal_Cansle_Btn middle-font">쿠폰 적용</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
