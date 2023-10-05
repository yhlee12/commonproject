<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MEMBER_REVIEW.aspx.cs" Inherits="drKid.Source.client.member.C_MEMBER_REVIEW" %>
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
        #content {
          width: 1300px;
          margin: auto;
        }

        .total_review_top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 40px;
            border-top: 1px solid;
            border-bottom:1px solid;
        }
        .total_review_top_xtx {
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .total_review_top_xtx > .txr:first-child {
            font-weight: 700;
        }

        .total_review_top_xtx > .txr:nth-child(2),
        .total_review_top_xtx > .txr:last-child {
            color:#BBBBBB;
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
            padding: 20px 40px; 
            border-bottom: 1px solid #BBBBBB;
            cursor:pointer;
        }
        .total_review_bottom_content_txt {
            width: 20%;
        }

        .txt {
            color:#BBBBBB;
        }

        .txt_padding {
            padding-top: 20px;
        }
        .total_review_bottom_content_img {
            width: 80%;
        }

        .total_review_bottom_content_img_box {
            display: flex;
            align-items: center;
            padding-right: 20px;
        }
        .total_review_bottom_content_img_box > .img_box {
            width: 88px;
            height: 90px;
        }
        .total_review_bottom_content_img_box > .img_box > img {
            width: 100%;
            height: 100%;
            object-fit:cover;
        }
        .star_img {
            width:15px;
        }
        .content_star {
            display:flex;
        }
        .txt_padding {
            padding-top: 20px;
        }
        /*txt_font*/
        .total_review_bottom_content_img_txt {
            width: 910px;
        }
        .txt_small_font {
            font-size: 14px;
            width: 100%;
            overflow-wrap: break-word;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
            display:flex;
            align-items: center;
            gap: 0px 5px;
            padding: 3px 0px;
            flex-wrap: wrap;
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
            gap: 20px;
            padding-bottom: 20px;
        }

        .review_title_content > .content {
            width:92px;
            height:43px;
            text-align:center;
            border: 1px solid #e2e2e2;
            cursor:pointer;
        }
        .review_title_content > .content > span {
            line-height: 43px;
        }

        .active {
            background-color:var(--main_color);
            border-color:#115c5e;
            color:white;
            font-weight:400;
        }

        .review_title_content_input {
            width: 490px;
            height: 50px;
            margin: auto;
            display: flex;
            align-items: center;
            /* justify-content: center; */
            justify-content: space-between;
            border: 1px solid #E2E2E2;
            margin-bottom: 50px;
        }

        .review_title_content_input > input {
            border: none;
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
            display: flex;
            align-items:center;
            justify-content:space-between;
            padding-bottom: 10px;
        }

        .txt_1 {
            color:#262626;
            font-weight:600;
        }

        .button_wrap > .button_1 {
            width: 126px;
            height:34px;
            text-align: center;
            border: 1px solid #115c5e;
            color:#115c5e;
            border-radius: 5px;
            cursor:pointer;
            font-weight: 500;
        }

        .button_wrap > .button_1 > span {
           line-height: 34px;
        }
        /*포토리뷰*/
         .review_product_wrap_inner {
            display:grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin: 10px 0 30px;
        }

        .content {
            border: 1px solid #E1E1E1;
        }

        .content_img {
            overflow: hidden;
            height: 252px;
        }

        .content_img > img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .content_txt_box {
            padding: 10px;
        }

        .content_txt_box_title {
            padding-top: 3px;
            padding-bottom: 5px;
        }

        .content_txt_box_title > p {
            font-size: 14px;
        }

        .content_txt_box_sub_title > p {
            font-size: 14px;
            color:#E1E1E1;
        }

        #hover6_wrap,
        #hover7_wrap,
        #hover8_wrap,
        #hover9_wrap,
        #hover10_wrap,
        #hover11_wrap {
            display: none;
        }

        #hover6_text_wrap,
        #hover7_text_wrap {
             display: none;
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

        .login_button {
            display: flex;
            align-items: center;
            justify-content: center;
            gap:20px;
            margin-top: 30px;
        }

        .first_button,
        .second_button {
            width: 120px;
            height:50px;
            cursor: pointer;     
            font-size:18px; 
            border: 1px solid #E2E2E2;
            text-align:center;
        }

        .first_button > span,
        .second_button > span{
           line-height: 50px;
        }

        .first_button_color {
            background-color:#115c5e;
            color: white;
            font-weight: 500;
        }

        /*이미지 리뷰 결과 창*/
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
        #hidden-field {
            display:none;
        }
        .list_HeaderUi {
            color: #BBBBBB;
            cursor:pointer;
        }
        .hearder_Active {
            font-weight: 700;
            color:black;
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
            width: 470px;
            height: 470px;
        }
        .no_Reivew_Msg {
            padding: 30px 10px;
            color: #858282;
        }
        .best_Flag {
            background: var(--main_color);
            border-radius: 6px;
            color: #ffffff;
            width: 48px;
            text-align: center;
        }
        .modalClose_Btn {
            cursor:pointer;
        }
        .content:hover {
            background-color: #115c5e;
            border-color: #115c5e;
            color: white;
            font-weight: 400;
        }
        .review_product_content {
             cursor:pointer;
        }
        .post_UserId, .post_UserId_Txt {
            color:#BBBBBB;
        }
        .modal_Title {
            font-weight:600;
        }
    </style>

    <script>
        var $baseUser_ID = `<%=baseUser.userId%>`;
        var $cp_ret_status = `<%=cp_ret_status%>`;

        //ID 일부분 '*' 로 치환
        function replace_ID(id, start, end) {
            var substr_ToReplace = id.substring(start, end);
            var replacement = '*'.repeat(substr_ToReplace.length);
            return id.replace(substr_ToReplace, replacement);
        }
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
            var id = $(".modal_PostUserId").text();
            var id_Length = id.length;
            var cut_Length = Math.floor(id_Length / 2);  
            $(".modal_PostUserId").text(replace_ID(id,0,cut_Length));

            var _H_POST_TIME = $(target).find(".hidden_Review_Field input[name='H_POST_TIME']").val();
            $(".modal_PostTime").text(_H_POST_TIME);
            var _H_REVIEW_TITLE = $(target).find(".hidden_Review_Field input[name='H_REVIEW_TITLE']").val();
            $(".modal_ReviewTitle").text(_H_REVIEW_TITLE);
            var _H_REVIEW_BODY = $(target).find(".hidden_Review_Field input[name='H_REVIEW_BODY']").val();
            $(".modal_ReviewBody").text(_H_REVIEW_BODY);
        }
        

        $(document).ready(function () {
            //리뷰 검색 UI(전체보기,BEST,카테고리명..) css 효과
            $(".content").on('click',function(e){
                //$(".content").removeClass('active');
                //$(e.currentTarget).addClass('active');
            });
            //리뷰 검색 UI 중 전체보기 클릭 시
            $(".default_content").on('click',function(e){
                $("input[name='CATEGORY_NAME']").val("");
                $("input[name='SEARCH_TYPE']").val("*");
                //검색
                $("#searchBtn_Click_Flag").val("Y");
                $('#flag').val('search');
                $('#form1').submit();
            });
            //리뷰 검색 UI 중 상품 카테고리인 UI를 클릭 시
            $(".cate_content").on('click',function(e){
                $("input[name='CATEGORY_NAME']").val($(e.currentTarget).data('value'))
                $("input[name='SEARCH_TYPE']").val("*");
                //검색
                $("#searchBtn_Click_Flag").val("Y");
                $('#flag').val('search');
                $('#form1').submit();
            });
            //리뷰 검색 UI 중 BEST 클릭 시
            $(".best_content").on('click',function(e){
                $("input[name='CATEGORY_NAME']").val("");
                $("input[name='SEARCH_TYPE']").val("BEST");
                //검색
                $("#searchBtn_Click_Flag").val("Y");
                $('#flag').val('search');
                $('#form1').submit();
            });
            //헤더 UI(BEST, 최신순, 별점순 버튼)
            $(".list_HeaderUi").on('click',function(e){
                $("input[name='I_ORDER_TYPE']").val($(e.currentTarget).data('value'));
                //$("#searchBtn_Click_Flag").val("Y");
                $('#flag').val('search');
                $('#form1').submit();
            });
            //리뷰 검색인풋에 엔터쳐도 검색
            $("input[name='REVIEW_TITLE']").keydown(function (event) {
                if (event.keyCode === 13) {
                    $("#searchBtn_Click_Flag").val("Y");
                    $('#flag').val('search');
                    $('#form1').submit();
                }
            });
            //돋보기 아이콘 클릭해도 검색
            $(".click_Icon").on('click',function(e){
                $("#searchBtn_Click_Flag").val("Y");
                $('#flag').val('search');
                $('#form1').submit();
            });
            //리뷰 작성하기 버튼
            $("#review_search_button").on('click',function(){
                if($baseUser_ID != null && $baseUser_ID != "")
                {
                    window.location.href = "/Source/client/MY/C_MY_ORDERLIST.aspx"
                }
                else
                {
                    _popModal.Promt('알림', '로그인 후 이용가능합니다. 로그인 페이지로 이동하시겠습니까?',
                       function () { 
                           window.location.href = "/Source/client/member/login/C_LOGIN_Page.aspx"
                       }, function (error) { _popModal.Alert('알림', error); });
                }
            });
            //리뷰 클릭 시 모달 출력
            $(".total_review_bottom_content,.review_product_content").on('click',function(e){
                modalData_ClearAndSetting(this);
                $('.overlay').show();
            });
            //모달 닫기 버튼
            $(".img_wrap_clear").on('click',function(e){
                $('.overlay').hide();
            });
            $(".post_UserId").each(function() {
                var id = $(this).text();
                var id_Length = $(this).text().length;
                var cut_Length = Math.floor(id_Length / 2);  
                $(this).text(replace_ID(id,0,cut_Length));
            });


        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="SEARCH_TYPE" id="SEARCH_TYPE" value="<%=SEARCH_TYPE%>" />
        <input type="text" name="I_ORDER_TYPE" id="I_ORDER_TYPE" value="<%=I_ORDER_TYPE%>" />
        <input type="text" name="CATEGORY_NAME" id="CATEGORY_NAME" value="<%=CATEGORY_NAME%>"/>
        <input type="text" name="searchBtn_Click_Flag" id="searchBtn_Click_Flag" value="" />
    </div>

    <%--텍스트 리뷰 끝단--%>
    <div id="sub_content">
        <div class="sub_layout">
            <div id="content">
                <div class="review_title">
                    <span>리뷰</span>
                </div>
                <div class="review_title_content">
                    <div class="content default_content <%=SEARCH_TYPE == "*" && (CATEGORY_NAME == null || CATEGORY_NAME == "") ? "active" : "" %>">
                        <span>전체보기</span>
                    </div>
                    <div class="content best_content <%=SEARCH_TYPE == "BEST" ? "active" : "" %>" >
                        <span>BEST</span>
                    </div>
                    <% if (CATE_TABLE != null)
                    {%>
                        <%for (int i = 0; i < CATE_TABLE.Rows.Count; i++)
                        {%>
                             <div class="content cate_content <%= CATEGORY_NAME == CATE_TABLE.Rows[i]["CATEGORY_NAME"].ToString() ? "active" : "" %>"data-value="<%=CATE_TABLE.Rows[i]["CATEGORY_NAME"]%>">
                                <span><%=CATE_TABLE.Rows[i]["CATEGORY_NAME"]%></span>
                            </div>
                        <%}%>
                    <%}%>
                </div>
                <div class="review_title_content_input">
                    <input type="text" name="REVIEW_TITLE" value="<%=REVIEW_TITLE%>" placeholder="리뷰검색" />
                    <div class="click_Icon">
                        <span class="material-icons">search</span>
                    </div>
                </div>
                <div class="button_wrap">
                    <div id="hover5_text_wrap">
                        <div class="txt_1 lower-font">
                            <span>리뷰 <%=totalCount%> 개</span>
                        </div>
                    </div>
                    <div class="button_1" id="review_search_button">
                        <span>리뷰 작성하기</span>
                    </div>
                </div>
                <%--리뷰--%>
                <div class="total_review">
                    <div class="total_review_wrap">
                        <div class="total_review_wrap_inner">
                            <div class="total_review_top">
                                <div class="total_review_top_xtx">
                                     <% if (SEARCH_TYPE != "BEST")
                                       {%>
                                            <div class="list_HeaderUi <%=I_ORDER_TYPE == "ORDER_BY_BEST" ? "hearder_Active" : "" %>" data-value="ORDER_BY_BEST">
                                                <span>BEST</span>
                                            </div>
                                     <%}%>
                                    <div class="list_HeaderUi <%=I_ORDER_TYPE == "ORDER_BY_POST_TIME" ? "hearder_Active" : "" %>" data-value="ORDER_BY_POST_TIME">
                                        <span>최신순</span>
                                    </div>
                                    <div class="list_HeaderUi <%=I_ORDER_TYPE == "ORDER_BY_PRODUCT_SCORE" ? "hearder_Active" : "" %>" data-value="ORDER_BY_PRODUCT_SCORE">
                                        <span>별점순</span>
                                    </div>
                                </div>
                            </div>
                            <div class="total_review_bottom">
                                <div class="total_review_bottom_wrap">
                                    <%--전체보기--%>
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
                                                                <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>'/>
                                                            <%}%> 
                                                            <%else
                                                            {%>
                                                                <img src="/Source/image/no_img.svg" class="no_img"/>
                                                            <%}%>
                                                           
                                                        </div>
                                                    </div>

                                                    <div class="total_review_bottom_content_txt">
                                                        <div class="content_star">
                                                             <%for (int j = 0; j < Convert.ToInt32(REVIEW_TABLE.Rows[i]["PRODUCT_SCORE"]); j++)
                                                            {%>
                                                                <div class="star_img">
                                                                    <img src="/Source/client/image/star_icon.svg" alt="star_icon" />
                                                                </div>
                                                            <%}%>
                                                        </div>
                                                        <%if (REVIEW_TABLE.Rows[i]["BEST_FLAG"].ToString() == "Y")
                                                            { %>
                                                                 <div class="lowerst-font best_Flag">BEST</div>
                                                        <%}%> 
                                                       
                                                        <div class="txt txt_small_font">
                                                            <span class="post_UserId lowerst-font"><%=REVIEW_TABLE.Rows[i]["POST_USER_ID"]%></span>
                                                            <div class="post_UserId_Txt lowerst-font">님의 리뷰입니다.</div>
                                                        </div>
                                                        <div class="txt txt_small_font">
                                                            <span><%=Convert.ToDateTime(REVIEW_TABLE.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%></span>
                                                        </div>
                                                    </div>
                                                    <div class="total_review_bottom_content_img img_gap">

                                                        <div class="total_review_bottom_content_img_txt">
                                                            <div class="total_review_bottom_content_img_txt">
                                                                <p class="txt_weight">
                                                                    <%=REVIEW_TABLE.Rows[i]["PRODUCT_NM"]%>
                                                                </p>
                                                            </div>
                                                            <div class="total_review_bottom_content_img_txt txt_padding">
                                                                <p class="txt_small_font">
                                                                    <%=REVIEW_TABLE.Rows[i]["REVIEW_TITLE"]%>
                                                                </p>
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
                                                                        <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_MAIN_IMAGE"] %>'/>
                                                                    <%}%> 
                                                                    <%else
                                                                    {%>
                                                                        <img src="/Source/image/no_img.svg" class="no_img"/>
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
                                                                        <p>
                                                                            <%=BEST_REVIEW_TABLE.Rows[i]["REVIEW_TITLE"]%>
                                                                        </p>
                                                                    </div>
                                                                    <div class="content_txt_box_sub_title">
                                                                        <p>
                                                                           <%=BEST_REVIEW_TABLE.Rows[i]["POST_USER_ID"]%>님의 리뷰입니다.
                                                                        </p>
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
                    </div>
                </div>
            </div>

            <%--페이징--%>
            <div class="pageNavigationStr" style="padding: 100px 0px;">
                <%=pageNavigationStr%>
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
