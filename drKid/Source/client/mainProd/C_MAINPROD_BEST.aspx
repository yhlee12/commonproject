<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MAINPROD_BEST.aspx.cs" Inherits="drKid.Source.client.mainProd.C_MAINPROD_BEST" %>
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
        #hidden-field {
            display:none;   
        }
        /*BEST 상품 관련*/
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
        });


    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
          <input type="text" name="flag" id="flag" value="" />
    </div>
    <div class="best">
        <div class="best_wrap">
            <div class="best_wrap_inner">
                <div class="best_txt">
                    <div class="main_txt main_title-font">
                        <span class="GSans">BEST</span>
                    </div>
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
                                <li class="best_Cate" id="<%=BEST_CATE_LIST.Rows[i]["MAIN_SID"]%>"><%=BEST_CATE_LIST.Rows[i]["TAB_TITLE"] %></li>
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
                            
                                    <div class="content" data-target="<%=BEST_PROD_LIST.Rows[j]["MAIN_SID"]%>">
                                        <a href="/Source/client/member/C_PRODUCT_DETAIL.aspx">
                                            <div class="content_wrap custom_content_wrap" id="<%=BEST_PROD_LIST.Rows[j]["PRODUCT_SID"]%>">


                                                 <%if (!string.IsNullOrEmpty(Convert.ToString(BEST_CATE_EDMS.Rows[j]["TARGET_READ_PATH"])))
                                                  { %>
                                                    <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BEST_CATE_EDMS.Rows[j]["TARGET_READ_PATH"] %>'/>
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
                                                <span><%=BEST_PROD_LIST.Rows[j]["CATEGORY_NAME"]%></span>
                                            </div>
                                            <div class="relation_Item_Name_Info">
                                                <span><%=BEST_PROD_LIST.Rows[j]["PRODUCT_NM"]%></span>
                                            </div>
                                            <div class="relation_Item_Price_Area">
                                                <div class="relation_Item_Discount_Price big-font">
                                                    <span><%=BEST_PROD_LIST.Rows[j]["VIEW_SALE_RATE"]%></span>
                                                </div>
                                                <div class="relation_Item_Discount_Price_Before lower-font">
                                                    <span><%=BEST_PROD_LIST.Rows[j]["SALE_RATE"]%></span>
                                                </div>
                                                <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                                    <span><%=BEST_PROD_LIST.Rows[j]["DISCOUNT_PER"]%>%</span>
                                                </div>
                                            </div>
                                            <div class="relation_Item_Price_Info_Area">
                                                <%if (!string.IsNullOrEmpty(Convert.ToString(BEST_PROD_LIST.Rows[j]["USER_SALE_RATE"])))
                                                  { %>
                                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 <%=BEST_PROD_LIST.Rows[j]["USER_SALE_RATE"]%>%</div>
                                                <%}%> 
                                                <%if (!string.IsNullOrEmpty(Convert.ToString(BEST_PROD_LIST.Rows[j]["REBUY_RATE"])))
                                                  { %>
                                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 <%=BEST_PROD_LIST.Rows[j]["REBUY_RATE"]%>%</div>
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
