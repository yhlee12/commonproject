﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_S_SUB_PAGE.aspx.cs" Inherits="drKid.Source.m.sub.M_S_SUB_PAGE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #m_moblie_wrap {
            padding: 2rem 0;
        }
        .slide_item  {
            max-height: 450px;
        }
        .affiliateMall_menu_main {
            text-align: center;
            color: #000;
            font-weight: 600;
        }
        .affiliateMall_menu_sub {
            padding: 2rem 0;
        }
        .affiliateMall_menu_sub > ul {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: auto;
            text-align: center;
            gap: 0.5rem;
        }
        .affiliateMall_menu_sub > ul > li {
            padding: 0.3rem 0.5rem;
            border: 1px solid #d8d8d8;
            cursor: pointer;
        }
       /* .affiliateMall_menu_sub > ul > li:nth-child(2) {
            border-color:#115C5E;
            color:#115C5E;           
        }
*/
        .affiliateMall_menu_sub > ul > li:hover {
            color: white;
            background-color:#115C5E;
            border-color:#115C5E;
        }

        .filter {
            padding: 2rem 0px 1rem 15px;
        }
        .filter_menu {
            display:flex;    
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
            margin: 0 10px;
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
        .best {
            /*padding-bottom: 50px;*/
        }
        .best_wrap_inner {
            padding: 0;
        }
        /*페이징관련*/
        .number-button-Area {
            padding: 40px 0px 80px;
        }
        .number-button-wrap {
            display: flex;
            justify-content: center;
        }

        .first_txt {
            color:#115C5E !important;
            border-bottom:1px solid #115C5E;
            font-weight: 700;
        }

        .second_txt {
            color:#9f9f9f;
        }

        .slide_prev_button {
            left: 10px;
        }

        .slide_next_button {
            right: 10px;
        }
        .slide_pagination {
            margin-bottom: 10px;
        }
        .slide_pagination > li {
          color: #4a8b8d;
          cursor: pointer;
          font-size: 40px;
        }
        .slide_pagination > li.active {
          color: #115c5e;
        }
        .header_inner {
            border-bottom: 1px solid
        }
        .best_content{
            height:auto;
        }
        .best-li-content{
            display:block;
        }

        .paging {
            display: flex;
            align-items: center;
            justify-content: center;
        }

    </style>
    <script>
        var $result_code = `<%=cp_ret_status%>`;
        var $result_message = `<%=cp_ret_message%>`;
        var $flag = `<%=flag%>`;
        document.addEventListener('DOMContentLoaded', function () {
            if ($result_code == `Y`) {
                _popModal.Alert('알림', $result_message);
                $result_code = '';
                $result_message = '';
            }
        });

        $(function () {
            $('.second_txt').on('click', function (e) {
                let _ORDER_BY = $(e.currentTarget).data('orderby') + '';
                $('#ORDER_BY').val(_ORDER_BY);
                $('#flag').val('inquery');
                $('#aspnetForm').submit();
            });
            $('.li-cate').on('click', function (e) {
                let _CATE_SID = $(e.currentTarget).data('sid') + '';
                $('#CATE_SID').val(_CATE_SID);
                $('#flag').val('inquery');
                $('#aspnetForm').submit();
            });
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input type="hidden" name="flag" id="flag" value="" />
    <input type="hidden" name="VIEW_SID" id="VIEW_SID" value="<%=VIEW_SID %>" />
    <input type="hidden" name="ORDER_BY" id="ORDER_BY" value="<%=ORDER_BY %>" />
    <input type="hidden" name="CATE_SID" id="CATE_SID" value="<%=CATE_SID %>" />

    <div class="affiliateMall">  
        <div class="affiliateMall_wrap">
            <div class="affiliateMall_wrap_inner">
                <div class="affiliateMall_menu">
                    <div class="affiliateMall_menu_main">
                        <span class=""><%=_title %></span>
                    </div>
                    <%if(S_TYPE == "CATE" ){ %>
                        <div class="affiliateMall_menu_sub">
                            <ul>
                                <li class="li-cate m_lower_font <%=CATE_SID == 0 ? "activeLi" : "" %>" data-sid="0">전체보기</li>
                                <%for(int i = 0; i < cateTable.Rows.Count;i++){ %>
                                    <li class="li-cate m_lower_font <%=CATE_SID.ToString() == cateTable.Rows[i]["VIEW_SID"].ToString() ? "activeLi" : "" %>" data-sid="<%=cateTable.Rows[i]["VIEW_SID"] %>"><%=cateTable.Rows[i]["TITLE"] %></li>
                                <%} %>
                            </ul>
                        </div>
                    <%} %>
                </div>
            </div> 
        </div>
    </div>
   
    <div class="main_slider">
        <%if(S_BANNER_FLAG){ %>
        <div class="slide slide_wrap">
            <%for(int i = 0; i < BannerTable.Rows.Count;i++){ %>
                <div class="slide_item item<%=i+1 %>">
                    <img src="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BannerTable.Rows[i]["TARGET_READ_PATH"] %>"/>
                </div>
            <%} %>
            <%--<div class="slide_prev_button slide_button">
                <span class="material-icons">chevron_left</span>
            </div>
            <div class="slide_next_button slide_button">
                <span class="material-icons">chevron_right</span>
            </div>--%>
            <ul class="slide_pagination"></ul>
        </div>
        <%} %>
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
                        <li data-orderby="new" class="second_txt <%=ORDER_BY == "" || ORDER_BY == "new" ? "first_txt" : "" %>">신상품순</li>
                        <!-- 추후 추가. -->
                        <%--<li data-orderby="many" class="second_txt">추천순</li>
                        <li data-orderby="count" class="second_txt">판매인기순</li>
                        <li data-orderby="star" class="second_txt">상품평순</li>--%>
                        <li data-orderby="lowcost" class="second_txt <%=ORDER_BY == "lowcost" ? "first_txt" : "" %>">낮은가격순</li>
                        <li data-orderby="highcost" class="second_txt <%=ORDER_BY == "highcost" ? "first_txt" : "" %>">높은가격순</li>
                    </ul>
                </div>          
            </div>
        </div>
    </div>
    <div class="best">
        <div class="best_wrap">
            <div class="best_wrap_inner">
                <div class="best_content">
                    <div class="best_content_wrap">
                        <div class="best_content_wrap_inner margin_bottom">
                            <%for(int i = 0; i < listTable.Rows.Count;i++){ %>
                                <div class="m_best best-li-content">
                                    <a href="/Source/m/my/M_M_PRODUCT_DETAIL.aspx?PRODUCT_SID=<%=listTable.Rows[i]["PRODUCT_SID"] %>">
                                        <div class="best_img">
                                            <img src="<%=listTable.Rows[i]["TARGET_READ_PATH"] %>" alt="best_content" />
                                            <div class="best_txt1">
                                                    <span>BEST</span>
                                                </div>
                                        </div>
                                    </a>
                                    <div class="best_txt">
                                        <div class="main_title m_lower_font">
                                            <span><%=listTable.Rows[i]["CATEGORY_NAME"] %></span>
                                        </div>
                                        <div class="sub_title m_middle_font">
                                            <span><%=listTable.Rows[i]["PRODUCT_NM"] %></span>
                                        </div>
                                        <div class="discount_price">
                                            <%if(listTable.Rows[i]["VIEW_SALE_FLAG"].ToString() == "Y"){ %>
                                                <div class="discount_price_Area">
                                                    <div class="second_price m_middle_font">
                                                        <span><%=listTable.Rows[i]["VIEW_SALE_RATE"] %></span>
                                                    </div>
                                                    <div class="original_price m_lower_font">
                                                        <span><%=listTable.Rows[i]["VIEW_SALE_RATE"] %></span>
                                                    </div>
                                                </div>                                                                                           
                                                <div class="percent main_color m_middle_font">
                                                    <span><%=listTable.Rows[i]["SALE_PER"] %>%</span>
                                                </div>
                                                <%}else{ %>      
                                                <div class="percent main_color m_middle_font">
                                                    <span><%=listTable.Rows[i]["SALE_PER"] %>%</span>
                                                </div>
                                                <%} %>
                                        </div>
                                                                                  
                                        <%--할인 적용 %--%>
                                        <div class="bottom">
                                                <%if(listTable.Rows[i]["USER_SALE_FLAG"].ToString() == "Y"){ %>
                                                <div class="bottom_txt m_lowerst_font">
                                                    <span>회원 할인 <%=listTable.Rows[i]["USER_SALE_RATE"] %>%</span>
                                                </div>
                                            <%} %>
                                            <%if(listTable.Rows[i]["REBUY_FLAG"].ToString() == "Y"){ %>
                                                <div class="bottom_txt m_lowerst_font">
                                                    <span>재구매 추가 할인 <%=listTable.Rows[i]["REBUY_RATE"] %>%</span>
                                                </div>
                                            <%} %>
                                        </div>
                                    </div>
                                </div>
                            <%} %>                                                      
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="pageNavigationStr" style="padding: 2rem 0px;">
        <%=pageNavigationStr%>
    </div>
</asp:Content>
