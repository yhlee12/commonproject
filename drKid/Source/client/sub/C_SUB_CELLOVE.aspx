﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_SUB_CELLOVE.aspx.cs" Inherits="drKid.Source.client.sub.C_SUB_CELLOVE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        /*페이징관련*/
        .number-button-Area {
            padding: 100px 0px 0px;
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
        .slider-container {
            height: 395px;
        }
        .main_Box {
            padding: 0px 20px;
            max-width: 1340px;
            margin: 0 auto;
        }
        .Title_Area {
            text-align:center;
            padding: 0px 0px 60px 0px;
        }
        .main_Title_Txt {
            font-weight:500;
            padding: 15px 0px;
            font-size:30px;
        }
        .sub_Title_Txt {
            color:#9F9F9F;
        }
        .filter {
            padding: 80px 0 30px;
        }
        .filter_menu {
            display:flex;
            max-width: 1300px;
            height: 25px;
            margin: auto;
        }
        .filter_menu_front {
            display: flex;
        }
        .filter_menu_front > span {
            display: block;
            font-size: 18px;
            font-weight: 700;
        }
        .filter_menu_front > span:first-child {
            margin-right: 10px;
        }
        .filter_menu > ul {
            display: flex;
        }
        .filter_menu > ul > li {
            margin: 0 15px;
            font-size: 14px;
        }

        .affiliateMall_menu_sub > ul > li.activeLi {
            background-color:#115C5E;
            color: white;
        }

        .filter_menu > ul > li:hover {
            font-weight: 600;
            color:#115C5E;
            border-bottom:1px solid #115C5E  ;
            overflow: hidden;
            cursor: pointer;
        }
        .community_wrap_inner {
            display:grid;
            grid-template-columns: repeat(2,1fr);
            gap: 50px;
        }
        .community_content_title {
            border-bottom: 1px solid;
            font-weight: 600;
            font-size: 22px;
            padding: 0 0 10px 20px;
        }
        .community_list_wrap {
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
            border-bottom: 1px solid var(--mono_line);
            cursor: pointer;
        }
        .community_title_area {
            display: flex;
            gap: 10px;
        }
        .font-weight400 {
            font-weight: 400;
        }
        .font-weight500 {
            font-weight: 500;
        }

         /*문의 리스트*/
        .hd_Wrap {
            padding:15px 0px 0px 0px;
            /*width:1000px;*/
        }
        .hd_List_Column_Area {
            display: flex;
            padding: 15px 0px;
            background: #F9F9F9;
            text-align: center;
            width:100%;
            border-top: 1px solid #262626;
            gap: 10px;
        }
        .hd_List_Column_1_Area {
            width:10%;
            /*width: 179.69px;*/
        }
        .hd_List_Column_2_Area {
            width:60%;
            text-align: start;
            /*width: 484.64px;*/
        }
        .hd_List_Column_3_Area {
            width:10%;
            /*width: 146.68px;*/
        }
        .hd_List_Column_4_Area {
            width:10%;
            /*width: 99.8px;*/
        }
        .hd_List_Column_5_Area {
            width:10%;
            /*width: 99.8px;*/
        }
        .hd_List_Column {
            font-weight:500;
        }
        .hd_List_Row_Area {
            width: 100%;
        }
        .hd_List_Row {
            display: flex;
            padding: 20px 0px;
            align-items: center;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
            cursor:pointer;
            gap: 10px;
        }

        .hd_List_Row_1_Area {
            width:10%;
            /*cursor:pointer;*/
            /*width: 179.69px;*/
        }
        /*.new_Order_List_Row_2_Area_Wrap {
            display: grid;
            gap: 5px 0px;
        }*/
        .hd_List_Row_2_Area{
            width:60%;
            text-align:start;
            display: flex;
            gap: 5px
        }
        .hd_List_Row_3_Area {
            width:10%;
        }
        .hd_List_Row_4_Area {
            width:10%;
            /*width: 92px;*/
        }
        .hd_List_Row_5_Area {
            width:10%;
            /*width: 92px;*/
        }
        .hd_List_Row_1 {
            color:#828282;
            /*cursor:pointer;*/
        }
        .hd_List_Row_1_1 {
            font-weight: 400;
            cursor:pointer;
        }

        .hd_List_Row_2_1 {
             text-align: start;
         }
         .hd_List_Row_3 {
            font-weight: 400;
         }
         .hd_List_Row_4 {
             font-weight: 400;
             color: var(--mono_dea);
         }
        .hd_List_Row_4_1 {
            font-weight:400;
        }
        .hd_List_Title_Area_title {
            font-size: 22px;
            font-weight: 600;
            padding: 0 20px;
        }
        .hd_List_Title_Area_title_Btn {
            padding: 5px 30px;
            border: 1px solid #CCCCCC;
            cursor:pointer;
        }
        .hd_List_Title_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .SU_List_Title_Area_title {
            font-size: 30px;
            font-weight: 600;
            /*padding: 0 20px;*/
        }
        .SU_List_Title_Area_title_Btn {
            padding: 5px 30px;
            border: 1px solid #CCCCCC;
            color: var(--main_color);
        }
        .SU_List_Title_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 60px 0 30px;
        }

        .hd_Area {
             padding: 40px 0px 0px 0px;
        }
        .suggection_content_wrap_inner > .content > a > .content_wrap {
            width: 100%;
        }
        .suggection_content_wrap {
            position: relative;
        }
        .suggection_content_product_Btn {
            position:absolute;
            top: 50%;
            left: 50%;
            width: 1400px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            transform: translate(-50%, -50%);
        }
        .product_Btn {
            cursor:pointer;
        }
        .suggection_content_wrap_inner {
            overflow-x: hidden;
        }
        #hidden-field {
            display:none;
        }

        .hide-field {
            display:none;
        }
    </style>
    <script>
        $(document).ready(function () {
            $(".content_wrap").click(function () {
                location.href = "/Source/client/celebshop/C_CELEBSHOP_DETAIL_PAGE.aspx"
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
    </div>
    <div id="sub_content">
        <div class="sub_layout">
            <div id="content">
                <div class="main_Box">
                    <%--커뮤니티 타이틀--%>
                    <div class="Title_Area">
                        <div class="main_Title_Txt">셀럽#</div>
                        <div class="sub_Title_Txt lower-font">셀러브리티 회원들이 등록한 상품들을 만나보세요.</div>
                    </div>
                    <%--베너--%>
                    <div class="main_slider">
                        <div class="slide slide_wrap">
                            <div class="slide_item item1">
                                <img src="/Source/client/image/drkid_main_slide1.jpg" alt="Image 1">
                            </div>
                            <div class="slide_item item2">
                                <img src="/Source/client/image/drkid_main_slide2.jpg" alt="Image 2">
                            </div>
                            <div class="slide_item item3">
                                <img src="/Source/client/image/drkid_main_slide3.jpg" alt="Image 3">
                            </div>
                            <div class="slide_prev_button slide_button">
                                <span class="material-icons">chevron_left</span>
                            </div>
                            <div class="slide_next_button slide_button">
                                <span class="material-icons">chevron_right</span>
                            </div>
                            <ul class="slide_pagination"></ul>
                        </div>
                    </div>
                    <!--필터-->
                    <div class="filter">
                        <div class="filter_wrap">
                            <div class="filter_wrap_inner">
                                <div class="filter_menu">
                                    <div class="filter_menu_front">
                                        <span>FILTER</span>
                                        <span>|</span>
                                    </div>
                                    <ul>
                                        <li data-orderby="new" class="second_txt <%--<%=ORDER_BY == "" || ORDER_BY == "new" ? "first_txt" : "" %>--%>">신상품순</li>
                                        <!-- 추후 추가. -->
                                        <%--<li data-orderby="many" class="second_txt">추천순</li>
                                            <li data-orderby="count" class="second_txt">판매인기순</li>
                                            <li data-orderby="star" class="second_txt">상품평순</li>--%>
                                        <li data-orderby="lowcost" class="second_txt <%--<%=ORDER_BY == "lowcost" ? "first_txt" : "" %>--%>">판매인기순</li>
                                        <li data-orderby="highcost" class="second_txt <%--<%=ORDER_BY == "highcost" ? "first_txt" : "" %>--%>">할인순</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--커뮤니티 상품 컨텐츠--%>
                    <div class="suggection">
                        <div class="suggection_wrap">
                            <div class="suggection_wrap_inner">
                                <div class="suggection_content">
                                    <div class="suggection_content_wrap">
                                        <div class="SU_List_Title_Area">
                                            <%--                                            <div class="SU_List_Title_Area_title">셀러브리티의 선택! 셀럽# 상품들을 만나보세요.</div>
                                            <div class="SU_List_Title_Area_title_Btn">셀럽# 바로가기 ></div>--%>
                                        </div>

                                        <%--다음 이전버튼--%>
                                        <div class="suggection_content_product_Btn">
                                            <div class="product_Btn product_prev">
                                                <span class="material-icons">arrow_back_ios</span>
                                            </div>
                                            <div class="product_Btn product_next">
                                                <span class="material-icons">arrow_forward_ios</span>
                                            </div>
                                        </div>

                                        <div class="suggection_content_wrap_inner">
                                            <div class="content">
                                                <a href="#">
                                                    <div class="content_wrap">
                                                        <img src="/Source/client/image/business_frist_img.jpg" alt="community_content" src="" class="fade">
                                                    </div>
                                                </a>
                                                <div class="relation_Item_All_Info_Area">
                                                    <div class="relation_Company_Info mono_dea_color">
                                                        <span>신당케어</span>
                                                    </div>
                                                    <div class="relation_Item_Name_Info">
                                                        <span>신당케어 1box 1+1 120g</span>
                                                    </div>
                                                    <div class="relation_Item_Price_Area">
                                                        <div class="relation_Item_Discount_Price big-font">
                                                            <span>132,000</span>
                                                        </div>
                                                    </div>
                                                    <div class="relation_Item_Price_Info_Area">
                                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="content">
                                                <a href="#">
                                                    <div class="content_wrap">
                                                        <img src="/Source/client/image/business_frist_img.jpg" alt="community_content" src="" class="fade">
                                                    </div>
                                                </a>
                                                <div class="relation_Item_All_Info_Area">
                                                    <div class="relation_Company_Info mono_dea_color">
                                                        <span>신당케어</span>
                                                    </div>
                                                    <div class="relation_Item_Name_Info">
                                                        <span>신당케어 1box 1+1 120g</span>
                                                    </div>
                                                    <div class="relation_Item_Price_Area">
                                                        <div class="relation_Item_Discount_Price big-font">
                                                            <span>132,000</span>
                                                        </div>
                                                    </div>
                                                    <div class="relation_Item_Price_Info_Area">
                                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="content">
                                                <a href="#">
                                                    <div class="content_wrap">
                                                        <img src="/Source/client/image/business_frist_img.jpg" alt="community_content" src="" class="fade">
                                                    </div>
                                                </a>
                                                <div class="relation_Item_All_Info_Area">
                                                    <div class="relation_Company_Info mono_dea_color">
                                                        <span>신당케어</span>
                                                    </div>
                                                    <div class="relation_Item_Name_Info">
                                                        <span>신당케어 1box 1+1 120g</span>
                                                    </div>
                                                    <div class="relation_Item_Price_Area">
                                                        <div class="relation_Item_Discount_Price big-font">
                                                            <span>132,000</span>
                                                        </div>
                                                    </div>
                                                    <div class="relation_Item_Price_Info_Area">
                                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="content">
                                                <a href="#">
                                                    <div class="content_wrap">
                                                        <img src="/Source/client/image/business_frist_img.jpg" alt="community_content" src="" class="fade">
                                                    </div>
                                                </a>
                                                <div class="relation_Item_All_Info_Area">
                                                    <div class="relation_Company_Info mono_dea_color">
                                                        <span>신당케어</span>
                                                    </div>
                                                    <div class="relation_Item_Name_Info">
                                                        <span>신당케어 1box 1+1 120g</span>
                                                    </div>
                                                    <div class="relation_Item_Price_Area">
                                                        <div class="relation_Item_Discount_Price big-font">
                                                            <span>132,000</span>
                                                        </div>
                                                    </div>
                                                    <div class="relation_Item_Price_Info_Area">
                                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                                                    </div>
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
<%--                    <div class="pagenavigationstr" style="padding: 100px 0px;">
                    <%=pagenavigationstr%>
                </div>--%>
            </div>
        </div>
    </div>
</asp:Content>
