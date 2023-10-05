﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_COMMUNITY_DETAIL_PAGE.aspx.cs" Inherits="drKid.Source.client.community.C_COMMUNITY_DETAIL_PAGE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /*페이징관련*/
        textarea{
            resize:none;
           
        }

         #sub_content {
            padding: 7rem 0;
            position: relative;
            z-index: 1;
        }
        .sub_layout {
            /*width: 95rem;*/
            max-width: 100%;
            margin: 0 auto;
            position: relative;
            height: 100%;
        }
        .main_Box {
            padding: 0px 20px;
            max-width: 1340px;
            margin: 0 auto;
        }
        .Title_Area {
            text-align:center;
            padding: 0px 0px 40px 0px;
        }
        .main_Title_Txt {
            font-weight:500;
            padding: 15px 0px;
            font-size:30px;
        }
        .sub_Title_Txt {
            color:#9F9F9F;
        }
        .show_All_Community_Area {
            display: flex;
            justify-content: flex-end;
             padding: 0px 0px 15px 0px;
        }
        .show_All_Community_Btn {
            color:#9F9F9F;
            width: 160px;
            padding: 4px 0px;
            border: 1px solid #9F9F9F;
            text-align: center;
            cursor:pointer;
        }
        .detail_Info_Title_Area {
            padding: 13px;
            border-top: 1px solid #4E4E4E;
            border-bottom: 1px solid #E1E1E1;
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        .Community_Flag_Area {
            text-align: center;
            width: 5%;
        }
        .detail_Info_Title {
            width:65%;
            display:flex;
            align-items:center;
            justify-content:flex-start;
            font-weight: 500;
            gap: 5px;
        }
        .detail_Info_Txt {
            width: 10%;
            text-align:center;
            font-weight: 400;
        }
        .detail_Info_Img_Txt_Area {
            width:1300px;
            min-height:400px;
            background:#D8D8D8;
        }
        img.image_for_class {
            width: fit-content;
            height: fit-content;
            max-width: 100%;
        }
        .thumb {
            display: flex;
            padding: 40px 0;
            align-items: center;
            justify-content: center;
        }
        .thumb_wrap {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 130px;
            height: 130px;
            border: 4px solid var(--main_color);
            border-radius: 50%;
            cursor: pointer;
        }
        .thumn_icon > span {
            font-size: 48px;
            color: var(--main_color);
        }
        .thumb_txt {
            font-weight: 500;
        }
        .thumb_count {
            font-size: 24px;
            margin-left: 20px;
            font-weight: 500;
        }
        .Community_write_Top {
            padding: 10px 0 10px 10px;
            border-top: 1px solid;
            border-bottom: 1px solid;
        }
        .Community_write_Area {
            display: flex;
            /* align-items: center; */
            padding: 20px 10px;
            background: #F9F9F9;
            gap: 10px;
        }
        .Community_write_Area_title {
            width: 5%;
            font-weight: 400;
        }
        .Community_write_Area_name {
            width: 10%;
            height: 25px;
        }
        .Community_write_Area_name > input {
            width: 100%;
            height: 100%;
            color: var(--main_color);
        }
        .Community_write_Area_name > input::placeholder  {
            font-weight:500;
            color: var(--main_color);
        }
        .Community_write_Area_txt_content {
            width: 75%;
            min-height: 90px;
        }
        .Community_write_Area_txt_content > textarea {
            width: 100%;
            min-height: 100%;
            border: 1px solid var(--mono_line);
            padding: 0 5px;
            box-sizing: border-box;
        }
        
        .Community_write_Area_txt_Btn {
            background: #7F93A3;
            color: #fff;
            width: 10%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }
        /*댓글 달리는 부분*/
        .ALL_list {
            padding-top: 20px;
        }
        .ALL_list_Wrap_Top {
            padding: 0 0 10px 10px;
            border-bottom: 1px solid;
        }
        .ALL_list_Wrap_Top > span:first-child {
            font-size: 24px;
            font-weight: 500;
        }
        .ALL_list_Wrap_Top > span:last-child {
            font-weight: 400;
        }
        /*댓글*/
        .font-weight500 {
            font-weight: 500;
        }
        .comment_content {
            padding: 20px 10px;
            border-bottom: 1px solid var(--mono_line);
            background-color:white;
        }
        .Community_All_write_Area {
            background: #F9F9F9;
        }
        .comment_top_wrap{
            display: flex;
            justify-content: space-between;
        }
        .comment_top {
            display: flex;
            gap: 10px;
        }
        .comment_top > div:first-child {
            font-weight: 500;
        }
        .comment_review {
            padding: 10px 0;
        }
        .comment_review_count {
            display: flex;
            gap: 20px;
        }
        .comment_count_wrap {
            display: flex;
            gap: 5px;
        }
        .top_padding {
            padding: 0 0 10px 45px !important;
        }
        .comment_width {
            width:86% !important;
        }
        .regist_comment_wrap {
            padding: 30px 20px 0px;
        }
        .regist_comment_wrap_content {
            display: flex;
            gap: 20px;
        }
        /*강승우 추천 CSS 수정*/
        .recommend_wrap_toggle{
            background-color : var(--main_color);
        }
        .recommend_toggle{
            color : white !important;
        }
        #hidden-field {
            display:none;
        }
        .hide-field {
            display:none;
            transition: all 0.5s ease;
        }
        .delete_btn{
            border: 1px solid #E2E2E2;
            color: #FFFFFF;
            background-color: var(--main_color);
            cursor: pointer;
            padding: 5px 10px;
        }

         .board_delete_btn{
            border: 1px solid #E2E2E2;
            color: #FFFFFF;
            background-color: var(--main_color);
            cursor: pointer;
            padding: 5px 10px;

        }
        .board_modify_btn{
            border: 1px solid #E2E2E2;
            color: var(--mono_main);
            cursor: pointer;
            padding: 5px 10px;
            margin-bottom:5px;
        }
         .count_review_Btn {
             cursor:pointer;
         }
         .comment_foot{
             display: flex;
             justify-content:space-between;
         }
        .comment_foot_location{
            width:30%;
            padding: 40px 0;
        }
        .comment_foot_btn_wrap{
            margin: auto 0 0 auto;
            text-align : center;
            width : 268px;
        }

        .profile {
            display: none;
        }

        /*프로필*/
        .t2l-alert-inner-wraper {
            overflow-y: scroll;
            padding: 20px;
            max-width: 800px;
            max-height: 1000px;
        }
        .profile_close_button {
            text-align: center;
            display: flex;
            justify-content: center;
            cursor:pointer;
        }

        .profile_close_button > span {
            font-weight: 700;
        }
        .myPage_txt {
            font-weight: bold;
        }

        .myPage_product_icon {
            text-align: center;
            display: flex;
            justify-content: center;
            visibility: hidden
        }

        .myPageHeader_top {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding: 0 0 0.5rem 0;
        }
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
        }

        .myPageHeader_center_wrap {
            padding: 10px 0;
        }

        .myPageHeader_center_wrap_inner {
            padding: 0 15px;
            border: 1px solid #CCCCCC;
            border-radius:6px;
        }

        .myPageHeader_center_top {
            display:flex;
            align-items:center;
            gap :0.6rem;
            padding:10px 0;  
        }

        .myPageHeader_center_top > .profill_img {
            width:5rem;
            height:5rem;
            border-radius: 50%;
            background-color:#f9f9f9;
        }
         .center_bottom_txt > span:first-child {
            /*display:block;
            text-align: center;*/
            font-weight : 400;
        }
        .center_bottom_txt > span:last-child {
            /*display:block;
            text-align: center;*/
            font-weight : bold;
        }
        /*.center_bottom_txt > span:first-child {
            font-weight:600;
        }

        .center_bottom_txt > span:last-child {
            font-weight:400;
        }*/
        .myPageHeader_center_bottom{
            display: flex;
            justify-content: center;
            gap: 20px;
            padding-top: 5px;
        }
        /*.center_bottom_txt{
            display : flex;
            padding : 1rem 0;
        }*/
        .center_bottom_txt > div {
            display : flex;
        }
        .font-weight600 {
            font-weight: 600;
        }
        /*셀러브리티*/
        .Client_Type_info3{
            border: 1px solid #115C5E;
            background-color: #115C5E;
            border-radius: 0.3rem;
            width: fit-content;
            padding: 0 0.5rem;
            color: white;
        }
        .User_Info_wrep{
            gap: 0.3rem;
            display:flex;
            align-items: center;
        }
        .Choice_menu_wrep{
            width : 100%;
            display : flex;
            border-top: 1px solid var(--mono_line);
        }
        .Choice_menu_wrep > div {
            text-align:center;
        }
        .Post_Menu{
            position: relative;
            top: -1.5px;
            min-width:100px;
            justify-content: center;
            align-items: center;
            color: var(--main_color);
            border-top: 2px solid var(--main_color);
            font-weight: 600;
            text-align: center;
        }
        .Post_Menu_container{
            /*margin: 0 0.75rem;*/
        }
        .Communication_Menu{
            position: relative;
            top: -1.5px;
            min-width:100px;
            justify-content: center;
            align-items: center;
            color: var(--main_color);
            border-top: 3px solid var(--main_color);
            font-weight: 600;
            
        }
        .empty_space_for_PostMenu{
            height: 1rem;
            border-bottom: 1px solid #D8D8D8;
        }
        .My_Post_Container_Top_Wrep{
            display: flex;
            justify-content: space-between;
        }
        .Table_Top_right{
            display : flex;
        }
        .Table_Top_Left{
            width : 85%;
            display: flex;
            gap: 0.2rem;
        }
        .Commu_post_Title{
            max-width : 70%;
            width : auto;
            white-space: nowrap; /* 텍스트 줄 바꿈 방지 */
            overflow: hidden; /* 넘치는 부분을 숨김 */
            text-overflow: ellipsis; /* 넘치는 텍스트를 ...으로 표시 */
        }
        .Commu_guide_chat{
            color : #FF441D;
        }
        .Post_Commu_Recomand{
            color : #115C5E
        }
        .Thumb_up{
            font-size : 0.6rem;
            color : #115C5E;
        }
       .Post_Menu_Commu_Thumb{
            line-height : 1.4rem;
        }
       .My_Post_Wrep{
            border-bottom: 1px solid #D8D8D8;
            padding: 0.3rem 0;
       }
       .My_Post_More_Post{
            text-align: center;
            border: 1px solid #D8D8D8;
            margin-top: 1rem;
            border-radius: 2rem;
            width: 100%;
       }
       .My_Post_More_Post > div {
            padding: 5px 0;
       }
       .My_Post_More_Post_BTN, .Communication_More_BTN{
            display: flex;
            justify-content: center;
            padding: 5px 0;
       }
       .My_Page_Close_BTN_Wrep{
           width : 100%;
           margin-top: 2rem;
           justify-content: center;
           display: flex;
       }
       .My_Page_Close_BTN{
            width: 6rem;
            height: 1.5rem;
            border: 1px solid #D8D8D8;
            display: flex;
            justify-content: center;
            align-items: center;
       }
       .Communication_Title_Space{
           padding : 0.5rem 0.75rem;
           color : #BBBBBB;
       }
       .Communication_Menu_container{
           display : none;
       }
       .Communication_Writing_Comment_Wrep{
           background-color :#F5F5F5;
       }
       .Communication_Writing_Container{
           padding: 0.5rem 0.75rem;
       }
       .Community_write_Area_txt_content {
           width : 100%;
           height : 4rem;
           margin-bottom: 0.6rem;
        }
       .Community_write_Area_txt_content > textarea {
            width: 100%;
            min-height: 100%;
            border: 1px solid var(--mono_line);
            padding: 0 5px;
            box-sizing: border-box;
        }
       .Commu_write_Wrep{
            display: flex;
            justify-content: end;
       }
       .Community_write_Area_txt_Btn {
            background: #7F93A3;
            color: #fff;
            width: 5rem;
            height: 1.7rem;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
        }
       /*소통해요 커뮤니케이션*/
       .Communication_Area_Reply_Wrep{
           /*height : 4rem;*/
           margin : 0.5rem 0.75rem;
           display: flex;
           align-items: center;
           gap: 0.5rem;
       }
       .Reply_Icon_Area{
           width : 15%;
           height : 100%
       }
       #Reply_User_Id{
           font-weight : bold;
           margin-right : 0.4rem;
       }
       #Reply_Date{
           color : #9F9F9F;
       }
       .Reply_User_Comment{
           width: 90%;
       }
       .Commu_Reply_Border{
           border-bottom: 1px solid #E1E1E1;
       }
       .Celleb_Shop_content_Title{
           font-weight : bold;
           border-bottom: 1px solid #E1E1E1;
           margin: 10px 0;
           padding: 10px 0;
       }
       .My_CellebShop_More_Item{
            text-align: center;
            border: 1px solid #D8D8D8;
            border-radius: 2rem;
            width: 100%;
       }
       .More_Celleb_Item_container{
            display: flex;
            margin: 20px 0;
       }
       .best_content_wrap_inner {
           grid-template-columns: repeat(2, 1fr);
           column-gap: 10px
       }
       .m_best {
           display:flex;
       }
       .best_img {
           width: 30%;
       }
       .best_txt {
           width: 70%;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            padding: 0 10px;
            /*gap: 2px;*/
       }
       .main_title  {
           color: #9f9f9f;
       }
       .sub_title  {
           font-weight: 600;
       }
       .price_wrap {
           display: flex;
           align-items: center;
           gap: 10px;
       }
       .second_price {
           font-weight: 600;
       }
       .original_price {
           text-decoration: line-through;
           color: #9f9f9f;
       }
       .dis_per {
           font-weight: 600;
       }
       .bottom {
           display: flex;
           gap: 5px;
       }
       .bottom_txt {
           line-height:none;
           border: 1px solid var(--mono_line);
            border-radius: 5px;
            padding: 0 2px;
       }

       .hd_List_Column_Area {
            display: flex;
            padding: 15px 0px;
            background: #F9F9F9;
            text-align: center;
            width:100%;
            border-top: 1px solid #262626;
            border-bottom: 1px solid #262626;
            gap: 10px;
            margin-top: 20px;
        }
        .hd_List_Column_1_Area {
            width:10%;
            /*width: 179.69px;*/
        }
        .hd_List_Column_2_Area {
            width:60%;
            text-align: start;
            /*width: 484.64px;*/
        }
        .hd_List_Column_3_Area {
            width:10%;
            /*width: 146.68px;*/
        }
        .hd_List_Column_4_Area {
            width:10%;
            /*width: 99.8px;*/
        }
        .hd_List_Column_5_Area {
            width:10%;
            /*width: 99.8px;*/
        }
        .hd_List_Row_Area {
            width: 100%;
        }
        .hd_List_Row {
            display: flex;
            padding: 20px 0px;
            align-items: center;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
            cursor:pointer;
            gap: 10px;
        }

        .hd_List_Row_1_Area {
            width:10%;
            /*cursor:pointer;*/
            /*width: 179.69px;*/
        }
        /*.new_Order_List_Row_2_Area_Wrap {
            display: grid;
            gap: 5px 0px;
        }*/
        .hd_List_Row_2_Area{
            width:60%;
            text-align:start;
            display: flex;
            gap: 5px
        }
        .hd_List_Row_3_Area {
            width:10%;
        }
        .hd_List_Row_4_Area {
            width:10%;
            /*width: 92px;*/
        }
        .hd_List_Row_5_Area {
            width:10%;
            /*width: 92px;*/
        }
        .hd_List_Row_1 {
            color:#828282;
            /*cursor:pointer;*/
        }
        .hd_List_Row_1_1 {
            font-weight: 400;
            cursor:pointer;
        }

        .hd_List_Row_2_1 {
             text-align: start;
         }
         .hd_List_Row_3 {
            font-weight: 400;
         }
         .hd_List_Row_4 {
             font-weight: 400;
             color: var(--mono_dea);
         }
         .post_user_name {
             cursor: pointer;
         }
    </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
         <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>

    <script>
        $(document).ready(function () {
            // 게시물 토글 
            $(".Ch_menu_Post_Click").click(function () {
                // Post Menu를 클릭한 경우
                $(this).toggleClass("Post_Menu Communication_Menu");
                $(".Communication_menu_Click").toggleClass("Communication_Menu Post_Menu");
                $(".Post_Menu_container").css("display", "block");
                $(".Communication_Menu_container").css("display", "none");
            });

            $(".Communication_menu_Click").click(function () {
                // Communication Menu를 클릭한 경우
                $(this).toggleClass("Communication_Menu Post_Menu");
                $(".Ch_menu_Post_Click").toggleClass("Post_Menu Communication_Menu");
                $(".Post_Menu_container").css("display", "none");
                $(".Communication_Menu_container").css("display", "block");
            });
            // 게시물 토글 종료
            //화살표 클릭
            $(".prev_button, #remove_button").click(function () {
                location.href = "/Source/m/community/M_COMMUNITY_PAGE.aspx";
            });
        });
    </script>
    <script>

        var $usersid    =   '<%=baseUser.userSid%>';
        var $userid     =   '<%=baseUser.userId%>';
        var $userName   =   '<%=baseUser.userName%>';
        var $del_flag   =   '<%=del_flag%>';
        var $board_sid  =   '<%=BOARD_SID%>';
        $(function () {
            //정상 삭제 되었다면 리스트페이지로 이동
            if ($del_flag == "Y") {
                location.href = "/Source/client/community/C_COMMUNITY_PAGE.aspx";
            }
            console.log($usersid);
            // 작성자 id 3번째 자리 이후부터 *로 표시
            $(".user_id").each(function () {
                var text = $(this).text();
                if (text.length > 3) {
                    var shortenedText = text.substring(0, 3) + '*'.repeat(text.length - 3);
                    $(this).text(shortenedText);
                }
            });
            //대댓글 더보기 클릭시 icon 변경
            $(".count_review_Btn ").on('click', function (e) {
                var element = $(e.currentTarget).parents('.comment_content_wrap').find('.comment_reply_wrap')
                element.toggleClass('hide-field')
                var icon = $(e.currentTarget).find('.material-icons')
                if (icon.text() === "arrow_drop_up") {
                    icon.text("arrow_drop_down");
                } else {
                    icon.text("arrow_drop_up");
                }
            });
            //유저의 추천유무가 참일시 추천이미지 변경
            if ($("#RECOMMEND_STATUS").val() > 0) {
                $(".thumb_wrap").addClass('recommend_wrap_toggle');
                $(".thumn_icon > span ").addClass('recommend_toggle');
                $(".thumb_txt ").addClass('recommend_toggle');
            }
        });

        $(document).ready(function () {
            //  댓글,대댓글 저장
            $(".Community_write_Area_txt_Btn").on('click', function (e) {
                var comment_title = $(e.currentTarget).parents('.Community_write_Area').find('textarea[name="input_comment_content"]').val();
                var parent_sid = $(e.currentTarget).data("parentsid");
                console.log("findTxt", comment_title)
                if ($usersid == "" || $usersid == null || $usersid == undefined) {
                    _popModal.Alert('알림', '로그인 후에 시도해주세요');
                } else {
                  

                    if (comment_title.trim().length > 0) {
                        $('input[name="write_Comment_Body"]').val(comment_title);
                        $('input[name="PARENT_SID"]').val(parent_sid);

                        $('#flag').val('save');
                        $('#form1').submit();
                    }
                    else {
                        _popModal.Alert('알림', '댓글을 입력해주세요');
                    }
                }
            });

            //  댓글,대댓글 삭제
            $(".delete_btn ").on('click', function (e) {
                var comment_sid = $(e.currentTarget).data("commentsid");
                $('input[name="COMMENT_SID"]').val(comment_sid);
                console.log("comment_sid", $('input[name="COMMENT_SID"]').val());
                    $('#flag').val('delete');
                    $('#form1').submit();
            });
            //  게시글 삭제
            $(".board_delete_btn").on('click', function (e) {
                _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                  function () {
                      $('#flag').val('delete_board');
                      $('#form1').submit();
                  }, function (error) { _popModal.Alert('', error); });


                
                //_popModal.Alert('알림', '게시글이 삭제되었습니다.');
               
                //location.href = "/Source/client/community/C_COMMUNITY_PAGE.aspx";
            });
            
            $(".board_modify_btn").on('click', function (e) {
                var sid = $(e.currentTarget).data("boardsid");
                console.log("sid:", sid);
                if (sid != '' && sid != null) {
                    location.href = "/Source/client/community/C_COMMUNITY_WRITE_PAGE.aspx?BOARD_SID=" + sid+"&request_flag="+"Y";
                }

            });
            //  댓글,대댓글 삭제
            $(".delete_btn ").on('click', function (e) {
                var comment_sid = $(e.currentTarget).data("commentsid");
                $('input[name="COMMENT_SID"]').val(comment_sid);
                console.log("comment_sid", $('input[name="COMMENT_SID"]').val());
                $('#flag').val('delete');
                $('#form1').submit();
            });
          
            //커뮤니티목록보기
            $(".comment_user_id").val($userName);
            $(".show_All_Community_Btn").click(function () {
                location.href = "/Source/client/community/C_COMMUNITY_PAGE.aspx";
            });
            //게시판 추천 클릭시 저장 이벤트
            $(".thumb_wrap").on('click', function (e) {
                console.log("클릭")
                console.log("$usersid", $usersid)
                console.log("$usersid type", typeof ($usersid))
                if ($usersid == "0" || $usersid == null || $usersid == undefined) {
                    _popModal.Alert('알림', '로그인 후에 시도해주세요');
                    //DB단에서 cp_ret_message 가져올것
                }
                else if ($usersid.trim().length > 1) {
                    $.ajax({
                        type: "POST",
                        dataType: "html",
                        url: "/Source/client/member/ajax/C_COMMUNITY_RECOMMEND.aspx",
                        data: {
                            BOARD_SID:  $board_sid,
                            USER_SID:   $usersid,
                            USER_ID:    $userid

                        },
                        success: function (html) {
                            let recommend_status = $(html).find('#STATUS').val();
                            let recommend_count = $(html).find('#RECOMMEND_COUNT').val();

                            $(".thumb_wrap").toggleClass('recommend_wrap_toggle');
                            $(".thumn_icon > span ").toggleClass('recommend_toggle');
                            $(".thumb_txt ").toggleClass('recommend_toggle');
                            $(".thumb_count ").text(recommend_count);
                            $(".TITME_REOMMEND_COUNT ").text(recommend_count);

                        },
                        error: function (jqxhr, status, error) {
                            console.log(jqxhr.statusText + ",  " + status + ",   " + error);
                            console.log(jqxhr.status);
                            console.log(jqxhr.responseText);
                        }
                    });

                }


            });
            // 아이디 클릭시 프로필 
            $(".post_user_name").click(function () {
                $(".profile").css("display", "block");
            });
            $(".profile_close_button, .My_Page_Close_BTN").click(function () {
                $(".profile").css("display", "none");
            });

        });
        
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <input type="text" name="write_Comment_Body" value="" />
        <input type="text" name="PARENT_SID" value="" />
        <input type="text" name="COMMENT_SID" value="" />
        <input type="text" name="RECOMMEND_STATUS" id="RECOMMEND_STATUS"  value="<%=RECOMMEND_STATUS%>" />
    </div>

    <div class="t2l-alert-modal-wraper profile">
        <div class="t2l-bg-background"></div>
        <div class="t2l-alert-inner-wraper inner-center">
            <div class="myPage">
                <div class="myPageHeader">
                     <div class="myPageHeader_top">
                         <div class="myPage_txt">
                            <span>KeyDni MINIHOME</span>
                        </div>                        
                        <div class="profile_close_button">
                            <span class="material-icons">close</span>
                        </div>
                    </div>
                 </div>
                <%--마이페이지 헤더 cneter--%>
                <div class="myPageHeader_center">
                    <div class="myPageHeader_center_wrap">
                       <div class="myPageHeader_center_wrap_inner">
                           <%--마이페이지 헤더 cneter top--%>
                          
                           <%-- 셀러브리티 인풀러언서 --%>
                           <div class="myPageHeader_center_top">
                            <div class="profill_img">
                                <img src="/Source/m/image/mypageSmile_icon.svg" alt="smile_img" />
                            </div>
                            <div class="myPageHeader_center_top_txt">
                                <div class="top_txt">
                                    <div class="User_Info_wrep">
                                        <span class="middle-font main_color font-weight600">DrKeyDni</span>
                                        <span class="lowerst-font">님</span>
                                    </div>
                                    <div class="User_Info_wrep m_lowerst_font">
                                    <div class="Client_Type_info3">
                                        <span class="lowerst-font">셀러브리티</span>
                                    </div>
                                        <span class="material-icons main_color">verified</span>
                                    </div>
                                    <div class="myPageHeader_center_bottom">
                                    <div class="center_bottom_txt">
                                        <span>직팔로워</span>
                                        <span>12</span>
                                    </div>
                                    <div class="center_bottom_txt">
                                        <span>연계팔로워</span>
                                        <span>52</span>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                <%-- 셀럽 상품. --%>
                <div class="Celleb_Shop_content">
                    <div class="Celleb_Shop_content_Title">
                        <span class="m_ma_font main_color">닥터키드니</span>
                        <span class="m_middle_font">님 셀럽#</span>
                    </div>
                    <div class="best_content_wrap">
                        <div>
                            <%-- 상품 목록 --%>
                            <div class="best_content_wrap_inner margin_bottom">
                                <%--셀럽 상품 content--%>
                                <div class="m_best">
                                    <div class="best_img">
                                        <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                    </div>
                                    <div class="best_txt">
                                        <div class="main_title lowerst-font">
                                            <span>신당케어</span>
                                        </div>
                                        <div class="sub_title middle-font">
                                            <span>비건오메가3 (30일분)</span>
                                        </div>
                                        <div class="price_wrap">
                                            <div class="second_price">
                                                <span class="middle-font">1,136,400</span>
                                            </div>
                                            <div class="original_price">
                                                <span>1,156,000</span>
                                            </div>                                      
                                            <div class="dis_per main_color">
                                                <span class="">35%</span>
                                            </div>
                                        </div>
                                        <div class="bottom">
                                            <div class="bottom_txt lowerst-font">
                                                <span>회원 할인 10%</span>
                                            </div>
                                            <div class="bottom_txt lowerst-font">
                                                <span>재구매 추가 할인 5%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--셀럽 상품 content--%>
                                <div class="m_best">
                                    <div class="best_img">
                                        <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                    </div>
                                    <div class="best_txt">
                                        <div class="main_title lowerst-font">
                                            <span>신당케어</span>
                                        </div>
                                        <div class="sub_title middle-font">
                                            <span>비건오메가3 (30일분)</span>
                                        </div>
                                        <div class="price_wrap">
                                            <div class="second_price">
                                                <span class="middle-font">1,136,400</span>
                                            </div>
                                            <div class="original_price">
                                                <span>1,156,000</span>
                                            </div>                                      
                                            <div class="dis_per main_color">
                                                <span class="">35%</span>
                                            </div>
                                        </div>
                                        <div class="bottom">
                                            <div class="bottom_txt lowerst-font">
                                                <span>회원 할인 10%</span>
                                            </div>
                                            <div class="bottom_txt lowerst-font">
                                                <span>재구매 추가 할인 5%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>                                                           
                            </div>
                            <%-- 셀럽상품 더보기 --%>
                            <div class="More_Celleb_Item_container">
                                <div class="My_CellebShop_More_Item">
                                   <div class="lowerst-font Communication_More_BTN m_mono_color">
                                        <span>닥터키드니 님 소통해요 방명록 더보기</span>
                                        <span class="material-icons m_middle_font">arrow_drop_down</span>
                                   </div>
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>
                <%-- 게시물 , 소통해요 메뉴 선택 --%>
                <div class="Choice_menu_wrep">
                     <div class="Post_Menu m_sub_font Ch_menu_Post_Click">
                        <span>게시물</span>
                        <span>(12)</span>
                    </div>
                     <div class="Post_Menu m_sub_font Communication_menu_Click">
                        <span>소통해요 !</span>
                     </div>
                 </div>
                <%-- 게시물 메뉴 DIV --%>
                <div class="Post_Menu_container">
                   <div class="hd_List_Column_Area">
                        <div class="hd_List_Column_1_Area">
                            <div class="hd_List_Column lowerst-font mono_sub_color">No.</div>
                        </div>
                        <div class="hd_List_Column_2_Area">
                            <div class="hd_List_Column lowerst-font">제목</div>
                        </div>

                        <div class="hd_List_Column_4_Area">
                            <div class="hd_List_Column lowerst-font">작성자</div>
                        </div>
                        <div class="hd_List_Column_3_Area">
                            <div class="hd_List_Column lowerst-font main_color">추천</div>
                        </div>
                        <div class="hd_List_Column_5_Area">
                            <div class="hd_List_Column lowerst-font">작성일</div>
                        </div>
                    </div>
                   <%-- 게시물->게시글 하나당 Wrep하나 --%>
                   <div class="hd_List_Row_Area">
                        <div class="hd_List_Row">
                            <%--NO--%>
                            <div class="hd_List_Row_1_Area">
                                <div class="hd_List_Row_1 lowerst-font">74</div>
                            </div>
                            <%--상품명/옵션--%>
                            <div class="hd_List_Row_2_Area">
                                <div class="hd_List_Row_3 lowerst-font">                                  
                                    <div class="lowerst-font font-weight400 ">[잡담]</div>                                                                                                        
                                </div>
                                <div class="hd_List_Row_2_1">
                                    <div class="hd_List_Row_2_1_2 lowerst-font font-weight400 ">2023 설 연휴 배송안내</div>
                                </div>
                            </div>
                             <%--작성자--%>
                                <div class="hd_List_Row_4_Area">                                                
                                <div class="hd_List_Row_4 lowerst-font user_id">닥터키드니</div>                                                   
                            </div>                 
                            <%--추천수--%>
                            <div class="hd_List_Row_4_Area">                                             
                                <span class="main_color">5</span>
                            </div>
                            <%--작성일--%>
                            <div class="hd_List_Row_1_Area">
                                <div class="hd_List_Row_1 lowerst-font">2023.06.01</div>
                            </div>
                                            
                        </div>
                    </div>
                 
                   <%-- 커뮤니티 게시물 더 보기 버튼 --%>
                   <div class="My_Post_More_Post">
                        <div class="lowerst-font My_Post_More_Post_BTN m_mono_color">
                            <span>닥터키드니</span>
                            <span>님 소통해요 방명록 더보기</span>
                            <span class="material-icons m_middle_font">arrow_drop_down</span>
                        </div>
                    </div>
                </div>
                <%-- 소통해요 ~ ! 영역 --%>
                <div class="Communication_Menu_container">
                     <%-- 방명록을 남겨 소통해보세요 --%>
                     <div class="Communication_Title_Space m_middle_font">
                         <span>방명록을 남겨 소통해보세요.</span>
                     </div>
                     <%-- 방명록 작성 영역 --%>
                     <div class="Communication_Writing_Comment_Wrep">
                         <div class="Communication_Writing_Container">
                             <div class="Community_write_Area_name">
                                <span class="m_lower_font">작성자</span>
                                <span class="m_lowerst_font main_color">DrKID</span>
                             </div>
                             <div class="ReWritePostArea">
                                <div class="Community_write_Area_txt_content">
                                   <textarea></textarea>
                                </div>
                                <div class="Commu_write_Wrep">
                                    <div class="Community_write_Area_txt_Btn m_middle_font">
                                      <span>등록</span>
                                    </div>
                                </div>
                             </div>
                         </div>
                     </div>
                     <%-- 작성된 답글들 --%>
                     <div class="Commu_Reply_Border">
                        <div class="Communication_Area_Reply_Wrep">
                         <div class="Reply_Icon_Area">
                             <img src="/Source/m/image/mypageSmile_icon.svg" alt="smile_img">
                         </div>
                         <div class="Reply_User_Text_Area">
                             <div class="m_middle_font">
                                 <span class="main_color">Drkdni</span>
                                 <span class="">2023.06.01 17:39</span>
                             </div>
                             <div class="Reply_User_Comment m_middle_font">
                                 <span>후기를 이제봤는대 가나다라마바사안녕하세요 반갑습니다.</span>
                             </div>
                         </div>
                      </div>
                     </div>
                   
                     <%-- 소통해요 ~ 방명록 더보기 --%>
                     <div class="My_Post_More_Post">
                            <div class="m_middle_font Communication_More_BTN m_mono_color">
                                   <span>닥터키드니</span>
                                   <span>님 소통해요 방명록 더보기</span>
                               <span class="material-icons m_middle_font">arrow_drop_down</span>
                            </div>
                        </div>
                    </div>
                    <%-- 닫기 버튼 영역 --%>
                    <div class="My_Page_Close_BTN_Wrep">
                        <div class="My_Page_Close_BTN">
                            <span>닫기</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <div id="sub_content" style="">
        <div class="sub_layout">
            <div id="content">

                <%if (DETAIL_TITLE_LIST != null && DETAIL_TITLE_LIST.Rows.Count > 0)
                {%>
                    <div class="main_Box">
                        <%--커뮤니티 타이틀--%>
                        <div class="Title_Area">
                            <div class="main_Title_Txt">커뮤니티</div>
                            <div class="sub_Title_Txt lower-font">닥터키드니 고객님들을 위한 특별한 혜택</div>

                        </div>
                        <%--커뮤니티 목록 버튼--%>
                        <div class="show_All_Community_Area">
                            <div class="show_All_Community_Btn lowerst-font">커뮤니티 목록 보기 ></div>
                        </div>
                        <div class="detail_Info_Area">
                            <div class="detail_Info_Title_Area">
                                <div class="Community_Flag_Area">
                                    <div class="Community_Content_Flag lowerst-font">[<%=DETAIL_TITLE_LIST.Rows[0]["CODE_NAME"]%>]</div>                             
                                </div>
                                <div class="detail_Info_Title">
                                    <div class="lowerst-font">
                                         <span><%=DETAIL_TITLE_LIST.Rows[0]["BOARD_TITLE"]%></span>
                                    </div>
                                    <div class="lowerst-font drkid_Negative_color comment_count">(<%=DETAIL_TITLE_LIST.Rows[0]["COMMENT_COUNT"]%>)</div>
                                   
                           
                                </div>
                                <div class="detail_Info_Txt lowerst-font main_color">
                                    <span class="TITME_REOMMEND_COUNT"><%=DETAIL_TITLE_LIST.Rows[0]["RECOMMEND_COUNT"]%></span>
                                </div>
                                <div class="detail_Info_Txt lowerst-font post_user_name mono_dea_color">
                                    <span class="user_id"><%=DETAIL_TITLE_LIST.Rows[0]["POST_USER_NAME"]%></span>
                                </div>
                                <div class="detail_Info_Txt lowerst-font mono_dea_color">
                                    <span><%=Convert.ToDateTime(DETAIL_TITLE_LIST.Rows[0]["POST_TIME"]).ToString("yyyy.MM.dd HH:mm")%></span>
                                </div>

                            </div>


                         </div>
                        <%--에디터 이미지 들어옴--%>
                        <div class="detail_Info_Img_Txt_Area">
                            <%=DETAIL_TITLE_LIST.Rows[0]["BOARD_MESSAGE"]%>
                        </div>
                        <%--추천 버튼--%>
                        <div class="comment_foot">
                            <div class="comment_foot_location"></div>
                            <div class="thumb comment_foot_location" id="recommend_btn">
                                <div class="thumb_wrap">
                                    <div class="thumn_icon">
                                        <span class="material-icons">thumb_up_off_alt</span>
                                    </div>
                                    <div class="thumb_txt main_color">
                                        <span >추천!</span>
                                    </div>
                                </div>
                                <div class="thumb_count main_color"><%=DETAIL_TITLE_LIST.Rows[0]["RECOMMEND_COUNT"]%></div>
                   
                            </div>
                            <div class="comment_foot_location">
                                <div class="comment_foot_btn_wrap">
                                 <% if(baseUser.userId == "ADMIN" || DETAIL_TITLE_LIST.Rows[0]["CREATED_USER_ID"] == baseUser.userId){ %>
                                   <div class="board_modify_btn lowerst-font" data-boardsid="<%=DETAIL_TITLE_LIST.Rows[0]["BOARD_SID"]%>"><span>게시글 수정</span></div>
                                   <div class="board_delete_btn lowerst-font" data-boardsid="<%=DETAIL_TITLE_LIST.Rows[0]["BOARD_SID"]%>"><span>게시글 삭제</span></div>
                                <%} %>
                                </div>
                            </div>
                        </div>
                        <%--댓글 작성--%>
                        <div class="Community_write">
                            <div class="Community_write_Wrap">
                                <div class="Community_write_Top">
                                    <span>댓글쓰기</span>
                                </div>
                                <%--댓글 등록--%>
                                <div class="Community_write_Area">
                                    <div class="Community_write_Area_title">작성자</div>
                                    <div class="Community_write_Area_name">
                                        <input type="text" class="comment_user_id" name="name" value=" " style="width:" readonly/>
                                    </div>
                                    <div class="Community_write_Area_txt_content">
                                        <% if (baseUser.userId == null || baseUser.userId == "" || baseUser.userId == "undefined") {%>
                                            <textarea name="input_comment_content" readonly id="test_Comment" maxlength="400">로그인을 하셔야 작성이 가능합니다.</textarea>
                                        <%}else{ %>
                                         <textarea name="input_comment_content" "id="test_Comment" maxlength="400"></textarea>
                                        <%} %>                                
                                    </div>
                                    <div class="Community_write_Area_txt_Btn" id="test_Write_Btn" data-parentsid ="0">
                                        <span>등록</span>
                                    </div>
                                </div>
                                <%--댓글 달리는 부분--%>
                                <div class="ALL_list">
                                    <div class="ALL_list_Wrap">
                                        <%--댓글 달린 총 갯수--%>
                                        <div class="ALL_list_Wrap_Top">
                                            <%--댓글 카운터 들어와야 함--%>
                                            <span class="main_color"><%=DETAIL_TITLE_LIST.Rows[0]["COMMENT_COUNT"]%></span>
                                            <span>개의 댓글</span>
                                        </div>
                                        <div class="comment">          
                                               <%for (int j = 0; j < DETAIL_COMMNET_LIST.Rows.Count; j++)
                                                          { %>  
                                            <div class="comment_content_wrap" data-count="<%=j%>">
                                                <div class="comment_content delete_status" data-deletestatus="<%=DETAIL_COMMNET_LIST.Rows[j]["DELETE_FLAG"]%>">
                                                    <div class="comment_top_wrap">
                                                        <div class="comment_top">
                                                           <%--댓글 단사람 아이디--%> 
                                                            <div class="main_color"><%=DETAIL_COMMNET_LIST.Rows[j]["USER_NAME"]%></div>
                                                            <%--댓글 단 시간--%> 
                                                            <div class="lowerst-font mono_dea_color"> <span><%=Convert.ToDateTime(DETAIL_COMMNET_LIST.Rows[j]["POST_TIME"]).ToString("yyyy.MM.dd HH:mm")%></span></div>
                                                        </div>  
                                                      <% if ((Convert.ToInt32(DETAIL_COMMNET_LIST.Rows[j]["USER_SID"]) == baseUser.userSid && DETAIL_COMMNET_LIST.Rows[j]["DELETE_FLAG"].ToString() == "N") || (baseUser.userId == "ADMIN" && DETAIL_COMMNET_LIST.Rows[j]["DELETE_FLAG"].ToString() == "N"))%>
                                                        <%{ %>
                                                            <div class="delete_btn lowerst-font" data-commentsid="<%=DETAIL_COMMNET_LIST.Rows[j]["COMMENT_SID"]%>">댓글 삭제</div>
                                                        <%}%>

                                                     </div>
                                                    <%--작성된 댓글--%>
                                                    <div class="comment_review delete_status_check" >
                                                        <%if ((DETAIL_COMMNET_LIST.Rows[j]["DELETE_FLAG"].ToString()) == "Y")
                                                                        {%>
                                                                             <div class="Community_write_Area_txt_content comment_width delete_status_check" >
                                                                             삭제된 댓글입니다.
                                                                            </div>
                                                                         <%}else {%>
                                                                          <div class="Community_write_Area_txt_content comment_width delete_status_check" >
                                                                            <%=DETAIL_COMMNET_LIST.Rows[j]["COMMENT_TITLE"]%>
                                                                            </div>
                                                                         <%}%>   
                                                    </div>
                                                    <%--작성된 댓글에 달린 댓글--%>
                                                    <div class="comment_review_count">
                                                        <div class="lowerst-font mono_sub_color">댓글의 댓글</div>
                                                        <div class="comment_count_wrap">
                                                            <div class="count lowerst-font main_color font-weight500"><%=DETAIL_COMMNET_LIST.Rows[j]["REPLY_COUNT"]%></div>
                                                            <div class="lowerst-font mono_sub_color">개</div>
                                                            <div class="count_review_Btn lowerst-font">
                                                                <span class="material-icons">arrow_drop_down</span>
                                                            </div>
                                                        </div>
                                                        <div class="count_write lowerst-font mono_sub_color">답글쓰기</div>
                                                        </div>
                                                    </div>
                                                    <div class="comment_reply_wrap hide-field">  
                                                <% for (var k = 0; k < DETAIL_REPLY_LIST.Rows.Count; k++) { %>  
                                     
                                                    <% if (Convert.ToString(DETAIL_REPLY_LIST.Rows[k]["PARENT_SID"]) == (Convert.ToString(DETAIL_COMMNET_LIST.Rows[j]["COMMENT_SID"])))
                                                            { %>
                                                    <div class="Community_All_write_Area_wrap delete_status" data-deletestatus="<%=DETAIL_REPLY_LIST.Rows[k]["DELETE_FLAG"]%>">  
                                                        <%-- 답글쓰기 클릭했을 때 --%>
                                                        <div class="Community_All_write_Area">  
                                                            <%-- 등록된 댓글 --%>
                                                            <div class="regist_comment">
                                                                <div class="regist_comment_wrap">
                                                                    <div class="comment_top_wrap">
                                                                        <div class="comment_top top_padding">
                                                                            <%-- 댓글 단 사람 아이디 --%> 
                                                                            <div class="main_color"><%=DETAIL_REPLY_LIST.Rows[k]["USER_NAME"]%></div>
                                                                            <%-- 댓글 단 시간 --%> 
                                                                            <div class="lowerst-font mono_dea_color"><%=Convert.ToDateTime(DETAIL_REPLY_LIST.Rows[k]["POST_TIME"]).ToString("yyyy.MM.dd HH:mm")%></div>
                                                                        </div>
                                                                      <% if ((Convert.ToInt32(DETAIL_REPLY_LIST.Rows[k]["USER_SID"]) == baseUser.userSid && DETAIL_REPLY_LIST.Rows[k]["DELETE_FLAG"].ToString() == "N") || (baseUser.userId == "ADMIN" && DETAIL_REPLY_LIST.Rows[k]["DELETE_FLAG"].ToString() == "N"))%>
                                                                        <%{ %>
                                                                            <div class="delete_btn lowerst-font" data-commentsid="<%=DETAIL_REPLY_LIST.Rows[k]["COMMENT_SID"]%>">댓글 삭제</div>
                                                                        <%}%>
                                                                    </div>
                                                                    <div class="regist_comment_wrap_content">
                                                                        <div class="arrow_icon mono_dea_color">
                                                                            <span class="material-icons">subdirectory_arrow_right</span>
                                                                        </div>
                                                                         <%if ((DETAIL_REPLY_LIST.Rows[k]["DELETE_FLAG"].ToString())== "Y")
                                                                        {%>
                                                                             <div class="Community_write_Area_txt_content comment_width delete_status_check" >
                                                                             삭제된 댓글입니다.
                                                                            </div>
                                                                         <%}else {%>
                                                                          <div class="Community_write_Area_txt_content comment_width delete_status_check" >
                                                                            <%=DETAIL_REPLY_LIST.Rows[k]["COMMENT_TITLE"]%>
                                                                            </div>
                                                                         <%}%>   
                                                                  
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <% } %>
                                                <% } %>
                                   
                                                    <%--댓글 등록--%>
                                                    <div class="Community_write_Area">
                                                        <div class="Community_write_Area_title">작성자</div>
                                                        <div class="Community_write_Area_name">
                                                            <input type="text" class="comment_user_id" name="name" value="" readonly/>
                                                        </div>
                                                        <div class="Community_write_Area_txt_content">
                                                            <textarea name="input_comment_content" maxlength="400"></textarea>
                                                        </div>
                                                        <div class="Community_write_Area_txt_Btn" data-parentsid ="<%=Convert.ToString(DETAIL_COMMNET_LIST.Rows[j]["COMMENT_SID"])%>">
                                                            <span>등록</span>
                                                        </div>     
                                                    </div>
                                                </div>
                                            </div>
                             
                                                    <%--댓글 등록 끝--%>
                                                <%}%>
                                        </div>
                                    </div>
            
                                    </div>
                                </div>
                            </div>
                        </div>

                <%}%>
                



                </div>
            </div>
        </div>
</asp:Content>
