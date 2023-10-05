<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_MY_REVIEW.aspx.cs" Inherits="drKid.Source.m.my.M_M_MY_REVIEW" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        div,
        div > p {
            line-height: 20px !important;
        }
        .myPage {
           background-color:#FFFFFF;
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
            /*visibility: hidden*/
        }

        .myPageHeader_top {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding: 0 15px 0.5rem;
            border-bottom: 2px solid var(--mono_line);
        }
        .main_Box {
            padding: 1rem 0 0;
        }

        /*나의 리뷰*/
        .my_ReviewArea {
            /*width: 1000px;*/
        }
        .my_Review_Top {
            width: 100%;
            /*border-top: solid 1px black;*/
            /*padding: 20px 0px;*/
        }
        .search_Wrap {
            position: relative;
            width: 100%;
            padding: 0 15px;
        }
        input{
            height: 2rem;
            width: 100%;
            padding: 10px 20px;
        }
        .search_Icon_Wrap {
            position: absolute;
            top: 8px;
            right: 30px;
            color: #828282;
        }
        .total_review_top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 15px;
        }
        .total_review_top_xtx {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            width: 100%;
            padding-bottom: 1rem;
            border-bottom: 1px solid var(--m_mono_color);
        }
        .total_review_top_xtx > .txr:first-child {
            font-weight: 700;
            cursor:pointer;
        }

        .total_review_top_xtx > .txr:nth-child(2),
        .total_review_top_xtx > .txr:last-child {
            color:#BBBBBB;
            cursor:pointer;
        } 

        .total_review_top_content {
            display: flex;
            align-items: center;
            gap: 80px;
        }
        .total_review_top_content_txt {
            font-size: 14px;
        }
        .search_1 {
            display: flex;
            gap: 20px;
            border: 1px solid #BBBBBB;
            color: #BBBBBB;
            padding: 5px 20px 5px 10px;
            border-radius: 7px;
            width: 240px;
            cursor:pointer;
        }
        .total_review_bottom_content {
            display:flex;
            border-bottom: 1px solid var(--m_mono_color);
            cursor:pointer;
            padding: 0.5rem 0;
            gap: 0.5rem;
        }

        .total_review_bottom_content_img_box {
            position:relative;
            display: flex;
            align-items: center;
        }
        .total_review_bottom_content_img_box > .img_box {
            
            width: 4rem;
            height: 4rem;
        }
        .total_review_bottom_content_img_box > .img_box > img {
            width: 100%;
            height: 100%;
            object-fit:cover;
        }
        .star_img {
            width:11px;
            /*display: inherit;*/
        }
        .content_star {
            display:flex;
        }
        /*txt_font*/
        .txt_small_font {
            font-size: 14px;
        }
        .txt_weight {
            font-weight: 600;
        }
        .padding-left {
            padding-left: 20px;
        }
        .img_gap {
            display: flex;
            gap: 20px;
        }
        .review_title {
            font-size:30px;
            text-align: center;
            font-weight:600;
            color:#000000;
            padding-bottom: 40px;
        }

         .review_title_content {
            display:flex;
            align-items:center;
            justify-content:center;
            margin: auto;
            gap: 0.5rem;
            padding-bottom: 1rem;
        }

        .review_title_content > .content {
            /*width:92px;
            height:43px;*/
            text-align:center;
            border: 1px solid #e2e2e2;
            padding: 0.3rem 0.8rem;
        }
        .review_title_content > .content > span {
            /*line-height: 43px;*/
        }

        .first {
            background-color:#115c5e;
            border-color:#115c5e;
            color:white;
            font-weight:400;
        }

        .review_title_content_input {
            width: 100%;
            height: 2rem;
            margin: auto;
            display: flex;
            align-items: center;
            /* justify-content: center; */
            justify-content: space-between;
            border: 1px solid #E2E2E2;
            margin-bottom: 50px;
        }

        .review_title_content_input > input {
            /*border: none;*/
            padding-left: 20px;
            /*color: #cacaca;*/
            height: 100%;
            width: 100%;
        }

        .review_title_content_input > span {
            display: block;
            padding: 0 10px;
            font-size: 30px;
        }
        .button_wrap {
           padding: 0.5rem 15px 1rem;
        }

        .button_wrap > .button_1 {
            width: 100%;
            height: 34px;
            text-align: center;
            border: 1px solid var(--main_color);
            color: #fff;
            background: var(--main_color);
            border-radius: 6px;
            /* cursor: pointer; */
            font-weight: 500;
        }

        .button_wrap > .button_1 > span {
           line-height: 32px;
        }

        /*포토리뷰*/
         .review_product_wrap_inner {
             margin: 0.5rem 0;
            display: grid;
            grid-template-columns: repeat(2,1fr);
            gap: 0.5rem;
        }

        .content {
            border: 1px solid #E1E1E1;
        }

        .content_img {
            overflow: hidden;
            height: 7rem;
        }

        .content_img > img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .content_txt_box {
            padding: 0.3rem 0.2rem;
        }

        .content_txt_box_title {
            max-height: 40px;
            text-overflow: ellipsis;
        }

        .review_search_wrap_inner {
            display: none;
            width:350px;
            padding: 40px 30px;
            background-color:#fff;
            position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
        }

        .title > p {
            text-align: center;
        }

        /*텍스트 리뷰 창*/
        .txt_review_wrap_inner {
            display:none;
            width:550px;
            height:700px;
            background-color: #fff;
            position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);
        }
    
        /*뉴 페이징*/
        .number-button-wrap {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 100px 0 0px;
        }
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .nvnum {
            border-color: #115c5e;
            color:#115c5e;
        }
        #hidden-field {
            display:none;
        }
        .list_HeaderUi {
            color: var(--mono_dea);
            cursor: pointer;
            min-width: 2.5rem;
            text-align: center;
            border-bottom: 2px solid var(--mono_dea);
        }
        .hearder_Active {
            font-weight: 700;
            color: var(--main_color);
            border-color: var(--main_color);
        }
        .best_Flag {
            position: absolute;
            background: var(--main_color);
            border-radius: 6px;
            color: #ffffff;
            /*width: 48px;*/
            text-align: center;
            top: 5px;
            left: 3px;
            padding: 0 0.2rem;
        }
        .active {
            background-color:var(--main_color);
            border-color:#115c5e;
            color:white;
            font-weight:400;
        }
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
        .click_Icon {
            cursor:pointer;
            position: relative;
            right: 10px;
            top: 2px;
        }
        .hidden_Review_Field {
            display:none;
        }
        .right_wrap_txt_second {
            overflow-y: auto;
            height: 400px;
        }
        .mainImg {
            width: 100%;
            height: 370px;
        }
        .no_Reivew_Msg {
            padding: 30px 10px;
            color: #858282;
        }
        .content_star_wrap_txt {
            display: flex;
            gap: 0px 5px;
        }
       .modalClose_Btn {
            cursor:pointer;
        }
        .review_product_content {
            cursor:pointer;
        }
        .modal_Title {
            font-weight:600;
        }

        /*추가*/
        .search-icon:after {
            font-size: 24px;
        }
        #TOTAL_LIST {
            padding: 0 15px;
        }
        .product_rename_Area {
            display: flex;
            align-items: center;
            gap:0.2rem;
        }
        .product_rename_Area > span {
            color: var(--mono_dea);
        }
        .product_contentTxt_Area {
            /*line-height: 1;*/
        }
        .product_contentTxt_Area > span {
            /*display:block;*/
        }
        .product_Txt_Area > div {
            display:inline-block;
        } 
        .content_txt_box_sub_title {

        }

        /*모달*/
        /*이미지 리뷰 결과 창*/
        .img_review_wrap_inner {
            width:100%;
            background-color: #fff;
            /*position:fixed;
            top: 50%;
            left:50%;
            transform: translate(-50%, -50%);*/
        }

        .img_wrap_1 {
            /*display: flex;
            gap: 20px;*/
            padding: 0 15px 30px
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
            padding: 0.5rem 15px;
        }

        .img_wrap_clear > span {
            display: block;
            padding: 10px;
            font-size: 30px;
            cursor:pointer;
        }

        .left_img,
        .right_wrap {
            /*width:50%*/
        }

        .img_bottom_img {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 10px 0 20px;
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
            /*justify-content: center;*/
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
        }
        .content_star_wrap_txt {
            display: flex;
            gap: 0px 5px;
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
    </style>
     <script>
         function modalData_ClearAndSetting(target)
         {

             //*****CLEAR
             $("#img_change_content").empty();//대표이미지 
             $(".product").empty();//우측 상단 대표이미지 
             $("#img_change").empty();//대표 포함 모든 리뷰 이미지
             //*****SETTING
             ///메인 이미지 관련 세팅
             var _mainImg_Path =  $(target).find(".hidden_Review_Field input[name='H_REVIEW_MAIN_IMAGE']").val();
             var _mainImg = `<img src="/Source/DRKID_EDMS/${_mainImg_Path}"/>`;
             var _prodImg;
             var _prodImg_Path =  $(target).find(".hidden_Review_Field input[name='H_PRODUCT_MAIN_IMAGE']").val();
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
             var _all_ReviewImgs = $(target).find(".hidden_Review_Field input[name='H_ALL_REVIEW_IMAGE']").val();
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
             var _H_PRODUCT_NM = $(target).find(".hidden_Review_Field input[name='H_PRODUCT_NM']").val();
             $(".modal_ProdNM").text(_H_PRODUCT_NM);
             var _H_GROUP_CATEGORY_NAME = $(target).find(".hidden_Review_Field input[name='H_GROUP_CATEGORY_NAME']").val();
             $(".modal_ProdCategory").text(_H_GROUP_CATEGORY_NAME);
             //리뷰정보 세팅
             var _H_PRODUCT_SCORE = $(target).find(".hidden_Review_Field input[name='H_PRODUCT_SCORE']").val() * 1;
             var _star = `<div class="star_img">
                             <img src="/Source/client/image/star_icon.svg" alt="star_icon">
                         </div>`;
             $(".modal_ProdScore").empty();
             for(j=0;j<_H_PRODUCT_SCORE;j++)
             {
                 $(".modal_ProdScore").append(_star);
             }
             var _H_POST_USER_ID = $(target).find(".hidden_Review_Field input[name='H_POST_USER_ID']").val();
             $(".modal_PostUserId").text(_H_POST_USER_ID);
             var _H_POST_TIME = $(target).find(".hidden_Review_Field input[name='H_POST_TIME']").val();
             $(".modal_PostTime").text(_H_POST_TIME);
             var _H_REVIEW_TITLE = $(target).find(".hidden_Review_Field input[name='H_REVIEW_TITLE']").val();
             $(".modal_ReviewTitle").text(_H_REVIEW_TITLE);
             var _H_REVIEW_BODY = $(target).find(".hidden_Review_Field input[name='H_REVIEW_BODY']").val();
             $(".modal_ReviewBody").text(_H_REVIEW_BODY);
         }

         //ID 일부분 '*' 로 치환
         function replace_ID(id, start, end) {
             var substr_ToReplace = id.substring(start, end);
             var replacement = '*'.repeat(substr_ToReplace.length);
             return id.replace(substr_ToReplace, replacement);
         }
         $(document).ready(function () {
             //리뷰 작성하기 버튼이벤트 -> 주문/배송조회 페이지(C_MY_ORDERLIST)로 이동
             $("#review_Write_button").on("click", function () {
                 location.href = "/Source/client/" + "my/" + "C_MY_ORDERLIST.aspx";
             });
             //레프트메뉴 클릭 시 해당하는 페이지 이동
             $(".KeyDni_Info,.KeyDni_Info_Clicked,.title_Info_Count_Area").click(function () {
                 var page = $(this).attr("id");
                 if (page != '' && page != null) {
                     var page_type = page.split("_")[1]; //폴더가 CS인지 MY인지 추출
                     location.href = "/Source/client/" + page_type + "/" + page + ".aspx";
                 }
                 else {
                     _popModal.Alert('', '준비중입니다.');
                 }
             });
            
             //리뷰 검색 UI 중 전체보기 클릭 시
             $(".default_content").on('click', function (e) {
                 $("input[name='SEARCH_TYPE']").val("*");
                 //검색
                 $("#searchBtn_Click_Flag").val("Y");
                 $('#flag').val('search');
                 $('#aspnetForm').submit();
             });
             //리뷰 검색 UI 중 BEST 클릭 시
             $(".best_content").on('click', function (e) {
                 $("input[name='SEARCH_TYPE']").val("BEST");
                 //검색
                 $("#searchBtn_Click_Flag").val("Y");
                 $('#flag').val('search');
                 $('#aspnetForm').submit();
             });
             //리뷰 검색 UI 중 일반리뷰 UI를 클릭 시
             $(".common_content").on('click', function (e) {
                 $("input[name='SEARCH_TYPE']").val("COMMON");
                 //검색
                 $("#searchBtn_Click_Flag").val("Y");
                 $('#flag').val('search');
                 $('#aspnetForm').submit();
             });
             //헤더 UI(BEST, 최신순, 별점순 버튼)
             $(".list_HeaderUi").on('click', function (e) {
                 $("input[name='I_ORDER_TYPE']").val($(e.currentTarget).data('value'));
                 //$("#searchBtn_Click_Flag").val("Y");
                 $('#flag').val('search');
                 $('#aspnetForm').submit();
             });
             //리뷰 클릭 시 모달 출력
             $(".total_review_bottom_content,.review_product_content").on('click', function (e) {
                 modalData_ClearAndSetting(this);
                 $('.overlay').show();
             });
             //모달 닫기 버튼
             $(".img_wrap_clear").on('click', function (e) {
                 $('.overlay').hide();
             });
             //돋보기 아이콘 클릭해도 검색
             $(".search_Icon_Wrap").on('click',function(e){
                 $("#searchBtn_Click_Flag").val("Y");
                 $('#flag').val('search');
                 $('#aspnetForm').submit();
             });
             //리뷰 검색인풋에 엔터쳐도 검색
             $("input[name='REVIEW_TITLE']").keydown(function (event) {
                 if (event.keyCode === 13) {
                     $("#searchBtn_Click_Flag").val("Y");
                     $('#flag').val('search');
                     $('#aspnetForm').submit();
                 }
             });
             //
             $("#review_Write_button").click(function () {
                 location.href = "/Source/m/my/M_M_MYPAGE_ORDER.aspx";
             });
             //prevbutton
             $(".prev_button").click(function () {
                 location.href = "/Source/m/my/M_M_MYPAGE.aspx";
             });
             $(".post_UserId").each(function() {
                 var id = $(this).text();
                 var id_Length = $(this).text().length;
                 var cut_Length = Math.floor(id_Length / 5);  
                 $(this).text(replace_ID(id,0,cut_Length));
             });
         });
    </script>
    <%--<script>
        $(document).ready(function () {
            $('.Best_m_menu_wrap_inner > ul > li:first-child').addClass('hover_class');

            let previousClickedLi = $('.Best_m_menu_wrap_inner > ul > li:first-child');

            $('.Best_m_menu_wrap_inner > ul > li').on('click', function () {
                if (previousClickedLi !== null && !$(this).is(previousClickedLi)) {
                    previousClickedLi.removeClass('hover_class').addClass('hover_remove_class');
                }

                $(this).removeClass('hover_remove_class').addClass('hover_class');
                previousClickedLi = $(this);
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $('.reviewProduct_Scroll_Wrap > ul > li:first-child').addClass('productHover_class');

            let previousClickedLi = $('.reviewProduct_Scroll_Wrap > ul > li:first-child');

            $('.reviewProduct_Scroll_Wrap > ul > li').on('click', function () {
                if (previousClickedLi !== null && !$(this).is(previousClickedLi)) {
                    previousClickedLi.removeClass('productHover_class').addClass('productHover_remove_class');
                }

                $(this).removeClass('productHover_remove_class').addClass('productHover_class');
                previousClickedLi = $(this);
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            //전체보기 리뷰 케테고리
            $("#allReviewCategory").click(function () {
                $("#ALLL_CATAGORY_LIST").css("display", "block");
                $("#BEST_CATAGORY_LIST").css("display", "none");
                $("#NORMAL_CATAGORY_LIST").css("display", "none");
            });
            //베스트 리뷰 카테고리
            $("#myBestCategory").click(function () {
                $("#BEST_CATAGORY_LIST").css("display", "block");
                $("#ALLL_CATAGORY_LIST").css("display", "none");
                $("#NORMAL_CATAGORY_LIST").css("display", "none");
            });
            //일반리뷰 카테고리
            $("#normalCategory").click(function () {
                $("#NORMAL_CATAGORY_LIST").css("display", "block");
                $("#BEST_CATAGORY_LIST").css("display", "none");
                $("#ALLL_CATAGORY_LIST").css("display", "none");
            });
            //리뷰 작성하기 클릭시 주문/배송조회 페이지로 넘어감 
            $("#reviewWrite").click(function () {
                location.href = "/Source/m/my/M_M_MYPAGE_ORDER.aspx";
            });
            //prevbutton
            $(".prev_button").click(function () {
                location.href = "/Source/m/my/M_M_MYPAGE.aspx";
            });
        });
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="SEARCH_TYPE" id="SEARCH_TYPE" value="<%=SEARCH_TYPE%>" />
        <input type="text" name="I_ORDER_TYPE" id="I_ORDER_TYPE" value="<%=I_ORDER_TYPE%>" />
        <input type="text" name="searchBtn_Click_Flag" id="searchBtn_Click_Flag" value="" />
    </div>
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
                    <span>나의 리뷰</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>
       <div class="main_Box">
            
            <%--전체 하단 영역--%>
            <div class="all_Bottom_Area">               
               <div class="Bottom_Area">                
                    <%--리뷰 컨텐츠 전체 영역--%>
                    <div class="my_ReviewArea">
                        <%--전체보기,BEST,일반리뷰, 인풋검색UI--%>
                        <div class="my_Review_Top">
                            <div class="review_title_content">
                                <div class="content default_content <%=SEARCH_TYPE == "*" ? "active" : "" %>" data-target="TOTAL_LIST">
                                    <span class="m_middle_font">전체보기</span>
                                </div>
                                <div class="content best_content <%=SEARCH_TYPE == "BEST" ? "active" : "" %>" data-target="BEST_LIST">
                                    <span class="m_middle_font">BEST</span>
                                </div>
                                <div class="content common_content <%=SEARCH_TYPE == "COMMON" ? "active" : "" %>">
                                    <span class="m_middle_font">일반리뷰</span>
                                </div>
                            </div>
                            <div class="search_Wrap">
                                <input type="text" class="drkid-input m_lower_font" id="REVIEW_TITLE" value="" name="REVIEW_TITLE" placeholder="검색어를 입력해주세요." />
                                <div class="search_Icon_Wrap">
                                    <span class="drkid-icon search-icon"></span>
                                </div>
                            </div>
                        </div>
                        <%--리뷰 total, 리뷰 작성하기 버튼--%>
                        <div class="button_wrap">
                            <%--<div id="hover5_text_wrap">
                                <div class="txt_1">
                                    <span>리뷰 <%=totalCount%> 개</span>
                                </div>
                            </div>--%>
                            <div class="button_1 m_middle_font" id="review_Write_button">
                                <span>리뷰 작성하기</span>
                            </div>
                        </div>
                        <%--리뷰 리스트--%>
                        <div class="total_review">
                            <div class="total_review_wrap">
                                <div class="total_review_wrap_inner">
                                    <div class="total_review_top">
                                        <div class="total_review_top_xtx">
                                            <% if (SEARCH_TYPE != "BEST" && SEARCH_TYPE != "COMMON")
                                                {%>
                                            <div class="list_HeaderUi m_middle_font <%=I_ORDER_TYPE == "ORDER_BY_BEST" ? "hearder_Active" : "" %>" data-value="ORDER_BY_BEST">
                                                <span>BEST</span>
                                            </div>
                                            <%}%>
                                            <div class="list_HeaderUi m_middle_font <%=I_ORDER_TYPE == "ORDER_BY_POST_TIME" ? "hearder_Active" : "" %>" data-value="ORDER_BY_POST_TIME">
                                                <span>최신순</span>
                                            </div>
                                            <div class="list_HeaderUi m_middle_font <%=I_ORDER_TYPE == "ORDER_BY_PRODUCT_SCORE" ? "hearder_Active" : "" %>" data-value="ORDER_BY_PRODUCT_SCORE">
                                                <span>별점순</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--전체보기--%>
                            <div id="TOTAL_LIST" class="LIST_CONTENTS">
                                <div class="total_review_bottom_wrap_inner">
                                    <%--ㅈㅎ 일반리뷰--%>
                                    <% if (REVIEW_TABLE != null)
                                        {%>
                                        <% if (REVIEW_TABLE.Rows.Count == 0)
                                            {%>
                                        <div class="lowerst-font no_Reivew_Msg">리뷰 내역이 없습니다.</div>
                                        <%}%>
                                        <%for (int i = 0; i < REVIEW_TABLE.Rows.Count; i++)
                                            { %>

                                            <div class="total_review_bottom_content" data-type="COMMON">
                                                <div class="hidden_Review_Field">
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
                                                </div>
                                                <div class="total_review_bottom_content_img_box">
                                                    <div class="img_box">
                                                        <%if (!string.IsNullOrEmpty(Convert.ToString(REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"])))
                                                            { %>
                                                        <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>' />
                                                        <%}%>
                                                        <%else
                                                            {%>
                                                        <img src="/Source/image/no_img.svg" class="no_img" />
                                                        <%}%>
                                                        
                                                    </div>
                                                    <%if (REVIEW_TABLE.Rows[i]["BEST_FLAG"].ToString() == "Y")
                                                        { %>
                                                        <span class="m_lowerst_font best_Flag">BEST</span>
                                                    <%}%>
                                                </div>
                                                   
                                                <div class="product_Txt_Area">
                                                    <div class="total_review_bottom_content_txt">
                                                        <div class="product_rename_Area">
                                                            <span class="post_UserId m_lowerst_font"><%=REVIEW_TABLE.Rows[i]["POST_USER_ID"]%>님의 리뷰입니다.</span>
                                                            <span class="m_lowerst_font"><%=Convert.ToDateTime(REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%></span>                  
                                                        </div>
                                                        
                                                        <div class="content_star">
                                                            <%for (int j = 0; j < Convert.ToInt32(REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"]); j++)
                                                                {%>
                                                            <div class="star_img">
                                                                <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                            </div>
                                                            <%}%>
                                                        </div>
                                                      <%--  <%if (REVIEW_TABLE.Rows[i]["BEST_FLAG"].ToString() == "Y")
                                                            { %>
                                                        <div class="lowerst-font best_Flag">BEST</div>
                                                        <%}%>--%>

                                                        <div class="product_contentTxt_Area">
                                                            <span class="txt_weight m_lower_font"><%=REVIEW_TABLE.Rows[i]["PRODUCT_NM"]%></span>
                                                        </div>
                                                        <div class="product_contentTxt_Area">
                                                            <span class="m_lowerst_font"><%=REVIEW_TABLE.Rows[i]["REVIEW_TITLE"]%></span>
                                                        </div>                                                    
                                                    </div>                                              
                                                </div>
                                            </div>
                                        </div>
                                    <%}%>
                                <%}%>
                                    <% if (BEST_REVIEW_TABLE != null)
                                        {%>
                                        <div class="total_review_bottom_wrap_inner">
                                            <div class="review_product_wrap_inner">
                                                <% if (BEST_REVIEW_TABLE.Rows.Count == 0)
                                                    {%>
                                                <div class="lowerst-font no_Reivew_Msg">리뷰 내역이 없습니다.</div>
                                                <%}%>
                                                <%for (int i = 0; i < BEST_REVIEW_TABLE.Rows.Count; i++)
                                                    { %>
                                                <%--ㅈㅎ BEST 리뷰--%>
                                                <div class="review_product_content" data-type="BEST_REVIEW">
                                                    <div class="hidden_Review_Field">
                                                        <%--이미지--%>
                                                        <input type="hidden" name="H_ALL_REVIEW_IMAGE" value="<%=BEST_REVIEW_TABLE.Rows[i]["ALL_REVIEW_IMAGE"] %>" />
                                                        <input type="hidden" name="H_REVIEW_MAIN_IMAGE" value="<%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>" />
                                                        <input type="hidden" name="H_PRODUCT_MAIN_IMAGE" value="<%=BEST_REVIEW_TABLE.Rows[i]["PRODUCT_MAIN_IMAGE"] %>" />
                                                        <%--상품--%>
                                                        <input type="hidden" name="H_PRODUCT_NM" value="<%=BEST_REVIEW_TABLE.Rows[i]["PRODUCT_NM"] %>" />
                                                        <input type="hidden" name="H_GROUP_CATEGORY_NAME" value="<%=BEST_REVIEW_TABLE.Rows[i]["GROUP_CATEGORY_NAME2"] %>" />
                                                        <%--리뷰--%>
                                                        <input type="hidden" name="H_POST_USER_ID" value="<%=BEST_REVIEW_TABLE.Rows[i]["POST_USER_ID"] %>" />
                                                        <input type="hidden" name="H_POST_TIME" value="<%=Convert.ToDateTime(BEST_REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%>" />
                                                        <input type="hidden" name="H_REVIEW_TITLE" value="<%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_TITLE"] %>" />
                                                        <input type="hidden" name="H_REVIEW_BODY" value="<%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_BODY"] %>" />
                                                        <input type="hidden" name="H_PRODUCT_SCORE" value="<%=Convert.ToInt32(BEST_REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"])%>" />
                                                    </div>
                                                    <div class="content">
                                                        <div class="content_img">
                                                            <%if (!string.IsNullOrEmpty(Convert.ToString(BEST_REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"])))
                                                                { %>
                                                            <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>' />
                                                            <%}%>
                                                            <%else
                                                                {%>
                                                            <img src="/Source/image/no_img.svg" class="no_img" />
                                                            <%}%>
                                                        </div>
                                                        <div class="content_txt_box">
                                                            <div class="content_star">
                                                                <%for (int j = 0; j < Convert.ToInt32(BEST_REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"]); j++)
                                                                    {%>
                                                                <div class="star_img">
                                                                    <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                </div>
                                                                <%}%>
                                                            </div>
                                                            <div class="content_txt_box_title">
                                                                <span class="m_lower_font"><%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_TITLE"]%>

                                                                </span>
                                                            </div>
                                                            <div class="content_txt_box_sub_title">
                                                                <span class="m_lowerst_font"><%=BEST_REVIEW_TABLE.Rows[i]["POST_USER_ID"]%>님의 리뷰입니다.</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%}%>
                                            </div>
                                        </div>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--페이징--%>
                    <div class="pageNavigationStr" style="padding: 2rem 0px;">
                        <%=pageNavigationStr%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--모달--%>
    <div class="overlay">
        <div class="img_review_wrap_inner">
            <div class="img_review_wrap">
                <div class="img_wrap_clear">
                    <div class="middle-font modal_Title">리뷰 상세보기</div>
                    <div class="modalClose_Btn">
                        <span class="material-icons">clear</span>
                    </div>
                </div>
                <div class="img_wrap_1">
                    <div class="left_img">
                        <%--메인 이미지 영역--%>
                        <div class="img mainImg" id="img_change_content">
                            <img src="/Source/client/image/best_img.png" />
                        </div>
                        <%--메인 이미지 포함 모든 이미지 영역--%>
                        <div class="img_bottom_img" id="img_change">
                            <div class="img_content">
                                <img src="/Source/client/image/best_img.png" alt="Alternate Text" />
                            </div>
                            <div class="img_content">
                                <img src="/Source/client/image/best_img.png" alt="Alternate Text" />
                            </div>
                        </div>
                    </div>
                    <div class="right_wrap">
                        <div class="img rigthTop">
                            <div class="product" id="">
                                <img src="/Source/client/image/best_img.png" alt="Alternate Text" />
                            </div>
                            <div class="product_img_txt">
                                <span class="modal_ProdCategory">신당케어</span>
                                <span class="modal_ProdNM">비건오메가3 (30일분)</span>
                            </div>
                        </div>
                        <div class="content_star_wrap">
                            <div class="content_star_wrap_left">
                                <div class="content_star modal_ProdScore">
                                   <div class="star_img">
                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                    </div>
                                    <div class="star_img">
                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                    </div>
                                    <div class="star_img">
                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                    </div>
                                    <div class="star_img">
                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                    </div>
                                    <div class="star_img">
                                        <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                    </div>
                                    
                                </div>
                                <div class="content_star_wrap_txt">
                                    <div class="modal_PostUserId"></div>
                                    <span>님의 리뷰입니다.</span>
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
