<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_MAINPROD_BEST.aspx.cs" Inherits="drKid.Source.m.m_mainProd.M_MAINPROD_BEST" %>
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
        #hidden-field {
            display:none;   
        }
        /*BEST 상품 관련*/
        .best_txt {
            padding:0;
        }
        .best_Cate  {
            background: #fff;
            color: var(--drkid_positive);
            border-radius: 15px;
            padding: 0 0.3rem;
            border: 1px solid var(--main_color);
            font-weight: 500 !important;
        }
        .activeCate {
            color: #fff !important;
            border-bottom-color: #115c5e !important;
            background: var(--main_color);
            border-radius: 15px;
            font-weight: 500 !important;
            padding: 0 0.3rem;
        }
        .custom_content_wrap {
            position:relative;
            min-width: 7rem;
            min-height: 7rem;
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
        /*.no_img {
            width:100% !important;
            height:100% !important;     
            margin: 0 auto;

        }*/
        .sub_txt {
            text-align:center;
        }
        .best_content {
            padding: 0.5rem 15px;
        }
        .best_wrap {
            padding: 1rem 0;
        }
        .best_wrap_inner {
            overflow-x: hidden;
        }
        .best_menu {
            padding-left: 15px;
            overflow-x: scroll;
        }
        .best_menu > ul {
            display: flex;
            width: 800px;
            gap: 9px;
            padding: 0.5rem 0;
        }
        .best_content_wrap_inner {
            padding: 0;
        }
        .relation_Item_Price_Area_Price {
            display: flex;
            align-items: center;
            gap: 1.5rem 0.3rem;
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
        .best_button {
            padding-top: 1rem;
        }
        .best_button > .best_button_wrap > .button {
            height: 1.5rem;
        }
    </style>
    <script>
        //BEST 카테고리 클릭 시 해당 카테고리에 해당하는 제품 보여줌
        function showProduct(target) {
            $(".content").hide();
            //$("[data-target='" + target + "']").show();
            $("[data-target='" + target + "']").css({
                display: 'block',
                position: 'relative',
                top: '20px',
                opacity: 0
            }).animate({
                top: '0px',
                opacity: 1
            }, 500);
        }

        $(document).ready(function () {
            //최초화면 세팅
            $(".best_Cate:first").addClass("activeCate"); //첫번째 베스트 카테고리 활성화
            var idValue = $(".activeCate").attr("id");
            $(".content").hide();
            $("[data-target='" + idValue + "']").show(); //첫번째 베스트에 해당하는 제품 보여줌
            //베스트 카테고리 클릭 이벤트
            $(".best_Cate").on("click", function () {
                $(".best_Cate").removeClass("activeCate");
                $(this).addClass("activeCate");
                showProduct($(this).attr("id"));
            });

            //prev button
            $('.prev_button').click(function() {
                window.history.back();
            });

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
          <input type="text" name="flag" id="flag" value="" />
    </div>

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
                    <span>BEST</span>
                </div> 
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>

        <div class="best">
            <div class="best_wrap">
                <div class="best_wrap_inner">
                    <div class="best_txt">
                        <%--<div class="main_txt main_title-font">
                            <span class="GSans">BEST</span>
                        </div>--%>
                        <div class="sub_txt lower-font">
                            <span class="mono_dea_color">닥터키드니의 베스트 상품을 만나보세요.</span>
                        </div>
                    </div>
                    <%--BEST 상품 카테고리 영역--%>
                    <div class="best_menu">
                        <%if (BEST_CATE_LIST.Rows.Count > 0)
                         {%>
                            <ul>
                                 <%for (int i = 0; i < BEST_CATE_LIST.Rows.Count; i++)
                                { %>
                                    <li class="best_Cate m_lower_font" id="<%=BEST_CATE_LIST.Rows[i]["MAIN_SID"]%>"><%=BEST_CATE_LIST.Rows[i]["TAB_TITLE"] %></li>
                                <%}%>
                            </ul>
                        <%}%>
                    </div>
                    <%--BEST 상품 전체영역--%>
                    <div class="best_content">
                        <%if (BEST_PROD_LIST.Rows.Count > 0)
                         {%>
                            <div class="best_content_wrap">
                                    <div class="best_content_wrap_inner">
                             <%for (int j = 0; j < BEST_PROD_LIST.Rows.Count; j++)
                                { %>
                            
                                        <div class="content m_best" data-target="<%=BEST_PROD_LIST.Rows[j]["MAIN_SID"]%>">
                                            <a href="/Source/m/my/M_M_PRODUCT_DETAIL.aspx">
                                                <div class="content_wrap custom_content_wrap" id="<%=BEST_PROD_LIST.Rows[j]["PRODUCT_SID"]%>">


                                                     <%if (!string.IsNullOrEmpty(Convert.ToString(BEST_CATE_EDMS.Rows[j]["TARGET_READ_PATH"])))
                                                      { %>
                                                        <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BEST_CATE_EDMS.Rows[j]["TARGET_READ_PATH"] %>'/>
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
                                                    <span><%=BEST_PROD_LIST.Rows[j]["CATEGORY_NAME"]%></span>
                                                </div>
                                                <div class="relation_Item_Name_Info m_middle_font">
                                                    <span><%=BEST_PROD_LIST.Rows[j]["PRODUCT_NM"]%></span>
                                                </div>
                                                <div class="relation_Item_Price_Area">
                                                    <div class="relation_Item_Price_Area_Price">
                                                        <div class="relation_Item_Discount_Price m_middle_font">
                                                            <span><%=BEST_PROD_LIST.Rows[j]["VIEW_SALE_RATE"]%></span>
                                                        </div>
                                                        <div class="relation_Item_Discount_Price_Before m_lower_font">
                                                            <span><%=BEST_PROD_LIST.Rows[j]["SALE_RATE"]%></span>
                                                        </div>
                                                    </div>
                                                    <div class="relation_Item_Discount_Price_Percent m_middle_font main_color">
                                                        <span><%=BEST_PROD_LIST.Rows[j]["DISCOUNT_PER"]%>%</span>
                                                    </div>
                                                </div>
                                                <div class="relation_Item_Price_Info_Area">
                                                    <%if (!string.IsNullOrEmpty(Convert.ToString(BEST_PROD_LIST.Rows[j]["USER_SALE_RATE"])))
                                                      { %>
                                                            <div class="relation_Item_Price_Info m_lowerst_font"><span>회원 할인<%=BEST_PROD_LIST.Rows[j]["USER_SALE_RATE"]%>%</span></div>
                                                    <%}%> 
                                                    <%if (!string.IsNullOrEmpty(Convert.ToString(BEST_PROD_LIST.Rows[j]["REBUY_RATE"])))
                                                      { %>
                                                            <div class="relation_Item_Price_Info m_lowerst_font"><span>재구매 추가 할인 <%=BEST_PROD_LIST.Rows[j]["REBUY_RATE"]%>%</span></div>
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
