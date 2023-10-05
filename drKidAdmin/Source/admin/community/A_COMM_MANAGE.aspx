<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_COMM_MANAGE.aspx.cs" Inherits="drKidAdmin.Source.admin.community.A_COMM_MANAGE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    /*달력시작*/
        .check_top_wrap_inner {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px 0;
            gap: 80px;
        }

        .top_icon {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .icon {
            width: 50px;
            height: 50px;
            text-align: center;
            border-radius: 50%;
            background: #767A83;
            color: #fff;
        }

        .icon > span {
            line-height: 50px;
        }

        .icon_title_font {
            font-size: 12px;
        }

         .icon_title_big_font {
            font-size: 22px;
        }

         .title  {
            padding: 20px 30px;
            border-bottom: 1px solid #dbdde2;
         }

         .content {
            padding: 20px 30px;
            background:#F8F9FD;
         }

         .padding-bottom {
             padding-bottom: 10px;
         }

         /*title input*/
         .content_wrap_inner_one {
         }

         .contentArea {
             display: flex;
             align-items: center;
         }

         .contentArea_title {
             min-width: 8%;
             font-weight: 400;
         }

         .contentArea_input {
             width: 250px;
         }

         .contentArea_input > input {
             width: 190px;
         }

         /*체크 박스*/
         .content_wrap_inner_two {
            /*padding: 20px 0;
            border-bottom: 1px solid #dbdde2;*/
         }

         .contentArea_check {
            display: flex;
            align-items: center;
            gap: 30px;
         }

         /*date*/
         .product_date_all_list {
             display: flex;
             align-items: center;
             gap: 10px;
         }

         .product_date_list {
             display: flex;
             align-items: center;
             gap: 10px;
         }

         .product_date {
             border: 1px solid var(--mono_line);
             padding: 5px 12px;
             cursor:pointer;
             background:#fff;
         }

         .date_picker {
             display: flex;
             align-items: center;
             gap: 20px;
         }
         .Date_content{
            display: flex;
            align-items: center;
            gap: 20px;
         }

         .datePicker > input {
             height: 34px;
         }

         .datePicker-icon {
             border-left: none;
             background: #fff;
         }

         /*radio*/
         .content_wrap_inner_three {
             padding-top: 20px;
         }

         .radio_all_list {
             display: flex;
             align-items: center;
             gap: 30px;
        }

        .drkid-radio > input {
            margin: 0;
            background: #fff;
        }

        /*최하단 버튼*/
        .bottom_button_wrwp {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 20px;
            padding: 20px 0;
        }

         /*여기서 부터 조회 결과*/
        .BackGround_Container{
            margin : 10px;
            background-color : white;
        }
        .Title-wrap{
            background-color: white;
            margin: 12px 12px 0 12px;
            border-bottom: 1px solid rgb(219, 221, 226);
        }
        .Main_wrap{
            background-color : white;
            margin: 0 12px;
            padding : 28px 0 ;
            border-bottom: 1px solid rgb(219, 221, 226);
        }
        .sub-wrap{
            font-weight : bold;
        }
        .Main_wrap{
            padding : 20px 30px;
        }
        .Today_Detail_BTN, .Today_Delete_BTN{
            background-color : #115C5E;
            color : white;
            height: 35px;
            align-items: center;
            display: flex;
            justify-content: center;
            cursor : pointer;
        }
        /*테이블 높이조절*/
        .table-common tbody tr td {
            height: 50px;
        }
        .content1_button_select{
            width : 190px;
            background-color : white;
            margin-right: 15px;
        }
        .custom-sub-warp-txt{
            margin-right: 10px;
        }
        .Search_Option_Input {
            height : 34px;
            width : 250px;
        }
        
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
         .dateUi {
             border: 1px solid var(--mono_line);
             padding: 5px 12px;
             cursor:pointer;
             background:#fff;
         }
         
         .date_picker {
             display: flex;
             align-items: center;
             gap: 20px;
         }
          .product_date_all_list {
             display: flex;
             align-items: center;
             gap: 10px;
         }
         .active {
            border: 1px solid var(--main_color);
            color:  var(--main_color);
        }

</style>
        <script>
            var $FROM = `<%=FROM%>`;
            var $TO = `<%=TO%>`;
            var $cp_ret_status = `<%=cp_ret_status%>`;
            var $matches = `<%=matches%>`;
            var $SEARCH_BOARD_TYPE =  `<%=SEARCH_BOARD_TYPE%>`;
            $(document).ready(function () {
                //게시글 유형 선택시 SELECT에 값넣기
             
                if($cp_ret_status == "Y")
                {
                    hideProgress();
                }
                var searchBoardType = $('input[name="$SEARCH_BOARD_TYPE"]').val();

              
           
                //상품등록일자 시작일 세팅 HJH 0825
                var today = new Date();
                if($FROM == "" || $FROM == null){
                    //시작일 디폴트 세팅
                    var startDate = new Date(today);
                    startDate.setDate(startDate.getDate() - 7);
                    var formatted_start_date = startDate.toISOString().split('T')[0];
                    $('input[name="FROM"]').val(formatted_start_date);
                }
                else{
                    //시작일 조회 후 검색조건 세팅
                    $FROM = $FROM.replace(/(\d{4})(\d{2})(\d{2})/, "$1-$2-$3");
                    $('input[name="FROM"]').val($FROM);
                }
                //상품등록일자 종료일 세팅 HJH 0824
                if($TO == "" || $TO == null){
                    //종료일 디폴트 세팅
                    var formatted_today = today.toISOString().split('T')[0];
                    $('input[name="TO"]').val(formatted_today);
                }
                else{
                    //종료일 조회 후 검색조건 세팅
                    $TO = $TO.replace(/(\d{4})(\d{2})(\d{2})/, "$1-$2-$3");
                    $('input[name="TO"]').val($TO);
                }
                //상품등록일자 ui 오늘,7일 ... 등 클릭 이벤트 HJH 0824
                $(".dateUi").click(function (e) {
                    var Today = new Date();
                    //클릭된 css적용
                    $(".dateUi").removeClass("active");
                    $(e.currentTarget).addClass("active");
                    var format_data_value = $(e.currentTarget).data('value');// today,7,15 등등
                    $("#DATEUI").val(format_data_value);
                    if (format_data_value == "today") {
                        //오늘 클릭 시 오늘 날짜 설정
                        var today_date = new Date(Today);
                        var format_today = today_date.toISOString().split('T')[0];
                        $('input[name="FROM"]').val(format_today);
                    }
                    else {
                        //누른 일수만큼 시작일 값 설정
                        var StartDate = new Date(Today);
                        StartDate.setDate(StartDate.getDate() - format_data_value);
                        var formattedDate = StartDate.toISOString().split('T')[0];//'YYYY-MM-DD'
                        $('input[name="FROM"]').val(formattedDate);
                    }
                });
                //검색 버튼
                $('#search-btns').on('click', function () {
                    showProgress();
                    $("#search_btn_click_flag").val("Y");
                    $('#flag').val('search');
                    $('#form1').submit();
                });
                //초기화 버튼
                $('.drkid-btn-sub2').on('click', function () {
                    $("#search_type").val("*");

                    $('.Search_Option_Input ').val("");
                    $("#search_type").val("*");
                });

                //상세 버튼
                $(".detal_box_button").click(function () {
                    var sid = $(this).attr('id');
                    var queryString = "?request_sid=" +  sid;
                    openMenuPath("/Source/admin/customer/A_CUSTOMER_DETAIL.aspx", queryString, true);
                });

                //관리자 a태그 href 페이징 시 검색조건 날아가는 문제 관련 
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
                        $('#form1').submit();
                    }
                });

            });        
    </script>
