<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_CS_NOTICELIST.aspx.cs" Inherits="drKid.Source.m.cs.M_CS_NOTICELIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*.main_Box {
             padding: 0px 15px;
        }*/
        .Title_Area {
            text-align:center;
            padding: 0px 0px 1rem 0px;
        }
        .main_Title_Txt {
            font-weight:600;
            padding: 0.5rem 0px;
        }
         .sub_Title_Txt {
            color:#9F9F9F;
        }
        .main_Label_Area {
            display: flex;
            justify-content: center;
            gap:0.5rem;
        }

        .main_Label {
            text-align:center;
            padding: 0.2rem 0.7rem;
            border: 1px solid var(--m_mono_color);
        }

        .main_Label_Area > .main_Label:nth-child(2) {
            color:#fff;
        }
      
        .search_Area {
            padding: 1rem 0px;
        }
        .search_Wrap {
            width: 100%;
            margin: 0 auto;
            position:relative;
        }

         #I_SEARCH_WORD {
            width: 100%;
            padding: 10px 20px;
        }
        .search_Icon_Wrap {
            position: absolute;
            height:30px;
            top: 4px;
            right: 0;
            padding-right: 0.5rem;
            color: #828282;
            cursor:pointer;
        }
        .search_Icon_Wrap > span {
            line-height: 30px;
        }

         .notice_List_Area {
            width:100%;
            
        }
        .notice_List {
              width: 100%;
              border-top: 1px solid #4E4E4E;
              margin: 0 auto;
        }
        .notice_Content {
            border-bottom: 1px solid #E1E1E1;
            /*display: flex;
            align-items: center;*/
            padding: 0.5rem 0px;
            cursor:pointer;
        }
        /*.notice_Number_Area , .notice_Writer_Area, .notice_Created_Date_Area {
            width:10%;
        }*/
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
        /*.notice_Title_Area {
            width:70%;
        }*/
        .notice_Title {
            font-weight:500;
        }
        .notice_Writer,.notice_Created_Date {
            padding-top: 0.3rem;
            color:#BBBBBB;
        }
        .imfortanace_txt {
            text-align: center;
            background: #115C5E;
            width: 41px;
            color: #ffffff;
            margin-right: 0.2rem;
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

        /*모바일 변환 css 추가*/
        .notice_List_Area_top {
            display: flex;
            align-items: center;
            /*gap: 0.2rem;*/
        }

        .notice_Title_Area {
            min-width: 85%;
        }

        .notice_Title {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        /*@media screen and (max-width:320px) {
            .notice_Title_Area {
                width: 85%;
            }
            .notice_Title {
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }

        }*/

    </style>
    <script>
        $(function () {
            //자주 묻는 질문 페이지 이동
            $(".main_Label_1").click(function () {
                location.href = "/Source/m/cs/M_CS_QUESTIONLIST.aspx"
            });
            //공지사항 페이지 이동
            $(".main_Label_2").click(function () {
                location.href = "/Source/m/cs/M_CS_NOTICELIST.aspx"
            });
            //1:1문의 페이지 이동
            $(".main_Label_3").click(function () {
                location.href = "/Source/m/cs/M_CS_HELPDESKLIST.aspx"
            });
            //공지사항 클릭 시 디테일 페이지 이동
            $(".notice_Content").click(function () {
                var sid = $(this).data("value");
                var board_number = $(this).find("#board_type .common_txt").data("value");
                if (board_number != '' || board_number != null || board_number != undefined) {
                    console.log("board_number 넘김")
                   location.href = "/Source/m/cs/M_CS_NOTICELIST_DETAIL.aspx?sid=" + sid + "&board_number=" + board_number;
                }
                else {
                  console.log("board_number 안넘김")
                    location.href = "/Source/m/cs/M_CS_NOTICELIST_DETAIL.aspx?sid=" + sid;
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
    <div id="Notice_List">
        <div class="Notice_List_wrap">
            <div id="Notice_List_wrap_inner">
                <%--타이틀~자주묻는 질문,공지사항 ui까지--%>
                <div class="main_Box">
                    <div class="Title_Area">
                        <div class="main_Title_Txt m_ma_font">고객센터</div>
                        <div class="sub_Title_Txt m_middle_font">닥터키드니 고객센터입니다. 무엇을 도와드릴까요?</div>
                    </div>
                    <div class="main_Label_Area">
                        <div class="main_Label_1 main_Label m_middle_font">자주 묻는 질문</div>
                        <div class="main_Label_2 main_Label m_middle_font main_bg_color">공지사항</div>
                        <div class="main_Label_3 main_Label m_middle_font">1:1문의</div>
                    </div>
                </div>

                <%--검색창--%>
                <div class="search_Area">
                    <div class="search_Wrap">
                        <input type="text" class="drkid-input m_lower_font" id="I_SEARCH_WORD" name="I_SEARCH_WORD" value="<%=I_SEARCH_WORD %>" placeholder="검색어를 입력해주세요." />
                        <div class="search_Icon_Wrap">
                            <%--<span class="drkid-icon search-icon"></span>--%>
                            <span class="material-icons">search</span>
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
                                             <div class="notice_List_Area_top">
                                                <div class="notice_Number_Area">
                                                    <div id="board_type">
                                                        <%  if (string.Equals(NOTICE_LIST.Rows[i]["IMPORTANCE_FLAG"].ToString(), "Y", StringComparison.OrdinalIgnoreCase)) 
                                                       { %>
                                                         <div class="imfortanace_txt m_lower_font">중요</div>
                                                     <%}%>
                                                     <% else 
                                                        { %>
                                                            <%--공지 사항 글 중요 텍스트를 제외한 번호 표시--%>
                                                            <%--임의로 안보이게 해놓음 필요시 살릴 것--%>
                                                           <%--<div class="common_txt m_lower_font"data-value="<%=totalCount - offset - i %>"><%=totalCount - offset - i %></div>--%>
                                                         <%}%>
                                                    </div> 
                                                </div>
                                                <div class="notice_Title_Area">
                                                    <div class="notice_Title m_middle_font"><%=NOTICE_LIST.Rows[i]["BOARD_TITLE"] %></div>
                                                </div>
                                            </div>

                                           <%-- 공지사항 게시글 등록자 명 --%>
                                            <%--<div class="notice_Writer_Area">
                                                <div class="notice_Writer m_middle_font"><%=NOTICE_LIST.Rows[i]["POST_USER_NAME"] %></div>
                                            </div>--%>
                           
                                            <div class="notice_Created_Date_Area">
                                                <%--<div class="notice_Created_Date lowerst-font"><%=NOTICE_LIST.Rows[i]["POST_TIME"] %></div>--%>
                                                <div class="notice_Created_Date m_middle_font"> <%= ((DateTime)NOTICE_LIST.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd") %></div>
                                               

                                            </div>
                                      </div>
                                <%}%>
                             <%}%>
                        </div>
                    </div>
               
                  <%--페이징--%>
                <div class="pageNavigationStr" style="padding-top: 2rem;">
                    <%=pageNavigationStr%>
                </div>
               
            </div>
        </div>
    </div>    
</asp:Content>
