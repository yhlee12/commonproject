﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MY_ITEMDESKDETAIL.aspx.cs" Inherits="drKid.Source.client.my.C_MY_ITEMDESKDETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         /*페이징관련*/
        .number-button-Area {
            padding: 100px 0px;
        }
        .number-button-wrap {
            display: flex;
            justify-content: center;
        }
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
        .title_Bar_Wrap {
            display: flex;
            align-items: center;
            gap: 0px 10px;
        }
        .title_Info_Bar_Area {
            display: flex;
            width: 100%;
            height: 220px;
            text-align: center;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
        }
        .title_Info_Bar_Section {
            width:calc(100% / 4);
        }
        .title_Info_Content_Area {
            width: 100%;
            height: 100%;
            padding: 25px 0px;
            cursor:pointer;
        }
        .title_Info_Content_border {
            border-right: 1px solid #CCCCCC;
            padding: 10px 0px;
            height: 100%;
            display: grid;
            align-items: center;
        }
        /*공통*/
        .title_Info_Count_Area{
	        cursor:pointer;
        }
        .title_Bar { 
            width: 289px;
            height: 220px;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
            padding:10px;
        }
        .title_Bar_Top { 
            width: 100%;
            height: 70%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .title_Bar_Top_Profile_L {
            width: 90px;
            height: 90px;
        }
        #sentiment_Icon {
            font-size: 90px !important;
            color: #b5b5b5dd;
        }
        .Profile_R_Info1 {
           font-weight: 600;
        }
        .Profile_R_Info2 {
           font-weight: 400;
        }
        .title_Bar_Top_Profile_R {
            height: 90px;
            padding: 20px 14px;
        }

        .title_Bar_Bottom { 
            width: 100%;
            height: 30%;
            border-top: 1px solid #CCCCCC;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 25px 0px 15px 0px;
            gap: 0px 35px;
        }
        .title_Bar_Bottom_Info1 , .title_Bar_Bottom_Info3 {
            font-weight: 400;
        }
        .title_Bar_Bottom_Info2 , .title_Bar_Bottom_Info4{
            font-weight: 700;
        }
        .share_Btn {
            background: #343434;
            width: 250px;
            height: 70px;
            color: #FFC609;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0px 5px;
            line-height: 70px;
            text-align: center;
            border-radius: 12px;
            margin-bottom: 20px;
            font-weight:500;
            cursor:pointer;
        }
        #insert_emoticon {
           font-size: 22px !important;
        }
        /*공통*/
        .title_Info_Bar {
            width: 1000px;
            height: 220px;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
        }
        .title_Info {
            font-weight:600;
        }
        .material-icons-outlined {
            font-size: 50px !important;
        }
        .title_Info_Count {
            font-size:22px;
            font-weight:600;
        }
        .KeyDni_Top_Title {
            font-size:28px;
            font-weight:600;
        }
        #mypage_Btn {
            cursor:pointer;
        }
        .KeyDni_Wrap {
            width: 290px;
        }
        .KeyDni_Area {
            width:100%;
        }
        .KeyDni_Top_Title_Area {
            padding: 0px 0px 20px 0px;
        }
        .KeyDni_Box {
            border-top: 1px solid #CCCCCC;
            padding: 0px 0px 10px 0px;
        }
        .KeyDni_Title_Info {
            padding: 20px 0px;
            font-weight: 600;
        }
        .KeyDni_Info {
            padding: 0px 0px 5px 0px;
            color:#8F8F8F;
            font-weight: 400;
            cursor:pointer;
        }
        .KeyDni_Info_Clicked {
            padding: 0px 0px 5px 0px;
            color:#115C5E;
            font-weight: 400;
            cursor:pointer;
        }
        .all_Bottom_Area {
            display: flex;
            gap:0px 50px;
            padding: 45px 0px 0px 0px;
        }
        .Bottom_Area {
            width:100%;
        }
        .progress_Order_Title_Area {
            padding: 0px 0px 20px 0px;
        }

        .new_Order_Title_Area {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0px 0px 20px 0px;
            border-bottom: 1px solid #262626;
        }
        .hd_Detail_Info_Area {
            padding: 15px;
            border-bottom: 1px solid #CCCCCC;
        }
        /*문의디테일*/
        .hd_Detail_Area {
            border-top: 1px solid #262626;
        }
        .hd_Detail_Title_Area {
            display: flex;
            align-items: center;
            padding: 15px;
            border-bottom: 1px solid #CCCCCC;
        }
        .hd_Type {
            width: 10%;
            font-weight:400;
        }
        .hd_Title_Area {
            display: flex;
            align-items: center;
            width: 60%;
            gap: 0px 5px;
            
        }
        .hd_Created_Date_Area {
            /*width: 15%;*/
            color: #BBBBBB;
            font-weight:400;
        }
        .hd_State {
            /*width:7%;*/
            font-weight:500;
        }
        .hd_Detail_File_Area {
            display: flex;
            align-items: center;
            padding: 15px;
            gap: 0px 10px;
            border-bottom: 1px solid #CCCCCC;
        }
        #link_Icon {
            font-size: 16px !important;
            line-height: 28px;
            color: #9F9F9F;
        }
        .file_Info {
            font-weight: 400;
        }
        .file_Name {
            color: #9F9F9F;
            text-decoration: underline;
            cursor: pointer;
            font-weight: 500;
        }
        .btn_Area {
            width: 100%;
            display: flex;
            justify-content: end;
            align-items: center;
            gap: 0px 15px;
             padding: 20px 0px;
        }
        .del_Btn,.edit_Btn  {
            width: 120px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            border: 1px solid #E2E2E2;
            cursor:pointer;
            font-weight:500;
        }
        .go_List_Btn {
            width: 120px;
            height: 50px;
            line-height: 50px;
            background: var(--main_color);
            color:#ffffff;
            text-align: center;
            cursor:pointer;
            font-weight:500;
        }
        .hd_Answer_Area {
            padding: 40px 0px 0px 0px;
        }
        .hd_Answer_Title {
            background: #F9F9F9;
            padding: 15px;
            border: 1px solid #CCCCCC;
            border-left: none;
            border-right: none;
            font-weight: 400;
        }
        .hd_Answer {
            padding: 15px;
            border-bottom: 1px solid #CCCCCC;
            font-weight: 400;
        
        }
         /*문의 리스트*/
        .hd_Wrap {
            padding:20px 0px 0px 0px;
            width:1000px;
        }
        .hd_List_Column_Area {
            display: flex;
            padding: 15px 40px;
            background: #F9F9F9;
            text-align: center;
            width:100%;
            border-top: 1px solid #262626;
        }
        .hd_List_Column_1_Area {
            width:15%;
            /*width: 179.69px;*/
        }
        .hd_List_Column_2_Area {
            width:15%;
            /*width: 484.64px;*/
        }
        .hd_List_Column_3_Area {
            width:60%;
            /*width: 146.68px;*/
        }
        .hd_List_Column_4_Area {
            width:10%;
            /*width: 99.8px;*/
        }
        .hd_List_Column {
            font-weight:500;
        }
        .hd_List_Row_Area {
            width: 100%;
        }
        .hd_List_Row {
            display: flex;
            padding: 10px 40px;
            align-items: center;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
            cursor:pointer;
        }

        .hd_List_Row_1_Area {
            width:15%;
            /*cursor:pointer;*/
            /*width: 179.69px;*/
        }
        /*.new_Order_List_Row_2_Area_Wrap {
            display: grid;
            gap: 5px 0px;
        }*/
        .hd_List_Row_2_Area{
            width:15%;
            text-align:center;
        }
        .hd_List_Row_3_Area {
            width:60%;
            justify-content: start;
            display: flex;
            align-items: center;
            gap: 0px 5px;
            /*width: 138px;*/
        }
        .hd_List_Row_4_Area {
            width:10%;
            /*width: 92px;*/
        }

        .hd_List_Row_1 {
            color:#828282;
            /*cursor:pointer;*/
        }
        .hd_List_Row_1_1 {
            font-weight: 400;
            cursor:pointer;
        }
        .hd_List_Row_1_2 {
            width: 67px;
            text-align: 0 initial;
            margin: 0 auto;
            color: #9F9F9F;
            border: 1px solid #9F9F9F;
            cursor:pointer;
        }
        .new_Order_List_Row_img {
            width:55px;
            height:55px;
            object-fit: cover;
        }
        .hd_List_Row_2_1 {
             text-align: start;
         }
        .hd_List_Row_2_1_1 {
            color:#9F9F9F;
            font-weight: 400;
        }
        .hd_List_Row_2_1_2 {
            font-weight:500;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            overflow: hidden;
            width:350px;
        }
         .hd_List_Row_3 {
            font-weight: 400;
            color:#828282;
         }
         .hd_List_Row_4 {
             font-weight: 500;
         }
        .hd_List_Row_4_1 {
            font-weight:400;
        }
        .hd_List_Row_5 {
            font-weight:500;
            width: 90px;
            color: #115C5E;
            border: 1px solid #115C5E;
            margin: auto;
            padding: 3px 0px;
            cursor:pointer;

        }
        .hd_List_Row_5_1 {
            font-weight:500;
            border: 1px solid #115C5E;
            background: var(--main_color);
            color: #ffffff;
            width: 90px;
            margin: auto;
            padding: 3px 0px;
            cursor:pointer;
        }
        .hd_List_Filed {
            width:1000px;
             
        }
       
         .hd_List_Title_Area {
            display: flex;
            justify-content: end;
         }
         .helf_Desk_Request_Btn {
            color: #115C5E;
            font-weight: 400;
            height: 40px;
            line-height: 40px;
            width: 188px;
            text-align: center;
            border: 1px solid #115C5E;
            cursor:pointer;
         }
        .hd_Area {
             padding: 0px 0px 0px 0px;
        }
        .order_Search_Ui_Title_Area {
            padding: 0px 0px 0px 0px;
        }
        .order_Search_Ui {
            border:1px solid #CCCCCC;
            border-radius: 12px;
            padding: 20px;
        }
        
        .search_Period {
            border:1px solid #CCCCCC;
            color:#8F8F8F;
        }
        .search_Period_Area {
            display: flex;
            gap: 0px 15px;
        }
        .search_Period {
            border: 1px solid #CCCCCC;
            color: #8F8F8F;
            padding: 3.2px 11px;
            cursor:pointer;
        }
        .clicked {
             border:1px solid #115C5E;
             color:#115C5E
        }
        .search_Ui_Layout {
            display: flex;
            align-items: center;
            gap: 0px 30px;
        }
        .search_Date_Area {
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        #I_DATE_START {
            height:30px;
            font-size:16px;
        }
        #I_DATE_END {
            height:30px;
            font-size:16px;
        }
        .date_Ui_Area {
            display: flex;
            align-items: center;
        }
        .search_Date_Btn {
            width: 48px;
            background:var(--main_color);
            text-align: center;
            padding: 4px 0px;
            color: #ffffff;
            cursor:pointer;
        }
        .order_Count {
            font-weight:500;
        }
        .order_List_Title {
            color:#8F8F8F;
            font-weight:500;
        }
         #lock_Icon {
            font-size: 16px !important;
            line-height: 28px;
            font-weight:500;
         }
        .hd_Title {
            font-weight: 500;
            padding:0px 10px;
        }
        .board_Info {
            display: flex;
            width: 35%;
            gap: 0px 12px;
        }

    </style>
     <script>

         $(document).ready(function () {
             // 공통 메뉴
             var product = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(1)");
             var coupon = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(2)");
             var review = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(3)");
             var help = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(4)");

             product.addEventListener("click", function () {
                 location.href = "/Source/client/my/C_MY_ORDERLIST.aspx"
             });
             coupon.addEventListener("click", function () {
                 location.href = "/Source/client/my/C_MY_CUPONLIST.aspx"
             });
             review.addEventListener("click", function () {
                 location.href = "/Source/client/my/C_MY_REVIEWLIST.aspx"
             });
             help.addEventListener("click", function () {
                 location.href = "/Source/client/my/C_MY_HELPDESKLIST.aspx"
             });

             $("#mypage_Btn").click(function () {
                 location.href = "/Source/client/my/C_MY_MYPAGEMAIN.aspx";
             });

             //레프트메뉴 클릭 시 해당하는 페이지 이동
             $(".KeyDni_Info,.KeyDni_Info_Clicked,.title_Info_Count_Area").click(function () {
                 var page = $(this).attr("id");
                 if (page != '' && page != null) {
                     var page_type = page.split("_")[1]; //폴더가 CS인지 MY인지 추출
                     location.href = "/Source/client/" + page_type + "/" + page + ".aspx";
                 }
                 else {
                     _popModal.Alert('', '준비중입니다.');
                 }
             });
             //목록 버튼 클릭 시 문의 리스트페이지 이동
             $(".go_List_Btn").click(function () {
                 location.href = "/Source/client/my/C_MY_ITEMDESKLIST.aspx";
             });

         });



    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content" style="">
        <div class="sub_layout">
            <div id="content">
                <div class="main_Box">
                    <div class="title_Bar_Wrap">
                        <%--공통0728--%>
                        <%--타이틀--%>
                        <div class="title_Bar_Area">
                            <div class="title_Bar">
                                <div class="title_Bar_Top">
                                    <div class="title_Bar_Top_Profile_L">
                                       <span class="material-icons-outlined" id="sentiment_Icon">sentiment_satisfied_alt</span>
                                    </div>
                                    <div class="title_Bar_Top_Profile_R">
                                        <div class="middle-font main_color Profile_R_Info1">DrKeyDni <span class="lowerst-font">님</span></div>
                                        <div class="lower-font mono_sub_color Profile_R_Info2">디렉터 인플루언서</div>
                                    </div>
                                </div>
                                <div class="title_Bar_Bottom">
                                    <div class="lower-font title_Bar_Bottom_Info1">직팔로워 <span class="lower-font title_Bar_Bottom_Info2">12</span></div>
                                    <div class="lower-font title_Bar_Bottom_Info3" >연계팔로워 <span class="lower-font title_Bar_Bottom_Info4">53</span></div>
                                </div>
                            </div>
                        </div>
                        <div class="title_Info_Bar_Area">
                            <%--주문/배송--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">redeem</span>
                                        </div>
                                        <div class="title_Info lower-font">주문/배송</div>
                                        <div class="title_Info_Count_Area" id="">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--MY쿠폰--%>  <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">confirmation_number</span>
                                        </div>
                                        <div class="title_Info lower-font">MY쿠폰</div>
                                        <div class="title_Info_Count_Area" id="C_MY_CUPONLIST">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--리뷰--%> <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">drive_file_rename_outline</span>
                                        </div>
                                        <div class="title_Info lower-font">리뷰</div>
                                        <div class="title_Info_Count_Area" id="C_MY_REVIEWLIST">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--진행중 문의--%> <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">support_agent</span>
                                        </div>
                                        <div class="title_Info lower-font">진행중 문의</div>
                                        <div class="title_Info_Count_Area" id="">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--전체 하단 영역--%>
                    <div class="all_Bottom_Area">
                        <%--My KeyDni--%>
                        <div class="KeyDni_Wrap">
                             <%--공통 0728--%>
                            <div class="big-font share_Btn"><span class="material-icons-outlined"id="insert_emoticon">insert_emoticon</span>친구초대</div>

                            <div class="KeyDni_Area">
                                <div class="KeyDni_Top_Title_Area">
                                    <div class="KeyDni_Top_Title"id="mypage_Btn">My KeyDni</div>
                                </div>
                              <%--쇼핑정보--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">쇼핑정보</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_ORDERLIST">주문/배송조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_DELIVERY">배송지 관리</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_CANSLEPRODUCT">취소/반품/교환 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REFUNDPRODUCT">환불/입금 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REWARD">리워드 현황</div>
                                    </div>
                                </div>
                                <%--고객센터--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">고객센터</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font"id="C_MY_HELPDESKLIST">나의 1:1 문의</div>
                                        <div class="KeyDni_Info_Clicked lower-font"id="C_MY_ITEMDESKLIST">나의 상품 문의</div>
                                        <div class="KeyDni_Info lower-font" id="C_CS_QUESTIONLIST">자주 하는 질문</div>
                                        <div class="KeyDni_Info lower-font" id="C_CS_NOTICELIST">공지사항</div>
                                    </div>
                                </div>
                                <%--회원정보--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">회원정보</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font"id="C_MY_MODIFYINFO">회원정보 수정</div>
                                        <div class="KeyDni_Info lower-font"id="C_MY_MEMBERDEPARTURE">회원 탈퇴</div>
                                        <div class="KeyDni_Info lower-font logout_Btn">로그아웃</div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <%--문의 디테일 전체 영역--%>
                        <div class="Bottom_Area">
                  
                            <%--문의 디테일 전체 영역--%>
                            <div class="hd_Area">
                                <div class="order_Search_Ui_Title_Area">
                                    <div class="progress_Order_Title KeyDni_Top_Title">상품 문의</div>
                                </div>
                                <%--문의 디테일--%>
                                <div class="hd_Wrap">
                                    <div class="hd_Detail_Area">
                                        <%--문의 디테일 제목--%>
                                        <div class="hd_Detail_Title_Area">
                                            <%--문의 타입--%>
                                            <div class="hd_Type lowerst-font">주문/결제</div>
                                            <%--문의 제목--%>
                                            <div class="hd_Title_Area">
                                                <div class="lock_Icon_Area">
                                                    <span class="material-icons-outlined" id="lock_Icon">lock</span>
                                                </div>
                                                <div class="hd_Title lowerst-font">주문시에 MY쿠폰에 있는 쿠폰사용이 안됩니다.</div>
                                            </div>  
                                            <div class="board_Info">
                                                <%--문의 등록시간--%>
                                                <div class="hd_Created_Date_Area lowerst-font">2023.06.01 13:21:09</div>
                                                <%--문의상태(접수,답변대기,답변완료)--%>
                                                <%--<div class="hd_State lowerst-font drkid_Negative_color">접수</div>--%>
                                                <%--<div class="hd_State lowerst-font">답변대기</div>--%>
                                                
                                                <div class="hd_Created_Date_Area lowerst-font">작성자 : abcd1234</div>
                                                <div class="hd_State lowerst-font main_color">답변완료</div>
                                            </div>
                                        </div>
                                        <%--문의 디테일 첨부파일 정보--%>
                                        <%--첨부파일이 있으면--%>
                                        <div class="hd_Detail_File_Area">
                                             <div class="link_Icon_Area">
                                                <span class="material-icons-outlined" id="link_Icon">link</span>
                                            </div>
                                            <div class="file_Info lowerst-font">첨부파일</div>
                                            <div class="file_Name lowerst-font">C:\fakepath\CK_cm08029552 copy.jpg</div>
                                        </div>

                                        <%--문의 디테일 내용--%>
                                        <div class="hd_Detail_Info_Area">
                                            <div class="hd_Detail_Info lowerst-font">
                                                주문을 하려고 하는데<br>주문시에 MY쿠폰에 있는 쿠폰사용이 안됩니다.<br>웰컴 쿠폰 3,000원을 가지고 있는데 적용이 안됩니다.
                                            </div>
                                        </div>

                                        <%--답변완료일때 답변내용--%>
                                        <div class="hd_Answer_Area">
                                            <div class="hd_Answer_Title lowerst-font">답변내용</div>
                                            <div class="hd_Answer lowerst-font">주문시 쿠폰사용을 클릭하여 쿠폰을 선택하여 적용하시면 됩니다.<br>[주문] > [쿠폰사용] > [쿠폰적용]</div>
                                        </div>
                                    </div>
                                </div>

                            </div>    
                            <%--버튼 영역 (삭제,수정,목록)--%>
                            <div class="btn_Area">
                                <div class="del_Btn middle-font">삭제</div>
                                <div class="edit_Btn middle-font">수정</div>
                                <div class="go_List_Btn middle-font">목록</div>
                            </div>                      
                        </div>

                    </div>
                </div>
         </div>
        </div>
    </div>
</asp:Content>