<script>
    $(document).ready(function () {
        //게시글상세페이지 이동
        $('.Today_Detail_BTN').on('click', function () {
            var sid = $(this).data("boardsid");
            var url = "/Source/admin/community/A_COMM_DETAIL.aspx";
            var board_url = "?BOARD_SID=" + sid
            console.log(url)
            openMenuPath(url, board_url, true);
        });
        //게시글 삭제
        $(".Today_Delete_BTN").on('click', function (e) {
            _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
              function () {
                  $('input[name="I_BOARD_SID"]').val($(e.currentTarget).data('boardsid'));
                  $('#flag').val('delete_board');
                  console.log($('input[name="I_BOARD_SID"]').val());
                  $('#form1').submit();
              }, function (error) { _popModal.Alert('', error); });


                
            //_popModal.Alert('알림', '게시글이 삭제되었습니다.');
               
            //location.href = "/Source/client/community/C_COMMUNITY_PAGE.aspx";
        });
        $('#refresh').on('click', function () {
            $('.Search_Option_Input ').val('');
        })
    });

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="custom_Paging" id="custom_Paging" value="" />
        <input type="text" name="search_btn_click_flag" id="search_btn_click_flag" value="" />
         <input type="text" name="I_BOARD_SID"  value="" />
    </div>
    <div id="wrap">
        <div class="sub-warp">
            <%--커뮤니티 조회 타이틀--%>
            <div class="title">
                <span>커뮤니티 게시글 조회</span>
            </div>
           <%--게시글 조회 조건--%>
            <div class="content">
                <div class="content_wrap">
                    <div class="content_wrap_inner">
                        <div class="content_wrap_inner_one">
                            <%--조회종류--%>
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>검색조건</span>
                                </div>
                                <div class="content1_button_select">
                                    <select class="drkid-select lowerst-font" id="search_type" name="SEARCH_TYPE" data-font-class="lower-font">
                                         <option value="*" <%=SEARCH_TYPE == "*" ? "selected=\"selected\"" : "" %>>검색조건 선택</option>
                                         <option value="BOARD_TITLE" <%=SEARCH_TYPE == "BOARD_TITLE" ? "selected=\"selected\"" : "" %>>제목</option>
                                        <option value="POST_USER_NAME" <%=SEARCH_TYPE == "POST_USER_NAME" ? "selected=\"selected\"" : "" %>>작성자</option>
                                        <option value="">선택해주세요.</option>

                                    </select>
                                </div>  
                                <div class="Search_Option_Wrep">
                                    <input class="Search_Option_Input lowerst-font"  name="SEARCH_VALUE" type="text" value="<%=SEARCH_VALUE %>" placeholder="입력해주세요."/>
                                </div>
                            </div>                    
                        </div>

                        <div class="content_wrap_inner_one">               
                            <%--커뮤니티 등록 일자--%>
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>작성일</span>
                                </div>
                                 
                                <div class="Date_content">
                                    <%--상품등록일자 일자 및 캘린더--%>   
                                    <div class="product_date_all_list">
                                        <%--상품등록일자 -> 일자--%>
                                        <div class="dateUi lowerst-font <%= DATEUI == "today" ? "active" : "" %>"data-value="today">
                                                <span>오늘</span>
                                            </div>
                                            <div class="dateUi lowerst-font <%= DATEUI == "7" ? "active" : "" %>"data-value="7">
                                                <span>7일</span>
                                            </div>
                                            <div class="dateUi lowerst-font <%= DATEUI == "15" ? "active" : "" %>"data-value="15">
                                                <span>15일</span>
                                            </div>
                                            <div class="dateUi lowerst-font <%= DATEUI == "30" ? "active" : "" %>"data-value="30">
                                                <span>1개월</span>
                                            </div>
                                            <div class="dateUi lowerst-font <%= DATEUI == "90" ? "active" : "" %>"data-value="90">
                                                <span>3개월</span>
                                            </div>
                                            <div class="dateUi lowerst-font <%= DATEUI == "365" ? "active" : "" %>"data-value="365">
                                                <span>1년</span>
                                            </div>
                                        </div>
                                        <%--상품등록일자 -> 캘린더--%>
                                        <div class="date_picker">
                                            <div class="datePicker lower-font" style="width:170px;">
                                                <input type="text" class="datePicker-input lowerst-font important-input" data-title="조회 기간" placeholder="조회기간" name="FROM" />
                                                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                            </div>

                                            <div class="date_picker_center">
                                                <span>~</span>
                                            </div>

                                            <div class="datePicker lower-font" style="width:170px;">
                                                <input type="text"  class="datePicker-input lowerst-font important-input" data-title="조회 기간" placeholder="조회기간" name="TO" />
                                                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="content_wrap_inner_one">
                            <%--유형종류--%>
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>유형</span>
                                </div>
                                <div class="contentArea_Wrap">
                                    <div class="content1_button_select">
                                        <select class="drkid-select lowerst-font"  name="SEARCH_BOARD_TYPE" data-font-class="lower-font">
                                            <option class="lowerst-font" value="%">전체</option>
                                            <%for (int i = 0; i < BOARD_CATEGORY.Rows.Count; i++)
                                              { %>
                                            <option class="lowerst-font" value="<%=BOARD_CATEGORY.Rows[i]["CODE_CODE"]%>"><%=BOARD_CATEGORY.Rows[i]["CODE_NAME"] %></option>
                                            <%} %>
                                  
                                        </select>
                                    </div> 
                                </div> 
                            </div>                    
                        </div>                 
                    </div>
                </div>
                <%--최하단 버튼--%>
                <div class="bottom_button">
                     <div class="bottom_button_wrwp">
                        <div class="drkid-btn-sub2 drkid-btn-active" id="search-btns">
                            <span class="lowerst-font">검색</span>
                        </div>
                         <div class="drkid-btn-sub2">
                            <span class="lowerst-font">초기화</span>
                        </div>
                    </div>
                </div>
            </div>
    </div>
