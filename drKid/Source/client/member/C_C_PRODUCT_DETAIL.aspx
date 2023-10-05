﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_C_PRODUCT_DETAIL.aspx.cs" Inherits="drKid.Source.client.member.C_C_PRODUCT_DETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src=”https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js”></script>
    <script src="/Source/client/js/zoomsl.min.js"></script>
    <style>
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
        #content {
            max-width: 1300px;
            margin: auto;
        }
        .img_box {
            width:620px;
            height:620px;
        }
        .img_box > img {
            width:100%;
            height:100%;
            object-fit:cover;
        }
        .text_box {
            width:630px;
            min-height: 630px;
        }
        .content_wrap {
            display: flex;
            gap: 50px;
        }

        .ballon_font {
            font-size:12px;
        }

        .ballon_txt {
            position: relative;
        }

        .ballon{
            position: absolute;
            top: -50px;
            right: -25px;
            padding: 10px 15px;
            /*border: 1px solid #115c5e;*/
            border-radius: 25px;
            line-height: 1.1;
        }

        .ballon > span:first-child {
            color:#FFC609;
        }

        .ballon > span:nth-child(2),
        .ballon > span:last-child {
            color:#fff;
        }

        .ballon::after {
            border-top: 10px solid #115c5e;
            border-left: 10px solid transparent;
            border-right: 10px solid transparent;
            border-bottom: 0px solid transparent;
            content: "";
            position: absolute;
            top: 55px;
            left: 40px;
        }
       

        .main_txt {
            display: flex;
            align-items: center;
            justify-content: space-between;
            font-size: 30px;
            font-weight: 700;
            padding: 20px 0;
        }

        .main_txt > span:last-child {
            /*position:relative;*/
            border-radius: 50%;
            border: 1px solid #9F9F9F;
            color: #9F9F9F;
            font-size: 1.5rem;
            padding: 0.5rem;
            cursor:pointer;
        }

        .star_wrap {
            display: flex;
            gap: 10px;
            margin-bottom: 40px;
        }

        .price_content_width {
            width:20%;
        }

        .price_content2_width {
            width: 80%;
            display: flex;
            align-items:center;
        } 

        .price_content_gap {
            margin-bottom:60px;
        }

        .price_content_font {
            font-size: 16px;
            font-weight:300;
        }

        .list_price {
            display: flex;
        }
        .price {
            display:flex;
        }
        .price > .price_one > span:first-child {
            font-size:20px;
            font-weight: 700;
        }
        .price_discount {
            color:#115c5e;
            font-weight: 500;
        }
        .classification {
            display:flex;
            align-items: center;
        }
        .pv {
            display:flex;
        }
        .expectation {
            display:flex;
        }
        .purchase {
            display:flex;
        }
        .option {
            display:flex;
            align-items: center;
        }
        .delivery {
            display:flex;
            padding: 15px 0;
            border-bottom: 1px solid;
        }
        .detail {
            padding: 100px 0; 
        }
        .detail_boxes {
            display:grid;
            grid-template-columns: repeat(5, 1fr);
        }
        .detail_box {
            display:flex;
            align-items: center;
            justify-content: center;
            padding: 15px 20px;
            border: 1px solid #E1E1E1;
            cursor: pointer;
        } 

        .detail_box_child {
            background-color: #115c5e;
            color:white;
        }

        .detail_box_gap {
            padding-top: 250px;
        }

        .detail_img_wrap_box {
            padding: 0 150px;
        }

        .detail_img_wrap_box > img {
            width: 100%;
            height:100%;
            object-fit:cover;
        }
        .deli {
            margin-top: 30px;
            padding: 22px;
            border: 1px solid #E1E1E1;
        }
        .deli_info {       
            border-top: 1px solid #bbb;
        }
        .deli_info:last-child {
            border-bottom: 1px solid #bbb;
        }
        .del_weight {
            font-weight:400;
        }
        .del_padding {
            padding-top: 10px;
        }

        .deli_info_flex_box {
            display: flex;
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
            font-size: 14px;
            color:#828282;
            padding: 10px 19px;
        }
        .deli_info_main_sub_font {
            font-size: 14px;
            

        } 

        .deli_info_sub_txt {
            width: 80%;
            min-width: 1000px;
            padding: 10px 15px;
        }
        .review_top_wrap {
            display: flex;
        }
       
        .product {
            width: 27%;
            border-right: 1px solid #E1E1E1;
            padding: 30px;
            display: flex;
            align-items: center;
            justify-content: flex-end;
        }

        .product_txt {
            padding-bottom: 10px;
        }

        .product_star {
            display:flex;
            align-items: center;
            justify-content: center;
            gap: 3px;
        }

        .front_score,
        .back_score,
        .review_all_count_score,
        .review_count_poto_score {
            font-size: 22px;
            font-weight:600;
        }

        .product_txt,
        .back_score,
        .review_count_main_txt,
        .review_all_count,
        .review_count_poto,
        .review_write_txt {
            color: #BBBBBB;
        }

        .star_img {
            width:15px;
        }

        .content_txt_box_title > p,
        .content_txt_box_sub_title > p {
            font-size: 14px;
        }

        .content_txt_box_sub_title > p {
            color: #BBBBBB;
        }

        .content_star {
            display:flex;
        }
        .review_count {
            width:18%;
            border-right: 1px solid #E1E1E1;
            padding: 30px;
            display: flex;
            align-items: center;
        }
        .review_count_main_txt {
            text-align:center;
            padding-bottom: 10px;
        }

        .review_count_bottom {
            display:flex;
            align-items:center;
            justify-content:center;
            gap: 10px
        }

        .review_product {
            padding-top: 40px;
        }

        .review_product_wrap_inner {
            display:grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 20px;
        }

        .content {
            border: 1px solid #E1E1E1;
        }

        .content_img {
            overflow: hidden;
            height: 252px;
        }

        .content_img > img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .content_txt_box {
            padding: 10px;
        }

        .content_txt_box_title {
            padding-top: 3px;
            padding-bottom: 5px;
        }

   
        .rod {
            width: 25%;
            border-right: 1px solid #E1E1E1;
            padding: 30px;
        }

        .rod_wrap_inner {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            text-align:center;
        }

        .bar_top {
            width: 8px;
            height: 55px;
            background-color: black;
            margin: auto;
        }

        .bar_center {
            padding-top: 5px;
            font-size: 14px;
            font-weight:700;
        }

        .bar_bottom {
            font-size: 14px;
            color:#BBBBBB;
        }

        .review_write {
            width: 30%;
            padding: 30px;
            display: flex;
            align-items: center;
        }

        .review_write_txt {
            padding-bottom: 10px;
        }

        .review_write_botton {
            width:125px;
            padding: 5px 15px;
            border: 1px solid #115c5e;
            color: #115c5e;
            margin-left: 20px;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 500;
            text-align: center;
            cursor:pointer;
        }

        .notice_List_Area_title {
            padding:30px 0 20px;
        }

        .question > span:first-child {
            font-weight:500
        }

        .question > span:nth-child(2) {
            color: #BBBBBB;
        }

        .question_product_write {
            padding: 10px 40px;
            border: 1px solid #115c5e;
            color: #115c5e;
            cursor: pointer;
        }

        .notice_List_Area_title_wrap_inner {
            display: flex;
            align-items:center;
            justify-content: space-between;
        }

        .notice_List_Area {
            width:100%;
            
        }
        .notice_List {
              border-top: 1px solid #4E4E4E;
              margin: 0 auto;
        }
        .notice_Content {
            border-bottom: 1px solid #E1E1E1;
            display: flex;
            align-items: center;
            padding: 15px 20px;
            cursor:pointer;
        }
        .notice_Number_Area , .notice_Writer_Area, .notice_Created_Date_Area, notice_Created_Answer_Area {
            width:10%;
        }
        .notice_Number_Important {
            text-align: center;
            background: #115C5E;
            width: 41px;
            font-size: 14px;
            color: #ffffff;
            margin: auto;
        }
        .notice_Number {
            font-size: 14px;
            color:#828282;
        }
        .notice_Title_Area {
            width:60%;
        }
        .notice_Title {
            font-weight:500;
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .notice_Title > span {
            display:block;
        }
        .notice_Title > span:first-child {
            font-size: 15px;
        }
        .notice_Writer,.notice_Created_Date {
            color:#BBBBBB;
        }

        .notice_Created_Answer {
            font-weight: 500;
        }
        /*페이징관련*/
        .number-button-Area {
            padding: 40px 0px;
        }
        .number-button-wrap {
            display: flex;
            justify-content: center;
        }
        .total_review_top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 40px;
            border-top: 1px solid;
            border-bottom:1px solid;
        }
        .total_review_top_xtx {
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .total_review_top_xtx > .txr:first-child {
            font-weight: 700;
        }
        .total_review_top_content {
            display: flex;
            align-items: center;
            gap: 80px;
        }
        .total_review_top_content_txt {
            font-size: 14px;
        }
        .search_1 {
            display: flex;
            gap: 20px;
            border: 1px solid #BBBBBB;
            color: #BBBBBB;
            padding: 5px 20px 5px 10px;
            border-radius: 7px;
            width: 240px;
            cursor:pointer;
        }
        .total_review_bottom_content {
            display:flex;
            padding: 20px 40px; 
            border-bottom: 1px solid #BBBBBB;
        }
        .total_review_bottom_content_txt {
            width: 20%;
        }

        .txt {
            color:#BBBBBB;
        }

        .txt_padding {
            padding-top: 20px;
        }
        .total_review_bottom_content_img {
            width: 80%;
        }

        .total_review_bottom_content_img_box {
            display: flex;
            gap: 5px;
        }
        .total_review_bottom_content_img_box > .img_box {
            width: 88px;
            height: 90px;
        }
        .total_review_bottom_content_img_box > .img_box > img {
            width: 100%;
            height: 100%;
            object-fit:cover;
        }
        .img_gap {
            display: flex;
            gap: 20px;
        }

        .bottom_price_wrap_inner > .price {
            display: flex;
            align-items:center;
            justify-content:end;
            padding-bottom: 25px;
            gap: 50px;
        }

        .bottom_price_wrap_inner > .price > .price_one > span:first-child {
           font-size:34px;
           font-weight: 700;
        }
        .button {
            display: flex;
            justify-content: end;
            gap: 50px;
        }
        .button_content {
            width: 290px;
            border: 1px solid #115c5e;
            padding: 15px 30px;
            text-align: center;
            border-radius: 8px;
        }

        .button > a > .button_content {
            background-color:#115c5e;
            color: white;
            cursor:pointer;
        }

        .button_content:first-child {
            color:#115c5e;
            font-weight:500;
            cursor: pointer;
        }
        .button_content:nth-child(2) {
            color:#115c5e;
            background-color:#115c5e;
            color: white;
        }
        .pv_price {
            font-size: 20px;
            color:#115c5e;
            font-weight:500;
        }
        .expectation_price {
            font-size: 20px;
            color:#FF441D;
            font-weight:500;
        }
       
        .delivery_condition {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 5px;
        }

        .delivery_price > span:first-child {
            color: #9f9f9f;
        } 

        .delivery_condition {
            color: #9f9f9f;
        }
        .delivery_condition > span:first-child {
            font-size: 16px;
        }

        .list_price_one > span:first-child {
            color: #9F9F9F;
            text-decoration: line-through;
        }

        .membership_box {
            margin-left: 20px;
            border: 1px solid #115c5e;
            padding: 10px 30px;
            border-radius: 5px;
            color: #115c5e;
            font-weight: 500;
        }

        [type="radio"] {
            margin: 0;
        }

        .price_txt {
            font-weight:400;
        }
        .review {
            font-size: 14px;
            color:#9F9F9F;
        }

        /*slide*/
        .slideshow-container {
          display:flex;
          position: relative;
          max-width: 100%;
          margin: auto;
          padding-top: 20px;
        }

        /* CSS for Slides */
        .mySlides {
          width:71px;
          height:70px;
        }       

        /* CSS for Image */
        .mySlides > img {
          width: 100%;
          height: auto;
          cursor:pointer;
        }

        /* CSS for Slide Navigation */
        .prev,
        .next {
          position: absolute;
          top: 50%;
          width: auto;
          margin-top: -22px;
          padding: 16px;
          color:#CDCDCD;
          font-size: 50px;
          transition: 0.6s ease;
          border-radius: 0 3px 3px 0;
          cursor: pointer;
        }

        .prev {
          left: 0;
        }

        .next {
          right: 0;
          border-radius: 3px 0 0 3px;
        }

        /* CSS for Slide Caption */
        .caption-container {
          text-align: center;
          background-color: rgba(0, 0, 0, 0.8);
          padding: 2px 16px;
          color: white;
        }

        .caption-container p {
          display: inline;
          font-size: 14px;
          padding: 8px 12px;
        }

        .dot-container {
          text-align: center;
          padding: 20px;
          background: #ddd;
        }

        .dot {
          height: 15px;
          width: 15px;
          margin: 0 2px;
          background-color: #bbb;
          border-radius: 50%;
          display: inline-block;
          transition: background-color 0.6s ease;
        }

        .active {
          background-color: #717171;
        }

        .slide_box {
            display: flex;
            max-width: 250px;
            margin: auto;
            justify-content: space-around;
            gap: 10px;
        }

        .classification_Area {
            display:flex;
        }

        /*txt_font*/
        .txt_small_font {
            font-size: 14px;
        }
        .txt_weight {
            font-weight: 600;
        }
        .padding-left {
            padding-left: 20px;
        }

        /**************************수정된 부분****************************/

        /*판매가*/
        .price_Area_wrap_inner {
            display:flex;
        }

        .priceArea_content1 > span:first-child {
            font-size:20px;
            color:#000000;
            font-weight: 700;
        }

        .priceArea_content1 > span:last-child {
            font-size:16px;
            color:#262626;
        }

        .priceArea_content_discount { 
            padding-left: 20px;
        }

        .priceArea_content_discount > span {
            font-size: 16px;
            color:#115C5E;
            font-weight: 600;
        }

        /*등급별 할인*/
        .Rating_Area_wrap_inner {
            display:flex;
            align-items: center;
        }

        .RatingArea_content {
            justify-content: space-between;
        }

        .RatingArea_content_discount {
            width: 96px;
            height: 50px;
            font-size:16px;
            font-weight: 500;
            border-radius:8px;
            text-align: center;
            border: 1px solid #115C5E;
            color: #115C5E;
            cursor:pointer;
            
        }

        .RatingArea_content_discount > span {
            line-height: 50px;
        }

        .RatingArea_content1 > .block-example {
            width:380px;
            height: 50px;
        }

        .RatingArea_content1 > .block-example > .drkid-select-div{
            border-radius: 5px;
            display: flex;
            align-items: center;
            padding-left: 20px;
        }

        .RatingArea_content1 > .block-example > .drkid-select-div > ul > li{
            padding-left: 20px;
        }

        /*PV*/
        .pv_Area_wrap_inner {
            display:flex;
        }

        .pvArea_content1 > span { 
            font-size:20px;
            color:#115C5E;
            font-weight:700;
        }

        /*옵션선택*/
        .all_option_box {
            width: 80%;
        }
        
        .option > .all_option_box > .first_option_box {
            width: 100%;
        }

        .option > .all_option_box > .second_option_box {
            width: 100%;         
        }

        .option > .all_option_box > .first_option_box > .block-example {
            height: 50px;
        }

        .option > .all_option_box > .second_option_box > .block-example {
            height: 50px;
            margin-bottom: 20px;
        }

        .option > .all_option_box > .first_option_box > .block-example > .drkid-select-div {
            border-radius: 5px;
            display: flex;
            align-items: center;
            padding-left: 20px;
        }

        .option > .all_option_box > .second_option_box > .block-example > .drkid-select-div {
            border-radius: 5px;
            display: flex;
            align-items: center;
            padding-left: 20px;
        }

        .option > .all_option_box > .first_option_box > .block-example > .drkid-select-div > ul > li{
            padding-left: 20px
        }

        .option > .all_option_box > .second_option_box > .block-example > .drkid-select-div > ul > li{
            padding-left: 20px
        }

        /*옵션 상품 box*/
        .option_product,
        .option_product2{
            display:none;
            border-top: 1px solid;
            border-bottom: 1px solid;
        }

        .option_product_wrap_inner,
        .option_product_wrap_inner2 {
            width: 100%;
            padding: 10px 0;
        }

        .option_product_top,
        .option_product_top2 {
            display:flex;
            align-items:center;
            justify-content : space-between;
        }

        .option_product_top > .title > span,
        .option_product_top2 > .title > span {
            font-size: 14px;
            color:#707070;
            font-weight:300;
        }

        .option_product_top > .delete1,
        .option_product_top2 > .delete2 {           
            border: 1px solid #D8D8D8;
            color:#D8D8D8;
            cursor: pointer;
        }

        .option_product_bottom,
        .option_product_bottom2 {
            display: flex;
            align-items: center;
            justify-content:space-between;
            margin-top: 10px;
            /*padding-bottom: 5px;*/
            /*border-bottom: 1px solid #E8E8E8;*/
        }

        .option_pm,
        .option_pm2 {
            display: flex;
            align-items: center;
            justify-content:space-around;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            width: 100px;
        }

        .option_pm > .p,
        .option_pm > .m {
           cursor: pointer;
        } 
        .option_pm > .p > span,
        .option_pm > .m > span {
            display:block;
            font-size: 20px;
        }

        .option_pm2 > .p,
        .option_pm2 > .m { 
           cursor: pointer;
        } 
        .option_pm2 > .p > span,
        .option_pm2 > .m > span {
            display:block;
            font-size: 20px;
        }

        .option_product_bottom_price > span:first-child,
        .option_product_bottom_price2 > span:first-child {
            font-size:20px;
            color:#000000;
            font-weight: 700;
        }

        .option_product_bottom_price > span:last-child,
        .option_product_bottom_price2 > span:last-child  {
            font-size:16px;
            color:#262626;
        }

        .purchase > .block-example {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .nvnum {
            border: 1px solid #115c5e;
            color: #115c5e;
        }

        .share {
            display:none;
            position: absolute;
            right: 0;
        }

        .share_wrap_inner {
            padding: 5px;
            box-shadow: 0px 0px 10px #0000001A;
            border: 1px solid #E1E1E1;
        }

        .share_top_sns {
            display:flex;
            align-items:center;
            gap: 5px;
            border:1px solid #F2F2F2;
            padding: 10px 20px;
            cursor : pointer;
        }

        .share_top {
            display: flex;
            gap: 10px;
            align-items: center;
        }

        .share_top_sns_img {
            width:25px;
            height:25px;
        }

        .share_bottom_wrap {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 7px;
            background: #cacaca;
            margin-top: 5px;
        }

        .share_top_sns_txt {
            font-size: 12px;
            font-weight: 400;
        }

        .url_click_box  {
            color:#fff;
            font-size:12px;
            height: 40px;
            padding: 0 30px;
            cursor: pointer;
        }

        .url_click_box > span {
            line-height: 40px;
        }

        .url_box > input {
            width: 290px;
            font-size:12px;
        }
    <%-- 네이버 블로그 이미지 아이콘 크기 이동규 .url_box > input의 width 도 290으로 변경--%>         
        .naver_blog_icon{
            width:25px;
            height:25px;
        }
    
    </style>

    <script>
        $(document).ready(function () {
            //이동규 img zoom on hover 작업 옮김 : 220803 허정현
            $('#zoom').imagezoomsl({
                zoomrange: [2, 2], //가로 세로 분할 수
                zoomspeedanimate: 10,
            });

            $('input[name="display"]').change(function () {
                var selectedOption = $('input[name="display"]:checked').val();

                if (selectedOption === "option1") {

                    $('#selectBox1').show();
                    $('#potion2_box, #selectBox2, #selectBox3, #selectBox4').hide();
                } else if (selectedOption === "option2") {

                    $('#selectBox1').hide();
                    $('#potion2_box, #selectBox2, #selectBox3, #selectBox4').show();
                } else {
                    $('#selectBoxContainer').hide();
                }
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('#radio1').prop('checked', true);

            $('#radio1').click(function () {
                $("#payment_flag").val("common");
                $('#selectBox1 .drkid-select-ul li').click(function () {
                    $('#selectBox1 .drkid-select-ul li').removeClass('active');
                    $(this).addClass('active');
                    var selectedOptionText = $(this).text();
                    $('.option_product_top > .title > span').text(selectedOptionText);
                    $('.option_product').css('display', 'block');
                    $('.option_product').css('border-bottom-color', 'balck');
                    $('.option_product2').hide();

                });
            });

            $('#radio2').click(function () {
                $("#payment_flag").val("bill");
                $('#selectBox4 .drkid-select-ul li').click(function () {
                    $('#selectBox4 .drkid-select-ul li').removeClass('active');
                    $(this).addClass('active');
                    var selectedOptionText = $(this).text();
                    $('.option_product_top2 > .title > span').text(selectedOptionText);
                    $('.option_product2').css('display', 'block');
                    $('.option_product').hide();
                    if ($('.option_product').css('display') === 'block' && $('.option_product2').css('display') === 'block') {
                        $('.option_product').css('border-bottom-color', '#cacaca');
                        $('.option_product2').css('border-top', 'none');
                    }
                });
            });

        });
    </script>

    <%--상품 갯수별 가격 계산--%> 
    <script>
        $(document).ready(function () {
            var fixedValue = 6500;
            //1회 구매
            $('.option_pm .p').click(function () {
                var currentValue = parseFloat($('.option_product_bottom_price > span:first-child').text().replace(/,/g, ''));
                var newValue = currentValue + fixedValue;
                $('.option_product_bottom_price > span:first-child').text(formatNumber(newValue));
                //+ 계산식
                var valueElement = $(this).siblings('.value');
                var value = parseInt(valueElement.text());
                valueElement.text(value + 1);
                $("#good_count").val(value + 1);
                $(".price_one_text").text(formatNumber(newValue));
            });

            $('.option_pm .m').click(function () {
                var currentValue = parseFloat($('.option_product_bottom_price > span:first-child').text().replace(/,/g, ''));
                var newValue = currentValue - fixedValue;
                newValue = Math.max(0, newValue);
                $('.option_product_bottom_price > span:first-child').text(formatNumber(newValue));
                //- 계산식
                var valueElement = $(this).siblings('.value');
                var value = parseInt(valueElement.text());
                $(".price_one_text").text(formatNumber(newValue));
                if (value > 0) {
                    valueElement.text(value - 1);
                    $("#good_count").val(value - 1);
                }
            });

            //정기 배송
            $('.option_pm2 .p').click(function () {
                var currentValue = parseFloat($('.option_product_bottom_price2 > span:first-child').text().replace(/,/g, ''));
                var newValue = currentValue + fixedValue;
                $('.option_product_bottom_price2 > span:first-child').text(formatNumber(newValue));
                //+ 계산식
                var valueElement = $(this).siblings('.value2');
                var value = parseInt(valueElement.text());
                valueElement.text(value + 1);
                $("#good_count").val(value + 1);
                $(".price_one_text").text(formatNumber(newValue));
            });

            $('.option_pm2 .m').click(function () {
                var currentValue = parseFloat($('.option_product_bottom_price2 > span:first-child').text().replace(/,/g, ''));
                var newValue = currentValue - fixedValue;
                newValue = Math.max(0, newValue);
                $('.option_product_bottom_price2 > span:first-child').text(formatNumber(newValue));
                //- 계산식
                var valueElement = $(this).siblings('.value2');
                var value = parseInt(valueElement.text());
                $(".price_one_text").text(formatNumber(newValue));
                if (value > 0) {
                    valueElement.text(value - 1);
                    $("#good_count").val(value - 1);
                }
            });

            function formatNumber(number) {
                return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
            }

            //삭제
            $('.delete1').click(function () {
                $('.option_product').hide();
            });

            $('#selectBox1 .drkid-select-ul li').click(function () {
                $('.option_product').show();
                $(".price_one_text").text(formatNumber(6500));
            });

            $('.delete2').click(function () {
                $('.option_product2').hide();
            });

            $('#selectBox4 .drkid-select-ul li').click(function () {
                $('.option_product2').show();
                $(".price_one_text").text(formatNumber(6500));
            });
        });
    </script>

    <%--총 가격 계산--%>
    <script>

    </script>

    <%--클릭시 해당 설명칸으로 이동--%>
    <script>
        $(document).ready(function () {
            $(".de1").click(function () {
                $('html, body').animate({
                    scrolltop: $('.detail-content1').offset().top
                }, 800);
            });
            $(".de2").click(function () {
                $('html, body').animate({
                    scrolltop: $('.detail-content2').offset().top
                }, 800);
            });
            $(".de3").click(function () {
                $('html, body').animate({
                    scrolltop: $('.detail-content3').offset().top
                }, 800);
            });
            $(".de4").click(function () {
                $('html, body').animate({
                    scrolltop: $('.detail-content4').offset().top
                }, 800);
            });
            $(".de5").click(function () {
                $('html, body').animate({
                    scrolltop: $('.detail-content5').offset().top
                }, 800);
            });
        });
    </script>

    <%--이미지 교체--%>
    <script>
        $(document).ready(function () {
            $('#img_change1 > img, #img_change2 > img , #img_change3 > img').click(function () {
                var imgSrc = $(this).attr('src');

                $('#img_change_content img').attr('src', imgSrc);
            });
        });
    </script>

    <script>
        //$(document).ready(function () {
        //    $("#share_button").click(function () {

        //    });
        //});
    </script>

    <script>
        $(document).ready(function () {
            const $urlBox = $('.url_box');
            const $inputField = $urlBox.find('input');
            const $copyButton = $('.url_click_box');

            function getCurrentURL() {
                $inputField.val(window.location.href);
            }

            function copyURL() {
                $inputField.select();
                document.execCommand('copy');
            }

            getCurrentURL();

            $copyButton.on('click', function () {
                copyURL();
                alert('URL이 복사되었습니다.');
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            const $shareButton = $('#share_button');
            const $shareArea = $('.share');

            $shareButton.click(function () {
                $shareArea.css('display', 'block');
            });

            $(document).on('click', function (event) {
                if (!$shareArea.is(event.target) && !$shareButton.is(event.target) && $shareArea.has(event.target).length === 0) {
                    $shareArea.css('display', 'none');
                }
            });
        });
    </script>

    <%--라인, 네이버, 카카오 공유 기능 추가 이동규--%>
    <script>
        $(document).on('click', '#share_btn_line', function () {

            var gotoUrl = encodeURIComponent($(location).attr('href')), <%--공유했을때 보낼 링크 주소를 저장 gotoUrl--%>
            line = 'https://social-plugins.line.me/lineit/share?url=',
            link = line + gotoUrl;
            window.open(link, "_blank", "width=500, height=500"); <%--새창의 크기와 주소--%>
            return false;

        });

        $(document).on('click', '#naver_blog_share', function () {
            var Naver_Blog_Tilte = '닥터키드니' + ' 신당케어 1box 1+1 120g';
            var url = window.location.href;     <%--블로그 공유했을 때 주소--%>
            var title = encodeURI(Naver_Blog_Tilte);        <%--블로그 공유했을 때 제목--%>
            var shareURL = "https://share.naver.com/web/shareView?url=" + url + "&title=" + title;
            window.open(shareURL, "_blank", "width=500, height=500"); <%--새창의 크기와 주소--%>
        });

    </script>
    <%-- 카카오톡 공유기능 추가. --%>
    <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.3.0/kakao.min.js"integrity="sha384-70k0rrouSYPWJt7q9rSTKpiTfX6USlMYjZUtr1Du+9o4cGvhPAWxngdtVZDdErlh" crossorigin="anonymous"></script>
    <script>
        Kakao.init('9badfd8a30a824628adde27f35917642'); // 사용하려는 앱의 JavaScript 키 입력
    </script>

    <script>
        $(document).on('click', '#share_btn_kakao', function () {
            var currentURL = window.location.href;
            var Title = '신당케어 1box 1+1 120g';
            var Descript = '신당케어'
            Kakao.Share.sendDefault({
                objectType: 'feed',
                content: {
                    title: Title,
                    description: Descript,
                    imageUrl:
                      'http://k.kakaocdn.net/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
                    link: {
                        // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
                        mobileWebUrl: 'https://www.naver.com/',
                        webUrl: currentURL,
                    },
                },
                buttons: [
                  {
                      title: '웹으로 보기',
                      link: {
                          mobileWebUrl: 'https://www.naver.com/',
                          webUrl: currentURL,
                      },
                  },
                ],
            });
        })
    </script>

    <script>
        //클릭이벤트 추가 로그인 유무에 따라서 로그인창으로가냐 구매결제 창으로가냐 추가 이동규
        var userId = '<%=baseUser.userId%>';
        $(function () {
            localStorage.clear();
            $('#PurchaseClick').click(function () {

                if (userId != "" && userId != null && userId != undefined) {
                    localStorage.setItem('login_check', 'yes');
                    //location.href = "/Source/client/member/C_PRODUCT_PURCHASE.aspx";
                }
                else {
                    localStorage.setItem('login_check', 'no');
                    //location.href = "/Source/client/member/login/C_LOGIN_Page.aspx";
                }
                var t_price = $(".price_one_text").text();
                $("#t_price").val(t_price); //총 금액
                var t_price_flag = $("#t_price").val();
                console.log(t_price_flag);
                //$("#good_count").val();  // 상품개수
                if (t_price_flag != "0") {
                    $('#form1').submit();
                }
                else {
                    alert("1개 이상의 옵션을 선택해주세요.");
                }
            });
        });



    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" id="payment_flag" name="payment_flag" value="common"/>
    <input type="hidden" id="t_price" name="t_price" value=""/>
    <input type="hidden" id="good_count" name="good_count" value="1"/>
    
    <div id ="sub_content">
        <div class="sub_layout">
             <div id="content">
                 <div class="content_wrap">
                     <div class="img_box_content">
                       
                         <div class="img_box" id="img_change_content">
                            <img src="/Source/client/image/detail_bg_img.png" alt="detail_bg" id="zoom"/>
                        </div>
                         <div class="slideshow-container">

                             <div class="slide_box">

                                <!-- Slide 1 -->
                                <div class="mySlides" id="img_change1">
                                    <img src="/Source/client/image/best_img.png" alt="Image 1">
                                </div>
                                <!-- Slide 2 -->
                                <div class="mySlides" id="img_change2">
                                    <img src="/Source/client/image/detail_bg_img.png" alt="Image 2">                            
                                </div>
                                <!-- Slide 3 -->
                                <div class="mySlides" id="img_change3">
                                    <img src="/Source/client/image/best_img.png" alt="Image 3">
                                </div>
                                <!-- Slide Navigation -->
                                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                                <a class="next" onclick="plusSlides(1)">&#10095;</a>
                            </div>   
                        </div>
                     </div>


                     <%--수정할 부분--%>
                     <div class="text_box">
                         <div class="relation_Item_Price_Info_Area">
                            <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                            <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                        </div>

                         <div class="ballon_txt">
                             <div class="main_txt">
                                 <span>신당케어 1box 1+1 120g</span>
                                 <span class="material-icons" id="share_button">share</span>
                             </div>

                             <%--추천인 말풍선--%>
                             <div class="ballon main_bg_color">
                                 <span class="ballon_font">추천인코드</span>
                                 <span class="ballon_font">를</span><br />
                                 <span class="ballon_font">공유해보세요!</span>
                             </div>

                             <%--sns 공유--%>
                             <div class="share">
                                 <div class="share_wrap">
                                     <div class="share_wrap_inner">
                                         <div class="share_top">
                                             <%-- 아이디 값 추가. 이동규 공유하기 -> 공유로 변경--%>
                                             <%-- 라인 공유 --%>
                                             <div class="share_top_sns" id="share_btn_line">
                                                 <div class="share_top_sns_img">
                                                     <img src="/Source/client/image/ballline.png" alt="line" />
                                                 </div>
                                                 <div class="share_top_sns_txt">
                                                     <span class="main_color">LINE 공유</span>
                                                 </div>
                                             </div>
                                             <%-- 카카오톡 공유 --%>
                                             <div class="share_top_sns"  id="share_btn_kakao">
                                                 <div class="share_top_sns_img">
                                                     <img src="/Source/client/image/kakao_img.svg" alt="kakao" />
                                                 </div>
                                                 <div class="share_top_sns_txt">
                                                     <span class="main_color">카카오톡 공유</span>
                                                 </div>                                              
                                             </div>
                                             <%-- 네이버 블로그 공유 --%>
                                             <div class="share_top_sns" id="naver_blog_share">
                                                    <img src="/Source/client/image/Naber_blog_img.png" alt="naver_blog" class="naver_blog_icon"/>
                                                 <div class="share_top_sns_txt">
                                                     <span class="main_color" style="width:25px; height:25px ">네이버 블로그</span>
                                                 </div>
                                             </div>
                                         </div>
                                         <%-- 주소 복사기능 --%>
                                         <div class="share_bottom">
                                             <div class="share_bottom_wrap">
                                                 <div class="url_box">
                                                     <input type="text" name="name" value="" readonly/>
                                                 </div>
                                                 <div class="url_click_box main_bg_color">
                                                     <span>URL 복사</span>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                 </div> 
                             </div>
                         </div>
                         
                         <div class="sub_txt">
                             <span>신당케어</span>
                         </div>
                         <div class="star_wrap">
                            <div class="content_star">
                                <div class="star_img">
                                    <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                </div>
                                <div class="star_img">
                                    <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                </div>
                                <div class="star_img">
                                    <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                </div>
                                <div class="star_img">
                                    <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                </div>
                                <div class="star_img">
                                    <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                </div>
                            </div>
                             <div class="review">
                                 <span>0개 리뷰 보기</span>
                             </div>
                         </div>

                           <%--수정할 부분--%>
                         <div class="list_price price_content_gap">
                             <div class="list_price_txt price_content_width price_content_font">
                                 <span>정가</span>
                             </div>
                             <div class="list_price_one price_content2_width">
                                 <span>10,000</span>
                                 <span>원</span>
                             </div>
                         </div>

                         <%--판매가--%>
                         <div class="price_Area price_content_gap">
                             <div class="price_Area_wrap">
                                 <div class="price_Area_wrap_inner">
                                     <div class="price_content_width  price_content_font">
                                         <span>판매가</span>
                                     </div>
                                     <div class="priceArea_content price_content2_width">
                                         <div class="priceArea_content1">
                                             <span>6,500</span>
                                             <span>원</span>
                                         </div>
                                         <div class="priceArea_content_discount">
                                             <span>35%</span>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>

                         <%--등급별 할인--%>
                         <%--<div class="Rating_Area price_content_gap">
                             <div class="Rating_Area_wrap">
                                 <div class="Rating_Area_wrap_inner">
                                     <div class="price_content_width  price_content_font">
                                         <span>등급별 할인</span>
                                     </div>
                                     <div class="RatingArea_content price_content2_width">
                                         <div class="RatingArea_content1">
                                             <div class="block-example">          
                                                <select class="drkid-select lower-font" style="width:350px;" data-font-class="lower-font">
                                                    <option>34,000원 ~ 36,000원</option>
                                                    <option>비회원 &nbsp 42% &nbsp 36,400원</option>
                                                    <option>마이크로 인플루언서 &nbsp 52% &nbsp 36,400원</option>
                                                    <option>디렉터 인플루언서 &nbsp 52% &nbsp 36,400원</option>
                                                    <option>마스터 인플루언서 &nbsp 52% &nbsp 36,400원</option>
                                                    <option>셀러브리티 &nbsp 52% &nbsp 36,400원</option>
                                                </select>
                                            </div>
                                         </div>
                                         <div class="RatingArea_content_discount">
                                             <span>멤버십</span>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>--%>

                         <%--pv--%>
                         <%--<div class="pv_Area price_content_gap">
                             <div class="pv_Area_wrap">
                                 <div class="pv_Area_wrap_inner">
                                     <div class="price_content_width price_content_font">
                                         <span>PV</span>
                                     </div>
                                     <div class="pvArea_content price_content2_width">
                                         <div class="pvArea_content1">
                                             <span>36,000</span>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>--%>
                         
                          <%--라디오 버튼 영역--%>
                         <div class="purchase price_content_gap">
                             <div class="purchase_txt price_content_width price_content_font">
                                 <span>구매방법</span>
                             </div>
                             <div class="block-example">
                                <label class="drkid-radio">
                                    <input type="radio" name="display" value="option1"  id="radio1"/>
                                    <span class="lower-font">1회 구매</span>
                                </label>
                                <label class="drkid-radio">
                                    <input type="radio" name="display" value="option2"  id="radio2"/>
                                    <span class="lower-font">정기배송</span>
                                </label>
                            </div>
                         </div>

                         <div class="option price_content_gap" id="selectBoxContainer price_content_gap">
                             <div class="option_wrap price_content_width price_content_font">
                                 <span>옵션선택</span>
                             </div>

                             <div class="all_option_box ">
                                 <%--첫번째 select box 옵션 영역--%>                           
                                 <div class="first_option_box" id="option_box1">
                                     <div class="block-example" id="selectBox1">          
                                        <select class="drkid-select lower-font" style="width:200px;" data-font-class="lower-font">
                                            <option>35% 할인 [3개월분] 신당케어 (3,500원 할인)</option>
                                        </select>
                                    </div>
                                 </div>
                             
                                  <%--두번째 select box 옵션 영역--%>    
                                 <div class="second_option_box" id="option_box2">
                                     <div class="block-example" id="selectBox2" style="display: none;">          
                                        <select class="drkid-select lower-font" style="width:200px;" data-font-class="lower-font">
                                            <option>정기배송 날짜를 선택해 주세요.</option>
                                            <option>매달 5일</option>
                                            <option>매달 10일</option>
                                            <option>매달 15일</option>
                                            <option>매달 20일</option>
                                            <option>매달 25일</option>
                                        </select>
                                    </div>

                                     <div class="block-example" id="selectBox3" style="display: none;">          
                                        <select class="drkid-select lower-font" style="width:200px;" data-font-class="lower-font">
                                            <option>배송기간을 선택해 주세요.</option>
                                            <option value="6300">3개월 (총 3회) </option>
                                            <option value="6100">6개월 (총 6회) </option>
                                            <option value="5900">12개월 (총 12회) </option>
                                        </select>
                                    </div>

                                     <div class="block-example" id="selectBox4" style="display: none;">          
                                        <select class="drkid-select lower-font" style="width:200px;" data-font-class="lower-font">
                                            <option>35% 할인 [3개월분] 신당케어 (3,500원 할인)</option>
                                        </select>
                                    </div>
                                 </div>
                             </div>
                         </div>

                         <%--상품 나오는 곳--%>
                         <div class="option_product">
                             <div class="option_product_wrap">
                                 <div class="option_product_wrap_inner">
                                     <div class="option_product_top">
                                         <div class="title">
                                             <span></span>

                                        </div>
                                         <span class="material-icons delete1">clear</span>
                                     </div>
                                     <div class="option_product_bottom">
                                         <div class="option_pm">
                                             <div class="p">
                                                 <span class="material-icons">add</span>
                                             </div>
                                             <span class="value">1</span>
                                             <div class="m">
                                                 <span class="material-icons">remove</span>
                                             </div>
                                         </div>
                                         <div class="option_product_bottom_price">
                                             <span>6,500</span>
                                             <span>원</span>
                                         </div>
                                     </div>                                                                    
                                 </div>
                             </div>
                         </div>

                         
                         <%--상품 나오는 곳--%>
                         <div class="option_product2">
                             <div class="option_product_wrap2">
                                 <div class="option_product_wrap_inner2">
                                     <div class="option_product_top2">
                                         <div class="title">
                                             <span></span>

                                        </div>
                                         <span class="material-icons delete2">clear</span>
                                     </div>
                                     <div class="option_product_bottom2">
                                         <div class="option_pm2">
                                             <div class="p">
                                                 <span class="material-icons">add</span>
                                             </div>
                                             <span class="value2">1</span>
                                             <div class="m">
                                                 <span class="material-icons">remove</span>
                                             </div>
                                         </div>
                                         <div class="option_product_bottom_price2">
                                             <span>6,500</span>
                                             <span>원</span>
                                         </div>
                                     </div>                                                                    
                                 </div>
                             </div>
                         </div>

                         <div class="delivery price_content_gap">
                             <div class="delivery_wrap price_content_width price_content_font">
                                 <span>배송비</span>
                             </div>
                             <div class="delivery_price">
                                 <span>0</span>
                                 <span>원</span>
                             </div>
                             <div class="delivery_condition padding-left">
                                 <span class="material-icons">info</span>
                                 <span>조건별배송</span>
                             </div>
                         </div>
                           <%--수정할 부분--%>
                     </div>
                      <%--수정할 부분--%>
                 </div>

                 <!--총금액-->
                 <div class="bottom_price">
                     <div class="bottom_price_wrap">
                         <div class="bottom_price_wrap_inner">
                             <div class="price">
                                 <div class="price_txt">
                                     <span>총 금액</span>
                                 </div>
                                 <div class="price_one">
                                     <span class="price_one_text">0</span>
                                     <span>원</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <!--장바구니 및 구매 버튼-->
                 <div class="bottom_button">
                     <div class="bottom_button_wrap">
                         <div class="bottom_button_wrap_inner">
                             <div class="button">
                                 <div class="button_content">
                                     <span>장바구니</span>
                                 </div>
                                 <!--<a href="/Source/client/member/C_PRODUCT_PURCHASE.aspx"> 이동규-->
                                    <div class="button_content" id="PurchaseClick">
                                        <span>구매하기</span>
                                     </div>
                                 <!--</a>-->
                                 
                             </div>
                         </div>
                     </div>
                 </div>

                 <!--상세 페이지 상품 정보-->
                 <div class="detail">
                     <div class="detail_wrap">
                         <!--상품상세정보-->
                         <div class="detail_wrap_inner detail-content1">
                             <div class="detail_boxes">
                                 <div class="detail_box detail_box_child de1">
                                     <span>상품상세정보</span>
                                 </div>
                                 <div class="detail_box de2">
                                     <span>배송안내</span>
                                 </div>
                                 <div class="detail_box de3">
                                     <span>교환 및 반품안내</span>

                                 </div>
                                 <div class="detail_box de4">
                                     <span>상품후기(1,266)</span>
                                 </div>
                                 <div class="detail_box de5">
                                     <span>상품문의(66)</span>
                                 </div>
                            </div>
                         </div>
                         <!--상세페에지 이미지-->
                         <div class="detail_img">
                             <div class="detail_img_wrap">
                                 <div class="detail_img_wrap_box">
                                     <img src="/Source/client/image/detail_pg_img.png" alt="Alternate Text" />
                                 </div>
                             </div>
                         </div>
                         <!--배송안내-->
                         <!--상품상세정보-->
                         <div class="detail_wrap_inner detail-content2">
                             <div class="detail_boxes">
                                 <div class="detail_box de1">
                                     <span>상품상세정보</span>
                                 </div>
                                 <div class="detail_box detail_box_child de2">
                                     <span>배송안내</span>
                                 </div>
                                 <div class="detail_box de3">
                                     <span>교환 및 반품안내</span>

                                 </div>
                                 <div class="detail_box de4">
                                     <span>상품후기(1,266)</span>
                                 </div>
                                 <div class="detail_box de5">
                                     <span>상품문의(66)</span>
                                 </div>
                            </div>
                         </div>
                         <!--배송안내 설명-->
                         <div class="deli">
                             <div class="deli_wrap">
                                 <div class="deli_wrap_inner">
                                     <div class="deli_main_txt lower-font">
                                         <span>배송안내</span>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>배송방법</span>
                                             </div>
                                             <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                                 <span>닥터키드니 택배 (1234-1234)</span>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>배송방법</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font main_color del_weight">
                                                     배송비 : 3,000원
                                                 </p>
                                                 <p class="deli_info_main_sub_font mono_sub_color">                                                   
                                                     (총 구매금액 40,000원 이상 시 무료배송)
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>배송 기간 안내</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font mono_sub_color">
                                                    평균 배송기간은 출고일 기준으로 2~3일(주말, 공휴일 제외) 소요되나 배달지역의 물량에 따라 추가 소요일 발생 될 수 있는 점 참고 부탁드립니다.
                                                    
                                                 </p>
                                                 <p class="deli_info_main_sub_font mono_dea_color del_padding">                                 
                                                    연말연시, 설, 추석 등 특수 시즌에는 택배사 사정으로 인해 부득이 배송 시일이 다소 길어질 수 있으며, 일부 군부대 특수지역은 배송이 불가능 할 수도 있습니다.
                                                    주문 및 배송에 관한 자세한 상담이 필요하시거나 문의사항은 고객센터 (1234-1234) 를 통해 문의 바랍니다.
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>배송 확인 방법</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font mono_sub_color">
                                                    주문하신 상품의 배송정보는 마이페이지의 주문목록/배송조회에서 송장번호 확인 가능합니다.<br />
                                                    배송에 관한 상담이 필요하시거나 문의사항은 고객센터 (1234-1234) 문의 바랍니다.
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                          <!--교환 및 반품안내-->
                         <!--상품상세정보-->
                         <div class="detail_wrap_inner detail-content3">
                             <div class="detail_boxes">
                                 <div class="detail_box de1">
                                     <span>상품상세정보</span>
                                 </div>
                                 <div class="detail_box de2">
                                     <span>배송안내</span>
                                 </div>
                                 <div class="detail_box detail_box_child de3">
                                     <span>교환 및 반품안내</span>

                                 </div>
                                 <div class="detail_box de4">
                                     <span>상품후기(1,266)</span>
                                 </div>
                                 <div class="detail_box de5">
                                     <span>상품문의(66)</span>
                                 </div>
                            </div>
                         </div>
                         <!--교환 및 반품안내 설명-->
                         <div class="deli">
                             <div class="deli_wrap">
                                 <div class="deli_wrap_inner">
                                     <div class="deli_main_txt lower-font">
                                         <span>교환 및 반품 안내</span>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>주문취소 안내</span>
                                             </div>
                                             <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                                 <p class="deli_info_main_sub_font mono_sub_color">                                                   
                                                     주문완료 후 결제대금은 기한(48시간) 내 입금 가능하며, 입금되지 않은 주문은 자동취소 됩니다.
                                                 </p>
                                                 <p class="deli_info_main_sub_font mono_sub_color del_padding">                                                   
                                                     주문 상품이 여러가지 품목으로 부분 주문취소 원하실 경우, 아래와 같이 진행 가능합니다. <br />
                                                     - 결제완료 : 부분 주문취소 직접 가능  <br />
                                                     - 상품준비중 : 당일 오전까지 부분 주문취소 불가하나 전체 주문취소 가능 / 당일 오후 12시 이후에는 부분· 전체 주문취소 불가
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>교환 및 반품 택배비</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font main_color del_weight">
                                                     반품택배비 : 6,000원
                                                 </p>
                                                 <p class="deli_info_main_sub_font mono_sub_color del_padding">                                                   
                                                    - 상품 불량 및 오배송 등의 이유로 교환/반품 진행하는 경우, 왕복배송비는 무상으로 진행됩니다. <br />
                                                    - 고객님의 단순 변심으로 인한 교환/반품 진행하는 경우, 반품배송비 유상으로 진행됩니다.
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>교환 및 반품 주소</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font main_color del_weight">
                                                     - [46747] 부산광역시 강서구 미음국제3로 77 (미음동) (주)위킵부산
                                                 </p>
                 
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>교환 및 반품이 가능한 경우</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font mono_sub_color">
                                                    - 계약내용에 관한 서면을 받은 날부터 7일. 단, 그 서면을 받은 때보다 재화등의 공급이 늦게 이루어진 경우에는 재화등을 공급받거나 재화등의 공급이 시작된 날부터 7일 이내<br />
                                                    - 공급받으신 상품 및 용역의 내용이 표시.광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날 부터 3월이내, 그사실을 알게 된 날 또는 알 수 있었던 날부터 30일이내                             
                                                 </p>
                                                 
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>교환 및 반품이 불가능한 경우</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font mono_sub_color">
                                                    - 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)<br />
                                                    - 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br />
                                                    - 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br />
                                                    - 복제가 가능한 재화등의 포장을 훼손한 경우<br />  
                                                    - 개별 주문 생산되는 재화 등 청약철회시 판매자에게 회복할 수 없는 피해가 예상되어 소비자의 사전 동의를 얻은 경우<br />
                                                    - 디지털 콘텐츠의 제공이 개시된 경우, (다만, 가분적 용역 또는 가분적 디지털콘텐츠로 구성된 계약의 경우 제공이 개시되지 아니한 부분은 청약철회를 할 수 있습니다.)<br />               
                                                 </p>
                                                 <p class="deli_info_main_sub_font mono_sub_color del_padding">                                                   
                                                    ※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다. <br />
                                                     (색상 교환, 사이즈 교환 등 포함)
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <!--상품후기-->
                         <div class="detail_wrap_inner detail-content4">
                             <div class="detail_boxes">
                                 <div class="detail_box de1">
                                     <span>상품상세정보</span>
                                 </div>
                                 <div class="detail_box de2">
                                     <span>배송안내</span>
                                 </div>
                                 <div class="detail_box de3">
                                     <span>교환 및 반품안내</span>

                                 </div>
                                 <div class="detail_box detail_box_child de4">
                                     <span>상품후기(1,266)</span>
                                 </div>
                                 <div class="detail_box de5">
                                     <span>상품문의(66)</span>
                                 </div>
                            </div>
                         </div>
                         <!--상품후기 설명-->
                         <div class="review">
                             <div class="review_wrap">
                                 <div class="review_wrap_inner">
                                     <div class="review_top">
                                         <div class="review_top_wrap">
                                             <!--상품 평점-->
                                             <div class="product">
                                                 <div class="product_wrap">
                                                     <div class="product_txt">
                                                         <span>상품만족도</span>
                                                     </div>
                                                     <div class="product_star">
                                                         <div class="star_img">
                                                             <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                         </div>
                                                         <div class="front_score">
                                                             <span>4.8</span>
                                                         </div>
                                                         <div class="back_score">
                                                             <span>/5</span>
                                                         </div>
                                                     </div>
                                                 </div>
                                                 
                                             </div>
                                             <!--리뷰개수-->
                                             <div class="review_count">
                                                 <div class="review_count_wrap">
                                                     <div class="review_count_wrap_inner">
                                                         <div class="review_count_main_txt">
                                                             <span>리뷰 개수</span>
                                                         </div>
                                                         <div class="review_count_bottom">
                                                          
                                                             <div class="review_all_count">
                                                                 <span>전체</span>
                                                             </div>
                                                             <div class="review_all_count_score">
                                                                 <span>202</span>
                                                             </div>
                                                             <div class="review_count_poto">
                                                                 <span>포토</span>
                                                             </div>
                                                             <div class="review_count_poto_score">
                                                                 <span>56</span>
                                                             </div>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </div>
                                             <!--막대평점-->
                                             <div class="rod">
                                                 <div class="rod_wrap">
                                                     <div class="rod_wrap_inner">
                                                         <!--첫번째 bar-->
                                                         <div class="bar">
                                                             <div class="bar_top"></div>
                                                             <div class="bar_center">
                                                                 <span>5점</span>
                                                             </div>
                                                             <div class="bar_bottom">
                                                                 <span>88%</span>
                                                             </div>
                                                         </div>
                                                         <!--첫번째 bar-->
                                                         <div class="bar">
                                                             <div class="bar_top"></div>
                                                             <div class="bar_center">
                                                                 <span>4점</span>
                                                             </div>
                                                             <div class="bar_bottom">
                                                                 <span>3%</span>
                                                             </div>
                                                         </div>
                                                         <!--첫번째 bar-->
                                                         <div class="bar">
                                                             <div class="bar_top"></div>
                                                             <div class="bar_center">
                                                                 <span>3점</span>
                                                             </div>
                                                             <div class="bar_bottom">
                                                                 <span>8%</span>
                                                             </div>
                                                         </div>
                                                         <!--첫번째 bar-->
                                                         <div class="bar">
                                                             <div class="bar_top"></div>
                                                             <div class="bar_center">
                                                                 <span>2점</span>
                                                             </div>
                                                             <div class="bar_bottom">
                                                                 <span>0%</span>
                                                             </div>
                                                         </div>
                                                         <!--첫번째 bar-->
                                                         <div class="bar">
                                                             <div class="bar_top"></div>
                                                             <div class="bar_center">
                                                                 <span>1점</span>
                                                             </div>
                                                             <div class="bar_bottom">
                                                                 <span>1%</span>
                                                             </div>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </div>
                                             <!--리뷰 작성하기-->
                                             <div class="review_write">
                                                 <div class="review_write_wrap">
                                                     <div class="review_write_wrap_inner">
                                                         <div class="review_write_txt">
                                                             <span>당신의 경험을 공유해주세요!</span>
                                                         </div>
                                                         <div class="review_write_botton">
                                                             <span>리뷰 작성하기</span>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>

                         <div class="review_product">
                             <div class="review_product_wrap">
                                 <div class="review_product_wrap_inner">
                                     <!--첫번째 상품-->
                                     <div class="review_product_content">
                                         <div class="content">
                                             <div class="content_img">
                                                 <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                             </div>
                                             <div class="content_txt_box">
                                                 <div class="content_star">
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                 </div>
                                                 <div class="content_txt_box_title">
                                                     <p>
                                                         효과가 너무 좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크....
                                                     </p>
                                                 </div>
                                                 <div class="content_txt_box_sub_title">
                                                     <p>
                                                         dekey****님의 리뷰입니다.
                                                     </p>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                     <!--첫번째 상품-->
                                     <div class="review_product_content">
                                         <div class="content">
                                             <div class="content_img">
                                                 <img src="/Source/client/image/detail_bg_img.png" alt="Altern
                                                     ate Text" />
                                             </div>
                                             <div class="content_txt_box">
                                                 <div class="content_star">
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                 </div>
                                                 <div class="content_txt_box_title">
                                                     <p>
                                                         효과가 너무 좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크....
                                                     </p>
                                                 </div>
                                                 <div class="content_txt_box_sub_title">
                                                     <p>
                                                         dekey****님의 리뷰입니다.
                                                     </p>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                     <!--첫번째 상품-->
                                     <div class="review_product_content">
                                         <div class="content">
                                             <div class="content_img">
                                                 <img src="/Source/client/image/detail_bg_img.png" alt="Altern
                                                     ate Text" />
                                             </div>
                                             <div class="content_txt_box">
                                                 <div class="content_star">
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                 </div>
                                                 <div class="content_txt_box_title">
                                                     <p>
                                                         효과가 너무 좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크....
                                                     </p>
                                                 </div>
                                                 <div class="content_txt_box_sub_title">
                                                     <p>
                                                         dekey****님의 리뷰입니다.
                                                     </p>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                     <!--첫번째 상품-->
                                     <div class="review_product_content">
                                         <div class="content">
                                             <div class="content_img">
                                                 <img src="/Source/client/image/detail_bg_img.png" alt="Altern
                                                     ate Text" />
                                             </div>
                                             <div class="content_txt_box">
                                                 <div class="content_star">
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                 </div>
                                                 <div class="content_txt_box_title">
                                                     <p>
                                                         효과가 너무 좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크....
                                                     </p>
                                                 </div>
                                                 <div class="content_txt_box_sub_title">
                                                     <p>
                                                         dekey****님의 리뷰입니다.
                                                     </p>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                     <!--첫번째 상품-->
                                     <div class="review_product_content">
                                         <div class="content">
                                             <div class="content_img">
                                                 <img src="/Source/client/image/detail_bg_img.png" alt="Altern
                                                     ate Text" />
                                             </div>
                                             <div class="content_txt_box">
                                                 <div class="content_star">
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                     <div class="star_img">
                                                         <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                     </div>
                                                 </div>
                                                 <div class="content_txt_box_title">
                                                     <p>
                                                         효과가 너무 좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크....
                                                     </p>
                                                 </div>
                                                 <div class="content_txt_box_sub_title">
                                                     <p>
                                                         dekey****님의 리뷰입니다.
                                                     </p>
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
                                        <div class="number-button shopnvbtn 
                                            one_prev">
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
                                 <%--리뷰--%>
                                 <div class="total_review">
                                     <div class="total_review_wrap">
                                         <div class="total_review_wrap_inner">
                                             <div class="total_review_top">
                                                 <div class="total_review_top_xtx">
                                                     <div class="txr">
                                                         <span>추천순</span>
                                                     </div>
                                                     <div class="txr">
                                                         <span>최신순</span>
                                                     </div>
                                                     <div class="txr">
                                                         <span>별점순</span>
                                                     </div>
                                                 </div>
                                                 <div class="total_review_top_content">
                                                     <div class="total_review_top_content_txt">
                                                         <span>전체 리뷰 202개</span>
                                                     </div>
                                                     <div class="search_1">
                                                         <span class="material-icons">search</span>
                                                         <span>리뷰검색</span>
                                                     </div>
                                                 </div>
                                             </div>
                                             <div class="total_review_bottom">
                                                 <div class="total_review_bottom_wrap">
                                                     <div class="total_review_bottom_wrap_inner">
                                                          <%--리뷰 content--%>
                                                         <div class="total_review_bottom_content">
                                                             <div class="total_review_bottom_content_txt">
                                                                 <div class="content_star">
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                </div>
                                                                 <div class="txt txt_padding txt_small_font">
                                                                     <span>drkey****님의 리뷰입니다.</span>
                                                                 </div>
                                                                 <div class="txt txt_small_font">
                                                                     <span>2023-06-01</span>
                                                                 </div>
                                                             </div>
                                                             <div class="total_review_bottom_content_img">
                                                                 <div class="total_review_bottom_content_img_txt">
                                                                     <p class="txt_weight">
                                                                         11% 할인 [3개월분] 신당케어 (12,400원 할인)
                                                                     </p>
                                                                 </div>
                                                                 <div class="total_review_bottom_content_img_txt txt_padding">
                                                                     <p class="txt_small_font">
                                                                         효과가 너무좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크지도않아서 먹기에 딱 좋습니다.
                                                                     </p>
                                                                 </div>
                                                             </div>
                                                         </div>
                                                          <%--리뷰 content--%>
                                                         <div class="total_review_bottom_content">
                                                             <div class="total_review_bottom_content_txt">
                                                                 <div class="content_star">
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                </div>
                                                                 <div class="txt txt_padding txt_small_font">
                                                                     <span>drkey****님의 리뷰입니다.</span>
                                                                 </div>
                                                                 <div class="txt txt_small_font">
                                                                     <span>2023-06-01</span>
                                                                 </div>
                                                             </div>
                                                             <div class="total_review_bottom_content_img img_gap">
                                                                 <div class="total_review_bottom_content_img_box">
                                                                     <div class="img_box">
                                                                         <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                                     </div>
                                                                     <div class="img_box">
                                                                         <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                                     </div>
                                                                 </div>
                                                                 <div class="total_review_bottom_content_img_txt">
                                                                     <div class="total_review_bottom_content_img_txt">
                                                                         <p class="txt_weight">
                                                                             11% 할인 [3개월분] 신당케어 (12,400원 할인)
                                                                         </p>
                                                                    </div>
                                                                     <div class="total_review_bottom_content_img_txt txt_padding">
                                                                         <p class="txt_small_font">
                                                                             효과가 너무좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크지도않아서 먹기에 딱 좋습니다.
                                                                         </p>
                                                                     </div>
                                                                 </div>                                                           
                                                             </div>
                                                         </div>
                                                          <%--리뷰 content--%>
                                                         <div class="total_review_bottom_content">
                                                             <div class="total_review_bottom_content_txt">
                                                                 <div class="content_star">
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                </div>
                                                                 <div class="txt txt_padding txt_small_font">
                                                                     <span>drkey****님의 리뷰입니다.</span>
                                                                 </div>
                                                                 <div class="txt txt_small_font">
                                                                     <span>2023-06-01</span>
                                                                 </div>
                                                             </div>
                                                             <div class="total_review_bottom_content_img">
                                                                 <div class="total_review_bottom_content_img_txt">
                                                                     <p class="txt_weight">
                                                                         11% 할인 [3개월분] 신당케어 (12,400원 할인)
                                                                     </p>
                                                                 </div>
                                                                 <div class="total_review_bottom_content_img_txt txt_padding">
                                                                     <p class="txt_small_font">
                                                                         효과가 너무좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크지도않아서 먹기에 딱 좋습니다.
                                                                     </p>
                                                                 </div>
                                                             </div>
                                                         </div>
                                                          <%--리뷰 content--%>
                                                         <div class="total_review_bottom_content">
                                                             <div class="total_review_bottom_content_txt">
                                                                 <div class="content_star">
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                </div>
                                                                 <div class="txt txt_padding txt_small_font">
                                                                     <span>drkey****님의 리뷰입니다.</span>
                                                                 </div>
                                                                 <div class="txt txt_small_font">
                                                                     <span>2023-06-01</span>
                                                                 </div>
                                                             </div>
                                                             <div class="total_review_bottom_content_img img_gap">
                                                                 <div class="total_review_bottom_content_img_box">
                                                                     <div class="img_box">
                                                                         <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                                     </div>
                                                                 </div>
                                                                 <div class="total_review_bottom_content_img_txt">
                                                                     <div class="total_review_bottom_content_img_txt">
                                                                         <p class="txt_weight">
                                                                             11% 할인 [3개월분] 신당케어 (12,400원 할인)
                                                                         </p>
                                                                    </div>
                                                                     <div class="total_review_bottom_content_img_txt txt_padding">
                                                                         <p class="txt_small_font">
                                                                             효과가 너무좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크지도않아서 먹기에 딱 좋습니다.
                                                                         </p>
                                                                     </div>
                                                                 </div>                                                           
                                                             </div>
                                                         </div>
                                                          <%--리뷰 content--%>
                                                         <div class="total_review_bottom_content">
                                                             <div class="total_review_bottom_content_txt">
                                                                 <div class="content_star">
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                    <div class="star_img">
                                                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                    </div>
                                                                </div>
                                                                 <div class="txt txt_padding txt_small_font">
                                                                     <span>drkey****님의 리뷰입니다.</span>
                                                                 </div>
                                                                 <div class="txt txt_small_font">
                                                                     <span>2023-06-01</span>
                                                                 </div>
                                                             </div>
                                                             <div class="total_review_bottom_content_img">
                                                                 <div class="total_review_bottom_content_img_txt">
                                                                     <p class="txt_weight">
                                                                         11% 할인 [3개월분] 신당케어 (12,400원 할인)
                                                                     </p>
                                                                 </div>
                                                                 <div class="total_review_bottom_content_img_txt txt_padding">
                                                                     <p class="txt_small_font">
                                                                         효과가 너무좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크지도않아서 먹기에 딱 좋습니다.
                                                                     </p>
                                                                 </div>
                                                             </div>
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
                                        <div class="number-button shopnvbtn 
                                            one_prev">
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
                         
                         <!--상품문의-->
                         <div class="detail_wrap_inner detail-content5">
                             <div class="detail_boxes">
                                 <div class="detail_box de1">
                                     <span>상품상세정보</span>
                                 </div>
                                 <div class="detail_box de2">
                                     <span>배송안내</span>
                                 </div>
                                 <div class="detail_box de3">
                                     <span>교환 및 반품안내</span>

                                 </div>
                                 <div class="detail_box de4">
                                     <span>상품후기(1,266)</span>
                                 </div>
                                 <div class="detail_box detail_box_child de5">
                                     <span>상품문의(66)</span>
                                 </div>
                            </div>
                         </div>
                         <!--상품문의 설명-->
                         <div class="notice_List_Area_title">
                             <div class="notice_List_Area_title_wrap">
                                 <div class="notice_List_Area_title_wrap_inner">
                                     <div class="question">
                                         <span>상품 Q & A</span>
                                         <span>(77)</span>
                                     </div>
                                     <div class="question_product_write">
                                         <span>상품문의 글쓰기</span>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class=""></div>


                        <div class="notice_List_Area">
                            <div class="notice_List">         
                                <%--공지사항 일반글1 --%>
                                <div class="notice_Content">
                                    <div class="notice_Number_Area">
                                        <div class="notice_Number lowerst-font">74</div> <%--일반글--%>
                                    </div>
                                     <div class="notice_Title_Area">
                                        <div class="notice_Title lowerst-font">
                                            <span class="material-icons">https</span>
                                            <span>문의 드립니다.</span>    
                                        </div>
                                    </div>
                                    <div class="notice_Writer_Area">
                                        <div class="notice_Writer lowerst-font">관리자</div>
                                    </div>
                           
                                    <div class="notice_Created_Date_Area">
                                      <div class="notice_Created_Date lowerst-font">2023.06.01</div>
                                    </div>

                                    <div class="notice_Created_Answer_Area">
                                        <div class="notice_Created_Answer lowerst-font">답변대기</div>
                                    </div>
                                </div>
                                <%--공지사항 일반글2 --%>
                                <div class="notice_Content">
                                    <div class="notice_Number_Area">
                                        <div class="notice_Number lowerst-font">73</div> <%--일반글--%>
                                    </div>
                                     <div class="notice_Title_Area">
                                        <div class="notice_Title lowerst-font">
                                            <span class="material-icons">https</span>
                                            <span>문의 드립니다.</span>    
                                        </div>
                                    </div>
                                    <div class="notice_Writer_Area">
                                        <div class="notice_Writer lowerst-font">관리자</div>
                                    </div>
                           
                                    <div class="notice_Created_Date_Area">
                                      <div class="notice_Created_Date lowerst-font">2023.06.01</div>
                                    </div>

                                    <div class="notice_Created_Answer_Area">
                                        <div class="notice_Created_Answer lowerst-font">답변대기</div>
                                    </div>
                                </div>
                                <%--공지사항 일반글3 --%>
                                <div class="notice_Content">
                                    <div class="notice_Number_Area">
                                        <div class="notice_Number lowerst-font">72</div> <%--일반글--%>
                                    </div>
                                     <div class="notice_Title_Area">
                                        <div class="notice_Title lowerst-font">
                                            <span class="material-icons">https</span>
                                            <span>문의 드립니다.</span>    
                                        </div>
                                    </div>
                                    <div class="notice_Writer_Area">
                                        <div class="notice_Writer lowerst-font">관리자</div>
                                    </div>
                           
                                    <div class="notice_Created_Date_Area">
                                      <div class="notice_Created_Date lowerst-font">2023.06.01</div>
                                    </div>

                                    <div class="notice_Created_Answer_Area">
                                        <div class="notice_Created_Answer lowerst-font">답변대기</div>
                                    </div>
                                </div>
                                <%--공지사항 일반글4 --%>
                                <div class="notice_Content">
                                    <div class="notice_Number_Area">
                                        <div class="notice_Number lowerst-font">71</div> <%--일반글--%>
                                    </div>
                                     <div class="notice_Title_Area">
                                        <div class="notice_Title lowerst-font">
                                            <span class="material-icons">https</span>
                                            <span>문의 드립니다.</span>    
                                        </div>
                                    </div>
                                    <div class="notice_Writer_Area">
                                        <div class="notice_Writer lowerst-font">관리자</div>
                                    </div>
                           
                                    <div class="notice_Created_Date_Area">
                                      <div class="notice_Created_Date lowerst-font">2023.06.01</div>
                                    </div>

                                    <div class="notice_Created_Answer_Area">
                                        <div class="notice_Created_Answer lowerst-font">답변대기</div>
                                    </div>
                                </div>
                                <%--공지사항 일반글5 --%>
                                <div class="notice_Content">
                                    <div class="notice_Number_Area">
                                        <div class="notice_Number lowerst-font">70</div> <%--일반글--%>
                                    </div>
                                     <div class="notice_Title_Area">
                                        <div class="notice_Title lowerst-font">
                                            <span class="material-icons">https</span>
                                            <span>문의 드립니다.</span>    
                                        </div>
                                    </div>
                                    <div class="notice_Writer_Area">
                                        <div class="notice_Writer lowerst-font">관리자</div>
                                    </div>
                           
                                    <div class="notice_Created_Date_Area">
                                      <div class="notice_Created_Date lowerst-font">2023.06.01</div>
                                    </div>

                                    <div class="notice_Created_Answer_Area">
                                        <div class="notice_Created_Answer lowerst-font">답변대기</div>
                                    </div>
                                </div>
                                <%--공지사항 일반글6 --%>
                                <div class="notice_Content">
                                    <div class="notice_Number_Area">
                                        <div class="notice_Number lowerst-font">69</div> <%--일반글--%>
                                    </div>
                                     <div class="notice_Title_Area">
                                        <div class="notice_Title lowerst-font">
                                            <span class="material-icons">https</span>
                                            <span>문의 드립니다.</span>    
                                        </div>
                                    </div>
                                    <div class="notice_Writer_Area">
                                        <div class="notice_Writer lowerst-font">관리자</div>
                                    </div>
                           
                                    <div class="notice_Created_Date_Area">
                                      <div class="notice_Created_Date lowerst-font">2023.06.01</div>
                                    </div>

                                    <div class="notice_Created_Answer_Area">
                                        <div class="notice_Created_Answer lowerst-font">답변대기</div>
                                    </div>
                                </div>
                                <%--공지사항 일반글7 --%>
                                <div class="notice_Content">
                                    <div class="notice_Number_Area">
                                        <div class="notice_Number lowerst-font">68</div> <%--일반글--%>
                                    </div>
                                     <div class="notice_Title_Area">
                                        <div class="notice_Title lowerst-font">
                                            <span class="material-icons">https</span>
                                            <span>문의 드립니다.</span>    
                                        </div>
                                    </div>
                                    <div class="notice_Writer_Area">
                                        <div class="notice_Writer lowerst-font">관리자</div>
                                    </div>
                           
                                    <div class="notice_Created_Date_Area">
                                      <div class="notice_Created_Date lowerst-font">2023.06.01</div>
                                    </div>

                                    <div class="notice_Created_Answer_Area">
                                        <div class="notice_Created_Answer lowerst-font">답변대기</div>
                                    </div>
                                </div>

                            </div>
                        </div>
                     </div>
                 </div>
            </div>
        </div>
    </div>
</asp:Content>
