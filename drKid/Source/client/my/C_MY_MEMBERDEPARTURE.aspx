<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MY_MEMBERDEPARTURE.aspx.cs" Inherits="drKid.Source.client.my.C_MY_MEMBERDEPARTURE" %>
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
        .my_Title_Area {
            padding: 0px 0px 20px 0px;
         }
         .my_Title {
            font-size:28px;
            font-weight:600;
         }
        /*회원탈퇴*/
        .departure_Wrap {
             border-top: 1px solid #262626;
        }
        .departure_Guide_Title {
             padding: 10px 0px;
             font-weight: 400;
        }
        .departure_Guide_Box { 
            border: 1px solid #D8D8D8;
            border-radius: 4px;
            padding: 20px;
        }
        .daparture_Wrap {
            border-top: 1px solid #262626;
        }
        .departure_Check_Form {
            border-top: 1px solid #262626;
            padding: 30px;
        }
        .departure_Area {
            padding: 50px 0px 0px 0px;
        }
        .departure_Check_Record {
            display: flex;
            align-items: center;
            width:100%;
            padding: 0px 0px 20px 0px;
        }
        .departure_Check_Info {
            width:10%;
            font-weight: 400;
        }
        .departure_Check_Pw {
            width: 315px;
        }
        #I_DP_CHECK_PW {
            width: 100%;
            height: 50px;
        }
        #I_DP_CHECK_PW::placeholder {
            color:#D8D8D8;
        }
        .departure_Checkbox_Record {
            display: flex;
            align-items: start;
            width: 100%;
            padding: 0px 0px 20px 0px;
        }
        .departure_Checkbox_List {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 7px 127px;
        }
        .drkid-checkbox {
            display: flex;
            gap: 0px 5px;
        }
        .departure_Message_Area {
            display: flex;
            align-items: start;
            padding: 20px 0px;
            border-top: 1px solid #CCCCCC;
            border-bottom: 1px solid #CCCCCC;
        }
        #I_DEPARTURE_MESSAGE:focus {
             outline:1px solid #005764;
        }
        .departure_Btn_Area {
            width: 100%;
            padding: 50px 0px 0px 0px
        }
        .departure_Btn {
            width: 120px;
            height: 50px;
            line-height: 50px;
            background: var(--main_color);
            color: #ffffff;
            text-align: center;
            margin: 0 auto;
            cursor:pointer;
        }
        .checkbox_txt {
            color:#707070;
        }

        

    </style>
     <script>

         let _order_Num;

         //주문 취소 함수
         function order_Cansle(order_Number) {
             $("#" + order_Number).find(".new_Order_List_Row_4.lowerst-font").html("고객요청취소");
             $("#" + order_Number).find(".new_Order_List_Row_4_1.lowerst-font").html("완료");
             setTimeout(function () {
                 _popModal.Alert('', '주문이 정상취소 되었습니다.');
             }, 500)
         }
         var esrrorCallBack = function (ex) {
             console.log(ex);
         }

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
             //회원탈퇴 버튼
             $(".departure_Btn").click(function () {
                 _popModal.Alert('', '회원탈퇴가 완료되었습니다.');
             });
             //남기실 말씀 textarea에 이유는 모르나 공백이 생겨서 공백제거
             $("#I_DEPARTURE_MESSAGE").val('');
             



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
                                <%--My 셀럽#--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">My 셀럽#</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_CELEBRITY_EDIT">셀럽# 상품등록</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_CELEBRITY_LIST">셀럽# 상품목록</div>
                                    </div>
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
                                        <div class="KeyDni_Info lower-font" id="C_MY_HELPDESKLIST">나의 1:1 문의</div>
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
                                        <div class="KeyDni_Info_Clicked lower-font"id="C_MY_MEMBERDEPARTURE">회원 탈퇴</div>
                                        <div class="KeyDni_Info lower-font logout_Btn">로그아웃</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--레프트메뉴 제외 하단 전체 영역--%>
                        <div class="Bottom_Area">
                            <div class="my_Title_Area">
                                <div class="my_Title">회원탈퇴</div>
                            </div>
                            <%--회원탈퇴 전체 영역--%>
                            <div class="daparture_Wrap">
                                <div class="departure_Guide_Title middle-font">회원탈퇴 안내</div>
                                <div class="departure_Guide_Box lowerst-font">
                                    닥터키드니 탈퇴안내<br><br>회원님께서 회원 탈퇴를 원하신다니 저희 쇼핑몰의 서비스가 많이 부족하고 미흡했나 봅니다.<br>불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서 고객님의 불편함을 해결해 드리도록 노력하겠습니다.<br><br>■ 아울러 회원 탈퇴시의 아래 사항을 숙지하시기 바랍니다.<br>1. 회원 탈퇴 시 회원님의 정보는 상품 반품 및 A/S를 위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한고객정보 보호정책에따라 관리 됩니다.<br>2. 탈퇴 시 회원님께서 보유하셨던 쿠폰 등은 모두 삭제 처리 됩니다.<br>3. 탈퇴 후 재가입은 1개월 이후에 가능합니다.
                                </div>

                                <div class="departure_Area">
                                    <div class="departure_Guide_Title middle-font">회원탈퇴 하기</div>
                                    <div class="departure_Check_Form">
                                        <%--비밀번호--%>
                                        <div class="departure_Check_Record">
                                            <div class="departure_Check_Info lowerst-font">비밀번호</div>
                                            <div class="departure_Check_Pw">
                                                <input type="password" class="drkid-input lowerst-font" id="I_DP_CHECK_PW" name="I_DP_CHECK_PW" value="" placeholder="비밀번호를 입력해 주세요." />
                                            </div>
                                        </div>
                                        <%--탈퇴사유 체크박스--%>
                                        <div class="departure_Checkbox_Record">
                                            <div class="departure_Check_Info lowerst-font">탈퇴사유</div>
                                            <div class="departure_Checkbox_List">
                                                <%--전체 체크박스 영역--%>
                                                <label class="drkid-checkbox" id="">
                                                    <input type="checkbox" value="N" id=""/>
                                                    <span class="fake-check-box"></span>
                                                    <span class="checkbox_txt lowerst-font">고객서비스(상담,포장 등) 불만</span>
                                                </label>
                                                <label class="drkid-checkbox" id="">
                                                    <input type="checkbox" value="N" id=""/>
                                                    <span class="fake-check-box"></span>
                                                    <span class="checkbox_txt lowerst-font">배송불만</span>
                                                </label>
                                                <label class="drkid-checkbox" id="">
                                                    <input type="checkbox" value="N" id=""/>
                                                    <span class="fake-check-box"></span>
                                                    <span class="checkbox_txt lowerst-font">교환/환불/반품 불만</span>
                                                </label>
                                                <label class="drkid-checkbox" id="">
                                                    <input type="checkbox" value="N" id=""/>
                                                    <span class="fake-check-box"></span>
                                                    <span class="checkbox_txt lowerst-font">방문 빈도가 낮음</span>
                                                </label>
                                                <label class="drkid-checkbox" id="">
                                                    <input type="checkbox" value="N" id=""/>
                                                    <span class="fake-check-box"></span>
                                                    <span class="checkbox_txt lowerst-font">상품가격 불만</span>
                                                </label>
                                                <label class="drkid-checkbox" id="">
                                                    <input type="checkbox" value="N" id=""/>
                                                    <span class="fake-check-box"></span>
                                                    <span class="checkbox_txt lowerst-font">개인 정보유출 우려</span>
                                                </label>
                                                <label class="drkid-checkbox" id="">
                                                    <input type="checkbox" value="N" id=""/>
                                                    <span class="fake-check-box"></span>
                                                    <span class="checkbox_txt lowerst-font">쇼핑몰의 신뢰도 불만</span>
                                                </label>
                                            </div>
                                        </div>
                                        <%--남기실 말씀--%>
                                        <div class="departure_Message_Area">
                                            <div class="departure_Check_Info lowerst-font">남기실 말씀</div>
                                            <textarea id="I_DEPARTURE_MESSAGE"style="width:100%; height:256px; padding:10px; box-sizing: border-box; border: 1px solid var(--mono_line);">
                                            </textarea>
                                        </div>
                                        <%--탈퇴하기 버튼--%>
                                        <div class="departure_Btn_Area">
                                            <div class="departure_Btn">탈퇴하기</div>
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
</asp:Content>
