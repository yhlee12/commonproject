﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_main.aspx.cs" Inherits="drKid.Source.m.m_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Security-Policy" content="default-src * 'self' 'unsafe-inline' 'unsafe-eval' data: content:"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, viewport-fit=cover"/>
    <meta name="theme-color" content="#fff"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="msapplication-tap-highlight" content="no"/>
    <title><%=metaTable.Rows[0]["OG_SITENAME"] %></title>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta http-equiv="Permissions-Policy" content="interest-cohort=()"/>
    <%if(metaTable != null && metaTable.Rows.Count > 0){ %>
        <meta property="og:type" content="website"/>
        <meta property="og:title" content="<%=metaTable.Rows[0]["OG_TITLE"] %>"/>
        <meta property="og:image" content="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=metaTable.Rows[0]["OG_IMAGE"] %>"/>
        <meta property="og:url" content="<%=metaTable.Rows[0]["OG_URL"] %>"/>
        <meta property="og:description" content="<%=metaTable.Rows[0]["OG_DESCRIPTION"] %>"/>
        <meta property="og:site_name" content="<%=metaTable.Rows[0]["OG_SITENAME"] %>"/>
        <meta name="naver-site-verification" content="<%=metaTable.Rows[0]["NAVER_SITE_TAG"] %>" />
        <meta name="google-site-verification" content="<%=metaTable.Rows[0]["GOOGLE_SITE_TAG"] %>" />
        <link rel="shortcut icon" type="image/x-icon" href="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=metaTable.Rows[0]["FAVICON"] %>" />
    <%} %>
    <link rel="stylesheet" href="/Source/css/default.css"/>
    <link rel="stylesheet" href="/Source/css/root.css"/>
    <link rel="stylesheet" href="/Source/css/font.css"/>
    <!--05.31 이용호 material icon cdn 추가-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <!--07.14 이용호 main css 추가-->
    <link rel="stylesheet" href="/Source/m/css/main_m.css"/>
    <!--06.08 이용호 swiper css 추가-->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <!--05.31 이용호 제이쿼리 cdn 추가-->
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>

    <script src="/Source/client/js/gsap.min.js"></script>
    <script src="/Source/client/js/jquery.serialscrolling.min.js"></script>
    <script src="/Source/client/js/ScrollTrigger.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

    <!-- Lazy 관련 Set Up -->
    <script src="/js/lazyload.js"></script>
    <link rel="stylesheet" href="/Source/client/css/lazyCss.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

    <script src="/Source/m/js/m_main.js"></script>

     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
     <script>
         $(document).ready(function () {
             //그래프
             var chartArea = document.getElementById('myChart_donut').getContext('2d');
             var myChart = new Chart(chartArea, {
                 // ①차트의 종류(String)
                 type: 'doughnut',
                 // ②차트의 데이터(Object)
                 data: {
                     // ③x축에 들어갈 이름들(Array)
                     //labels: ['January','February','March','April','May','June'],
                     labels: [],
                     // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
                     datasets: [{
                         // ⑤dataset의 이름(String)
                         label: 'value',
                         // ⑥dataset값(Array)
                         data: [12, 19, 3, 5, 2, 3],
                         // ⑦dataset의 배경색(rgba값을 String으로 표현)
                         backgroundColor: [
                             //색상
                             'rgba(255, 99, 132, 0.2)',
                             'rgba(54, 162, 235, 0.2)',
                             'rgba(255, 206, 86, 0.2)',
                             'rgba(75, 192, 192, 0.2)',
                             'rgba(153, 102, 255, 0.2)',
                             'rgba(255, 159, 64, 0.2)'
                         ],
                         borderColor: [
                             //경계선 색상
                             'rgba(255, 99, 132, 1)',
                             'rgba(54, 162, 235, 1)',
                             'rgba(255, 206, 86, 1)',
                             'rgba(75, 192, 192, 1)',
                             'rgba(153, 102, 255, 1)',
                             'rgba(255, 159, 64, 1)'
                         ],
                         // ⑨dataset의 선 두께(Number)
                         borderWidth: 1
                     }]
                 },
                 // ⑩차트의 설정(Object)
                 options: {
                     title: {
                         display: false,
                         text: ['2023-2024', '판매량'],
                         fontSize: 15,
                         fontColor: ['black', 'gray']

                     },
                     // ⑪축에 관한 설정(Object)
                     scales: {
                         // ⑫y축에 대한 설정(Object)
                         y: {
                             // ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
                             beginAtZero: true
                         }
                     }
                 }
             });
         });
    </script>

    <script>
        $(document).ready(function () {

            // 사용자 상태 네비 버튼
            var loginBtn = $(".go_login");
            var logoutBtn = $(".go_logout");
            var joinBtn = $(".go_join");
            var helpBtn = $(".go_help");
            //허정현 로고 클릭시 홈으로 이동 추가
            var mainbBtn = $(".main_logo");

            loginBtn.on("click", function () {
                location.href = "/Source/m/member/login/M_L_LOGIN_PAGE.aspx";
            });
            logoutBtn.on("click", function () {
                console.log("로그아웃");
                document.getElementById("Logout_to_Server").click();
            });

            joinBtn.on("click", function () {
                location.href = "/Source/m/member/M_M_JOINSUPPORT.aspx";
            });
            helpBtn.on("click", function () {
                location.href = "/Source/m/cs/M_CS_QUESTIONLIST.aspx"; // 고객센터 - 자주묻는질문
            });
            mainbBtn.on("click", function () {
                console.log("메인로고 클릭")
                location.href = "/Source/m/m_main.aspx";
            });

           <%-- var user_login_state = "<%=baseUser.userName %>";
             if (user_login_state == null || user_login_state == "") {
                 $(".state_login").hide();
                 $(".state_un_login").show();
             }
             else {
                 $(".state_login").show();
                 $(".state_un_login").hide();
             }--%>

                ////탑배너 클릭 시 url 이동
                // $('.slide').on('click', function () {
                //     var top_Url = $(this).data('value');
                //     if (top_Url != '' || top_Url != null) {
                //         location.href = top_Url;
                //     }
                // });
                ////슬라이드에 url 정보 있으면 마우스 커서 효과
                // $('.slide').each(function () {
                //     var dataValue = $(this).data('value');
                //     if (dataValue !== null && dataValue !== '') {
                //         $(this).css('cursor', 'pointer');
                //     }
                // });

                ////중배너 자세히 보기
                // $('.business_button_wrap_inner').on('click', function () {
                //     var middle_Url = $(this).data('value');
                //     if (middle_Url != '' || middle_Url != null) {
                //         location.href = middle_Url;
                //     }
                // });
                ////소배너 클릭 시 url 이동
                // $('.ring').on('click', function () {
                //     var low_Url = $(this).data('value');
                //     if (low_Url != '' || low_Url != null) {
                //         location.href = low_Url;
                //     }
                // });

                //카테고리 - BEST 페이지 이동
                //$('#GO_BEST').on('click', function () {
                //    location.href = "/Source/client/mainProd/C_MAINPROD_BEST.aspx";
                //});
                //카테고리 - 이달의 추천상품 페이지 이동
                //$('#GO_RECOMMEND').on('click', function () {
                //    location.href = "/Source/client/mainProd/C_MAINPROD_RECO.aspx";
            //});


            });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--menu_hide_button 전체 메뉴 클릭시--%>
            <div class="menu_hide">
                <div class="menu_hide_wrap">
                    <div class="menu_hide_wrap_inner">
                        <div class="customer_menu">

                            <%if(baseUser.userId==null){ %>
                                <div class="customer_menu_content mono_main" id="login_button">
                                    <span>로그인</span>
                                </div>
                                <a href="/Source/m/member/M_M_JOINSUPPORT.aspx">
                                    <div class="customer_menu_content mono_main" <%--id="join_wrap_button"--%>>
                                        <span>회원가입</span>
                                    </div>
                                </a>
                                <a href="/Source/m/cs/M_CS_QUESTIONLIST.aspx">
                                    <div class="customer_menu_content mono_main">
                                        <span>고객센터</span>
                                    </div>
                                </a>
                            <%} %>

                            <%else{ %>
                                <span class="go_logout">로그아웃</span>
                                <a style="display:none;" href="#" id="Logout_to_Server" name="Logout_to_Server" runat="server" onserverclick="Logout_to_Server_ServerClick">로그아웃</a>
                                <a href="/Source/m/cs/M_CS_QUESTIONLIST.aspx">
                                    <div class="customer_menu_content mono_main">
                                        <span>고객센터</span>
                                    </div>
                                </a>
                            <%} %>

                            <%--<div class="customer_menu_content mono_main" id="join_wrap_button">
                                <span>회원가입</span>
                            </div>
                            <a href="/Source/m/cs/M_CS_QUESTIONLIST.aspx">
                                <div class="customer_menu_content mono_main">
                                    <span>고객센터</span>
                                </div>
                            </a>--%>
                        </div>
                        <div class="menu_hide_clear">
                           <span class="material-icons" id="menu_hide_clear_button">clear</span>
                        </div>
                    </div>
                    <%--hide wrap 아이콘--%>
                    <div class="my_menu">
                        <a href="/Source/m/my/M_M_MYPAGE.aspx">
                            <div class="my_menu_content">
                                <span class="material-icons">person</span>
                                <span class="m_middle_font">마이페이지</span>
                            </div>
                        </a>
                        <a href="/Source/m/my/M_M_BASKET.aspx">
                            <div class="my_menu_content">
                                <span class="material-icons">redeem</span>
                                <span class="m_middle_font">장바구니</span>
                            </div>
                        </a>
                        <div class="my_menu_content">
                            <span class="material-icons">person</span>
                            <span class="m_middle_font">인플루언서</span>
                        </div>
                    </div>
                    <%--hide 텍스트--%>
                    <div class="hide_txt">
                        <a href="/Source/m/m_mainProd/M_MAINPROD_BEST.aspx">
                            <div class="hide_txt_content">
                                <span class="main_color">BEST</span>
                                <span class="material-icons main_color">chevron_right</span>
                            </div>
                        </a>
                         <a href="/Source/m/m_mainProd/M_MAINPROD_RECO.aspx">
                            <div class="hide_txt_content">
                                <span class="main_color">이달의 추천상품</span>
                                <span class="material-icons main_color">chevron_right</span>
                            </div>
                        </a>
                       <%-- <div class="hide_txt_content">
                            <span class="main_color">닥터키드니 미디어</span>
                            <span class="material-icons main_color">chevron_right</span>
                        </div>--%>
                    </div>

                   <div class="hide_txt">
                        <div class="hide_txt_content m_middle_font">
                            <span class="main_title">셀럽#</span>                        
                        </div>
                        <a href="/Source/m/celebrity/M_C_CELEBRITY.aspx">
                            <div class="hide_txt_content">
                                <span class="sub_title">셀럽# 카테고리</span>                         
                            </div>
                        </a>                            
                    </div>

                    <div class="hide_txt">
                        <div class="hide_txt_content m_middle_font">
                            <span class="main_title">Dr.P&K</span>                        
                        </div>

                        <%if(cateGoryTable != null){
                            string _nowSid = "-1";
                            string _bigImagePath = "";%>
                        <%for(int i = 0; i <  cateGoryTable.Rows.Count;i++){ %>
                            <!-- Sub와 SUBSUB아니면 continue 처리  -->
                            <%if (cateGoryTable.Rows[i]["TYPE"].ToString().IndexOf("SUB") < 0) { continue; } %>
                            <%if(cateGoryTable.Rows[i]["USED_TYPE"].ToString() == "CATE"){ %>
                                <div class="header_drop_event dropdown" id="dropdown<%=cateGoryTable.Rows[i]["VIEW_SID"]%>">
                                    <div class="header_drop_event_wrap">
                                    <div class="header_drop_event_wrap_inner">
                                        <div class="drop_event_contnet">
                                            <div class="drop_event_contnet_txt lower-font mono_sub_color">
                                            <%  _nowSid = cateGoryTable.Rows[i]["VIEW_SID"].ToString();
                                                _bigImagePath = cateGoryTable.Rows[i]["TARGET_READ_PATH"].ToString();
                                                } %>
                                                <%if(_nowSid == cateGoryTable.Rows[i]["PARENT_SID"].ToString()){ %>
                                                
                                                    <a href="<%=cateGoryTable.Rows[i]["VIEW_PATH"] %>">
                                                        <div class="hide_txt_content">
                                                            <span class="sub_title"><%=cateGoryTable.Rows[i]["TITLE"] %></span>
                                                        </div>
                                                    </a>
                                                    <%if (i == cateGoryTable.Rows.Count - 1 || cateGoryTable.Rows[i + 1]["PARENT_SID"].ToString() != _nowSid){ %>
                                                        </div>
                                                           <%-- <div class="drop_event_contnet_img">
                                                                <div class="drop_event_contnet_img_wrap">
                                                                    <img src="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=_bigImagePath %>" alt="dropImg" class="notFade" />
                                                                </div>
                                                            </div>--%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <%} %>
                                    <%} %>
                                    
                            <%} %>
                        <%} %>


                        <%--<a href="/Source/m/category/M_C_CATEGORY.aspx">
                            <div class="hide_txt_content">
                                <span class="sub_title">신당케어</span>                         
                            </div>
                        </a>--%>

                        <%--<a href="/Source/m/category/M_C_CATEGORY.aspx">
                            <div class="hide_txt_content">
                                <span class="sub_title">신당케어</span>                         
                            </div>
                        </a>
                        <a href="/Source/m/category/M_C_CATEGORY.aspx">
                            <div class="hide_txt_content">
                                <span class="sub_title">비알화강</span>                         
                            </div>
                        </a> 
                        <a href="/Source/m/category/M_C_CATEGORY.aspx">
                            <div class="hide_txt_content">
                                <span class="sub_title">영물오리진</span>                         
                            </div>
                        </a> 
                        <a href="/Source/m/category/M_C_CATEGORY.aspx">
                            <div class="hide_txt_content">
                                <span class="sub_title">패키지</span>                         
                            </div>
                        </a>                --%>       
                    </div>
                    <div class="hide_txt">
                        <div class="hide_txt_content m_middle_font">
                            <a href="/Source/m/eventDetail/M_E_EVENT_LIST.aspx">
                                <span class="main_title weight600">혜택존</span>  
                            </a>                      
                        </div>                     
                    </div>
                    <div class="hide_txt">
                        <div class="hide_txt_content m_middle_font">
                            <a href="/Source/m/magazine/M_MAGAZINE.aspx">
                                <span class="main_title weight600">매거진</span>
                            </a>                        
                        </div>                     
                    </div>
                    <div class="hide_txt">
                        <div class="hide_txt_content m_middle_font weight600">
                            <a href="/Source/m/member/M_M_REVIEW.aspx">
                                <span class="main_title">리뷰</span>
                            </a>                        
                        </div>                     
                    </div>
                    <div class="hide_txt">
                        <div class="hide_txt_content m_middle_font weight600">
                            <a href="/Source/m/community/M_COMMUNITY_PAGE.aspx">
                                <span class="main_title">커뮤니티</span>
                            </a>                        
                        </div>                     
                    </div>
                </div>
            </div>

            <%--검색 아이콘 클릭했을 때--%>
            <div class="search">
                <div class="search_wrap">
                    <div class="search_wrap_inner">
                        <div class="search_clear">
                            <span class="material-icons" id="clear">clear</span>                 
                        </div>

                        <div class="search_main_title">
                            <span>제품검색</span>
                        </div>

                        <div class="title_search">
                            <input type="text" placeholder="신당케어">
                            <span class="material-icons">search</span>
                        </div>

                        <%--<div class="bottom_title">
                            <div class="bottom_main_title">
                                <span>인기 검색어</span>
                            </div>
                            <div class="circle_title">
                                <div class="circle_title_content m_middle_font">
                                    <span>신당케어</span>
                                </div>
                                <div class="circle_title_content m_middle_font">
                                    <span>영물오리진</span>
                                </div>
                                <div class="circle_title_content m_middle_font">
                                    <span>패키지</span>
                                </div>
                                <div class="circle_title_content m_middle_font">
                                    <span>비알화강</span>
                                </div>
                                <div class="circle_title_content m_middle_font">
                                    <span>지노시스템</span>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>

            <%--쿠폰 배너--%>
            <%if(mainViewDic["POPUP"].Count > 0){ %>
                <div class="popup_sldie">
                    <div class="popup_sldie_wrap">
                        <div class="popup_sldie_wrap_inner">
                            <%--베너--%>
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <%for(int i = 0; i < mainViewDic["POPUP"].Count;i++){%>
                                        <div class="swiper-slide first_silde" onclick="javascript:location.href = '<%=mainViewDic["POPUP"][i].Url %>';">
                                            <img src="<%=mainViewDic["POPUP"][i].viewPath %>" alt="<%=mainViewDic["POPUP"][i].title %>" class="notFade" />
                                        </div>                                  
                                   <%} %>
                                </div>
                                <div class="swiper-pagination"></div>
                             
                            </div>
                            <%--팝업창 닫기--%>
                            <div class="clear_under">
                                <span class="m_middle_font">다음에볼게요</span>
                                <span class="material-icons" id="popup_clear">clear</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="overlay"></div>
            <%} %>

            <%--모바일 헤더--%>
            <div class="m_header">
                <%--최상단 쿠폰 안내--%>
                <%if(mainViewDic["BELT"].Count > 0){ %>
                <div class="m_header_wrap" style="background-color:<%=mainViewDic["BELT"][0].Body %>;">
                    <div class="m_header_wrap_inner lowerst-font" onclick="javascript:location.href = '<%=mainViewDic["BELT"][0].Url %>';">
                        <span><%=mainViewDic["BELT"][0].title %></span>
                    </div>
                </div>
                <%} %>
                <%--로고, 아이콘--%>
                <div class="m_header_content">
                    <div class="m_header_content_wrap">
                        <div class="m_header_content_wrap_inner">
                           <div class="m_box" id="menu_hide_button1">
                               <span class="material-icons">menu</span>
                           </div>
                           <a href="#">
                                <div class="logo">                           
                                    <img src="/Source/client/image/new-logo.png" alt="m_logo"/>                            
                                </div>
                            </a>
                            <div class="bottom_center_icon">
                                <div class="bottom_center_icon_wrap">
                                    <span class="material-icons m_icon" id="search_button">search</span>
                                    <a href="/Source/m/my/M_M_BASKET.aspx">
                                        <span class="material-icons m_icon">redeem</span>
                                    </a>
                                </div>
                            </div>                        
                        </div>
                    </div>
                </div>
            </div>

            <%--고정 아이콘--%>
            <div class="customer_img">
                <div class="customer_img_wrap">
                    <img src="/Source/client/image/customer_img.svg" alt="customer_img" />
                </div>
                <div class="customer_img_txt mono_sub_color lower-font">
                    <span>
                        전문가의<br />
                        1:1 맞춤상담
                    </span>
                </div>
            </div>

            <div class="sns_img">
                <div class="sns_img_wrap">
                    <img src="/Source/client/image/ch_img.svg" alt="ch_img" />
                </div>
                <div class="sns_img_wrap">
                    <img src="/Source/client/image/instagram_img.svg" alt="inst_img" />
                </div>
                <div class="sns_img_wrap">
                    <img src="/Source/client/image/naver_img.svg" alt="naver_img" />
                </div>
                <div class="sns_img_wrap">
                    <img src="/Source/client/image/youtube_img.svg" alt="youtube_img" />
                </div>
            </div>

            <%--모바일 최하단 메뉴--%>
            <div class="m_bottom">
                <div class="m_bottom_wrap">
                    <div class="m_bottom_wrap_inner">
                        <div class="icon_menu" id="home">
                            <span class="material-icons">home</span>
                            <span class="main_color m_lower_font">홈</span>
                        </div>
                        <div class="icon_menu" id="menu_hide_button">
                            <span class="material-icons">menu</span>
                            <span class="m_lower_font">전체메뉴</span>
                        </div>
                        <div class="icon_menu" id="magazine_hide_button">
                            <span class="material-icons">assignment</span>
                            <span class="m_lower_font">매거진</span>
                        </div>
                         <div class="icon_menu" id="myPage_button">
                            <span class="material-icons">perm_identity</span>
                            <span class="m_lower_font">마이페이지</span>
                        </div>
                    </div>
                </div>
            </div>

            <%--모바일 슬라이드--%>
            <div class="slide slide_wrap">
                <%if(mainViewDic["TOP"].Count > 0){ %>
                    <%for(int i = 0; i < mainViewDic["TOP"].Count;i++){%>
                        <div class="slide_item item1" onclick="javascript:location.href = '<%=mainViewDic["TOP"][i].Url %>';">
                            <img src="<%=mainViewDic["TOP"][i].viewPath %>" alt="<%=mainViewDic["TOP"][i].title %>" class="notFade">
                        </div>
                    <%} %>
                <%} %>
                <ul class="slide_pagination"></ul>            
            </div>

            <%--best--%>
            <div class="main_content_wrap">
                <div class="best_wrap">
                    <div class="best_wrap_inner">
                        <div class="best_main_title big-font GSans">
                            <span>BEST</span>
                        </div>
                        <div class="best_sub_title lowerst-font GSans">
                            <span>닥터키드니의 베스트 상품을 만나보세요.</span>
                        </div>
                    </div>

                    <div class="best_content">
                        <div class="best_content_wrap">
                            <%--best 메뉴--%>
                            <div class="best_m_menu">
                                <div class="best_m_menu_wrap">
                                    <div class="best_m_menu_wrap_inner">
                                        <ul>
                                            <%for(int i = 0; i < bestTable.Rows.Count;i++){ %>
                                                <%if(i == 0 || bestTable.Rows[i]["MAIN_SID"].ToString() != bestTable.Rows[i-1]["MAIN_SID"].ToString()){%>
                                                 <li class="m_lower_font best-li-hover <%=i == 0 ? "actives-hover":"" %>" id="hover_<%=bestTable.Rows[i]["MAIN_SID"] %>"><%=bestTable.Rows[i]["TITLE"] %></li>                                              
                                                <%} %>
                                            <%} %>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                             <%--best content--%>
                            <div class="best_content">
                                <div class="best_content_wrap_inner margin_bottom">
                                    <%for(int i = 0; i < bestTable.Rows.Count;i++){ %>
                                        <div class="m_best best-li-content <%=bestTable.Rows[i]["MAIN_SID"] %>_view">
                                            <a href="/Source/m/my/M_M_PRODUCT_DETAIL.aspx?PRODUCT_SID=<%=bestTable.Rows[i]["CHILD_OBJECT_SID"] %>">
                                             <div class="best_img">
                                                    <img src="<%=bestTable.Rows[i]["TARGET_READ_PATH"] %>" alt="best_content" />
                                                    <div class="best_txt1">
                                                         <span>BEST</span>
                                                     </div>
                                                </div>
                                            </a>
                                            <div class="best_txt">
                                                <div class="main_title m_lower_font">
                                                    <span><%=bestTable.Rows[i]["CATEGORY_NAME"] %></span>
                                                </div>
                                                <div class="sub_title m_middle_font">
                                                    <span><%=bestTable.Rows[i]["PRODUCT_NM"] %></span>
                                                </div>
                                                <div class="discount_price">
                                                    <%if(bestTable.Rows[i]["VIEW_SALE_FLAG"].ToString() == "Y"){ %>
                                                        <div class="discount_price_Area">
                                                            <div class="second_price m_middle_font">
                                                                <span><%=bestTable.Rows[i]["VIEW_SALE_RATE"] %></span>
                                                            </div>
                                                            <div class="original_price m_lower_font">
                                                                <span><%=bestTable.Rows[i]["VIEW_SALE_RATE"] %></span>
                                                            </div>
                                                        </div>                                                                                           
                                                        <div class="percent main_color m_middle_font">
                                                            <span><%=bestTable.Rows[i]["SALE_PER"] %>%</span>
                                                        </div>
                                                     <%}else{ %>      
                                                        <div class="percent main_color m_middle_font">
                                                            <span><%=bestTable.Rows[i]["SALE_PER"] %>%</span>
                                                        </div>
                                                     <%} %>
                                                </div>
                                                                                  
                                                <%--할인 적용 %--%>
                                                <div class="bottom">
                                                     <%if(bestTable.Rows[i]["USER_SALE_FLAG"].ToString() == "Y"){ %>
                                                        <div class="bottom_txt m_lowerst_font">
                                                            <span>회원 할인 <%=bestTable.Rows[i]["USER_SALE_RATE"] %>%</span>
                                                        </div>
                                                    <%} %>
                                                    <%if(bestTable.Rows[i]["REBUY_FLAG"].ToString() == "Y"){ %>
                                                        <div class="bottom_txt m_lowerst_font">
                                                            <span>재구매 추가 할인 <%=bestTable.Rows[i]["REBUY_RATE"] %>%</span>
                                                        </div>
                                                    <%} %>
                                                </div>
                                            </div>
                                        </div>
                                    <%} %>                                                      
                                </div>
                            </div>

                            <%--best 버튼--%>
                           <%-- <div class="best_button">
                                <div class="best_button_wrap">
                                    <div class="button m_middle_font">
                                        <span>상품 더보기</span>
                                        <span class="material-icons">chevron_right</span>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                    </div> 
                </div>
                <%if(recomTable.Rows.Count > 0 ){ %>
                    <%--suggection--%>
                    <div class="suggection">
                        <div class="suggection_wrap">
                            <div class="suggection_wrap_inner margin_bottom">
                                <div class="best_main_title big-font GSans">
                                    <span>이달의 추천상품</span>
                                </div>
                                <div class="best_sub_title lowerst-font GSans">
                                    <span>닥터키드니의 추 상품을 만나보세요.</span>
                                </div>
                            </div>

                            <%--suggection 상품--%>
                            <div class="suggection_content_wrap_inner margin_bottom">
                                 <%for(int i = 0; i < recomTable.Rows.Count;i++){ %>
                                    <div class="m_suggection">
                                        <a href="/Source/m/my/M_M_PRODUCT_DETAIL.aspx?PRODUCT_SID=<%=recomTable.Rows[i]["CHILD_OBJECT_SID"] %>">
                                            <div class="best_img">
                                                <img src="<%=recomTable.Rows[i]["TARGET_READ_PATH"] %>" alt="best_content" />
                                            </div>
                                        </a>
                                        <div class="suggection_txt">
                                            <div class="main_title m_lower_font">
                                                <span><%=recomTable.Rows[i]["CATEGORY_NAME"] %></span>
                                            </div>
                                            <div class="sub_title m_middle_font">
                                                <span><%=recomTable.Rows[i]["PRODUCT_NM"] %></span>
                                            </div>

                                            <div class="discount_price">
                                                <%if(recomTable.Rows[i]["VIEW_SALE_FLAG"].ToString() == "Y"){ %>
                                                    <div class="discount_price_Area">
                                                        <div class="second_price m_middle_font">
                                                            <span><%=recomTable.Rows[i]["VIEW_SALE_RATE"] %></span>
                                                        </div>
                                                        <div class="original_price m_lower_font">
                                                            <span><%=recomTable.Rows[i]["VIEW_SALE_RATE"] %></span>
                                                        </div>
                                                    </div>
                                                                                                
                                                    <div class="percent main_color m_middle_font">
                                                        <span><%=recomTable.Rows[i]["SALE_PER"] %>%</span>
                                                    </div>
                                                    <%}else{ %>      
                                                    <div class="percent main_color m_middle_font">
                                                        <span><%=recomTable.Rows[i]["SALE_PER"] %>%</span>
                                                    </div>
                                                    <%} %>
                                            </div>
                                            <div class="bottom">
                                                <%if(recomTable.Rows[i]["USER_SALE_FLAG"].ToString() == "Y"){ %>
                                                <div class="bottom_txt m_lowerst_font">
                                                    <span>회원 할인 <%=recomTable.Rows[i]["USER_SALE_RATE"] %>%</span>
                                                </div>
                                                <%} %>
                                                <%if(recomTable.Rows[i]["REBUY_FLAG"].ToString() == "Y"){ %>
                                                <div class="bottom_txt m_lowerst_font">
                                                    <span>재구매 추가 할인 <%=recomTable.Rows[i]["REBUY_RATE"] %>%</span>
                                                </div>
                                                <%} %>
                                            </div>

                                        </div>
                                    </div>
                                 <%} %>
                            </div>
                            <%--suggection 버튼--%>
                            <%--<div class="suggection_button">
                                <div class="suggection_button_wrap">
                                    <div class="button m_middle_font">
                                        <span>상품 더보기</span>
                                        <span class="material-icons">chevron_right</span>
                                    </div>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                <%} %>
                <%--비즈니스--%>
                <%if(mainViewDic["MIDDLE"].Count > 0){ %>
                <div class="magazine">
                    <div class="magazine_wrap">
                        <div class="magazine_wrap_inner">
                            <div class="magazine_img">
                                <img src="<%=mainViewDic["MIDDLE"][0].viewPath %>" alt="Alternate Text" />
                            </div>
                            <div class="magazine_txt">
                                <div class="magazine_main_txt">
                                    <p class="GSans m_main_font">
                                        <%=mainViewDic["MIDDLE"][0].title.Replace("\n","<br/>") %>
                                    </p>
                                </div>
                                <div class="magazine_sub_txt">
                                    <p class="GSans m_lower_font">
                                        <%=mainViewDic["MIDDLE"][0].Body.Replace("\n","<br/>") %>
                                    </p>
                                </div>
                                <div class="magazine_button m_lower_font">
                                    <span>자세히보기</span>
                                    <span class="material-icons">chevron_right</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%} %>
                <%--매거진--%>
                <div class="business">
                    <div class="business_wrap">
                        <div class="business_wrap_inner">
                            <div class="best_main_title big-font GSans">
                                <span>MAGAZINE</span>
                            </div>
                            <div class="best_sub_title lowerst-font GSans">
                                <span>닥터키드니의 매거진을 만나보세요.</span>
                            </div>
                        </div>
                        <div class="business_content">
                            <div class="business_content_wrap">
                                <div class="business_content_wrap_inner">
                                    <div class="business_scroll">
                                        <%for(int i = 0; i < magazine.Rows.Count;i++){ %>
                                        <%--비즈니스 content--%>
                                        <div class="business_img_content" onclick="javascript:location.href = '/Source/m/magazine/M_MAGAZINE_DETAIL_LIST.aspx?sid=<%=magazine.Rows[i]["BOARD_SID"] %>';">
                                            <div class="business_img">
                                                <img data-src="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=magazine.Rows[i]["TARGET_READ_PATH"] %>" alt="Alternate Text" />
                                                <%if(magazine.Rows[i]["FAQ_TYPE"].ToString() == "PRODUCT"){ %>
                                                    <div class="ptoduct_txt m_middle_font">
                                                        <span>PRODUCT</span>
                                                    </div>
                                                <%}else{ %>
                                                    <div class="ptoduct_txt m_middle_font issue_color">
                                                        <span class="mono_back_color">ISSUE</span>
                                                    </div>
                                                <%} %>
                                            </div>
                                            <%--비즈니스 텍스트--%>
                                            <div class="business_txt_content">
                                                <div class="business_main_txt m_ma_font">
                                                    <span><%=magazine.Rows[i]["BOARD_TITLE"] %></span>
                                                </div>
                                                <div class="business_sub_txt">
                                                    <p class="m_lowerst_font">
                                                        <%=magazine.Rows[i]["BOARD_SUB_TITLE"] %>
                                                    </p>
                                                </div>
                                                <div class="business_date_content m_lowerst_font">
                                                    <span><%=magazine.Rows[i]["POST_TIME_VIEW"] %></span>
                                                </div>
                                            </div>
                                        </div>
                                        <%} %>  
                                    </div>                           
                                </div>
                            </div>
                        </div>
                         <%--비즈니스 버튼--%>
                        <%--<div class="suggection_button business_button">
                            <div class="suggection_button_wrap">
                                <div class="button m_middle_font">
                                    <span>닥터키드니 매거진 더보기</span>
                                    <span class="material-icons">chevron_right</span>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
                <%--ring 이미지--%>
                <%if(mainViewDic["LOW"].Count > 0){ %>
                    <div class="ring">
                        <div class="ring_img" style="background-color:<%=mainViewDic["LOW"][0].Body %>">
                            <img data-src="<%=mainViewDic["LOW"][0].viewPath %>" alt="<%=mainViewDic["LOW"][0].title %>" />
                        </div>
                    </div>
                 <%} %>
                <%--수정0728 .user_Point_Area 마이페이지 메인에만 적용--%>
                <div class="user">  
                    <div class="user_Point_Area">
                        <%--등급 그래프--%>
                        <div class="user_Grade_Graph_Area">
                            <div class="user_Grade_Graph_Area_T">
                                <div class="inline_flex">
                                    <div class="middle-font main_color font_weight_500">DrKeyDni </div>
                                    <div class="middle-font mono_sub_color">님,</div>
                                </div>
                                <div class="middle-font mono_sub_color">마이크로 인플루언서까지</div>
                                <div class="inline_flex">
                                    <div class="middle-font main_color under_Line font_weight_500">180,000원 </div>
                                    <div class="middle-font mono_sub_color">&nbsp;남았어요!</div>
                                </div>
                            </div>

                            <div class="user_Grade_Graph_Area_M">
                                <div class="user_Grade_Graph">
                                    <canvas id="myChart_donut"></canvas>
                                </div>
                            </div>

                            <div class="user_Grade_Graph_Area_B">
                                <div class="lower-font mono_sub_color">등급달성률</div>
                                <div class="main_color percent_under">75%</div>
                            </div>

                        </div>
                        <%--추가포인트--%>
                        <div class="user_More_Point_Area">
                            <div class="user_More_Point_Area_T">
                                <div>
                                    <div class="middle-font user_Name">DrKeyDni <span class="middle-font user_Name_Info">님,</span></div>
                                    <div class="inline_flex">
                                            <div class="middle-font user_More_Point_Txt under_Line">'제품'</div>
                                            <div class="middle-font user_More_Point_Txt">은 잘 받으셨나요?</div>
                                    </div>
                                    <div class="middle-font user_More_Point_Txt">지금 바로</div>
                                </div>
                            </div>
                            <div class="user_More_Point_Area_B">
                                <div class="user_More_Point_Area_B_T">
                                    <div class="main_color point">5,000<span class="main_color point_info"> 원</span></div>
                                </div>
                                <div class="user_More_Point_Area_B_B">
                                    <div class="lower-font mono_sub_color point_Txt">추가로 받아가세요!</div>
                                </div>
                            </div>
                        </div>
                        <%--total 할인금--%>
                        <div class="user_More_Point_Area">
                            <div class="user_More_Point_Area_T">
                                <div>
                                    <div class="middle-font user_Name">DrKeyDni <span class="middle-font user_Name_Info">님,</span></div>
                                    <div class="inline_flex">
                                            <div class="middle-font user_More_Point_Txt">지금까지 받아가신</div>
                                    </div>
                                    <div class="middle-font user_More_Point_Txt">할인 금액</div>
                                </div>
                            </div>
                            <div class="user_More_Point_Area_B">
                                <div class="user_More_Point_Area_B_T">
                                    <div class="main_color point">125,000<span class="main_color point_info"> 원</span></div>
                                </div>
                                <div class="user_More_Point_Area_B_B">
                                    <div class="lower-font mono_sub_color point_Txt">큰 사랑에 감사드려요!</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--수정0728 .user_Point_Area 마이페이지 메인에만 적용--%>

                <%--youtube--%>
                <div class="youtube">
                    <div class="youtube_wrap">
                        <div class="youtube_wrap_inner">
                            <%--youtube 텍스트--%>
                            <div class="best_main_title big-font GSans">
                                <span>닥터피앤케이케어 미디어</span>
                            </div>
                            <div class="best_sub_title lowerst-font GSans">
                                <span>닥터피앤케이케어 미디어를 만나보세요.</span>
                            </div>
                        </div>
                        <%--youtube content--%>
                        <div class="m_banner wrappers">
                            <div class="mb_box_mid banSwiper2">
                                <div class="swiper-wrapper mb_inner">
                                    <%if(mainViewDic["MEDIA"].Count > 0){ %>
                                        <%for(int i = 0; i < mainViewDic["MEDIA"].Count;i++){ %>
                                            <div class="mb_box swiper-slide mb_box_<%=i+1 %> <%=i == 0 ? "active" : "" %>">
                                                <iframe width="100%" height="100%" src="<%=mainViewDic["MEDIA"][i].Url %>"
                                                    title="YouTube video player" frameborder="0"
                                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                                    allowfullscreen></iframe>
                                            </div>
                                        <%} %>
                                    <%} %>
                                </div>
                            </div>
                            <%--<button class="mb_btn_l" type="button">
                                <span class="material-icons">chevron_left</span>
                            </button>
                            <button class="mb_btn_r" type="button">
                                <span class="material-icons">navigate_next</span>
                            </button>--%>
                        </div>
                    </div>
                </div>
                <%--모바일 스케일--%>
                <%if(mainViewDic["WIDE"].Count>0){ %>
                <div data-serialscrolling-target="information" id="information">

                    <%--<h5 class="eng-font">About US</h5>
                    <h2 class="eng-font">Who we are</h2>--%>
                    <div class="info-box">
                        <div class="info-con1" style="background-image:url('<%=mainViewDic["WIDE"][0].viewPath%>');">
                        <div class="info-con1-box">
                            <h3 class="GSans"><%=mainViewDic["WIDE"][0].title %></h3>
                            <p class="m_middle_font"><%=mainViewDic["WIDE"][0].Body.Replace("\n", "<br/>")%></p>
                            <a href="#">자세히보기</a>
                        </div>
                        </div>
                    </div>
                </div>
                <%} %>
                <%--footer--%>
                <div class="footer">
                    <div class="footer_wrap">
                        <div class="footer_wrap_inner">
                            <div class="footer_content">
                                <div class="footer_top">
                                    <div class="footer_top_content m_lower_font">
                                        <span>이용약관</span>
                                    </div>
                                    <div class="footer_top_content m_lower_font">
                                        <span>개인정보취급방침</span>
                                    </div>
                                    <div class="footer_top_content m_lower_font">
                                        <span>이용안내</span>
                                    </div>
                                </div>
                                <div class="footer_center">
                                    <div class="title1 m_lower_font">
                                        <span>닥터피앤케이케어 고객센터</span>
                                    </div>
                                    <div class="number">
                                        <div class="number_txt GSans m_main_font">
                                             <span>1533-0958</span>
                                        </div>
                                        <a href="/Source/m/cs/M_CS_QUESTIONLIST.aspx">
                                            <div class="number_txt_button m_lower_font">
                                                <span>1:1문의</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="footer_bottom">
                                    <div class="footer_bottom_txt">
                                        <p class="m_lower_font">
                                            평일 10:00 am ~ 17:00 pm<br />
                                            점심 12:00 pm ~ 13:00pm<br />
                                            주말 및 공휴일 휴무
                                        </p>
                                    </div>
                                    <div class="footer_bottom_button">
                                        <a href="/Source/m/cs/M_CS_QUESTIONLIST.aspx">
                                            <div class="number_txt_button m_lower_font">
                                                <span>Q&A</span>
                                            </div>
                                        </a>
                                        <a href="/Source/m/cs/M_CS_QUESTIONLIST.aspx">
                                            <div class="number_txt_button m_lower_font">
                                                <span>공지사항</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="company_title m_middle_font">
                                    <span>닥터피앤케이케어(주)</span>
                                </div>
                                <div class="company_content">
                                    <p class="m_lower_font">
                                        대표이사 권오득<br />
                                        부산광역시 기장군 기장읍 당사로4길4 203호 닥터피앤케이케어 주식회사<br />
                                        사업자등록번호 : 738-87-03011<br />
                                        통신판매업 : 제2022-부산기장-0571호<br />
                                        개인정보관리책임자 : 권오득 (dr.keydni@gmail.com)
                                    </p>
                                    <p class="m_lower_font">
                                        Copyright 2023. Dr.KeyDni. All rights reserved.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
