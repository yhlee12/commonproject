﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_CS_NOTICELIST.aspx.cs" Inherits="drKid.Source.client.cs.C_CS_NOTICELIST" %>
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
            max-width: 740px;
            margin: 0 auto;
        }
        .Title_Area {
            text-align:center;
            padding: 0px 0px 40px 0px;
        }
        .main_Title_Txt {
            font-weight:600;
            padding: 15px 0px;
            font-size:30px;
        }
         .sub_Title_Txt {
            color:#9F9F9F;
        }
        .main_Label_Area {
            display: flex;
            justify-content: center;
            gap:0px 20px;
        }
        .main_Label_1 {
            background: #FFFFFF; 
            border: 1px solid #D8D8D8;
           
            padding: 9px 0px;
            width: 127px;
            text-align: center;
            cursor:pointer;
        }
        .main_Label_1:hover{
             color:#FFFFFF;
             background:#115C5E;
        }
        .main_Label_2 {
            width: 92px;
            text-align: center;
            padding: 9px 0px;
            background:#115C5E;
            border: 1px solid #D8D8D8;
            cursor:pointer;
            color:#FFFFFF;
        }
        .main_Label_3 {
            width: 92px;
            text-align: center;
            padding: 9px 0px;
            background:#FFFFFF;
            border: 1px solid #D8D8D8;
            cursor:pointer;
        }
        .main_Label_3:hover {
            background: #115C5E;
            color: #FFFFFF;
        }
         .search_Area {
            padding: 50px 0px;
        }
        .search_Wrap {
            width: 490px;
            margin: 0 auto;
            display: flex;
            align-items: center;
        }
        #I_SEARCH_WORD {
            height: 50px;
            width: 100%;
            padding: 10px 20px;
        }
        .search_Icon_Wrap {
            position: relative;
            top: 4px;
            right: 41px;
            color: #828282;
            cursor:pointer;
        }
         .notice_List_Area {
            width:100%;
            
        }
        .notice_List {
              width: 1300px;
              border-top: 1px solid #4E4E4E;
              margin: 0 auto;
        }
        .notice_Content {
            border-bottom: 1px solid #E1E1E1;
            display: flex;
            align-items: center;
            padding: 15px 20px;
            cursor:pointer;
        }
        .notice_Number_Area , .notice_Writer_Area, .notice_Created_Date_Area {
            width:10%;
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
        .notice_Title_Area {
            width:70%;
        }
        .notice_Title {
            font-weight:500;
        }
        .notice_Writer,.notice_Created_Date {
            color:#BBBBBB;
        }
        .imfortanace_txt {
            text-align: center;
            background: #115C5E;
            width: 41px;
            font-size: 14px;
            color: #ffffff;
            margin: auto;
        }
        .common_txt {
            text-align: center;
            color:black;
        }
        #hidden-field {
            display:none;
        }
        /*페이징관련*/
        .number-button-Area {
            padding: 100px 0px;
        }
        .number-button-wrap {
            display: flex;
            justify-content: center;
        }
         /*뉴 페이징*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

    </style>
    <script>
        $(function () {
            //자주 묻는 질문 페이지 이동
            $(".main_Label_1").click(function () {
                location.href = "/Source/client/cs/C_CS_QUESTIONLIST.aspx"
            });
            //공지사항 페이지 이동
            $(".main_Label_2").click(function () {
                location.href = "/Source/client/cs/C_CS_NOTICELIST.aspx"
            });
            //1:1문의 페이지 이동
            $(".main_Label_3").click(function () {
                location.href = "/Source/client/cs/C_CS_HELPDESKLIST.aspx"
            });
            //공지사항 클릭 시 디테일 페이지 이동
            $(".notice_Content").click(function () {
                var sid = $(this).data("value");
                var board_number = $(this).find("#board_type .common_txt").data("value");
                if (board_number != '' || board_number != null || board_number != undefined) {
                    console.log("board_number 넘김")
                    location.href = "/Source/client/cs/C_CS_NOTICEDETAIL.aspx?sid=" + sid + "&board_number=" + board_number;
                }
                else {
                    console.log("board_number 안넘김")
                    location.href = "/Source/client/cs/C_CS_NOTICEDETAIL.aspx?sid=" + sid;
                }
                
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
          <input type="text" name="flag" id="flag" value="" />
          <input type="text" name="search_btn_click_flag" id="search_btn_click_flag" value="" />
    </div>
    <div id="sub_content" style="">
        <div class="sub_layout">
            <div id="content">
                <%--타이틀~자주묻는 질문,공지사항 ui까지--%>
                <div class="main_Box">
                    <div class="Title_Area">
                        <div class="main_Title_Txt">고객센터</div>
                        <div class="sub_Title_Txt lower-font">닥터키드니 고객센터입니다. 무엇을 도와드릴까요?</div>
                    </div>
                    <div class="main_Label_Area">
                        <div class="main_Label_1 lower-font">자주 묻는 질문</div>
                        <div class="main_Label_2 lower-font">공지사항</div>
                        <div class="main_Label_3 lower-font">1:1문의</div>
                    </div>
                </div>

                <%--검색창--%>
                <div class="search_Area">
                    <div class="search_Wrap">
                        <input type="text" class="drkid-input lower-font" id="I_SEARCH_WORD" name="I_SEARCH_WORD" value="<%=I_SEARCH_WORD %>" placeholder="검색어를 입력해주세요." />
                        <div class="search_Icon_Wrap">
                            <span class="drkid-icon search-icon"></span>
                        </div>
                    </div>
                </div>
                <%--공지사항 리스트--%>
                <div class="notice_List_Area">
                    <div class="notice_List">
                         <% if (totalCount > 0)
                             { %>
                                 <%for (int i = 0; i < NOTICE_LIST.Rows.Count; i++)
                                  { %>
                                         <div class="notice_Content" data-value="<%=NOTICE_LIST.Rows[i]["BOARD_SID"] %>">
                                            <div class="notice_Number_Area">
                                                <div id="board_type">
                                                    <%  if (string.Equals(NOTICE_LIST.Rows[i]["IMPORTANCE_FLAG"].ToString(), "Y", StringComparison.OrdinalIgnoreCase)) 
                                                   { %>
                                                     <div class="imfortanace_txt lowerst-font">중요</div>
                                                 <%}%>
                                                 <% else 
                                                    { %>
                                                       <div class="common_txt lowerst-font"data-value="<%=totalCount - offset - i %>"><%=totalCount - offset - i %></div>
                                                     <%}%>
                                                </div> 
                                            </div>
                                                <div class="notice_Title_Area">
                                                <div class="notice_Title lowerst-font"><%=NOTICE_LIST.Rows[i]["BOARD_TITLE"] %></div>
                                            </div>
                                            <div class="notice_Writer_Area">
                                                <div class="notice_Writer lowerst-font"><%=NOTICE_LIST.Rows[i]["POST_USER_NAME"] %></div>
                                            </div>
                           
                                            <div class="notice_Created_Date_Area">
                                            <%--<div class="notice_Created_Date lowerst-font"><%=NOTICE_LIST.Rows[i]["POST_TIME"] %></div>--%>
                                                <div class="notice_Created_Date lowerst-font"> <%= ((DateTime)NOTICE_LIST.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd") %></div>
                                               

                                            </div>
                                         </div>
                                <%}%>
                             <%}%>
                    </div>
                </div>
                  <%--페이징--%>
                <div class="pageNavigationStr" style="padding: 100px 0px;">
                    <%=pageNavigationStr%>
                </div>
               
            </div>
        </div>
    </div>    
</asp:Content>
