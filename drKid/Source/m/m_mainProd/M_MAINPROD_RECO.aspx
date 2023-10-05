﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_MAINPROD_RECO.aspx.cs" Inherits="drKid.Source.m.m_mainProd.M_MAINPROD_RECO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myPage {
           background-color:#FFFFFF;
           /*padding: 0 15px;*/
        }

        .m_bottom {
            display:none;
        }

        .m_header {
            display:none;
        }

        #m_moblie_wrap {
            padding: 1rem 0 2rem 0;
        }

        /*마이페이지 헤더*/
        .myPageHeader {
            background-color:#fff;
        }

        .prev_button {
            text-align: center;
            display: flex;
            justify-content: center;
        }

        .prev_button > span {
            font-size: 14px;
            font-weight: 700;
        }

        .myPage_txt {
            font-weight: bold;
        }

        .myPage_product_icon {
            text-align: center;
            display: flex;
            justify-content: center;
            visibility: hidden
        }

        .myPageHeader_top {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding: 0 15px 0.5rem;
        }
        /*타이틀*/
         .affiliateMall_menu_main {
            font-size: 30px;
            color: #000;
            font-weight: 600;
            text-align: center;
            padding: 80px 0 20px;
        }
        .affiliateMall_menu_sub {
            padding: 40px 0 50px;
        }
        .affiliateMall_menu_sub > ul {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: auto;
            text-align: center;
        }
        .affiliateMall_menu_sub > ul > li {
            margin: 0 10px;
            padding: 5px 20px;
            border: 1px solid #d8d8d8;
            cursor: pointer;
        }
        .affiliateMall_menu_sub > ul > li:nth-child(2) {
            border-color:#115C5E;
            color:#115C5E;           
        }

        .affiliateMall_menu_sub > ul > li:hover {
            color: white;
            background-color:#115C5E;
            border-color:#115C5E;
        }
        /*이달의 추천상품 관련*/
        /*.custom_wrap_inner {
             padding: 110px 0 80px;
        }*/
         .activeCate {
            color: #115c5e  !important;
            border-bottom-color: #115c5e !important;
            font-weight: 700  !important;
        }
        .custom_content_wrap {
            position:relative;
            min-width: 6rem;
            min-height: 6rem;
        }
        /*추가*/
        .suggection_wrap {
            padding: 0px 15px;
        }
        .sub_txt {
            text-align:center;
        }
        .relation_Item_Price_Area_Price {
            display: flex;
            align-items: center;
            gap: 9px;
        }
        .relation_Item_Discount_Price {
            color:#000000;
            font-weight:600;
        }
        .relation_Item_Discount_Price_Before {
             text-decoration: line-through;
             color:#9F9F9F;
        }
        .relation_Item_All_Info_Area {
            padding: 0 0.2rem;
        }
        .relation_Item_Discount_Price_Percent  {
            font-weight: 600;
        }
        .relation_Item_Price_Info  > span {
            border: 1px solid var(--mono_line);
            padding: 0.1rem 0.3rem;
            border-radius: 6px;
        }
        .relation_Item_Name_Info  {
            font-weight:400;
        }
        .best_title_txt  {
            position: absolute;
            top: 5px;
            left: 5px;
            z-index: 99;

            background: var(--main_color);
            color: #fff;
            border-radius: 6px;
        }
        .best_title_txt > span {
            background: var(--main_color);
            color: #fff;
            border-radius: 6px;
            padding: 0.2rem 0.3rem
        }
        .best_button {
            padding-top: 1rem;
        }
        .best_button > .best_button_wrap > .button {
            height: 1.5rem;
        }
        .suggection_content_wrap_inner {
            gap: 1.5rem 0.3rem;
        }
    </style>
    <script>
        $(document).ready(function () {
            $(".prev_button").click(function () {
                window.history.back();
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
            <%--배송지 관리 헤더 top--%>
            <div class="myPageHeader_top">
               <%-- <a href="/Source/m/my/M_M_MYPAGE.aspx">--%>
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
               <%-- </a>--%>
                <div class="myPage_txt">
                    <span>이달의 추천상품</span>
                </div> 
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>
        <!--카테고리 메뉴-->
        <div class="suggection">
            <div class="suggection_wrap">
                <div class="suggection_wrap_inner custom_wrap_inner">
                    <div class="suggection_txt">
                        <%--<div class="main_txt main_title-font">
                            <span class="GSans">이달의 추천상품</span>
                        </div>--%>
                        <div class="sub_txt lower-font">
                            <span class="mono_dea_color">닥터키드니의 추천 상품을 만나보세요.</span>
                        </div>
                    </div>
                    
                     <div class="suggection_content">
                         <%if (RECO_PROD_LIST.Rows.Count > 0)
                          {%>
                        <div class="suggection_content_wrap">
                            <div class="suggection_content_wrap_inner">
                            <%for (int j = 0; j < RECO_PROD_LIST.Rows.Count; j++)
                            { %>
                                <div class="content">
                                    <a href="/Source/m/my/M_M_PRODUCT_DETAIL.aspx">
                                        <div class="content_wrap custom_content_wrap" id="<%=RECO_PROD_LIST.Rows[j]["PRODUCT_SID"]%>">

                                            <%if (!string.IsNullOrEmpty(Convert.ToString(RECO_PROD_EDMS.Rows[j]["TARGET_READ_PATH"])))
                                            { %>
                                                <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=RECO_PROD_EDMS.Rows[j]["TARGET_READ_PATH"] %>'/>
                                            <%}%> 
                                            <%else
                                            {%>
                                                <img src="/Source/image/no_img.svg" class="no_img"/>
                                            <%}%>

                                            <div class="best_title_txt m_lowerst_font">
                                                <span>BEST</span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="relation_Item_All_Info_Area">
                                        
                                        <div class="relation_Company_Info mono_dea_color m_lower_font">
                                            <span><%=RECO_PROD_LIST.Rows[j]["CATEGORY_NAME"]%></span>
                                        </div>
                                        <div class="relation_Item_Name_Info m_middle_font">
                                            <span><%=RECO_PROD_LIST.Rows[j]["PRODUCT_NM"]%></span>
                                        </div>
                                        <div class="relation_Item_Price_Area">
                                            <div class="relation_Item_Price_Area_Price">
                                                <div class="relation_Item_Discount_Price m_middle_font">
                                                    <span><%=RECO_PROD_LIST.Rows[j]["VIEW_SALE_RATE"]%></span>
                                                </div>
                                                <div class="relation_Item_Discount_Price_Before m_lower_font">
                                                    <span><%=RECO_PROD_LIST.Rows[j]["SALE_RATE"]%></span>
                                                </div>
                                            </div>
                                            <div class="relation_Item_Discount_Price_Percent m_middle_font main_color">
                                                <span><%=RECO_PROD_LIST.Rows[j]["DISCOUNT_PER"]%>%</span>
                                            </div>
                                        </div>
                                        <div class="relation_Item_Price_Info_Area">
                                             <%if (!string.IsNullOrEmpty(Convert.ToString(RECO_PROD_LIST.Rows[j]["USER_SALE_RATE"])))
                                                { %>
                                                    <div class="relation_Item_Price_Info  m_lowerst_font"><span>회원 할인<%=RECO_PROD_LIST.Rows[j]["USER_SALE_RATE"]%>%</span></div>
                                            <%}%> 
                                            <%if (!string.IsNullOrEmpty(Convert.ToString(RECO_PROD_LIST.Rows[j]["REBUY_RATE"])))
                                                { %>
                                                    <div class="relation_Item_Price_Info m_lowerst_font"><span>재구매 추가 할인 <%=RECO_PROD_LIST.Rows[j]["REBUY_RATE"]%>%</span></div>
                                            <%}%> 
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
        </div>
    </div>
</asp:Content>
