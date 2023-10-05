<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MAINPROD_RECO.aspx.cs" Inherits="drKid.Source.client.mainProd.C_MAINPROD_RECO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*공통*/
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
        .custom_wrap_inner {
             padding: 110px 0 80px;
        }
         .activeCate {
            color: #115c5e  !important;
            border-bottom-color: #115c5e !important;
            font-weight: 700  !important;
        }
        .custom_content_wrap {
            align-items: center ;
            display: inline-flex ;
        }
        .no_img {
            width:100px !important;
            height:100px !important;     
            margin: 0 auto;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--카테고리 메뉴-->
    <div class="suggection">
            <div class="suggection_wrap">
                <div class="suggection_wrap_inner custom_wrap_inner">
                    <div class="suggection_txt">
                        <div class="main_txt main_title-font">
                            <span class="GSans">이달의 추천상품</span>
                        </div>
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
                                    <a href="/Source/client/member/C_PRODUCT_DETAIL.aspx">
                                        <div class="content_wrap custom_content_wrap" id="<%=RECO_PROD_LIST.Rows[j]["PRODUCT_SID"]%>">

                                            <%if (!string.IsNullOrEmpty(Convert.ToString(RECO_PROD_EDMS.Rows[j]["TARGET_READ_PATH"])))
                                            { %>
                                                <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=RECO_PROD_EDMS.Rows[j]["TARGET_READ_PATH"] %>'/>
                                            <%}%> 
                                            <%else
                                            {%>
                                                <img src="/Source/image/no_img.svg" class="no_img"/>
                                            <%}%>

                                            <div class="best_txt lowerst-font">
                                                <span>BEST</span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="relation_Item_All_Info_Area">
                                        
                                        <div class="relation_Company_Info mono_dea_color">
                                            <span><%=RECO_PROD_LIST.Rows[j]["CATEGORY_NAME"]%></span>
                                        </div>
                                        <div class="relation_Item_Name_Info">
                                            <span><%=RECO_PROD_LIST.Rows[j]["PRODUCT_NM"]%></span>
                                        </div>
                                        <div class="relation_Item_Price_Area">
                                            <div class="relation_Item_Discount_Price big-font">
                                                <span><%=RECO_PROD_LIST.Rows[j]["VIEW_SALE_RATE"]%></span>
                                            </div>
                                            <div class="relation_Item_Discount_Price_Before lower-font">
                                                <span><%=RECO_PROD_LIST.Rows[j]["SALE_RATE"]%></span>
                                            </div>
                                            <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                                <span><%=RECO_PROD_LIST.Rows[j]["DISCOUNT_PER"]%></span>
                                            </div>
                                        </div>
                                        <div class="relation_Item_Price_Info_Area">
                                             <%if (!string.IsNullOrEmpty(Convert.ToString(RECO_PROD_LIST.Rows[j]["USER_SALE_RATE"])))
                                                { %>
                                                    <div class="relation_Item_Price_Info lowerst-font">회원 할인 <%=RECO_PROD_LIST.Rows[j]["USER_SALE_RATE"]%>%</div>
                                            <%}%> 
                                            <%if (!string.IsNullOrEmpty(Convert.ToString(RECO_PROD_LIST.Rows[j]["REBUY_RATE"])))
                                                { %>
                                                    <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 <%=RECO_PROD_LIST.Rows[j]["REBUY_RATE"]%>%</div>
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
</asp:Content>
