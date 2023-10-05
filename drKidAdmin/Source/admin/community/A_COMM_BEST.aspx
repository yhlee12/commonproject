<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_COMM_BEST.aspx.cs" Inherits="drKidAdmin.Source.admin.community.A_COMM_BEST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <style>
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

    </style>

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
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
         <input type="text" name="I_BOARD_SID"  value="" />
    </div>
<div class="sub-wrap">
    <div class="sub-warp-title custom-sub-warp-title">
        <span class="middle-font custom-sub-warp-txt ">베스트 커뮤니티 관리 </span>
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
               <%--한줄--%>       
                  <%for (int i = 0; i < BEST_LIST.Rows.Count; i++)
                { %>              
                <tr> 
                    <td>
                        <div data-boardsid ="<%=BEST_LIST.Rows[i]["BOARD_SID"] %>" class="Today_Detail_BTN" >
                            <span>상세</span>
                        </div>
                    </td>
                    <td><%=totalCount - i %></td>
                    <td><%=BEST_LIST.Rows[i]["BOARD_TITLE"] %></td>
                    <td><%=BEST_LIST.Rows[i]["CODE_NAME"] %></td>
                    <td><%=BEST_LIST.Rows[i]["RECOMMEND_COUNT"]%></td>
                    <td><%=BEST_LIST.Rows[i]["POST_USER_NAME"] %></td>
                    <td><%=BEST_LIST.Rows[i]["POST_TIME"] %></td>
                    <td>
                        <div data-boardsid ="<%=BEST_LIST.Rows[i]["BOARD_SID"] %>" class="Today_Delete_BTN">
                            <span>삭제</span>
                        </div>
                    </td>
                </tr>
                <% } %> 
            </tbody>  
        </table>

    </div>
         <div class="pageNavigationStr" style="padding: 50px 0px;">
            <%=pageNavigationStr%>
        </div>
</div>
</asp:Content>
