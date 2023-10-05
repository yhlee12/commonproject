<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_PRODUCT_DETAIL.aspx.cs" Inherits="drKid.Source.m.my.M_M_PRODUCT_DETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <head>
        <meta property="og:type" content="product"/>
        <meta property="og:image" content="<%=shareIMG%>"/>
        <meta property="og:description" content="<%=PROD_TABLE.Rows[0]["PRODUCT_NM"] %>"/>
        <meta property="og:url" content="<%=shareURL%>"/>
    </head>
    <style>
        #m_moblie_wrap {
            padding: 0;
        }
        .m_bottom {
            z-index: 997;
        }
        .content_wrap {
        }

        .img_box {
            height: 17rem;
            max-height: 18rem;
        }
        .img_box > img {
            width:100%;
            height:100%;
            object-fit:cover;
        }

        .text_box {
            padding: 0 15px;
        }

        .relation_Item_Price_Info_Area {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .relation_Item_Price_Info  {
            border: 1px solid var(--m_mono_color);
            border-radius: 6px;
            padding: 0 0.2rem;
        }

        .sub_txt {
            color:#9F9F9F;
        }

        /*구매하기 버튼*/
        .bottom_button {
            position: fixed;
            bottom: 0;
            z-index: 998;
            width: 100%;
            background: #fff;
            padding: 0.5rem 0;
        }
        .button {
            display: flex;
            justify-content: center;
            gap: 1rem;
        }

        .button_content:first-child {
            width: 10rem;
            color:#fff;
            background:var(--main_color);
            border: 1px solid var(--main_color);
            padding: 0.5rem 1rem;

            font-weight:500;
            text-align: center;
            border-radius: 8px;
        }
        .button_content:nth-child(2) {
            display: flex;
            align-items: center;
            padding: 0 30px;
            border: 1px solid var(--main_color);
            border-radius: 8px;
        }
        /*구매하기 버튼*/


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
            font-weight: 700;
            /*padding: 20px 0;*/
        }

        .main_txt > span:last-child {
            border-radius: 50%;
            border: 1px solid var(--main_color);
            color: var(--main_color);
            font-size: 0.7rem;
            padding: 0.3rem;
            cursor : pointer;
        }

        .star_wrap {
            display: flex;
            /* gap: 10px; */
            /* margin-bottom: 40px; */
            padding: 0.5rem 15px;
            justify-content: end;
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
            padding-top: 0.5rem
        }

        .price_content_font {
            font-size: 14px;
            font-weight:300;
            min-width: 25%;
            line-height: 1.3;
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
            /*padding: 100px 0;*/ 
        }
        .detail_wrap_inner  {
            padding: 0 15px;
        }

        .detail_boxes {
            display:grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 1rem;
        }
        .detail_box {
            text-align:center;
            /*border-bottom: 2px solid #ccc;*/
        } 

        .detail_box_child {

        }

        .detail_box_gap {
            padding-top: 250px;
        }

        .detail_img_wrap_box {
            padding: 0 15px;
        }

        .detail_img_wrap_box > img {
            width: 100%;
            height:100%;
            object-fit:cover;
        }
        .deli {
            /*margin-top: 30px;*/
            padding: 1rem 15px;
            border: 1px solid #E1E1E1;
            border-top:none;
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
            /*display: flex;*/
        }
       
        .product {
            border-right: 1px solid #E1E1E1;
            padding: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .product2 {
            border-right: 1px solid #E1E1E1;
            padding: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .product_txt {
            /*padding-bottom: 10px;*/
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
      
        .review_product {
            padding-top: 40px;
        }

        .review_product_wrap_inner {
            display:grid;
            grid-template-columns: repeat(3, 1fr);
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
            padding: 0 3rem;
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
            padding: 1rem 15px 0;
        }
        .review_write_wrap {
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 1rem 0;
            border: 1px solid #ccc;
            border-right: none;
            border-left: none;
        }

        .review_write_txt {
            padding-bottom: 10px;
        }

        .review_write_botton {
            width:125px;
            padding: 5px 15px;
            border: 1px solid var(--main_color);
            color: var(--main_color);
            margin: auto;
            border-radius: 7px;
            font-size: 14px;
            font-weight: 500;
            text-align: center;
        }

        .notice_List_Area_title {
            padding: 2rem 15px 1rem;
        }

        .question > span:first-child {
            font-weight:500
        }

        .question > span:nth-child(2) {
            color: #BBBBBB;
        }

        .question_product_write {
            padding: 0.2rem 1rem;
            border: 1px solid var(--main_color);
            color: var(--main_color);
            cursor: pointer;
            font-weight: 500;
        }

        .notice_List_Area_title_wrap_inner {
            display: flex;
            align-items:center;
            justify-content: space-between;
        }

        .notice_List_Area {
            padding: 0 15px 1rem;
            
        }
        .notice_List {
              border-top: 1px solid var(--m_mono_color);
              margin: 0 auto;
        }
        .notice_Content {           
            border-bottom: 1px solid var(--m_mono_color);
            padding: 0.5rem 0;
        }
        .notice_Content_Top {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .notice_Content_Bottom {
            display: flex;
            align-items: center;
            gap: 0.5rem;
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
            /*width:60%;*/
        }
        .notice_Title {
            font-weight:500;
            display: flex;
            align-items: center;
            gap: 0.2rem;
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
            border: 1px solid var(--m_mono_color);
            color: var(--m_mono_color);
            padding: 0 0.3rem;
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
            padding-top: 10px;
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
            padding: 0 15px 1rem 0;
            gap: 1rem;
        }

        .bottom_price_wrap_inner > .price > .price_one > span:first-child {
           font-size:1.2rem;
           font-weight: 700;
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

        /*.active {
          background-color: #717171;
        }*/

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
        .RatingArea_content1 {
            width: 100%;
        }

        /*.RatingArea_content_discount {
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
        }*/

        .RatingArea_content1 > .block-example {
            min-width:75%;
            height: 2rem;
        }

        .RatingArea_content1 > .block-example > .drkid-select-div{
            border-radius: 5px;
            display: flex;
            align-items: center;
        }

        .RatingArea_content1 > .block-example > .drkid-select-div > ul > li{
            /*padding-left: 20px;*/
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
            height: 2rem;
        }

        .option > .all_option_box > .second_option_box > .block-example {
            height: 50px;
            margin-bottom: 20px;
        }

        .option > .all_option_box > .first_option_box > .block-example > .drkid-select-div {
            border-radius: 5px;
            display: flex;
            align-items: center;
            /*padding-left: 20px;*/
        }

        /*.option > .all_option_box > .second_option_box > .block-example > .drkid-select-div {
            border-radius: 5px;
            display: flex;
            align-items: center;
            padding-left: 20px;
        }*/
        .drkid-select-div {
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
            /*display:flex;
            align-items:center;
            gap: 5px;
            border:1px solid #F2F2F2;
            padding: 10px 20px;*/
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
    /*<%-- 네이버 블로그 이미지 아이콘 크기 이동규 .url_box > input의 width 도 290으로 변경--%>*/         
        .naver_blog_icon{
            width:25px;
            height:25px;
        }
        /*HJH*/
        .image_for_class {
            object-fit: cover;
        }
        table {
            width: 100%;
        }

        .template {
            display: flex;
            justify-content: center;
            /*padding: 30px;
            flex-wrap: wrap;
            gap: 20px 0px;*/
        }
        .template p {
            word-wrap: break-word;
        }
        .template > p {
            display: none;
        }
        .delivery_price_Wrap {
            display: flex;
            gap: 0px 15px;
        }
        .delivery_price > span:last-child {
            font-weight: 500;
        }
        .AutoRate_OptionArea {
            display: none;
            width: 100%;
        }
        .Prod_OptionArea {
            /*display: none;*/
            width: 100%;
        }
        .Prod_Option {
            border-radius: 8px;
            height: 2rem;
        }
        .empty {
            min-width: 25%;
        }
        .margin_bottom10 {
            margin-bottom: 0.5rem;
        }
        .AutoRate_Option {
            height: 2rem;
            /*margin-bottom: 20px;*/
            min-width:75%;
            border-radius: 7px;
        }
        .AutoRate_Option_Wrap {
            width: 100%;
            display: flex;
        }
        .empty_20P {
            width:25%;
        }
        .view_AutoRate {
            color: var(--main_color);
            font-weight: 700;
        }
        .template_Here {
             margin-bottom: 20px;
        }
        .delivery2 {
            display:flex;
            align-items: center;
        }
        .delivery_Active {
            padding: 15px 0;
            border-bottom: 1px solid;
        }
        .tem_clear_Area {
            cursor:pointer;
        }
        .bottom_price_wrap_inner2 {
            display:none;
        }
        .best_Flag {
            background: var(--main_color);
            border-radius: 6px;
            color: #ffffff;
            width: 48px;
            text-align: center;
            margin-top: 10px;
        }
        .review_product_content {
            cursor:pointer;
        }
        /*모달*/
        .overlay {
            position: fixed;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 50;
            display:none;
        }
        .img_review_wrap_inner {
            width:1000px;
            background-color: #fff;
            position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
        }

        .img_wrap_1 {
            display: flex;
            gap: 20px;
            padding: 0 20px 30px
        }

        .img_wrap_2 {
            display: flex;
            gap: 20px;
            padding: 0 20px 30px;
            height: 650px;
        }

        .img_wrap_clear {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px;
        }

        .img_wrap_clear > span {
            display: block;
            padding: 10px;
            font-size: 30px;
            cursor:pointer;
        }

        .left_img,
        .right_wrap {
            width:50%
        }

        .img_bottom_img {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 10px 0 20px;
        }

        .img_bottom_img > .img_content {
            width: 70px;
            height: 70px;
            cursor:pointer;
        }

        .right_wrap,
        .right_wrap_2 {
            border-bottom: 1px solid #cacaca;
        }

        .right_wrap > .img,
        .right_wrap_2 > .img {
            display: flex;
            align-items:center;
            gap: 10px;
        }

        .right_wrap > .img > .product {
            width: 55px;
            height:55px;
        }

        .right_wrap_2 > .img > .product {
            width: 55px;
            height:55px;
        }

        .product_img_txt > span {
            display: block;
        }

        .product_img_txt > span:first-child {
            font-size:14px;
            color:#9F9F9F;
        }

        .content_star_wrap {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 0;
            margin: 20px 0;
            border-top: 1px solid #cacaca;
            border-bottom: 1px solid #cacaca;
        }
        .content_star_wrap_txt {
            display: flex;
            gap: 0px 5px;
        }

        .content_star_wrap_txt,
        .content_star_wrap_right {
            font-size:14px;
            color:#BBBBBB;
        }

        .right_wrap_txt_first {
            padding-bottom: 15px;
        }

        .right_wrap_txt_first > p {
            font-size: 16px;
            color:#262626;
            font-weight:600;
        }

        .right_wrap_txt_second > p {
            font-size:14px;
            color:#4E4E4E;
        }

        .content_star_wrap_left {
            display: flex;
            gap: 10px;
        }
        .modalClose_Btn {
            cursor:pointer;
        }
        #hidden-field {
            display:none;
        }
        .mainImg {
            width: 470px;
            height: 470px;
        }
        .right_wrap_txt_second {
            overflow-y: auto;
            height: 400px;
        }
        .modal_Title {
            font-weight:600;
        }
        .list_HeaderUi {
            color: #BBBBBB;
            cursor:pointer;
        }
        .hearder_Active {
            font-weight: 700;
            color:black;
        }
         .search_Wrap {
            width: 490px;
            margin: 0 auto;
            display: flex;
            align-items: center;
        }
        input{
            height: 50px;
            width: 100%;
            padding: 10px 20px;
        }
        .search_Icon_Wrap {
            position: relative;
            top: 4px;
            right: 41px;
            color: #828282;
            cursor: pointer;
        }
        .show_review {
            cursor:pointer;
        }
        /*더보기*/
        .more_Btn_Area,.more_Btn_Area2,.list_Padding {
            padding: 50px;
        }
       
        /*공유 모달*/
        .more_Btn {
            width: 120px;
            text-align: center;
            padding: 10px;
            color: #ffffff;
            border-radius: 8px;
            cursor: pointer;
            margin: 0 auto;
        }
        .de2_content,
        .de3_content,
        .de4_content {
            display: none;
        }

        .de_active {
            color:var(--main_color);
            border-bottom: 2px solid var(--main_color);
        }

        .container > .btn {
          margin: 60px;
          padding: 20px 40px;
          font-size: 30px;
          border-radius: 40px;
        }

        .Modal_background{
          width: 100%;
          height: 100%;
          display: none;
          z-index: 500;
          position: fixed;
          top: 0;
          left: 0;
          background-color: rgba(0,0,0,0.5);
        }

        .modal {
            background: #fff;
            width: 100%;
            margin: 0;
            padding: 0;
            transition: all 600ms cubic-bezier(0.86, 0, 0.07, 1);
            top: 100%;
            left: 0;
            position: fixed;
            z-index: 999;
            opacity: 0;
        }

        .header {
            padding:0 215x;
            font: 300 24px Lato;
            position: relative;
            display: flex;
            justify-content: space-between;
            margin: 0 20px;
            }


        .body {
            /*padding: 0 20px 20px 20px;*/
            font: 300 16px Lato;
            position: relative;
            display: flex;
            justify-content: space-between;
        }

        .container.modal-open .modal {
            position: fixed;
            top: auto;
            bottom: 0%;
            opacity :1;
            transition: opacity 1s;

        }

        .Title_Share{
          font-size: 16px;
          font-weight: bold;
          line-height: 48px;
        }

        .icon_wrep{
          /*margin: 0 20px;*/
          width: 100%;
          position: relative;
          display: flex;
          justify-content:space-around;
          align-items: center;
        }

        .Sns_BTN{
          width: 50px;
          height: 50px;
        }

        .Sns_Share_container{
          width: 80px;
          height: 80px;
          display: flex;
          justify-content: center;
          align-items: center;
        }

        .share_guide{
          font-size: 8px;
          text-align: center;
        }   
        .naver_blog_icon{
           width:50px;
           height:50px;
        }

        .t2l-alert-inner-wraper {
            min-width: 300px;
            z-index:999;
        }
        @media screen and (max-width:390px) {
            .delivery_price_Wrap {
                gap: 0px 0.4rem;
            }
            .padding-left {
                padding-left: 0.5rem;
            }
        }
        @media screen and (max-width:375px) {
            .delivery_price_Wrap {
                gap: 0px 0.2rem;
            }
            .padding-left {
                padding-left: 0.2rem;
            }
        }
        @media screen and (max-width:320px) {
            .delivery_price_Wrap {
                gap: 0px 0.2rem;
            }
            .padding-left {
                padding-left: 0.2rem;
            }
        }
    </style>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
    <script>
        var $PRODUCT_SID = '<%=PRODUCT_SID%>';
        var $PROD_TITLE = '<%=PROD_TITLE%>';
        var $accessMobile = '<%=accessMobile%>';
        var $AVG_SCORE = '<%=AVG_SCORE%>';
        var $USER_ID = '<%=baseUser.userId%>';
        let _offset = 0; //일반리뷰 더보기 버튼 관련
        let _offset2 = 0; //베스트리뷰 더보기 버튼 관련
        let _offset3 = 0; //상품문의 더보기 버튼 관련
        //var option_disabled_arry= [];
        let option_disabled_value;
        var OPTION_SID_Duplication_LIST =[]      
        let _test;
        //1회 구매 라디오 선택 시 모든 옵션, 정기배송 옵션 선택 시 정기배송 옵션만 option에 보이도록 하는 함수
        //1회 구매, 정기배송 라디오 버튼 클릭 시 옵션 제어 
        function change_OptionType(className,isAutoRate)
        {
            if(isAutoRate){
                $('#prod_Option_Select option.' + className).each(function() {
                    // 각 옵션의 정보 출력
                    var optionValue = $(this).val();
                    var optionClass = $(this).attr('class');
                    var optionText = $(this).text().trim();
                    $(".Prod_Option").parent().find(`.drkid-select-ul li span[data-text='${optionText}']`).parent().hide();
                });
                $('#prod_Option_Select option.AUTO_FLAG_Y_OPTION').each(function() {
                    var optionText2 = $(this).text().trim();
                    var optiondataAuto = $(this).data('auto').trim();
                    $(this).text(optiondataAuto);
                    $(".Prod_Option").parent().find(`.drkid-select-ul li span[data-text='${optionText2}']`).text(optiondataAuto);
                    $(".Prod_Option").parent().find(`.drkid-select-ul li span[data-text='${optionText2}']`).attr('data-text',optiondataAuto);
                });
            }
            else{
                $('#prod_Option_Select option.AUTO_FLAG_Y_OPTION').each(function() {
                    var optiondataOrigin = $(this).data('origin').trim();
                    var optionText3 = $(this).text().trim();
                    console.log("optionText3",optionText3)
                    $(this).text(optiondataOrigin);
                    $(".Prod_Option").parent().find(`.drkid-select-ul li span[data-text='${optionText3}']`).text(optiondataOrigin);
                    $(".Prod_Option").parent().find(`.drkid-select-ul li span[data-text='${optionText3}']`).attr('data-text',optiondataOrigin);
                });
            }
        }
        //SID 중복체크
        function OPTION_SID_Duplicate_Check(sid)
        {
            var flag = true;
            for (var i=0; i<OPTION_SID_Duplication_LIST.length; i++){
                if(OPTION_SID_Duplication_LIST[i] == sid)
                {
                    console.log("중복")
                    flag = false;
                }
            }
            return flag;
        }
        //옵션 값 계산 (1회 구매용)
        function option_Calc_Rate(buytype,calcType,calcRate){
            var totalRate;
            //정기 구매
            if(buytype)
            {
                var rate = $(".total_Rate2").data('rate');
                if (/,/.test(rate)) {
                    rate = rate.replace(/,/g,"");
                }
                rate = rate * 1;
                calcRate = calcRate * 1
                if(calcType == "-")
                {
                    totalRate = rate - calcRate;
                }
                else if(calcType == "+")
                {
                    totalRate = rate + calcRate;
                }
            }
                //1회 구매
            else{
                var rate = $(".total_Rate1").data('rate');
                if (/,/.test(rate)) {
                    rate = rate.replace(/,/g,"");
                }
                rate = rate * 1;
                calcRate = calcRate * 1
                if(calcType == "-")
                {
                    totalRate = rate - calcRate;
                }
                else if(calcType == "+")
                {
                    totalRate = rate + calcRate;
                }
            }
            return totalRate;
        }
        //1회 구매 총 금액 계산
        function get_Final_Price()
        {
            var final_Price = 0;
            var value = 0;
            $(".option_product").each(function(){
                value = parseFloat($(this).find(".option_Total_Rate").text().replace(/,/g, ''));
                console.log("value:",value)
                final_Price = final_Price + value;
            });
         
            $(".total_Price").text(final_Price.toLocaleString());
            //$(".total_Price").text(final_Price);
            return final_Price;
        }
        function modalData_ClearAndSetting(target)
        {
            //*****CLEAR
            $("#img_change_content_M").empty();//대표이미지 
            $(".product2").empty();//우측 상단 대표이미지 
            $("#img_change").empty();//대표 포함 모든 리뷰 이미지
            //*****SETTING
            ///메인 이미지 관련 세팅
            var _mainImg_Path =  $(target).find(".hidden_Review_Field input[name='H_REVIEW_MAIN_IMAGE']").val();
            var _mainImg = `<img src="/Source/DRKID_EDMS/${_mainImg_Path}"/>`;
            var _prodImg;
            $('#img_change_content_M').append(_mainImg);
            //메인,서브 모든 이미지 정보 세팅
            var _all_ReviewImg_List = [];
            var _all_ReviewImgs = $(target).find(".hidden_Review_Field input[name='H_ALL_REVIEW_IMAGE']").val();
            console.log(_all_ReviewImgs)
            if(_all_ReviewImgs.length != null && _all_ReviewImgs.length != undefined)
            {
                _all_ReviewImg_List.push(_all_ReviewImgs);
                _all_ReviewImg_List = _all_ReviewImg_List[0].split(',');
            }
            var _allImg;
            var _allImg_Path;
            if(_all_ReviewImg_List[0] == null || _all_ReviewImg_List[0] == ""){
                console.log("_all_ReviewImg_List 없음")
                var _mainImg_Src = $("#img_change_content_M img").attr("src");
                console.log("_mainImg_Src:",_mainImg_Src)
                _allImg= $(`<div class="img_content">
                                <img src="${_mainImg_Src}">
                             </div>`);
                $("#img_change").append(_allImg);
            }
            else{
                for (var i = 0; i < _all_ReviewImg_List.length; i++) {
                    _allImg= $(`<div class="img_content">
                                <img src="/Source/DRKID_EDMS/${_all_ReviewImg_List[i]}">
                             </div>`);
                    $("#img_change").append(_allImg);
                    //요소 추가 후 이벤트 바인딩
                    _allImg.on('click', function() {
                        var _newSrc = $(this).find('img').attr('src');
                        $("#img_change_content_M img").attr("src", _newSrc);
                    });
                }
            }
            //상품명, 카테고리세팅
            var _H_PRODUCT_NM = $(target).find(".hidden_Review_Field input[name='H_PRODUCT_NM']").val();
            $(".modal_ProdNM").text(_H_PRODUCT_NM);
            var _H_GROUP_CATEGORY_NAME = $(target).find(".hidden_Review_Field input[name='H_GROUP_CATEGORY_NAME']").val();
            $(".modal_ProdCategory").text(_H_GROUP_CATEGORY_NAME);
            //리뷰정보 세팅
            var _H_PRODUCT_SCORE = $(target).find(".hidden_Review_Field input[name='H_PRODUCT_SCORE']").val() * 1;
            var _star = `<div class="star_img">
                            <img src="/Source/client/image/star_icon.svg" alt="star_icon">
                        </div>`;
            $(".modal_ProdScore").empty();
            for(j=0;j<_H_PRODUCT_SCORE;j++)
            {
                $(".modal_ProdScore").append(_star);
            }
            var _H_POST_USER_ID = $(target).find(".hidden_Review_Field input[name='H_POST_USER_ID']").val();
            $(".modal_PostUserId").text(_H_POST_USER_ID);
            var id = $(".modal_PostUserId").text();
            var id_Length = id.length;
            var cut_Length = Math.floor(id_Length / 2);  
            $(".modal_PostUserId").text(id);

            var _H_POST_TIME = $(target).find(".hidden_Review_Field input[name='H_POST_TIME']").val();
            $(".modal_PostTime").text(_H_POST_TIME);
            var _H_REVIEW_TITLE = $(target).find(".hidden_Review_Field input[name='H_REVIEW_TITLE']").val();
            $(".modal_ReviewTitle").text(_H_REVIEW_TITLE);
            var _H_REVIEW_BODY = $(target).find(".hidden_Review_Field input[name='H_REVIEW_BODY']").val();
            $(".modal_ReviewBody").text(_H_REVIEW_BODY);
            $('#REVIEW_MODAL').show();
        }
        //상품문의 글쓰기 버튼 클릭 시 회원,비회원에 따라 작성자 세팅
        function PROD_HD_MODAL_SETTING(){
            if($USER_ID.length > 0){
                $('input[name="BOARD_WRITE_NM"]').val($USER_ID);
                $('input[name="BOARD_WRITE_NM"]').prop('readOnly', true);
                $('input[name="BOARD_WRITE_NM"]').addClass('readOnly');
            }
        }
        //상품 문의 저장 전 밸리데이션 체크
        function prodHdModal_SaveCheck()
        {
            var errorFlag = false;
            var errorType = "";

            var _title = $('input[name="TITLE"]').val().trim();
            var _writer = $('input[name="BOARD_WRITE_NM"]').val().trim();
            if($USER_ID.length == 0){
                var _phone = $('input[name="BOARD_WRITE_SID"]').val().trim();
            }
            var _detail = $('textarea[name="DETAIL"]').val().trim();
            var _passFlag = $("#pass_flag").val();
            //제목체크
            if(_title.length == 0){
                errorFlag = true;
                errorType = "TITLE";
            }
                //작성자체크
            else if(_writer.length == 0){
                errorFlag = true;
                errorType = "WRITER";
            }
                //전화번호 체크(비회원일때만)
            else if( $USER_ID == "" || $USER_ID == null){
                if(_phone.length == 0){
                    errorFlag = true;
                    errorType = "PHONE";
                } 
            }
                //문의내용 체크
            else if(_detail.length == 0){
                errorFlag = true;
                errorType = "DETAIL";
            }
            else if(_passFlag != "Y"){
                errorFlag = true;
                errorType = "PW";
            }
            return [errorFlag,errorType];
        }
        function PROD_HD_AJAX_CLICK(target){
            var _BOARD_SID  = $(target).attr('id');
            $("#BOARD_SID").val(_BOARD_SID);
              
            if($(target).find('.material-icons').length == 1){
                $("#PROD_HD_PW_MODAL").show();
            }
        }
        $(document).ready(function () {
            $(".AutoRate_Option_Wrap1").find(".drkid-select-ul").css("z-index","9");
            $(".AutoRate_Option_Wrap2").find(".drkid-select-ul").css("z-index","8");
            //user_Discount_Rate : 유저타입에 해당하는 유저등급별 할인된 총 금액
            var user_Discount_Rate = $("#user_gradeDiscount option:selected").val();
            $(".total_Rate1").text(user_Discount_Rate);//등급별 할인가격을 판매가에 표시
            $(".total_Price").text(user_Discount_Rate);//등급별 할인가격을 총 금액에 표시
            $(".total_Rate1").attr('data-rate', user_Discount_Rate);
            var auto_Discount_Rate = $(".view_AutoRate").text();
            //상품 옵션 선택 시 총 금액 계산 후 표시
            //디폴트는 괜찮은데 다른 옵션 선택하면 2번탐 고칠것 0917
            $('#prod_Option_Select').change(function () {
                var option_Info= [];
                var select_value = $(this).val();
                var selectedOption = $(this).find("option:selected");
                var selectedOption_Name = selectedOption.text().trim();
                console.log("selectedOption_Name",selectedOption_Name)
                var selectedOption_Type = selectedOption.data('type');
                var selectedOption_CLASS = selectedOption.attr('class');
                var selected_AUTO_RATE_NUMBER = $("#AUTO_RATE_NUMBER").find("option:selected").val(); // 정기배송 횟수
                var selected_AUTO_RATE_DATE = $("#AUTO_RATE_DATE").find("option:selected").val(); //정기배송 날짜
                var buytype = $("input[name='AUTO_FLAG']:checked").val() == "Y" ? true : false; // 정기배송이면 true , 1회 구매면 false
                // auto_rate_available : 정기배송 횟수와 날짜를 선택한 상태면 true
                var auto_rate_available = selected_AUTO_RATE_NUMBER.length > 0 && selected_AUTO_RATE_DATE.length > 0 && buytype ? true : false;
                var isCommonOption = select_value.length > 0 && select_value != "default" && selectedOption_CLASS == "COMMON_OPTION" ? true:false;
                ////////////////
                //옵션 처리
                if(select_value.length > 0 && select_value != "default"){
                    option_Info.push(select_value);
                    option_Info = option_Info[0].split(',');
                    //이미 추가한 옵션이 아니면 템플릿 추가 
                    var option_calcType = option_Info[0];
                    var option_calcRate = option_Info[1]; 
                    var option_sid = option_Info[2]; //옵션의 SID
                    var option_AutoRate = option_Info[3]; // 옵션 정기구매가
                    var _template;
                    var isPass_DuplicateSid = false;
                    //이미 추가한 옵션이 아니면
                    if(isCommonOption)
                    {
                        option_sid = select_value;
                        if(OPTION_SID_Duplicate_Check(select_value)) //기본옵션에서 select_value 는 상품 MASTER SID
                        {
                            isPass_DuplicateSid = true;
                            console.log("기본옵션 중복 SID 체크 성공")
                            if(!buytype)
                            {
                                OPTION_SID_Duplication_LIST.push(select_value);// 옵션sid를 중복체크 배열에 push
                            }
                            else{
                                if(auto_rate_available){
                                    OPTION_SID_Duplication_LIST.push(select_value);// 옵션sid를 중복체크 배열에 push
                                }
                            }
                        }
                    }
                    else
                    {
                        if(OPTION_SID_Duplicate_Check(option_sid))
                        {
                            isPass_DuplicateSid = true;
                            console.log("일반옵션 중복 SID 체크 성공")
                            if(!buytype)
                            {
                                OPTION_SID_Duplication_LIST.push(option_sid);// 옵션sid를 중복체크 배열에 push
                                console.log("OPTION_SID_Duplication_LIST:", OPTION_SID_Duplication_LIST)
                            }
                            else{
                                if(auto_rate_available){
                                    OPTION_SID_Duplication_LIST.push(option_sid);// 옵션sid를 중복체크 배열에 push
                                    console.log("OPTION_SID_Duplication_LIST:", OPTION_SID_Duplication_LIST)
                                }
                            }
                        }
                    }
                    if(isPass_DuplicateSid){
                        console.log("중복 SID 체크 성공 후 템플릿 로직")
                        //1회 구매 라디오 선택 상태일때 옵션 클릭 시 처리
               
                        //1회 구매 템플릿
                        _template = $(`<div class="option_product" data-sid="${option_sid}">
                                                <input type="hidden" name="PRODUCT_SID" value="${option_sid}"/>
                                                <div class="option_product_wrap">
                                                    <div class="option_product_wrap_inner">
                                                        <div class="option_product_top">
                                                            <div class="title">
                                                                <span></span>
                                                        </div>
                                                            <div class="tem_clear_Area">
                                                               
                                                            </div>
                                                        </div>
                                                        <div class="option_product_bottom">
                                                            <div class="option_pm">
                                                              
                                                            </div>
                                                            <div class="option_product_bottom_price">
                                                            </div>
                                                        </div>                                                                    
                                                    </div>
                                                </div>
                                            </div>`);
                        //옵션 삭제버튼 이벤트 바인딩 후 추가
                        var _delBtn = $(`<span class="material-icons delete1">clear</span>`);
                        //해당 옵션 템플릿 제거 후 옵션 sid 중복체크 하는 배열에도 해당 sid 제거
                        _delBtn.on("click",function(e) {
                            var del_optionSid = $(e.currentTarget).parents('.option_product').data('sid');
                            $(e.currentTarget).parents('.option_product').remove();
                            for(let i = 0; i < OPTION_SID_Duplication_LIST.length; i++) {
                                if(OPTION_SID_Duplication_LIST[i] == del_optionSid)  {
                                    OPTION_SID_Duplication_LIST.splice(i, 1);
                                    i--;
                                }
                            }
                            //1회 구매인지 정기구매인지 선택상태에 따라 총금액 초기화
                            var option_Template_Count = $(".option_product").length;
                            //정기 구매일 경우
                            if(buytype){
                                if(option_Template_Count == 0){
                                    $(".total_Price").text(auto_Discount_Rate);
                                }
                                else if(option_Template_Count > 0)
                                {
                                    get_Final_Price();
                                }
                            }
                                //1회 구매일 경우 
                            else{
                                if(option_Template_Count == 0){
                                    $(".total_Price").text(user_Discount_Rate);
                                }
                                else if(option_Template_Count > 0)
                                {
                                    get_Final_Price();
                                }
                            }
                        });
                        _template.find('.tem_clear_Area').append(_delBtn);
                        //옵션 타이틀 추가
                        if(isCommonOption){
                            selectedOption_Name = $PROD_TITLE.trim();
                        }
                        else{
                            selectedOption_Name = selectedOption.text().trim();
                        }
                        var _title = `<span>${selectedOption_Name}<span>`;
                        _template.find('.title').append(_title);

                        //옵션 가격 계산
                        var totalRate;
                        //일반옵션일때
                        if(!isCommonOption){
                            if(!buytype){
                                totalRate = option_Calc_Rate(buytype,option_calcType,option_calcRate);
                            }
                            else{
                                totalRate = option_AutoRate * 1;
                            }
                        }
                            //기본옵션일때
                        else{
                            //정기배송일때
                            if(buytype){
                                totalRate = $(".total_Rate2").data('rate');
                                totalRate = totalRate*1;
                            }
                                //1회 구매 일때
                            else{
                                totalRate = $(".total_Rate1").data('rate').replace(/,/g,"");
                                totalRate = totalRate*1;
                            }
                        }
                        var _price = `<span class="option_Total_Rate" data-rate="${totalRate}" >${totalRate.toLocaleString()}</span>
                                        <span>원</span>`;
                        _template.find('.option_product_bottom_price').append(_price);
                        //수량 컨트롤 , 정기배송일때만 필요함
                        if(!buytype)
                        {
                            var _p = $(`<div class="p">
                                    <span class="material-icons">add</span>
                                </div>`);
                            var _value = $(` <span class="value">1</span>`);
                            var _valueHidden = $(` <input type="hidden" name="PRODUCT_QUANTITY" value="1"/>`);
                            var _m = $(`<div class="m">
                                        <span class="material-icons">remove</span>
                                    </div>`);
                            // + 이벤트 바인딩
                            _p.on("click",function(e) {
                                var _option = $(e.currentTarget).parents('.option_product')
                                var quantity = $(e.currentTarget).parent().find('.value').text();
                                quantity = quantity * 1;
                                quantity = quantity+1;
                                $(e.currentTarget).parent().find('.value').text(quantity);
                                $(e.currentTarget).parent().find('input[type="hidden"][name="PRODUCT_QUANTITY"]').val(quantity); //_valueHidden
                                var option_Price = $(_option).find(".option_Total_Rate").data('rate')*1;
                                var add_price = option_Price * quantity;
                                $(_option).find(".option_Total_Rate").text(add_price.toLocaleString());
                                //$(_option).find(".option_Total_Rate").text(add_price);
                                //1회 구매 선택하면 바로 총금액 계산 후 출력
                                if(!buytype){
                                    get_Final_Price();
                                }
                            });
                            // - 이벤트 바인딩 
                            _m.on("click",function(e) {
                                var _option = $(e.currentTarget).parents('.option_product')
                                var quantity = $(e.currentTarget).parent().find('.value').text();
                                quantity = quantity * 1;
                                //옵션 최소수량은 1
                                if(quantity > 1)
                                {
                                    quantity = quantity-1;
                                    $(e.currentTarget).parent().find('.value').text(quantity);
                                    $(e.currentTarget).parent().find('input[type="hidden"][name="PRODUCT_QUANTITY"]').val(quantity)
                                    var option_Price = $(_option).find(".option_Total_Rate").data('rate')*1;
                                    var add_price = option_Price * quantity;
                                    $(_option).find(".option_Total_Rate").text(add_price.toLocaleString());
                                    //$(_option).find(".option_Total_Rate").text(add_price);
                                    //1회 구매 선택하면 바로 총금액 계산 후 출력
                                    if(!buytype){
                                        get_Final_Price();
                                    }
                                }
                            });
                            _template.find('.option_pm').append(_p);
                            _template.find('.option_pm').append(_value);
                            _template.find('.option_pm').append(_valueHidden);
                            _template.find('.option_pm').append(_m);
                        }
                            //정기구매 템플릿
                        else{
                            if(auto_rate_available){ 
                                var _selected_AUTO_RATE_NUMBER = selected_AUTO_RATE_NUMBER;
                                if(_selected_AUTO_RATE_NUMBER == "*"){
                                    _selected_AUTO_RATE_NUMBER = "별도 종료 시 까지"
                                }
                                else{
                                    _selected_AUTO_RATE_NUMBER = _selected_AUTO_RATE_NUMBER+"회";
                                }

                                var _selected_AUTO_RATE_DATE = selected_AUTO_RATE_DATE;
                                var _AUTO_INFO_AREA = $(`<div class="auto_Info_Area">
                                                            <div class="lowerst-font auto_Info1">배송횟수 : ${_selected_AUTO_RATE_NUMBER}</div>
                                                            <input type="hidden" name="AUTO_RATE_NUMNER" value="${selected_AUTO_RATE_NUMBER}"/>
                                                            <div class="lowerst-font auto_Info1">정기배송 날짜 : 매달 ${selected_AUTO_RATE_DATE}일</div>
                                                            <input type="hidden" name="AUTO_RATE_DATE" value="${selected_AUTO_RATE_DATE}"/>
                                                        </div>`);
                                _template.find('.option_pm').removeClass('option_pm').addClass('option_pm_Custom');
                                _template.find('.option_pm_Custom').append(_AUTO_INFO_AREA);
                                //최종 옵션 템플릿 추가
                                $(".template_Here").append(_template);
                                //옵션 템플릿 추가 후 옵션에 맞는 총 금액 출력 , 1회 구매든 정기든.
                                get_Final_Price();
                            }
                            else{
                                _popModal.Alert('', '정기배송 횟수와 정기배송 날짜를 모두 선택해주세요.');
                            }
                        }
                        if(!buytype)
                        {
                            //최종 옵션 템플릿 추가
                            $(".template_Here").append(_template);
                            //옵션 템플릿 추가 후 옵션에 맞는 총 금액 출력 , 1회 구매든 정기든.
                            get_Final_Price();
                        }
                    }
                }
            });

            //옵션 구매방법 라디오버튼
            $('input[name="AUTO_FLAG"]').change(function () {
                //옵션선택 디폴트 세팅
                $(".Prod_Option").parent().find('.drkid-select-div').click();
                $(".Prod_Option").parent().find(`.drkid-select-ul li span[data-values='default']`).parent().click();
                // 템플릿 날려야함 
                $(".template_Here").empty();
                // 옵션 중복체크하던 SID 배열변수도 초기화
                OPTION_SID_Duplication_LIST =[];
                var selectedOption = $('input[name="AUTO_FLAG"]:checked').val();
                var isAutoRate = $("input[name='AUTO_FLAG']:checked").val() == "Y" ? true : false; // 정기배송이면 true , 1회 구매면 false
                if (selectedOption === "N")
                {
                    change_OptionType(className,isAutoRate);
                    $(".total_PriceInfo1").text("총 금액");
                    $(".total_Price").text($(".total_Rate1").data('rate')); 
                    $(".bottom_price_wrap_inner2").hide();
                    $(".AutoRate_OptionArea").hide();
                    //모든 옵션 다 보이게 함
                    $(".Prod_Option").parent().find(`.drkid-select-ul li`).show();
                    // 기본 옵션 제어는 필요
                    //common_Option_Control(false);
                    //판매가 텍스트 다시 정상표시
                    $(".priceArea_content1").css("text-decoration","auto");
                    $("#grade_Discount").show();
                    //정기배송비 비활성
                    $(".delivery2").removeClass('delivery_Active');
                    $(".delivery2").hide();
                    //payment_flag 추가 KTG
                    $("#payment_flag").val("common");
                } 
                    //정기배송 라디오 선택 시
                else if (selectedOption === "Y") 
                {
                    //common_Option_Control(true);
                    $(".AutoRate_OptionArea").css("display", "block");
                    $(".AutoRate_OptionArea").show();
                    //정기배송 옵션만 보이게 함
                    var className = "AUTO_FLAG_N_OPTION";
                    change_OptionType(className,isAutoRate);
                    //판매가 line-through 처리 후 정기구매가 표시
                    $(".priceArea_content1").css("text-decoration","line-through");
                    $("#grade_Discount").hide();
                    //$("#auto_grade_Discount").show();
                    //정기배송비 활성
                    $(".delivery2").addClass('delivery_Active');
                    $(".delivery2").show();
                    //payment_flag 추가 KTG
                    $("#payment_flag").val("bill");
                    //정기배송 횟수와 옵션을 선택하지 않았으면 우선 총 금액 영역에 정기구매가 표시
                    var AUTO_RATE_NUMBER = $("#AUTO_RATE_NUMBER").find("option:selected").val();
                    var prod_Option_Select= $("#prod_Option_Select").find("option:selected").val(); 
                    if(AUTO_RATE_NUMBER == "" && prod_Option_Select == "default"){
                        $(".total_Price").text($(".total_Rate2").data('rate').toLocaleString());
                    }
                } 
            });
            //리뷰 클릭 시 모달 출력
            $(".review_product_content,.total_review_bottom").on('click',function(e){
                modalData_ClearAndSetting(this);
                //$('.overlay').show();
            });
            $(".modalClose_Btn").on('click',function(e){
                $('#REVIEW_MODAL').hide();
            });
            //일반리뷰 더보기 버튼
            $("#commonReview_MoreBtn").on('click',function(e){
                _offset = _offset + 10;
                $.ajax({
                    type: "POST",
                    dataType: "html",
                    url: "/Source/client/member/ajax/C_PRODUCT_REVIEW.aspx",
                    data: { 
                        PRODUCT_SID: "<%=PRODUCT_SID%>",
                        BEST_FLAG: "*",
                        ORDER_TYPE: "ORDER_BY_BEST",
                        REVIEW_TITLE: "",
                        CATEGORY_NAME: "<%=PROD_CATEGORY%>",
                        Gmlw: _offset
                    },
                    success: function (html) {
                        let innerMoreFlag = $(html).find('#more_btn_flag').val();
                        console.log("innerMoreFlag:",innerMoreFlag)
                        console.log("type innerMoreFlag:",typeof(innerMoreFlag))
                        if (innerMoreFlag == "N") {
                            console.log("탐")
                            $(".more_Btn_Area").hide();
                        }
                        else if (innerMoreFlag == "Y") {
                            $('.more_Btn_Area').show();
                        }
                        var innerData = $('<div></div>').html(html);
                        var datasFinde = innerData.find('.total_review_bottom');
                        $(".total_review_bottom_wrap_inner").append(datasFinde);

                        let ajax_totalCount = $(html).find('#totalCount').val()*1;
                        var eachCount=0;
                        $(".total_review_bottom").each(function(){
                            eachCount++;
                        });
                        if(ajax_totalCount == eachCount){
                            $(".more_Btn_Area").hide();
                        }
                    },
                    error: function (jqxhr, status, error) {
                        console.log(jqxhr.statusText + ",  " + status + ",   " + error);
                        console.log(jqxhr.status);
                        console.log(jqxhr.responseText);
                    }
                });
            });
         
            //리뷰 검색 아이콘 클릭
            $(".search_Icon_Wrap").on('click',function(e){
                _offset = 0;
                var order_Value = $(".hearder_Active").data('value');
                $.ajax({
                    type: "POST",
                    dataType: "html",
                    url: "/Source/client/member/ajax/C_PRODUCT_REVIEW.aspx",
                    data: { 
                        PRODUCT_SID: "<%=PRODUCT_SID%>",
                        BEST_FLAG: "*",
                        ORDER_TYPE: order_Value,
                        REVIEW_TITLE: $("input[name='REVIEW_TITLE']").val(),
                        CATEGORY_NAME: "<%=PROD_CATEGORY%>",
                        offset: _offset
                    },
                    success: function (html) {
                        $(".total_review_bottom_wrap_inner").empty();

                        let innerMoreFlag = $(html).find('#more_btn_flag').val();
                        if (innerMoreFlag == "N") {
                            $(".more_Btn_Area").hide();
                        }
                        else if (innerMoreFlag == "Y") {
                            $('.more_Btn_Area').show();
                        }
                         
                        var innerData = $('<div></div>').html(html);
                        var datasFinde = innerData.find('.total_review_bottom');
                        $(".total_review_bottom_wrap_inner").append(datasFinde);

                        let ajax_totalCount = $(html).find('#totalCount').val()*1;
                        var eachCount=0;
                        $(".total_review_bottom").each(function(){
                            eachCount++;
                        });
                        if(ajax_totalCount == eachCount){
                            $(".more_Btn_Area").hide();
                        }
                       
                    },
                    error: function (jqxhr, status, error) {
                        console.log(jqxhr.statusText + ",  " + status + ",   " + error);
                        console.log(jqxhr.status);
                        console.log(jqxhr.responseText);
                    }
                });
            });
            //베스트 리뷰 더보기 버튼
            $("#bestReview_MoreBtn").on('click',function(e){
                _offset2 = _offset2 + 9;
                $.ajax({
                    type: "POST",
                    dataType: "html",
                    url: "/Source/client/member/ajax/C_PRODUCT_BESTREVIEW.aspx",
                    data: { 
                        PRODUCT_SID: "<%=PRODUCT_SID%>",
                        BEST_FLAG: "Y",
                        ORDER_TYPE: "ORDER_BY_POST_TIME",
                        REVIEW_TITLE: "",
                        CATEGORY_NAME: "<%=PROD_CATEGORY%>",
                        offset: _offset2
                    },
                    success: function (html) {
                        console.log("best ajax")
                        let innerMore =  $('<div></div>').html(html);
                        let innerMoreFlag = $(html).find('#more_btn_flag').val();
                        console.log("innerMoreFlag:",innerMoreFlag)
                        console.log("type innerMoreFlag:",typeof(innerMoreFlag))
                        if (innerMoreFlag == "N" || innerMoreFlag == "") {
                            $(".more_Btn_Area2").hide();
                        }
                        else if (innerMoreFlag == "Y") {
                            $('.more_Btn_Area2').show();
                        }
                        var innerData = $('<div></div>').html(html);
                        var datasFinde = innerData.find('.review_product_content');
                        $(".review_product_wrap_inner").append(datasFinde);
                        let ajax_totalCount = $(html).find('#totalCount').val()*1;
                        console.log("ajax_totalCount",ajax_totalCount)
                        var eachCount=0;
                        $(".review_product_content").each(function(){
                            eachCount++;
                        });
                        if(ajax_totalCount == eachCount || ajax_totalCount == 0){
                            $(".more_Btn_Area2").hide();
                        }

                    },
                    error: function (jqxhr, status, error) {
                        console.log(jqxhr.statusText + ",  " + status + ",   " + error);
                        console.log(jqxhr.status);
                        console.log(jqxhr.responseText);
                    }
                });
            });
            //일반리뷰 BEST, 최신순, 별점순 
            $(".list_HeaderUi").on('click',function(e){
                _offset = 0;
                var order_Value = $(e.currentTarget).data('value');
                $(".list_HeaderUi").removeClass('hearder_Active');
                $(e.currentTarget).addClass('hearder_Active');
                $.ajax({
                    type: "POST",
                    dataType: "html",
                    url: "/Source/client/member/ajax/C_PRODUCT_REVIEW.aspx",
                    data: { 
                        PRODUCT_SID: "<%=PRODUCT_SID%>",
                        BEST_FLAG: "*",
                        ORDER_TYPE: order_Value,
                        REVIEW_TITLE: "",
                        CATEGORY_NAME: "<%=PROD_CATEGORY%>",
                        offset: _offset
                    },
                    success: function (html) {
                        $(".total_review_bottom_wrap_inner").empty();

                        let innerMoreFlag = $(html).find('#more_btn_flag').val();
                        if (innerMoreFlag == "N") {
                            $(".more_Btn_Area").hide();
                        }
                        else if (innerMoreFlag == "Y") {
                            $('.more_Btn_Area').show();
                        }
                         
                        var innerData = $('<div></div>').html(html);
                        var datasFinde = innerData.find('.total_review_bottom');
                        $(".total_review_bottom_wrap_inner").append(datasFinde);

                        let ajax_totalCount = $(html).find('#totalCount').val()*1;
                        var eachCount=0;
                        $(".total_review_bottom").each(function(){
                            eachCount++;
                        });
                        if(ajax_totalCount == eachCount){
                            $(".more_Btn_Area").hide();
                        }
                    },
                    error: function (jqxhr, status, error) {
                        console.log(jqxhr.statusText + ",  " + status + ",   " + error);
                        console.log(jqxhr.status);
                        console.log(jqxhr.responseText);
                    }
                });
            });
            $(".review_write_botton").on('click', function() {
                location.href = " /Source/client/MY/C_MY_ORDERLIST.aspx";
               
            });
            //이동규 img zoom on hover 작업 옮김 : 220803 허정현
            $('#zoom').imagezoomsl({
                zoomrange: [2, 2], //가로 세로 분할 수
                zoomspeedanimate: 10,
            });
            $('.show_review').on('click', function() {
                var $testElement = $('.detail-content3');
                console.log($('.content').offset().top)
                var scrollPosition =  $('.content').offset().top; - $testElement.offset().top; 
    
                $('html, body').animate({
                    scrollTop: scrollPosition
                }, 1000); 
            });

            //*****HJH 230907 상품디테일 작업물
            //상품을 클릭해서 디테일로 넘어오지 않으면 차단
            if ($PRODUCT_SID == null || $PRODUCT_SID == "")
            {
                _popModal.Alert('', '비정상적인 접근입니다.');
                if ($accessMobile) {
                    location.href = "/Source/client/main.aspx";
                }
                else {
                    location.href = "/Source/m/m_main.aspx";
                }
            }
            //상품 평점 평균 세팅
            $AVG_SCORE = $AVG_SCORE * 1;
            $("#rateYo").rateYo({
                numStars: 5, // 최대 별 개수
                starWidth: "25px", // 별 하나당 px크기
                rating: $AVG_SCORE,
                normalFill: "#A0A0A0",
                ratedFill: "black",
                spacing:"5px",
                readOnly: true
            });
            $('.mySlides img').click('click',function () {
                var imgSrc = $(this).attr('src');
                $('#img_change_content img').attr('src', imgSrc);
            });
            $("#prev_ProdImg").click('click',function () {
                var mainSrc = $("#zoom").attr('src');
                $(".mySlides img").each(function(index){
                    if($(this).attr('src') == mainSrc){
                        if(index != 0){
                            console.log("찾음")
                            console.log($("#img_change"+index).find('img').attr('src'))
                            var changeSrc = $("#img_change"+index).find('img').attr('src');
                            $("#zoom").attr('src',changeSrc);
                            
                        }
                    }
                });
            });
            $("#next_ProdImg").click('click',function () {
                var mainSrc = $("#zoom").attr('src');
                $(".mySlides img").each(function(index){
                    if($(this).attr('src') == mainSrc){
                        console.log("찾음")
                        console.log($("#img_change"+(index+2)).find('img').attr('src'))
                        var _changeSrc = $("#img_change"+(index+2)).find('img').attr('src');
                        $("#zoom").attr('src',_changeSrc);
                            
                     
                        console.log("index",index)
                    }
                });
            });
            //Cart Add Btn
            $('#cart_btn').on('click', function () {
                let _RequestData = {};
                let _CartKey = $SesstionBusketKey;
                let _bool = false;
                //Check Point
                let _AutoFlag = String($('input[name="AUTO_FLAG"]:checked').val());
                _RequestData["CART_KEY"] = _CartKey;
                if (_AutoFlag == "Y") {
                    //정기결제
                    _RequestData["AUTO_FLAG"] = "Y";
                    _RequestData["PRODUCT_SID"] = new Array();
                    _RequestData["AUTO_RATE_NUMNER"] = new Array();
                    _RequestData["AUTO_RATE_DATE"] = new Array();
                    $('.option_product').each(function (index, item) {
                        _bool = true;
                        _RequestData["PRODUCT_SID"].push($(item).find('input[name="PRODUCT_SID"]').val());
                        _RequestData["AUTO_RATE_NUMNER"].push($(item).find('input[name="AUTO_RATE_NUMNER"]').val());
                        _RequestData["AUTO_RATE_DATE"].push($(item).find('input[name="AUTO_RATE_DATE"]').val());
                    });
                } else {
                    //일반결제
                    _RequestData["AUTO_FLAG"] = "N";
                    _RequestData["PRODUCT_SID"] = new Array();
                    _RequestData["PRODUCT_QUANTITY"] = new Array();
                    $('.option_product').each(function (index, item) {
                        _bool = true;
                        _RequestData["PRODUCT_SID"].push($(item).find('input[name="PRODUCT_SID"]').val());
                        _RequestData["PRODUCT_QUANTITY"].push($(item).find('input[name="PRODUCT_QUANTITY"]').val());
                    });
                }

                if (!_bool) { _popModal.Alert("알림", "하나이상 상품을 선택해주세요."); return false; }
                
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: "/Source/client/member/ajax/C_CART_AJAX.aspx",
                    data: $.param(_RequestData, true),
                    success: function (json) {
                        if (json["O_ERROR_FLAG"][0]["O_ERROR_FLAG"] + '' == 'Y') {
                            _popModal.Alert("알림", json["O_RETURN_MESSAGE"][0]["O_RETURN_MESSAGE"]);
                        } else {
                            _popModal.Alert("알림", "장바구니에 상품이 담겼습니다.");
                        }
                    },
                    error: function (jqxhr, status, error) {
                        console.log(jqxhr.statusText + ",  " + status + ",   " + error);
                        console.log(jqxhr.status);
                        console.log(jqxhr.responseText);
                    }
                });
            });
            $("#show_Prod_HD").on('click', function () {
                PROD_HD_MODAL_SETTING();
                $("#PROD_HD_MODAL").show();
            });
            $("#prodHdModal_CloseBtn1,#prodHdModal_CloseBtn2").on('click', function () {
                $("#PROD_HD_MODAL").hide();
            });
            //비밀번호
            $("#I_PASSWORD").on("input", function () {
                let pass = $("#I_PASSWORD").val();
                let pass_check = $("#I_PASSWORD_CHECK").val();
                if (pass.length >= 4) {
                    $(".pass_no").hide();
                    $(".pass_ok").show();
                    if (pass == pass_check) {
                        $(".check_no").hide();
                        $(".check_ok").show();
                        $("#pass_flag").val('Y');
                    }
                    else {
                        $(".check_no").show();
                        $(".check_ok").hide();
                        $("#pass_flag").val('N');
                    }
                }
            
            })
            //비밀번호 체크
            $("#I_PASSWORD_CHECK").on("input", function () {
                let pass = $("#I_PASSWORD").val();
                let pass_check = $("#I_PASSWORD_CHECK").val();
                if (pass == pass_check && pass.length >= 4) {
                    $(".check_no").hide();
                    $(".check_ok").show();
                    $("#pass_flag").val('Y');
                }
                else {
                    $(".check_no").show();
                    $(".check_ok").hide();
                    $("#pass_flag").val('N');
                }
            });
            if ($("#I_PASSWORD").val() != null || $("#I_PASSWORD").val() == $("#I_PASSWORD_CHECK").val()) {
                $(".pass_no").show();
                $(".pass_ok").hide();
                $(".check_no").show();
                $(".check_ok").hide();
                $("#pass_flag").val('N');
            }
            //상품문의 모달 문의하기 버튼
            $("#prodHdModal_SaveBtn").on("click", function () {
                //result[0] : 에러플래그로 false면 정상, true면 밸리데이션 문제
                //result[1] : 에러타입
                var result = prodHdModal_SaveCheck();
                if(result[0] == true){
                    switch (result[1]) {
                        case "TITLE":
                            _popModal.Alert('알림', '제목을 입력해주세요');
                            break;
                        case "WRITER":
                            _popModal.Alert('알림', '작성자를 입력해주세요');
                            break;
                        case "PHONE":
                            _popModal.Alert('알림', '전화번호를 입력해주세요');
                            break; 
                        case "DETAIL":
                            _popModal.Alert('알림', '문의내용을 입력해주세요');
                            break; 
                        case "PW":
                            _popModal.Alert('알림', '문의글 비밀번호나 비밀번호 확인란을 다시 확인해주세요');
                            break; 
                    }
                }
                else{
                    $("#flag").val("prodHd_Save");
                    $("#form1").submit();  
                }
            });
            //상품문의 클릭
            $(".notice_Content_Wrap").on("click", function () {
                var _BOARD_SID  = $(this).attr('id');
                $("#BOARD_SID").val(_BOARD_SID);
              
                if($(this).find('.material-icons').length == 1){
                    $("#PROD_HD_PW_MODAL").show();
                }
        
            });
            $("#prodHdPWModal_CloseBtn1,#prodHdPWModal_CloseBtn2").on("click", function () {
                $("#PROD_HD_PW_MODAL").hide();
            });
            //상품문의 비밀번호 확인 
            $("#user_enter_btn").on("click", function () {
                var _BOARD_PW = $("#board_password").val();
                var _BOARD_SID =  $("#BOARD_SID").val();
                if(_BOARD_PW != "" && _BOARD_PW != null)
                {
                    $.ajax({
                        type: "POST",
                        dataType: "html",
                        url: "/Source/client/member/ajax/C_PRODUCT_HELPDESK.aspx",
                        data: { 
                            TYPE: "DETAIL",
                            BOARD_SID: _BOARD_SID,
                            BOARD_PASSWORD: _BOARD_PW
                        },
                        success: function (html) {
                            var innerData = $('<div></div>').html(html);
                            var pw_flag = innerData.find('#BOARD_RESULT').val();
                            console.log(pw_flag)
                            console.log(typeof(pw_flag))
                            if(pw_flag == "0"){
                                _popModal.Alert('알림', '비밀번호가 틀렸습니다.');
                            }
                            else if(pw_flag == "1"){
                                $("#PROD_HD_PW_MODAL").hide();
                                $("#board_password").val('');

                                var datasFinde = innerData.find('.Requests');
                                var original_Title = innerData.find('#ORIGINAL_TITLE').val();
                                $("#"+_BOARD_SID).find('.notice_Content').css("cursor", "auto");
                                $("#"+_BOARD_SID).find('.Request_Area').append(datasFinde);
                                $("#"+_BOARD_SID).find('.prod_FAQ_Title').text(original_Title);
                                $("#"+_BOARD_SID).find('.material-icons').remove();
                            }
                        },
                        error: function (jqxhr, status, error) {
                            console.log(jqxhr.statusText + ",  " + status + ",   " + error);
                            console.log(jqxhr.status);
                            console.log(jqxhr.responseText);
                        }
                    });
                }
            });
            $("#prodHD_MoreBtn").on("click", function () {
                _offset3 = _offset3 + 10;
                $.ajax({
                    type: "POST",
                    dataType: "html",
                    url: "/Source/client/member/ajax/C_PRODUCT_HELPDESK.aspx",
                    data: { 
                        TYPE: "MORE",
                        PRODUCT_SID: $PRODUCT_SID,
                        offset: _offset3
                    },
                    success: function (html) {
                        console.log("best ajax")
                        let innerMore =  $('<div></div>').html(html);
                        let innerMoreFlag = $(html).find('#more_btn_flag').val();
                        var innerData = $('<div></div>').html(html);
                        var datasFinde = innerData.find('.PROD_FAQ_TABLE');
                        //ㅈㅎ
                        $(".notice_List").append(datasFinde);
                        let ajax_totalCount = $(innerMore).find('#totalCount').val()*1;
                        console.log("ajax_totalCount",ajax_totalCount)
                        var eachCount=0;
                        $(".notice_Content_Wrap").each(function(){
                            eachCount++;
                        });
                        if(ajax_totalCount == eachCount || ajax_totalCount == 0){
                            $(".more_Btn_Area3").hide();
                        }
                    },
                    error: function (jqxhr, status, error) {
                        console.log(jqxhr.statusText + ",  " + status + ",   " + error);
                        console.log(jqxhr.status);
                        console.log(jqxhr.responseText);
                    }
                });
            });
            
            
        });
    </script>
    <%--클릭시 해당 설명칸으로 이동--%>
    <%--<script>
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
    </script>--%>

    <%--라인, 네이버, 카카오 공유 기능 추가 이동규--%>

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

    <script>
        $(document).on('click', '#share_btn_line', function () {
            <%--공유했을때 보낼 링크 주소를 저장 gotoUrl--%>
            var gotoUrl = 'http://211.43.207.2/Source/client/member/C_PRODUCT_DETAIL.aspx?PRODUCT_SID=' + '<%=PRODUCT_SID%>'; 
            line = 'https://social-plugins.line.me/lineit/share?url=';
            link = line + gotoUrl;
            window.open(link, "_blank", "width=500, height=500"); <%--새창의 크기와 주소--%>
            return false;

        });

        $(document).on('click', '#naver_blog_share', function () {
            var Naver_Blog_Tilte = '닥터키드니 ' + '<%=shareTITLE%>';
            var url = 'http://211.43.207.2/Source/client/member/C_PRODUCT_DETAIL.aspx?PRODUCT_SID=' + '<%=PRODUCT_SID%>';     <%--블로그 공유했을 때 주소--%>
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
        $(document).ready(function () {
            $(document).on('click', '#share_btn_kakao', function () {
                var url = 'http://211.43.207.2' + '<%=shareIMG%>';
                var currentURL = window.location.href;
                Kakao.Share.sendDefault({
                    objectType: 'feed',
                    content: {
                        title: '<%=shareTITLE%>',
                        description: '<%=CATE_TABLE.Rows[0]["CATEGORY_NAME"] %>',
                        imageUrl: url,
                        link: {
                            // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함                       
                            mobileWebUrl: 'http://211.43.207.2/Source/m/my/M_M_PRODUCT_DETAIL.aspx?PRODUCT_SID=' + '<%=PRODUCT_SID%>',
                            webUrl: 'http://211.43.207.2/Source/client/member/C_PRODUCT_DETAIL.aspx?PRODUCT_SID=' + '<%=PRODUCT_SID%>',
                        },
                    },
                    buttons: [
                      {
                          title: '웹으로 보기',
                          link: {
                              mobileWebUrl: 'http://211.43.207.2/Source/m/my/M_M_PRODUCT_DETAIL.aspx?PRODUCT_SID=' + '<%=PRODUCT_SID%>',
                              webUrl: 'http://211.43.207.2/Source/client/member/C_PRODUCT_DETAIL.aspx?PRODUCT_SID=' + '<%=PRODUCT_SID%>',
                          },
                      },
                    ],
                });
            });
        });
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
                $('#aspnetForm').submit();
            });
        });
    </script>

    <script>
        $(document).ready(function() {
            $(".de1").click(function() {

            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="hidden"  name="_PRODUCT_SID" value="<%=PRODUCT_SID%>"/>
        <input type="hidden" id="payment_flag" name="payment_flag" value="common"/>
        <input type="hidden" name="pass_flag" id="pass_flag" value="N"/>
        <input type="hidden" name="BOARD_SID" id="BOARD_SID" value="0" />
    </div>
    <div id ="sub_content">
        <div class="sub_layout">
             <div id="content">
                 <div class="content_wrap">
                     <%-- 디테일 상품이미지--%>
                     <%if (PROD_IMG_TABLE != null)
                     {%>
                        <div class="slide slide_wrap">
                             <%if (PROD_IMG_TABLE.Rows[0]["RELATION_CODE"].ToString() == "MAIN_IMAGE")
                            {%>
                                <div class="slide_item item1" id="img_change_content">
                                    <img src="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=PROD_IMG_TABLE.Rows[0]["TARGET_READ_PATH"] %>" alt="detail_bg"/>
                                </div>
                            <%}%>
                            <ul class="slide_pagination"></ul>            
                        </div>
                     <%}%>
                     <%--리뷰 평점--%> 
                     <%if (TOTAL_REVIEW_TABLE != null)
                        {%>
                            <div class="star_wrap">
                            <div class="content_star">
                                <%--리뷰 평균 평점 #rateYo--%>
                                <div id="rateYo"></div>
                            </div>
                                <div class="review show_review">
                                    <span><%=TOTAL_REVIEW_TABLE.Rows[0]["TOTAL_REVIEW_COUNT"]%>개 리뷰 보기</span>
                                </div>
                            </div>
                        <%}%>

                     <%--디테일 상품 정보--%>
                     <%if (PROD_TABLE != null)
                     {%>
                         <div class="text_box">
                             <div class="relation_Item_Price_Info_Area">
                                 <%if (PROD_TABLE.Rows[0]["USER_SALE_FLAG"].ToString() == "Y")
                                {%>
                                    <div class="relation_Item_Price_Info m_lowerst_font">회원 할인 <%=PROD_TABLE.Rows[0]["USER_SALE_RATE"] %>%</div>
                                 <%}%>
                                 <%if (PROD_TABLE.Rows[0]["REBUY_FLAG"].ToString() == "Y")
                                {%>
                                      <div class="relation_Item_Price_Info m_lowerst_font">재구매 추가 할인 <%=PROD_TABLE.Rows[0]["REBUY_RATE"] %>%</div>
                                 <%}%>
                            </div>

                              <%if (CATE_TABLE != null)
                             {%>
                                 <%for (int i = 0; i < CATE_TABLE.Rows.Count; i++)
                                {%>
                                     <div class="sub_txt">
                                        <span class="m_lower_font"><%=CATE_TABLE.Rows[i]["CATEGORY_NAME"] %></span>
                                     </div>
                                 <%}%>
                             <%}%>


                             <div class="ballon_txt">
                                 <div class="main_txt">
                                     <span class="m_ma_font"><%=PROD_TABLE.Rows[0]["PRODUCT_NM"] %></span>
                                     <span class="material-icons" id="open_modal">share</span>
                                 </div>

                                 <%--추천인 말풍선--%>
                                 <%--<div class="ballon main_bg_color">
                                     <span class="ballon_font">추천인코드</span>
                                     <span class="ballon_font">를</span><br />
                                     <span class="ballon_font">공유해보세요!</span>
                                 </div>--%>

                                 <%--sns 공유--%>
                                <%-- <div class="share">
                                     <div class="share_wrap">
                                         <div class="share_wrap_inner">
                                             <div class="share_top">

                                                 <div class="share_top_sns" id="share_btn_line">
                                                     <div class="share_top_sns_img">
                                                         <img src="/Source/client/image/ballline.png" alt="line" />
                                                     </div>
                                                     <div class="share_top_sns_txt">
                                                         <span class="main_color">LINE 공유</span>
                                                     </div>
                                                 </div>
                                             
                                                 <div class="share_top_sns"  id="share_btn_kakao">
                                                     <div class="share_top_sns_img">
                                                         <img src="/Source/client/image/kakao_img.svg" alt="kakao" />
                                                     </div>
                                                     <div class="share_top_sns_txt">
                                                         <span class="main_color">카카오톡 공유</span>
                                                     </div>                                              
                                                 </div>
                                              
                                                 <div class="share_top_sns" onclick="naver_blog_share()">
                                                        <img src="/Source/client/image/Naber_blog_img.png" alt="naver_blog" class="naver_blog_icon"/>
                                                     <div class="share_top_sns_txt">
                                                         <span class="main_color" style="width:25px; height:25px ">네이버 블로그</span>
                                                     </div>
                                                 </div>
                                             </div>
                                           
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
                                 </div>--%>
                             </div>
                             
                              <%if (PROD_TABLE.Rows[0]["VIEW_SALE_FLAG"].ToString() == "Y")
                             {%>
                                <div class="list_price price_content_gap">
                                     <div class="list_price_txt price_content_width price_content_font">
                                         <span>정가</span>
                                     </div>
                                     <div class="list_price_one price_content2_width">
                                         <span><%=PROD_TABLE.Rows[0]["SALE_RATE"] %></span>
                                         <span>원</span>
                                     </div>
                                 </div>
                                 <div class="price_Area price_content_gap">
                                     <div class="price_Area_wrap">
                                         <div class="price_Area_wrap_inner">
                                             <div class="price_content_width price_content_font">
                                                 <span>판매가</span>
                                             </div>
                                             <div class="priceArea_content price_content2_width">
                                                 <div class="priceArea_content1">
                                                     <span class="total_Rate1" data-rate="<%=PROD_TABLE.Rows[0]["VIEW_SALE_RATE"] %>"><%=PROD_TABLE.Rows[0]["VIEW_SALE_RATE"] %></span>
                                                     <span>원</span>
                                                 </div>
                                                 <div class="priceArea_content_discount">
                                                     <span><%=PROD_TABLE.Rows[0]["DISCOUNT_PER"] %>%</span>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             <%}%>
                             <%else
                             {%>
                                <div class="price_Area price_content_gap">
                                     <div class="price_Area_wrap">
                                         <div class="price_Area_wrap_inner">
                                             <div class="price_content_width  price_content_font">
                                                 <span>판매가</span>
                                             </div>
                                             <div class="priceArea_content price_content2_width">
                                                 <div class="priceArea_content1">
                                                     <span class="total_Rate1" data-rate="<%=PROD_TABLE.Rows[0]["SALE_RATE"] %>"><%=PROD_TABLE.Rows[0]["SALE_RATE"] %></span>
                                                     <span>원</span>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             <%}%>

                             <%--회원 등급별 할인--%>
                             <div class="Rating_Area price_content_gap" id="grade_Discount">
                                 <div class="Rating_Area_wrap">
                                     <div class="Rating_Area_wrap_inner">
                                         <div class="price_content_width  price_content_font">
                                             <span>등급별 할인</span>
                                         </div>
                                         <div class="RatingArea_content price_content2_width">
                                             <div class="RatingArea_content1">
                                                 <div class="block-example">          
                                                    <select id="user_gradeDiscount" class="drkid-select m_lower_font" style="min-width:80%;" data-font-class="m_lowerst_font">
                                                        
                                                         <%if (GRADE_TABLE != null)
                                                         {%>
                                                             <%for (int i = 0; i < GRADE_TABLE.Rows.Count; i++)
                                                            {%>
                                                                 <option class="m_lowerst_font" value="<%=GRADE_TABLE.Rows[i]["GRADE_SALE"]%>"<%=GRADE_TABLE.Rows[i]["CODE_CODE"].ToString() == GRADE_TABLE.Rows[i]["USER_TYPE"].ToString() ? "selected=\"selected\"" : "" %>><%=GRADE_TABLE.Rows[i]["CODE_NAME"]%> &nbsp <%=GRADE_TABLE.Rows[i]["GRADE_SALE_PER"]%>% &nbsp <%=GRADE_TABLE.Rows[i]["GRADE_SALE"]%>원</option>
                                                            <%}%>
                                                        <%}%>
                                                    </select>
                                                </div>
                                             </div>
                                             <%--<div class="RatingArea_content_discount">
                                                 <span>멤버십</span>
                                             </div>--%>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                             <%--정기배송 등급별 할인--%>
                             <%--<%if(PROD_TABLE.Rows[0]["AUTO_FLAG"].ToString() == "Y")
                             {%>
                                <div class="Rating_Area price_content_gap" id="auto_grade_Discount">
                                     <div class="Rating_Area_wrap">
                                         <div class="Rating_Area_wrap_inner">
                                             <div class="price_content_width  price_content_font">
                                                 <span>정기배송<br /> 등급할인</span>
                                             </div>
                                             <div class="RatingArea_content price_content2_width">
                                                 <div class="RatingArea_content1">
                                                     <div class="block-example">          
                                                        <select id="auto_gradeDiscount" class="drkid-select m_lowerst_font" style="width:350px;" data-font-class="m_lowerst_font" onFocus="this.initialSelect = this.selectedIndex;">
                                                        
                                                             <%if (AUTO_GRADE_TABLE != null)
                                                             {%>
                                                                 <%for (int i = 0; i < AUTO_GRADE_TABLE.Rows.Count; i++)
                                                                {%>
                                                                     <option value="<%=AUTO_GRADE_TABLE.Rows[i]["AUTO_GRADE_SALE"]%>" <%=AUTO_GRADE_TABLE.Rows[i]["CODE_CODE"].ToString() == AUTO_GRADE_TABLE.Rows[i]["USER_TYPE"].ToString() ? "selected=\"selected\"" : "" %>><%=AUTO_GRADE_TABLE.Rows[i]["CODE_NAME"]%> &nbsp <%=AUTO_GRADE_TABLE.Rows[i]["AUTO_GRADE_SALE_PER"]%>% &nbsp <%=AUTO_GRADE_TABLE.Rows[i]["AUTO_GRADE_SALE"]%>원</option>
                                                                <%}%>
                                                            <%}%>
                                                        </select>
                                                    </div>
                                                 </div>
                                                
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             <%}%>--%>
                              <%--라디오 버튼 영역--%>
                             <div class="purchase price_content_gap">
                                 <div class="purchase_txt price_content_width price_content_font">
                                     <span>구매방법</span>
                                 </div>
                                 <div class="block-example">
                                    <label class="drkid-radio">
                                        <input type="radio" name="AUTO_FLAG" value="N" checked="checked"/>
                                        <span class="m_middle_font">1회 구매</span>
                                    </label>
                                     <%if (PROD_TABLE.Rows[0]["AUTO_FLAG"].ToString() =="Y")
                                    {%>
                                        <label class="drkid-radio">
                                            <input type="radio" name="AUTO_FLAG" value="Y"/>
                                            <span class="m_middle_font">정기배송</span>
                                        </label>
                                     <%}%>
                                </div>
                             </div>

                            <div class="OptionArea AutoRate_OptionArea">
                                <div class="AutoRate_Option_Wrap" style="margin:0.5rem 0;">
                                    <div class="empty_20P"></div>
                                     <div class="price_content_font total_Rate2" data-rate="<%=Convert.ToInt32(PROD_TABLE.Rows[0]["AUTO_RATE3"])%>">정기구매가: <span class="view_AutoRate "><%=Convert.ToInt32(PROD_TABLE.Rows[0]["AUTO_RATE3"]).ToString("N0")%></span>원</div>
                                </div>
                                <div class="AutoRate_Option_Wrap">
                                    <div class="empty"></div>
                                    <div class="AutoRate_Option margin_bottom10">
                                        <select class="drkid-select m_lowerst_font"id="AUTO_RATE_NUMBER" name="AUTO_RATE_NUMBER" style="width:200px;" data-font-class="m_lowerst_font">
                                            <option value="">정기배송 횟수를 선택해 주세요.</option>
                                            <option value="1">1회</option>
                                            <option value="2">2회</option>
                                            <option value="3">3회</option>
                                            <option value="4">4회</option>
                                            <option value="5">5회</option>
                                            <option value="6">6회</option>
                                            <option value="7">7회</option>
                                            <option value="8">8회</option>
                                            <option value="9">9회</option>
                                            <option value="10">10회</option>
                                            <option value="11">11회</option>
                                            <option value="12">12회</option>
                                            <option value="24">24회</option>
                                            <option value="*">무제한</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="AutoRate_Option_Wrap">
                                    <div class="empty"></div>
                                    <div class="AutoRate_Option">
                                        <select class="drkid-select m_lowerst_font" style="width:200px;" data-font-class="m_lowerst_font">
                                            <option value="">정기배송 날짜를 선택해 주세요.</option>
                                            <option value="5">매달 5일</option>
                                            <option value="10">매달 10일</option>
                                            <option value="15">매달 15일</option>
                                            <option value="20">매달 20일</option>
                                            <option value="25">매달 25일</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                             <%--옵션선택--%>
                             <%if(OPTION_TABLE != null){%>
                                <%if(OPTION_TABLE.Rows.Count > 0){%>
                                    <div class="option price_content_gap" id="selectBoxContainer price_content_gap">
                                         <div class="option_wrap price_content_width price_content_font">
                                             <span>옵션선택</span>
                                         </div>
                                         <div class="Prod_OptionArea">
                                                <div class="Prod_Option">
                                                    <select class="drkid-select m_lower_font"id="prod_Option_Select" style="min-width:80%;" data-font-class="m_lowerst_font">
                                                        <option value="default">옵션을 선택해주세요</option>
                                                        <%for (int i = 0; i < OPTION_TABLE.Rows.Count; i++)
                                                          {%>   
                                                                 <%--1. 정기배송 옵션인지 아닌지 클래스명을 통해 구별--%>
                                                                 <%--2. 상품이 판매가를 사용하면 판매가를 +,- 하고 상품가면 상품가를 +,- 해아함--%>
                                                                 <%--3. 1회 구매 라디오 선택 ==> 모든 옵션 다 보이며 정기구매 옵션선택시 정기배송비만 출력 안시키고 +나- 시키는건 같음--%>
                                                                 <%--4. 정기옵션 선택 ==> 정기옵션된 옵션만 보이며, 등급별 할인을 정기구매가, 정기구매BV로 다시 계산되어야 한다.
                                                                 또한 총 금액 형태가 아닌 매 달 ???원 ?회 형태가 되어야한다.--%>
                                                                 <%--판매가 사용하면 옵션의 OPTION_VIEW_SALE_RATE 사용하지 않으면 OPTION_SALE_RATE가 옵션의 value에 들어가야함---%>
                                                                 <%--정기배송옵션일때--%>
                                                                 <%if(OPTION_TABLE.Rows[i]["AUTO_FLAG"].ToString() == "Y"){%>
                                                                    <%--정기배송옵션이고 상품이 판매가를 사용할때로  옵션value에 (+ or -)','판매가 가격을 넣음--%>
                                                                    <%if(PROD_TABLE.Rows[0]["VIEW_SALE_FLAG"].ToString() == "Y"){%>
                                                                        <option 
                                                                            class="AUTO_FLAG_Y_OPTION" 
                                                                            value="<%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_TYPE"]%>,<%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_RATE"]%>,<%=OPTION_TABLE.Rows[i]["PRODUCT_SID"]%>,<%=OPTION_TABLE.Rows[i]["AUTO_RATE3"]%>"
                                                                            data-auto="<%=OPTION_TABLE.Rows[i]["OPTION_NAME"]%> (<%= Convert.ToDouble(OPTION_TABLE.Rows[i]["AUTO_RATE3"]).ToString("N0") %>원)"
                                                                            data-origin=" <%=OPTION_TABLE.Rows[i]["OPTION_NAME"]%> (<%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_TYPE"]%><%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_RATE"]%>원)">
                                                                                <%=OPTION_TABLE.Rows[i]["OPTION_NAME"]%> (<%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_TYPE"]%><%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_RATE"]%>원)
                                                                        </option>
                                                                    <%}%>
                                                                    <%else
                                                                    {%>
                                                                        <%--정기배송옵션이고 상품이 상품가를 사용할때로 옵션value에 (+ or -)','상품가 가격을 넣음--%>
                                                                        <option 
                                                                            class="AUTO_FLAG_Y_OPTION"
                                                                            value="<%=OPTION_TABLE.Rows[i]["OPTION_SALE_TYPE"]%>,<%=OPTION_TABLE.Rows[i]["OPTION_SALE_RATE"]%>,<%=OPTION_TABLE.Rows[i]["PRODUCT_SID"]%>,<%=OPTION_TABLE.Rows[i]["AUTO_RATE3"]%>"
                                                                            data-auto="<%=OPTION_TABLE.Rows[i]["OPTION_NAME"]%> (<%= Convert.ToDouble(OPTION_TABLE.Rows[i]["AUTO_RATE3"]).ToString("N0") %>원)"
                                                                            data-origin=" <%=OPTION_TABLE.Rows[i]["OPTION_NAME"]%> (<%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_TYPE"]%><%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_RATE"]%>원)">
                                                                                <%=OPTION_TABLE.Rows[i]["OPTION_NAME"]%> (<%=OPTION_TABLE.Rows[i]["OPTION_SALE_TYPE"]%><%=OPTION_TABLE.Rows[i]["OPTION_SALE_RATE"]%>원)
                                                                        </option>
                                                                    <%}%>
                                                                 <%} %>
                                                                 <%-- 정기배송옵션이 아닐떄--%>
                                                                 <%--정기배송옵션이 아닐때 정기배송비 없고 class명 다르고 위와 같음--%>
                                                                 <%--data-value : 공백 , value : (+or-)',' 옵션 상품가or판매가--%>
                                                                 <%if(OPTION_TABLE.Rows[i]["AUTO_FLAG"].ToString() == "N"){%>
                                                                    <%--정기배송옵션이 아니고 상품이 판매가를 사용할때로  옵션value에 (+ or -)','판매가 가격을 넣음--%>
                                                                    <%if(PROD_TABLE.Rows[0]["VIEW_SALE_FLAG"].ToString() == "Y"){%>
                                                                        <option 
                                                                            class="AUTO_FLAG_N_OPTION"
                                                                            value="<%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_TYPE"]%>,<%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_RATE"]%>,<%=OPTION_TABLE.Rows[i]["PRODUCT_SID"]%>,0">
                                                                                <%=OPTION_TABLE.Rows[i]["OPTION_NAME"]%> (<%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_TYPE"]%><%=OPTION_TABLE.Rows[i]["OPTION_VIEW_SALE_RATE"]%>원)
                                                                        </option>
                                                                    <%}%>
                                                                    <%else
                                                                    {%>
                                                                        <%--정기배송옵션이 아니고 상품이 상품가를 사용할때로 옵션value에 (+ or -)','상품가 가격을 넣음--%>
                                                                        <option 
                                                                            class="AUTO_FLAG_N_OPTION"
                                                                            value="<%=OPTION_TABLE.Rows[i]["OPTION_SALE_TYPE"]%>,<%=OPTION_TABLE.Rows[i]["OPTION_SALE_RATE"]%>,<%=OPTION_TABLE.Rows[i]["PRODUCT_SID"]%>,0">
                                                                                <%=OPTION_TABLE.Rows[i]["OPTION_NAME"]%> (<%=OPTION_TABLE.Rows[i]["OPTION_SALE_TYPE"]%><%=OPTION_TABLE.Rows[i]["OPTION_SALE_RATE"]%>원)
                                                                        </option>
                                                                    <%}%>
                                                                 <%} %>
                                                        <%} %>
                                                    </select>
                                                </div>
                                            </div>
                                     </div>
                                 <%}%>
                             <%}%>
                       
                             <div class="delivery price_content_gap">
                                 <div class="delivery_wrap price_content_width price_content_font">
                                     <span>배송비</span>
                                 </div>
                                 <%--산간지역 배송비가 있으면--%>
                                 <%if(PROD_TABLE.Rows[0]["DELIVERY_COST2"].ToString().Length >= 3)
                                 {%>
                                    <div class="delivery_price_Wrap">
                                        <div class="delivery_price">
                                             <span class="m_lower_font">기본 배송비: <%=PROD_TABLE.Rows[0]["DELIVERY_COST"]%></span>
                                             <span class="m_lower_font">원</span>
                                         </div>
                                        <div class="delivery_price">
                                             <span class="m_lower_font">산간지역 배송비: <%=PROD_TABLE.Rows[0]["DELIVERY_COST2"]%></span>
                                             <span class="m_lower_font">원</span>
                                         </div>
                                    </div>
                                 <%}%>
                                 <%--기본 배송지만 설정되어 있으면--%>
                                 <%else{
                                 %> 
                                    <div class="delivery_price">
                                        <span class="m_lower_font">기본 배송비: <%=PROD_TABLE.Rows[0]["DELIVERY_COST"]%></span>
                                        <span class="m_lower_font">원</span>
                                    </div>
                                 <%}%>
                                     <div class="delivery_condition padding-left">
                                         <span class="material-icons">info</span>
                                         <span class="m_lower_font">
                                             <% if (PROD_TABLE.Rows[0]["DELIVERY_CD"].ToString() == "FREE")
                                            {%>
                                                무료
                                            <%}
                                            else if (PROD_TABLE.Rows[0]["DELIVERY_CD"].ToString() == "HFREE")
                                            {%>
                                                조건부 무료 (<%=PROD_TABLE.Rows[0]["DELIVERY_FREE_COST"]%>원 이상 구매 시)
                                            <%}
                                            else if (PROD_TABLE.Rows[0]["DELIVERY_CD"].ToString() == "COST")
                                            {%>
                                                유료
                                            <%}%>
                                         </span>
                                     </div>
                             </div>
                             <div class="lower-font delivery price_content_gap delivery2">
                                 <div class="delivery_wrap price_content_width price_content_font">
                                     <span>정기 배송비</span>
                                 </div>
                                 <div class="delivery_price">
                                        <span class="lower-font main_color">3000</span>
                                        <span>원</span>
                                    </div>
                             </div>
                             <%--옵션 선택 후 추가되는 옵션 템플릿의 부모영역--%>
                             <div class="template_Here"></div>
                         </div>
                     <%}%>
                 </div>
                 
                 <!--총금액-->
                  <div class="bottom_price">
                     <div class="bottom_price_wrap">
                         <div class="bottom_price_wrap_inner">
                             <div class="price">
                                 <div class="price_txt">
                                     <span class="total_PriceInfo1">총 금액</span>
                                 </div>
                                 <div class="price_one">
                                     <span class="total_Price"></span>
                                     <span class="total_PriceInfo2">원</span>
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
                                 <div class="button_content" id="PurchaseClick">
                                    <span>구매하기</span>
                                </div>
                                 <%--<div class="button_content">
                                     <span>장바구니</span>
                                 </div>--%>
                                 <!--<a href="/Source/client/member/C_PRODUCT_PURCHASE.aspx"> 이동규-->
                                    <div class="button_content">
                                        <span class="material-icons m_icon">redeem</span>
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
                          <%if(PROD_TABLE != null)
                        {%>
                             <%if(PROD_TABLE.Rows[0]["PRODUCT_DETAIL_INFO"].ToString().Length > 0)
                            {%>
                                 <div class="detail_wrap_inner detail-content1">
                                     <div class="detail_boxes">
                                         <div class="detail_box de1 de_active">
                                             <span class="m_middle_font">상세정보</span>
                                         </div>
                                         <div class="detail_box de2">
                                             <span class="m_middle_font">리뷰(<%=TOTAL_REVIEW_TABLE.Rows[0]["TOTAL_REVIEW_COUNT"] %>)</span>
                                         </div>
                                         <div class="detail_box de3">
                                             <span class="m_middle_font">상품문의</span>
                                         </div>                                       
                                         <div class="detail_box de4">
                                             <span class="m_middle_font">구매정보</span>
                                         </div>
                                    </div>
                                 </div>
                                 <!--상세페에지 이미지-->
                                 <div class="de1_content">
                                     <div class="detail_img">
                                         <div class="detail_img_wrap">
                                             <div class="detail_img_wrap_box">
                                                  <%=PROD_TABLE.Rows[0]["PRODUCT_DETAIL_INFO"]%>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             <%}%>
                         <%}%>
                         <div class="de4_content">
                            <!--배송안내-->
                             <%if(PROD_TABLE != null)
                            {%>
                                 <%if (PROD_TABLE.Rows[0]["PRODUCT_DELIVERY_INFO"].ToString().Length > 0)
                                {%>                  
                                     <!--배송안내 설명-->
                                     <div class="deli">
                                         <div class="deli_wrap">
                                             <div class="deli_wrap_inner">
                                                 <div class="deli_main_txt lower-font">
                                                     <span>배송안내</span>
                                                 </div>
                                                 <div class="template">
                                                     <%=PROD_TABLE.Rows[0]["PRODUCT_DELIVERY_INFO"] %>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                <%}%>
                             <%}%>
                              <!--교환 및 반품안내-->
                             <%if(PROD_TABLE != null)
                            {%>
                                 <%if (PROD_TABLE.Rows[0]["PRODUCT_STORE_INFO"].ToString().Length > 0)
                                {%>
                                 
                                     <!--교환 및 반품안내 설명-->
                                     <div class="deli">
                                         <div class="deli_wrap">
                                             <div class="deli_wrap_inner">
                                                 <div class="deli_main_txt lower-font">
                                                     <span>교환 및 반품 안내</span>
                                                 </div>
                                                 <div class="template">
                                                     <%=PROD_TABLE.Rows[0]["PRODUCT_STORE_INFO"] %>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                 <%}%>
                             <%}%>
                         </div>

                         <div class="de2_content">
                             <%if(TOTAL_REVIEW_TABLE != null)
                            {%>
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
                                                                     <span><%=TOTAL_REVIEW_TABLE.Rows[0]["AVG_SCORE"]%></span>
                                                                 </div>
                                                                 <div class="back_score">
                                                                     <span>/5</span>
                                                                 </div>
                                                             </div>
                                                         </div>
                                                 
                                                     </div>
                                                     <!--리뷰개수-->
                                                     <%--<div class="review_count">
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
                                                                         <span><%=TOTAL_REVIEW_TABLE.Rows[0]["TOTAL_REVIEW_COUNT"]%></span>
                                                                     </div>
                                                                     <div class="review_count_poto">
                                                                         <span>포토</span>
                                                                     </div>
                                                                     <div class="review_count_poto_score">
                                                                         <span><%=TOTAL_REVIEW_TABLE.Rows[0]["PHOTO_COUNT"]%></span>
                                                                     </div>
                                                                 </div>
                                                             </div>
                                                         </div>
                                                     </div>--%>
                                                     <!--막대평점-->
                                                     <div class="rod">
                                                         <div class="rod_wrap">
                                                             <div class="rod_wrap_inner">
                                                                 <!--첫번째 bar-->
                                                                 <div class="bar">
                                                                     <div class="bar_top" style="height: <%=TOTAL_REVIEW_TABLE.Rows[0]["ONE_PER"]%>px;"></div>
                                                                     <div class="bar_center">
                                                                         <span>5점</span>
                                                                     </div>
                                                                     <div class="bar_bottom">
                                                                         <span><%=TOTAL_REVIEW_TABLE.Rows[0]["FIVE_PER"]%>%</span>
                                                                     </div>
                                                                 </div>
                                                                 <!--첫번째 bar-->
                                                                 <div class="bar">
                                                                     <div class="bar_top" style="height: <%=TOTAL_REVIEW_TABLE.Rows[0]["ONE_PER"]%>px;"></div>
                                                                     <div class="bar_center">
                                                                         <span>4점</span>
                                                                     </div>
                                                                     <div class="bar_bottom">
                                                                         <span><%=TOTAL_REVIEW_TABLE.Rows[0]["FOUR_PER"]%>%</span>
                                                                     </div>
                                                                 </div>
                                                                 <!--첫번째 bar-->
                                                                 <div class="bar">
                                                                     <div class="bar_top" style="height: <%=TOTAL_REVIEW_TABLE.Rows[0]["ONE_PER"]%>px;"></div>
                                                                     <div class="bar_center">
                                                                         <span>3점</span>
                                                                     </div>
                                                                     <div class="bar_bottom">
                                                                         <span><%=TOTAL_REVIEW_TABLE.Rows[0]["THREE_PER"]%>%</span>
                                                                     </div>
                                                                 </div>
                                                                 <!--첫번째 bar-->
                                                                 <div class="bar">
                                                                     <div class="bar_top" style="height: <%=TOTAL_REVIEW_TABLE.Rows[0]["ONE_PER"]%>px;"></div>
                                                                     <div class="bar_center">
                                                                         <span>2점</span>
                                                                     </div>
                                                                     <div class="bar_bottom">
                                                                         <span><%=TOTAL_REVIEW_TABLE.Rows[0]["TWO_PER"]%>%</span>
                                                                     </div>
                                                                 </div>
                                                                 <!--첫번째 bar-->
                                                                 <div class="bar">
                                                                     <div class="bar_top" style="height: <%=TOTAL_REVIEW_TABLE.Rows[0]["ONE_PER"]%>px;"></div>
                                                                     <div class="bar_center">
                                                                         <span>1점</span>
                                                                     </div>
                                                                     <div class="bar_bottom">
                                                                         <span><%=TOTAL_REVIEW_TABLE.Rows[0]["ONE_PER"]%>%</span>
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
                                                                     <span class="m_middle_font">당신의 경험을 공유해주세요!</span>
                                                                 </div>
                                                                 <div class="review_write_botton">
                                                                     <span class="m_middle_font">리뷰 작성하기</span>
                                                                 </div>
                                                             </div>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             <%}%>
                         

                             <div class="review_product">
                                 <div class="review_product_wrap">
                                     <div class="review_product_wrap_inner">
                                         <%if (BEST_REVIEW_TABLE != null)
                                         {%>
                                            <%if (BEST_REVIEW_TABLE.Rows.Count > 0)
                                             {%>
                                                <%for (int i = 0; i < BEST_REVIEW_TABLE.Rows.Count; i++)
                                                {%>
                                                     <div class="review_product_content">
                                                         <div class="hidden_Review_Field">
                                                            <%--이미지--%>
                                                            <input type="hidden" name="H_ALL_REVIEW_IMAGE" value="<%=BEST_REVIEW_TABLE.Rows[i]["ALL_REVIEW_IMG"] %>" />
                                                            <input type="hidden" name="H_REVIEW_MAIN_IMAGE" value="<%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>" />
                                                            <%--상품--%>
                                                            <input type="hidden" name="H_PRODUCT_NM" value="<%=BEST_REVIEW_TABLE.Rows[i]["PRODUCT_NM"] %>" />
                                                            <input type="hidden" name="H_CATEGORY_NAME" value="<%=CATE_TABLE.Rows[0]["CATEGORY_NAME"] %>" />
                                                            <%--리뷰--%>
                                                            <input type="hidden" name="H_POST_USER_ID" value="<%=BEST_REVIEW_TABLE.Rows[i]["NAME_CLOSE1"] %>" />
                                                            <input type="hidden" name="H_POST_TIME" value="<%=Convert.ToDateTime(BEST_REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%>" />
                                                            <input type="hidden" name="H_REVIEW_TITLE" value="<%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_TITLE"] %>" />
                                                            <input type="hidden" name="H_REVIEW_BODY" value="<%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_BODY"] %>" />
                                                            <input type="hidden" name="H_PRODUCT_SCORE" value="<%=Convert.ToInt32(BEST_REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"])%>" />
                                                        </div>
                                                         <div class="content">
                                                             <div class="content_img">
                                                                 <%if (!string.IsNullOrEmpty(Convert.ToString(BEST_REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"])))
                                                                { %>
                                                                     <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>'/>
                                                                <%}%> 
                                                                <%else
                                                                {%>
                                                                    <img src="/Source/image/no_img.svg" class="no_img"/>
                                                                <%}%>
                                                             </div>
                                                             <div class="content_txt_box">
                                                                 <div class="content_star">
                                                                      <%for (int j = 0; j < Convert.ToInt32(BEST_REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"]); j++)
                                                                        {%>
                                                                            <div class="star_img">
                                                                                <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                            </div>
                                                                        <%}%>
                                                                 </div>
                                                                 <div class="content_txt_box_title">
                                                                     <p>
                                                                         <%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_TITLE"]%>
                                                                     </p>
                                                                 </div>
                                                                 <div class="content_txt_box_sub_title">
                                                                     <p>
                                                                         <%=BEST_REVIEW_TABLE.Rows[i]["NAME_CLOSE1"]%>님의 리뷰입니다.
                                                                     </p>
                                                                 </div>
                                                             </div>
                                                         </div>
                                                     </div>
                                                <%}%>
                                            <%}%>
                                         
                                        <%}%>
                                     </div>
                                     <%if (BEST_REVIEW_TABLE != null) 
                                            {%>
                                                <%if (Convert.ToInt32(TOTAL_REVIEW_TABLE.Rows[0]["BEST_COUNT"]) > matches_BestReview) 
                                                {%>
                                                    <div class="more_Btn_Area2">
                                                        <div class="lower-font main_bg_color more_Btn" id="bestReview_MoreBtn">더보기</div>
                                                    </div>
                                                <%}%>    
                                                <%else
                                                {%>
                                                    <div class="list_Padding"></div>
                                                <%}%> 
                                         <%}%>     
                                 
                                
                                    <%if (REVIEW_TABLE != null)
                                    {%>
                                         <%--리뷰--%>
                                         <div class="total_review">
                                             <div class="total_review_wrap">
                                                 <div class="total_review_wrap_inner">
                                                     <%--<div class="total_review_top">
                                                         <div class="total_review_top_xtx">
                                                             <div class="list_HeaderUi hearder_Active"  data-value="ORDER_BY_BEST">
                                                                 <span>BEST</span>
                                                             </div>
                                                             <div class="list_HeaderUi" data-value="ORDER_BY_POST_TIME">
                                                                 <span>최신순</span>
                                                             </div>
                                                             <div class="list_HeaderUi" data-value="PRODUCT_SCORE">
                                                                 <span>별점순</span>
                                                             </div>
                                                         </div>
                                                         <div class="total_review_top_content">
                                                             <div class="total_review_top_content_txt">
                                                                 <span>전체 리뷰 <%=TOTAL_REVIEW_TABLE.Rows[0]["TOTAL_REVIEW_COUNT"]%>개</span>
                                                             </div>
                                                             <div class="search_Wrap">
                                                                <input type="text" class="drkid-input lower-font" id="REVIEW_TITLE" value="" name="REVIEW_TITLE" placeholder="리뷰 검색" />
                                                                <div class="search_Icon_Wrap">
                                                                    <span class="drkid-icon search-icon"></span>
                                                                </div>
                                                            </div>
                                                         </div>
                                                     </div>--%>
                                                     <%if (REVIEW_TABLE.Rows.Count > 0)
                                                     {%>
                                                        <div class="total_review_bottom_wrap">
                                                             <div class="total_review_bottom_wrap_inner">
                                                        <%for (int i = 0; i < REVIEW_TABLE.Rows.Count; i++)
                                                        {%>
                                                             <div class="total_review_bottom">
                                                                 <div class="hidden_Review_Field">
                                                                    <%--이미지--%>
                                                                    <input type="hidden" name="H_ALL_REVIEW_IMAGE" value="<%=REVIEW_TABLE.Rows[i]["ALL_REVIEW_IMG"] %>" />
                                                                    <input type="hidden" name="H_REVIEW_MAIN_IMAGE" value="<%=REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>" />
                                                                    <%--상품--%>
                                                                    <input type="hidden" name="H_PRODUCT_NM" value="<%=REVIEW_TABLE.Rows[i]["PRODUCT_NM"] %>" />
                                                                    <input type="hidden" name="H_CATEGORY_NAME" value="<%=CATE_TABLE.Rows[0]["CATEGORY_NAME"] %>" />
                                                                    <%--리뷰--%>
                                                                    <input type="hidden" name="H_POST_USER_ID" value="<%=REVIEW_TABLE.Rows[i]["NAME_CLOSE1"] %>" />
                                                                    <input type="hidden" name="H_POST_TIME" value="<%=Convert.ToDateTime(REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%>" />
                                                                    <input type="hidden" name="H_REVIEW_TITLE" value="<%=REVIEW_TABLE.Rows[i]["REVIEW_TITLE"] %>" />
                                                                    <input type="hidden" name="H_REVIEW_BODY" value="<%=REVIEW_TABLE.Rows[i]["REVIEW_BODY"] %>" />
                                                                    <input type="hidden" name="H_PRODUCT_SCORE" value="<%=Convert.ToInt32(REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"])%>" />
                                                                </div>
                                                                          <%--리뷰 content--%>
                                                                         <div class="total_review_bottom_content">
                                                                             <div class="total_review_bottom_content_txt">
                                                                                 <div class="content_star">
                                                                                    <%for (int j = 0; j < Convert.ToInt32(REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"]); j++)
                                                                                    {%>
                                                                                        <div class="star_img">
                                                                                            <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                                        </div>
                                                                                    <%}%>
                                                                                </div>
                                                                                 <%if (REVIEW_TABLE.Rows[i]["BEST_FLAG"].ToString() == "Y")
                                                                                 { %>
                                                                                     <div class="lowerst-font best_Flag">BEST</div>
                                                                                <%}%> 
                                                                                 <div class="txt txt_padding txt_small_font">
                                                                                     <span><%=REVIEW_TABLE.Rows[i]["NAME_CLOSE1"]%>님의 리뷰입니다.</span>
                                                                                 </div>
                                                                                 <div class="txt txt_small_font">
                                                                                     <span><%=Convert.ToDateTime(REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%></span>
                                                                                 </div>
                                                                             </div>
                                                                             <div class="total_review_bottom_content_img">
                                                                                 <div class="total_review_bottom_content_img_txt">
                                                                                     <p class="txt_weight">
                                                                                         <%=REVIEW_TABLE.Rows[i]["PRODUCT_NM"]%>
                                                                                     </p>
                                                                                 </div>
                                                                                 <div class="total_review_bottom_content_img_txt txt_padding">
                                                                                     <p class="txt_small_font">
                                                                                        <%=REVIEW_TABLE.Rows[i]["REVIEW_TITLE"]%>
                                                                                     </p>
                                                                                 </div>
                                                                             </div>
                                                                         </div>                                   
                                                            </div>
                                                     <%}%>
                                                     </div>
                                                 </div>
                                                
                                                <%}%>
                                                 </div>
                                             </div>
                                         </div>
                                     <%}%>

                                          <%--더보기--%>
                                        <%if (REVIEW_TABLE != null) 
                                            {%>
                                                <%if (Convert.ToInt32(TOTAL_REVIEW_TABLE.Rows[0]["TOTAL_REVIEW_COUNT"]) > matches_CommonReview) 
                                                {%>
                                                    <div class="more_Btn_Area">
                                                        <div class="lower-font main_bg_color more_Btn" id="commonReview_MoreBtn">더보기</div>
                                                    </div>
                                                <%}%>    
                                                <%else
                                                {%>
                                                    <div class="list_Padding"></div>
                                                <%}%> 
                                         <%}%>                        
                                 </div>
                             </div>
                        </div>
                         

                         <div class="de3_content">
                             <!--상품문의 설명-->
                             <div class="notice_List_Area_title">
                                 <div class="notice_List_Area_title_wrap">
                                     <div class="notice_List_Area_title_wrap_inner">
                                         <div class="question">
                                             <span class="m_middle_font">상품 Q & A</span>
                                             <span class="m_middle_font">(<%=PROD_FAQ_TOTAL_COUNT %>)</span>
                                         </div>
                                         <div class="question_product_write">
                                             <span class="m_middle_font">상품문의 글쓰기</span>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                             <div class=""></div>


                            <div class="notice_List_Area">
                                <div class="notice_List">       
                                    <%if (PROD_FAQ_TABLE != null && PROD_FAQ_TABLE.Rows.Count > 0)
                                    {%>
                                        <%for (int i=0; i<PROD_FAQ_TABLE.Rows.Count; i++)
                                        {%>
                                            <div class="notice_Content_Wrap"id="<%=PROD_FAQ_TABLE.Rows[i]["BOARD_SID"] %>">
                                                <div class="notice_Content">
                                                    <div class="notice_Number_Area">
                                                        <div class="notice_Number m_lowerst_font"></div> <%--<%=PROD_FAQ_TABLE.Rows.Count - i %>--%>
                                                    </div>
                                                     <div class="notice_Title_Area">
                                                        <div class="notice_Title lowerst-font">
                                                            <span class="material-icons">https</span>
                                                            <span class="prod_FAQ_Title m_middle_font">비밀글입니다.</span>    
                                                        </div>
                                                    </div>
                                                    <div class="notice_Writer_Area">
                                                        <div class="notice_Writer m_lowerst_font"><%=PROD_FAQ_TABLE.Rows[i]["BOARD_WRITE_NM"] %></div>
                                                    </div>
                                                    <div class="notice_Created_Date_Area">
                                                      <div class="notice_Created_Date m_lowerst_font"><%=Convert.ToDateTime(PROD_FAQ_TABLE.Rows[i]["POST_DATE"]).ToString("yyyy.MM.dd") %></div>
                                                    </div>
                                                    <div class="notice_Created_Answer_Area">
                                                        <div class="notice_Created_Answer m_lower_font">
                                                            <%if(PROD_FAQ_TABLE.Rows[i]["POST_STATUS"].ToString() == "R")
                                                            {%>
                                                                답변대기
                                                            <%}%> 
                                                             <%else if(PROD_FAQ_TABLE.Rows[i]["POST_STATUS"].ToString() == "W")
                                                            {%>
                                                                답변완료
                                                            <%}%> 
                                                             <%else if(PROD_FAQ_TABLE.Rows[i]["POST_STATUS"].ToString() == "L")
                                                            {%>
                                                                답변중
                                                            <%}%> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="Request_Area">
                                                </div>
                                            </div>
                                        
                                        <%}%>  
                                    <%}%>  
                                    <%else if (PROD_FAQ_TABLE != null && PROD_FAQ_TABLE.Rows.Count == 0)
                                    {%>
                                        <div class="noData_Area">
                                            <div class="m_lowerst_font noData">등록된 문의가 없습니다.</div>
                                        </div>
                                    <%}%> 
                                </div>
                                <%if (PROD_FAQ_TABLE != null) 
                                {%>
                                    <%if (TOTAL_PROD_HD_COUNT > matches_HelpDesk) 
                                    {%>
                                        <div class="more_Btn_Area3">
                                            <div class="m_lowerst_font main_bg_color more_Btn" id="prodHD_MoreBtn">더보기</div>
                                        </div>
                                    <%}%>    
                                    <%else
                                    {%>
                                        <div class="list_Padding"></div>
                                    <%}%> 
                                <%}%>    
                            </div>


                            </div>
                        </div>
                     </div>
                 </div>
            </div>
        </div>
    </div>

     <%--리뷰 디테일 모달--%>
    <div class="overlay">
        <div class="img_review_wrap_inner">
            <div class="img_review_wrap">
                <div class="img_wrap_clear">
                    <div class="middle-font modal_Title">리뷰 상세보기</div>
                    <div class="modalClose_Btn">
                        <span class="material-icons">clear</span>
                    </div>
                </div>
                <div class="img_wrap_1">
                    <div class="left_img">
                        <%--메인 이미지 영역--%>
                        <div class="img mainImg" id="img_change_content_M">
                            <img src="/Source/client/image/best_img.png" />
                        </div>
                        <%--메인 이미지 포함 모든 이미지 영역--%>
                        <div class="img_bottom_img" id="img_change">
                            <div class="img_content">
                                <img src="/Source/client/image/best_img.png" alt="Alternate Text" />
                            </div>
                            <div class="img_content">
                                <img src="/Source/client/image/best_img.png" alt="Alternate Text" />
                            </div>
                        </div>
                    </div>
                    <div class="right_wrap">
                        <div class="img rigthTop">
                            <%--<div class="product" id="">
                                <img src="/Source/client/image/best_img.png" alt="Alternate Text" />
                            </div>--%>
                            <div class="product_img_txt">
                                <span class="modal_ProdCategory">신당케어</span>
                                <span class="modal_ProdNM">비건오메가3 (30일분)</span>
                            </div>
                        </div>
                        <div class="content_star_wrap">
                            <div class="content_star_wrap_left">
                                <div class="content_star modal_ProdScore">
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
                                <div class="content_star_wrap_txt">
                                    <div class="modal_PostUserId"></div>
                                    <span>님의 리뷰입니다.</span>
                                </div>
                            </div>
                            <div class="content_star_wrap_right">
                                <span class="modal_PostTime">2023-06-01</span>
                            </div>
                        </div>
                        <div class="right_wrap_txt">
                            <div class="right_wrap_txt_first">
                                <span class="lower-font modal_ReviewTitle">3개월분 할인해서 구매했어요 좋아요</span>
                            </div>
                            <div class="right_wrap_txt_second">
                                <span class="modal_ReviewBody">효과가 너무좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크지도않아서 먹 기에 딱 좋습니다. 
                                </span>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--상품 문의 작성 모달--%>
    <div class="overlay" id="PROD_HD_MODAL">
        <div class="modal_Inner_1100">
            <%--상단--%>
            <div class="modal_Top_Area border_bottom">
                <div class="my_Title">상품 문의</div>
                <div class="delivery_Modal_Close"id="prodHdModal_CloseBtn1">
                    <span class="clear-icon drkid-icon"></span>
                </div>
            </div>
            <div class="modal_MiddleArea padding10">
                 <div class="lowerst-font modal_Input_Area">
                     <div class="lowerst-font modal_Info">제목</div>
                     <div class="modal_Input">
                         <input type="text" class="drkid-input lowerst-font" name="TITLE" value="" placeholder="제목을 입력해 주세요" />
                     </div>
                </div>
                <div class="lowerst-font modal_Input_Area">
                     <div class="lowerst-font modal_Info">작성자</div>
                     <div class="modal_DoubleInput">
                         <input type="text" class="drkid-input lowerst-font" name="BOARD_WRITE_NM" value="" placeholder="제목을 입력해 주세요" />
                     </div>
                    <%if (baseUser.userSid.ToString() == "0" || baseUser.userSid.ToString() == null) 
                     {%>
                         <div class="lowerst-font modal_Info">전화번호</div>
                         <div class="modal_DoubleInput">
                             <input type="text" class="drkid-input lowerst-font" name="BOARD_WRITE_SID" value="" placeholder="- 없이 입력해주세요" />
                         </div>
                    <%}%>
                </div>
                <div class="lowerst-font modal_Input_Area">
                     <div class="lowerst-font modal_Info">문의내용</div>
                     <div class="modal_Input">
                         <textarea class="lowerst-font" name="DETAIL" id="DETAIL" style="width: 100%; height: 256px; padding: 10px; box-sizing: border-box; border: 1px solid var(--mono_line); resize: none;" placeholder="문의내용을 입력해 주세요."></textarea>
                     </div>
                </div>
                <%--문의글 비밀번호--%>
                <div class="lowerst-font modal_Input_Area">
                     <div class="hd_Request_Filed_Pass">
                        <div class="hd_Reques_Info lowerst-font">문의글 비밀번호</div>
                        <div class="hd_Reques_Pass_Data lowerst-font">
                            <input type="password" class="drkid-input lowerst-font" id="I_PASSWORD" name="I_PASSWORD" value="" autocomplete="off" placeholder="비밀번호 4자리 이상 입력" maxlength="20"/>
                            <span class="material-icons-outlined material_custum_green pass_ok">check_circle</span>
                            <span class="material-icons-outlined material_custum_red pass_no">cancel</span>
                        </div>
                        <div class="hd_Reques_Pass_Data lowerst-font">
                            <input type="password" class="drkid-input lowerst-font" id="I_PASSWORD_CHECK" name="I_PASSWORD_CHECK" value="" autocomplete="off" placeholder="비밀번호 확인" maxlength="20"/>
                            <span class="material-icons-outlined material_custum_green check_ok">check_circle</span>
                            <span class="material-icons-outlined material_custum_red check_no">cancel</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal_BottomArea">
                <div class="modal_Btn_Area">
                    <div class="lowerst-font drkid-btn-sub2 drkid-btn-active" id="prodHdModal_SaveBtn">문의하기</div>
                    <div class="lowerst-font drkid-btn-sub2" id="prodHdModal_CloseBtn2">닫기</div>
                </div>
            </div>
        </div>
    </div>
    <%--비밀번호 입력모달--%>
     <div class="overlay" id="PROD_HD_PW_MODAL">
        <div class="modal_Inner_500">
            <div class="modal-content">
                <div>
                    <span class="pop-modal-title">비밀번호 입력</span>
                    <span class="clear-icon drkid-icon close closeBtn" id="prodHdPWModal_CloseBtn1"></span>
                </div>
                <div id="pop-modal-wraper">
                    <div class="product_search_wrap">
                        <input type="password" autocomplete="off" id="board_password" name="board_password" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="" maxlength="50" />
                    </div>
                    <div class="pass_guide" style="display:none;">
                        <label class="no_pass">비밀번호가 틀렸습니다.다시 입력해주세요.</label>
                    </div>
                </div>
                <div id="pop-modal-btn-wraper">
                    <div class="drkid-btn-sub2 drkid-btn-active admin_save_Btn findEnterkey" id="user_enter_btn">
                        <span class="middle-font modal-btn-font">확인</span>
                    </div>
                    <div class="drkid-btn-sub2 closeBtn">
                        <span class="middle-font modal-btn-font"id="prodHdPWModal_CloseBtn2">취소</span>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <%--공유 모달화면 추가 이동규--%>
    <div class="container">
        <div class="Modal_background" id="Modal_background"></div>
        <div class="modal">
          <!-- 헤더 부분. -->
          <div class="header"> 
            <span class="material-icons close_btn" style="font-size: 30px; line-height: 48px; visibility:hidden">close</span>
            <div class="Title_Share">공유하기</div>
            <span class="material-icons close_btn" style="font-size: 30px; line-height: 48px;">close</span>
          </div>
          <!-- 본내용 부분 -->
          <div class="body">
            <div class="icon_wrep">
              <!-- 1번 아이콘 -->
              <div class="Sns_Share_container">
                <div class="Sns_Share_Icon" id="share_btn_kakao">
                    <img src="/Source/m/image/m_KakaoTalk_img.png" class="Sns_BTN" alt="kakao공유하기" />
                    <div class="share_guide">카카오톡 공유</div>
                </div>           
              </div>
              <!-- 2번 아이콘 -->
              <div class="Sns_Share_container">
                <div class="Sns_Share_Icon" id="LINE_share">
                    <img src="/Source/m/image/m_Line_img.png" class="Sns_BTN" alt="라인 공유하기 입니다."/>  
                  <div class="share_guide">라인</div>
                </div>
              </div>
            <!-- 3번 아이콘 -->
             <div class="Sns_Share_container">
                <div class="share_top_sns" onclick="naver_blog_share()">
                    <img src="/Source/m/image/Naber_blog_img.png" alt="naver_blog" class="naver_blog_icon"/>
                        <div class="share_top_sns_txt">
                            <span class="share_guide"  style="width:50px; height:50px ">네이버 블로그</span>
                     </div>
                 </div>
             </div>
              <!-- 4번아이콘 -->
              <div class="Sns_Share_container">
                <div class="Sns_Share_Icon">
                    <span class="material-icons" id="Copy_Current_URL" style="font-size: 50px;">
                       content_copy
                    </span>
                  <div class="share_guide">URL복사</div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>

</asp:Content>
