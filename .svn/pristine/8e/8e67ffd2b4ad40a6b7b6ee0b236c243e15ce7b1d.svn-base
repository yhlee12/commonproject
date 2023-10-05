<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_E_EVENT_DETAIL.aspx.cs" Inherits="drKid.Source.m.eventDetail.M_E_EVENT_DETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         
        .Title_Area {
            text-align:center;
            padding: 0px 0px 40px 0px;
        }
        .main_Title_Txt {
            font-weight:500;
        }
        .sub_Title_Txt {
            color:#9F9F9F;
        }
        .show_All_Event_Area {
            display: flex;
            justify-content: flex-end;
             padding: 0px 0px 15px 0px;
        }
        .show_All_Event_Btn {
            color:#9F9F9F;
            /*width: 160px;
            padding: 4px 0px;*/
            padding: 0.1rem 0.4rem;
            border: 1px solid #9F9F9F;
            text-align: center;
            cursor:pointer;
        }
        .detail_Info_Title_Area {
            padding: 0.3rem 0;
            border-top: 1px solid #4E4E4E;
            border-bottom: 1px solid #E1E1E1;
        }
        .detail_Info_Title {
            font-weight:500;
        }
        .detail_Info_Period_Area {
            padding: 0.2rem 0;
            display: flex;
            justify-content: flex-end;
        }
        .detail_Info_Period {
            color:#BBBBBB;
            font-weight:400;
        }
        .detail_Info_Img_Area {
            width: 100%;
            min-height: 30rem;
            overflow: scroll;
            minhe: 60rem;
            background: #D8D8D8;
        }
        .padding_Area_50_0 {
             padding: 10px 0px;
        }
        .relation_Item_Title_area {
            padding: 1rem 0 0.3rem;
            border-bottom: 1px solid #E1E1E1;
        }
        .relation_Item_Title {
            font-weight:500;
        }
        
        .best_content_wrap_inner {
            padding: 10px 0px;
        }

        .best_img > iimg {
            border-top-right-radius: 5px;
             border-top-left-radius: 5px;
        }

        /*최하단 메뉴*/
        .m_bottom_wrap_inner > .icon_menu:first-child > span {
            color:#BBB;
        }
        .best_img {
            height: 7rem;
        }

    </style>
      <script>
          $(function () {
              $(".show_All_Event_Btn").click(function () {
                  location.href = "/Source/m/eventDetail/M_E_EVENT_LIST.aspx";
              });
          });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main_Box">
            <div class="Title_Area">
                <div class="main_Title_Txt">혜택존</div>
                <div class="sub_Title_Txt m_lower_font">닥터키드니 고객님들을 위한 특별한 혜택</div>
            </div>
            <div class="show_All_Event_Area">
                <div class="show_All_Event_Btn m_lower_font">
                    <span>전체 이벤트 보기 ></span>
                </div>
            </div>
            <%--전체 디테일 영역--%>
            <div class="detail_Info_Area">
                    <%if (EVENT_LIST.Rows.Count > 0)
                {%>
                    <%--디테일 제목 --%>
                    <div class="detail_Info_Title_Area">
                        <div class="detail_Info_Title m_middle_font"><%=EVENT_LIST.Rows[0]["BOARD_TITLE"]%></div>
                    </div>
                    <%--디테일 기간 --%>
                    <div class="detail_Info_Period_Area">
                        <div class="detail_Info_Period">
                                <%if (EVENT_LIST.Rows[0]["REAL_EVENT_TO"].ToString().Length > 12)
                                {%>
                                        <div class="item_info_2 main_color m_lower_font"><%=Convert.ToDateTime(EVENT_LIST.Rows[0]["EVENT_FROM"]).ToString("yyyy.MM.dd")%> ~ <%=Convert.ToDateTime(EVENT_LIST.Rows[0]["REAL_EVENT_TO"]).ToString("yyyy.MM.dd")%></div>
                                <%}%>
                                <%else
                                {%>
                                        <% if (EVENT_LIST.Rows[0]["REAL_EVENT_TO"].ToString() == "EVENT_END")
                                        {%>
                                                <div class="item_info_2 main_color m_lower_font"><%=Convert.ToDateTime(EVENT_LIST.Rows[0]["EVENT_FROM"]).ToString("yyyy.MM.dd")%> ~ 이벤트 종료 시</div>
                                        <%}%>
                                        <%else
                                        {%>
                                                <div class="item_info_2 main_color m_lower_font"><%=Convert.ToDateTime(EVENT_LIST.Rows[0]["EVENT_FROM"]).ToString("yyyy.MM.dd")%> ~ 쿠폰 소진 시</div>
                                        <%}%>
                                <%}%>
                        </div>
                    </div>
                    <%--디테일 이미지 --%>
                    <div class="detail_Info_Img_Area">
                        <%=EVENT_LIST.Rows[0]["BOARD_MESSAGE"]%>
                    </div>
                        <%if (RECO_PROD_LIST.Rows.Count > 0)
                        {%>
                        <%--연관상품 영역--%>
                        <div class="relation_Item_Area">
                            <div class="relation_Item_Title_area">
                                <div class="relation_Item_Title m_middle_font">연관상품 입니다</div>
                            </div>
                            <%--안내 텍스트--%>
                            <div id="hover5_wrap">
                                <div class="best_content_wrap_inner margin_bottom">
                                    <%for (int j = 0; j < RECO_PROD_LIST.Rows.Count; j++)
                                        { %>
                                    <div class="m_best">
                                        <a href="/Source/m/my/M_M_PRODUCT_DETAIL.aspx">
                                            <div class="best_img" id="<%=RECO_PROD_LIST.Rows[j]["PRODUCT_SID"]%>">

                                                <%if (!string.IsNullOrEmpty(Convert.ToString(RECO_PROD_EDMS.Rows[j]["TARGET_READ_PATH"])))
                                                    { %>
                                                <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=RECO_PROD_EDMS.Rows[j]["TARGET_READ_PATH"] %>' />
                                                <%}%>
                                                <%else
                                                    {%>
                                                <img src="/Source/image/no_img.svg" class="no_img" />
                                                <%}%>

                                                <div class="best_txt1">
                                                    <span>BEST</span>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="best_txt">
                                            <div class="main_title m_lower_font">
                                                <span><%=RECO_PROD_LIST.Rows[j]["CATEGORY_NAME"]%></span>
                                            </div>
                                            <div class="sub_title m_middle_font">
                                                <span><%=RECO_PROD_LIST.Rows[j]["PRODUCT_NM"]%></span>
                                            </div>
                                            <div class="relation_Item_Price_Area">
                                                <div class="discount_price">
                                                    <div class="second_price m_middle_font">
                                                        <span><%=RECO_PROD_LIST.Rows[j]["VIEW_SALE_RATE"]%></span>
                                                    </div>
                                                    <div class="original_price m_lower_font">
                                                        <span><%=RECO_PROD_LIST.Rows[j]["SALE_RATE"]%></span>
                                                    </div>
                                                </div>
                                                <div class="percent main_color m_middle_font">
                                                    <span><%=RECO_PROD_LIST.Rows[j]["DISCOUNT_PER"]%>%</span>
                                                </div>
                                            </div>
                                            <div class="bottom">
                                                <%if (!string.IsNullOrEmpty(Convert.ToString(RECO_PROD_LIST.Rows[j]["USER_SALE_RATE"])))
                                                    { %>
                                                <div class="bottom_txt m_lowerst_font">
                                                    <span>회원 할인 <%=RECO_PROD_LIST.Rows[j]["USER_SALE_RATE"]%>%</span>
                                                </div>
                                                <%}%>
                                                <%if (!string.IsNullOrEmpty(Convert.ToString(RECO_PROD_LIST.Rows[j]["REBUY_RATE"])))
                                                    { %>
                                                <div class="bottom_txt m_lowerst_font">
                                                    <span>재구매 추가 할인 <%=RECO_PROD_LIST.Rows[j]["REBUY_RATE"]%>%</span>
                                                </div>
                                                <%}%>
                                            </div>
                                        </div>
                                    </div>
                                    <%}%>
                                </div>
                            </div>
                        <%}%>

                    <%}%>
                </div>

            </div>
        </div>
</asp:Content>
