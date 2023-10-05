﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_COMMUNITY_PAGE.aspx.cs" Inherits="drKid.Source.m.community.M_COMMUNITY_PAGE_aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .best_wrap_inner {
            margin-top: 1rem;
        }

        .best_m_menu_wrap {
            padding-bottom: 1rem;
            border-bottom: 1px solid #cacaca;
        }

        .best_content {
            padding: 0 15px;
        }

        .best_content_wrap_inner {
            padding: 1rem 0 0;
        }

        .best_m_menu_wrap_inner {
            padding:0;
            margin: 20px 0 0px;
        }

        .best_m_menu_wrap_inner > ul > li {
            border-radius: 0px;
        }

        .m_best {
            border-radius: 10px;
        }

        .best_img > img {
            border-top-right-radius: 10px;
            border-top-left-radius: 10px;
        }
        #m_moblie_wrap {
            padding: 2rem 0px;
        }

        .Community_title{
            text-align : center;
            margin-bottom : 1.3rem;
        }
        .Community_main_title{
            font-weight : 500;
        }
        .Community_sub_title{
            color : #9F9F9F;
        }
        .Community_Today_Community, .Community_Best_Community{
            margin-top : 1.5rem;
            background-color: #F4FAFF;
        }
        .Community_Today_Community_title, .Community_Best_Community_title{
            margin: 0 0.7rem;
            padding: 0.4rem 0 0.4rem;
            border-bottom: 1px solid black;
            font-weight : bold;
        }
        .Community_Today_Community_wrap, .Community_Best_Community_wrap{
            display: flex;
            justify-content: space-between;
            padding: 0.3rem 0.5rem;
            margin: 0 0.7rem;
            border-bottom : 1px solid #E1E1E1;
        }
        .Today_Commu_guide, .Best_Commu_guide{
            max-width : 71%;
            width : auto;
            white-space: nowrap; /* 텍스트 줄 바꿈 방지 */
            overflow: hidden; /* 넘치는 부분을 숨김 */
            text-overflow: ellipsis; /* 넘치는 텍스트를 ...으로 표시 */
        }
        .Today_Commu_guide_chat, .Best_Commu_guide_chat, .Admin_Post_chat{
            color : #FF441D;
            margin-left : 0.3rem;
        }
        .Today_Commu_guide_Recommend, .Best_Commu_guide_Recommend, .Admin_Post_Recommend{
            color : #115C5E
        }
        .C_To_Commu_left{
            width : 80%;
            display: flex;
        }
        .C_To_Commu_Right{
            float : right;
            display: flex;
        }
        .Community_Drkid_Commu{
            padding: 1.5rem 15px;
        }
        .Community_Drkid_commu_TItle{
            padding-bottom : 0.7rem;
            border-bottom : 1px solid black;
        }
        .Community_Drkid_commu_TItle > div{
            font-weight : bold;
        }
        .Commu_posting_Wrap{
            display: flex;
            justify-content: end;
        }
        .Commu_posting_Btn{
            width: fit-content;
            padding : 0.1rem 1.2rem;
            border : 1px solid #CCCCCC;
        }
        .Community_Drkid_commu_Table_Wrap{
            padding : 0.5rem;
            border-bottom : 1px solid #E1E1E1;
        }
        .Community_Drkid_commu_Table_Wrap_Top{
            display:flex;
            justify-content : space-between;
        }
        .Community_Drkid_commu_Table_Wrap_Bottom{
            color : #BBBBBB;
        }
        .Community_Drkid_commu_Guide_Choose_Btn{
            margin : 1rem 0;
            display : flex;
            justify-content: center;
        }
        .Community_Drkid_commu_Guide_Choose_Btn > div{
            width : 1.5rem;
            height : 1.5rem;
            line-height : 1.5rem;
            text-align : center;
            border : 1px solid #E2E2E2;
            margin : 0 0.3rem;
        }
        .Community_Drkid_commu_Guide_Choose_Btn > div > span{
            line-height : 1.5rem;
            font-size : 1rem;
        }
        .Thumb_up{
            font-size : 0.6rem;
            color : #115C5E;
        }
        .C_To_Commu_Thumb{
            line-height : 1.4rem;
        }
        .Table_Top_Left{
            width : 85%;
            display: flex;
        }
        .Table_Top_Left > div {
            
        }
        .Table_Top_right{
            float : right;
            display: flex;
        }
        .Commu_post_Title{
            max-width : 76%;
            width : auto;
            white-space: nowrap; /* 텍스트 줄 바꿈 방지 */
            overflow: hidden; /* 넘치는 부분을 숨김 */
            text-overflow: ellipsis; /* 넘치는 텍스트를 ...으로 표시 */
        }
        .best_main_title_text{
            font-weight : bold;
        }
        .Celeb_Btn_Wrap{
            width : 100%;
            display: flex;
            justify-content: center;
        }
        .Celeb_Container{
            width : 6rem;
            height : 1.3rem;
            border : 1px solid #CCCCCC;
            color : #115C5E;
            text-align: center;
        }
        .Commu_post_Category  {
            font-weight: 500;
        }
        .paging {
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
<script>
    $(document).ready(function () {
        //각 커뮤니티 리스트 클릭시 해당 하는 디테일 페이지로 이동 
        $(".Community_Today_Community_wrap,.Community_Best_Community_wrap,.Community_Drkid_commu_Table_Wrap").click(function () {
            var sid = $(this).data("boardsid");
            console.log("sid:", sid)
            if (sid != '' && sid != null) {
                location.href = "/Source/m/community/M_COMMUNITY_DETAIL_PAGE.aspx?BOARD_SID=" + sid;
            }
        });
        $('#Community_Posting').click(function () {
            location.href = "/Source/m/community/M_COMMUNITY_WRITE_PAGE.aspx";
        });

    });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Community_page">
        <div class="Community_title">
            <div class="Community_main_title">
                <span class="m_ma_font">커뮤니티</span>
            </div>
            <div class="Community_sub_title">
                <span class="m_lower_font">자유롭게 소통할 수 있는 커뮤니티입니다.</span>
            </div>
        </div>

        <%--모바일 슬라이드--%>
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
            <ul class="slide_pagination"></ul>            
        </div>

        <div class="best_wrap_inner">
            <div class="best_main_title">
                <div class="big-font best_main_title_text">셀러브리티의 선택 !</div>
                <div class="big-font best_main_title_text">셀럽# 상품들을 만나보세요.</div>
            </div>
        </div>

        <div class="best_content">
            <div class="best_content_wrap">
                <div id="hover5_wrap">
                    <div class="best_content_wrap_inner margin_bottom">
                            <%--best content--%>
                        <div class="m_best">
                            <div class="best_img">
                                <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                            </div>
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
                                <div class="best_img">
                                <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                    <div class="best_txt1">
                                        <span>BEST</span>
                                    </div>
                            </div>
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
                                <div class="best_img">
                                <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                    <div class="best_txt1">
                                        <span>BEST</span>
                                    </div>
                            </div>
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
                                <div class="best_img">
                                <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                    <div class="best_txt1">
                                        <span>BEST</span>
                                    </div>
                            </div>
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
        <%-- 셀럽 버튼 --%>
        <div class="Celeb_Btn_Wrap">
           <div class="Celeb_Container m_lower_font">
               <span>셀럽# 바로가기 ></span>
           </div>
        </div>
        <%-- 오늘의 커뮤니티 --%>
        <div class="Community_Today_Community">
            <div class="Community_Today_Community_title">
                <span class="m_sub_font">오늘의 커뮤니티</span>
            </div>
            <%for (int i = 0; i < NORMAL_LIST.Rows.Count; i++)
            { %>
            <div class="Community_Today_Community_wrap" data-boardsid="<%=NORMAL_LIST.Rows[i]["BOARD_SID"] %>">
                <div class="C_To_Commu_left">
                    <%--<div class="Today_Commu_guide_Category m_lower_font">[상품]</div>--%>
                    <div class="Today_Commu_guide m_lower_font"><%=NORMAL_LIST.Rows[i]["BOARD_TITLE"]%></div>
                    <div class="Today_Commu_guide_chat m_lower_font">(<%=NORMAL_LIST.Rows[i]["NORMAL_COUNT"] %>)</div>
                </div>
                <div class="C_To_Commu_Right">
                    <div class="m_lower_font C_To_Commu_Thumb">
                        <span class="material-icons Thumb_up">thumb_up_off_alt</span>
                    </div>
                    <div class="Today_Commu_guide_Recommend m_lower_font">
                        <span><%=NORMAL_LIST.Rows[i]["RECOMMEND_COUNT"] %></span>
                    </div>
                </div>
            </div>
            <% } %>    
        </div>
        <%-- 베스트 커뮤니티 --%>
        <div class="Community_Best_Community">
            <div class="Community_Best_Community_title">
                <span class="m_sub_font">베스트 커뮤니티</span>
            </div>
             <%for (int i = 0; i < BEST_LIST.Rows.Count; i++)
            { %>
            <div class="Community_Best_Community_wrap" data-boardsid="<%=BEST_LIST.Rows[i]["BOARD_SID"] %>">
                <div class="C_To_Commu_left">
                    <%--<div class="Today_Commu_guide_Category m_lower_font">[상품]</div>--%>
                    <div class="Today_Commu_guide m_lower_font"><%=BEST_LIST.Rows[i]["BOARD_TITLE"]%></div>
                    <div class="Today_Commu_guide_chat m_lower_font">(<%=BEST_LIST.Rows[i]["COMMENT_COUNT"] %>)</div>
                </div>
                <div class="C_To_Commu_Right">
                    <div class="m_lower_font C_To_Commu_Thumb">
                        <span class="material-icons Thumb_up">thumb_up_off_alt</span>
                    </div>
                    <div class="Best_Commu_guide_Recommend m_lower_font">
                        <span><%=BEST_LIST.Rows[i]["RECOMMEND_COUNT"] %></span>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
        <%-- 닥터키드니 커뮤니티 및 글쓰기 --%>
        <div class="Community_Drkid_Commu">

            <div class="Community_Drkid_commu_TItle">
                <div>
                    닥터키드니 커뮤니티
                </div>
                <div class="Commu_posting_Wrap">
                    <div class="Commu_posting_Btn m_lowerst_font" id="Community_Posting">
                      커뮤니티 글쓰기
                    </div>
                </div>
            </div>
            <div class="Community_Drkid_commu_Table">

                <%if (COMM_LIST.Rows.Count < 1)
                {%>
                <div class="hd_List_Row_Area">
                    <div class="hd_List_Row_null_Area">
                        <div class="hd_List_Row_1 lowerst-font">최근 7일내에 등록된 작성글이 없습니다.</div>
                    </div>
                </div>
                <%} %>
                <%else 
                  {%>
                 <%for (int i = 0; i < COMM_LIST.Rows.Count; i++)
                    { %>
                    <div class="Community_Drkid_commu_Table_Wrap" data-boardsid="<%=COMM_LIST.Rows[i]["BOARD_SID"] %>">
                        <div class="Community_Drkid_commu_Table_Wrap_Top">
                            <div class="Table_Top_Left m_middle_font">
                                  <div class="Commu_post_Category m_middle_font">[<%=COMM_LIST.Rows[i]["CODE_NAME"] %>]</div>
                                  <div class="Commu_post_Title m_middle_font"><%=COMM_LIST.Rows[i]["BOARD_TITLE"] %></div>
                                  <%--<div class="Best_Commu_guide_chat m_lower_font">(8)</div>--%>
                            </div>
                            <div class="Table_Top_right">
                                <div class="m_lower_font C_To_Commu_Thumb">
                                    <span class="material-icons Thumb_up">thumb_up_off_alt</span>
                                </div>
                                <div class="Today_Commu_guide_Recommend m_lower_font">
                                    <span><%=COMM_LIST.Rows[i]["RECOMMEND_COUNT"] %></span>
                                </div>   
                            </div>
                        </div>

                        <div class="Community_Drkid_commu_Table_Wrap_Bottom m_middle_font">
                            <span class="Commu_Admin_ID"><%=COMM_LIST.Rows[i]["POST_USER_NAME"].ToString() %></span>
                            <span class="Commu_Post_Date"><%=COMM_LIST.Rows[i]["POST_TIME"].ToString().Substring(0, 10).Replace("-",".").Replace("-",".") %></span>                    
                        </div>
                    </div>
                     <%}%>
                <%} %>
                <%--페이징 관련 뒷단...--%>
                <div class="pageNavigationStr" style="padding: 2rem 0px;">
                    <%=pageNavigationStr%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
