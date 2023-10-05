<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MAGAZINE_LIST.aspx.cs" Inherits="drKid.Source.client.magazine.C_MAGAZINE_LIST" %>
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
        .slider-container {
            height: 395px;
        }
        .Title_Area {
            text-align:center;
            padding: 30px 0px 60px 0px;
        }
        .main_Title_Txt {
            font-weight:500;
            padding: 15px 0px;
            font-size:30px;
        }
        .sub_Title_Txt {
            color:#9F9F9F;
        }
        .magazine_List {
            width: 100%;
            display: grid;
            grid-template-columns: repeat(3,1fr);
            gap: 90px 35px;
        }
        .magazine_Content_Img_Area {
            width: 406px;
            height: 295px;
            cursor:pointer;
            position:relative;
            align-items: center;
            display: inline-flex;
        }

        .magazine_Content {
            width:406px;
            margin:0 auto;
        }
        .magazine_Content_Img {
            width: 100%;
            height: 100%;
            object-fit: fill;
        }
        .magazine_Content_Flag_Product {
            width: 144px;
            background: #115C5E 0% 0% no-repeat padding-box;
            color: #ffffff;
            text-align: center;
            padding: 2px 0px;
            margin: 0 auto;
            border-radius: 0px 0px 6px 6px;
            font-weight:500;
        }
        .magazine_Content_Flag_Issue {
            width: 106px;
            background: #FFC609 0% 0% no-repeat padding-box;
            color: #ffffff;
            text-align: center;
            padding: 2px 0px;
            margin: 0 auto;
            border-radius: 0px 0px 6px 6px;
            font-weight:500;
        }
        .magazine_Content_Title_Area {
            width:100%;
            padding: 25px 0px 15px 0px;
        }
        .magazine_Content_Title {
            font-size: 22px;
            font-weight: 600;
            text-align: center;
            height: 24px;
            width: 400px;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
            padding:0px 15px;
            cursor: pointer;
        }
        .magazine_Content_Sub_Title_Area {
            padding: 0px 0px 10px 0px;
        }
        .magazine_Content_Sub_Title {      
            color: #9F9F9F;
            height: 50px;
            width: 400px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
            cursor: pointer;
            padding:15px;
            padding: 0px 12px;
            text-align:center;
        }
        .magazine_Content_Created_Date_Area {
            width:100%;
        }
        .magazine_Content_Created_Date {
            color:#9F9F9F;
            font-weight:500;
            text-align:center;
        }
         .no_img {
            width:100px !important;
            height:100px !important;     
            margin: 0 auto;

        }
         img.image_for_class {
            object-fit: cover;
        }
         /*뉴 페이징*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

      
    </style>


    <script>
        $(document).ready(function () {
            // 각 매거진 컨텐츠의 이미지, 제목, 부제목 등을 누르면 해당 매거진 디테일 페이지로 이동
            $(".magazine_Content_Img_Area,.magazine_Content_Title_Area,.magazine_Content_Sub_Title_Area").click(function () {
                console.log("탐")
                var sid = $(this).data("info");
                console.log("sid:", sid)
                if (sid != '' && sid != null) {
                    location.href = "/Source/client/magazine/C_MAGAZINE_DETAIL.aspx?sid=" + sid;
                }


            });
        });

    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content" style="">
        <div class="sub_layout">
            <div id="content">
                <div class="main_Box">
                    <%--베너--%>
                    <div class="main_slider">
                        <div class="slide slide_wrap">
                            <div class="slide_item item1">
                                <img src="/Source/client/image/drkid_main_slide1.jpg" alt="Image 1">
                            </div>
                            <div class="slide_item item2">
                                <img src="/Source/client/image/drkid_main_slide2.jpg" alt="Image 2">
                            </div>
                            <div class="slide_item item3">
                                <img src="/Source/client/image/drkid_main_slide3.jpg" alt="Image 3">
                            </div>
                            <div class="slide_prev_button slide_button">
                                <span class="material-icons">chevron_left</span>
                            </div>
                            <div class="slide_next_button slide_button">
                                <span class="material-icons">chevron_right</span>
                            </div>
                            <ul class="slide_pagination"></ul>
                        </div>
                    </div>
                    <%--매거진 타이틀--%>
                    <div class="Title_Area">
                        <div class="main_Title_Txt">MAGAZINE</div>
                        <div class="sub_Title_Txt lower-font">닥터키드니의 매거진을 만나보세요.</div>
                    </div>

                    <%--매거진 리스트--%>
                    <div class="magazine_List">
                        <%if (MAGAZINE_LIST.Rows.Count > 0)
                          {%>
                                <%for (int i = 0; i < MAGAZINE_LIST.Rows.Count; i++)
                                { %>
                                    <%--매거진 개별 컨텐츠--%>
                                    <div class="magazine_Content">
                                        <%--매거진 이미지--%>
                                        <div class="magazine_Content_Img_Area" data-info="<%=MAGAZINE_LIST.Rows[i]["BOARD_SID"]%>">
                                             <%if (!string.IsNullOrEmpty(Convert.ToString(MAGAZINE_LIST.Rows[i]["TARGET_READ_PATH"])))
                                                   
                                            { %>
                                                <img class='image_for_class' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=MAGAZINE_LIST.Rows[i]["TARGET_READ_PATH"] %>'/>
                                            <%}%> 
                                            <%else
                                            {%>
                                                <img src="/Source/image/no_img.svg" class="no_img"/>
                                            <%}%>
                                        </div>
                                        <%--매거진 플래그(PRODUCT or ISSUE)--%>
                                        <div class="magazine_Content_Flag_Area">
                                             <%if (MAGAZINE_LIST.Rows[i]["FAQ_TYPE"].ToString() == "PRODUCT")
                                            { %>
                                                <div class="magazine_Content_Flag_Product big-font"><%=MAGAZINE_LIST.Rows[i]["FAQ_TYPE"]%></div>
                                            <%}%> 
                                            <%else
                                            {%>
                                                <div class="magazine_Content_Flag_Issue big-font"><%=MAGAZINE_LIST.Rows[i]["FAQ_TYPE"]%></div>
                                            <%}%>
                                            
                                        </div>
                                        <%--매거진 제목, 설명, 작성일--%>
                                        <div class="magazine_Content_Info_Area">
                                            <div class="magazine_Content_Title_Area"data-info="<%=MAGAZINE_LIST.Rows[i]["BOARD_SID"]%>">
                                                <div class="magazine_Content_Title"> 
                                                    <%=MAGAZINE_LIST.Rows[i]["BOARD_TITLE"]%>
                                                </div>
                                            </div>
                                            <div class="magazine_Content_Sub_Title_Area"data-info="<%=MAGAZINE_LIST.Rows[i]["BOARD_SID"]%>">
                                                <div class="magazine_Content_Sub_Title">
                                                    <%=MAGAZINE_LIST.Rows[i]["BOARD_SUB_TITLE"]%>
                                                </div>
                                            </div>
                                
                                            <div class="magazine_Content_Created_Date_Area">
                                                <div class="magazine_Content_Created_Date"><%=((DateTime)MAGAZINE_LIST.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%></div>
                                            </div>
                                        </div>
                                    </div>
                                <%}%>
                        <%}%>
   
              
                    </div>
                    <%--페이징--%>
                    <div class="pageNavigationStr" style="padding: 100px 0px;">
                        <%=pageNavigationStr%>
                    </div>
                  
                </div>
            </div>
        </div>
    </div>



    
</asp:Content>
