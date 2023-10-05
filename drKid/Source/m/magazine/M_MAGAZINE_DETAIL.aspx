<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_MAGAZINE_DETAIL.aspx.cs" Inherits="drKid.Source.m.magazine.M_MAGAZINE_DETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>     
        .Title_Area {
            text-align:center;
            padding: 0px 0px 40px 0px;
        }
        .main_Title_Txt {
            font-weight:500;
            padding: 15px 0px;
            /*font-size:30px;*/
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
            padding-bottom: 10px;
            border-top: 1px solid #4E4E4E;
            border-bottom: 1px solid #E1E1E1;
        }
        .detail_Info_Title {
            font-weight:500;
        }
        .detail_Info_Period_Area {
            padding: 10px 0;
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
            padding-bottom: 10px;
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

        .magazine_Content_Flag_Product {
            /*width: 144px;*/
            /*position: absolute;*/
            background: #115C5E 0% 0% no-repeat padding-box;
            color: #ffffff;
            text-align: center;
            padding: 2px 0px;
            /*margin: 0 auto;*/
            border-radius: 0px 0px 10px 0px;
            font-weight:500;
            padding: 0 1rem;
            bottom: -0.5rem;
            max-width:85px;
        }

         /*magazinefont*/
        .magazine_best_font {
            font-size: 0.4rem;
        }

        /*최하단 메뉴*/ 
        .m_bottom_wrap_inner > .icon_menu:first-child > span {
            color:#BBB;
        }

        .m_bottom_wrap_inner > .icon_menu:nth-child(3) > span {
            color:#115c5e;
        }
    </style>

    <script>
        $(function () {
            $(".show_All_Event_Btn").click(function () {
                location.href = "/Source/m/magazine/M_MAGAZINE.aspx";
            });
        });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main_Box">
            <div class="Title_Area">
                <div class="main_Title_Txt m_main_font">MAGAZINE</div>
                <div class="sub_Title_Txt m_lower_font">닥터키드니의 매거진을 만나보세요.</div>
            </div>
            <div class="show_All_Event_Area">
                <div class="show_All_Event_Btn m_lower_font">전체 매거진 보기 ></div>
            </div>
            <%--전체 디테일 영역--%>
            <div class="detail_Info_Area">
                <%--디테일 제목 --%>
                <div class="detail_Info_Title_Area">
                    <div class="magazine_Content_Flag_Product magazine_best_font">PRODUCT</div>
                    <div class="detail_Info_Title m_middle_font">닥터키드니의 돌외 증류액</div>
                </div>
                <%--디테일 기간 --%>
                <div class="detail_Info_Period_Area">
                    <div class="detail_Info_Period m_lower_font">2023.06.01</div>
                </div>
                <%--디테일 이미지 --%>
                <div class="detail_Info_Img_Area">
                    <div class="detail_Info_Img"></div>
                </div>
                <div class="padding_Area_50_0"></div>
                <%--전체 연관상품 영역--%>
                <div class="relation_Item_Area">
                    <div class="relation_Item_Title_area">
                        <div class="relation_Item_Title lower-font">연관상품입니다</div>
                    </div>
                    <%--연관상품 리스트--%>
                    <div id="hover5_wrap">
                        <div class="best_content_wrap_inner margin_bottom">
                        <%--best content--%>
                            <div class="m_best">
                                <a href="/Source/m/my/M_M_PRODUCT_DETAIL.aspx">
                                    <div class="best_img">
                                        <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                            <div class="best_txt1">
                                                <span>BEST</span>
                                            </div>
                                    </div>
                                </a>
                                <div class="best_txt">
                                    <div class="main_title m_lower_font">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="sub_title m_middle_font">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="discount_price">
                                        <div class="second_price m_middle_font">
                                            <span>1,136,400</span>
                                        </div>
                                        <div class="original_price m_lower_font">
                                            <span>1,156,000</span>
                                        </div>
                                    </div>
                                    <div class="percent main_color m_middle_font">
                                        <span>35%</span>
                                    </div>
                                    <div class="bottom">
                                        <div class="bottom_txt m_lowerst_font">
                                            <span>회원 할인 10%</span>
                                        </div>
                                        <div class="bottom_txt m_lowerst_font">
                                            <span>재구매 추가 할인 5%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--best content--%>
                            <div class="m_best">
                                    <a href="/Source/m/my/M_M_PRODUCT_DETAIL.aspx">
                                    <div class="best_img">
                                    <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                        <div class="best_txt1">
                                            <span>BEST</span>
                                        </div>
                                </div>
                                    </a>
                                <div class="best_txt">
                                    <div class="main_title m_lower_font">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="sub_title m_middle_font">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="discount_price">
                                        <div class="second_price m_middle_font">
                                            <span>1,136,400</span>
                                        </div>
                                        <div class="original_price m_lower_font">
                                            <span>1,156,000</span>
                                        </div>
                                    </div>
                                    <div class="percent main_color m_middle_font">
                                        <span>35%</span>
                                    </div>
                                    <div class="bottom">
                                        <div class="bottom_txt m_lowerst_font">
                                            <span>회원 할인 10%</span>
                                        </div>
                                        <div class="bottom_txt m_lowerst_font">
                                            <span>재구매 추가 할인 5%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--best content--%>
                            <div class="m_best">
                                    <a href="/Source/m/my/M_M_PRODUCT_DETAIL.aspx">
                                    <div class="best_img">
                                    <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                        <div class="best_txt1">
                                            <span>BEST</span>
                                        </div>
                                </div>
                                    </a>
                                <div class="best_txt">
                                    <div class="main_title m_lower_font">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="sub_title m_middle_font">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="discount_price">
                                        <div class="second_price m_middle_font">
                                            <span>1,136,400</span>
                                        </div>
                                        <div class="original_price m_lower_font">
                                            <span>1,156,000</span>
                                        </div>
                                    </div>
                                    <div class="percent main_color m_middle_font">
                                        <span>35%</span>
                                    </div>
                                    <div class="bottom">
                                        <div class="bottom_txt m_lowerst_font">
                                            <span>회원 할인 10%</span>
                                        </div>
                                        <div class="bottom_txt m_lowerst_font">
                                            <span>재구매 추가 할인 5%</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--best content--%>
                            <div class="m_best">
                                    <a href="/Source/m/my/M_M_PRODUCT_DETAIL.aspx">
                                    <div class="best_img">
                                    <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                        <div class="best_txt1">
                                            <span>BEST</span>
                                        </div>
                                </div>
                                    </a>
                                <div class="best_txt">
                                    <div class="main_title m_lower_font">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="sub_title m_middle_font">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="discount_price">
                                        <div class="second_price m_middle_font">
                                            <span>1,136,400</span>
                                        </div>
                                        <div class="original_price m_lower_font">
                                            <span>1,156,000</span>
                                        </div>
                                    </div>
                                    <div class="percent main_color m_middle_font">
                                        <span>35%</span>
                                    </div>
                                    <div class="bottom">
                                        <div class="bottom_txt m_lowerst_font">
                                            <span>회원 할인 10%</span>
                                        </div>
                                        <div class="bottom_txt m_lowerst_font">
                                            <span>재구매 추가 할인 5%</span>
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
