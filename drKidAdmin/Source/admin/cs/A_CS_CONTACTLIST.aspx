﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_CS_CONTACTLIST.aspx.cs" Inherits="drKidAdmin.Source.admin.cs.A_CS_CONTACTLIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        * {
            font-weight:normal;
        }

        .sub-content-wrap_custom {
            /*padding: 20px 0px;*/
            width: 100%;
            min-height: 175px;
        }
        .sub-content-wrap-flex{
            display: flex;
        }
        .new-add-btn{
            padding: 5px 10px;
            min-width: 140px;
            min-height: 40px;
            margin-right: 10px;
        }
        .status_R {
            color : var(--mono_point);
            font-weight: normal;
        }
        .status_W{
            color : var(--main_color);
            font-weight: normal;
        }
        .status_L{
            color : var(--drkid_Negative);
            font-weight: normal;
        }

        /*문의글 상세 왼쪽*/
        .sub-content-left{
            margin-right:15px;
            width: 100%;
            border: 1px solid var(--mono_line);
        }
        .user-name-color{
            color: var(--main_color)
        }
        .custom-font{
            font-size:14px;
            padding-right:10px;
            font-weight: normal ;
        }
        .sub-content-left-title {
            width: 100%;
            border-bottom: 1px solid var(--mono_line);
            padding: 15px 15px;
            font-weight: 500;
        }
        /*문의글 상세 오른쪽*/
        .sub-content-right{
            margin-left:15px;
            width: 100%;
            border: 1px solid var(--mono_line);
           
        }
        .sub-content-right-title {
            width: 100%;
            border-bottom: 1px solid var(--mono_line);
            background-color:var(--mono_line);
            padding: 15px 18px;
            font-weight: 500;
        }
        .sub-content-right-section{
            width: 100%;
            border-bottom: 1px solid var(--mono_line);
            padding: 15px 18px;
        }
        .category-font{
            font: normal normal medium 14px/16px Pretendard;
            color: var(--mono_sub);
            padding-right: 15px;
        }
        .board-title-font{
            font: normal normal medium 14px/16px Pretendard;
            color: #262626;
        }
        .time-font{
            font-size:14px;
            color: var(--mono_dea);
            padding-right: 10px;
        }
        .state-font{
            font-size:12px;
            float:right;
        }
        .file-font {
            font-size :var(--drkid-lowerst-font);
            padding-left:6px;
        } 
        .link-font {
            padding-left:12px;
            text-decoration: underline;
            font: normal normal normal 14px/16px Pretendard;
            color: #9F9F9F;
        }
        .link-icon{
            font-size:15px;
            color:#9F9F9F;
        }
        .flex-section{
            display:flex;
            align-items: center;
        }
        .board-body-font{
            font: normal normal normal 14px/20px Pretendard;
            color: #343434;
        }
        .answer-tittle-font{
            
            font-size: 12px;
            color: #343434;
        }
        .small-time-font{
            padding-left:9px;
            font-size: 12px;
            color: var(--mono_dea);
        }
        .gray-section{
            background-color: var(--mono_back);
        }
        .answer-body-area{
            padding-top : 14px;
            padding-bottom : 10px;

        }
        .answer-btn-area{

        }
        .answer-btn{
            padding: 5px 10px;
            min-width: 80px;
            min-height:28px;
            margin-right:10px;
        }
        .answer-text-area{
            width: 80%;
            outline: none;
            border: none;
            resize: none;
            min-height: 200px;
            height: 100%;
        }
        .answer-commit-btn{
            padding: 5px 10px;
            width: 20%;
            min-height: 200px;
            height: 100%;
        }
        .text-area-background{
            background-color: #ffffff;
            padding: 10px 10px;
            border: 1px solid var(--mono_line);
        }
        textarea::placeholder {
            color:var(--mono_dea);
        }
        .set_right{
            display: flex;
            justify-content: flex-end;
        }
        .writer-font{
            font-size: 14px;
            font-weight: normal;
            float: right;
            padding-left:10px;
            
        }
        /*스크롤*/
        .scroll{
            overflow: scroll;
            height: 650px;
        }
        .scroll::-webkit-scrollbar {
            display: none;
        }
        .scroll {
            -ms-overflow-style: none; /* 인터넷 익스플로러 */
            scrollbar-width: none; /* 파이어폭스 */
        }
        .user_scroll{
            overflow: scroll;
            height: 400px;
        }
        .user_scroll::-webkit-scrollbar {
            display: none;
        }
        .user_scroll {
            -ms-overflow-style: none; /* 인터넷 익스플로러 */
            scrollbar-width: none; /* 파이어폭스 */
        }
        /*문의글 상세 끝*/


        .liner-icon-wraper {
            border-left: none;
            padding-left: 10px;
        }
        .sub-content-select-ui-area {
            background: #F8F9FD;
        }
        .sub-content-select-ui {
            height: 100%;
            padding: 12px 30px;
            width: 100%;
        }
        .category-area ,.search-word-area {
            display: flex;
            align-items: center;
            width: 100%;
            padding: 10px 0px;
        }
        .category-area {
            height:54px;
        }
        .category-info {
            width: 11.5%;
            font-weight: 400;
        }
        .category_wrap {
            display: flex;
            width: 86.6%;
            align-items: center;
            gap: 0px 30px;
        }
        .radio-txt {
            color: #707070;
        }
        .search-word-input-arae {

        }
        #I_TITLE {
             width: 100%;
             height: 100%;
        }
        #I_TITLE::placeholder {
            color: #D8D8D8;
        }
        .sub-content-wrap_custom_btn_area {
            padding: 25px 0px 20px 0px;
            display: flex;
            gap: 0px 15px;
            justify-content: center;
        }
        #custom_btn_search {
            /*width: 80px;
            height: 32px;
            line-height: 32px;
            color: #ffffff;
            background: #115C5E;
            text-align: center;*/
            cursor:pointer;
        }
        #custom_btn_reset {
            /*width: 80px;
            text-align: center;
            height: 32px;
            line-height: 32px;
            border: 1px solid #E2E2E3;*/
            cursor:pointer;
        }

        .modi_Btn {
            font-size: 12px;
            width: 40%;
            min-width: 46px;
            height: 28px;
            text-align: center;
            margin: 0 auto;
            line-height: 28px;
            cursor: pointer;
        }
        .list_Title {
            font-weight:normal;
            display: flex;
            align-items: center;
            text-align:start;
        }
        .lockicon{
            font-size: 20px;
            padding: 0 10px;
        }
        .save-question-area {
            padding: 0px 0px 8px 0px;
            display: grid;
            justify-content: end;
        }
        #save-question {
            width: 80px;
            height: 32px;
            color: #ffffff;
            line-height: 32px;
            background: #115C5E;
            text-align: center;
            cursor:pointer;
        }
        .choice {
            background:#F4FAFF;
        }
        #create-question {
            margin-right: 0px;
        }
        .list_Title_Area{
            padding: 0 15px;
        }
        .table-wraper.max-height-overflow.custom-table-wraper {
            height: max-content;
            overflow-y: auto;
            padding: 10px 10px;
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
        .drkid-select-div{
            background-color : #FFFFFF ; 
        }
        #I_SEARCH_TITLE{
            height: 34px;
            width: 100%;
        }
        .search_Period_Area {
            display: flex;
            gap: 0px 15px;
        }
        .search_Period {
            border: 1px solid #CCCCCC;
            color: #8F8F8F;
            background-color:white;
            padding: 3.2px 11px;
            cursor:pointer;
        }
        .clicked {
             border:1px solid var(--main_color);
             color:var(--main_color);
        }
        .search_Ui_Layout {
            display: flex;
            align-items: center;
            gap: 0px 30px;
        }
        .date_Ui_Area {
            display: flex;
            align-items: center;
        }
        .list_count_text{
            padding: 0px 0 0 13px;
            color: var(--mono_sub);
        }
        .click_tr{
            background-color:#F4FAFF;
        }
        /*문의 작성*/
        .new-content-section{
            width: 100%;
            border-bottom: 1px solid var(--mono_line);
            padding: 5px 10px;
        }
        .contact_title_input{
            padding: 0px 0px 0px 10px;
            width:100%;
        }
        #I_CONTACT_TITLE{
            width:100%;
        }
        .user-find-area{
            padding-top:10px;
            display: flex;
            align-items: center;
        }
        .user-find-btn{
            padding: 5px 10px;
            min-width: 140px;
            min-height: 30px;
            margin-right: 10px;
        }
        .contact-text-area{
            width: 100%;
            outline: none;
            border: none;
            resize: none;
            min-height: 200px;
            height: 100%;
        }
        .contact-text-area-background{
            background-color: #ffffff;
            padding: 10px 10px;
            border: none;
        }
        .hidden_field{
            display:none;
        }
        [type="radio"]{
            margin-bottom: 5px

        }
        .add_user_field{
            display: flex;
            align-items: center;
        }
        #NON_MEMBER_NAME{
            width:30%;
            margin : 0 10px;
        }
        #NON_MEMBER_PHONE{
            width:40%;
            margin : 0 10px;
        }
        .another_guide_text{
            font-size: 12px;
        }
        .members_search_field{
            display:flex;
            align-items: center;
        }
        .search-user-find-btn{
            padding: 4px 10px;
            min-width: 100px;
            min-height: 30px;
            margin-left: 10px;
        }
        #I_USER_SEARCH_ID{
            height: 34px;
            width: 100%;
        }
        .non_members_search_field{
            display:flex;
            align-items: center;
        }
        #I_NONMEMBER_SEARCH_NAME,#I_NONMEMBER_SEARCH_POHNE{
            height: 34px;
            width: 80%;
        }
        .detail_btn{
            cursor:pointer;
        }
        
        /*문의 작성 끝 */
        /*모달 팝업창 css*/

        #pop-modal-wraper{
            border-block: 2px solid var(--mono_line);
            padding:15px 0;
            margin : 15px 0 ;
        }

        .product_search_wrap{
            display:flex;
        }
        .user-search-btn{
            padding: 5px 10px;
            min-width: 95px;
            min-height: 40px;
            margin-left: 10px;
        }
        .search_radio_area{
            padding: 15px 0px;
        }

        .search_btn_wrap{
            text-align: center;
            padding: 10px 0px;
        }
        .modal {
            display: none;
            position: fixed;
            z-index: 999;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal_list > tr > th, .modal_list > tr > td{
            text-align:left !important;
            height: 40px ;
            border: none !important;
            padding: 4px 0px !important;
        }
        .pop-modal-title{
            font: normal normal 600 20px/24px Pretendard;
            color: #262626;
        }
        .add-user-name{
            font: normal normal 600 20px/24px Pretendard;
            color: #262626;
        }
        .user_id_div{
            overflow: hidden;  		
            text-overflow: ellipsis;
            white-space: nowrap; 	
            word-break:break-all;
        }
        .modal-content {
            display: flex;
            flex-direction: column;
            background-color: #fefefe;
            margin: 10% auto;
            padding: 15px 27px;
            border: 1px solid #888;
            width: 80%;
            max-width: 425px;
        }
        .modal-input{
            padding: 20px 10px;
            border-radius: 4px;
            width:100%;
        }
        .modal-btn-font{
            font-weight :400;
        }
        .pop_search_btn {
        }
        .pop_reset_btn{

        }
        .pop_small_btn{

        }
        .modal_search_field{
            width:100%;
        }
        #pop-modal-btn-wraper{
            display:flex;
            justify-content: center;
        }
        #pop-modal-btn-wraper >.drkid-btn-sub2{
            min-width: 120px;
            min-height: 50px;
            margin: 0 5px;
        }
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        .user-close {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }
        .user-close:hover,
        .user-close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        /*모달 팝업창 css 끝*/

        /*뉴 페이징*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        /*HJH 0914*/
         .dateUi {
             border: 1px solid var(--mono_line);
             padding: 5px 12px;
             cursor:pointer;
             background:#fff;
         }
         .active {
            border: 1px solid var(--main_color);
            color:  var(--main_color);
        }
         .pop-modal-inner {
            position: absolute;
            top: 50%;
            left: 50%;
            max-height: none;
            width: 1030px;
            background-color: white;
            box-shadow: var(--mono_line) 0px 0px 2px 1px;
            transform: translate(-50%,-50%);
            overflow:hidden;
        }
    </style>

    <script>
        var $I_FROM_DATE = `<%=I_FROM_DATE%>`;
        var $I_TO_DATE = `<%=I_TO_DATE%>`;
        var $cp_ret_status = `<%=cp_ret_status%>`;
        var $matches = `<%=matches%>`;
        var $request_userName = `<%=request_userName%>`; // $request_userName : 회원관리 1:1문의 자세히보기에서 받는 유저 아이디값
        var $request_type = `<%=request_type%>`;
        $(function () {
            

            $("#custom_btn_search").on("click", function () {
                //검색 기능
                $("#search_btn_click_flag").val("Y");
                $("#form1").submit();
                //문의글 상세 초기화
            });

            //관리자 a태그 href 페이징 시 검색조건 날아가는 문제 관련 HJH
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
      
            //상품등록일자 시작일 세팅 HJH 0825
            var today = new Date();
            if($I_FROM_DATE == "" || $I_FROM_DATE == null){
                //시작일 디폴트 세팅
                var startDate = new Date(today);
                startDate.setDate(startDate.getDate() - 7);
                var formatted_start_date = startDate.toISOString().split('T')[0];
                $('input[name="I_FROM_DATE"]').val(formatted_start_date);
            }
            else{
                //시작일 조회 후 검색조건 세팅
                $I_FROM_DATE = $I_FROM_DATE.replace(/(\d{4})(\d{2})(\d{2})/, "$1-$2-$3");
                $('input[name="I_FROM_DATE"]').val($I_FROM_DATE);
            }
            //상품등록일자 종료일 세팅 HJH 0824
            if($I_TO_DATE == "" || $I_TO_DATE == null){
                //종료일 디폴트 세팅
                var formatted_today = today.toISOString().split('T')[0];
                $('input[name="I_TO_DATE"]').val(formatted_today);
            }
            else{
                //종료일 조회 후 검색조건 세팅
                $I_TO_DATE = $I_TO_DATE.replace(/(\d{4})(\d{2})(\d{2})/, "$1-$2-$3");
                $('input[name="I_TO_DATE"]').val($I_TO_DATE);
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
                    $('input[name="I_FROM_DATE"]').val(format_today);
                }
                else {
                    //누른 일수만큼 시작일 값 설정
                    var StartDate = new Date(Today);
                    StartDate.setDate(StartDate.getDate() - format_data_value);
                    var formattedDate = StartDate.toISOString().split('T')[0];//'YYYY-MM-DD'
                    $('input[name="I_FROM_DATE"]').val(formattedDate);
                }
            });

            ///// 초기화버튼
            $("#custom_btn_reset").click(function () {
                $(".search_Period").removeClass("clicked");
                $("#7").addClass("clicked");
                //검색 UI 날짜 데이터 포맷, 디폴트는 7일 
                //시작일 초기화
                var today = new Date();
                var formatted_today = today.toISOString().split('T')[0];
                $('#I_DATE_END').val(formatted_today);
                //종료일 초기화
                var startDate = new Date(today);
                startDate.setDate(startDate.getDate() - 7);
                var formatted_start_date = startDate.toISOString().split('T')[0];
                $('#I_DATE_START').val(formatted_start_date);
                
            });
            
            //메인 리스트 수정버튼
            $(".modi_Btn").on("click", function () {
                $(".click_tr").removeClass("click_tr");

                var selectedValue = $(this).attr("id"); // 선택하려는 data-value 값
                var selectedListItem = $('tr[data-big-tr="' + selectedValue + '"]');
                selectedListItem.addClass("click_tr");
                console.log(selectedListItem[0].dataset.bigTr);// BOARD_SID
                ActiveTrAndChangeSub(selectedListItem[0].dataset.bigTr);
            });

            if( $("#I_BOARD_USER_TYPE").val() == "USER")
            {
                $('.members_search_field').show();
                $('.non_members_search_field').hide();
                $("#I_NONMEMBER_SEARCH_NAME").val("");
                $("#I_NONMEMBER_SEARCH_POHNE").val("");
            }
            if( $("#I_BOARD_USER_TYPE").val() == "01")
            {
                $('.members_search_field').hide();
                $('.non_members_search_field').show();
                $("#I_USER_SEARCH_ID").val(null);
            }
            //회원관리에서 자세히보기로 유저정보 받아옴.
            if($request_userName != "" && $request_userName != null)
            {
                console.log($request_userName)
                $("input[type='radio'][name='search_radio'][value='user']").prop("checked", true);
                $("input[name='I_USER_SEARCH_ID']").val($request_userName);
                $("#searchBtn_Click_Flag").val("Y");
                $("#I_BOARD_USER_TYPE").val("USER");
                $('.members_search_field').show();
                if($request_type == "PROD"){
                    //$("#I_CATEGORY").val("CS05");
                    console.log("탐탐")
                    $("#category_id").find('.drkid-select-div').click();
                    $("#category_id").find(`.drkid-select-ul li span[data-values="CS05"]`).parent().click();
                }
                $('#form1').submit();
            }
            //회원구분 라디오버튼
            $('input[name="search_radio"]').on('change', function () {
                if ($(this).val() === "user") {
                    $('.members_search_field').show();
                    $('.non_members_search_field').hide();
                    $("#I_NONMEMBER_SEARCH_NAME").val("");
                    $("#I_NONMEMBER_SEARCH_POHNE").val("");
                    $("#I_BOARD_USER_TYPE").val("USER");
                }
                else if ($(this).val() === "another") {
                    $('.members_search_field').hide();
                    $('.non_members_search_field').show();
                    $("#I_USER_SEARCH_ID").val(null);
                    $("#I_BOARD_USER_TYPE").val("01");
                }
                else{
                    $('.members_search_field').hide();
                    $('.non_members_search_field').hide();
                    $("#I_USER_SEARCH_ID").val(null);
                    $("#I_NONMEMBER_SEARCH_NAME").val("");
                    $("#I_NONMEMBER_SEARCH_POHNE").val("");
                    $("#I_BOARD_USER_TYPE").val("");
                }
            });

            //유저 검색 팝업
            $('#search_find_pop').on('click', function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    //data object
                    $('#I_USER_SEARCH_ID').val(data.CODE_CODE);
                $('#I_BOARD_WRITE_SID').val(data.CODE_SID);
                //팝업 유저 적용
                var _user_id = $("#I_USER_SEARCH_ID").val();
                // 검색창에 유저 아이디 넣어주면됨.
                    
            }).catch((err) => {
                console.log(err);
        });
        });
            
        $("#I_NONMEMBER_SEARCH_POHNE").on("input",function(){
            var input_num = $(this).val();
            var formatted_num = formatPhoneNumber(input_num);
            $(this).val(formatted_num);
                        
        });
            
        //새 문의 작성
        var modal = document.getElementById("modal");

        $("#new_contact_add").on("click", function () {
            $("#contact_detail").empty();
            //let new_category_select = category_select.html().replace("SelectBox-1", "SelectBox-3").replace("SelectBox-1", "SelectBox-3");
            let NewContactHtml;
            NewContactHtml = $("#new_contact_template").html();
            let html = $(NewContactHtml);
            html.find('input[name="radio"]').on('change', function () {
                if ($(this).val() === "user") {
                    $('.user-find-area').show();
                    $('.non_members_input').hide();
                    $('#USER_FLAG').val('Y');
                } else if ($(this).val() === "another") {
                    $('.user-find-area').hide();
                    $('.non_members_input').show();
                    $('#USER_FLAG').val('N');
                }
            });
            //전화번호입력시 하이픈추가
            html.find("#NON_MEMBER_PHONE").on("input",function(){
                var input_num = $(this).val();
                var formatted_num = formatPhoneNumber(input_num);
                $(this).val(formatted_num);
                    
            });
            //popup Open
            html.find('#find-pop').on('click', function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    //data object
                    console.log(data);
                $('#I_USER_NAME').val(data.CODE_NAME);
                $('#I_USER_ID').val(data.CODE_CODE);
                $('#I_USER_SID').val(data.CODE_SID);
                $('#I_USER_TYPE').val(data.USER_TYPE);
                //팝업 유저 적용
                $(".user-tr").removeClass("click_tr");
                var _user_id = $("#I_USER_ID").val();
                var _user_name = $("#I_USER_NAME").val();
                $(".add_user_field").html('<span class="add-user-name">' + _user_id + '(' + _user_name + ')</span><span class="clear-icon drkid-icon user-close" onClick="user_close_click(event)" ></span>')
                
            }).catch((err) => {
                console.log(err);
        });
        });

        $("#contact_detail").append(html);
        $("#contact_detail").find('.drkid-select').each(function (index, item) {
            _SelectBoxOption.TemplaterSetup(item, index + 5);
        });

        $("#contact_detail").find('#NEW_CONTACT_SAVE').on('click', function (e) {
            New_Contact_Add();
        })
        });

        // 팝업 닫기 버튼
        var modal_input = $(".modal-input");
        var closeButtons = document.getElementsByClassName("closeBtn");
        for (var i = 0; i < closeButtons.length; i++) {
            closeButtons[i].addEventListener("click", function () {
                modal.style.display = "none";
                modal_input.val(null);
            });
        }

        //팝업 유저검색 버튼
        $("#user_search").on("click", function () {
            var search_text=$("#user_idname").val();
            UserSearch(search_text);
        });

        //팝업 유저 적용 버튼
        $("#user_enter_btn").on("click", function () {
            $(".user-tr").removeClass("click_tr");
            var _user_id = $("#I_USER_ID").val();
            var _user_name = $("#I_USER_NAME").val();
            $(".add_user_field").html('<span class="add-user-name">' + _user_id + '(' + _user_name + ')</span><span class="clear-icon drkid-icon user-close" onClick="user_close_click(event)" ></span>')
            modal.style.display = "none";
            modal_input.val(null);
        });
        


        });

        function ActiveTrAndChangeSub(target) {
            let _sid = target;
            console.log(target);
            showProgress();
            $("#content-left-tbody").empty();
            $("#contact_detail").empty();
            $.ajax({
                type: "post",
                url: "/Source/admin/cs/AJAX_CS_BOARD.aspx",
                dataType: 'json',
                data: { BOARD_SID: _sid },
                success: function (data) {
                    let html, html2, html3;
                    console.log(JSON.stringify(data));
                    console.log(JSON.stringify(data, null, 2));

                    if (data.O_ERROR_FLAG[0]["O_ERROR_FLAG"] + "" == "N") {
                        //동일 유저의 리스트이기때문에 첫번째 row로 한번만 처리해줌.
                        $("#detail_list_user_name").text(data.O_RESULT_CURSOR[0]["BOARD_WRITE_NM"]);
                        for (var i = 0; i < data.O_RESULT_CURSOR.length; i++) {
                            //문의 상세 리스트(왼쪽)
                            html = $("#contact_list").html();
                            
                            var format_today = (data.O_RESULT_CURSOR[i]["POST_DATE"]).toString().split('T')[0];
                            var format_time = (data.O_RESULT_CURSOR[i]["POST_DATE"]).toString().split('T')[1];
                            html = html.replace(/{BOARD_SID}/g, data.O_RESULT_CURSOR[i]["BOARD_SID"]);
                            html = html.replace(/{BOARD_CLASS}/g, data.O_RESULT_CURSOR[i]["BOARD_CLASS"]);
                            html = html.replace(/{BOARD_NAME}/g, data.O_RESULT_CURSOR[i]["BOARD_NAME"]);
                            html = html.replace(/{CATEGORY_CODE}/g, data.O_RESULT_CURSOR[i]["CATEGORY_CODE"]);
                            html = html.replace(/{CATEGORY_NAME}/g, data.O_RESULT_CURSOR[i]["CATEGORY_NAME"]);
                            html = html.replace(/{BOARD_TITLE}/g, data.O_RESULT_CURSOR[i]["BOARD_TITLE"]);
                            html = html.replace(/{POST_DATE}/g, format_today);
                            html = html.replace(/{STATUS_CODE}/g, data.O_RESULT_CURSOR[i]["STATUS_CODE"]);
                            html = html.replace(/{STATUS_NAME}/g, data.O_RESULT_CURSOR[i]["STATUS_NAME"]);
                            //문의상태에따른 글자색 설정.
                            if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'R') {
                                html = html.replace(/{STATUS_COLOR}/g, "status_R");
                            }
                            if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'W') {
                                html = html.replace(/{STATUS_COLOR}/g, "status_W");
                            }
                            if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'L') {
                                html = html.replace(/{STATUS_COLOR}/g, "status_L");
                            }
                            $("#content-left-tbody").append(html);
                            //문의글 상세 리스트 선택js
                            $("#content-left-tbody").find($("tr[data-sub-tr='" + data.O_RESULT_CURSOR[i]["BOARD_SID"].toString() + "']")).on("click", function () {
                                var targetRowId = $(this).data("sub-tr"); // data-sub-tr 속성 값 가져오기
                                var targetButton = $("tr[data-sub-tr='" + targetRowId + "']"); // 대상 버튼 선택
                                $("#content-left-tbody").children($(".click_tr")).removeClass("click_tr");
                                targetButton.addClass("click_tr");
                                ContactListSelectDetail(targetRowId);
                            })
                            if (_sid == data.O_RESULT_CURSOR[i]["BOARD_SID"].toString()) {
                                $("#content-left-tbody").find($(".click_tr")).removeClass("click_tr");
                                $("#content-left-tbody").find($("tr[data-sub-tr='" + _sid + "']")).addClass("click_tr");
                            }


                            //문의 상세 답변칸(오른쪽)
                            if (data.O_RESULT_CURSOR[i]["BOARD_SID"] == _sid) {
                                $("#detail_board_class").text(data.O_RESULT_CURSOR[i]["BOARD_NAME"]);
                                html2 = $("#contact_detail_template").html();
                                html2 = html2.replace(/{BOARD_SID}/g, data.O_RESULT_CURSOR[i]["BOARD_SID"]);
                                html2 = html2.replace(/{BOARD_CLASS}/g, data.O_RESULT_CURSOR[i]["BOARD_CLASS"]);
                                html2 = html2.replace(/{BOARD_NAME}/g, data.O_RESULT_CURSOR[i]["BOARD_NAME"]);
                                html2 = html2.replace(/{CATEGORY_CODE}/g, data.O_RESULT_CURSOR[i]["CATEGORY_CODE"]);
                                html2 = html2.replace(/{CATEGORY_NAME}/g, data.O_RESULT_CURSOR[i]["CATEGORY_NAME"]);
                                html2 = html2.replace(/{BOARD_TITLE}/g, data.O_RESULT_CURSOR[i]["BOARD_TITLE"]);
                                html2 = html2.replace(/{BOARD_MESSAGE}/g, data.O_RESULT_CURSOR[i]["BOARD_MESSAGE"]);
                                html2 = html2.replace(/{BOARD_WRITE_NM}/g, data.O_RESULT_CURSOR[i]["BOARD_WRITE_NM"]);
                                html2 = html2.replace(/{POST_DATE}/g, format_today);
                                html2 = html2.replace(/{POST_TIME}/g, format_time);
                                html2 = html2.replace(/{STATUS_CODE}/g, data.O_RESULT_CURSOR[i]["STATUS_CODE"]);
                                html2 = html2.replace(/{STATUS_NAME}/g, data.O_RESULT_CURSOR[i]["STATUS_NAME"]);
                                //문의상태에따른 글자색 설정.
                                if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'R') {
                                    html2 = html2.replace(/{STATUS_COLOR}/g, "status_R");
                                }
                                if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'W') {
                                    html2 = html2.replace(/{STATUS_COLOR}/g, "status_W");
                                }
                                if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'L') {
                                    html2 = html2.replace(/{STATUS_COLOR}/g, "status_L");
                                }
                                //등록버튼
                                //펑션 추가하는 방법 상목대리님이 짜주심.KSM
                                let appendHtml = $(html2);

                                appendHtml.find('#answer_' + data.O_RESULT_CURSOR[i]["BOARD_SID"]).on('click', function (e) {
                                    var boardsid = $(e.currentTarget).attr('id').replace("answer_", "")
                                    ContactAnswerAdd(boardsid);
                                });
                                appendHtml.find('#L_' + data.O_RESULT_CURSOR[i]["BOARD_SID"]).on('click', function (e) {
                                    var boardsid = $(e.currentTarget).attr('id').split("_")[1];
                                    var code = $(e.currentTarget).attr('id').split("_")[0];
                                    ContactPostStatus(boardsid, code);
                                });
                                appendHtml.find('#W_' + data.O_RESULT_CURSOR[i]["BOARD_SID"]).on('click', function (e) {
                                    var boardsid = $(e.currentTarget).attr('id').split("_")[1];
                                    var code = $(e.currentTarget).attr('id').split("_")[0];
                                    ContactPostStatus(boardsid, code);
                                });
                                $("#contact_detail").append(appendHtml);
                            }
                            
                        }
                        for (var i = 0; i < data.O_RESULT_CURSOR_3.length; i++) {
                            var format_today = (data.O_RESULT_CURSOR_3[i]["POST_DATE"]).toString().split('T')[0];
                            var format_time = (data.O_RESULT_CURSOR_3[i]["POST_DATE"]).toString().split('T')[1];
                            html3 = $("#contact_answer_template").html();
                            html3 = html3.replace(/{BOARD_SID}/g, data.O_RESULT_CURSOR_3[i]["BOARD_SID"]);
                            html3 = html3.replace(/{BOARD_DETAIL_SID}/g, data.O_RESULT_CURSOR_3[i]["BOARD_DETAIL_SID"]);
                            html3 = html3.replace(/{BOARD_SEQ}/g, data.O_RESULT_CURSOR_3[i]["BOARD_SEQ"]);
                            html3 = html3.replace(/{BOARD_MESSAGE}/g, data.O_RESULT_CURSOR_3[i]["BOARD_MESSAGE"]);
                            html3 = html3.replace(/{BOARD_WRITE_NM}/g, data.O_RESULT_CURSOR_3[i]["BOARD_WRITE_NM"]);
                            html3 = html3.replace(/{POST_DATE}/g, format_today);
                            html3 = html3.replace(/{POST_TIME}/g, format_time);

                            //삭제버튼
                            let appendAnswerHtml = $(html3);

                            appendAnswerHtml.find('#del_' + data.O_RESULT_CURSOR_3[i]["BOARD_DETAIL_SID"]).on('click', function (e) {
                                var detailsid = $(e.currentTarget).attr('id').replace("del_", "")
                                var sid = $(e.currentTarget).parent().attr('id').split("_")[0];
                                ContactAnswerDel(sid, detailsid);
                                console.log(e.currentTarget);
                                console.log($(e.currentTarget).attr('id'));
                                console.log(detailsid);
                                console.log(sid);

                            })

                            $("#contact_answer").append(appendAnswerHtml);
                        }
                    }
                },
                error: function (err) {
                    _popModal.Alert('알림', err);
                    console.log(JSON.stringify(err));
                    console.log(JSON.stringify(err, null, 2));
                },
                complete: function () {
                    hideProgress();
                }
            });
        };

        //리스트 클릭하여 디테일 콜
        function ContactListSelectDetail(target) {
            let _sid = target;
            showProgress();
            $("#contact_detail").empty();
            $.ajax({
                type: "post",
                url: "/Source/admin/cs/AJAX_CS_BOARD.aspx",
                dataType: 'json',
                data: { BOARD_SID: _sid },
                success: function (data) {
                    let html, html2, html3;

                    if (data.O_ERROR_FLAG[0]["O_ERROR_FLAG"] + "" == "N") {
                        //동일 유저의 리스트이기때문에 첫번째 row로 한번만 처리해줌.
                        $("#detail_list_user_name").text(data.O_RESULT_CURSOR[0]["BOARD_WRITE_NM"]);
                        for (var i = 0; i < data.O_RESULT_CURSOR.length; i++) {
                            //문의 상세 답변칸(오른쪽)
                            if (data.O_RESULT_CURSOR[i]["BOARD_SID"] == _sid) {
                                $("#detail_board_class").text(data.O_RESULT_CURSOR[i]["BOARD_NAME"]);
                                html2 = $("#contact_detail_template").html();
                                var format_today = (data.O_RESULT_CURSOR[i]["POST_DATE"]).toString().split('T')[0];
                                var format_time = (data.O_RESULT_CURSOR[i]["POST_DATE"]).toString().split('T')[1];
                                html2 = html2.replace(/{BOARD_SID}/g, data.O_RESULT_CURSOR[i]["BOARD_SID"]);
                                html2 = html2.replace(/{BOARD_CLASS}/g, data.O_RESULT_CURSOR[i]["BOARD_CLASS"]);
                                html2 = html2.replace(/{BOARD_NAME}/g, data.O_RESULT_CURSOR[i]["BOARD_NAME"]);
                                html2 = html2.replace(/{CATEGORY_CODE}/g, data.O_RESULT_CURSOR[i]["CATEGORY_CODE"]);
                                html2 = html2.replace(/{CATEGORY_NAME}/g, data.O_RESULT_CURSOR[i]["CATEGORY_NAME"]);
                                html2 = html2.replace(/{BOARD_TITLE}/g, data.O_RESULT_CURSOR[i]["BOARD_TITLE"]);
                                html2 = html2.replace(/{BOARD_MESSAGE}/g, data.O_RESULT_CURSOR[i]["BOARD_MESSAGE"]);
                                html2 = html2.replace(/{BOARD_WRITE_NM}/g, data.O_RESULT_CURSOR[i]["BOARD_WRITE_NM"]);
                                html2 = html2.replace(/{POST_DATE}/g, format_today);
                                html2 = html2.replace(/{POST_TIME}/g, format_time);
                                html2 = html2.replace(/{STATUS_CODE}/g, data.O_RESULT_CURSOR[i]["STATUS_CODE"]);
                                html2 = html2.replace(/{STATUS_NAME}/g, data.O_RESULT_CURSOR[i]["STATUS_NAME"]);
                                //문의상태에따른 글자색 설정.
                                if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'R') {
                                    html2 = html2.replace(/{STATUS_COLOR}/g, "status_R");
                                }
                                if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'W') {
                                    html2 = html2.replace(/{STATUS_COLOR}/g, "status_W");
                                }
                                if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'L') {
                                    html2 = html2.replace(/{STATUS_COLOR}/g, "status_L");
                                }
                                //등록버튼
                                //펑션 추가하는 방법 상목대리님이 짜주심.
                                let appendHtml = $(html2);

                                appendHtml.find('#answer_' + data.O_RESULT_CURSOR[i]["BOARD_SID"]).on('click', function (e) {
                                    var boardsid = $(e.currentTarget).attr('id').replace("answer_", "")
                                    ContactAnswerAdd(boardsid);
                                })
                                appendHtml.find('#L_' + data.O_RESULT_CURSOR[i]["BOARD_SID"]).on('click', function (e) {
                                    var boardsid = $(e.currentTarget).attr('id').split("_")[1];
                                    var code = $(e.currentTarget).attr('id').split("_")[0];
                                    ContactPostStatus(boardsid, code);
                                });
                                appendHtml.find('#W_' + data.O_RESULT_CURSOR[i]["BOARD_SID"]).on('click', function (e) {
                                    var boardsid = $(e.currentTarget).attr('id').split("_")[1];
                                    var code = $(e.currentTarget).attr('id').split("_")[0];
                                    ContactPostStatus(boardsid, code);
                                });
                                $("#contact_detail").append(appendHtml);
                            }
                            
                        }
                        for (var i = 0; i < data.O_RESULT_CURSOR_3.length; i++) {
                            var format_today = (data.O_RESULT_CURSOR_3[i]["POST_DATE"]).toString().split('T')[0];
                            var format_time = (data.O_RESULT_CURSOR_3[i]["POST_DATE"]).toString().split('T')[1];
                            html3 = $("#contact_answer_template").html();
                            html3 = html3.replace(/{BOARD_SID}/g, data.O_RESULT_CURSOR_3[i]["BOARD_SID"]);
                            html3 = html3.replace(/{BOARD_DETAIL_SID}/g, data.O_RESULT_CURSOR_3[i]["BOARD_DETAIL_SID"]);
                            html3 = html3.replace(/{BOARD_SEQ}/g, data.O_RESULT_CURSOR_3[i]["BOARD_SEQ"]);
                            html3 = html3.replace(/{BOARD_MESSAGE}/g, data.O_RESULT_CURSOR_3[i]["BOARD_MESSAGE"]);
                            html3 = html3.replace(/{BOARD_WRITE_NM}/g, data.O_RESULT_CURSOR_3[i]["BOARD_WRITE_NM"]);
                            html3 = html3.replace(/{POST_DATE}/g, format_today);
                            html3 = html3.replace(/{POST_TIME}/g, format_time);

                            //삭제버튼
                            let appendAnswerHtml = $(html3);

                            appendAnswerHtml.find('#del_' + data.O_RESULT_CURSOR_3[i]["BOARD_DETAIL_SID"]).on('click', function (e) {
                                var detailsid = $(e.currentTarget).attr('id').replace("del_", "")
                                var sid = $(e.currentTarget).parent().attr('id').split("_")[0];
                                ContactAnswerDel(sid, detailsid);
                            })

                            $("#contact_answer").append(appendAnswerHtml);
                        }
                    }
                },
                error: function (err) {
                    _popModal.Alert('알림', err);
                },
                complete: function () {
                    hideProgress();
                }
            });
        };

        //답변등록 ajax
        function ContactAnswerAdd(sid) {
            let _sid = sid;
            let _message = $("#ANSWER_MESSAGE").val();
            if(_message==""){
                _popModal.Alert('오류','빈글을 답글로 등록할 수 없습니다.');
                return false;
            }

            let _writer = "<%=baseUser.userId%>";
            console.log(_message);
            console.log(_writer);
            showProgress();
            $("#contact_answer").empty();
            $.ajax({
                type: "post",
                url: "/Source/admin/cs/AJAX_CS_ANSWER.aspx",
                dataType: 'json',
                data: { BOARD_SID: _sid, BOARD_MESSAGE: _message, WRITER: _writer },
                success: function (data) {
                    let html3;
                    for (var i = 0; i < data.O_RESULT_CURSOR_3.length; i++) {
                        var format_today = (data.O_RESULT_CURSOR_3[i]["POST_DATE"]).toString().split('T')[0];
                        var format_time = (data.O_RESULT_CURSOR_3[i]["POST_DATE"]).toString().split('T')[1];
                        html3 = $("#contact_answer_template").html();
                        html3 = html3.replace(/{BOARD_SID}/g, data.O_RESULT_CURSOR_3[i]["BOARD_SID"]);
                        html3 = html3.replace(/{BOARD_DETAIL_SID}/g, data.O_RESULT_CURSOR_3[i]["BOARD_DETAIL_SID"]);
                        html3 = html3.replace(/{BOARD_SEQ}/g, data.O_RESULT_CURSOR_3[i]["BOARD_SEQ"]);
                        html3 = html3.replace(/{BOARD_MESSAGE}/g, data.O_RESULT_CURSOR_3[i]["BOARD_MESSAGE"]);
                        html3 = html3.replace(/{BOARD_WRITE_NM}/g, data.O_RESULT_CURSOR_3[i]["BOARD_WRITE_NM"]);
                        html3 = html3.replace(/{POST_DATE}/g, format_today);
                        html3 = html3.replace(/{POST_TIME}/g, format_time);

                        //삭제버튼
                        let appendAnswerHtml = $(html3);

                        appendAnswerHtml.find('#del_' + data.O_RESULT_CURSOR_3[i]["BOARD_DETAIL_SID"]).on('click', function (e) {
                            var detailsid = $(e.currentTarget).attr('id').replace("del_", "")
                            var sid = $(e.currentTarget).parent().attr('id').split("_")[0];
                            ContactAnswerDel(sid, detailsid);
                        })

                        $("#contact_answer").append(appendAnswerHtml);
                    }

                },
                error: function (err) {
                    _popModal.Alert('알림', err);
                },
                complete: function () {
                    $("#ANSWER_MESSAGE").val(null);
                    $("#ANSWER_MESSAGE").text(null);
                    hideProgress();
                    _popModal.Alert('등록 완료','답글이 정상적으로 등록되었습니다.');
                }
            });
        };
        //답변 삭제
        function ContactAnswerDel(sid, detailsid) {
            let _sid = sid;
            let _detailsid = detailsid;
            var OkCallBack = function () {
                showProgress();
                $.ajax({
                    type: "post",
                    url: "/Source/admin/cs/AJAX_CS_DELETE.aspx",
                    dataType: 'json',
                    data: { BOARD_SID: _sid, BOARD_DETAIL_SID: _detailsid },
                    success: function (data) {
                        var del_row = $("#del_" + _detailsid).parents()[1];
                        del_row.remove();
                    },
                    error: function (err) {
                        _popModal.Alert('알림', err);
                    },
                    complete: function () {
                        hideProgress();
                        _popModal.Alert('삭제 완료','답글이 정상적으로 삭제되었습니다.');
                    }
                });
            }

            var esrrorCallBack = function (ex) {
                
            }

            _popModal.Promt('답글 삭제', '답글을 정말로 삭제하시겠습니까?', OkCallBack, esrrorCallBack);
            
        };
        //문의상태 변경
        function ContactPostStatus(sid,code) {
            let _sid = sid;
            let _code = code;
            $("#content-left-tbody").empty();
            showProgress();
            $.ajax({
                type: "post",
                url: "/Source/admin/cs/AJAX_CS_STATUS.aspx",
                dataType: 'json',
                data: { BOARD_SID: _sid, POST_STATUS: _code },
                success: function (data) {
                    $("#detail_status_" + _sid).removeClass();
                    for (var i = 0; i < data.O_RESULT_CURSOR.length; i++) {
                        if (_sid == data.O_RESULT_CURSOR[i]["BOARD_SID"]) {
                            $("#detail_status_" + _sid).addClass("state-font");
                            $("#detail_status_" + _sid).text(data.O_RESULT_CURSOR[i]["STATUS_NAME"]);
                            if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'R') {
                                $("#detail_status_" + _sid).addClass("status_R");
                            }
                            if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'W') {
                                $("#detail_status_" + _sid).addClass("status_W");
                            }
                            if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'L') {
                                $("#detail_status_" + _sid).addClass("status_L");
                            }
                        }

                        //문의 상세 리스트(왼쪽)
                        html = $("#contact_list").html();

                        var format_today = (data.O_RESULT_CURSOR[i]["POST_DATE"]).toString().split('T')[0];
                        var format_time = (data.O_RESULT_CURSOR[i]["POST_DATE"]).toString().split('T')[1];
                        html = html.replace(/{BOARD_SID}/g, data.O_RESULT_CURSOR[i]["BOARD_SID"]);
                        html = html.replace(/{BOARD_CLASS}/g, data.O_RESULT_CURSOR[i]["BOARD_CLASS"]);
                        html = html.replace(/{BOARD_NAME}/g, data.O_RESULT_CURSOR[i]["BOARD_NAME"]);
                        html = html.replace(/{CATEGORY_CODE}/g, data.O_RESULT_CURSOR[i]["CATEGORY_CODE"]);
                        html = html.replace(/{CATEGORY_NAME}/g, data.O_RESULT_CURSOR[i]["CATEGORY_NAME"]);
                        html = html.replace(/{BOARD_TITLE}/g, data.O_RESULT_CURSOR[i]["BOARD_TITLE"]);
                        html = html.replace(/{POST_DATE}/g, format_today);
                        html = html.replace(/{STATUS_CODE}/g, data.O_RESULT_CURSOR[i]["STATUS_CODE"]);
                        html = html.replace(/{STATUS_NAME}/g, data.O_RESULT_CURSOR[i]["STATUS_NAME"]);
                        //문의상태에따른 글자색 설정.
                        if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'R') {
                            html = html.replace(/{STATUS_COLOR}/g, "status_R");
                        }
                        if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'W') {
                            html = html.replace(/{STATUS_COLOR}/g, "status_W");
                        }
                        if (data.O_RESULT_CURSOR[i]["STATUS_CODE"] == 'L') {
                            html = html.replace(/{STATUS_COLOR}/g, "status_L");
                        }
                        
                        $("#content-left-tbody").append(html);
                        //문의글 상세 리스트 선택js
                        $("#content-left-tbody").find($("tr[data-sub-tr='" + data.O_RESULT_CURSOR[i]["BOARD_SID"].toString() + "']")).on("click", function () {
                            var targetRowId = $(this).data("sub-tr"); // data-sub-tr 속성 값 가져오기
                            var targetButton = $("tr[data-sub-tr='" + targetRowId + "']"); // 대상 버튼 선택
                            $("#content-left-tbody").children($(".click_tr")).removeClass("click_tr");
                            targetButton.addClass("click_tr");
                            ContactListSelectDetail(targetRowId);
                        })
                        if (_sid == data.O_RESULT_CURSOR[i]["BOARD_SID"].toString()) {
                            $("#content-left-tbody").find($(".click_tr")).removeClass("click_tr");
                            $("#content-left-tbody").find($("tr[data-sub-tr='" + _sid + "']")).addClass("click_tr");
                        }
                    };
                    //list_status_{BOARD_SID}
                    //detail_status_{BOARD_SID}
                },
                error: function (err) {
                    _popModal.Alert('알림', err);
                },
                complete: function () {
                    hideProgress();
                }
            });
        };

        //전화번호 입력 하이픈
        function formatPhoneNumber(input) {
            console.log(input);
            // 입력된 값을 숫자만 남기고 나머지 문자 제거
            let phoneNumber = input.replace(/\D/g, '');

            if (phoneNumber.length > 11) {
                phoneNumber = phoneNumber.slice(0, 11);
            }

            // 전화번호 형식에 맞게 하이픈(-) 추가
            if (phoneNumber.length === 10) {
                phoneNumber = phoneNumber.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
            } else if (phoneNumber.length === 11) {
                phoneNumber = phoneNumber.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
            }

            // 포맷된 전화번호를 입력란에 다시 넣음
            return phoneNumber;
        }

        //회원 선택 및 저장
        function user_click(event) {
            var clickedRow = $(event.currentTarget); // 클릭된 <tr> 요소 선택
            var userSid = clickedRow.data("sid-tr"); // data-sid-tr 속성 값 가져오기
            var userId = $("#" + userSid + "_userid").val(); // 해당 사용자 ID 가져오기
            var userName = $("#" + userSid + "_username").val(); // 해당 사용자 이름 가져오기
            $(".user-tr").removeClass("click_tr");
            $(event.currentTarget).addClass("click_tr");

            $("#I_USER_ID").val(userId);
            $("#I_USER_NAME").val(userName);
            
            console.log("Clicked user ID:", userId);
            console.log("Clicked user name:", userName);
        };

        //회원 지우기
        function user_close_click(event) {
            $(".add_user_field").empty();
            $("#I_USER_SID").val(null);
            $("#I_USER_ID").val(null);
            $("#I_USER_NAME").val(null);
        };

        //회원 검색
        function UserSearch(search_text) {
            let _search_text = search_text;
            $("#pop-user-tbody").empty();
            showProgress();
            $.ajax({
                type: "post",
                url: "/Source/admin/cs/AJAX_CS_USER_SEARCH.aspx",
                dataType: 'json',
                data: { SEARCH_TEXT: _search_text},
                success: function (data) {
                    let html;
                    //USER_SEARCH_TEMPLATE
                    for (var i = 0; i < data.Table.length; i++) {
                        
                        html = $("#USER_SEARCH_TEMPLATE").html();
                        html = html.replace(/{USER_SID}/g, data.Table[i]["USER_SID"]);
                        html = html.replace(/{USER_ID}/g, data.Table[i]["USER_ID"]);
                        html = html.replace(/{USER_NAME}/g, data.Table[i]["USER_NAME"]);
                        let userappendHtml = $(html);

                        $("#pop-user-tbody").append(userappendHtml);

                    }
                    $("#search_user_count").text(data.Table.length + " 개");

                },
                error: function (err) {
                    _popModal.Alert('알림', err);
                },
                complete: function () {
                    hideProgress();
                }
            });
        };
        //새 문의등록
        function New_Contact_Add() {
            let user_flag = $("#USER_FLAG").val();
            console.log(user_flag);
            let _board_category = $("#I_CONTACT_CATEGORY").val();
            let _board_title = $("#I_CONTACT_TITLE").val();
            let _board_writer_nm = "";
            let _board_writer_sid = "";
            let _board_writer_type ="";
            let _board_password ="";
            if (user_flag == 'Y') {
                _board_writer_nm = $("#I_USER_ID").val();
                _board_writer_sid = $("#I_USER_SID").val();
                _board_writer_type = $("#I_USER_TYPE").val();
            }
            else {
                _board_writer_nm = $("#NON_MEMBER_NAME").val();
                _board_writer_sid = $("#NON_MEMBER_PHONE").val().replace(/\D/g, '');
                _board_writer_type ="01";
            }
            _board_password = $("#BOARD_PASSWORD").val();
            let _board_message = $("#CONTACT_MESSAGE").val();
            let _answer_message = $("#ANSWER_MESSAGE").val();

            if(Validation() == false ){
                return false;
            }
            

            showProgress();
            $.ajax({
                type: "post",
                url: "/Source/admin/cs/AJAX_CS_CONTACT_ADD.aspx",
                dataType: 'json',
                data: {
                    BOARD_CATEGORY: _board_category,
                    BOARD_TITLE: _board_title,
                    BOARD_WRITE_NM: _board_writer_nm,
                    BOARD_MESSAGE: _board_message,
                    ANSWER_MESSAGE: _answer_message,
                    BOARD_WRITE_SID : _board_writer_sid,
                    BOARD_USER_TYPE : _board_writer_type,
                    BOARD_PASSWORD : _board_password
                },
                success: function (data) {
                    if(data == "N"){
                        _popModal.Alert('알림', "문의가 등록되었습니다.");
                    }

                },
                error: function (err) {
                    _popModal.Alert('알림', err);
                },
                complete: function () {
                    hideProgress();
                }
            });
        };

        function Validation() {
                
            if($("#I_CONTACT_TITLE").val()==""){
                _popModal.Alert('알림', "제목을 입력해주세요.");
                return false;
            }
            if($("#I_CONTACT_CATEGORY").val()==""){
                _popModal.Alert('알림', "카테고리를 선택해주세요.");
                return false;
            }
            if($("#USER_FLAG").val()=="Y"){
                if($("#I_USER_SID").val()==""){
                    _popModal.Alert('알림', "회원을 선택해주세요.");
                    return false;
                }
                
            }
            if($("#USER_FLAG").val()=="N"){
                if($("#NON_MEMBER_NAME").val()==""){
                    _popModal.Alert('알림', "문의자 명을 입력해주세요.");
                    return false;
                }
                if($("#NON_MEMBER_PHONE").val()==""){
                    _popModal.Alert('알림', "문의자 전화번호를 입력해주세요.");
                    return false;
                }
            }
            if($("#BOARD_PASSWORD").val().length < 4){
                _popModal.Alert('알림', "비밀번호는 4자리이상으로 설정해주세요.");
                return false;
            }
        };


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="search_flag" id="search_flag" value="" />
        <input type="text" name="DELETE_SID" id="delete_sid" value="" />
        <input type="text" name="search_btn_click_flag" id="search_btn_click_flag" value="" />
        <input type="text" name="USER_FLAG" id="USER_FLAG" value="Y" />
        <input type="text" name="I_USER_ID" id="I_USER_ID" value="" />
        <input type="text" name="I_USER_NAME" id="I_USER_NAME" value="" />
        <input type="text" name="I_USER_SID" id="I_USER_SID" value="" />
        <input type="text" name="I_USER_TYPE" id="I_USER_TYPE" value="" />
        <input type="text" name="I_BOARD_USER_TYPE" id="I_BOARD_USER_TYPE" value="<%=I_BOARD_USER_TYPE%>" />
        <input type="text" name="I_BOARD_WRITE_SID" id="I_BOARD_WRITE_SID" value="" />
         <input type="text" name="DATEUI" id="DATEUI" value="<%=DATEUI%>" />
         <input type="text" name="custom_Paging" id="custom_Paging" value="" />
        <%--<input type="text" name="I_USER_SEARCH_ID" id="I_USER_SEARCH_ID" value="" />--%>
        
    </div>
    <%--문의글 관리 조회 영역--%>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %> 조회</span>
        </div>
        <%--문의글 관리 컨텐츠 영역--%>
        <div class="sub-content-wrap_custom">
            <%--카테고리,검색어 영역--%>
            <div class="sub-content-select-ui-area">
                <div class="sub-content-select-ui">
                    <%--문의구분 영역--%>
                   <%-- <div class="category-area">
                        <div class="category-info lowerst-font">문의구분</div>
                        <div class="category_wrap">
                            <div class="category">
                                <select name="I_BOARD_CLASS" id="I_BOARD_CLASS" class="drkid-select" style="width: 190px;" data-font-class="lower-font" data-styles='{"width":"190px","height":"34px"}'>
                                    <option value="">전체</option>
                                    <%if(BOARD_CLASS != null)
                                    { %>
                                        <%for (int i = 0; i < BOARD_CLASS.Rows.Count; i++)
                                         {%>
                                        <option value="<%=BOARD_CLASS.Rows[i]["CODE_CODE"] %>" <%= I_BOARD_CLASS == BOARD_CLASS.Rows[i]["CODE_CODE"].ToString() ? "selected=\'selected\'" : "" %>><%=BOARD_CLASS.Rows[i]["CODE_NAME"] %></option>
                                         <%}%>
                                    <%}%>
                                </select>
                            </div>
                        </div>
                    </div>--%>
                    <%--카테고리 영역--%>
                    <div class="category-area">
                        <div class="category-info lowerst-font">카테고리</div>
                        <div class="category_wrap">
                            <%--카테고리 select box--%>
                            <div class="category" id="category_id">
                                <select name="I_CATEGORY" id="I_CATEGORY" class="drkid-select" style="width: 190px;" data-font-class="lower-font" data-styles='{"width":"190px","height":"34px"}'>
                                    <option value="">전체</option>
                                     <%if (BOARD_CATEGORY != null)
                                    {%>
                                        <%for (int i = 0; i < BOARD_CATEGORY.Rows.Count; i++)
                                          { %>
                                        <option value="<%=BOARD_CATEGORY.Rows[i]["CODE_CODE"] %>" <%= I_BOARD_CATEGORY == BOARD_CATEGORY.Rows[i]["CODE_CODE"].ToString() ? "selected=\'selected\'" : "" %>><%=BOARD_CATEGORY.Rows[i]["CODE_NAME"] %></option>
                                        <%} %>
                                    <%} %>
                                </select>
                            </div>
                        </div>
                    </div>
                    <%--문의일 영역--%>
                    <div class="search-word-area">
                          <div class="category-info lowerst-font">문의일</div>
                          <div class="search_Ui_Layout">
                             <div class="search_Period_Area">
                                 <div class="dateUi lowerst-font <%= DATEUI == "today" ? "active" : "" %>"  data-value="today">오늘</div>
                                 <div class="dateUi lowerst-font <%= DATEUI == "7" ? "active" : "" %>"  data-value="7">7일</div>
                                 <div class="dateUi lowerst-font <%= DATEUI == "15" ? "active" : "" %>"  data-value="15">15일</div>
                                 <div class="dateUi lowerst-font <%= DATEUI == "30" ? "active" : "" %>"  data-value="30">1개월</div>
                                 <div class="dateUi lowerst-font <%= DATEUI == "90" ? "active" : "" %>"  data-value="90">3개월</div>
                                 <div class="dateUi lowerst-font <%= DATEUI == "365" ? "active" : "" %>"  data-value="365">1년</div>
                             </div>
                             <div class="search_Date_Area">
                                 <%--<div class="search_Date"></div>--%>
                                 <%--시작,종료날짜 ui 영역--%>
                                 <div class="date_Ui_Area">
                                     <%--시작날짜--%>
                                     <div class="datePicker lower-font" style="width: 170px;">
                                         <input type="text" value="" autocomplete="off" class="datePicker-input" placeholder="시작일." name="I_FROM_DATE" data-picker-count="2" id="I_DATE_START" />
                                         <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                     </div>
                                     <div>&nbsp&nbsp~&nbsp&nbsp</div>
                                     <%--종료날짜--%>
                                     <div class="datePicker lower-font" style="width: 170px;">
                                         <input type="text" value="" autocomplete="off" class="datePicker-input" placeholder="종료일." name="I_TO_DATE" data-picker-count="2" id="I_DATE_END" />
                                         <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                    <%--답변상태 영역--%>
                    <div class="category-area">
                        <div class="category-info lowerst-font">답변상태</div>
                        <div class="category_wrap">
                            <%--답변상태 select box--%>
                            <div class="category">
                                <select name="I_POST_STATUS" id="I_POST_STATUS" class="drkid-select" style="width: 190px;" data-font-class="lower-font" data-styles='{"width":"190px","height":"34px"}'>
                                    <option value="">전체</option>
                                     <%if (POST_STATUS != null)
                                    {%>
                                            <%for (int i = 0; i < POST_STATUS.Rows.Count; i++)
                                           {%>
                                                <option value="<%=POST_STATUS.Rows[i]["CODE_CODE"] %>" <%= I_POST_STATUS == POST_STATUS.Rows[i]["CODE_CODE"].ToString() ? "selected=\'selected\'" : "" %>><%=POST_STATUS.Rows[i]["CODE_NAME"] %></option>
                                          <%}%>
                                    <%}%>
                                </select>
                            </div>
                        </div>
                    </div>
                    <%--회원구분 영역--%>
                    <div class="category-area">
                        <div class="category-info lowerst-font">회원구분</div>
                        <div class="category_wrap">
                            <%--회원구분 라디오 버튼--%>
                            <%--non_members_search_field--%>
                            <%--members_search_field--%>
                            <label class="drkid-radio">
                                <input type="radio" name="search_radio" value="" <%=I_BOARD_USER_TYPE == "" ? "checked=\"checked\"" : "" %>/>
                                <span class="lower-font">전체</span>
                            </label>
                            <label class="drkid-radio">
                                <input type="radio" name="search_radio" value="user" <%=I_BOARD_USER_TYPE == "USER" ? "checked=\"checked\"" : "" %>/>
                                <span class="lower-font">회원</span>
                            </label>
                            <label class="drkid-radio">
                                <input type="radio" name="search_radio" value="another" <%=I_BOARD_USER_TYPE == "01" ? "checked=\"checked\"" : "" %> />
                                <span class="lower-font">비회원</span>
                            </label>
                            <%--회원 선택시 검색추가조건--%>
                            <div class="members_search_field" style="display:none;">
                                <div class="search-word-input-arae">
                                    <input type="text" class="drkid-input lower-font" name="I_USER_SEARCH_ID" id="I_USER_SEARCH_ID" value="<%=I_BOARD_WRITE_NM %>" placeholder="검색할 회원 ID를 입력해주세요." autocomplete="off" maxlength="30" />
                                </div>
                                <div class="lowerst-font drkid-btn drkid-btn-active search-user-find-btn" id="search_find_pop" data-class-code="CS_USER" data-title="회원 검색" data-target="COMMON_POPUP_1">
                                    <span class="lower-font">회원 조회</span>
                                </div>
                            </div>
                            <%--비회원 선택시 검색추가조건--%>
                            <div class="non_members_search_field" style="display:none;">
                                <div class="search-word-input-arae">
                                    <input type="text" class="drkid-input lower-font" name="I_NONMEMBER_SEARCH_NAME" id="I_NONMEMBER_SEARCH_NAME" value="" placeholder="이름"  autocomplete="off" maxlength="30" />
                                </div>
                                <div class="search-word-input-arae">
                                    <input type="text" class="drkid-input lower-font" name="I_NONMEMBER_SEARCH_POHNE" id="I_NONMEMBER_SEARCH_POHNE" value="" placeholder="전화번호"  autocomplete="off" maxlength="30" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--검색어 영역--%>
                    <div class="search-word-area">
                        <div class="category-info lowerst-font">검색어</div>
                        <div class="search-word-input-arae">
                            <input type="text" class="drkid-input lower-font" name="I_SEARCH_TITLE" id="I_SEARCH_TITLE" value="<%=I_SEARCH_TITLE%>" placeholder="제목을 입력해주세요."  autocomplete="off" maxlength="30" />
                        </div>
                    </div>
                </div>

            </div>
            <%--문의글 관리 버튼 영역--%>
            <div class="sub-content-wrap_custom_btn_area">
                <div class="lowerst-font drkid-btn td-btn drkid-btn-active" id="custom_btn_search">검색</div>
                <div class="lowerst-font drkid-btn td-btn" id="custom_btn_reset">초기화</div>
            </div>
        </div>
    </div>
    <%--문의글 관리 목록 영역--%>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %> 목록</span>
            <span class="lower-font list_count_text">전체  <%= totalCount %>개</span>
        </div>
        <div class="sub-content-wrap">            
            <div class="table-wraper max-height-overflow custom-table-wraper">
                <table class="table-common">
                    <colgroup>
                        <col style="width: 4%;" />
                        <col style="width: 5.5%;" />
                        <col style="width: 7.5%;" />
                        <col style="width: 7.5%;" />
                        <col style="width: 11%;" />
                        <col style="width: 44.5%;" />
                        <col style="width: 10.5%;" />
                        <col style="width: 10.5%;" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="lower-font">No.</th>
                            <th class="lower-font">수정</th>
                            <th class="lower-font">문의구분</th>
                            <th class="lower-font">카테고리</th>
                            <th class="lower-font">작성자</th>
                            <th class="lower-font">문의제목</th>
                            <th class="lower-font">문의일</th>
                            <th class="lower-font">문의상태</th>
                        </tr>
                    </thead>
                    <tbody id="big-tbody">
                        <%if(CS_LIST != null)
                        {%>
                            <%for (int i = 0; i < CS_LIST.Rows.Count; i++)
                              { %>
                            <tr data-big-tr="<%=CS_LIST.Rows[i]["BOARD_SID"] %>">
                                <%--No.--%>
                                <td class="lower-font">
                                    <div class="lowerst-font"><%=totalCount - offset - i %></div>
                                </td>
                                <%--수정버튼--%>
                                <td class="lower-font">
                                    <div class="drkid-btn-active modi_Btn" id="<%=CS_LIST.Rows[i]["BOARD_SID"] %>">수정</div>
                                </td>
                                <%--문의구분--%>
                                <td class="lower-font">
                                    <% for (int j = 0; j < BOARD_CLASS.Rows.Count; j++)
                                       { %>
                                    <%if (CS_LIST.Rows[i]["BOARD_CLASS"].ToString() == BOARD_CLASS.Rows[j]["CODE_CODE"].ToString())
                                      {%>
                                    <div class="lowerst-font"><%=BOARD_CLASS.Rows[j]["CODE_NAME"] %></div>
                                    <% } %>
                                    <%else
                                      { %>
                                    <% } %>
                                    <%} %>
                                </td>
                                <%--카테고리--%>
                                <td class="lower-font">
                                    <% for (int j = 0; j < BOARD_CATEGORY.Rows.Count; j++)
                                       { %>
                                    <%if (CS_LIST.Rows[i]["BOARD_CATEGORY"].ToString() == BOARD_CATEGORY.Rows[j]["CODE_CODE"].ToString())
                                      {%>
                                    <div class="lowerst-font"><%=BOARD_CATEGORY.Rows[j]["CODE_NAME"] %></div>
                                    <% } %>
                                    <%else
                                      { %>
                                    <% } %>
                                    <%} %>
                                </td>
                                <%--작성자--%>
                                <td class="lower-font">
                                    <div class="lowerst-font"><%=CS_LIST.Rows[i]["BOARD_WRITE_NM"] %></div>
                                </td>
                                <%--문의제목--%>
                                <td class="list_Title_Area lower-font">
                                    <div class="list_Title lowerst-font"><span class="material-icons-outlined lockicon">lock</span><%=CS_LIST.Rows[i]["BOARD_TITLE"] %></div>
                                </td>
                                <%--문의일--%>
                                <td class="lower-font">
                                    <div class="lowerst-font"><%=CS_LIST.Rows[i]["POST_DATE"].ToString().Substring(0, 10).Replace("-",".").Replace("-",".") %></div>
                                </td>
                                <%--문의상태--%>
                                <td class="list_Title_Area lower-font">
                                    <% for (int j = 0; j < POST_STATUS.Rows.Count; j++)
                                       { %>
                                    <%if (CS_LIST.Rows[i]["POST_STATUS"].ToString() == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                      {%>
                                        <%if ("R" == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                          {%>
                                        <div class="lowerst-font status_R"><%=POST_STATUS.Rows[j]["CODE_NAME"] %></div>
                                        <% } %>
                                        <%if ("W" == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                          {%>
                                        <div class="lowerst-font status_W"><%=POST_STATUS.Rows[j]["CODE_NAME"] %></div>
                                        <% } %>
                                        <%if ("L" == POST_STATUS.Rows[j]["CODE_CODE"].ToString())
                                          {%>
                                        <div class="lowerst-font status_L"><%=POST_STATUS.Rows[j]["CODE_NAME"] %></div>
                                        <% } %>
                                    <% } %>
                                    <%else
                                      { %>
                                    <% } %>
                                    <%} %>
                                
                                </td>
                            </tr>
                            <%} %>
                        <%} %>


                    </tbody>
                </table>
            </div>
        </div>
        <div class="pageNavigationStr" style="padding: 50px 0px;">
            <%=pageNavigationStr%>
        </div>
    </div>
    <div class="answer-btn-area set_right" style="padding-top: 40px;">
        <div class="lowerst-font drkid-btn new-add-btn drkid-btn-active" id="new_contact_add">새 문의 생성</div>
    </div>
    <%--문의글 상세 목록 영역--%>
    <div class="sub-warp">
        <%--문의글 상세 제목--%>
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %> 상세</span>
        </div>
        <div class="sub-content-wrap sub-content-wrap-flex">
            <div class="sub-content-left scroll">
                <div class="sub-content-left-title">
                    <span class="custom-font user-name-color" id="detail_list_user_name"></span>
                    <span class="custom-font">님의 최근 문의 내역입니다.</span>
                </div>
                <div class="table-wraper max-height-overflow custom-table-wraper">
                    <table class="table-common">
                        <colgroup>
                            <col style="width: 13%;" />
                            <col style="width: 13%;" />
                            <col style="width: 43%;" />
                            <col style="width: 18%;" />
                            <col style="width: 13%;" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="lower-font">문의구분</th>
                                <th class="lower-font">카테고리</th>
                                <th class="lower-font">문의제목</th>
                                <th class="lower-font">문의일</th>
                                <th class="lower-font">문의상태</th>
                            </tr>
                        </thead>
                        <tbody id="content-left-tbody">
                            
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="sub-content-right scroll">
                <div class="sub-content-right-title">
                    <span class="custom-font" id="detail_board_class">고객문의</span>
                </div>
                
                <div id="contact_detail">
                    
                </div>
            </div>
        </div>
    </div>
    <div id="modal" class="modal">
        <div class="modal-content">
            <div>
                <span class="pop-modal-title">회원 검색</span>
                <span class="clear-icon drkid-icon close closeBtn"></span>
            </div>
            <div id="pop-modal-wraper">
                <div class="product_search_wrap">
                    <input type="text" autocomplete="off" id="user_idname" name="user_idname" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="" maxlength="50" />
                    <div class="">
                        <div class="lowerst-font drkid-btn drkid-btn-active user-search-btn" id="user_search">회원 검색</div>
                    </div>
                </div>
            </div>
            <div class="">
                <div class="modal_search_field">
                    <div class="search_title">
                        <span class="lower-font fcolor_dea">검색된 회원&nbsp</span>
                        <span class="lower-font count_sapn" id="search_user_count">0 명</span>
                    </div>
                    <div class="table-wraper max-height-overflow user_scroll">
                        <table class="table-common">
                            <colgroup>
                                <col style="width: 60%;" />
                                <col style="width: 40%;" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th class="lower-font">회원 ID</th>
                                    <th class="lower-font">회원 성함</th>
                                </tr>
                            </thead>
                            <%--회원 리스트 테이블--%>
                            <tbody class="" id="pop-user-tbody">
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="pop-modal-btn-wraper">
                <div class="drkid-btn-sub2 admin_save_Btn findEnterkey" id="user_enter_btn">
                    <span class="middle-font modal-btn-font">적용</span>
                </div>
                <div class="drkid-btn-sub2 drkid-btn-active closeBtn">
                    <span class="middle-font modal-btn-font">취소</span>
                </div>
            </div>
        </div>
    </div>
    <%--문의상세 리스트 템플릿--%>
    <script type="text/html" id="contact_list">
        <tr class="detail_btn" data-sub-tr="{BOARD_SID}">
            <%--상세 문의구분--%>
            <td class="lowerst-font">
                <div class="lowerst-font">{BOARD_NAME}</div>
                <input type="hidden" value="{BOARD_CLASS}"/>
            </td>
            <%--상세 카테고리--%>
            <td class="lowerst-font ">
                <div class="lowerst-font">{CATEGORY_NAME}</div>
                <input type="hidden" value="{CATEGORY_CODE}"/>
            </td>
            <%--상세 문의제목--%>
            <td class="lowerst-font ">
                <div class="lowerst-font">{BOARD_TITLE}</div>
            </td>
            <%--상세 문의일--%>
            <td class="lowerst-font ">
                <div class="lowerst-font">{POST_DATE}</div>
            </td>
            <%--상세 문의상태--%>
            <td class="lowerst-font">
                <div id="list_status_{BOARD_SID}" class="lowerst-font {STATUS_COLOR}">{STATUS_NAME}</div>
                <input type="hidden" value="{STATUS_CODE}"/>
            </td>
        </tr>
    </script>
    <%--문의상세 내용 템플릿--%>
    <script type="text/html" id="contact_detail_template">
        <div class="sub-content-right-section">
            <span class="category-font">{CATEGORY_NAME}</span>
            <span class="board-title-font">{BOARD_TITLE}</span>
        </div>
        <div class="sub-content-right-section">
            <span class="time-font">{BOARD_WRITE_NM}</span>
            <span class="time-font">{POST_DATE}</span><span class="time-font">{POST_TIME}</span>
            <span id="detail_status_{BOARD_SID}" class="state-font {STATUS_COLOR}">{STATUS_NAME}</span>
        </div>
        <div class="sub-content-right-section flex-section">
            <span class="material-icons-outlined link-icon">attachment</span>
            <span class="file-font">첨부파일</span>
            <span class="file-font link-font">파일이름바인딩</span>
        </div>
        <div class="sub-content-right-section ">
            <span class="board-body-font">{BOARD_MESSAGE}</span>
        </div>
        <div id="contact_answer">
            <%--답글리스트 들어감--%>
        </div>
        <div class="sub-content-right-section gray-section ">
            <div class="text-area-background flex-section">
                <textarea class="answer-text-area" name="ANSWER_MESSAGE" id="ANSWER_MESSAGE" placeholder="답글을 입력해 주세요."></textarea>
                <div class="lowerst-font drkid-btn answer-commit-btn drkid-btn-active" id="answer_{BOARD_SID}">등록</div>
            </div>
        </div>
        <div class="sub-content-right-section">
            <div class="answer-btn-area set_right">
                <div class="lowerst-font drkid-btn answer-btn" id="L_{BOARD_SID}">문의 확인</div>
                <div class="lowerst-font drkid-btn answer-btn drkid-btn-active" id="W_{BOARD_SID}">답변완료</div>
            </div>
        </div>
    </script>
    <%--문의상세 답글 템플릿--%>
    <script type="text/html" id="contact_answer_template">
        <div class="sub-content-right-section gray-section" >
            <div class="answer-title-area">
                <span class="answer-title-font">답글</span><span class="small-time-font">{POST_DATE}</span><span class="small-time-font">{POST_TIME}</span>
                <span class="answer-title-font writer-font">작성자<span class="writer-font user-name-color">{BOARD_WRITE_NM}</span></span>
            </div>
            <div class="answer-body-area">
                <span class="board-body-font">{BOARD_MESSAGE}</span>
            </div>
            <div class="answer-btn-area" id="{BOARD_SID}_{BOARD_SEQ}">
                <div class="lowerst-font drkid-btn answer-btn" id="del_{BOARD_DETAIL_SID}">삭제</div>
                <input type="hidden" class="seq" value="{BOARD_SEQ}"/>
                <%--<div class="lowerst-font drkid-btn answer-btn drkid-btn-active" id="mod_{BOARD_DETAIL_SID}">수정</div>--%>
            </div>
        </div>
    </script>
    <%--새 문의템플릿--%>
    <script type="text/html" id="new_contact_template">
        <%--<div class="sub-content-right-title">
                        <span class="custom-font" id="new_contact_title">문의 작성</span>
                    </div>--%>
        <%--카테고리 & 제목--%>
        <div class="new-content-section flex-section">
            <%--카테고리 select box--%>
            <div class="category" id="add-category">
                <select name="I_CONTACT_CATEGORY" id="I_CONTACT_CATEGORY" class="drkid-select" style="width: 190px;" data-font-class="lower-font" data-styles='{"width":"190px","height":"34px"}'>
                    <option value="">카테고리 선택</option>
                    <%if (BOARD_CATEGORY != null) 
                    {%>
                        <%for (int i = 0; i < BOARD_CATEGORY.Rows.Count; i++)
                          { %>
                        <option value="<%=BOARD_CATEGORY.Rows[i]["CODE_CODE"] %>" <%= I_BOARD_CATEGORY == BOARD_CATEGORY.Rows[i]["CODE_CODE"].ToString() ? "selected=\'selected\'" : "" %> ><%=BOARD_CATEGORY.Rows[i]["CODE_NAME"] %></option>
                       <%} %>
                    <%} %>
                </select>
            </div>
            <div class="contact_title_input">
                <input type="text" class="drkid-input lower-font" name="I_CONTACT_TITLE" id="I_CONTACT_TITLE" value="" placeholder="제목을 입력해주세요."  autocomplete="off" maxlength="30" />
            </div>
        </div>
        <div class="sub-content-right-section">
            <label class="drkid-radio">
                <input type="radio" name="radio" value="user" checked="checked" />
                <span class="lower-font">회원</span>
            </label>
            <label class="drkid-radio">
                <input type="radio" name="radio" value="another" />
                <span class="lower-font">비회원</span>
            </label>
            <div class="user-find-area">
                <%--<div class="lowerst-font drkid-btn drkid-btn-active user-find-btn" id="user_search_pop_open">회원 검색</div>--%>
                <div class="lowerst-font drkid-btn drkid-btn-active user-find-btn" id="find-pop" data-class-code="CS_USER" data-title="회원 검색"  data-target="COMMON_POPUP_1">
                    <span class="lower-font">회원 검색</span>
                </div>
                <div class="add_user_field user_id_div"></div>
            </div>
            <div class="user-find-area non_members_input" style="display:none;">
                <span class="lower-font input_label"><span class="drkid_Negative_color">*</span>비회원</span>
                <input type="text" class="drkid-input lower-font" name="NON_MEMBER_NAME" id="NON_MEMBER_NAME" value="" placeholder="문의자 명"  autocomplete="off" maxlength="30" />
                <span class="lower-font input_label"><span class="drkid_Negative_color">*</span>전화번호</span>
                <input type="text" class="drkid-input lower-font" name="NON_MEMBER_PHONE" id="NON_MEMBER_PHONE" value="" placeholder="문의자 전화번호"  autocomplete="off" maxlength="30" />
            </div>
            <span class="user-find-area non_members_input drkid_Negative_color another_guide_text" style="display:none;">* 비회원 문의글 조회을 위한 필수 정보입니다.</span>
        </div>
        <div class="sub-content-right-section">
            <div class="contact-text-area-background flex-section">
                <textarea class="contact-text-area" name="CONTACT_MESSAGE" id="CONTACT_MESSAGE" placeholder="문의 내용을 입력해 주세요."></textarea>
            </div>
        </div>
        <div class="sub-content-right-section">
            <div class="flex-section">
                <%--비밀번호--%>
                <div class="category-info lowerst-font">비밀번호</div>
                <input type="password" class="drkid-input lower-font" name="BOARD_PASSWORD" id="BOARD_PASSWORD" value="" placeholder="4자리 이상 비밀번호"  autocomplete="off" maxlength="30" />
            </div>
        </div>
        <div class="sub-content-right-section gray-section ">
            <div class="text-area-background flex-section">
                <textarea class="answer-text-area" name="ANSWER_MESSAGE" id="ANSWER_MESSAGE" placeholder="답글을 입력해 주세요."></textarea>
                <div class="lowerst-font drkid-btn answer-commit-btn drkid-btn-active" id="NEW_CONTACT_SAVE">등록</div>
            </div>
        </div>
    </script>
    <%--회원검색--%>
    <script type="text/html"  id="USER_SEARCH_TEMPLATE">
        <tr id="tr_{USER_SID}" data-sid-tr="{USER_SID}" class="user-tr" onClick="user_click(event)">
            <%--회원 id--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font input-lowheight user_id_div">{USER_ID}</div>
                <input type="hidden" id="{USER_SID}_userid" value="{USER_ID}" />
            </td>
            <%--회원 이름--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font input-lowheight">{USER_NAME}</div>
                <input type="hidden" id="{USER_SID}_username" value="{USER_NAME}" />
            </td>
        </tr>
    </script>
</asp:Content>
