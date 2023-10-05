<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_EVENT_DETAIL.aspx.cs" Inherits="drKid.Source.client.events.C_EVENT_DETAIL" %>
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
        .main_Box {
            padding: 0px 20px;
            max-width: 1340px;
            margin: 0 auto;
        }
        .Title_Area {
            text-align:center;
            padding: 0px 0px 40px 0px;
        }
        .main_Title_Txt {
            font-weight:500;
            padding: 15px 0px;
            font-size:30px;
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
            width: 160px;
            padding: 4px 0px;
            border: 1px solid #9F9F9F;
            text-align: center;
            cursor:pointer;
        }
        .detail_Info_Title_Area {
            padding: 13px;
            border-top: 1px solid #4E4E4E;
            border-bottom: 1px solid #E1E1E1;
        }
        .detail_Info_Title {
            font-weight:500;
        }
        .detail_Info_Period_Area {
            padding: 13px;
            display: flex;
            justify-content: flex-end;
        }
        .detail_Info_Period {
            color:#BBBBBB;
            font-weight:400;
        }
        .detail_Info_Img_Area {
            width:1300px;
            min-height:400px;
        }
        .padding_Area_50_0 {
             padding: 50px 0px;
        }
        .relation_Item_Title_area {
            padding: 13px 37px;
            border-bottom: 1px solid #E1E1E1;
        }
        .relation_Item_Title {
            font-weight:500;
        }
        .relation_Item_List {
            padding: 20px 20px;
            display: grid;
            grid-template-columns: repeat(4,1fr);
            gap: 15px 0px;
        }
        .relation_Item {
            width: 295px;
            margin:0 auto;
        }
        .relation_Item_img {
            width: 295px;
            height: 295px;
            border: 1px solid #707070;
            position: relative;
        }
        .relation_Item_flag {
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
             width: 247px;
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
            /*display: grid;
            grid-template-columns: repeat(2,1fr);
            width: 295px;
            gap: 5px 0px;*/
            display: flex;
            gap: 10px; 
        }
        /*상품이미지*/
        .guideArea {
            padding: 13px 23px;
            border-bottom: 1px solid #E1E1E1;
            margin-bottom: 15px;
        }
        .guideTxt {
            font-weight: 500;
        }
        img.image_for_class {
            width: fit-content;
            height: fit-content;
            max-width: 100%;
        }
        img.image_for_class2 {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .custom_wrap_inner {
             padding: 110px 0 80px;
        }
        .custom_content_wrap {
            align-items: center ;
            display: inline-flex ;
            width: 300px  !important;
            height: 300px  !important;
            border: 1px solid #cacaca;
            overflow: hidden;
            cursor: pointer;
        }
        .no_img {
            width:100px !important;
            height:100px !important;     
            margin: 0 auto;
        }
        .C_suggection_content_wrap_inner {
            padding: 0px 20px;
            display: grid;
            grid-template-columns: repeat(4,1fr);
        }
    </style>
      <script>
          $(function () {
              $(".show_All_Event_Btn").click(function () {
                  location.href = "/Source/client/events/C_EVENT_LIST.aspx";
              });


          });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content" style="">
        <div class="sub_layout">
            <div id="content">
                <div class="main_Box">
                    <div class="Title_Area">
                        <div class="main_Title_Txt">이벤트</div>
                        <div class="sub_Title_Txt lower-font">닥터키드니 고객님들을 위한 특별한 혜택</div>
                    </div>
                    <div class="show_All_Event_Area">
                        <div class="show_All_Event_Btn lowerst-font">전체 이벤트 보기 ></div>
                    </div>
                    <%--전체 디테일 영역--%>
                    <div class="detail_Info_Area">
                         <%if (EVENT_LIST.Rows.Count > 0)
                        {%>
                            <%--디테일 제목 --%>
                            <div class="detail_Info_Title_Area">
                                <div class="detail_Info_Title lower-font"><%=EVENT_LIST.Rows[0]["BOARD_TITLE"]%></div>
                            </div>
                            <%--디테일 기간 --%>
                            <div class="detail_Info_Period_Area">
                                <div class="detail_Info_Period lowerst-font">
                                       <%if (EVENT_LIST.Rows[0]["REAL_EVENT_TO"].ToString().Length > 12)
                                        {%>
                                                <div class="item_info_2 main_color"><%=Convert.ToDateTime(EVENT_LIST.Rows[0]["EVENT_FROM"]).ToString("yyyy.MM.dd")%> ~ <%=Convert.ToDateTime(EVENT_LIST.Rows[0]["REAL_EVENT_TO"]).ToString("yyyy.MM.dd")%></div>
                                        <%}%>
                                        <%else
                                        {%>
                                                <% if (EVENT_LIST.Rows[0]["REAL_EVENT_TO"].ToString() == "EVENT_END")
                                                {%>
                                                        <div class="item_info_2 main_color"><%=Convert.ToDateTime(EVENT_LIST.Rows[0]["EVENT_FROM"]).ToString("yyyy.MM.dd")%> ~ 이벤트 종료 시</div>
                                                <%}%>
                                                <%else
                                                {%>
                                                        <div class="item_info_2 main_color"><%=Convert.ToDateTime(EVENT_LIST.Rows[0]["EVENT_FROM"]).ToString("yyyy.MM.dd")%> ~ 쿠폰 소진 시</div>
                                                <%}%>
                                        <%}%>
                                </div>
                            </div>
                            <%--디테일 이미지 --%>
                            <div class="detail_Info_Img_Area">
                                <%=EVENT_LIST.Rows[0]["BOARD_MESSAGE"]%>
                            </div>
                            <div class="padding_Area_50_0"></div>
                            <%if (RECO_PROD_LIST.Rows.Count > 0)
                          {%>
                            <%--연관상품 영역--%>
                            <div class="suggection_content">
                                <div class="guideArea">
                                    <div class="guideTxt lower-font">연관상품 입니다</div>
                                </div>
                                <%--안내 텍스트--%>
                                <div class="suggection_content_wrap">
                                    <div class="suggection_content_wrap_inner  C_suggection_content_wrap_inner">
                                        <%for (int j = 0; j < RECO_PROD_LIST.Rows.Count; j++)
                                          { %>
                                        <div class="content">
                                            <a href="/Source/client/member/C_PRODUCT_DETAIL.aspx">
                                                <div class="content_wrap custom_content_wrap" id="<%=RECO_PROD_LIST.Rows[j]["PRODUCT_SID"]%>">

                                                    <%if (!string.IsNullOrEmpty(Convert.ToString(RECO_PROD_EDMS.Rows[j]["TARGET_READ_PATH"])))
                                                      { %>
                                                    <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=RECO_PROD_EDMS.Rows[j]["TARGET_READ_PATH"] %>' />
                                                    <%}%>
                                                    <%else
                                                      {%>
                                                    <img src="/Source/image/no_img.svg" class="no_img" />
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
                                                        <span><%=RECO_PROD_LIST.Rows[j]["DISCOUNT_PER"]%>%</span>
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
                         
                        <%}%>

                    </div>



                </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>