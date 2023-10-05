﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MY_HELPDESKREQUEST.aspx.cs" Inherits="drKid.Source.client.my.C_MY_HELPDESKREQUEST" %>
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
        /*공용*/
        .my_Title_Area {
             padding: 0px 0px 20px 0px;
        }
        .my_Title {
            font-size: 28px;
            font-weight: 600;
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
         /*공용 끝*/
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
        /*레프트메뉴*/
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
        /*#I_DETAIL {
          height: 300px;
          position: relative;
          padding:10px;
        }*/
        #I_DETAIL:focus {
            outline:1px solid #005764;
        }

        #I_DETAIL::placeholder {
          color: #D8D8D8; 
          position: absolute;
          top: 0;
          padding:10px;
        }
         /*문의작성폼*/
        .hd_Request_Area {
            width: 100%;
            border-top: 1px solid #262626;
            padding: 10px;
        }
        .hd_Request_Filed {
            width: 100%;
            display: flex;
            align-items: center;
            padding: 0px 0px 20px 0px;
        }
 
        .hd_Request_Filed_Detail {
            width: 100%;
            display: flex;
            align-items: flex-start;
            padding: 20px 0px;
            border: 1px solid #CCCCCC;
            border-left: none;
            border-right: none;
        }
        .hd_Reques_Info {
            width: 15%;
            font-weight: 400;
        }
        .hd_Reques_Data {
            width: 85%;
            font-weight: 400;
        }
        .hd_Reques_Guide {
            color:#8F8F8F;
        }
        .help_Type_Area {
            width: 294px;
        }
        .drkid-select-div {
            padding: 12px 10px;
        }
        #I_TITLE {
            width: 100%;
            height: 50px;
        }
        .file_Info_Area {
            width:430px;
        }
        #I_FILE_INFO {
            width: 100%;
            height: 50px;
        }
        .file_Layout {
            display: flex;
            text-align: center;
            gap: 0px 10px;
        }
        .file_Search_Btn {
            width: 88.5px;
            background: #343434 0% 0% no-repeat padding-box;
            border: 1px solid #E1E1E1;
            border-radius: 4px;
            color: #D8D8D8;
            height: 50px;
            line-height: 50px;
            text-align: center;
            cursor:pointer;
        }
        .file_Add_Btn {
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border: 1px solid #E1E1E1;
            border-radius: 4px;
            width: 48px;
            height: 50px;
            text-align: center;
            cursor:pointer;
        }
        #add_Icon {
            font-size: 24px !important;
            line-height: 50px;
            
        }
        #I_DETAIL {
            width:100%;
        }
        .btn_Area {
            width: 100%;
            display: flex;
            justify-content: center;
            gap: 0px 20px;
            padding: 50px 0px;
        }
        .request_Btn {
            width: 120px;
            height: 50px;
            text-align: center;
            background: var(--main_color);
            color: #ffffff;
            line-height: 50px;
            cursor: pointer;
        }
        .request_Cansle_Btn {
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border: 1px solid #E2E2E2;
            width: 120px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            cursor: pointer;
        }
  
        .material_custum_green{
            display:none;
            font-size:32px;
            padding-left:5px;
            color : var(--sub_color);
        }
        .material_custum_red{
            display:none;
            font-size:32px;
            padding-left:5px;
            color : var(--drkid_Negative);
        }
        .hd_Reques_Data {
            width: 85%;
            font-weight: 400;
        }
        .hd_Reques_Double_Data {
            width: 35%;
            font-weight: 400;
            display:flex;
            align-items: center;
        }
        .hd_Reques_Pass_Data {
            width: 30%;
            font-weight: 400;
            display:flex;
            align-items: center;
        }
        .hd_Request_Filed_Pass{
            width: 100%;
            display: flex;
            align-items: center;
            padding: 20px 0px 20px 0px;
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
             //조회 ui 오늘,7일 등 누르면
             $(".search_Period").click(function () {
                 $(".search_Period").removeClass("clicked");
                 $(this).addClass("clicked");
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
             
             //1:1 문의하기 버튼 
             $(".helf_Desk_Request_Btn").click(function () {
                 location.href = "/Source/client/my/C_MY_HELPDESKREQUEST.aspx";
             });
             //취소 버튼 클릭 시 1:1문의 리스트로 이동
             $(".request_Cansle_Btn").click(function () {
                 location.href = "/Source/client/my/C_MY_HELPDESKLIST.aspx";
             });
             

         });
         $(function () {
             //취소 버튼 클릭 시 1:1문의 리스트로 이동
             $(".request_Cansle_Btn").click(function () {
                 location.href = "/Source/client/my/C_MY_HELPDESKLIST.aspx";
             });

             //문의하기 버튼
             $("#request_add_btn").on("click", function () {
                 console.log($("#I_DETAIL").val());
                 console.log($("#I_BOARD_MESSAGE").val());
                 if (Validation() == false) {
                     return false;
                 }
                 $("#form1").submit();
             });
             //수정완료 버튼
             $("#request_modi_btn").on("click", function () {
                 console.log($("#I_DETAIL").val());
                 console.log($("#I_BOARD_MESSAGE").val());
                 if (Validation() == false) {
                     return false;
                 }
                 $("#form1").submit();
             });


             //비밀번호
             $("#I_PASSWORD").on("input", function () {
                 let pass = $("#I_PASSWORD").val();
                 let pass_check = $("#I_PASSWORD_CHECK").val();
                 if (pass.length < 4) {
                     $(".pass_no").show();
                     $(".pass_ok").hide();
                     if (pass == pass_check) {
                         $(".check_no").hide();
                         $(".check_ok").show();
                         $("#pass_flag").val('Y');
                     }
                     else {
                         $(".check_no").show();
                         $(".check_ok").hide();
                         $("#pass_flag").val('N');
                     }
                 }
                 else {
                     $(".pass_no").hide();
                     $(".pass_ok").show();
                     if (pass == pass_check) {
                         $(".check_no").hide();
                         $(".check_ok").show();
                         $("#pass_flag").val('Y');
                     }
                     else {
                         $(".check_no").show();
                         $(".check_ok").hide();
                         $("#pass_flag").val('N');
                     }
                 }
             })
             //비밀번호 체크
             $("#I_PASSWORD_CHECK").on("input", function () {
                 let pass = $("#I_PASSWORD").val();
                 let pass_check = $("#I_PASSWORD_CHECK").val();
                 console.log(pass);
                 console.log(pass_check);
                 if (pass == pass_check) {
                     $(".check_no").hide();
                     $(".check_ok").show();
                     $("#pass_flag").val('Y');
                 }
                 else {
                     $(".check_no").show();
                     $(".check_ok").hide();
                     $("#pass_flag").val('N');
                 }
             })

             if ($("#I_PASSWORD").val() != null || $("#I_PASSWORD").val() == $("#I_PASSWORD_CHECK").val()) {
                 $(".pass_no").hide();
                 $(".pass_ok").show();
                 $(".check_no").hide();
                 $(".check_ok").show();
                 $("#pass_flag").val('Y');
             }

             //전화번호
             $("#I_BOARD_WRITE_SID").on("input", function () {
                 let phone_number = $("#I_BOARD_WRITE_SID").val();
                 console.log(phone_number);

                 phone_number = formatPhoneNumber(phone_number);
                 $("#I_BOARD_WRITE_SID").val(phone_number);
             })

         });
         //전화번호 하이픈
         function formatPhoneNumber(input) {
             // 입력된 값을 숫자만 남기고 나머지 문자 제거
             let phoneNumber = input.replace(/\D/g, '');
             console.log(input);
             // 전화번호 형식에 맞게 하이픈(-) 추가
             if (phoneNumber.length >= 4) {
                 phoneNumber = phoneNumber.substr(0, 3) + "-" + phoneNumber.substr(3);
                 if (phoneNumber.length >= 9) {
                     phoneNumber = phoneNumber.substr(0, 8) + "-" + phoneNumber.substr(8);
                 }
             }
             //실 저장데이터 저장
             let inputnumber = phoneNumber.replace(/\D/g, '');
             $("#PHONE_NUM").val(inputnumber);

             // 포맷된 전화번호를 입력란에 다시 넣음
             return phoneNumber;
         }

         //밸리데이션
         function Validation() {
             //비회원
             console.log("<%=baseUser.userName%>");
            if ("<%=baseUser.userName%>" == "") {
                //작성자 이름
                if ($("#I_BOARD_WRITE_NM").val() == "") {
                    _popModal.Alert('문의등록 실패', '작성자 이름을 입력해주세요.');
                    return false;
                }
                //전화번호
                if ($("#I_BOARD_WRITE_SID").val() == "") {
                    _popModal.Alert('문의등록 실패', '전화번호를 입력해주세요.');
                    return false;
                }
            }

            //문의 유형
            if ($("#I_CATEGORY").val() == "") {
                _popModal.Alert('문의등록 실패', '문의 유형을 선택해주세요.');
                return false;
            }
            //문의 제목
            if ($("#I_TITLE").val() == "") {
                _popModal.Alert('문의등록 실패', '문의 제목을 입력해주세요.');
                return false;
            }
            //문의 내용
            if ($("#I_DETAIL").val() == "") {
                _popModal.Alert('문의등록 실패', '문의 내용을 입력해주세요.');
                return false;
            }
            //비밀번호체크
            if ($("#pass_flag").val() == "N") {
                _popModal.Alert('문의등록 실패', '비밀번호를 확인해주세요.');
                return false;
            }

        };


    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content" style="">
        <div class="sub_layout">
            <input type="hidden" name="pass_flag" id="pass_flag" value="N"/>
            <input type="hidden" name="request_flag" id="request_flag" value="<%=request_flag %>"/>
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
                                        <div class="KeyDni_Info_Clicked lower-font"id="C_MY_HELPDESKLIST">나의 1:1 문의</div>
                                        <div class="KeyDni_Info lower-font"id="C_MY_ITEMDESKLIST">나의 상품 문의</div>
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
                        <%--문의작성 전체 영역--%>
                        <div class="Bottom_Area">
                            <div class="my_Title_Area">
                                <%--타이틀--%>
                                <div class="my_Title">1:1문의</div>
                            </div>
                            <%--새 문의글 작성 edit--%>
                            <%if (request_flag == "edit")
                      { %>
                    <%--문의 작성폼 영역--%>
                    <div class="hd_Request_Area">
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info"></div>
                            <div class="hd_Reques_Guide lowerst-font">해당글은 비밀글로만 작성이 됩니다.</div>
                        </div>
                        <%--문의유형--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info lowerst-font">문의유형</div>
                            <div class="help_Type_Area">
                                <select name="I_CATEGORY" id="I_CATEGORY" class="drkid-select lowerst-font" style="width: 190px;" data-font-class="lowerst-font" data-styles='{"padding": "12px 10px"}'>
                                    <option class="lowerst-font" value="">선택</option>
                                    <%for (int i = 0; i < BOARD_CATEGORY.Rows.Count; i++)
                                      { %>
                                    <option class="lowerst-font" value="<%=BOARD_CATEGORY.Rows[i]["CODE_CODE"] %>"><%=BOARD_CATEGORY.Rows[i]["CODE_NAME"] %></option>
                                    <%} %>
                                </select>
                            </div>
                        </div>
                        <%--제목--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info lowerst-font">제목</div>
                            <div class="hd_Reques_Data lowerst-font">
                                <input type="text" class="drkid-input lowerst-font" id="I_TITLE" name="I_TITLE" value="" autocomplete="off" placeholder="제목을 입력해 주세요." />
                            </div>
                        </div>
                        <%--작성자 회원--%>
                        <div class="hd_Request_Filed User_Field">
                            <div class="hd_Reques_Info lowerst-font">작성자</div>
                            <div class="hd_Reques_Data lowerst-font"><%=baseUser.userName %>(<%=baseUser.userId %>)</div>
                        </div>
                        <%--첨부파일--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info lowerst-font">첨부파일</div>
                            <%--첨부파일 인풋, 찾아보기, + 버튼 영역--%>
                            <div class="file_Layout">
                                <div class="file_Info_Area lowerst-font">
                                    <input type="text" class="drkid-input lowerst-font" id="I_FILE_INFO" name="I_FILE_INFO" autocomplete="off" value="" readonly="true" />
                                </div>
                                <div class="file_Search_Btn lowerst-font">찾아보기</div>
                                <div class="file_Add_Btn">
                                    <span class="material-icons-outlined" id="add_Icon">add</span>
                                </div>
                            </div>
                        </div>
                        <%--첨부파일 가이드 텍스트--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info"></div>
                            <div class="hd_Reques_Guide lowerst-font">
                                jpg, png, gif / 최대 5MB 이하 파일만 등록 가능
                                <br/>
                                이미지는 최대 5개까지 등록 가능
                            </div>
                        </div>
                        <%--문의내용--%>
                        <div class="hd_Request_Filed_Detail">
                            <div class="hd_Reques_Info">문의내용</div>
                            <div class="hd_Reques_Data lowerst-font">
                                <textarea name="I_DETAIL" id="I_DETAIL" style="width: 100%; height: 256px; padding: 10px; box-sizing: border-box; border: 1px solid var(--mono_line); resize: none;" placeholder="문의내용을 입력해 주세요."></textarea>
                            </div>
                        </div>
                        <div class="hd_Request_Filed_Pass">
                            <div class="hd_Reques_Info lowerst-font">문의글 비밀번호</div>
                            <div class="hd_Reques_Pass_Data lowerst-font">
                                <input type="password" class="drkid-input lowerst-font" id="I_PASSWORD" name="I_PASSWORD" value="" autocomplete="off" placeholder="비밀번호" />
                                <span class="material-icons-outlined material_custum_green pass_ok">check_circle</span>
                                <span class="material-icons-outlined material_custum_red pass_no">cancel</span>
                            </div>
                            <div class="hd_Reques_Pass_Data lowerst-font">
                                <input type="password" class="drkid-input lowerst-font" id="I_PASSWORD_CHECK" name="I_PASSWORD_CHECK" value="" autocomplete="off" placeholder="비밀번호 확인" />
                                <span class="material-icons-outlined material_custum_green check_ok">check_circle</span>
                                <span class="material-icons-outlined material_custum_red check_no">cancel</span>
                            </div>
                        </div>
                    </div>
                    <%--문의하기 , 취소 버튼 영역--%>
                    <div class="btn_Area">
                        <div class="request_Btn middle-font" id="request_add_btn">문의하기</div>
                        <div class="request_Cansle_Btn middle-font">취소</div>
                    </div>
                    <%} %>

                    <%--문의글 수정 modify--%>
                    <%if (request_flag == "modify")
                      { %>
                    <%--문의 작성폼 영역--%>
                    <div class="hd_Request_Area">
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info"></div>
                            <div class="hd_Reques_Guide lowerst-font">해당글은 비밀글로만 작성이 됩니다.</div>
                        </div>
                        <%--문의유형--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info lowerst-font">문의유형</div>
                            <div class="help_Type_Area">
                                <select name="I_CATEGORY" id="I_CATEGORY" class="drkid-select lowerst-font" style="width: 190px;" data-font-class="lowerst-font" data-styles='{"padding": "12px 10px"}'>
                                    <option class="lowerst-font" value="">선택</option>
                                    <%for (int i = 0; i < BOARD_CATEGORY.Rows.Count; i++)
                                      { %>
                                    <option class="lowerst-font" value="<%=BOARD_CATEGORY.Rows[i]["CODE_CODE"] %>" <%= BOARD_CATEGORY.Rows[i]["CODE_NAME"].ToString() == CS_DETAIL.Rows[0]["CATEGORY_NAME"].ToString() ? "selected=\'selected\'" : "" %> ><%=BOARD_CATEGORY.Rows[i]["CODE_NAME"]%> </option>
                                    <%} %>
                                </select>
                            </div>
                        </div>
                        <%--제목--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info lowerst-font">제목</div>
                            <div class="hd_Reques_Data lowerst-font">
                                <input type="text" class="drkid-input lowerst-font" id="I_TITLE" name="I_TITLE" value="<%=CS_DETAIL.Rows[0]["BOARD_TITLE"] %>" autocomplete="off" placeholder="제목을 입력해 주세요." />
                            </div>
                        </div>
                        <%--작성자 회원--%>
                        <div class="hd_Request_Filed User_Field">
                            <div class="hd_Reques_Info lowerst-font">작성자</div>
                            <div class="hd_Reques_Data lowerst-font"><%=baseUser.userName %>(<%=baseUser.userId %>)</div>
                        </div>
                        <%--첨부파일--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info lowerst-font">첨부파일</div>
                            <%--첨부파일 인풋, 찾아보기, + 버튼 영역--%>
                            <div class="file_Layout">
                                <div class="file_Info_Area lowerst-font">
                                    <input type="text" class="drkid-input lowerst-font" id="I_FILE_INFO" name="I_FILE_INFO" autocomplete="off" value="" readonly="true" />
                                </div>
                                <div class="file_Search_Btn lowerst-font">찾아보기</div>
                                <div class="file_Add_Btn">
                                    <span class="material-icons-outlined" id="add_Icon">add</span>
                                </div>
                            </div>
                        </div>
                        <%--첨부파일 가이드 텍스트--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info"></div>
                            <div class="hd_Reques_Guide lowerst-font">
                                jpg, png, gif / 최대 5MB 이하 파일만 등록 가능
                                <br/>
                                이미지는 최대 5개까지 등록 가능
                            </div>
                        </div>
                        <%--문의내용--%>
                        <div class="hd_Request_Filed_Detail">
                            <div class="hd_Reques_Info">문의내용</div>
                            <div class="hd_Reques_Data lowerst-font">
                                <textarea name="I_DETAIL" id="I_DETAIL" style="width: 100%; height: 256px; padding: 10px; box-sizing: border-box; border: 1px solid var(--mono_line); resize: none;" placeholder="문의내용을 입력해 주세요."><%=CS_DETAIL.Rows[0]["BOARD_MESSAGE"].ToString().Replace("<br/>","\r\n") %></textarea>
                            </div>
                        </div>
                        <div class="hd_Request_Filed_Pass">
                            <div class="hd_Reques_Info lowerst-font">문의글 비밀번호</div>
                            <div class="hd_Reques_Pass_Data lowerst-font">
                                <input type="password" class="drkid-input lowerst-font" id="I_PASSWORD" name="I_PASSWORD" value="<%=CS_DETAIL.Rows[0]["BOARD_PASSWORD"] %>" autocomplete="off" placeholder="비밀번호" />
                                <span class="material-icons-outlined material_custum_green pass_ok">check_circle</span>
                                <span class="material-icons-outlined material_custum_red pass_no">cancel</span>
                            </div>
                            <div class="hd_Reques_Pass_Data lowerst-font">
                                <input type="password" class="drkid-input lowerst-font" id="I_PASSWORD_CHECK" name="I_PASSWORD_CHECK" value="<%=CS_DETAIL.Rows[0]["BOARD_PASSWORD"] %>" autocomplete="off" placeholder="비밀번호 확인" />
                                <span class="material-icons-outlined material_custum_green check_ok">check_circle</span>
                                <span class="material-icons-outlined material_custum_red check_no">cancel</span>
                            </div>
                        </div>
                    </div>
                    <%--문의하기 , 취소 버튼 영역--%>
                    <div class="btn_Area">
                        <div class="request_Btn middle-font" id="request_modi_btn">수정완료</div>
                        <div class="request_Cansle_Btn middle-font">취소</div>
                    </div>
                    <%} %>
                        </div>
                    </div>
                </div>
         </div>
        </div>
    </div>
</asp:Content>
