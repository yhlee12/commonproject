<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_INQUERY_WRITE_DETAIL.aspx.cs" Inherits="drKid.Source.m.my.M_M_INQUERY_WRITE_DETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myPage {
           background-color:#FFFFFF;
           /*padding: 0 15px;*/
        }

        .m_bottom {
            display:none;
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
            padding: 0 15px;
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
            visibility: hidden
        }

        .myPageHeader_top {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding: 0 0px 0.5rem;
            border-bottom: 2px solid #e2e2e2;
        }
        /*.Bottom_Area {
            padding: 0 15px;
        }*/
        .he_title {
            padding: 0 15px;
        }
        .hd_Detail_Area_Top {
            display: flex;
            align-items: center;
            gap: 0.2rem;
        }
        .hd_Detail_Title_Area {
            padding: 0.5rem 0;
            border-bottom: 2px solid var(--mono_line);
        }
        .board_Info {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .hd_Detail_Area_Btoom {
            display: flex;
            gap: 0.2rem;
        }
        .hd_Created_Date_Area  {
            color: var(--mono_dea);
        }
        .hd_Detail_Info  {
            padding: 0.5rem 0;
            border-bottom: 2px solid var(--mono_line);
        }
        .hd_Answer_Title {
            background: #F9F9F9;
            padding: 0.5rem 15px;
            border-bottom: 1px solid var(--mono_line);
            border-top: 1px solid var(--mono_line);
        }
        .hd_Answer  {
            font-weight: 500;
            padding: 0.5rem 15px;
            border-bottom: 1px solid var(--mono_line);
        }
        .link_Area {
            padding: 0.5rem 0;
        }
        .link_Icon_Area {
            display: flex;
            gap: 0.2rem;
        }
        .btn_Area {
            padding: 0 15px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 1rem;
        }
        .btn_Area > div {
            width:30%;
            text-align:center;
            border: 1px solid var(--main_color);
            padding: 0.3rem 0;
            font-weight: 600;
        }
        
        .btn_Area > div:nth-child(2) {
            color:var(--main_color);
        }
        .btn_Area > div:nth-child(3) {
            color:var(--main_color);
        }
        .btn_Area > div:last-child {
            background:var(--main_color);
            color:#fff;
        }

        /*font-weight*/
        .font-weight600 {
            font-weight: 600;
        }

        .t2l-alert-inner-wraper {
            min-width: 80%;
        }

    </style>

    <script>
        $(document).ready(function () {
            //이전 버튼
            $(".prev_button").click(function () {
                window.history.back();
            });
            //목록 버튼 클릭 시 문의 리스트페이지 이동
            $(".go_List_Btn").click(function () {
                location.href = "/Source/m/my/M_M_INQUERY.aspx";
            });
            //수정 버튼 
            $(".edit_Btn").click(function () {
                let bsid = $("#BOARD_SID").val();
                location.href = "/Source/m/my/M_M_INQUERY_WRITE.aspx?bsid=" + bsid;
            })
            //삭제 버튼
            $(".del_Btn").click(function () {
                var OkCallBack = function () {
                    $("#aspnetForm").submit();
                }
                var esrrorCallBack = function (ex) {
                }
                _popModal.Promt('문의글 삭제', '정말로 삭제하시겠습니까?', OkCallBack, esrrorCallBack);
            })
            //삭제 플레그 Y면 화면이동
            if ("<%=cp_ret_status2%>" == 'Y') {
                location.href = "/Source/m/my/M_M_INQUERY.aspx";
             }
             if ("<%=cp_ret_status2%>" == 'N') {
                _popModal.Promt('문의글 삭제 실패', '관리자에게 문의 바랍니다.');
            }
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
            <%--배송지 관리 헤더 top--%>
            <div class="myPageHeader_top">
                <%--<a href="/Source/m/my/M_M_MYPAGE.aspx">--%>
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
                <%--</a>--%>
                <div class="myPage_txt">
                    <span>1:1문의</span>
                </div> 
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>

        <%--1:1 문의 조회 UI, 문의리스트 전체 영역--%>
        <div class="Bottom_Area">
            <%--1:1 문의 조회UI--%>
            <div class="order_Search_Ui_Area">
                <%--문의 디테일 전체 영역--%>
                <div class="Bottom_Area_Wrap">
                    <%--문의 디테일--%>
                    <div class="hd_Wrap">
                        <div class="hd_Detail_Area">
                            <div class="he_title">
                                <%--문의 디테일 제목--%>
                                <div class="hd_Detail_Title_Area">
                                    <%--문의 타입--%>
                                    <div class="hd_Detail_Area_Top">
                                        <div class="hd_Type font-weight600">[<%=CS_DETAIL.Rows[0]["CATEGORY_NAME"] %>]</div>
                                        <%--문의 제목--%>
                                        <div class="hd_Title_Area">
                                            <%--<div class="lock_Icon_Area">
                                                <span class="material-icons-outlined" id="lock_Icon">lock</span>
                                            </div>--%>
                                            <div class="hd_Title font-weight600"><%=CS_DETAIL.Rows[0]["BOARD_TITLE"] %></div>
                                        </div>
                                    </div>
                                    <div class="board_Info">
                                        <%--문의 등록시간--%>
                                        <div class="hd_Detail_Area_Btoom">
                                            <div class="hd_Created_Date_Area m_lower_font"><%=CS_DETAIL.Rows[0]["BOARD_WRITE_NM"] %></div>
                                            <div class="hd_Created_Date_Area m_lower_font"><%=CS_DETAIL.Rows[0]["POST_DATE"] %></div>
                                        </div>
                   
                                        <div class="hd_State m_lower_font main_color"><%=CS_DETAIL.Rows[0]["STATUS_NAME"] %></div>
                                        <input type="hidden" value="<%=CS_DETAIL.Rows[0]["STATUS_CODE"] %>" />
                                    </div>
                                </div>

                                <%--문의 디테일 내용--%>
                                <div class="hd_Detail_Info_Area">
                                    <div class="hd_Detail_Info m_middle_font">
                                        <%=CS_DETAIL.Rows[0]["BOARD_MESSAGE"] %>
                                    </div>
                                </div>

                                <%--문의 디테일 첨부파일 정보--%>
                                <%--첨부파일이 있으면--%>
                                <div class="hd_Detail_File_Area">
                                    <div class="link_Area">
                                        <div class="file_Info lowerst-font">첨부파일</div>
                                        <div class="link_Icon_Area">
                                            <span class="material-icons-outlined" id="link_Icon">link</span>
                                            <div class="file_Name lowerst-font">C:\fakepath\CK_cm08029552 copy.jpg</div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <%--답변완료일때 답변내용--%>
                            <%if (CS_ANSWER_LIST.Rows.Count > 0)
                                { %>
                            <div class="hd_Answer_Area">
                                <div class="hd_Answer_Title lowerst-font">
                                    <div class="hd_Title_Area m_lower_font">답변내용</div>
                                </div>
                                <%for(int i=0 ; i < CS_ANSWER_LIST.Rows.Count; i++) {%>
                                <div class="hd_Answer m_middle_font">
                                    <%=CS_ANSWER_LIST.Rows[i]["BOARD_MESSAGE"] %>
                                </div>
                                <%} %>
                            </div>
                            <%} %>
                            <%else{ %>
                            <div class="hd_Answer_Area">
                                <div class="hd_Answer_Title m_lower_font">답변내용</div>
                                <div class="hd_Answer m_lower_font" style="align-items: center; display: flex; justify-content: center;">
                                    아직 등록된 답변이 없습니다.
                                </div>
                            </div>
                            <%} %>
                                    
                        </div>
                    </div>
                    <%--버튼 영역 (삭제,수정,목록)--%>
                    <div class="btn_Area">
                        <input type="hidden" id="BOARD_SID" value="<%=CS_DETAIL.Rows[0]["BOARD_SID"] %>" />
                        <div class="del_Btn">삭제</div>
                        <div class="edit_Btn">수정</div>
                        <div class="go_List_Btn">목록</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
