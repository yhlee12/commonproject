﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MY_BASKET.aspx.cs" Inherits="drKid.Source.client.my.C_MY_BASKET" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
          width: 1300px;
          margin: auto;
        }

        .head_menu {
            margin-bottom: 20px;
        }

        .head_menu_wrap {
          display: flex;
        }

        .all_menu {
            width:100%;
            height:50px;
            border: 1px solid #E1E1E1;
            color: white;
            background-color:#115C5E;
            text-align:center;
            cursor: pointer;
            border-bottom:none;
        }

        .all_menu > span {
            line-height: 50px;
        }

        /*.left_menu {
          background-color: #115C5E;
          color: white;
        }*/

        .left_menu,
        .right_menu {
          width: 650px;
          height: 50px;
          text-align: center;
          border: 1px solid #E1E1E1;
          cursor:pointer;
        }

        .left_menu > span,
        .right_menu > span {
          line-height: 50px;
        }

        .product_title > .title > ul {
          display: grid;
          grid-template-columns: 100px 400px 100px 100px 100px 200px 100px 200px;
          grid-template-rows: 50px;
          text-align: center;
          background-color: #F9F9F9;
          align-items: center;
          border-bottom: 1px solid #CCCCCC;
          border-top: 1px solid;
        }

        .product_title > .title_2 > ul {
          display: grid;
          grid-template-columns: 100px 300px 200px 100px 100px 200px 100px 200px;
          grid-template-rows: 50px;
          text-align: center;
          background-color: #F9F9F9;
          align-items: center;
          border-bottom: 1px solid #CCCCCC;
          border-top: 1px solid;
        }

        .nomal_title {
            width: 100%;
            height:55px;
            text-align:center;
            border-top: 1px solid;
            background-color:#f9f9f9;
            font-size: 16px;
        }

        .nomal_title > span {
            line-height: 55px;
        }

        .check {
          height: 90px;
          width: 100px;
          display: flex;
          align-items: center;
          justify-content: center;   
        }

        .check > span {
          font-size: 20px;
          display: block;
          width: 20px;
          height: 20px;
          border: 1px solid #ccc;
          color: #ccc;
          cursor: pointer;
        }

        .top_check {
          width: 100px;
          display: flex;
          align-items: center;
          justify-content: center;   
        }

        .top_check > span {
          font-size: 20px;
          display: block;
          width: 20px;
          height: 20px;
          border: 1px solid #ccc;
          color:#ccc;
          cursor: pointer;
         
        }

        .product {
          display: grid;
          grid-template-columns: 100px 400px 100px 100px 100px 200px 100px 200px;
          grid-template-rows: 90px;
        }

        .product_2 {
          display: grid;
          grid-template-columns: 100px 300px 200px 100px 100px 200px 100px 200px;
          grid-template-rows: 90px;
        }

        .img_bg {
          display: flex;
          align-items:center;
        }

        .img {
          width: 55px;
          height:55px;
        }

        .img > img {
          width: 100%;
          height: 100%;
          object-fit : cover;
        }

        .img_txt {
          padding-left: 10px;
          display: flex;
          flex-direction: column;
          justify-content: center;
        }

        .first_txt {
          font-size: 14px;
          color: #9F9F9F;
        }

        .second_txt {
          color: #262626;
          font-weight: 500;
        }

        .su {
          display: flex;
          align-items: center;
          justify-content: center;
          gap: 5px;
        }

        .su_txt {
            background-color: #F3F3F3;
            cursor: pointer;
        }

        .number {
          width:38px;
          height: 25px;
          text-align: center;
          color:#8F8F8F;
        }

        .su_txt {
          width:38px;
          height: 25px;
          border: 1px solid #DBDBDB; 
          text-align: center;
          color:#8F8F8F;
        }

        .number > span,
        .su_txt > span{
          line-height: 25px;
        }

        .dis {
          display: flex;
          flex-direction: column;
          justify-content: center;
          text-align: center;
        }

        .price,
        .last_price {
            font-weight: 500;
        }

        .price,
        .pv,
        .last_price {
          text-align: center;
          line-height: 90px;
        }

        .check,
        .img_bg,
        .su,
        .price,
        .pv,
        .dis,
        .last_price {
            border-bottom:1px solid #CCCCCC;
            font-size: 14px;
        }

        .number > span,
        .su_txt > span,
        .dis > p {
            font-size: 14px;
        }
        

        .pv {
            border-left: 1px solid #CCCCCC;
            border-right: 1px solid #CCCCCC;
        }

        .dis {
            border-right: 1px solid #CCCCCC;
        }

        .last_price {
            border-right: 1px solid #CCCCCC;
        }

        .border-bottom {
            border-bottom :1px solid #CCCCCC;
        }

        .mono_txt {
            color :#8F8F8F;
        }

        /*옵션이 추가 됬을 떄 */
        .second_product {
          display: grid;
          grid-template-columns: 100px 400px 100px 100px 100px 200px 100px 200px;
          grid-template-rows: 180px;
        }

        .second_product_2 {
          display: grid;
          grid-template-columns: 100px 300px 200px 100px 100px 200px 100px 200px;
          grid-template-rows: 180px;
        }

        .second_product > .check {
            height: 180px;
            width: 100px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .second_product > .check > span {
          font-size: 20px;
          display: block;
          width: 20px;
          height: 20px;
          border: 1px solid #ccc;
          color: #ccc;
          cursor: pointer;
        }

        .second_product > .second_product_img {
          height: 180px;
        }

        .second_product > .second_product_img > .img_bg {
          height: 90px;
        }

        .second_product > .second_su {
          height: 180px;
        }

        .second_product > .second_su > .su {
          height: 90px;
        }

        .second_product > .second_price {
          height: 180px;
        }

        .second_product > .second_price > .price{
          height: 90px;
        }

        .second_product > .second_pv {
          height: 180px;
        }

        .second_product > .second_pv > .pv {
          height: 90px;
        }

        .second_product > .second_dis {
          height: 180px;
        }

        .second_product > .second_dis > .dis{
          height: 180px;
        }

        .second_product > .second_last_price {
          height: 180px;
        }

        .second_product > .second_last_price > .last_price {
          height: 180px;
        }

        .second_product > .second_last_price > .last_price > span {
          line-height: 180px;
        }

        .second_last_delivery {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .second_last_delivery > p {
            text-align: center;
            font-size: 14px;
        }

        /*삭제 버튼*/
        .delete_wrap {
            display:flex;
            align-items: center;
            justify-content: space-between;
            margin: 30px 0;
        }

        .delete_button {
            width: 150px;
            height : 35px;
            color:#115C5E;
            border: 1px solid #115C5E;
            font-weight:500;
            text-align: center;
            cursor: pointer;
            border-radius:5px;
            
        }

        .delete_button > span {
            line-height: 35px;
        }

        .left_txt {
            font-size: 14px;
            color:#8F8F8F;
        }

        /*총 상품 금액*/
        .product_price_Area_wrap {
            display: flex;
            text-align: center;
        }

        .product_price_Area {
            border: 1px solid #111111;
            margin-top: 40px;
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

        /*주문 버튼*/
        .product_price_Area_button_wrap {
            display: flex;
            align-items: center;
            justify-content:center;
            gap: 20px;
            margin: 30px; 0;
        }

        .left_button {
            width: 290px;
            height: 56px;
            text-align: center;
            border: 1px solid #115C5E;
            color: #115C5E;
            border-radius: 5px;
            font-weight: 500;
            cursor:pointer;
        }
        .left_button > span {
            line-height: 56px;
        }

        .right_button {
            width: 290px;
            height: 56px;
            text-align: center;
            border: 1px solid #115C5E;
            color: white;
            background-color:#115C5E;
            border-radius: 5px;
            font-weight: 500;
            cursor:pointer;

        } 

        .right_button > span {
            line-height: 56px;
        }

        /*best wrap*/
        .best_wrap_inner {
            max-width: 1300px;
            margin: auto;
            padding: 5rem 0;
        }

        .best_txt {
            text-align: center;
        }

        .best_menu {
            max-width: 500px;
            margin: auto; 
            text-align: center;
            padding: 2rem 0;
        }

        .best_menu > ul {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 1rem;
        }

        .best_menu > ul > a > li {
            display: inline;
            border-bottom: 2px solid #9f9f9f;
            padding-bottom: 0.5rem;
            color:#9f9f9f;
            cursor: pointer;
        }

        .best_menu > ul > a > li:hover {
            color:#115c5e;
            border-color:#115c5e;
            font-weight: 700;
        }

        .best_content {
            margin-top: 30px;
        }

        .best_content_wrap_inner {
            max-width: 1300px;
            margin: auto;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            column-gap: 1rem;
        }

        .best_content_wrap_inner > .content {
            position: relative;
        }

        .main_txt {
            text-align: left;
            padding: 0px 0px 10px 20px;
            border-bottom: 1px solid #f0f0f0;
            color:#262626;
            font-weight: 400;
        }

        .best_content_wrap_inner > .content > a > .content_wrap {
            width: 311px;
            height: 300px;
            border: 1px solid #cacaca;
            overflow: hidden;
            cursor:pointer;
        }

        .best_content_wrap_inner > .content > a > .content_wrap > img {
            width: 100%;
            height: 100%;
            object-fit:cover;
        }

        .best_content_wrap_inner > .content > a > .content_wrap > img:hover {
            transform:scale(1.1);
            transition:.6s;   
        }

        .best_content_wrap_inner > .content > a > .content_wrap > .best_txt {
            background: #115C5E;
            border-radius: 6px;
            color: #ffffff;
            width: 48px;
            padding: 2px 0px;
            text-align: center;
            position: absolute;
            top: 10px;
            left: 10px;
        }

        .relation_Item_All_Info_Area {
            padding: 10px 10px;
            width: 100%;
        }

        .relation_Item_All_Info_Area > div {
            padding-top: 5px;
        }
        .relation_Item_Price_Area {
            display: flex;
            align-items: center;
        }
        
        .relation_Item_Discount_Price {
            font-weight:700;
            margin-right: 10px;
        }
        .relation_Item_Discount_Price_Before {
            color:#9F9F9F;
            text-decoration: line-through;
            margin-left: 10px;
            margin-right: 10px;
            
        }
        .relation_Item_Discount_Price_Percent {
            font-weight:700;
            margin-left: 10px;
            margin-right: 10px;
        }

        .relation_Item_Price_Info {
            border: 1px solid #D8D8D8;
            border-radius: 6px;
            width: fit-content;
            padding: 2px 4px;
        }
        .relation_Item_Price_Info_Area {
           display:flex;
           gap:10px; 
        }

        /*체크 표시*/
        .top_check > span,
        .check > span,
        .second_product > .check > span {
            color: #ccc; 
            background-color: initial; 
        }
        .top_check > span.active,
        .check > span.active,
        .second_product > .check > span.active {
            color: white;
            background-color: #115C5E;
        }

         input::-webkit-outer-spin-button,
         input::-webkit-inner-spin-button {
            -webkit-appearance: none;
        }

        .number > input {
            width: 38px;
            height: 25px;
            text-align: center;
        }

        /*기능 css*/
        #product2 {
            margin-top: 20px;
        }
        .le_second_price,
        .le_second_pv,
        .le_second_dis,
        .le_second_last_price {
            display:flex;
           justify-content:center;
           align-items:center;

        }

        .option,
        .le_second_dis,
        .le_second_option {
           flex-direction: column;
        }

        .he_100 {
            height:100%;
        }
        .he_50 {
            height:50%;
        }

        .border_none {
            border-bottom:none;
        }

        .option,
        .le_second_option {
            display:flex;
            justify-content:center;
            align-items:center;
            text-align: center;
            border-left: 1px solid #cccccc;
            border-right: 1px solid #cccccc;
            border-bottom: 1px solid #cccccc;
        }

        .le_second_price,
        .le_second_pv,
        .le_second_dis,
        .le_second_last_price {
            border-right: 1px solid #cccccc;
            border-bottom: 1px solid #cccccc;
        }

        .option > p:first-child,
        .le_second_option > p:first-child {
            font-size: 14px;
            color:#262626;
        }

        .option > p:last-child,
        .le_second_option > p:last-child {
            font-size: 14px;
            color:#949494;
        }

        .le_second_price, 
        .le_second_last_price {
            font-size: 14px;
            font-weight:500;
        }

        .le_second_pv,
        .le_second_dis > p {
            font-size:14px;
            color:#8F8F8F;
        }

        .le_delivery {
            text-align:center;
            border-bottom: 1px solid #cccccc;
        }

        .le_delivery > p {
            font-size: 14px;
            color:#8F8F8F;
        }
    </style>

    <script>
        $(document).ready(function () {            
            $('.product > .check').click(function () {
                $(this).children('span').toggleClass('active');
            });

            $('.second_product > .check > span').click(function () {
                $(this).toggleClass('active');
            });

            $('.top_check > span').click(function () {
                $('.top_check > span, .check > span, .second_product > .check > span').toggleClass('active');
            });
        });
    </script>

    <%--사용자 상품 갯수 변경--%>
    <script>
        $(document).ready(function () {
            $('.su_txt').click(function () {
                var shouldModify = confirm('상품 수량을 수정하시겠습니까?');
                if (shouldModify) {
                    var enteredNumber = $('.number input').val();
                    if (enteredNumber) {
                        $('.number span').text(enteredNumber);
                    }
                }
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('.all_menu').click(function () {
                $('#product1, #product2').css('display','block');
                $('#product1_title, #product2_title').css('display', 'block');
                $('.all_menu').css('color', 'white');
                $('.all_menu').css('background-color', '#115C5E');
                $('.left_menu, .right_menu').css('color', 'black');
                $('.left_menu, .right_menu').css('background-color', '#fff');
            });

            $('.left_menu').click(function () {
                $('#product1').css('display', 'block');
                $('#product2').css('display', 'none');
                $('#product1_title, #product2_title').css('display', 'none');
                $('.left_menu').css('color', 'white');
                $('.left_menu').css('background-color', '#115C5E');
                $('.all_menu, .right_menu').css('color', 'black');
                $('.all_menu, .right_menu').css('background-color', '#fff');
            });

            $('.right_menu').click(function () {
                $('#product2').css('display', 'block');
                $('#product1').css('display', 'none');
                $('#product1_title, #product2_title').css('display', 'none');
                $('.right_menu').css('color', 'white');
                $('.right_menu').css('background-color', '#115C5E');
                $('.all_menu, .left_menu').css('color', 'black');
                $('.all_menu, .left_menu').css('background-color', '#fff');
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id ="sub_content">
        <div class="sub_layout">
            <div id="content">
                <!--head menu-->
                <div class="head_menu">
                    <div class="all_menu">
                        <span>전체보기</span>
                    </div>
                    <div class="head_menu_wrap">
                        <div class="left_menu">
                            <span>일반구매(3개)</span>
                        </div>
                        <div class="right_menu">
                            <span>정기배송(2개)</span>
                        </div>
                    </div>
                </div>
                <!--product content-->
                <div class="product_content" id="product1">
                    <div class="product_content_wrap">
                        <div class="product_content_inner">
                            <div class="product_title">

                                <%--일반구매--%>
                                <div class="nomal_title" id="product1_title">
                                    <span>일반구매</span>
                                </div>

                                <div class="title">
                                    <ul>
                                        <li class="top_check">
                                            <span class="material-icons">done</span>
                                        </li>
                                        <li>상품정보</li>
                                        <li>수량</li>
                                        <li>상품금액</li>
                                        <li>PV</li>
                                        <li>할인/적립</li>
                                        <li>결제금액</li>
                                        <li>배송비</li>
                                    </ul>
                                </div>

                                <div class="product_area">
                                    <div class="product_area_wrap">
                                        <div class="product_area_wrap_inner">
                                            <!--첫번째 상품-->
                                            <div class="product">
                                                <div class="check">
                                                    <span class="material-icons">done</span>
                                                </div>
                                                <div class="img_bg">
                                                    <div class="img">
                                                        <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                    </div>
                                                    <div class="img_txt">
                                                        <p class="first_txt">
                                                            신당케어
                                                        </p>
                                                        <p class="second_txt">
                                                            비건오메가3 (30일분)
                                                        </p>
                                                    </div>
                                                </div>
                                                
                                                <div class="su">
                                                    <div class="number">
                                                        <input type="number" value="1">
                                                    </div>
                                                    <div class="su_txt">
                                                        <span>수정</span>
                                                    </div>
                                                </div>

                                                <div class="price">
                                                    <span>88,400원</span>
                                                </div>

                                                <div class="pv mono_txt">
                                                    <span>36,000원</span>
                                                </div>

                                                <div class="dis">
                                                    <p class="mono_txt">
                                                        등급할인 -1,200원 
                                                    </p>
                                                    <p class="mono_txt"> 
                                                        마일리지 +588원
                                                    </p>                                               
                                                </div>

                                                <div class="last_price">
                                                    <span>88,400원</span>
                                                </div>
                                                
                                                <div class="delivery">
                                                    
                                                </div>                                                                                           
                                            </div>
                                            <!--두번째 상품-->
                                            <div class="second_product">
                                                <div class="check">
                                                    <span class="material-icons">done</span>
                                                </div>
                                                <div class="second_product_img">
                                                    <div class="img_bg">
                                                        <div class="img">
                                                            <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                        </div>
                                                        <div class="img_txt">
                                                            <p class="first_txt">
                                                                신당케어
                                                            </p>
                                                            <p class="second_txt">
                                                                비건오메가3 (30일분)
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="img_bg">
                                                        <div class="img">
                                                            <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                        </div>
                                                        <div class="img_txt">
                                                            <p class="first_txt">
                                                                신당케어
                                                            </p>
                                                            <p class="second_txt">
                                                                비건오메가3 (30일분)
                                                            </p>
                                                        </div>
                                                    </div>

                                                </div>
                        
                                                <div class="second_su">
                                                    <div class="su">
                                                        <div class="number">
                                                            <input type="number" value="1">
                                                        </div>
                                                        <div class="su_txt">
                                                            <span>수정</span>
                                                        </div>
                                                    </div>
                                                    <div class="su">
                                                        <div class="number">
                                                            <input type="number" value="1">
                                                        </div>
                                                        <div class="su_txt">
                                                            <span>수정</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="second_price">
                                                    <div class="price">
                                                        <span>88,400원</span>
                                                    </div>
                                                    <div class="price">
                                                        <span>88,400원</span>
                                                    </div>
                                                </div>
                                                    
                                                <div class="second_pv">
                                                    <div class="pv mono_txt">
                                                        <span>36,000원</span>
                                                    </div>
                                                    <div class="pv mono_txt">
                                                        <span>36,000원</span>
                                                    </div>
                                                </div>
                                                    
                                                <div class="second_dis">
                                                    <div class="dis">
                                                        <p class="mono_txt">
                                                            등급할인 -1,200원 
                                                        </p>
                                                        <p class="mono_txt">
                                                            마일리지 +588원
                                                        </p>                                               
                                                    </div>
                                                </div>
                                                   
                                                <div class="second_last_price">
                                                    <div class="last_price">
                                                        <span>88,400원</span>
                                                    </div>
                                                </div>
                                                
                                                <div class="second_last_delivery">
                                                    <p class="mono_txt">
                                                        배송비<br />
                                                        0원 <br />
                                                        (택배-선결제)
                                                    </p>
                                                </div>                                      
                                            </div>

                                            <!--세번째 상품-->
                                            <div class="product">
                                                <div class="check">
                                                    <span class="material-icons">done</span>
                                                </div>
                                                <div class="img_bg">
                                                    <div class="img">
                                                        <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                    </div>
                                                    <div class="img_txt">
                                                        <p class="first_txt">
                                                            신당케어
                                                        </p>
                                                        <p class="second_txt">
                                                            비건오메가3 (30일분)
                                                        </p>
                                                    </div>
                                                </div>
                                                
                                                <div class="su">
                                                    <div class="number">
                                                        <input type="number" value="1">
                                                    </div>
                                                    <div class="su_txt">
                                                        <span>수정</span>
                                                    </div>
                                                </div>

                                                <div class="price">
                                                    <span>88,400원</span>
                                                </div>

                                                <div class="pv mono_txt">
                                                    <span>36,000원</span>
                                                </div>

                                                <div class="dis">
                                                    <p class="mono_txt">
                                                        등급할인 -1,200원 
                                                    </p>
                                                    <p class="mono_txt">
                                                        마일리지 +588원
                                                    </p>                                               
                                                </div>

                                                <div class="last_price">
                                                    <span>88,400원</span>
                                                </div>
                                                <div class="delivery border-bottom">
                                                    
                                                </div>                                                 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <%--정기배송--%>
                <!--product content-->
                <div class="product_content">
                    <div class="product_content_wrap" id="product2">
                        <div class="product_content_inner">
                            <div class="product_title">

                                <%--일반구매--%>
                                <div class="nomal_title" id="product2_title">
                                    <span>정기구매</span>
                                </div>

                                <div class="title_2">
                                    <ul>
                                        <li class="top_check">
                                            <span class="material-icons">done</span>
                                        </li>
                                        <li>상품정보</li>
                                        <li>옵션</li>
                                        <li>상품금액</li>
                                        <li>PV</li>
                                        <li>할인/적립</li>
                                        <li>결제금액</li>
                                        <li>배송비</li>
                                    </ul>
                                </div>

                                <div class="product_area">
                                    <div class="product_area_wrap">
                                        <div class="product_area_wrap_inner">
                                            <!--첫번째 상품-->
                                            <div class="product_2">
                                                <div class="check">
                                                    <span class="material-icons">done</span>
                                                </div>
                                                <div class="img_bg">
                                                    <div class="img">
                                                        <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                    </div>
                                                    <div class="img_txt">
                                                        <p class="first_txt">
                                                            신당케어
                                                        </p>
                                                        <p class="second_txt">
                                                            비건오메가3 (30일분)
                                                        </p>
                                                    </div>
                                                </div>
                                                
                                                <div class="option">
                                                    <p>
                                                        매달 10일 / 3개월 (총 3회) 
                                                    </p>
                                                    <p>
                                                        21% 할인 [6개월분] 신당케어 (22,400원 할인) 36,400원
                                                    </p>
                                                </div>

                                                <div class="price">
                                                    <span>88,400원</span>
                                                </div>

                                                <div class="pv mono_txt">
                                                    <span>36,000원</span>
                                                </div>

                                                <div class="dis">
                                                    <p class="mono_txt">
                                                        등급할인 -1,200원 
                                                    </p>
                                                    <p class="mono_txt"> 
                                                        마일리지 +588원
                                                    </p>                                               
                                                </div>

                                                <div class="last_price">
                                                    <span>88,400원</span>
                                                </div>
                                                
                                                <div class="delivery">
                                                    
                                                </div>                                                                                           
                                            </div>
                                            <!--두번째 상품-->
                                            <div class="second_product_2">
                                                <div class="check he_100">
                                                    <span class="material-icons">done</span>
                                                </div>
                                                <div class="second_product_img">
                                                    <div class="img_bg he_50">
                                                        <div class="img">
                                                            <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                        </div>
                                                        <div class="img_txt">
                                                            <p class="first_txt">
                                                                신당케어
                                                            </p>
                                                            <p class="second_txt">
                                                                비건오메가3 (30일분)
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="img_bg he_50">
                                                        <div class="img">
                                                            <img src="/Source/client/image/detail_bg_img.png" alt="Alternate Text" />
                                                        </div>
                                                        <div class="img_txt">
                                                            <p class="first_txt">
                                                                신당케어
                                                            </p>
                                                            <p class="second_txt">
                                                                비건오메가3 (30일분)
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="le_second_option">
                                                    <p>
                                                        매달 10일 / 3개월 (총 3회) 
                                                    </p>
                                                    <p>
                                                        21% 할인 [6개월분] 신당케어 (22,400원 할인) 36,400원
                                                    </p>
                                                </div>

                                                <div class="le_second_price">
                                                    <span>88,400원</span>
                                                </div>

                                                <div class="le_second_pv">
                                                    <span>36,000원</span>
                                                </div>

                                                <div class="le_second_dis">
                                                    <p>
                                                        등급할인 -1,200원 
                                                    </p>
                                                    <p>
                                                        마일리지 +588원
                                                    </p>
                                                </div>
                        
                                                <div class="le_second_last_price">
                                                    <span>88,400원</span>
                                                </div>

                                                <div class="le_delivery">
                                                    <p>
                                                        배송비
                                                    </p>
                                                    <p>
                                                        0원
                                                    </p>
                                                    <p>
                                                       (택배-선결제)
                                                    </p>
                                                </div>
                                      
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <%--선택 상품 삭제 --%>
                <div class="delete">
                    <div class="delete_wrap">
                        <div class="delete_button">
                            <span>선택상품삭제</span>
                        </div>
                        <div class="left_txt">
                            <span>장바구니는 일정기간만 보관됩니다.</span>
                        </div>
                    </div>
                </div>
                <%--총 상품 금액--%>
                <div class="product_price_Area">
                    <div class="product_price_Area_wrap">
                        <div class="product_price_Area_first">
                            <p>
                                총 1개의 상품금액                              
                            </p>
                            <p>
                                128,400원
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
                                128,400원    
                            </p>  
                            <p>                                 
                                적립 마일리지 = 588원
                            </p>  
                        </div>
                    </div>
                </div>
                <%--총 상품 금액 주문 버튼--%>
                <div class="product_price_Area_button">
                    <div class="product_price_Area_button_wrap">
                        <div class="left_button">
                            <span>선택 상품 주문</span>
                        </div>
                        <div class="right_button">
                            <span>전체 상품 주문</span>
                        </div>
                    </div>
                </div>
               <%--best--%>
                
            </div>
        </div>
    </div>
        </div>
</asp:Content>
