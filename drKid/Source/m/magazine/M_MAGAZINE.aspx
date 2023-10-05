<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_MAGAZINE.aspx.cs" Inherits="drKid.Source.m.magazine.M_MAGAZINE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #m_moblie_wrap {
            padding: 0;
        }

        .main_Box {
            /*padding: 0px 20px;
            max-width: 1340px;*/
            margin: 0 auto;
        }
        .slider-container {
            height: 395px;
        }
        .Title_Area {
            text-align:center;
            padding: 30px 0px 10px 0px;
        }
        .main_Title_Txt {
            font-weight:500;
            padding: 5px 0px;
        }
        .sub_Title_Txt {
            color:#9F9F9F;
        }
        .magazine_List {
            width: 100%;
            display: grid;
            grid-template-columns: repeat(1,1fr);
            /*gap: 90px 35px;*/
            padding: 0 15px;
        }
        .magazine_Content_Img_Area {
            /*width: 406px;*/
            /*height: 295px;*/
            width: 100%;
            height: 13rem;
            cursor:pointer;
            position:relative;
            border: 1px solid #F2F2F2;
            border-radius: 60px 0 0 0;
            background: #F2F2F2 0% 0% no-repeat padding-box;
        }
        .magazine_Content_Img_Area > img {
            border-radius: 60px 0 0 0;
            object-fit: cover;
        }
        .magazine_Content {
            /*width:406px;*/
            width: 100%;          
            margin-bottom: 1rem;
        }
        .magazine_Content_Img {
            width: 100%;
            height: 100%;
            object-fit: fill;
        }
        .magazine_Content_Flag_Product {
            /*width: 144px;*/
            position: absolute;
            background: #115C5E 0% 0% no-repeat padding-box;
            color: #ffffff;
            text-align: center;
            padding: 2px 0px;
            margin: 0 auto;
            border-radius: 0px 0px 10px 0px;
            font-weight:500;
            padding: 0 1rem;
            bottom: -0.5rem;
            font-size: 0.4rem;
            z-index: 99;
        }
        .magazine_Content_Flag_Issue {
            position: absolute;
            background: #FFC609 0% 0% no-repeat padding-box;
            color: #ffffff;
            text-align: center;
            padding: 2px 0px;
            margin: 0 auto;
            border-radius: 0px 0px 10px 0px;
            font-weight:500;
            padding: 0 1rem;
            bottom: -0.5rem;
            font-size: 0.4rem;
            z-index: 99;
        }
        .magazine_Content_Title_Area {
            width:100%;
            padding: 1rem 0px 0px 0px;
        }
        .magazine_Content_Title {
            /*font-size: 22px;*/
            font-weight: 600;
            /*text-align: center;*/
            height: 24px;
            /*width: 400px;*/
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
            /*padding:0px 15px;*/
            cursor: pointer;
        }
        .magazine_Content_Sub_Title_Area {
            /*padding: 0px 0px 10px 0px;*/
        }

        .magazine_Content_Sub_Title {      
            color: #9F9F9F;
            /*height: 50px;*/
            /*width: 400px;*/
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
            cursor: pointer;
            /*padding:15px;
            padding: 0px 12px;*/
            /*text-align:center;*/
            line-height: 1.5;
            padding: 0.2rem 0;
        }

        .magazine_Content_Created_Date_Area {
            width:100%;
        }

        .magazine_Content_Created_Date {
            color:#9F9F9F;
            font-weight:500;
            /*text-align:center;*/
        }

        /*페이징관련*/
        .number-button-Area {
            padding: 100px 0px;
        }

        .number-button-wrap {
            display: flex;
            justify-content: center;
        }

        /*확대 모달 관련*/
        .wrap{
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          display:none;
          cursor: auto;
        }
        .target {
            /*배치 타입1*/
            /*position: absolute;
            width: 850px;
            height: 550px;
            margin: 0 auto;
            z-index: 9999;
            overflow: hidden;
            z-index: 999;*/


            /*배치 타입2*/
            /*position: fixed;
            width: 850px;
            height: 550px;
            margin: 0 auto;
            overflow: hidden;
            top: 50%;
            z-index: 999;
            transform: translate(-50%, -50%);
            left: 50%;*/

            /*배치타입 3*/
            position: absolute;
            width: 855px;
            height: 550px;
            margin: 0 auto;
            /* border: 1px solid #ddd; */
            z-index: 9999;
            overflow: hidden;
            left: 406px; /*컨텐츠 영역만큼*/
            z-index: 999;
        }

        .photo {
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          background-repeat: no-repeat;
          background-position: center;
          background-size: cover;
          transition: transform .5s ease-out;
          transform:scale(1.5);
        }
     
        #test_Img {
            position:relative;
            z-index:999999;
        }

        .zoom-area {
            position: absolute;
            border: 2px solid #9c9a9a;
            pointer-events: none;
            background: #e6e2e2;
            display: none;
            opacity: 0.5;
            z-index: 999999;
        }

        .slide_prev_button {
            left:10px;
        }
        .slide_next_button {
            right: 10px;
        }

        #issue_color { 
           background-color:#FFC609;
        }

        /*magazinefont*/
        .magazine_best_font {
            font-size: 0.4rem;
        }

        /*최하단 메뉴*/ 
        .m_bottom_wrap_inner > .icon_menu:first-child > span {
            color:#BBB;
        }

        .m_bottom_wrap_inner > .icon_menu:nth-child(3) > span {
            color:#115c5e;
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
                    location.href = "/Source/m/magazine/M_MAGAZINE_DETAIL_LIST.aspx?sid=" + sid;
                }


            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <div class="sub_Title_Txt m_middle_font">닥터키드니의 매거진을 만나보세요.</div>
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
                            <%--매거진 플래그(PRODUCT or ISSUE)--%>
                            <div class="magazine_Content_Flag_Area">
                                    <%if (MAGAZINE_LIST.Rows[i]["FAQ_TYPE"].ToString() == "PRODUCT")
                                { %>
                                    <div class="magazine_Content_Flag_Product"><%=MAGAZINE_LIST.Rows[i]["FAQ_TYPE"]%></div>
                                <%}%> 
                                <%else
                                {%>
                                    <div class="magazine_Content_Flag_Issue"><%=MAGAZINE_LIST.Rows[i]["FAQ_TYPE"]%></div>
                                <%}%>
                                            
                            </div>
                        </div>
                        <%--매거진 제목, 설명, 작성일--%>
                        <div class="magazine_Content_Info_Area">
                            <div class="magazine_Content_Title_Area"data-info="<%=MAGAZINE_LIST.Rows[i]["BOARD_SID"]%>">
                                <div class="magazine_Content_Title"> 
                                    <span><%=MAGAZINE_LIST.Rows[i]["BOARD_TITLE"]%></span>
                                </div>
                            </div>
                            <div class="magazine_Content_Sub_Title_Area"data-info="<%=MAGAZINE_LIST.Rows[i]["BOARD_SID"]%>">
                                <div class="magazine_Content_Sub_Title m_lowerst_font">
                                    <span><%=MAGAZINE_LIST.Rows[i]["BOARD_SUB_TITLE"]%></span>                                   
                                </div>
                            </div>
                                
                            <div class="magazine_Content_Created_Date_Area">
                                <div class="magazine_Content_Created_Date m_lowerst_font"><%=((DateTime)MAGAZINE_LIST.Rows[i]["POST_TIME"]).ToString("yyyy.MM.dd")%></div>
                            </div>
                        </div>
                    </div>
                <%}%>
            <%}%>        
            </div>
            <%--페이징--%>
            <div class="pageNavigationStr" style="padding: 2rem 0px;">
                <%=pageNavigationStr%>
            </div>
        </div>
</asp:Content>
