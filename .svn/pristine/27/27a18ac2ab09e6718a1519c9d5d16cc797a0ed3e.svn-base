<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="drKid.Source.client.main" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Security-Policy" content="default-src * 'self' 'unsafe-inline' 'unsafe-eval' data: content:"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, viewport-fit=cover"/>
    <meta name="theme-color" content="#fff"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="msapplication-tap-highlight" content="no"/>
    <title><%=metaTable.Rows[0]["OG_SITENAME"] %></title>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <%if(metaTable != null && metaTable.Rows.Count > 0){ %>
        <meta property="og:type" content="website"/>
        <meta property="og:title" content="<%=metaTable.Rows[0]["OG_TITLE"] %>"/>
        <meta property="og:image" content="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=metaTable.Rows[0]["OG_IMAGE"] %>"/>
        <meta property="og:url" content="<%=metaTable.Rows[0]["OG_URL"] %>"/>
        <meta property="og:description" content="<%=metaTable.Rows[0]["OG_DESCRIPTION"] %>"/>
        <meta property="og:site_name" content="<%=metaTable.Rows[0]["OG_SITENAME"] %>"/>
        <%--<meta property="og:site_name" content="닥터키드니 - 약사가 개발한 신장 전문 브랜드"/>--%>
        <meta name="naver-site-verification" content="<%=metaTable.Rows[0]["NAVER_SITE_TAG"] %>" />
        <meta name="google-site-verification" content="<%=metaTable.Rows[0]["GOOGLE_SITE_TAG"] %>" />
        <link rel="shortcut icon" type="image/x-icon" href="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=metaTable.Rows[0]["FAVICON"] %>" />
    <%} %>
    <link rel="stylesheet" href="/Source/css/default.css"/>
    <link rel="stylesheet" href="/Source/css/root.css"/>
    <link rel="stylesheet" href="/Source/css/font.css"/>
    <!--05.31 이용호 material icon cdn 추가-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <!--05.31 이용호 main css 추가-->
    <link rel="stylesheet" href="/Source/client/css/main.css"/>
    <!--06.08 이용호 swiper css 추가-->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <!--05.31 이용호 제이쿼리 cdn 추가-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   
    <script src="/Source/client/js/gsap.min.js"></script>
    <script src="/Source/client/js/jquery.serialscrolling.min.js"></script>
    <script src="/Source/client/js/ScrollTrigger.min.js"></script>

    <script src="/Source/client/js/main_option.js"></script>
    <!-- Lazy 관련 Set Up -->
    <script src="/js/lazyload.js"></script>
    <link rel="stylesheet" href="/Source/client/css/lazyCss.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    <script>
        let $SesstionBusketKey = '';

        function guid() {
            function s4() {
                return Math.floor((1 + Math.random()) * 0x10000)
                    .toString(16)
                    .substring(1);
            }
            return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
                s4() + '-' + s4() + s4() + s4();
        }

        function setSesstionKeyData(string) {
            $SesstionBusketKey = string;
        }

        $SesstionBusketKey = sessionStorage.getItem('BusketKey') || guid();
        sessionStorage.setItem('BusketKey', $SesstionBusketKey);
        <%if(baseUser.userId != null){ %>
        setSesstionKeyData('<%=baseUser.userId%>');
        <%}%>
    </script>
    <style>
        .slide_item {
            height: 850px;
        }

        /*slide_item*/
               
       .slide_pagination > li {
          color: #4a8b8d;
          cursor: pointer;
          font-size: 40px;
        }
        
         .first_wrapper {
             display: block;
         }
         .wrapper {
            display: none;
        }

        .swiper-button-next {
            right:40px;
            color:black;
            border-color:black;
        }

        .swiper-button-prev {
            left:40px;
            color:black;
            border-color:black;
        }

        .swiper-button-next,
        .swiper-button-prev {
            background-image:none;
        }

        @media screen and (max-width:2560px) {
          .slide_item {
            height: 1000px;
          }
        }

        @media screen and (max-width:1920px) {
          .slide_item {
            height: 850px;
          }
        }
    </style>
    
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
                location.href = "/Source/client/member/login/C_LOGIN_Page.aspx";
            });
            logoutBtn.on("click", function () {
                console.log("로그아웃");
                document.getElementById("Logout_to_Server").click();
            });

            joinBtn.on("click", function () {
                location.href = "/Source/client/member/C_MEMBER_JOINSUPPORT.aspx";
            });
            helpBtn.on("click", function () {
                location.href = "/Source/client/CS/C_CS_QUESTIONLIST.aspx"; // 고객센터 - 자주묻는질문
            });
            mainbBtn.on("click", function () {
                console.log("메인로고 클릭")
                location.href = "/Source/client/main.aspx";
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
            $('#GO_BEST').on('click', function () {
                location.href = "/Source/client/mainProd/C_MAINPROD_BEST.aspx";
            });
            //카테고리 - 이달의 추천상품 페이지 이동
            $('#GO_RECOMMEND').on('click', function () {
                location.href = "/Source/client/mainProd/C_MAINPROD_RECO.aspx";
            });

        });
    </script>

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
</head>
<body>
    <form id="form1" runat="server">
        <a href="/Source/client/MY/C_MY_HELPDESKLIST.aspx">
            <div class="customer_img">
                <div class="customer_img_wrap">
                    <img src="/Source/client/image/customer_img.svg" alt="customer_img"/>
                </div>
                <div class="customer_img_txt mono_sub_color lower-font">
                    <span>
                        전문가의<br />
                        1:1 맞춤상담
                    </span>
                </div>
            </div>
        </a>

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

        <div class="header">
            <div class="header_inner">
              <div class="header_inner_wrap">
                <!--헤더 top-->
                  <%if(mainViewDic["BELT"].Count > 0){ %>
                    <div class="header_inner_wrap_top" style="background-color:<%=mainViewDic["BELT"][0].Body %>;">
                      <div class="header_inner_wrap_top_txt" onclick="javascript:location.href = '<%=mainViewDic["BELT"][0].Url %>';">
                        <span><%=mainViewDic["BELT"][0].title %></span>
                      </div>
                        <div class="clear">
                            <span class="material-icons">clear</span>
                        </div>
                    </div>
                  <%} %>
                <div class="header_inner_wrap_bottom">
                    <div class="header_inner_wrap_bottom_member">
                        <%if(baseUser.userId==null){ %>

                        <div class="member-icon state_un_login">
                            <span class="go_login">로그인</span>
                            <span class="go_join">회원가입</span>
                            <span class="go_help">고객센터</span>
                        </div>
                        <%} %>
                        <%else{ %>
                        <div class="member-icon state_login">
                            <span class="go_logout">로그아웃</span>
                            <a style="display:none;" href="#" id="Logout_to_Server" name="Logout_to_Server" runat="server" onserverclick="Logout_to_Server_ServerClick">로그아웃</a>
                            <span class="go_help">고객센터</span>
                        </div>
                        <%} %>
                    </div>
                    <div class="header_inner_wrap_bottom_center">
                        <div class="bottom_center_block"></div>
                        <div class="bottom_center">
                            <div class="logo">
                                <a href="/Source/client/main.aspx"><img src="/Source/client/image/new-logo.png" alt="logo" id="main_logo" class="notFade"  style="cursor:pointer;"/></a>
                            </div>
                        </div>
                    </div>
                    <div class="header_inner_wrap_bottom_menu">
                        <div class="header_inner_wrap_bottom_menu_wrap">
                            <div class="header_inner_wrap_bottom_menu_wrap_inner">
                                <div class="heaer_menu">
                                    <div class="menu middle-font" id="menu1">
                                         <span class="material-icons">menu</span>
                                         <span>카테고리</span> 
                                    </div>
                                    <%if(cateGoryTable != null){ %>
                                        <%for(int i = 0; i <  cateGoryTable.Rows.Count;i++){ %>
                                            <!-- 대메뉴가 아닐경우 넘어감.  -->
                                            <%if (cateGoryTable.Rows[i]["LEVEL"].ToString() != "1") continue; %>
                                            <div class="menu middle-font mono_point_color <%=cateGoryTable.Rows[i]["USED_TYPE"].ToString() == "CATE" ? "menu-hover-class" : "" %>" id="menu_<%=cateGoryTable.Rows[i]["VIEW_SID"]%>">
                                                <a href="<%=cateGoryTable.Rows[i]["VIEW_PATH"] %>">
                                                    <span><%=cateGoryTable.Rows[i]["TITLE"] %></span>
                                                </a>
                                            </div>
                                        <%} %>
                                    <%} %>
                                    <div class="menu header_menu_blcok main_bg_color mono_back_color influ_menu influ_width">
                                        <span>인플루언서</span>
                                    </div>
                                </div>

                                <div class="bottom_center_icon">
                                    <div class="bottom_center_icon_wrap">
                                        <span class="material-icons" id="search_button">search</span>
                                        <a href="/Source/client/my/C_MY_MYPAGEMAIN.aspx">
                                            <span class="material-icons">perm_identity</span>
                                        </a>
                                        <a href="/Source/client/my/C_MY_BASKET.aspx">
                                            <span class="material-icons">shopping_cart</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
                            <%--<div class="swiper-slide second_silde">
                                <img src="/Source/client/image/main_popup_slide2.jpg" alt="Alternate Text" />
                            </div>--%>
                        </div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                        <%--팝업창 닫기--%>
                        <div class="clear_under">
                            <span>다음에볼게요</span>
                            <span class="material-icons">clear</span>
                        </div>
                    </div>
                </div>
            </div>
        <%} %>

        <div class="search">
            <div class="search_wrap">
                <div class="search_wrap_inner">
                    <div class="search_clear">
                        <span class="material-icons">clear</span>                 
                    </div>

                    <div class="search_main_title">
                        <span>제품검색</span>
                    </div>

                    <div class="title_search">
                        <input type="text" placeholder="신당케어"/>
                        <span class="material-icons">search</span>
                    </div>

                    <div class="bottom_title">
                        <div class="bottom_main_title">
                            <span>인기 검색어</span>
                        </div>
                        <div class="circle_title">
                            <div class="circle_title_content">
                                <span>신당케어</span>
                            </div>
                            <div class="circle_title_content">
                                <span>영물오리진</span>
                            </div>
                            <div class="circle_title_content">
                                <span>패키지</span>
                            </div>
                            <div class="circle_title_content">
                                <span>비알화강</span>
                            </div>
                            <div class="circle_title_content">
                                <span>지노시스템</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--메인 content-->
        <div class="main_slider">
            <div class="slide slide_wrap">
                <%if(mainViewDic["TOP"].Count > 0){ %>
                    <%for(int i = 0; i < mainViewDic["TOP"].Count;i++){%>
                        <div class="slide_item" onclick="javascript:location.href = '<%=mainViewDic["TOP"][i].Url %>';">
                            <img src="<%=mainViewDic["TOP"][i].viewPath %>" alt="<%=mainViewDic["TOP"][i].title %>" class="notFade"/>
                        </div>
                    <%} %>
                <%} %>
                <div class="slide_prev_button slide_button">
                    <span class="material-icons">chevron_left</span>
                </div>
                <div class="slide_next_button slide_button">
                    <span class="material-icons">chevron_right</span>
                </div>
                <ul class="slide_pagination"></ul>
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
                                                <span><%=cateGoryTable.Rows[i]["TITLE"] %></span>
                                            </a>
                                            <%if (i == cateGoryTable.Rows.Count - 1 || cateGoryTable.Rows[i + 1]["PARENT_SID"].ToString() != _nowSid){ %>
                                                </div>
                                                    <div class="drop_event_contnet_img">
                                                        <div class="drop_event_contnet_img_wrap">
                                                            <img src="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=_bigImagePath %>" alt="dropImg" class="notFade" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <%} %>
                            <%} %>
                                    
                <%} %>
            <%} %>
            <div class="heaer_drop dropdown" id="dropdown1">
                <div class="heaer_drop_wrap">
                    <div class="heaer_drop_wrap_inner">
                        <div class="drop_content">
                            <div class="drop_content_best">
                                <div class="drop_content_best_title middle-font main_color" id="GO_BEST">
                                    <span>BEST</span>
                                </div>
                                <div class="drop_content_best_title middle-font main_color" id="GO_RECOMMEND">
                                    <span>이달의 추천상품</span>
                                </div>
                                <div class="drop_content_best_title middle-font main_color">
                                    <span>닥터키드니 미디어</span>
                                </div>
                                <div class="influencer main_color">
                                    <span>인플루언서</span>
                                </div>
                            </div>
                            <div class="drop_content_dbdata">
                                <%int _count = 0; %>
                                <%for(int i = 0; i <  cateGoryTable.Rows.Count;i++){ %>
                                    <%if(cateGoryTable.Rows[i]["LEVEL"].ToString() == "1" && _count == 0){ %>
                                        <div class="drop_content_sell">
                                    <%} %>
                                        <a href="<%=cateGoryTable.Rows[i]["VIEW_PATH"] %>">
                                            <div class="<%=cateGoryTable.Rows[i]["LEVEL"].ToString() == "1" ? "drop_content_title middle-font " : "drop_content_sub_title lower-font" %> mono_main_color">
                                                <span><%=cateGoryTable.Rows[i]["TITLE"] %></span>
                                            </div>
                                        </a>
                                    <%if (cateGoryTable.Rows[i]["LEVEL"].ToString() == "1") { _count++; } else { _count = 0; } %>
                                    <%if (_count >= 3 || i == cateGoryTable.Rows.Count - 1 || (cateGoryTable.Rows[i + 1]["PARENT_SID"].ToString() != cateGoryTable.Rows[i]["PARENT_SID"].ToString() && cateGoryTable.Rows[i]["LEVEL"].ToString() != "1")){ %>
                                        </div>
                                    <%_count = 0;} %>
                                <%} %>
                                <div class="dop_img">
                                    <div class="dop_img_wrap">
                                        <img src="/Source/client/image/drop_img.png" alt="dropImg"  class="notFade" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="best">
            <div class="best_wrap">
                <div class="best_wrap_inner">
                    <div class="best_txt">
                        <div class="main_txt main_title-font">
                            <span class="GSans">BEST</span>
                        </div>
                        <div class="sub_txt lower-font">
                            <span class="mono_dea_color">닥터키드니의 베스트 상품을 만나보세요.</span>
                        </div>
                    </div>
                    <div class="best_menu">
                        <ul>
                            <%for(int i = 0; i < bestTable.Rows.Count;i++){ %>
                                <%if(i == 0 || bestTable.Rows[i]["MAIN_SID"].ToString() != bestTable.Rows[i-1]["MAIN_SID"].ToString()){%>
                                    <li class="best-li-hover <%=i == 0 ? "actives-hover":"" %>" id="hover_<%=bestTable.Rows[i]["MAIN_SID"] %>"><%=bestTable.Rows[i]["TITLE"] %></li>
                                <%} %>
                            <%} %>
                        </ul>
                    </div>
                    <div class="best_content">
                        <div class="best_content_wrap wrapper" style="display:block">
                            <div class="best_content_wrap_inner">
                                <%for(int i = 0; i < bestTable.Rows.Count;i++){ %>
                                    <div class="content best-li-content <%=bestTable.Rows[i]["MAIN_SID"] %>_view">
                                        <%--이니시스테스트--%>
                                        <a href="/Source/client/member/C_C_PRODUCT_DETAIL.aspx?PRODUCT_SID=<%=bestTable.Rows[i]["CHILD_OBJECT_SID"] %>">
                                        <%--<a href="/Source/client/member/C_PRODUCT_DETAIL.aspx?PRODUCT_SID=<%=bestTable.Rows[i]["CHILD_OBJECT_SID"] %>">--%>
                                            <div class="content_wrap">
                                                <img data-src="<%=bestTable.Rows[i]["TARGET_READ_PATH"] %>" alt="best_content" />
                                                <div class="best_txt lowerst-font">
                                                    <span>BEST</span>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="relation_Item_All_Info_Area">

                                        
                                            <div class="relation_Company_Info mono_dea_color">
                                                <span><%=bestTable.Rows[i]["CATEGORY_NAME"] %></span>
                                            </div>
                                            <div class="relation_Item_Name_Info">
                                                <span><%=bestTable.Rows[i]["PRODUCT_NM"] %></span>
                                            </div>
                                            <div class="relation_Item_Price_Area">
                                                <%if(bestTable.Rows[i]["VIEW_SALE_FLAG"].ToString() == "Y"){ %>
                                                    <div class="relation_Item_Discount_Price big-font">
                                                        <span><%=bestTable.Rows[i]["VIEW_SALE_RATE"] %></span>
                                                    </div>
                                                    <div class="relation_Item_Discount_Price_Before lower-font">
                                                        <span><%=bestTable.Rows[i]["VIEW_SALE_RATE"] %></span>
                                                    </div>
                                                    <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                                        <span><%=bestTable.Rows[i]["SALE_PER"] %>%</span>
                                                    </div>
                                                <%}else{ %>
                                                    <div class="relation_Item_Discount_Price big-font">
                                                        <span><%=bestTable.Rows[i]["SALE_RATE"] %></span>
                                                    </div>
                                                <%} %>
                                            </div>
                                            <div class="relation_Item_Price_Info_Area">
                                                <%if(bestTable.Rows[i]["USER_SALE_FLAG"].ToString() == "Y"){ %>
                                                    <div class="relation_Item_Price_Info lowerst-font">회원 할인 <%=bestTable.Rows[i]["USER_SALE_RATE"] %>%</div>
                                                <%} %>
                                                <%if(bestTable.Rows[i]["REBUY_FLAG"].ToString() == "Y"){ %>
                                                    <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 <%=bestTable.Rows[i]["REBUY_RATE"] %>%</div>    
                                                <%} %>
                                            </div>                                                                                            
                                        </div>
                                    </div>
                                <%} %>
                            </div>
                        </div>
                    </div>                  
                </div>
            </div>
        </div>
        <%if(recomTable.Rows.Count > 0 ){ %>
        <div class="suggection">
            <div class="suggection_wrap">
                <div class="suggection_wrap_inner">
                    <div class="suggection_txt">
                        <div class="main_txt main_title-font">
                            <span class="GSans">이달의 추천상품</span>
                        </div>
                        <div class="sub_txt lower-font">
                            <span class="mono_dea_color">닥터키드니의 추천 상품을 만나보세요.</span>
                        </div>
                    </div>
                     <div class="suggection_content">
                        <div class="suggection_content_wrap">
                            <div class="suggection_content_wrap_inner">
                                <%for(int i = 0; i < recomTable.Rows.Count;i++){ %>
                                    <div class="content">
                                        <%--이니시스테스트--%>
                                        <a href="/Source/client/member/C_C_PRODUCT_DETAIL.aspx?PRODUCT_SID=<%=bestTable.Rows[i]["CHILD_OBJECT_SID"] %>">
                                        <%--<a href="/Source/client/member/C_PRODUCT_DETAIL.aspx?PRODUCT_SID=<%=recomTable.Rows[i]["CHILD_OBJECT_SID"] %>">--%>
                                            <div class="content_wrap">
                                                <img data-src="<%=recomTable.Rows[i]["TARGET_READ_PATH"] %>" alt="best_content" />
                                            </div>
                                        </a>
                                        <div class="relation_Item_All_Info_Area">
                                            <div class="relation_Company_Info mono_dea_color">
                                                <span><%=recomTable.Rows[i]["CATEGORY_NAME"] %></span>
                                            </div>
                                            <div class="relation_Item_Name_Info">
                                                <span><%=recomTable.Rows[i]["PRODUCT_NM"] %></span>
                                            </div>
                                            <div class="relation_Item_Price_Area">
                                                <%if(recomTable.Rows[i]["VIEW_SALE_FLAG"].ToString() == "Y"){ %>
                                                    <div class="relation_Item_Discount_Price big-font">
                                                        <span><%=recomTable.Rows[i]["VIEW_SALE_RATE"] %></span>
                                                    </div>
                                                    <div class="relation_Item_Discount_Price_Before lower-font">
                                                        <span><%=recomTable.Rows[i]["SALE_RATE"] %></span>
                                                    </div>
                                                    <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                                        <span><%=recomTable.Rows[i]["SALE_PER"] %>%</span>
                                                    </div>
                                                <%}else{ %>
                                                    <div class="relation_Item_Discount_Price big-font">
                                                        <span><%=recomTable.Rows[i]["SALE_RATE"] %></span>
                                                    </div>
                                                <%} %>
                                            </div>
                                            <div class="relation_Item_Price_Info_Area">
                                                <%if(recomTable.Rows[i]["USER_SALE_FLAG"].ToString() == "Y"){ %>
                                                    <div class="relation_Item_Price_Info lowerst-font">회원 할인 <%=bestTable.Rows[i]["USER_SALE_RATE"] %>%</div>
                                                <%} %>
                                                <%if(recomTable.Rows[i]["REBUY_FLAG"].ToString() == "Y"){ %>
                                                    <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 <%=bestTable.Rows[i]["REBUY_RATE"] %>%</div>    
                                                <%} %>
                                            </div>                                                                                            
                                        </div>
                                    </div>
                                <%} %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%} %>
        <%if(mainViewDic["MIDDLE"].Count > 0){ %>
        <div class="business_wrap">
            <div class="business_wrap_inner">
                <div class="business_wrap_inner_wrap">
                    <div class="business">
                        <div class="business_txt">
                            <div class="business_txt_main">
                                <p class="GSans">
                                    <%=mainViewDic["MIDDLE"][0].title.Replace("\n","<br/>") %>
                                </p>
                            </div>
                            <div class="business_txt_sub">
                                <p class="GSans">
                                   <%=mainViewDic["MIDDLE"][0].Body.Replace("\n","<br/>") %>
                                </p>
                            </div>
                            <div class="business_button">
                                <div class="business_button_wrap">
                                    <div class="business_button_wrap_inner">
                                        <div class="business_button_wrap_txt mono_back_bg_color">
                                            <span>자세히 보기</span>
                                            <span class="material-icons">navigate_next</span>
                                        </div>
                                    </div>                                                          
                                </div>
                            </div>
                        </div>
                        <div class="business_video mono_back_bg_color">
                            <div class="business_video_wrap"> 
                               <img data-src="<%=mainViewDic["MIDDLE"][0].viewPath %>" alt="Alternate Text" />                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%} %>

        <div class="magazine">
            <div class="magazine_wrap">
                <div class="magazine_wrap_inner">

                    <div class="magazine_txt">
                        <div class="main_txt main_title-font">
                            <span class="GSans">MAGAZINE</span>
                        </div>
                        <div class="sub_txt lower-font">
                            <span class="mono_dea_color">닥터키드니의 매거진을 만나보세요.</span>
                        </div>
                    </div>
                    
                     <div class="magazine_content">
                        <div class="magazine_content_wrap">
                            <div class="magazine_content_wrap_inner">
                                <%for(int i = 0; i < magazine.Rows.Count;i++){ %>
                                <div class="content" onclick="javascript:location.href = '/Source/client/magazine/C_MAGAZINE_DETAIL.aspx?sid=<%=magazine.Rows[i]["BOARD_SID"] %>';">
                                    <div class="content_img">
                                        <img data-src="<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=magazine.Rows[i]["TARGET_READ_PATH"] %>" alt="Alternate Text" />
                                    </div>
                                    <%if(magazine.Rows[i]["FAQ_TYPE"].ToString() == "PRODUCT"){ %>
                                        <div class="magazine_bottom_txt sub_bg_color">
                                            <span class="mono_back_color">PRODUCT</span>
                                        </div>
                                    <%}else{ %>
                                        <div class="magazine_bottom_txt issue_bg">
                                            <span class="mono_back_color">ISSUE</span>
                                        </div>
                                    <%} %>
                                    <div class="magazine_txt_product">
                                        <div class="magazine_txt_product_main">
                                            <span><%=magazine.Rows[i]["BOARD_TITLE"] %></span>
                                        </div>
                                        <div class="magazine_txt_product_sub mono_dea_color">
                                            <span><%=magazine.Rows[i]["BOARD_SUB_TITLE"] %></span>
                                        </div>
                                        <div class="magazine_txt_product_date mono_dea_color">
                                            <span><%=magazine.Rows[i]["POST_TIME_VIEW"] %></span>
                                        </div>
                                    </div>                  
                                </div>
                                <%} %>
                            </div>
                        </div>
                    </div>

                    <div class="magazine_box">
                        <a href="/Source/client/magazine/C_MAGAZINE_LIST.aspx">
                            <div class="magazine_box_wrap">
                                <span>닥터키드니 매거진 더보기</span>
                                <span class="material-icons">navigate_next</span>
                            </div>
                        </a>
                    </div>

                </div>
            </div>
        </div>
        <%if(mainViewDic["LOW"].Count > 0){ %>
        <div class="ring">
            <div class="ring_wrap" style="background-color:<%=mainViewDic["LOW"][0].Body %>">
                <div class="ring_wrap_inner">
                    <div class="ring_img">
                        <img data-src="<%=mainViewDic["LOW"][0].viewPath %>" alt="<%=mainViewDic["LOW"][0].title %>" />
                    </div>
                </div>
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
                        <div class="main_color percent">75%</div>
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

        <div class="youtube">
            <div class="youtube_wrap">
                <div class="youtube_wrap_inner">
                    <div class="youtube_txt">
                        <div class="main_txt main_title-font mono_point_color">
                            <span class="GSans">닥터피앤케이케어 미디어</span>
                        </div>
                        <div class="sub_txt lower-font">
                            <span class="mono_dea_color">닥터피앤케이케어 최신 미디어를 만나보세요.</span>
                        </div>
                    </div>

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
                        <button class="mb_btn_l" type="button">
                            <span class="material-icons">chevron_left</span>
                        </button>
                        <button class="mb_btn_r" type="button">
                            <span class="material-icons">navigate_next</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        
        <%if(mainViewDic["WIDE"].Count>0){ %>
        <div data-serialscrolling-target="information" id="information">
            <%--<h5 class="eng-font">About US</h5>
            <h2 class="eng-font">Who we are</h2>--%>
            <div class="info-box">
                <div class="info-con1" style="background-image:url('<%=mainViewDic["WIDE"][0].viewPath%>');">
                <div class="info-con1-box">
                    <h3><%=mainViewDic["WIDE"][0].title %></h3>
                    <p><%=mainViewDic["WIDE"][0].Body.Replace("\n", "<br/>")%></p>
                    <a href="#">자세히보기</a>
                </div>
                </div>
            </div>
        </div>
        <%} %>
        <div class="footer">
            <div class="footer_wrap">
                <div class="footer_wrap_inner mono_point_bg_color">
                    <div class="footer_content">
                        <div class="dr_footer_content">
                            <div class="bottom_logo">
                                <img data-src="/Source/client/image/new-footer.png" alt="bottom_logo" />
                            </div>
                            <div class="bottom_txt">
                                <p class="mono_line_color four-font">
                                    닥터피앤케이케어(주) [사업자정보확인]
                                </p>
                                 <p class="mono_line_color four-font">
                                    대표이사 권오득 ㅣ 부산광역시 기장군 기장읍 당사로4길4 203호 닥터피앤케이케어 주식회사 ㅣ 사업자등록번호 : 738-87-03011 ㅣ통신판매업 : 제2022-부산기장-0571호<br />
                                    개인정보관리책임자 : 권오득 (dr.keydni@gmail.com)
                                </p>
                                 <p class="mono_line_color four-font">
                                    Copyright 2023. Dr.KeyDni. All rights reserved.
                                </p>
                                <p class="mono_line_color four-font">
                                    이용약관 개인정보취급방침 이용안내
                                </p>
                            </div>
                        </div>
                        <div class="customer">
                            <div class="customer_wrap">
                                <div class="customer_wrap_inner">
                                    <div class="customer_txt mono_line_color four-font">
                                        <span>고객센터</span>
                                    </div>
                                    <div class="tel">
                                        <div class="tel_num mono_line_color four-font">
                                            <span>1533-0958</span>
                                        </div>
                                        <div class="inquiry mono_line_color four-font">
                                            <span>1:1문의</span>
                                        </div>
                                    </div>
                                    <div class="date">
                                        <div class="date_wrap">
                                            <div class="date_wrap_inner">
                                                <p class="mono_line_color four-font">
                                                    평일 10:00 am ~ 17:00 pm <br />
                                                    점심 12:00 pm ~ 13:00pm <br />
                                                    주말 및 공휴일 휴무
                                                </p>
                                            </div>
                                            <div class="right_inquiry">
                                                <div class="inquiry mono_line_color four-font">
                                                    <span>Q&A</span>
                                                </div>
                                                <div class="inquiry mono_line_color four-font">
                                                    <span>공지사항</span>
                                                </div>
                                            </div>
                                        </div>                                       
                                    </div>
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
