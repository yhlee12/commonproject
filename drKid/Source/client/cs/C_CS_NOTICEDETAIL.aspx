<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_CS_NOTICEDETAIL.aspx.cs" Inherits="drKid.Source.client.cs.C_CS_NOTICEDETAIL" %>
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
        .show_All_Area {
            display: flex;
            justify-content: flex-end;
             padding: 0px 0px 15px 0px;
        }
        .show_All_Btn {
            color:#9F9F9F;
            width: 160px;
            padding: 4px 0px;
            border: 1px solid #9F9F9F;
            text-align: center;
            cursor:pointer;
        }
        .detail_Info_Title_Wrap {
            padding: 0px 0px 15px 0px;
        }
        .detail_Info_Title_Area {
            padding: 13px;
            border-top: 1px solid #4E4E4E;
            border-bottom: 1px solid #E1E1E1;
            display: flex;
            align-items: center;
        }
    
        .detail_Info_Img_Txt_Area {
            width: 1300px;
            min-height: 300px;
            padding:20px;
        }
             .notice_Number_Area , .notice_Writer_Area, .notice_Created_Date_Area {
            width:10%;
        }
        .notice_Number_Important {
            text-align: center;
            background: #115C5E;
            width: 41px;
            font-size: 14px;
            color: #ffffff;
            margin: auto;
        }
        .notice_Number {
            text-align: center;
            font-size: 14px;
            color:#828282;
        }
        .notice_Title_Area {
            width:70%;
        }
        .notice_Title {
            font-weight:500;
        }
        .notice_Writer,.notice_Created_Date {
            color:#BBBBBB;
        }
        .imfortanace_txt {
            text-align: center;
            background: #115C5E;
            width: 41px;
            font-size: 14px;
            color: #ffffff;
            margin: auto;
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
        img.image_for_class {
            width: fit-content;
            height: fit-content;
            max-width:100%;
        }
    </style>
    <script>
        $(function () {
            $(".show_All_Btn").click(function () {
                location.href = "/Source/client/cs/C_CS_NOTICELIST.aspx";
            });


        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content" style="">
        <div class="sub_layout">
            <div id="content">
                <div class="main_Box">
                    <div class="Title_Area">
                        <div class="main_Title_Txt">고객센터</div>
                        <div class="sub_Title_Txt lower-font">닥터키드니 고객센터입니다. 무엇을 도와드릴까요?</div>
                    </div>
                    <div class="show_All_Area">
                        <div class="show_All_Btn lowerst-font">전체 공지사항 보기 ></div>
                    </div>
                    <%--전체 디테일 영역--%>
                    <div class="detail_Info_Area">
                        <%--디테일 제목 --%>
                        <div class="detail_Info_Title_Wrap">
                            <div class="detail_Info_Title_Area">
                                <div class="notice_Number_Area">
                                    <%--<div class="notice_Number lowerst-font">73</div>--%>
                                    <div class="lowerst-font">
                                         <% if (string.Equals(NOTICE_DETAIL.Rows[0]["IMPORTANCE_FLAG"].ToString(), "Y", StringComparison.OrdinalIgnoreCase)) 
                                                { %>
                                                    <div class="imfortanace_txt lowerst-font">중요</div>
                                                <%}%>
                                                <% else 
                                                { %>
                                                    <div class="common_txt notice_Number lowerst-font"><%=board_number%></div>
                                        <%}%>
                                    </div> 
                                </div>
                                 <div class="notice_Title_Area">
                                    <div class="notice_Title lowerst-font"><%=NOTICE_DETAIL.Rows[0]["BOARD_TITLE"] %></div>
                                </div>
                                <div class="notice_Writer_Area">
                                    <div class="notice_Writer lowerst-font"><%=NOTICE_DETAIL.Rows[0]["POST_USER_NAME"] %></div>
                                </div>
                           
                                <div class="notice_Created_Date_Area">
                                  <div class="notice_Created_Date lowerst-font"><%= ((DateTime)NOTICE_DETAIL.Rows[0]["POST_TIME"]).ToString("yyyy.MM.dd")%></div>
                                </div>
                            </div>
                        </div>
                        
                
                        <%--디테일 이미지+글 영역 --%>
                        <div class="detail_Info_Img_Txt_Area">
                            <%=NOTICE_DETAIL.Rows[0]["BOARD_MESSAGE"] %>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
