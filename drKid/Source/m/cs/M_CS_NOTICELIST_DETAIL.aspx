﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_CS_NOTICELIST_DETAIL.aspx.cs" Inherits="drKid.Source.m.cs.M_CS_NOTICELIST_DETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myPage {
           background-color:#FFFFFF;
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
            padding-bottom: 0.5rem;
            border-bottom: 1px solid var(--mono_line);
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

        .show_All_Area {
            display: flex;
            justify-content: flex-end;
             padding: 0px 0px 15px 0px;
        }
        .detail_Info_Title_Wrap {
            padding: 0.3rem 0px;
            border-top: 1px solid var(--mono_line);
            border-bottom: 1px solid var(--mono_line);
        }
        ./*detail_Info_Title_Area {
            padding: 13px;

        }*/
    
        .detail_Info_Img_Txt_Area {
            width: 100%;
            min-height: 300px;
            /*padding:20px;*/
        }
             /*.notice_Number_Area , .notice_Writer_Area, .notice_Created_Date_Area {
            width:10%;*/
        }
        .notice_Number_Important {
            text-align: center;
            background: #115C5E;
            width: 41px;
            font-size: 14px;
            color: #ffffff;
            margin: auto;
        }
        .notice_Number {
            text-align: center;
            font-size: 14px;
            color:#828282;
        }
        .notice_Title {
            font-weight:500;
        }
        .notice_Writer,.notice_Created_Date {
            color:#BBBBBB;
        }
        .imfortanace_txt {
            text-align: center;
            background: var(--main_color);
            width: 41px;
            font-size: 14px;
            color: #ffffff;
        }
        .t2l-alert-inner-wraper {
            position: absolute;
            min-width: 330px;
            padding: 40px;
            background-color: white;
            box-shadow: 0 0 10px #0000001A;
            max-height: 90vh;
            z-index: 1;
        }
        img.image_for_class {
            width: fit-content;
            height: fit-content;
            max-width:100%;
        }

        /*추가*/
        .notice_Title_Area {
            min-width: 85%;
        }

        .notice_Title {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .detail_Info_Title_Area_top {
            display: flex;
            align-items: center;
            padding: 0px 15px 0.3rem;
        }
        .notice_Number_Area {
            margin-right: 0.3rem;
        }

        .noticeName {
            display: flex;
            width: 100%;
            align-items: center;
            justify-content: end;
            padding: 0.3rem 15px 0;
            border-top: 1px solid var(--mono_line);
            gap: 0.2rem;
        }

        .detail_Info_Img_Txt_Area {
            padding: 0 15px;
        }
    </style>
    <script>
        $(function () {
            $(".prev_button").click(function () {
                location.href = "/Source/m/cs/M_CS_NOTICELIST.aspx";
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
            <%--마이페이지 헤더 top--%>
            <div class="myPageHeader_top">
                <%--<a href="/Source/m/m_main.aspx">--%>
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
                <%--</a>--%>
                <div class="myPage_txt">
                    <span>공지사항</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
            <div class="main_Box">
                <%--전체 디테일 영역--%>
                <div class="detail_Info_Area">
                    <%--디테일 제목 --%>
                    <div class="detail_Info_Title_Wrap">
                        <div class="detail_Info_Title_Area">
                            <div class="detail_Info_Title_Area_top">
                                <div class="notice_Number_Area">
                                    <%--<div class="notice_Number lowerst-font">73</div>--%>
                                    <div class="lowerst-font">
                                            <% if (string.Equals(NOTICE_DETAIL.Rows[0]["IMPORTANCE_FLAG"].ToString(), "Y", StringComparison.OrdinalIgnoreCase)) 
                                                { %>
                                                    <div class="imfortanace_txt lowerst-font">중요</div>
                                                <%}%>
                                                <% else 
                                                { %>
                                                    <div class="common_txt notice_Number lowerst-font"><%=board_number%></div>
                                        <%}%>
                                    </div> 
                                </div>
                                <div class="notice_Title_Area">
                                    <div class="notice_Title lowerst-font"><%=NOTICE_DETAIL.Rows[0]["BOARD_TITLE"] %></div>
                                </div>
                            </div>

                            <div class="noticeName">
                                <div class="notice_Writer_Area">
                                    <div class="notice_Writer lowerst-font"><%=NOTICE_DETAIL.Rows[0]["POST_USER_NAME"] %></div>
                                </div>
                                <div class="detail_Info_Title_Area_bottom">                         
                                    <div class="notice_Created_Date_Area">
                                        <div class="notice_Created_Date lowerst-font"><%= ((DateTime)NOTICE_DETAIL.Rows[0]["POST_TIME"]).ToString("yyyy.MM.dd")%></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                                    
                <%--디테일 이미지+글 영역 --%>
                <div class="detail_Info_Img_Txt_Area">
                    <%=NOTICE_DETAIL.Rows[0]["BOARD_MESSAGE"] %>
                </div>
            </div>                
        </div>
    </div>
 
</asp:Content>
