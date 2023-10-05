<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_CUSTOMER_MANAGER.aspx.cs" Inherits="drKidAdmin.Source.admin.customer.A_CUSTOMER_MANAGER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
             width: 100%;
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
             gap: 50px;
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

        /*상품목록*/
        .content2_scroll {
            margin-top: 20px;
            overflow-x: scroll;
            min-height: 200px;
        }
        .product {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 10px 0;
        }

        .product > .product_img {
            width: 55px;
            height:55px;
        }

        .product > .product_img > img {
            object-fit: cover;
        }

        .product > .product_img_txt {
            text-align:start;
        }

        .product > .product_img_txt > span:first-child {
            color: #9F9F9F;
        }



        .titl2 {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .title_font {
            font-weight: 700;
            font-size: var(--drkid-middle-font);
            line-height: var(--drkid-middle-height);
        }

        .content2 {
            padding: 20px 30px;
        }

        .content2_button_wrap_inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .front_button {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .drkid-btn-active {
            min-width: 100px;
            padding: 0 10px;
            min-height: 40px;
        }

        .drkid-btn-active {
            min-width: 80px;
        }

        .drkid-btn-sub2 {
            min-height: 40px;
        }

        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .number-button-Area {
            padding: 300px 0 50px;
        }

        .number-button-wrap {
            align-items: center;
            justify-content: center;
        } 

        #first_number-button {
            border-color: var(--main_color);
            color: var(--main_color);
        }

        .number-button {
            border: 1px solid var(--mono_line);
            color:var(--mono_line);
        }
        /*HJH 0824*/
        .active {
            border: 1px solid var(--main_color);
            color:  var(--main_color);
        }
        .product-category-wraper {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 10px;
            height: 40px;
            border: 1px solid var(--main_color);
            padding-left: 8px;
        }
        .xbtnx-cate {
            width: 30px;
            text-align: center;
            cursor: pointer;
            height: 100%;
            display: flex;
            align-items: center;
        }
        .edit_Btn {
            font-size: 14px;
            width: 40%;
            min-width: 60px;
            height: 29px;
            text-align: center;
            margin: 0 auto;
            line-height: 40px;
            cursor: pointer;
        }
        .product-category-show-block {
            display: flex;
            min-width: 0px;
            max-width: 220px;
            flex-wrap: wrap;
            gap: 10px 0px;
        }
        .no_img {
            width:55px ;
            height:55px;     
            margin: 0 auto;
        }

        /*주문조회 안내 텍스트*/
        .title_txt {
            padding: 20px 30px;
        }
        .title_txt > p {
            margin-bottom: 5px;
        }
        /*.title_txt_span > span:first-child {
            font-weight:500;
        }*/ 
        .title_txt > p,
        .title_txt_span {
             color: var(--mono_sub);
        }

        /*조회종류*/
        .content1_button_select,
        .content2_button_select{
            width: 190px;
            height: 34px;
        }

        .content1_button_select > .drkid-select-div {
            background: #fff;
        }

        /*상세조건*/
        .contentArea_Wrap {
            display: flex;
            gap: 10px;
        }

        .content3_input {
            width: 250px;
            height: 34px;
        }
        .content3_input > input {
            width:100%;
            height: 100%;
        }
        /*회원구분*/
        .content2_button_select > .drkid-select-div {
            background: var(--mono_back);
        }
        /*scroll*/
        .content2_button_wrap_inner > .drkid-btn-sub2,
        .front_button > .drkid-btn-sub2 {
            min-height: 20px;
        }
        /*select-li-span*/
        .drkid-select-ul > li {
            padding: 2px 15px;
        }
        .drkid-select-ul > li > span {
            font-size: 12px;
        }
        .Date_content {
            display: flex;
            gap: 30px;
        }

        /*테이블 정보*/ 
        .table-common > tbody tr td {
            text-overflow: ellipsis;
           
        }
        .table-wraper {
            overflow-x: clip;
        }

        .detal_box_button {
            border: 1px solid var(--main_color);
            background: var(--main_color);
            color: #fff;
            max-width: 90px;
            padding: 2px 0;
            margin: auto;
            cursor:pointer;
        }
        .custom-table-wraper {
            min-width: 1900px;
        }
    </style>
    <script>
        var $FROM = `<%=FROM%>`;
        var $TO = `<%=TO%>`;
        var $cp_ret_status = `<%=cp_ret_status%>`;
        var $matches = `<%=matches%>`;
        $(document).ready(function () {
            if($cp_ret_status == "Y")
            {
                hideProgress();
            }

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="custom_Paging" id="custom_Paging" value="" />
        <input type="text" name="search_btn_click_flag" id="search_btn_click_flag" value="" />
        <input type="text" name="DATEUI" id="DATEUI" value="<%=DATEUI%>" />
    </div>
    <div id="wrap">
        <div class="sub-warp">
            <%--회원 조회 타이틀--%>
            <div class="title">
                <span>회원 조회</span>
            </div>
           <%--회원 조회 조건--%>
            <div class="content">
                <div class="content_wrap">
                    <div class="content_wrap_inner">
                        <div class="content_wrap_inner_one">
                            <%--검색 조건--%>
                            <div class="content_wrap_inner_one">
                                <div class="contentArea padding-bottom">
                                    <div class="contentArea_title lowerst-font">
                                        <span>검색 조건</span>
                                    </div>
                                    <div class="contentArea_Wrap">
                                        <div class="content1_button_select"> 
                                            <select class="drkid-select lowerst-font" name="SEARCH_TYPE" data-font-class="lower-font">
                                                <option value="*" <%=SEARCH_TYPE == "*" ? "selected=\"selected\"" : "" %>>검색조건 선택</option>
                                                <option value="USER_ID" <%=SEARCH_TYPE == "USER_ID" ? "selected=\"selected\"" : "" %>>아이디</option>
                                                <option value="USER_NAME" <%=SEARCH_TYPE == "USER_NAME" ? "selected=\"selected\"" : "" %>>회원명</option>
                                                <option value="USER_MOBILE_NO" <%=SEARCH_TYPE == "USER_MOBILE_NO" ? "selected=\"selected\"" : "" %>>휴대폰 번호</option>
                                                <option value="USER_EMAIL" <%=SEARCH_TYPE == "USER_EMAIL" ? "selected=\"selected\"" : "" %>>이메일</option>
                                            </select>
                                        </div> 
                                        <div class="content3_input">
                                            <input class="lowerst-font" type="text" name="SEARCH_VALUE" value="<%=SEARCH_VALUE %>" placeholder="입력해 주세요."/>
                                        </div>
                                    </div> 
                                </div>                    
                            </div>
                        </div>
                        <%--가입일--%>
                        <div class="content_wrap_inner_one">               
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>가입일</span>
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
                        <%--회원구분--%>
                        <div class="content_wrap_inner_one">
                             <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>회원구분</span>
                                </div>
                                <div class="content_radio">
                                    <div class="radio_all_list">
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="USER_DIVISION" value="*" <%=USER_DIVISION == "*" || USER_DIVISION == "" ? "checked=\"checked\"" : "" %> > 
                                                <span class="lowerst-font">전체</span>
                                            </label>
                                        </div>
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="USER_DIVISION" value="PREMIUM" <%=USER_DIVISION == "PREMIUM" ? "checked=\"checked\"" : "" %>/>
                                                <span class="lowerst-font">프리미엄 회원</span>
                                            </label>
                                        </div>
                                        <div class="content2_button_select">
                                            <select class="drkid-select lowerst-font" name="USER_DIVISION_DETAIL" style="background: var(--mono_back);" data-font-class="lower-font">
                                                <option value="*" <%=USER_DIVISION_DETAIL == "*" ? "selected=\"selected\"" : "" %> >전체</option>
                                                <option value="21" <%=USER_DIVISION_DETAIL == "21" ? "selected=\"selected\"" : "" %>>나노 인플루언서</option>
                                                <option value="31" <%=USER_DIVISION_DETAIL == "31" ? "selected=\"selected\"" : "" %>>마이크로 인플루언서</option>
                                            </select>
                                        </div>  
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="USER_DIVISION" value="BUSINESS" <%=USER_DIVISION == "BUSINESS" ? "checked=\"checked\"" : "" %>/>
                                                <span class="lowerst-font">비즈니스 회원</span>
                                            </label>
                                        </div>
                                        <div class="content2_button_select">
                                            <select class="drkid-select lowerst-font" name="USER_DIVISION_DETAIL2" style="background: var(--mono_back);" data-font-class="lower-font">
                                                <option value="*" <%=USER_DIVISION_DETAIL2 == "*" ? "selected=\"selected\"" : "" %> >전체</option>
                                                <option value="41" <%=USER_DIVISION_DETAIL2 == "41" ? "selected=\"selected\"" : "" %>>메가 인플루언서</option>
                                                <option value="52" <%=USER_DIVISION_DETAIL2 == "52" ? "selected=\"selected\"" : "" %>>셀러브리티</option>
                                            </select>
                                        </div>  
                                    </div>
                                </div>
                            </div>      
                        </div>  
                        <%--추천인--%>
                        <div class="content_wrap_inner_one">
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>추천인</span>
                                </div>
                                <div class="contentArea_Wrap">
                                    <div class="content3_input">
                                        <input class="lowerst-font" type="text" name="RECOMMENDER_ID" value="<%=RECOMMENDER_ID %>" placeholder="추천인 아이디를 입력해 주세요."/>
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
        <%--회원목록--%>
        <div class="sub-warp">
            <%--회원목록 타이틀--%>
            <div class="title">
                <div class="titl2">
                    <div class="titl2_wrap title_font">회원 목록</div>
                    <div class="titl2_wrap lowerst-font mono_sub_color">전체 <%=totalCount%>개</div>
                </div>
            </div>
            <%--회원목록 컨텐츠--%>
            <div class="content2">
                <div class="content_wrap2">
                    <div class="content2_scroll">
                        <div class="table-wraper custom-table-wraper">
                            <table class="table-common">
                                <colgroup>
                                    <col style="width: 10%;" /> 
                                    <col style="width: 10%;" />
                                    <col style="width: 7%;" /> 
                                    <col style="width: 15%;" />
                                    <col style="width: 12%;" /> 
                                    <col style="width: 10%;" />
                                    <col style="width: 10%;" /> 
                                    <col style="width: 12%;" />
                                    <col style="width: 12%;" /> 
                                    <col style="width: 9%;" />
                                    <col style="width: 9%;" /> 
                                    <col style="width: 10%;" />
                                    <col style="width: 15%;" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="lowerst-font">상세</th>
                                        <th class="lowerst-font">아이디</th>
                                        <th class="lowerst-font">이름</th>
                                        <th class="lowerst-font">이메일</th>
                                        <th class="lowerst-font">휴대폰 번호</th>
                                        <th class="lowerst-font">추천인 아이디</th>
                                        <th class="lowerst-font">등급</th>
                                        <th class="lowerst-font">포인트</th>
                                        <th class="lowerst-font">PV</th>
                                        <th class="lowerst-font">직팔로워</th>
                                        <th class="lowerst-font">연계팔로워</th>
                                        <th class="lowerst-font">사업자등록증</th>
                                        <th class="lowerst-font">최근 로그인</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <%if (USER_TABLE != null) 
                                    {%>
                                        <%if (USER_TABLE.Rows.Count > 0) 
                                        {%>
                                            <%for (int i=0; i<USER_TABLE.Rows.Count;i++) 
                                            {%>
                                                <tr>
                                                    <%--상세--%>
                                                    <td class="lowerst-font">
                                                        <div class="lowerst-font detal_box_button" id="<%=USER_TABLE.Rows[i]["USER_SID"] %>">상세</div>
                                                    </td>
                                                    <%--아이디--%>
                                                    <td class="lower-font">
                                                        <div class="lowerst-font"><%=USER_TABLE.Rows[i]["USER_ID"] %></div>
                                                    </td>
                                                    <%--이름--%>
                                                    <td>
                                                        <div class="lowerst-font"><%=USER_TABLE.Rows[i]["USER_NAME"] %></div>
                                                    </td>
                                                    <%--이메일--%>
                                                    <td>
                                                        <div class="lowerst-font"><%=USER_TABLE.Rows[i]["EMAIL_ADDRESS"] %></div>
                                                    </td>
                                                    <%--휴대폰 번호--%>
                                                    <td>
                                                        <div class="lowerst-font"><%=USER_TABLE.Rows[i]["MOBILE_NO"] %></div>
                                                    </td>
                                                    <%--추천인 아이디--%>
                                                    <td>
                                                        <div class="lowerst-font"><%=USER_TABLE.Rows[i]["RECOMMENDER_ID"] %></div>                                               
                                                    </td>
                                                    <%--등급--%>
                                                    <td>
                                                        <div class="lowerst-font"><%=USER_TABLE.Rows[i]["USER_GRADE"] %></div>
                                                    </td>
                                                    <%--포인트--%>
                                                    <td>
                                                        <div class="lowerst-font"><%=USER_TABLE.Rows[i]["USER_POINT"] %></div>
                                                    </td>
                                                    <%--PV--%>
                                                    <td>
                                                        <div class="lowerst-font">예정</div>
                                                    </td>
                                                    <%--직팔로워--%>
                                                    <td>
                                                        <div class="lowerst-font"><%=USER_TABLE.Rows[i]["DIRECT_FOLLOWER_COUNT"] %></div>
                                                    </td>
                                                    <%--연계팔로워--%>
                                                    <td>
                                                        <div class="lowerst-font">예정</div>
                                                    </td>
                                                    <%--사업자등록증--%>
                                                    <td>
                                                        <div class="lowerst-font">예정</div>
                                                    </td>
                                                    <%--최근로그인--%>
                                                    <td>
                                                        <%if (USER_TABLE.Rows[i]["LAST_LOGIN_TIME"] != DBNull.Value)
                                                        {%>
                                                            <div class="lowerst-font"><%=Convert.ToDateTime(USER_TABLE.Rows[i]["LAST_LOGIN_TIME"]).ToString("yyyy.MM.dd HH:mm") %></div>
                                                        <%}%>
                                                        
                                                    </td>
                                                </tr>
                                            <%}%>
                                        <%}%>
                                    <%}%>
                                </tbody>
                            </table>                         
                        </div>                  
                    </div>
                </div>
                <div class="pageNavigationStr" style="padding: 50px 0px;">
                    <%=pageNavigationStr%>
                </div>
            </div>
        </div>
</asp:Content>
