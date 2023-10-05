﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_CS_QUESTIONLIST.aspx.cs" Inherits="drKid.Source.client.cs.C_CS_QUESTIONLIST" %>
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
            background: #115C5E;
            border: 1px solid #D8D8D8;
            color: #FFFFFF;
            padding: 9px 0px;
            width: 127px;
            text-align: center;
            cursor:pointer;
        }
        .main_Label_2 {
            width: 92px;
            text-align: center;
            padding: 9px 0px;
            background:#FFFFFF;
            border: 1px solid #D8D8D8;
            cursor:pointer;
        }
        .main_Label_2:hover {
            background: #115C5E;
            color: #FFFFFF;
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
        .navi_Area {
            padding:60px 0px 0px 0px;
        }
        .navi_List {
            display: flex;
            width: 100%;
            justify-content: center;
            gap: 0px 20px;
        }

        .navi_Content_wrap {
            padding:5px;
            cursor:pointer;
        }
        .navi_Content_wrap:hover {
                border-bottom: 2px solid #115C5E;
        }

        .navi_Content {
            color:#9F9F9F;
            padding: 4px 0px;
        }
        .navi_Content:hover {
            color: #115C5E;
            font-weight: 500;
        }
        .clicked {
            color:#115C5E;
            border-bottom: 2px solid #115C5E;
        }
        .clicked_2 {
            color:#115C5E;
            font-weight:500;
        }
        .view_Flag {
            background:#FFC609;
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
        .question_List_Area {
            width:100%;
            
        }
        .question_List {
              width: 1300px;
              border-top: 1px solid #4E4E4E;
              margin: 0 auto;
        }
        .question_Content {
            border-bottom: 1px solid #E1E1E1;
            display: flex;
            align-items: center;
            padding: 10px 20px;
            cursor:pointer;
        }
        .question_Number {
            color:#828282;
                font-weight: 500;
        }
        .question_Number_Area {
            width:9%;
        }
        .question_Category_Area {
             width:11%;
        }
        .question_Number, .question_Category{
            font-weight:500;
        }
        .question_Title_Area {
            width:80%;
            align-items: center;
            display: flex;
            gap: 0px 15px;
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
            height: 23px;
            text-align: center;
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
            padding: 10px 20px;
            background: #F9F9F9;
            display:none;
            border-bottom: 1px solid #E1E1E1;
        }
        .answer_Content {
            display: flex;
            width: 100%;
        }
        .empty_Area_Left {
            width:20%;
        }
        .answer_Wrap {
            width: 80%;
            align-items: center;
            display: flex;
            gap: 0px 15px;
        }
        .answer_Flag {
            background: #FFC609;
            opacity: 1;
            color: #ffffff;
            border-radius: 50%;
            width: 23px;
            height: 23px;
            text-align: center;
        }
        .answer_Info {
            font-weight:500;
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
          
          $(document).ready(function () {
            
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
                  //질문 아이콘 제어
                  var icon_control = $(this).find(".question_Icon_Area");
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

              //검색아이콘 클릭
              $(".search_Icon_Wrap").click(function () {
                  var category_Value = $('.navi_Content_wrap.clicked').attr('data-value');
                  console.log(category_Value);
                  $("#T_CATEGORY_TYPE").val(category_Value);
                  $('[name="search_btn_click_flag"]').val('Y');
                  $('#flag').val('search');
                  $('#form1').submit();
              });
              
              //검색어 인풋입력 시 엔터 누르면 바로 검색되도록
              $("#I_SEARCH_WORD").keydown(function (event) {
                  if (event.keyCode === 13) {
                      var category_Value = $('.navi_Content_wrap.clicked').attr('data-value');
                      console.log(category_Value);
                      $("#T_CATEGORY_TYPE").val(category_Value);
                      $('[name="search_btn_click_flag"]').val('Y');
                      $('#flag').val('search');
                      $('#form1').submit();
                  }
              });
              // 카테고리 누를떄마다 검색
              $(".navi_Content_wrap").click(function () {
                  $('[name="search_btn_click_flag"]').val('Y');
                  var clicked_category = $(this).data('value');
                  $("#T_CATEGORY_TYPE").val(clicked_category);
                  console.log($("#T_CATEGORY_TYPE").val())
                  $('#flag').val('search');
                  $('#form1').submit();
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
                <%--네이게이션--%>
                <div class="navi_Area">
                    <div class="navi_List">
                        <div class="navi_Content_wrap" data-value="*">
                            <div class="navi_Content lower-font"data-value="*">전체</div>
                        </div>
                        <%for (int i = 0; i < category_info.Rows.Count; i++)
                        { %>
                            <div class="navi_Content_wrap" data-value="<%=category_info.Rows[i]["CODE_CODE"] %>">
                                <div class="navi_Content lower-font" data-value="<%=category_info.Rows[i]["CODE_CODE"] %>"><%=category_info.Rows[i]["CODE_NAME"]%></div>
                            </div>
                        <%} %>
                    </div>
                </div>
                <%--검색창--%>
                <div class="search_Area">
                     <div class="search_Wrap">
                        <input type="text" class="drkid-input lower-font" id="I_SEARCH_WORD"value="<%=I_SEARCH_WORD%>" name="I_SEARCH_WORD" placeholder="검색어를 입력해주세요."/>
                        <div class="search_Icon_Wrap">
                             <span class="drkid-icon search-icon"></span>
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
                                            <div class="question_Number_Area">
                                                <div class="question_Number lowerst-font"><%=totalCount - offset - i %></div>
                                            </div>
                                            <div class="question_Category_Area">
                                                <div class="question_Category lowerst-font main_color">[<%=FAQ_LIST.Rows[i]["CODE_NAME"]%>]</div>
                                            </div>
                                            <div class="question_Title_Area">
                                                <div class="question_Flag lowerst-font">Q</div>
                                                <div class="question_Title lowerst-font"><%=FAQ_LIST.Rows[i]["BOARD_TITLE"] %></div>
                                            </div>
                                            <div class="question_Icon_Area">
                                               <span class="drkid-icon arrow-sub down-arrow"></span>
                                            </div>
                                        </div>
                                        <%--답변--%>
                                        <div class="answer_Conttent_Area"id="answer_Conttent_Area_<%=i%>">
                                            <div class="answer_Content">
                                                <div class="empty_Area_Left"></div>
                                                <div class="answer_Wrap">
                                                    <div class="answer_Flag_Area">
                                                        <div class="answer_Flag lowerst-font">A</div>
                                                    </div>
                                                    <div class="answer_Info_Area">
                                                         <div class="answer_Info lowerst-font"><%=FAQ_LIST.Rows[i]["BOARD_MESSAGE"] %></div>
                                                    </div>
                                                </div>
                                                <div class="empty_Area_Right"></div>
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
                        <div class="pageNavigationStr" style="padding: 100px 0px;">
                            <%=pageNavigationStr%>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
