<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_COMMUNITY_MINIHOME.aspx.cs" Inherits="drKid.Source.m.community.M_COMMUNITY_MINIHOME" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .myPage {
           background-color:#FFFFFF;
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

        .myPageHeader {
            padding: 0 0.75rem;
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
            visibility: hidden
        }

        .myPageHeader_top {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding: 0 0 0.5rem 0;
            border-bottom: 2px solid #e2e2e2;
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
            /*visibility: hidden*/
        }

        .myPageHeader_center_wrap {
            padding: 10px 15px

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
            border-bottom: 1px solid #CCCCCC;
        }

        .myPageHeader_center_top > .profill_img {
            width:3rem;
            height:3rem;
            border-radius: 50%;
            background-color:#f9f9f9;
        }
        .center_bottom_txt > span {
            display:block;
            text-align: center;
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
            gap: 2.5rem;
        }
        .center_bottom_txt{
            display : flex;
            padding : 1rem 0;
        }
        .center_bottom_txt > div {
            display : flex;
        }
        /*디렉터 인플루언서*/
        .Client_Type_info1{
            border: 1px solid #115C5E;
            border-radius: 0.3rem;
            width: fit-content;
            padding: 0 0.5rem;
            color : #115C5E;
        }
        /*메가 인플루언서*/
        .Client_Type_info2{
            border: 1px solid #115C5E;
            background-color: #115C5E;
            border-radius: 0.3rem;
            width: fit-content;
            padding: 0 0.5rem;
            color: white;
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
            height : 1.65rem;
            display : flex;
            border-top : 1px solid #9F9F9F;
            border-bottom : 1px solid #9F9F9F;
        }
        .Post_Menu{
            width : 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color : #115C5E;
            color : white;
        }
        .Post_Menu_container{
            margin: 0 0.75rem;
        }
        .Communication_Menu{
            width : 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color : white;
            color : #9F9F9F;
            
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
            padding: 0.2rem 0;
       }
       .My_Post_More_Post_BTN, .Communication_More_BTN{
            display: flex;
            justify-content: center;
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
           margin: 0.5rem 0.75rem;
           padding: 0.5rem 0;
       }
       .My_CellebShop_More_Item{
            text-align: center;
            border: 1px solid #D8D8D8;
            border-radius: 2rem;
            width: 100%;
       }
       .More_Celleb_Item_container{
            display: flex;
            margin : 1rem 0.75rem;
       }
    </style>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
             <div class="myPageHeader_top">
                <%-- <a href="/Source/m/my/M_M_MYPAGE.aspx">--%>
                <div class="prev_button">
                    <span class="material-icons">arrow_back_ios</span>
                </div>
                <%-- </a>--%>
                <div class="myPage_txt">
                    <span>KeyDni MINIHOME</span>
                </div> 
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
         </div>
        <%--마이페이지 헤더 cneter--%>
        <div class="myPageHeader_center">
            <div class="myPageHeader_center_wrap">
               <div class="myPageHeader_center_wrap_inner">
                   <%--마이페이지 헤더 cneter top--%>
                   <%-- 나노 인풀러언서 --%>
                   <div class="myPageHeader_center_top">
                     <div class="profill_img">
                         <img src="/Source/m/image/mypageSmile_icon.svg" alt="smile_img" />
                     </div>
                     <div class="myPageHeader_center_top_txt">
                            <div class="top_txt">
                                <div class="User_Info_wrep">
                                    <span class="m_sub_font main_color">DrKeyDni</span>
                                    <span class="m_lower_font">님</span><br />
                                    <span class="mono_sub_color m_lower_font">프로필 수정</span>
                                </div>
                                <div class="User_Info_wrep">
                                    <span class="m_lower_font mono_sub_color">나노 인플루언서</span>
                                </div>
                            </div>
                        </div>
                   </div>
                   <%-- 마이크로 인풀러언서 --%>
                   <div class="myPageHeader_center_top">
                     <div class="profill_img">
                         <img src="/Source/m/image/mypageSmile_icon.svg" alt="smile_img" />
                     </div>
                     <div class="myPageHeader_center_top_txt">
                         <div class="top_txt">
                            <div class="User_Info_wrep">
                                <span class="m_sub_font main_color">DrKeyDni</span>
                                <span class="m_lower_font">님</span><br />
                                <span class="mono_sub_color m_lower_font">프로필 수정</span>
                            </div>
                            <div class="User_Info_wrep">
                                <div class="Client_Type_info1">
                                    <span class="m_lower_font">마이크로 인플루언서</span>
                                </div>
                            </div>
                         </div>
                     </div>
                   </div>
                   <%-- 메가 인풀러언서 --%>
                   <div class="myPageHeader_center_top">
                        <div class="profill_img">
                        <img src="/Source/m/image/mypageSmile_icon.svg" alt="smile_img" />
                    </div>
                        <div class="myPageHeader_center_top_txt">
                        <div class="top_txt">
                            <div class="User_Info_wrep">
                                <span class="m_sub_font main_color">DrKeyDni</span>
                                <span class="m_lower_font">님</span><br />
                                <span class="mono_sub_color m_lower_font">프로필 수정</span>
                            </div>
                            <div class="User_Info_wrep">
                                <div class="Client_Type_info2">
                                    <span class="m_lower_font">메가 인플루언서</span>
                                </div>
                            </div>
                        </div>
                    </div>
                   </div>
                   <%-- 셀러브리티 인풀러언서 --%>
                   <div class="myPageHeader_center_top">
                    <div class="profill_img">
                        <img src="/Source/m/image/mypageSmile_icon.svg" alt="smile_img" />
                    </div>
                    <div class="myPageHeader_center_top_txt">
                        <div class="top_txt">
                            <div class="User_Info_wrep">
                            <span class="m_sub_font main_color">DrKeyDni</span>
                            <span class="m_lower_font">님</span><br />
                            <span class="mono_sub_color m_lower_font">프로필 수정</span>
                        </div>
                            <div class="User_Info_wrep m_lowerst_font">
                            <div class="Client_Type_info3">
                                <span class="m_lower_font">셀러브리티</span>
                            </div>
                                <span class="material-icons main_color">verified</span>
                            </div>
                        </div>
                    </div>
                            </div>
                   <%--마이페이지 헤더 cneter bottom--%>
                   <div class="myPageHeader_center_bottom">
                        <div class="center_bottom_txt m_sub_font">
                            <span class="m_middle_font">직팔로워</span>
                            <span class="m_middle_font">12</span>
                        </div>
                        <div class="center_bottom_txt m_sub_font">
                            <span class="m_middle_font">연계팔로워</span>
                            <span class="m_middle_font">52</span>
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
                <div id="hover5_wrap">
                    <%-- 상품 목록 --%>
                    <div class="best_content_wrap_inner margin_bottom">
                        <%--셀럽 상품 content--%>
                        <div class="m_best">
                            <div class="best_img">
                                <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                <div class="best_txt1">
                                    <span>BEST</span>
                                </div>
                            </div>
                            <div class="best_txt">
                                <div class="main_title m_lower_font">
                                    <span>신당케어</span>
                                </div>
                                <div class="sub_title m_middle_font">
                                    <span>비건오메가3 (30일분)</span>
                                </div>
                                <div class="discount_price">
                                    <div class="second_price m_middle_font">
                                        <span>1,136,400</span>
                                    </div>
                                    <div class="original_price m_lower_font">
                                        <span>1,156,000</span>
                                    </div>
                                </div>
                                <div class="percent main_color m_middle_font">
                                    <span>35%</span>
                                </div>
                                <div class="bottom">
                                    <div class="bottom_txt m_lowerst_font">
                                        <span>회원 할인 10%</span>
                                    </div>
                                    <div class="bottom_txt m_lowerst_font">
                                        <span>재구매 추가 할인 5%</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--셀럽 상품 content--%>
                        <div class="m_best">
                                <div class="best_img">
                                <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                    <div class="best_txt1">
                                        <span>BEST</span>
                                    </div>
                            </div>
                            <div class="best_txt">
                                <div class="main_title m_lower_font">
                                    <span>신당케어</span>
                                </div>
                                <div class="sub_title m_middle_font">
                                    <span>비건오메가3 (30일분)</span>
                                </div>
                                <div class="discount_price">
                                    <div class="second_price m_middle_font">
                                        <span>1,136,400</span>
                                    </div>
                                    <div class="original_price m_lower_font">
                                        <span>1,156,000</span>
                                    </div>
                                </div>
                                <div class="percent main_color m_middle_font">
                                    <span>35%</span>
                                </div>
                                <div class="bottom">
                                    <div class="bottom_txt m_lowerst_font">
                                        <span>회원 할인 10%</span>
                                    </div>
                                    <div class="bottom_txt m_lowerst_font">
                                        <span>재구매 추가 할인 5%</span>
                                    </div>
                                </div>
                            </div>
                        </div>                                                           
                    </div>
                    <%-- 셀럽상품 더보기 --%>
                    <div class="More_Celleb_Item_container">
                        <div class="My_CellebShop_More_Item">
                           <div class="m_middle_font Communication_More_BTN m_mono_color">
                                <span>닥터키드니</span>
                                <span>님 소통해요 방명록 더보기</span>
                                <span class="material-icons m_middle_font">arrow_drop_down</span>
                           </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
        <%-- 게시물 , 소통해요 메뉴 선택 --%>
        <div class="Choice_menu_wrep">
             <div class="Post_Menu m_sub_font" id="Ch_menu_Post_Click">
                <span>게시물</span>
                <span>(</span>
                <span>12</span>
                <span>)</span>
            </div>
             <div class="Communication_Menu m_sub_font" id="Communication_menu_Click">
                <span>소통해요 !</span>
             </div>
         </div>
        <%-- 게시물 메뉴 DIV --%>
        <div class="Post_Menu_container">
           <div class="empty_space_for_PostMenu"></div>
           <%-- 게시물->게시글 하나당 Wrep하나 --%>
           <div class="My_Post_Wrep">
               <div class="My_Post_Container_Top_Wrep">
                    <div class="Table_Top_Left m_middle_font">
                        <div class="Commu_post_Category m_middle_font">[잡담]</div>
                        <div class="Commu_post_Title m_middle_font">2023 설 연휴 배송안내드립니다. 안녕하세요 반갑습니다.</div>
                        <div class="Commu_guide_chat m_lower_font">(8)</div>
                    </div>
                    <div class="Table_Top_right">
                    <div class="m_lower_font Post_Menu_Commu_Thumb">
                        <span class="material-icons Thumb_up">thumb_up_off_alt</span>
                    </div>
                    <div class="Post_Commu_Recomand m_lower_font">
                        <span>12</span>
                    </div>   
                </div>
               </div>
               <div class="My_Post_Container_Bottom_Wrep m_middle_font m_mono_color">
                    <span class="Commu_Admin_ID">Drkid</span>
                    <span class="Commu_Post_Date">2023.06.01</span>                    
               </div>
           </div>
           <div class="My_Post_Wrep">
               <div class="My_Post_Container_Top_Wrep">
                <div class="Table_Top_Left m_middle_font">
                    <div class="Commu_post_Category m_middle_font">[잡담]</div>
                    <div class="Commu_post_Title m_middle_font">2023 설 연휴 배송안내드립니다. 안녕하세요 반갑습니다.</div>
                    <div class="Commu_guide_chat m_lower_font">(8)</div>
                </div>
                <div class="Table_Top_right">
                    <div class="m_lower_font Post_Menu_Commu_Thumb">
                        <span class="material-icons Thumb_up">thumb_up_off_alt</span>
                    </div>
                    <div class="Post_Commu_Recomand m_lower_font">
                        <span>12</span>
                    </div>   
                </div>
               </div>
               <div class="My_Post_Container_Bottom_Wrep m_middle_font m_mono_color">
                    <span class="Commu_Admin_ID">Drkid</span>
                    <span class="Commu_Post_Date">2023.06.01</span>                    
                </div>
           </div>
           <%-- 커뮤니티 게시물 더 보기 버튼 --%>
           <div class="My_Post_More_Post">
                <div class="m_middle_font My_Post_More_Post_BTN m_mono_color">
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
        <%--  닫기 버튼 영역 --%>
        <div class="My_Page_Close_BTN_Wrep">
                <div class="My_Page_Close_BTN">
                    <span>닫기</span>
                </div>
            </div>
    </div>
</asp:Content>