<div class="Title-wrap">
    <div class="sub-warp-title custom-sub-warp-title">
        <span class="middle-font custom-sub-warp-txt">회원 목록</span>
        <span class="mono_sub_color">전체</span>
        <span class="mono_sub_color"><%=totalCount %></span>
        <span class="mono_sub_color">개</span>
    </div>
</div>
<div class="Main_wrap">
    <div class="table-wraper max-height-overflow custom-table-wraper">
        <table class="table-common">
            <colgroup>
                <col style="width:7%;"/>
                <col style="width:7%;"/>
                <col style="width:28%;"/>
                <col style="width:6%;"/>
                <col style="width:7%;"/>
                <col style="width:10%;"/>
                <col style="width:18%;"/>
                <col style="width:7%;"/>
            </colgroup>
            <thead>
                <tr>
                    <th class="lower-font">상세</th>
                    <th class="lower-font">NO.</th>
                    <th class="lower-font">제목</th>
                    <th class="lower-font">유형</th>
                    <th class="lower-font">추천</th>
                    <th class="lower-font">작성자</th>
                    <th class="lower-font">작성일</th>
                    <th class="lower-font">삭제</th>
                </tr>
            </thead>
            <tbody id="big-tbody">
                <% if (COMM_LIST != null && COMM_LIST.Rows.Count > 0)
                   { %>
                <%--한줄--%> 
                  <%--한줄--%>       
                  <%for (int i = 0; i < COMM_LIST.Rows.Count; i++)
                { %>              
                <tr> 
                    <td>
                        <div data-boardsid ="<%=COMM_LIST.Rows[i]["BOARD_SID"] %>" class="Today_Detail_BTN" >
                            <span>상세</span>
                        </div>
                    </td>
                    <td><%=totalCount - offset - i  %></td>
                    <td><%=COMM_LIST.Rows[i]["BOARD_TITLE"] %></td>
                    <td><%=COMM_LIST.Rows[i]["CODE_NAME"] %></td>
                    <td><%=COMM_LIST.Rows[i]["RECOMMEND_COUNT"]%></td>
                    <td><%=COMM_LIST.Rows[i]["POST_USER_NAME"] %></td>
                    <td><%=COMM_LIST.Rows[i]["POST_TIME"] %></td>
                    <td>
                        <div class="Today_Delete_BTN" data-boardsid="<%=COMM_LIST.Rows[i]["BOARD_SID"] %>">
                            <span>삭제</span>
                        </div>
                    </td>
                </tr>
                  <% } %> 
                <% } %>
            </tbody>  
        </table>
          
    </div>
     <div class="pageNavigationStr" style="padding: 50px 0px;">
            <%=pageNavigationStr%>
     </div>
</div>
</asp:Content>
