﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_BANNER_MAIN.aspx.cs" Inherits="drKidAdmin.Source.admin.banner.A_BANNER_MAIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .banner_Contents_Area {
            border-bottom: 1px solid #E2E2E2;
        }

        .banner_Contents {
            display: flex;
            width: 100%;
            align-items: center;
            padding: 25px 0px;
        }
        .banner_management_Area {
            display: flex;
            align-items: center;
             gap: 0px 15px;
        }

        .banner_management {
            text-align: center;
            width: 235px;
            height: 85px;
            line-height: 85px;
            cursor:pointer;
            font-weight: 600;
            border-radius: 10px;
        }
        .banner_management:hover {
            background: #E2E2E2;
        }
        .banner_Contents_Info {
            font-weight: 400;
            width: 125px;
        }
        .banner_management_guide {
            color: #FF441D;
            cursor:pointer;
            position: relative;
        }
        .info_Icon {
            font-size:16px;
        }

        /*배너*/
        /*배너 공통*/
        .banner {
            
            position: absolute;
            background: #ffffff;
            z-index: 999;
            cursor: auto;
            padding: 15px;
            box-shadow: 0px 0px 10px #0000001A;
            border: 1px solid #E2E2E2;
        }
        .banner_Title_Area {
            padding: 0px 0px 10px 0px;
            border-bottom: 1px solid #E2E2E2;
            display:flex;
            align-items: center;
            justify-content: space-between;
        }
        .banner_Title {
            font-weight: 600;
        }
        .banner_Close_Btn {
            cursor: pointer;
        }
        .banner_Info_Area {
            width: 100%;
            height: calc(100% - 41px);
        }

        /*최상단배너 팝업*/
        #banner_TOP {
            width: 645px;
            height: 315px;
        }
        
        /*중배너 팝업*/
        #banner_MIDDLE {
            width: 455px;
            height: 485px;
        }
        /*소배너 팝업*/
        #banner_LOW {
            width: 455px;
            height: 485px;
        }
        /*미디어배너 팝업*/
        #banner_MEDIA {
            width: 455px;
            height: 485px;
        }
        /*와이드배너 팝업*/
        #banner_WIDE {
            width: 455px;
            height: 485px;
        }
        .hideContent{
            display:none !important;
        }
    </style>

    <script>
        var test;
        function banner_arrangement() {
            var BANNER_TOP = $("#BANNER_TOP").html();
            $("#TOP").append(BANNER_TOP);
            var BANNER_MIDDLE = $("#BANNER_MIDDLE").html();
            $("#MIDDLE").append(BANNER_MIDDLE);
            var BANNER_LOW = $("#BANNER_LOW").html();
            $("#LOW").append(BANNER_LOW);
        }
        //function top_banner_hide() {
        //    $("#banner_TOP").css("display", "none");
        //}

        $(function () {
            //각 배너 배치
            //banner_arrangement();

            //배너 관리하기 버튼 , 각 배너에 맞는 관리페이지 이동
            $(".banner_management").click(function () {
                var page_name = $(this).attr("id");
                var url = "/Source/admin/banner/" + page_name + ".aspx";
                console.log(url)
                openMenuPath(url, "", true);
            });

            //느낌표 아이콘 누를때마다 배너 팝업 보여줌
            $(".banner_management_guide").click(function () {
                var _banner = $(this).children("div").attr("id");
                $("#" + _banner).removeClass('hideContent');

            });

            //각 배너별 X 버튼을 누르면 배너를 닫음
            $(".banner_Close_Btn").on('click', function (e) {
                console.log("닫음");
                console.log($(e.currentTarget).data('target'));
                setTimeout(function () {
                    var _targeting = $(e.currentTarget).data('target');
                    $("#" + _targeting).addClass('hideContent');
                }, 100);
            });

        });


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font"><%=pageAuth.nowtitle %></span>
        </div>
         <div class="sub-content-wrap">

             <%--개별 배너 관리 항목 공통코드화--%>
             <%for (int i = 0; i < banner_category_info.Rows.Count; i++)
            { %>
                 <div class="banner_Contents_Area">
                     <div class="banner_Contents">
                         <div class="banner_Contents_Info lowerst-font"><%=banner_category_info.Rows[i]["CODE_NAME"] %></div>

                         <div class="banner_management_Area">
                             <div class="banner_management middle-font mono_back_bg_color main_color"id="A_BANNER_<%=banner_category_info.Rows[i]["CODE_CODE"] %>">배너 관리하기</div>
                             <div class="banner_management_guide"id="<%=banner_category_info.Rows[i]["CODE_CODE"] %>">
                                 <span class="material-icons-outlined info_Icon">info</span>
                                  <%--각 배너--%>
                                  <div class="banner hideContent"id="banner_<%=banner_category_info.Rows[i]["CODE_CODE"] %>">
                                    <div class="banner_Title_Area">
                                        <div class="banner_Title middle-font"><%=banner_category_info.Rows[i]["CODE_NAME"] %></div>
                                        <div class="banner_Close_Btn" data-target="banner_<%=banner_category_info.Rows[i]["CODE_CODE"] %>"><span class="clear-icon drkid-icon"></span></div>
                                    </div>
                                    <div class="banner_Info_Area">
                                    </div>
        
                                </div>
                             </div>
                         </div>
                     </div>
                 </div>
             <%} %>

         </div>
    </div>
    
    <%--최상단배너 미리보기 팝업--%>
  <%--  <script type="text/template" id="BANNER_TOP">
        <div class="banner"id="banner_TOP">
            <div class="banner_Title_Area">
                <div class="banner_Title middle-font">최상단배너</div>
                <div class="banner_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
            </div>
            <div class="banner_Info_Area">
            </div>
        
        </div>
    </script>--%>

    <%--중배너 미리보기 팝업--%>
 <%--   <script type="text/template" id="BANNER_MIDDLE">
        <div class="banner"id="banner_MIDDLE">
            <div class="banner_Title_Area">
                <div class="banner_Title middle-font">중배너</div>
                <div class="banner_Close_Btn"><span class="clear-icon drkid-icon"></span></div>
            </div>
            <div class="banner_Info_Area">
            </div>
        </div>
    </script>
 --%>
   
</asp:Content>

