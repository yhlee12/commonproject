<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_COMM_DETAIL.aspx.cs" Inherits="drKidAdmin.Source.admin.community.A_COMM_DETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        /*기본세팅 시작*/
        .BackGround_Container{
            margin : 10px;
            background-color : white;
        }
        .sub-wrap{
            background-color: white;
            margin: 12px 12px 0 12px;
            border-bottom: 1px solid rgb(219, 221, 226);
        }
        .Main_wrap{
            background-color : white;
            margin: 0 12px;
            padding : 20px 30px;
            border-bottom: 1px solid rgb(219, 221, 226);
        }
        .sub-wrap{
            font-weight : bold;
        }
        /*여기까지 기본세팅*/

        .Main_wrap_Inner{
            border-bottom: 1px solid;
            padding: 20px 0;
        }
        .Category_Today_Commu, .Category_Best_Commu{
            width : 250px;
            height : 40px;
            color : white;
            background : #115C5E;
            display : flex;
            justify-content : center;
            align-items : center;
        }
        .Commu_Post_info_Wrep{
            display : flex;
            align-items : center;
            justify-content : space-between;
            padding: 20px 30px;
            border-bottom: 1px solid rgb(219, 221, 226);
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
            width:100%;
            min-height:700px;
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
            background-color : white;
            padding: 20px 10px;
            border-bottom: 1px solid var(--mono_line);
        }
        .Community_All_write_Area {
            background: #F9F9F9;
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
            display: flex;
            justify-content: space-between;
            align-items: center;
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
            padding: 30px 0 10px 45px !important;
        }
        .comment_width {
            width:93% !important;
        }
        .regist_comment_wrap {
            padding: 30px 20px 0px;
        }
        .regist_comment_wrap_content {
            display: flex;
            gap: 20px;
        }
        #hidden-field {
            display:none;
        }
        .Show_More_Reply_Container{
            margin: 0 0 25px 55px;
            padding-bottom: 30px;
        }
        .Show_More_Reply_BTN{
            border: 1px solid #CCCCCC;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 500px;
            height: 40px;
            color : #BBBBBB;
        }
        .Delete_Reply_Container{
            display: flex;
            justify-content: center;
            align-items: end;
        }
        .Delete_Reply_BTN{
            cursor : pointer;
            background-color : #115C5E;
            color : white;
            width : 80px;
            height : 40px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .Re_Reply_Area {

        }

        .Save_Delete_BTN_Wrep{
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 30px 0;
            gap: 20px;
        }
        .Commu_Detail_Save_Btn{
            width: 120px;
            height: 40px;
            background-color: #115C5E;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor : pointer;
        }
        .Commu_Detail_Delete_Btn{
            width: 120px;
            height: 40px;
            background-color: white;
            color: black;
            border : 1px solid #c7c4c4;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor : pointer;
        }
        .Commu_info_Title{
            display : flex;
            gap : 10px;
        }
         .delete_btn{
            border: 1px solid #E2E2E2;
            color: #FFFFFF;
            background-color: var(--main_color);
            cursor: pointer;
            padding: 5px 10px;
        }
        .comment_top_wrap{
            display: flex;
            justify-content: space-between;
        }
       .comment_count_wrap {
            display: flex;
            gap: 5px;
        }
        .top_padding {
            padding: 0 0 10px 45px !important;
        }
       .hide-field {
            display:none;
            transition: all 0.5s ease;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
    <script>
        $(document).ready(function () {
            // 게시물 토글 
            $("#Ch_menu_Post_Click").click(function () {
                // Post Menu를 클릭한 경우
                $(this).toggleClass("Post_Menu Communication_Menu");
                $("#Communication_menu_Click").toggleClass("Communication_Menu Post_Menu");
                $(".Post_Menu_container").css("display", "block");
                $(".Communication_Menu_container").css("display", "none");
            });

            $("#Communication_menu_Click").click(function () {
                // Communication Menu를 클릭한 경우
                $(this).toggleClass("Communication_Menu Post_Menu");
                $("#Ch_menu_Post_Click").toggleClass("Post_Menu Communication_Menu");
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

            var $usersid = '<%=baseUser.userSid%>';
            var $userid = '<%=baseUser.userId%>';
            var $userName = '<%=baseUser.userName%>';
            var $del_flag = '<%=del_flag%>';
            var $board_sid = '<%=BOARD_SID%>';
            $(function () {
                //정상 삭제 되었다면 리스트페이지로 이동
                if ($del_flag == "Y") {
                    hideProgress();
                    Reload("/Source/admin/community/A_COMM_MANAGE.aspx");
                    Reload("/Source/admin/community/A_COMM_TODAY.aspx")
                    Reload("/Source/admin/community/A_COMM_BEST.aspx")
                    closeTabPath("/Source/admin/community/A_COMM_DETAIL.aspx");//탭 닫기
                    
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
                        if (comment_title.trim().length > 0) {
                            $('input[name="write_Comment_Body"]').val(comment_title);
                            $('input[name="PARENT_SID"]').val(parent_sid);

                            $('#flag').val('save');
                            $('#form1').submit();
                        }
                        else {
                            _popModal.Alert('알림', '댓글을 입력해주세요');
                        }
                    } else {
                        _popModal.Alert('알림', '로그인 후에 시도해주세요');
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
                $(".Commu_Detail_Delete_Btn").on('click', function (e) {
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
                        location.href = "/Source/client/community/C_COMMUNITY_WRITE_PAGE.aspx?BOARD_SID=" + sid + "&request_flag=" + "Y";
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
                                BOARD_SID: $board_sid,
                                USER_SID: $usersid,
                                USER_ID: $userid

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
                $(".profile_txt").click(function () {
                    $(".profile").css("display", "block");
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

<div class="sub-wrap">
    <div class="sub-warp-title custom-sub-warp-title">
        <span class="middle-font custom-sub-warp-txt ">커뮤니티 상세</span>
    </div>
</div>
<div class="Main_wrap">
    <div class="Main_wrap_Inner">
        <div class="Commu_info_Title">
            <div class="Category_Today_Commu">
                 <span>오늘의 커뮤니티</span>
            </div>
            <div class="Category_Best_Commu">
                 <span>베스트 커뮤니티</span>
            </div>
        </div>
    </div>
    
    <%if (DETAIL_TITLE_LIST != null && DETAIL_TITLE_LIST.Rows.Count > 0)
    {%>
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
            <div class="detail_Info_Txt lowerst-font mono_dea_color">
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
                                        <textarea name="input_comment_content" id="test_Comment" maxlength="400"></textarea>
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
                                                         <% if (  DETAIL_COMMNET_LIST.Rows[j]["DELETE_FLAG"].ToString() == "N")%>
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
                                                                     
                                                                      <% if (DETAIL_REPLY_LIST.Rows[j]["DELETE_FLAG"].ToString() == "N")%>
                                                                     <%{ %>        
                                                                    <div class="delete_btn lowerst-font" data-commentsid="<%=DETAIL_REPLY_LIST.Rows[j]["COMMENT_SID"]%>">댓글 삭제</div>
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
        <div class="Save_Delete_BTN_Area">
            <div class="Save_Delete_BTN_Wrep">
                
                <div class="Commu_Detail_Delete_Btn">
                    <span>삭제하기</span>
                </div>
            </div>
        </div>

</asp:Content>
