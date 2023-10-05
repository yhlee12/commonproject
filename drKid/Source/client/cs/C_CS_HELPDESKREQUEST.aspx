﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_CS_HELPDESKREQUEST.aspx.cs" Inherits="drKid.Source.client.cs.C_CS_HELPDESKREQUEST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         #sub_content {
            padding: 7rem 0;
            position: relative;
            z-index: 1;
        }
         #content{
             width:998px;
             margin:auto;
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
            max-width: 740px;
            margin: 0 auto;
        }
        .Title_Area {
            text-align:center;
            padding: 0px 0px 40px 0px;
        }
        .main_Title_Txt {
            font-weight:600;
            padding: 15px 0px;
            font-size:30px;
        }
         .sub_Title_Txt {
            color:#9F9F9F;
        }

        .main_Label_Area {
            display: flex;
            justify-content: center;
            gap:0px 20px;
        }
        .main_Label_1 {
            background: #FFFFFF; 
            border: 1px solid #D8D8D8;
            padding: 9px 0px;
            width: 127px;
            text-align: center;
            cursor:pointer;
        }
        .main_Label_1:hover{
             color:#FFFFFF;
             background:#115C5E;
        }
        .main_Label_2 {
            background: #FFFFFF; 
            border: 1px solid #D8D8D8;
            padding: 9px 0px;
             width: 92px;
            text-align: center;
            cursor:pointer;
        }
        .main_Label_2:hover{
             color:#FFFFFF;
             background:#115C5E;
        }
        .main_Label_3 {
             width: 92px;
            text-align: center;
            padding: 9px 0px;
            background:#115C5E;
            border: 1px solid #D8D8D8;
            cursor:pointer;
            color:#FFFFFF;
        }
        .KeyDni_Top_Title {
            font-size:28px;
            height:49px;
            font-weight:600;
            margin-top:70px;
            border-bottom:1px solid #262626;
            margin-bottom:10px;
        }
             /*문의작성폼*/
        .hd_Request_Area {
            width: 100%;
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
        .left-padding {
            padding: 0 0 0 20px;
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
        #I_BOARD_WRITE_NM,#I_BOARD_WRITE_SID{
            width: 100%;
            height: 50px;
        }
        #I_PASSWORD,#I_PASSWORD_CHECK{
            width: 75%;
            height: 35px;
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
            background: #115C5E;
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
        /*프롬프트*/
        .t2l-alert-inner-wraper {
            min-width: 330px;
            padding: 47px;
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
        .drkid-select-div {
            display:block;
        }
    </style>
    <script>
        $(function () {
            //자주 묻는 질문 페이지 이동
            $(".main_Label_1").click(function () {
                location.href = "/Source/client/cs/C_CS_QUESTIONLIST.aspx"
            });
            //공지사항 페이지 이동
            $(".main_Label_2").click(function () {
                location.href = "/Source/client/cs/C_CS_NOTICELIST.aspx"
            });
            //1:1문의 페이지 이동
            $(".main_Label_3").click(function () {
                location.href = "/Source/client/cs/C_CS_HELPDESKLIST.aspx"
            });
            //취소 버튼 클릭 시 1:1문의 리스트로 이동
            $(".request_Cansle_Btn").click(function () {
                location.href = "/Source/client/cs/C_CS_HELPDESKLIST.aspx";
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
            if ($("#I_CATEGORY").val()=="") {
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
                <%--타이틀~자주묻는 질문,공지사항 ui까지--%>
                <div class="main_Box">
                    <div class="Title_Area">
                        <div class="main_Title_Txt">고객센터</div>
                        <div class="sub_Title_Txt lower-font">닥터키드니 고객센터입니다. 무엇을 도와드릴까요?</div>
                    </div>
                    <div class="main_Label_Area">
                        <div class="main_Label_1 lower-font">자주 묻는 질문</div>
                        <div class="main_Label_2 lower-font">공지사항</div>
                        <div class="main_Label_3 lower-font">1:1문의</div>
                    </div>
                </div>
                <%--1:1 문의 조회 UI, 문의리스트 전체 영역--%>
                <div class="Bottom_Area">
                    <%--1:1 문의 조회UI--%>
                    <div class="order_Search_Ui_Area">
                        <div class="order_Search_Ui_Title_Area">
                            <div class="progress_Order_Title KeyDni_Top_Title">1:1 문의</div>
                        </div>
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
                        <%if (baseUser.userName == null)
                          {%>
                        <%--작성자 전화번호 비회원--%>
                        <div class="hd_Request_Filed NON_User_Field">
                            <div class="hd_Reques_Info lowerst-font">작성자</div>
                            <div class="hd_Reques_Double_Data lowerst-font">
                                <input type="text" class="drkid-input lowerst-font" id="I_BOARD_WRITE_NM" name="I_BOARD_WRITE_NM" value="" autocomplete="off" placeholder="이름을 입력해 주세요." />
                            </div>
                            <div class="hd_Reques_Info lowerst-font left-padding">전화번호</div>
                            <div class="hd_Reques_Double_Data lowerst-font">
                                <input type="hidden" name="PHONE_NUM" id="PHONE_NUM" value="" />

                                <input type="text" class="drkid-input lowerst-font" id="I_BOARD_WRITE_SID" name="I_BOARD_WRITE_SID" value="" maxlength="13" autocomplete="off" placeholder="전화번호를 입력해 주세요." />
                            </div>
                        </div>
                        <%} %>
                        <%else
                          { %>
                        <%--작성자 회원--%>
                        <div class="hd_Request_Filed User_Field">
                            <div class="hd_Reques_Info lowerst-font">작성자</div>
                            <div class="hd_Reques_Data lowerst-font"><%=baseUser.userName %>(<%=baseUser.userId %>)</div>
                        </div>
                        <%} %>
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
                        <%if (CS_DETAIL.Rows[0]["BOARD_USER_TYPE"].ToString() == "01")
                          {%>
                        <%--작성자 전화번호 비회원--%>
                        <div class="hd_Request_Filed NON_User_Field">
                            <div class="hd_Reques_Info lowerst-font">작성자</div>
                            <div class="hd_Reques_Double_Data lowerst-font">
                                <input type="text" class="drkid-input lowerst-font" id="I_BOARD_WRITE_NM" name="I_BOARD_WRITE_NM" value="<%=CS_DETAIL.Rows[0]["BOARD_WRITE_NM"] %>" autocomplete="off" placeholder="이름을 입력해 주세요." />
                            </div>
                            <div class="hd_Reques_Info lowerst-font left-padding">전화번호</div>
                            <div class="hd_Reques_Double_Data lowerst-font">
                                <input type="hidden" name="PHONE_NUM" id="PHONE_NUM" value="<%=CS_DETAIL.Rows[0]["BOARD_WRITE_SID"] %>" />
                                <input type="text" class="drkid-input lowerst-font" id="I_BOARD_WRITE_SID" name="I_BOARD_WRITE_SID" value="<%=CS_DETAIL.Rows[0]["NON_USER_PHONE_NUM"] %>" maxlength="13" autocomplete="off" placeholder="전화번호를 입력해 주세요." />
                            </div>
                        </div>
                        <%} %>
                        <%else
                          { %>
                        <%--작성자 회원--%>
                        <div class="hd_Request_Filed User_Field">
                            <div class="hd_Reques_Info lowerst-font">작성자</div>
                            <div class="hd_Reques_Data lowerst-font"><%=baseUser.userName %>(<%=baseUser.userId %>)</div>
                        </div>
                        <%} %>
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
</asp:Content>
