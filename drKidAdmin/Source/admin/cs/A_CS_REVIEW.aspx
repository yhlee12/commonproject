﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_CS_REVIEW.aspx.cs" Inherits="drKidAdmin.Source.admin.cs.A_CS_REVIEW" %>
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
             gap: 45px;
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
             min-height: 150px;
        }

        .table-wraper {
            min-width: 1900px;
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
            gap: 20px;
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
        .title_txt_span > span:first-child {
            font-weight:500;
        } 
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
            background: var(--mono_back);
        }
        /*회원구분*/
        .content2_button_select > .drkid-select-div {
            background: var(--mono_back);
        }
        /*scroll*/
        .content2_button_wrap_inner > .drkid-btn-sub2,
        .front_button > .drkid-btn-sub2 {
            min-height: 20px;
            font-weight: 500;
        }
        /*select-li-span*/
        .drkid-select-ul > li {
        }
        .drkid-select-ul > li > span {
            font-size: 12px;
        }
        .Date_content {
            display: flex;
            gap: 30px;
        }
        /*검색어*/
        .contentArea_Wrap_inner {
            width: 250px;
            height: 34px;
        }
        .contentArea_Wrap_inner > input {
            width: 100%;
            height: 100%;
        }
        .contentArea_Wrap_inner > input::placeholder {
            color:#D8D8D8;
        }
        .drkid-radio > span {
            color:#707070;
        }
        .front_button > .drkid-btn-active {
            padding: 6px 10px;
            font-weight: 400;
        }
        /*리뷰 목록 css*/
        /*테이블*/
        .table-wraper::-webkit-scrollbar {
            display: none;
        }

        .table-common > tbody tr td {
            padding:5px 10px;
        }
        .table-common > tbody > tr > td > div > span {
            color: var(--mono_main);
            font-weight: 400;
        }
        /*상품 코드*/
        .product_code_inner > span {
            color: var(--drkid_alert_positive)!important;
        }
        /*상품명*/
        .table-common > tbody tr > .product_name {
            text-align:start;
        }
        /*구매자 평점*/
        .customer_star_inner {
            display:flex;
            align-items:center;
            justify-content:center;
        }
        .customer_star_inner > .star_wrap {
            width: 11px;
        }
        /*포토/영상*/
        .poto_img_inner {
            /*height: 90px;
            width: 90px;*/
            height: 100%;
            width: 100%;
            margin: auto;
        }
        /*리뷰 제목*/
        .table-common > tbody tr > .review_title {
            vertical-align:baseline;
            text-align: start;
        }
        .review_title_inner > span {
            text-decoration:underline;
        }
        /*리뷰내용*/
        .table-common > tbody tr > .review_content {
            vertical-align:baseline;
            text-align: start;
        }
        .review_content_inner > span {
            text-decoration:underline;
        }
        /*.review_title_inner,.review_content_inner {
            overflow-y: scroll;
            max-height: 260px;
        }*/
        /*상품주문번호*/
        .product_order_number_inner > span {
            color: var(--drkid_alert_positive)!important;
        }

        .t2l-alert-inner-wraper {
            min-width: 350px;
        }
        /*HJH*/
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
        .catagory_button {
            min-height:35px;
        }
        .cateData_Area {
            display: flex;
            align-items: center;
        }
        .review_content_inner {
            height: 85px;
            width: 100%;
            display: -webkit-box;
            -webkit-line-clamp: 4;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
        }
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        /*디테일 팝업*/
        .overlay {
            position: fixed;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 50;
            display:none;
        }
        .img_review_wrap_inner {
           
            width:1000px;
            background-color: #fff;
            position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
        }
        .img_wrap_1 {
            display: flex;
            gap: 20px;
            padding: 0 20px 30px
        }
        .img_wrap_2 {
            display: flex;
            gap: 20px;
            padding: 0 20px 30px;
            height: 650px;
        }
        .img_wrap_clear {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px;
        }
        .img_wrap_clear > span {
            display: block;
            padding: 10px;
            font-size: 30px;
            cursor:pointer;
        }
        .left_img,
        .right_wrap {
            width:50%
        }
        .img_bottom_img {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 10px 0 20px;
            height:100px;
        }
        .img_bottom_img > .img_content {
            width: 70px;
            height: 70px;
            cursor:pointer;
        }
        .right_wrap,
        .right_wrap_2 {
            border-bottom: 1px solid #cacaca;
        }
        .right_wrap > .img,
        .right_wrap_2 > .img {
            display: flex;
            align-items:center;
            gap: 10px;
        }
        .right_wrap > .img > .product {
            width: 55px;
            height:55px;
        }
        .right_wrap_2 > .img > .product {
            width: 55px;
            height:55px;
        }
        .product_img_txt > span {
            display: block;
        }
        .product_img_txt > span:first-child {
            font-size:14px;
            color:#9F9F9F;
        }
        .content_star_wrap {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 0;
            margin: 20px 0;
            border-top: 1px solid #cacaca;
            border-bottom: 1px solid #cacaca;
            min-height:45px;
        }
        .content_star_wrap_txt,
        .content_star_wrap_right {
            font-size:14px;
            color:#BBBBBB;
        }
        .right_wrap_txt_first {
            padding-bottom: 15px;
        }
        .right_wrap_txt_first > p {
            font-size: 16px;
            color:#262626;
            font-weight:600;
        }
        .right_wrap_txt_second > p {
            font-size:14px;
            color:#4E4E4E;
        }
        .content_star_wrap_left {
            display: flex;
            gap: 10px;
        }
        .content_star {
            display: flex;
            align-items: center;
        }
        .right_wrap_txt_second {
            overflow-y: auto;
            height: 400px;
        }
        .modalClose_Btn {
            cursor:pointer;
        }
        .mainImg {
            width: 470px;
            height: 470px;
        }
        .rigthTop {
            min-height: 55px;
             padding: 10px 0px 0px 0px;
        }
        .poto_img_inner, .review_title_inner, .review_content_inner {
            cursor:pointer;
        }
        .modal_Btn_Area {
            padding: 20px 10px;
            border-top: 1px solid #E2E2E2;
            border-bottom: 1px solid #E2E2E2;
        }
        .modal_Best_Btns_Area {
            display: flex;
            justify-content: space-between;
        }
        .modal_Best_Btns {
            display: flex;
            gap: 0px 10px;
        }
        .modal_Best_Btn {
            width: 130px;
            height: 32px;
            line-height: 32px;
            text-align: center;
            background: var(--main_color);
            color: #ffffff;
            cursor:pointer;
        }
        .modal_BestDel_Btn {
            width: 130px;
            height: 32px;
            line-height: 32px;
            text-align: center;
            color: #111111;
            border: 1px solid #E2E2E2;
            cursor:pointer;
        }
        .modal_ReviewDel_Btn {
            width: 80px;
            height: 32px;
            line-height: 32px;
            text-align: center;
            color: #111111;
            border: 1px solid #E2E2E2;
            cursor:pointer;
        }
        .modal_ReviewTitle {
            font-weight:500;
        }
        .modal_Title {
            font-weight:600;
        }
        .hidden_Review_Field {
            display:none;
        }
    </style>
    <script>
        //Category Delete
        function delCategory(target) {
            let _targetSid = $(target).data('targetdel');
            $(`[data-targetsid="${_targetSid}"]`).remove();
        }
        function allCheck(target) {
            console.log("탐")
            let targetTableBody = $(target).parents('table').find('tbody');
            let boolChecker = $(target).is(":checked");
            if (boolChecker) {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', true);
                });
            } else {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', false);
                });
            }
        }
        //function modalData_ClearAndSetting(target)
        //{   
        //    var _all_ReviewImg_List = [];
        //    var src="";
        //    //*****CLEAR
        //    $("#img_change_content").empty();//대표이미지 
        //    $("#img_change").empty();//대표 포함 모든 리뷰 이미지
        //    $(".product").empty();//우측 상단 대표이미지 
        //    $(".modal_Best_Btns").empty();//모달 베스트리뷰선정,베스트리뷰해제 버튼 영역 
        //    $(".modal_ReviewDel_Btn_Area").empty();//모달 리뷰 삭제 영역
        //    //*****SETTING
        //    //버튼 세팅
        //    var _reviewType =  $(target).parents('tr').find(".review_BestFlag_Area").data("info");
        //    var _reviewBest_Btn;
        //    var _reviewDel_Btn;
        //    var _reviewSid = $(target).parents('tr').find(".review_Sid_Area").data("info");
        //    var _ReviewSid_Input_Change;
        //    var _ReviewSid_Input_Del;
        //    // 베스트 선정 or 해제 버튼 
        //    if(_reviewType == "Y")
        //    {
        //        _reviewBest_Btn = $(`<div class="lowerst-font modal_BestDel_Btn">베스트리뷰해제</div>`);
        //        $(".modal_Best_Btns").append(_reviewBest_Btn);
        //        _ReviewSid_Input_Change = `<input type='hidden' name='REVIEWSID_INPUT_CHANGE' value='${_reviewSid}'/>`;
        //        $(".modal_Best_Btns").append(_ReviewSid_Input_Change);
        //        _reviewBest_Btn.on('click', function() {
        //            _popModal.Promt('알림', '베스트 리뷰를 해제하시겠습니까?',
        //               function () { 
        //                   showProgress();
        //                   $('#changeType').val("N");
        //                   $('#flag').val('modalChange');
        //                   $('#form1').submit();
        //               }, function (error) { _popModal.Alert('알림', error); });
        //        });
        //    }
        //    else
        //    {
        //        _reviewBest_Btn = $(`<div class="lowerst-font modal_Best_Btn">베스트리뷰선정</div>`);
        //        $(".modal_Best_Btns").append(_reviewBest_Btn);
        //        _ReviewSid_Input_Change = `<input type='hidden' name='REVIEWSID_INPUT_CHANGE' value='${_reviewSid}'/>`;
        //        $(".modal_Best_Btns").append(_ReviewSid_Input_Change);
        //        _reviewBest_Btn.on('click', function() {
        //            _popModal.Promt('알림', '베스트 리뷰로 설정하시겠습니까?',
        //               function () { 
        //                   showProgress();
        //                   $('#changeType').val("Y");
        //                   $('#flag').val('modalChange');
        //                   $('#form1').submit();
        //               }, function (error) { _popModal.Alert('알림', error); });
        //        });
        //    }
        //    // 리뷰 삭제 버튼 
        //    _reviewDel_Btn = $(`<div class="lowerst-font modal_ReviewDel_Btn" id="${_reviewSid}">리뷰 삭제</div>`);
        //    $(".modal_ReviewDel_Btn_Area").append(_reviewDel_Btn);
        //    _ReviewSid_Input_Del = `<input type='hidden' name='REVIEWSID_INPUT_DEL' value='${_reviewSid}'/>`;
        //    $(".modal_ReviewDel_Btn_Area").append(_ReviewSid_Input_Del);
        //    _reviewDel_Btn.on('click', function() {
        //        _popModal.Promt('알림', '정말 삭제하시겠습니까?',
        //            function () { 
        //                showProgress();
        //                $('#flag').val('modalDel');
        //                $('#form1').submit();
        //            }, function (error) { _popModal.Alert('알림', error); });
        //    });

        //    //메인,서브 모든 이미지 정보 세팅
        //    var _all_ReviewImgs = $(target).parents('tr').find(".allReview_Imgs input[name='ALL_REVIEW_IMAGE']").val();
        //    _all_ReviewImg_List.push(_all_ReviewImgs);
        //    _all_ReviewImg_List = _all_ReviewImg_List[0].split(',');
        //    ///메인 이미지 관련 세팅
        //    var _mainImg_Path =  $(target).parents('tr').find(".poto_img_inner").data("info");
        //    var _mainImg = `<img src="/Source/DRKID_EDMS/${_mainImg_Path}"/>`;
        //    $('#img_change_content').append(_mainImg);
        //    $(".product").append(_mainImg);
        //    //모달 좌측 하단 total 이미지 영역 SETTING
        //    //메인 이미지 SETTING
        //    var _allImg;
        //    var _allImg_Path;
        //    if(_all_ReviewImg_List[0] == null || _all_ReviewImg_List[0] == ""){
        //        var _mainImg_Src = $("#img_change_content img").attr("src");
        //        console.log("_mainImg_Src:",_mainImg_Src)
        //        _allImg= $(`<div class="img_content">
        //                        <img src="${_mainImg_Src}">
        //                     </div>`);
        //        $("#img_change").append(_allImg);
        //    }
        //    else{
        //        for (var i = 0; i < _all_ReviewImg_List.length; i++) {
        //            _allImg= $(`<div class="img_content">
        //                        <img src="/Source/DRKID_EDMS/${_all_ReviewImg_List[i]}">
        //                     </div>`);
        //            $("#img_change").append(_allImg);
        //            //요소 추가 후 이벤트 바인딩
        //            _allImg.on('click', function() {
        //                var _newSrc = $(this).find('img').attr('src');
        //                $("#img_change_content img").attr("src", _newSrc);
        //            });
        //        }
        //    }
        //    //상품명 및 상품카테고리 SETTING
        //    var _prodCate_Data =  $(target).parents('tr').find(".category_inner").data("info");
        //    var _prodNM_Data =  $(target).parents('tr').find(".product_name_inner").data("info");
        //    $(".modal_ProdCategory").text(_prodCate_Data);
        //    $(".modal_ProdNM").text(_prodNM_Data);
        //    // 평점, 작성자ID , 등록일 SETTING
        //    // 평점 SETTING
        //    var _prodScore_Data =  $(target).parents('tr').find(".customer_star_inner").data("info");
        //    var _prodScore = `<div class="star_wrap">
        //                        <img src="/Source/admin/image/star.svg" alt="admin_star">
        //                     </div>`;
        //    _prodScore_Data = _prodScore_Data * 1;//형변환
        //    $(".content_star").empty();
        //    for(j=0;j<_prodScore_Data;j++)
        //    {
        //        $(".content_star").append(_prodScore);
        //    }
        //    //작성자 ID ,작성일  SETTING
        //    var _postUserId_Data = $(target).parents('tr').find(".review_UserId_Area").data("info");
        //    var _postTime_Data = $(target).parents('tr').find(".review_PostTime_Area").data("info");
        //    $(".modal_PostUserId").text(_postUserId_Data);
        //    $(".modal_PostTime").text(_postTime_Data);
        //    //리뷰 제목 , 내용 SETTING
        //    var _reviewTitle_Data = $(target).parents('tr').find(".review_title_inner").data("info");
        //    var _reviewBody_Data = $(target).parents('tr').find(".review_content_inner ").data("info");
        //    $(".modal_ReviewTitle").text(_reviewTitle_Data);
        //    $(".modal_ReviewBody").text(_reviewBody_Data);
        //}
        function modalData_ClearAndSetting(target)
        {

            //*****CLEAR
            $("#img_change_content").empty();//대표이미지 
            $(".product").empty();//우측 상단 대표이미지 
            $("#img_change").empty();//대표 포함 모든 리뷰 이미지
            $(".modal_Best_Btns").empty();//모달 베스트리뷰선정,베스트리뷰해제 버튼 영역 
            $(".modal_ReviewDel_Btn_Area").empty();//모달 리뷰 삭제 영역
            //*****SETTING
            ///메인 이미지 관련 세팅
            var _mainImg_Path =  $(target).parents('tr').find(".hidden_Review_Field input[name='H_REVIEW_MAIN_IMAGE']").val();
            var _mainImg = `<img src="/Source/DRKID_EDMS/${_mainImg_Path}"/>`;
            var _prodImg;
            var _prodImg_Path =  $(target).parents('tr').find(".hidden_Review_Field input[name='H_PRODUCT_MAIN_IMAGE']").val();
            if(_prodImg_Path.length == 0)
            {
                _prodImg = `<img src="/Source/image/no_img.svg" class="no_img"/>`;
            }
            else
            {
                _prodImg = `<img src="/Source/DRKID_EDMS/${_prodImg_Path}"/>`;
            }
        
            $('#img_change_content').append(_mainImg);
            $(".product").append(_prodImg);

            //메인,서브 모든 이미지 정보 세팅
            var _all_ReviewImg_List = [];
            var _all_ReviewImgs = $(target).parents('tr').find(".hidden_Review_Field input[name='H_ALL_REVIEW_IMAGE']").val();
            console.log(_all_ReviewImgs)
            _all_ReviewImg_List.push(_all_ReviewImgs);
            _all_ReviewImg_List = _all_ReviewImg_List[0].split(',');

            var _allImg;
            var _allImg_Path;
            if(_all_ReviewImg_List[0] == null || _all_ReviewImg_List[0] == ""){
                var _mainImg_Src = $("#img_change_content img").attr("src");
                console.log("_mainImg_Src:",_mainImg_Src)
                _allImg= $(`<div class="img_content">
                                <img src="${_mainImg_Src}">
                             </div>`);
                $("#img_change").append(_allImg);
            }
            else{
                for (var i = 0; i < _all_ReviewImg_List.length; i++) {
                    _allImg= $(`<div class="img_content">
                                <img src="/Source/DRKID_EDMS/${_all_ReviewImg_List[i]}">
                             </div>`);
                    $("#img_change").append(_allImg);
                    //요소 추가 후 이벤트 바인딩
                    _allImg.on('click', function() {
                        var _newSrc = $(this).find('img').attr('src');
                        $("#img_change_content img").attr("src", _newSrc);
                    });
                }
            }
            //상품명, 카테고리세팅
            var _H_PRODUCT_NM = $(target).parents('tr').find(".hidden_Review_Field input[name='H_PRODUCT_NM']").val();
            $(".modal_ProdNM").text(_H_PRODUCT_NM);
            var _H_GROUP_CATEGORY_NAME = $(target).parents('tr').find(".hidden_Review_Field input[name='H_GROUP_CATEGORY_NAME']").val();
            $(".modal_ProdCategory").text(_H_GROUP_CATEGORY_NAME);
            //리뷰정보 세팅
            var _H_PRODUCT_SCORE = $(target).parents('tr').find(".hidden_Review_Field input[name='H_PRODUCT_SCORE']").val() * 1;
            var _star = `<div class="star_img">
                            <img src="/Source/client/image/star_icon.svg" alt="star_icon">
                        </div>`;
            $(".modal_ProdScore").empty();
            for(j=0;j<_H_PRODUCT_SCORE;j++)
            {
                $(".modal_ProdScore").append(_star);
            }
            var _H_POST_USER_ID = $(target).parents('tr').find(".hidden_Review_Field input[name='H_POST_USER_ID']").val();
            $(".modal_PostUserId").text(_H_POST_USER_ID);
            var _H_POST_TIME = $(target).parents('tr').find(".hidden_Review_Field input[name='H_POST_TIME']").val();
            $(".modal_PostTime").text(_H_POST_TIME);
            var _H_REVIEW_TITLE = $(target).parents('tr').find(".hidden_Review_Field input[name='H_REVIEW_TITLE']").val();
            $(".modal_ReviewTitle").text(_H_REVIEW_TITLE);
            var _H_REVIEW_BODY = $(target).parents('tr').find(".hidden_Review_Field input[name='H_REVIEW_BODY']").val();
            $(".modal_ReviewBody").text(_H_REVIEW_BODY);
            //버튼 세팅
            var _reviewType =  $(target).parents('tr').find(".review_BestFlag_Area").data("info");
            var _reviewBest_Btn;
            var _reviewDel_Btn;
            var _reviewSid = $(target).parents('tr').find(".review_Sid_Area").data("info");
            var _ReviewSid_Input_Change;
            var _ReviewSid_Input_Del;
            // 베스트 선정 or 해제 버튼 
            if(_reviewType == "Y")
            {
                _reviewBest_Btn = $(`<div class="lowerst-font modal_BestDel_Btn">베스트리뷰해제</div>`);
                $(".modal_Best_Btns").append(_reviewBest_Btn);
                _ReviewSid_Input_Change = `<input type='hidden' name='REVIEWSID_INPUT_CHANGE' value='${_reviewSid}'/>`;
                $(".modal_Best_Btns").append(_ReviewSid_Input_Change);
                _reviewBest_Btn.on('click', function() {
                    _popModal.Promt('알림', '베스트 리뷰를 해제하시겠습니까?',
                       function () { 
                           showProgress();
                           $('#changeType').val("N");
                           $('#flag').val('modalChange');
                           $('#form1').submit();
                       }, function (error) { _popModal.Alert('알림', error); });
                });
            }
            else
            {
                _reviewBest_Btn = $(`<div class="lowerst-font modal_Best_Btn">베스트리뷰선정</div>`);
                $(".modal_Best_Btns").append(_reviewBest_Btn);
                _ReviewSid_Input_Change = `<input type='hidden' name='REVIEWSID_INPUT_CHANGE' value='${_reviewSid}'/>`;
                $(".modal_Best_Btns").append(_ReviewSid_Input_Change);
                _reviewBest_Btn.on('click', function() {
                    _popModal.Promt('알림', '베스트 리뷰로 설정하시겠습니까?',
                       function () { 
                           showProgress();
                           $('#changeType').val("Y");
                           $('#flag').val('modalChange');
                           $('#form1').submit();
                       }, function (error) { _popModal.Alert('알림', error); });
                });
            }
            // 리뷰 삭제 버튼 
            _reviewDel_Btn = $(`<div class="lowerst-font modal_ReviewDel_Btn" id="${_reviewSid}">리뷰 삭제</div>`);
            $(".modal_ReviewDel_Btn_Area").append(_reviewDel_Btn);
            _ReviewSid_Input_Del = `<input type='hidden' name='REVIEWSID_INPUT_DEL' value='${_reviewSid}'/>`;
            $(".modal_ReviewDel_Btn_Area").append(_ReviewSid_Input_Del);
            _reviewDel_Btn.on('click', function() {
                _popModal.Promt('알림', '정말 삭제하시겠습니까?',
                    function () { 
                        showProgress();
                        $('#flag').val('modalDel');
                        $('#form1').submit();
                    }, function (error) { _popModal.Alert('알림', error); });
            });
        }

        var $FROM = `<%=FROM%>`;
        var $TO = `<%=TO%>`;
        var $cp_ret_status = `<%=cp_ret_status%>`;
        var $change_flag = `<%=change_flag%>`;
        var $del_flag = `<%=del_flag%>`;
        var review_sid_list = [];
        var $request_userName = `<%=request_userName%>`; // $request_userName : 회원관리 리뷰 자세히보기에서 받는 유저 아이디값
        var $matches = `<%=matches%>`;
        $(function () {
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
            //회원관리 리뷰 자세히보기 관련
            if($request_userName != "" && $request_userName != null)
            {
                $("input[type='radio'][name='SEARCH_TYPE'][value='USER_ID']").prop("checked", true);
                $("input[name='REVIEW_TITLE']").val($request_userName);
                showProgress();
                $("#searchBtn_Click_Flag").val("Y");
                $('#flag').val('search');
                $('#form1').submit();
            }
            if($cp_ret_status == "N"){hideProgress();}
            if($del_flag == "Y"){
                _popModal.Alert('알림', '정상 삭제되었습니다.');
            }
            if($change_flag == "Y"){
                _popModal.Alert('알림', '정상 변경되었습니다.');
            }
            //모달 관련 시작
            //리스트 클릭 시 디테일 팝업 
            $(".poto_img_inner,.review_title_inner,.review_content_inner").on("click", function () {
                modalData_ClearAndSetting(this);
                $(".overlay").show();
            });
            //모달 관련 종료
            $(".modalClose_Btn").on("click", function () {
                $(".overlay").hide();
            });
            
            //선택삭제 버튼
            $(".CHOICE_DELETE").on("click", function () {               
                var _checkBoxChecker = $("input:checkbox[name=REVIEW_SID]:checked");
                if(_checkBoxChecker.length == 0){
                    _popModal.Alert('알림', '하나 이상의 리뷰를 선택해주세요.');
                    return;
                }
                else{
                    _popModal.Promt('알림', '정말 삭제하시겠습니까?',
                    function () { 
                        showProgress();
                        $('#flag').val('del');
                        $('#form1').submit();
                    }, function (error) { _popModal.Alert('알림', error); });
                }
          
            });
            //베스트 리뷰 선정 버튼
            $(".BEST_REVIEW_BTN,.BEST_REVIEW_DELETE_BTN").on("click", function () {
                var changeType = $(this).data("type"); // setBest OR  removalBest
                console.log(changeType)
                var _checkBoxChecker = $("input:checkbox[name=REVIEW_SID]:checked");
                if(_checkBoxChecker.length == 0){
                    _popModal.Alert('알림', '하나 이상의 리뷰를 선택해주세요.');
                    return;
                }
                else{
                    if(changeType == "setBest") {
                        _popModal.Promt('알림', '선택하신 리뷰를 베스트 리뷰로 설정 하시겠습니까?',
                       function () { 
                           showProgress();
                           $('#changeType').val("Y");
                           $('#flag').val('change');
                           $('#form1').submit();
                       }, function (error) { _popModal.Alert('알림', error); });
                    }
                    else{
                        _popModal.Promt('알림', '선택하신 리뷰를 베스트 리뷰 해제하시겠습니까?',
                        function () { 
                            showProgress();
                            $('#changeType').val("N");
                            $('#flag').val('change');
                            $('#form1').submit();
                        }, function (error) { _popModal.Alert('알림', error); });
                    }

                }
            });
            //전체 선택 기능
            $('#all-select').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            //검색 버튼 클릭
            $("#search-btns").on("click", function () {
                showProgress();
                $("#searchBtn_Click_Flag").val("Y");
                $('#flag').val('search');
                $('#form1').submit();
            });
            $("input[name='REVIEW_TITLE']").keydown(function (event) {
                if (event.keyCode === 13) {
                    showProgress();
                    $("#searchBtn_Click_Flag").val("Y");
                    $('#flag').val('search');
                    $('#form1').submit();
                }
            });
            
            //카테고리
            //수정 2023 08 08 KSM
            $(".catagory_button").click(function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    let usedSid = String(data.CODE_SID);
                let _bools = true;
                $('.cateData_Area').find('.product-category-wraper').each(function (index, item) {
                    if (($(item).data('targetsid') + '') == usedSid) {
                        _bools = false;
                    }
                });
                if (_bools == false) {
                    _popModal.Alert('알림', '이미 추가된 카테고리입니다.');
                    return;
                }
                let _template = `<div class="product-category-wraper" data-targetsid="{SID}">
                                    <div class="lower-font category-name">{NAME}</div>
                                    <div class="lowerst-font xbtnx-cate" data-targetdel="{SID}">
                                        <span class="material-icons lowerst-font">close</span>
                                    </div>
                                    <input type="hidden" name="CATEGORY_SID" value="{SID}" />
                                    <input type="hidden" name="CATEGORY_NAME" value="{NAME}" />
                                </div>`;
                _template = _template.replace(/{SID}/g, data.CODE_SID);
                _template = _template.replace(/{NAME}/g, data.CODE_NAME);
                let _appendTemp = $(_template);
                _appendTemp.find('.xbtnx-cate').on('click', function (e) {
                    delCategory(e.currentTarget);
                })

                $('.cateData_Area').append(_appendTemp);
            }).catch((err) => {
                console.log(err);
        });
        });
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
        $(".product_date").click(function (e) {
            var Today = new Date();
            //클릭된 css적용
            $(".product_date").removeClass("active");
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
        $('.xbtnx-cate').on('click', function (e) {
            delCategory(e.currentTarget);
        });
                
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="DATEUI" id="DATEUI" value="<%=DATEUI%>" />
        <input type="text" name="REVIEW_SID_LIST" id="REVIEW_SID_LIST" value="" />
        <input type="text" name="changeType" id="changeType" value="" />
        <input type="text" name="searchBtn_Click_Flag" id="searchBtn_Click_Flag" value="" />
        <input type="text" name="custom_Paging" id="custom_Paging" value="" />
    </div>
    <div id="wrap">
        <div class="sub-warp">
            <%--리뷰조회 타이틀--%>
            <div class="title">
                <span>리뷰 조회</span>
            </div>           
           <%--리뷰조회 조회 조건--%>
            <div class="content">
                <div class="content_wrap">
                    <div class="content_wrap_inner">                     
                        <div class="content_wrap_inner_one">               
                            <%--리뷰작성일--%>
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>리뷰작성일</span>
                                </div>
                                <div class="Date_content">
                                    <%--상품등록일자 일자 및 캘린더--%>   
                                    <div class="product_date_all_list">
                                        <%--상품등록일자 -> 일자--%>
                                            <div class="product_date lowerst-font <%= DATEUI == "today" ? "active" : "" %>"data-value="today">
                                                <span>오늘</span>
                                            </div>
                                            <div class="product_date lowerst-font <%= DATEUI == "7" ? "active" : "" %>"data-value="7">
                                                <span>7일</span>
                                            </div>
                                            <div class="product_date lowerst-font <%= DATEUI == "15" ? "active" : "" %>"data-value="15">
                                                <span>15일</span>
                                            </div>
                                            <div class="product_date lowerst-font <%= DATEUI == "30" ? "active" : "" %>"data-value="30">
                                                <span>1개월</span>
                                            </div>
                                            <div class="product_date lowerst-font <%= DATEUI == "90" ? "active" : "" %>"data-value="90">
                                                <span>3개월</span>
                                            </div>
                                            <div class="product_date lowerst-font <%= DATEUI == "365" ? "active" : "" %>"data-value="365">
                                                <span>1년</span>
                                            </div>
                                        </div>
                                        <%--상품등록일자 -> 캘린더--%>
                                        <div class="date_picker">
                                            <div class="datePicker lower-font" style="width:250px;">
                                                <input type="text" value="" class="datePicker-input lowerst-font important-input" data-title="리뷰 작성일" placeholder="리뷰작성일" name="FROM" data-picker-count="2"/>
                                                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                            </div>
                                            <div class="date_picker_center">
                                                <span>~</span>
                                            </div>
                                            <div class="datePicker lower-font" style="width:250px;">
                                                <input type="text" value="" class="datePicker-input lowerst-font important-input" data-title="리뷰 작성일" placeholder="리뷰작성일" name="TO" data-picker-count="2" />
                                                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <%--리뷰타입--%>
                            <div class="content_wrap_inner_one">
                                <%--리뷰타입--%>
                                 <div class="contentArea padding-bottom">
                                    <div class="contentArea_title lowerst-font">
                                        <span>리뷰타입</span>
                                    </div>
                                    <div class="content_radio">
                                        <div class="radio_all_list">
                                            <%--리뷰타입 라디오 박스 name 값은 REVIEW_TYPE 으로 만들어둠 --%>
                                            <div class="radio_list">
                                                <label class="drkid-radio">
                                                    <input type="radio" name="BEST_FLAG" value="*" <%=BEST_FLAG == "*" || BEST_FLAG == "" ? "checked=\"checked\"" : "" %>  checked="checked"/>
                                                    <span class="lowerst-font">전체</span>
                                                </label>
                                            </div>
                                            <div class="radio_list">
                                                <label class="drkid-radio">
                                                    <input type="radio" name="BEST_FLAG" value="Y" <%=BEST_FLAG == "Y" ? "checked=\"checked\"" : "" %>/>
                                                    <span class="lowerst-font">베스트리뷰</span>
                                                </label>
                                            </div>
                                            <div class="radio_list">
                                                <label class="drkid-radio">
                                                    <input type="radio" name="BEST_FLAG" value="N" <%=BEST_FLAG == "N" ? "checked=\"checked\"" : "" %>/>
                                                    <span class="lowerst-font">일반리뷰</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>      
                            </div> 
                        </div>

                        <div class="content_wrap_inner_one">
                            <%--카테고리--%>
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                </div>
                                <div class="contentArea_Wrap">
                                  <div class="cateData_Area">
                                      <%if (CATEGORY_SID != null)
                                      {%>
                                        <%for (int i = 0; i < CATEGORY_SID.Length; i++)
                                          {%>
                                            <div class="product-category-wraper" data-targetsid="<%=CATEGORY_SID[i]%>">
                                                <div class="lower-font category-name"><%=CATEGORY_NAME_ARRY[i]%></div>
                                                <div class="lowerst-font xbtnx-cate" data-targetdel="<%=CATEGORY_SID[i]%>">
                                                    <span class="material-icons lowerst-font">close</span>
                                                </div>
                                                <input type="hidden" name="CATEGORY_SID" value="<%=CATEGORY_SID[i]%>" />
                                                <input type="hidden" name="CATEGORY_NAME" value="<%=CATEGORY_NAME_ARRY[i]%>" />
                                            </div>
                                        <%}%>
                                    <%}%>
                                   </div>
                                </div> 
                            </div>  
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>카테고리</span>
                                </div>
                                <div class="contentArea_Wrap">
                                   <div class="drkid-btn-sub2 drkid-btn-active catagory_button" data-class-code="PRODUCT_CATEGORY" data-title="카테고리 선택" data-search-target-id="CATEGORY" data-target="COMMON_POPUP_1">
                                        <span class="lowerst-font">카테고리 선택</span>
                                    </div>
                                </div> 
                            </div>                    
                        </div>
                       
                         <%--평점--%>
                        <div class="content_wrap_inner_one">
                            <%--정기배송--%>
                             <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>평점</span>
                                </div>
                                <div class="content_radio">
                                    <div class="radio_all_list">
                                        <%--회원구분 라디오 박스 name 값은 DIVISION_FLAG 으로 만들어둠 --%>
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="PRODUCT_SCORE" value="0" <%=PRODUCT_SCORE == 0 ? "checked=\"checked\"" : "" %> checked="checked"/>
                                                <span class="lowerst-font">전체</span>
                                            </label>
                                        </div>
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="PRODUCT_SCORE" value="1"<%=PRODUCT_SCORE == 1 ? "checked=\"checked\"" : "" %>/>
                                                <span class="lowerst-font">1점</span>
                                            </label>
                                        </div>
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="PRODUCT_SCORE" value="2" <%=PRODUCT_SCORE == 2 ? "checked=\"checked\"" : "" %>/>
                                                <span class="lowerst-font">2점</span>
                                            </label>
                                        </div>
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="PRODUCT_SCORE" value="3" <%=PRODUCT_SCORE == 3 ? "checked=\"checked\"" : "" %>/>
                                                <span class="lowerst-font">3점</span>
                                            </label>
                                        </div>
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="PRODUCT_SCORE" value="4" <%=PRODUCT_SCORE == 4 ? "checked=\"checked\"" : "" %>/>
                                                <span class="lowerst-font">4점</span>
                                            </label>
                                        </div>
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="PRODUCT_SCORE" value="5" <%=PRODUCT_SCORE == 5 ? "checked=\"checked\"" : "" %>/>
                                                <span class="lowerst-font">5점</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>      
                        </div>
                        <%--리뷰타입--%>
                        <div class="content_wrap_inner_one">
                            <div class="contentArea">
                                <div class="contentArea_title lowerst-font">
                                    <span>검색어</span>
                                </div>
                                <div class="contentArea_Wrap">
                                    <div class="radio_all_list">
                                            <%--리뷰타입 라디오 박스 name 값은 REVIEW_TYPE 으로 만들어둠 --%>
                                         
                                            <div class="radio_list">
                                                <label class="drkid-radio">
                                                    <input type="radio" name="SEARCH_TYPE" value="REVIEW_TITLE" <%=SEARCH_TYPE == "" || SEARCH_TYPE == "REVIEW_TITLE" ? "checked=\"checked\"" : "" %>/>
                                                    <span class="lowerst-font">리뷰 제목</span>
                                                </label>
                                            </div>
                                            <div class="radio_list">
                                                <label class="drkid-radio">
                                                    <input type="radio" name="SEARCH_TYPE" value="USER_ID" <%=SEARCH_TYPE == "USER_ID" ? "checked=\"checked\"" : "" %>/>
                                                    <span class="lowerst-font">작성자 아이디</span>
                                                </label>
                                            </div>
                                        </div>
                                    <div class="contentArea_Wrap_inner">
                                        <input class="lowerst-font" type="text" name="REVIEW_TITLE" value="<%=REVIEW_TITLE %>" placeholder="리뷰 제목을 입력해주세요."/>
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
                         <div class="drkid-btn-sub2" id="reset-btns">
                            <span class="lowerst-font">초기화</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--상품목록--%>
        <div class="sub-warp">
            <%--상품목록 타이틀--%>
            <div class="title">
                <div class="titl2">
                    <div class="titl2_wrap title_font">
                        <span>리뷰 목록</span>
                    </div>
                    <div class="titl2_wrap lowerst-font mono_sub_color">
                        <span>전체 <%=totalCount%>개</span>
                    </div>
                </div>
            </div>
            <%--상품목록 컨텐츠--%>
            <div class="content2">
                <div class="content_wrap2">
                    <div class="content_wrap_inner2">
                        <%--상품목록 버튼--%>
                        <div class="content2_button">
                            <div class="content2_button_wrap">
                                <div class="content2_button_wrap_inner">
                                    <div class="front_button">
                                        <%--<div class="drkid-btn-sub">
                                            <span class="lowerst-font">선택 삭제</span>
                                        </div>--%>
                                        <div class="CHOICE_DELETE drkid-btn-sub2">
                                            <span class="lowerst-font">선택 삭제</span>
                                        </div>
                                        <div class="BEST_REVIEW_BTN drkid-btn-sub2 drkid-btn-active" data-type="setBest">
                                            <span class="lowerst-font">베스트 리뷰 선정</span>
                                        </div>
                                        <div class="BEST_REVIEW_DELETE_BTN drkid-btn-sub2" data-type="removalBest">
                                            <span class="lowerst-font">베스트 리뷰 해제</span>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--상품목록 스크롤 컨텐츠--%>
                    <div class="content2_scroll">
                        <div class="table-wraper">
                            <table class="table-common">
                                <colgroup>
                                    <col style="width: 4%;" /> 
                                    <col style="width: 8%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 5%;" />
                                    <col style="width: 5%;" />
                                    <col style="width: 5%;" />
                                    <col style="width: 12%;" />
                                    <col style="width: 12%;" />
                                    <col style="width: 6%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 6%;" />
                                    <col style="width: 10%;" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="lower-font">
                                            <label class="drkid-checkbox">
                                                <input type="checkbox" name="all-select" id="all-select" value="Y" />
                                                <span class="fake-check-box"></span>
                                            </label>
                                        </th>
                                        <th class="lowerst-font">상품코드</th>
                                        <th class="lowerst-font">상품명</th>
                                        <th class="lowerst-font">구매자평점</th>
                                        <th class="lowerst-font">카테고리</th>
                                        <th class="lowerst-font">포토/영상</th>
                                        <th class="lowerst-font">리뷰제목</th>
                                        <th class="lowerst-font">리뷰내용</th>
                                        <th class="lowerst-font">등록자</th>
                                        <th class="lowerst-font">등록일</th>
                                        <th class="lowerst-font">베스트 리뷰</th>
                                        <th class="lowerst-font">상품주문번호</th>
                                    </tr>
                                </thead>
                                <%--데이터들어간 span 밖 div에 span에 영향가는 css들어가 있습니다.
                                     span에 데이터 넣으면 됨--%>
                                <tbody>
                                     <% if (REVIEW_TABLE != null)
                                       { %>
                                        <%for (int i = 0; i < REVIEW_TABLE.Rows.Count; i++)
                                          { %>
                                            <tr>
                                                <%--체크박스--%>
                                                <td class="lowerst-font review_Sid_Area" data-info="<%=REVIEW_TABLE.Rows[i]["REVIEW_SID"]%>">
                                                    <label class="drkid-checkbox">
                                                        <input type="checkbox" name="REVIEW_SID" value="<%=REVIEW_TABLE.Rows[i]["REVIEW_SID"]%>" />
                                                        <span class="fake-check-box"></span>
                                                    </label>
                                                </td>
                                                <%--상품코드--%>
                                                <td class="product_code">
                                                    <div class="product_code_inner lowerst-font">
                                                        <span><%=REVIEW_TABLE.Rows[i]["PRODUCT_CD"]%></span>
                                                    </div>
                                                </td>
                                                <%--상품명--%>
                                                <td class="product_name">
                                                    <div class="product_name_inner lowerst-font" data-info="<%=REVIEW_TABLE.Rows[i]["PRODUCT_NM"]%>">
                                                        <span><%=REVIEW_TABLE.Rows[i]["PRODUCT_NM"]%></span>
                                                    </div>
                                                </td>
                                                <%--구매자평점--%>
                                                <%--별 모양은 이미지로 넣어둠 customer_star_inner에 flex정렬 되어 있음--%>
                                                <td class="customer_star">
                                                    <div class="customer_star_inner lowerst-font" data-info="<%=Convert.ToInt32(REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"]) %>">
                                                        <%for (int j = 0; j < Convert.ToInt32(REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"]); j++)
                                                        {%>
                                                             <div class="star_wrap">
                                                                <img src="/Source/admin/image/star.svg" alt="admin_star" />
                                                            </div>
                                                        <%}%>
                                                    </div>
                                                </td>
                                                <%--카테고리--%>
                                                <td class="category">
                                                    <div class="category_inner lowerst-font" data-info="<%=REVIEW_TABLE.Rows[i]["GROUP_CATEGORY_NAME2"]%>">
                                                        <span><%=REVIEW_TABLE.Rows[i]["GROUP_CATEGORY_NAME"]%></span>
                                                    </div>
                                                </td>
                                                <%--포토/영상--%>
                                                <td class="poto_img">
                                                    <div class="poto_img_inner" data-info="<%=REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"]%>">
                                                        <%if (!string.IsNullOrEmpty(Convert.ToString(REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"])))
                                                          { %>
                                                            <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>'/>
                                                        <%}%> 
                                                        <%else
                                                        {%>
                                                            <img src="/Source/image/no_img.svg" class="no_img"/>
                                                        <%}%>
                                                    </div>
                                                    <div class="allReview_Imgs">
                                                        <input type="hidden" name="ALL_REVIEW_IMAGE" value="<%=REVIEW_TABLE.Rows[i]["ALL_REVIEW_IMAGE"] %>" />
                                                    </div>
                                                </td>
                                                <%--리뷰제목--%>
                                                <td class="review_title">
                                                    <div class="review_title_inner lowerst-font" data-info="<%=REVIEW_TABLE.Rows[i]["REVIEW_TITLE"]%>">
                                                        <span><%=REVIEW_TABLE.Rows[i]["REVIEW_TITLE"]%></span>
                                                    </div>
                                                </td>
                                                <%--리뷰내용--%>
                                                <td class="review_content">
                                                    <div class="review_content_inner lowerst-font" data-info="<%=REVIEW_TABLE.Rows[i]["REVIEW_BODY"]%>">
                                                        <span><%=REVIEW_TABLE.Rows[i]["REVIEW_BODY"]%></span>
                                                    </div>
                                                </td>
                                                <%--등록자--%>
                                                <td>
                                                    <div class="lowerst-font review_UserId_Area" data-info="<%=REVIEW_TABLE.Rows[i]["POST_USER_ID"]%>">
                                                        <span><%=REVIEW_TABLE.Rows[i]["POST_USER_ID"]%></span>
                                                    </div>
                                                </td>
                                                <%--등록일--%>
                                                <td>
                                                    <div class="lowerst-font review_PostTime_Area"data-info="<%=Convert.ToDateTime(REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%>">
                                                        <%--<span>2023.08.08 14:22</span>--%>
                                                        <span><%=Convert.ToDateTime(REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd HH:mm")%></span>
                                                    </div>
                                                </td>
                                                <%--베스트 리뷰--%>
                                                <td>
                                                    <div class="lowerst-font review_BestFlag_Area" data-info="<%=REVIEW_TABLE.Rows[i]["BEST_FLAG"]%>">
                                                        <span><%=REVIEW_TABLE.Rows[i]["BEST_FLAG"]%></span>
                                                    </div>
                                                </td>
                                                <%--상품주문번호--%>
                                                <td class="product_order_number">
                                                    <div class="product_order_number_inner lowerst-font">
                                                        <span><%=REVIEW_TABLE.Rows[i]["PRODUCT_ORDER_SID"]%></span>
                                                    </div>
                                                </td>
                                                <td class="hidden_Review_Field">
                                                    <%--이미지--%>
                                                    <input type="hidden" name="H_ALL_REVIEW_IMAGE" value="<%=REVIEW_TABLE.Rows[i]["ALL_REVIEW_IMAGE"] %>" />
                                                    <input type="hidden" name="H_REVIEW_MAIN_IMAGE" value="<%=REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>" />
                                                    <input type="hidden" name="H_PRODUCT_MAIN_IMAGE" value="<%=REVIEW_TABLE.Rows[i]["PRODUCT_MAIN_IMAGE"] %>" />
                                                    <%--상품--%>
                                                    <input type="hidden" name="H_PRODUCT_NM" value="<%=REVIEW_TABLE.Rows[i]["PRODUCT_NM"] %>" />
                                                    <input type="hidden" name="H_GROUP_CATEGORY_NAME" value="<%=REVIEW_TABLE.Rows[i]["GROUP_CATEGORY_NAME2"] %>" />
                                                    <%--리뷰--%>
                                                    <input type="hidden" name="H_POST_USER_ID" value="<%=REVIEW_TABLE.Rows[i]["POST_USER_ID"] %>" />
                                                    <input type="hidden" name="H_POST_TIME" value="<%=Convert.ToDateTime(REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%>" />
                                                    <input type="hidden" name="H_REVIEW_TITLE" value="<%=REVIEW_TABLE.Rows[i]["REVIEW_TITLE"] %>" />
                                                    <input type="hidden" name="H_REVIEW_BODY" value="<%=REVIEW_TABLE.Rows[i]["REVIEW_BODY"] %>" />
                                                    <input type="hidden" name="H_PRODUCT_SCORE" value="<%=Convert.ToInt32(REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"])%>" />
                                                </td>
                                            </tr>

                                        <%}%>
                                     <%}%>
                                   
                                </tbody>
                            </table>                         
                        </div>         
                         <div class="pageNavigationStr" style="padding: 50px 0px;">
                            <%=pageNavigationStr%>
                        </div>   
                    </div>
                </div>  
                         
            </div>
        </div>
      
    <%--디테일팝업--%>
    <div class="overlay">
        <div class="img_review_wrap_inner">
            <div class="img_review_wrap">
                <div class="img_wrap_clear">
                    <div class="middle-font modal_Title">리뷰 상세보기</div>
                    <div class="modalClose_Btn">
                        <span class="material-icons">clear</span>
                    </div>
                </div>
                <div class="modal_Btn_Area">
                    <div class="modal_Best_Btns_Area">
                        <div class="modal_Best_Btns">
                            <div class="lowerst-font modal_Best_Btn">베스트리뷰선정</div>
                            <div class="lowerst-font modal_BestDel_Btn">베스트리뷰해제</div>
                        </div>
                        <div class="modal_ReviewDel_Btn_Area">
                            <div class="lowerst-font modal_ReviewDel_Btn">리뷰 삭제</div>
                        </div>
                        
                    </div>
                    
                </div>
                <div class="img_wrap_1">
                    <div class="left_img">
                        <%--메인 이미지 영역--%>
                        <div class="img mainImg" id="img_change_content">
                            <img src="/Source/admin/image/best_img.png" />
                        </div>
                        <%--메인 이미지 포함 모든 이미지 영역--%>
                        <div class="img_bottom_img" id="img_change">
                            <div class="img_content">
                                <img src="/Source/admin/image/best_img.png" alt="Alternate Text" />
                            </div>
                            <div class="img_content">
                                <img src="/Source/admin/image/best_img.png" alt="Alternate Text" />
                            </div>
                        </div>
                    </div>
                    <div class="right_wrap">
                        <div class="img rigthTop">
                            <div class="product" id="">
                                <img src="/Source/admin/image/best_img.png" alt="Alternate Text" />
                            </div>
                            <div class="product_img_txt">
                                <span class="modal_ProdCategory">신당케어</span>
                                <span class="modal_ProdNM">비건오메가3 (30일분)</span>
                            </div>
                        </div>
                        <div class="content_star_wrap">
                            <div class="content_star_wrap_left">
                                <div class="content_star">
                                    <div class="star_wrap">
                                        <img src="/Source/admin/image/star.svg" alt="admin_star"/>
                                    </div>
                                    <div class="star_wrap">
                                        <img src="/Source/admin/image/star.svg" alt="admin_star"/>
                                    </div>
                                    <div class="star_wrap">
                                        <img src="/Source/admin/image/star.svg" alt="admin_star"/>
                                    </div>
                                    <div class="star_wrap">
                                        <img src="/Source/admin/image/star.svg" alt="admin_star"/>
                                    </div>
                                    <div class="star_wrap">
                                        <img src="/Source/admin/image/star.svg" alt="admin_star"/>
                                    </div>
                                    
                                </div>
                                <div class="content_star_wrap_txt">
                                    <span class="modal_PostUserId">drkey****님의 리뷰입니다.</span>
                                </div>
                            </div>
                            <div class="content_star_wrap_right">
                                <span class="modal_PostTime">2023-06-01</span>
                            </div>
                        </div>
                        <div class="right_wrap_txt">
                            <div class="right_wrap_txt_first">
                                <span class="lower-font modal_ReviewTitle">3개월분 할인해서 구매했어요 좋아요</span>
                            </div>
                            <div class="right_wrap_txt_second">
                                <span class="modal_ReviewBody">효과가 너무좋아요 맛도 너무좋아요. 너무 만족스러운 제품이에요. 크기가 크지도않아서 먹 기에 딱 좋습니다. 
                                </span>
                                
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
 
</asp:Content>