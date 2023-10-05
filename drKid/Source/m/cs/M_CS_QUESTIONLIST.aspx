﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_CS_QUESTIONLIST.aspx.cs" Inherits="drKid.Source.m.cs.M_CS_QUESTIONLIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style> 
        .myPage {
           background-color:#FFFFFF;
           padding: 0 15px;
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

        .List {
            padding-bottom: 1rem;
            border-bottom: 1px solid var(--m_mono_color);
        }

        .main_Box {
            padding: 0px 15px;
        }
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

        .main_Label_Area > .main_Label:first-child {
            color:#fff;
        }

        .navi_Area {
            padding:1rem 0px 0px 15px;
            overflow: scroll;
        }
        .navi_List {
            display: flex;
            width: 150%;
            gap:0.5rem;
        }

        .navi_Content_wrap {
            cursor:pointer;
        }
        .navi_Content_wrap:hover {
                border-bottom: 2px solid #115C5E;
        }

        .navi_Content {
            color:#9F9F9F;
            padding: 0 0.5rem;
        }
        .navi_Content:hover {
            color: var(--main_color);
            font-weight: 500;
        }
        .clicked {
            color:var(--main_color);
            border-bottom: 2px solid var(--main_color);
        }
        .clicked_2 {
            color:#115C5E;
            font-weight:500;
        }
        .view_Flag {
            background:#FFC609;
        }
        .search_Area {
            padding: 1rem 15px;
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

        .question_List_Area {
            padding: 0 15px;
            
        }
        .question_List {
              width: 100%;
        }
        .question_Content {
            border-bottom: 1px solid #E1E1E1;
            display: flex;
            padding: 0.5rem 0;
            cursor:pointer;
            gap: 0.5rem;
        }
        .question_Number {
            color:#828282;
                font-weight: 500;
        }
        .question_Number_Area {
            width:9%;
        }
        /*.question_Category_Area {
             width:11%;
        }*/
        .question_Category {
            padding-bottom: 0.4rem;
        }

        .question_Number, .question_Category{
            font-weight:500;
        }
        .question_Title_Area {
            width:100%;
        }
        .question_Title {
           font-weight:500;
        }
        .question_Icon_Area {
             width: 2%;
            position: relative;
            top: 5px;
        }
      
        .question_Flag {
            background: #115C5E;
            opacity: 1;
            color: #ffffff;
            border-radius: 50%;
            width: 23px;
            height: 21px;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .question_Icon_Area {
            cursor:pointer;
        }
        .arrow-sub:after {
            font-size: 28px;
            color: var(--mono_dea);
        }
        /*답변*/
        .answer_Conttent_Area {
            padding: 10px 0;
            background: #F9F9F9;
            display:none;
            border-top: 1px solid #E1E1E1;
            border-bottom: 1px solid #E1E1E1;
        }
        .answer_Content {
            display: flex;
            width: 100%;
        }

        .answer_Info_Area {
            padding-right: 0.3rem;
        }
        .empty_Area_Left {
            width:20%;
        }
        .answer_Wrap {
            width: 100%;
            align-items: center;
            display: flex;
            gap: 0px 15px;
        }
        .answer_Flag {
            background: #FFC609;
            opacity: 1;
            color: #ffffff;
            border-radius: 50%;
            width: 21px;
            height: 21px;
            text-align: center;
        }
        .answer_Info {
            font-weight:500;
            line-height: 1.5;
        }
        .empty_Area_Right {
            width:2%;
        }
        #hidden-field {
           display:none;
        }
        .no_Data_Info_Area {
            padding: 50px;
            border-bottom: 1px solid #E1E1E1;
        }
        .no_Data_Info {
             text-align: center;
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
        var remember_category = "<%=T_CATEGORY_TYPE%>";
        var $matches = `<%=matches%>`;

        $(document).ready(function () {
            //페이징 수정
            $('.paging').on('click', 'a', function (event) {
                event.preventDefault(); 
                var paging_Value = $(this).text(); 
                var _offset;
                if(paging_Value != "" && paging_Value != null)
                {
                    paging_Value = paging_Value*1;
                    _offset = (paging_Value*$matches)-$matches;
                    $("#custom_Paging").val(_offset);
                    $('#flag').val('search');
                    $('#aspnetForm').submit();
                }
            });

            default_setting();
            //네이게이션 클릭 시 효과
            $(".navi_Content_wrap").click(function () {
                $(".navi_Content_wrap").removeClass("clicked");
                $(".navi_Content").removeClass("clicked_2");
                $(this).addClass("clicked");
                $(this).children().addClass("clicked_2");
            });

            //질문 클릭 시 id 번호를 통해 연결되는 답변 영역 보여줌. 
            $(".question_Content").click(function () {
                var question_Content = $(this);
                var id_number = $(this).attr('id');
                var index = id_number.replace('question_Content_', '');
                var answerArea = $("#answer_Conttent_Area_" + index);
                //질문 박스 클릭 하면 해당 내용 찾을 수 있게 변경
                var icon_control = $(this).find(".question_Content");
                //질문 아이콘 제어
                //var icon_control = $(this).find(".question_Icon_Area");
                // 질문 플래그(Q)제어
                //var question_Flag = $(this).find(".question_Flag");

                ////////////////////
                // 토글방식처럼 동작.
                if (answerArea.css("display") === "none") {
                    answerArea.css("display", "flex");
                    icon_control.css("transform", "rotate(180deg)").css("top", "0px").css("left", "3px");
                    //question_Flag.css("background", "#FFC609");
                    question_Content.css("background", "#F9F9F9").css("border-bottom", " none");
                    // question_Content.css("background", "#F9F9F9");

                } else {
                    answerArea.css("display", "none");
                    icon_control.css("transform", "rotate(0deg)").css("top", "5px").css("left", "0px");
                    //question_Flag.css("background", "#115C5E");
                    question_Content.css("background", "#FFFFFF").css("border-bottom", "1px solid #E1E1E1");
                    //question_Content.css("background", "#FFFFFF");

                }
            });
            
            //검색아이콘 클릭
            $(".search_Icon_Wrap").click(function () {
                var category_Value = $('.navi_Content_wrap.clicked').attr('data-value');
                console.log(category_Value);
                $("#T_CATEGORY_TYPE").val(category_Value);
                $('[name="search_btn_click_flag"]').val('Y');
                $("#flag").val('search');
                //$("#form1").submit();
                $("#aspnetForm").submit();
            });

            //검색어 인풋입력 시 엔터 누르면 바로 검색되도록
            //$("#I_SEARCH_WORD").keydown(function (event) {
            //    if (event.keyCode === 13) {
            //        var category_Value = $('.navi_Content_wrap.clicked').attr('data-value');
            //        console.log(category_Value);
            //        $("#T_CATEGORY_TYPE").val(category_Value);
            //        $('[name="search_btn_click_flag"]').val('Y');
            //        $('#flag').val('search');
            //        $('#form1').submit();
            //    }
            //});

            // 카테고리 누를떄마다 검색
            $(".navi_Content_wrap").click(function () {
                console.log("탐")
                $('[name="search_btn_click_flag"]').val('Y');
                var clicked_category = $(this).data('value');
                $("#T_CATEGORY_TYPE").val(clicked_category);
                console.log($("#T_CATEGORY_TYPE").val())
                $("#flag").val("search");
                //$("#form1").submit();
                $("#aspnetForm").submit();
            });

        });

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
        });

        function default_setting() {
            if (remember_category != null || remember_category != '') {
                var element_click_1 = document.querySelector('.navi_Content_wrap[data-value="' + remember_category + '"]');
                if (element_click_1) {
                    element_click_1.classList.add('clicked');
                }

                var element_click_2 = document.querySelector('.navi_Content.lower-font[data-value="' + remember_category + '"]');
                if (element_click_2) {
                    element_click_2.classList.add('clicked_2');
                }
            } else {
                var default_element_1 = document.querySelector('.navi_Content_wrap[data-value="\\*"]');
                if (default_element_1) {
                    default_element_1.classList.add('clicked');
                }
                var default_element_2 = document.querySelector('.navi_Content.lower-font[data-value="\\*"]');
                if (default_element_2) {
                    default_element_2.classList.add('clicked_2');
                }
            }
        }
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
         <input type="text" name="T_CATEGORY_TYPE" id="T_CATEGORY_TYPE" value="*" />
        <input type="text" name="search_btn_click_flag" id="search_btn_click_flag" value="" />
        <input type="text" name="custom_Paging" id="custom_Paging" value="" />
    </div>

    <div class="Question_List">
        <div class="Question_List_wrap">
            <div class="Question_List_wrap_inner">
                <%--타이틀~자주묻는 질문,공지사항 ui까지--%>
                <div class="List">
                    <div class="main_Box">
                        <div class="Title_Area">
                            <div class="main_Title_Txt m_ma_font">고객센터</div>
                            <div class="sub_Title_Txt m_middle_font">닥터키드니 고객센터입니다. 무엇을 도와드릴까요?</div>
                        </div>
                        <div class="main_Label_Area">
                            <div class="main_Label_1 main_Label m_middle_font main_bg_color">자주 묻는 질문</div>
                            <div class="main_Label_2 main_Label m_middle_font">공지사항</div>
                            <div class="main_Label_3 main_Label m_middle_font">1:1문의</div>
                        </div>
                    </div>
                </div>
                <%--네이게이션--%>
                <div class="navi_Area">
                    <div class="navi_List">
                        <div class="navi_Content_wrap" data-value="*">
                            <div class="navi_Content m_lower_font"data-value="*">전체</div>
                        </div>
                        <%for (int i = 0; i < category_info.Rows.Count; i++)
                        { %>
                            <div class="navi_Content_wrap" data-value="<%=category_info.Rows[i]["CODE_CODE"] %>">
                                <div class="navi_Content m_lower_font" data-value="<%=category_info.Rows[i]["CODE_CODE"] %>"><%=category_info.Rows[i]["CODE_NAME"]%></div>
                            </div>
                        <%} %>
                    </div>
                </div>
                <%--검색창--%>
                <div class="search_Area">
                     <div class="search_Wrap">
                        <input type="text" class="drkid-input m_lower_font" id="I_SEARCH_WORD"value="<%=I_SEARCH_WORD%>" name="I_SEARCH_WORD" placeholder="검색어를 입력해주세요."/>
                        <div class="search_Icon_Wrap">
                           <%-- <span class="drkid-icon search-icon"></span>--%>
                             <span class="material-icons">search</span>
                        </div>
                     </div>
                </div>     
                <%--자주묻는질문 리스트--%>
                <div class="question_List_Area">
                    <div class="question_List">
                          <% if (totalCount > 0)
                             { %>
                                 <%for (int i = 0; i < FAQ_LIST.Rows.Count; i++)
                                  { %>
                                     <div class="question_Content"id="question_Content_<%=i%>">
                                            <%--<div class="question_Number_Area">
                                                <div class="question_Number lowerst-font"><%=totalCount - offset - i %></div>
                                            </div>--%>
                                           <div class="question_Flag m_lower_font">
                                               <span>Q</span>
                                           </div>
                                            <div class="question_Title_Area">
                                               <%-- <div class="question_Flag lowerst-font">Q</div>--%>
                                                <div class="question_Category_Area">
                                                <div class="question_Category lowerst-font main_color">[<%=FAQ_LIST.Rows[i]["CODE_NAME"]%>]</div>
                                            </div>
                                                <div class="question_Title lowerst-font"><%=FAQ_LIST.Rows[i]["BOARD_TITLE"] %></div>
                                            </div>
                                            <%--<div class="question_Icon_Area">
                                               <span class="drkid-icon arrow-sub down-arrow"></span>
                                            </div>--%>
                                        </div>
                                        <%--답변--%>
                                        <div class="answer_Conttent_Area"id="answer_Conttent_Area_<%=i%>">
                                            <div class="answer_Content">
                                                <%--<div class="empty_Area_Left"></div>--%>
                                                <div class="answer_Wrap">
                                                    <div class="answer_Flag_Area">
                                                        <div class="answer_Flag lowerst-font">A</div>
                                                    </div>
                                                    <div class="answer_Info_Area">
                                                         <div class="answer_Info m_lower_font"><%=FAQ_LIST.Rows[i]["BOARD_MESSAGE"] %></div>
                                                    </div>
                                                </div>
                                                <%--<div class="empty_Area_Right"></div>--%>
                                            </div>
                                        </div>

                                  <%}%>
                         <%}%>

                      <% else  
                        { %>
                            <div class="no_Data_Info_Area">
                                <div class="no_Data_Info lower-font">등록된 질문이 없습니다.</div>
                            </div>
                        <%}%>

                        <%--페이징--%>
                        <div class="pageNavigationStr" style="padding-top: 1rem;">
                            <%=pageNavigationStr%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
