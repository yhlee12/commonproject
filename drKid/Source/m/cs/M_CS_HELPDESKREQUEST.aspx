<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_CS_HELPDESKREQUEST.aspx.cs" Inherits="drKid.Source.m.cs.M_CS_HELPDESKREQUEST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myPage {
           background-color:#FFFFFF;
           padding: 0 15px;
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

        /*마이페이지 헤더*/
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
            visibility: hidden
        }

        .myPageHeader_top {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding: 0 0px 0.5rem;
            border-bottom: 2px solid #e2e2e2;
        }

         .dateBox {
            padding-top: 0.5rem;
        }

        .drkid-select {
            display:block;
            border: 1px solid #E2E2E2;
            height: 2rem;
            border-radius: 6px;
            padding-left: 0.5rem;
        }

        .inquery_write_top_txt {
           padding: 0.4rem 0;
        }

        .shipping_title {
            padding: 0.4rem 0;
        }

        .img_pluse_button {
            width: 2rem;
            height: 2rem;
            text-align: center;
            border: 1px solid #e2e2e2;
            border-radius: 4px;
        }

        .img_pluse_button > span {
            line-height: 2rem;
        }

        .inquery_write_wrap_inner {
            padding-bottom:0.5rem;
            border-bottom: 2px solid #e2e2e2;
        }

        .pluse_img {
            display:grid;
            grid-template-columns: repeat(3,1fr);
            gap:10px;
           
        }

        .pluse_img > img {
            width: 100%;
            height: 4rem;
            object-fit: cover;
            padding-bottom: 0.2rem;
        }

        .drkid-select-div {
            display:none;
        }

        input,select {
            width: 100%;
            border-radius: 6px;
        }

        @media screen and (min-width:768px) {
            .pluse_img {
                grid-template-columns: repeat(5,1fr);
            }

            .pluse_img > img {
                height: 6rem;
            }
        }

        
        .hd_Request_Area {
            padding: 0.2rem 0 2rem;
        }
        .data_info {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }
        .hd_Request_Filed {
            display: flex;
            flex-direction: column;
            gap: 0.2rem;
        }

        .hd_Request_Filed_Pass {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }
        .hd_Reques_Pass_Data  {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .hd_Reques_Pass_Data > input {
            border-radius: 6px;
        }

        .btn_Area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 1rem;
        }
        .btn_Area > div {
            min-width: 48%;
            text-align:center;
            padding:0.3rem 0;
            font-weight: 600;
        }
        .btn_Area > div:first-child {
            border: 1px solid var(--main_color);
        }
        .btn_Area > div:last-child {
            background: var(--main_color);
            color:#fff;
        }
        .hd_Reques_Guide  {
            color: var(--mono_dea);
        }
        .hd_Reques_Info  {
            font-weight: 400;
            color:#343434;
        }
    </style>

    <script>
        $(function () {    
            //문의하기 버튼
            $("#request_add_btn").on("click", function () {
                console.log($("#I_DETAIL").val());
                console.log($("#I_BOARD_MESSAGE").val());
                if (Validation() == false) {
                    return false;
                }
                $("#aspnetForm").submit();
            });
            //수정완료 버튼
            $("#request_modi_btn").on("click", function () {
                console.log($("#I_DETAIL").val());
                console.log($("#I_BOARD_MESSAGE").val());
                if (Validation() == false) {
                    return false;
                }
                $("#aspnetForm").submit();
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

        function clickHideFileInput(id) {
            $('#' + id).click();
        }
        function UpdateUploadButton1() {
            //업로드를 업로드 시켜 Callback을 타게함.
            //이때 Process bar 넣어서 로딩 처리
            uploader1.Upload();
        }
        function Uploader_OnFilesUploadComplete1(args) {
            UpdateUploadButton1();
        }
        function Uploader_OnFileUploadComplete1(args) {
            //여기서 Process bar 꺼야함
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    //oEditors.getById["smarteditor1"].exec("pluse_img", [JsonData["imgSrc"]]);
                    $(".pluse_img").append(JsonData["imgSrc"]);
                } else {
                    alert(JsonData['message']);
                }
            }
        }

        $(document).ready(function () {
            $(".prev_button").click(function () {
                window.history.back();
            });

            $("#requestInquery_button").on("click", function () {
                window.location.href = "/Source/m/cs/M_CS_HELPDESKDETAIL.aspx";
            });
        });


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <input type="hidden" name="pass_flag" id="pass_flag" value="N"/>
        <input type="hidden" name="request_flag" id="request_flag" value="<%=request_flag %>"/>
        <div class="myPageHeader">
            <%--배송지 관리 헤더 top--%>
            <div class="myPageHeader_top">
               <%-- <a href="/Source/m/my/M_M_MYPAGE.aspx">--%>
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
               <%-- </a>--%>
                <div class="myPage_txt">
                    <span>1:1문의 글쓰기</span>
                </div> 
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>

         <%--1:1 문의 조회 UI, 문의리스트 전체 영역--%>
                <div class="Bottom_Area">

                    <%--새 문의글 작성 edit--%>
                    <%if (request_flag == "edit")
                      { %>
                    <%--문의 작성폼 영역--%>
                    <div class="hd_Request_Area">
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info"></div>
                            <div class="hd_Reques_Guide m_lower_font">해당글은 비밀글로만 작성이 됩니다.</div>
                        </div>
                        <div class="data_info">
                            <%--문의유형--%>
                            <div class="hd_Request_Filed">
                                <div class="hd_Reques_Info m_middle_font">문의유형</div>
                                <div class="help_Type_Area">
                                    <select name="I_CATEGORY" id="I_CATEGORY" class="drkid-select m_lower_font" style="data-font-class="lowerst-font" data-styles='{"padding": "12px 10px"}'>
                                        <option class="m_lower_font" value="">선택</option>
                                        <%for (int i = 0; i < BOARD_CATEGORY.Rows.Count; i++)
                                          { %>
                                        <option class="lowerst-font" value="<%=BOARD_CATEGORY.Rows[i]["CODE_CODE"] %>"><%=BOARD_CATEGORY.Rows[i]["CODE_NAME"] %></option>
                                        <%} %>
                                    </select>
                                </div>
                            </div>
                            <%--제목--%>
                            <div class="hd_Request_Filed">
                                <div class="hd_Reques_Info m_middle_font">제목</div>
                                <div class="hd_Reques_Data m_lower_font">
                                    <input type="text" class="drkid-input m_lower_font" id="I_TITLE" name="I_TITLE" value="" autocomplete="off" placeholder="제목을 입력해 주세요." />
                                </div>
                            </div>
                            <%if (baseUser.userName == null)
                              {%>
                            <%--작성자 전화번호 비회원--%>
                            <div class="hd_Request_Filed NON_User_Field">
                                <div class="hd_Reques_Info m_middle_font">작성자</div>
                                <div class="hd_Reques_Double_Data m_lower_font">
                                    <input type="text" class="drkid-input m_lower_font" id="I_BOARD_WRITE_NM" name="I_BOARD_WRITE_NM" value="" autocomplete="off" placeholder="이름을 입력해 주세요." />
                                </div>
                               <%-- <div class="hd_Reques_Info lowerst-font left-padding">전화번호</div>
                                <div class="hd_Reques_Double_Data lowerst-font">
                                    <input type="hidden" name="PHONE_NUM" id="PHONE_NUM" value="" />

                                    <input type="text" class="drkid-input lowerst-font" id="I_BOARD_WRITE_SID" name="I_BOARD_WRITE_SID" value="" maxlength="13" autocomplete="off" placeholder="전화번호를 입력해 주세요." />
                                </div>--%>
                            </div>
                            <%} %>
                            <%else
                              { %>
                            <%--작성자 회원--%>
                            <div class="hd_Request_Filed User_Field">
                                <div class="hd_Reques_Info m_middle_font">작성자</div>
                                <div class="hd_Reques_Data m_lower_font"><%=baseUser.userName %>(<%=baseUser.userId %>)</div>
                            </div>
                        </div>
                        <%} %>
                        <%--첨부파일--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info m_middle_font">첨부파일</div>
                            <%--첨부파일 인풋, 찾아보기, + 버튼 영역--%>
                            <div class="img_pluse_button"onclick="clickHideFileInput('uploader1_TextBox0_Input')">
                                <span class="material-icons">add</span>
                            </div>
                                
                            <div class="img_pluse_button_txt">
                                <span class="m_lower_font txt_header_color">
                                    jpg, png, gif / 최대 5MB 이하 파일만 등록 가능<br />
                                    이미지는 최대 5개까지 등록 가능
                                </span>
                            </div>
                        </div>
   
                        <%--문의내용--%>
                        <div class="hd_Request_Filed_Detail">
                            <div class="hd_Reques_Info m_middle_font">문의내용</div>
                            <div class="hd_Reques_Data m_lower_font">
                                <textarea name="I_DETAIL" id="I_DETAIL" class="m_lower_font" style="width: 100%; height: 256px; padding: 10px; box-sizing: border-box; border: 1px solid var(--mono_line); resize: none;" placeholder="문의내용을 입력해 주세요."></textarea>
                            </div>
                        </div>
                        <div class="hd_Request_Filed_Pass">
                            <div class="hd_Reques_Info m_middle_font">문의글 비밀번호</div>
                            <div class="hd_Reques_Pass_Data m_lower_font">
                                <input type="password" class="drkid-input m_lower_font" id="I_PASSWORD" name="I_PASSWORD" value="" autocomplete="off" placeholder="비밀번호" />
                                <span class="material-icons-outlined material_custum_green pass_ok">check_circle</span>
                                <span class="material-icons-outlined material_custum_red pass_no">cancel</span>
                            </div>
                            <div class="hd_Reques_Pass_Data m_middle_font">
                                <input type="password" class="drkid-input m_lower_font" id="I_PASSWORD_CHECK" name="I_PASSWORD_CHECK" value="" autocomplete="off" placeholder="비밀번호 확인" />
                                <span class="material-icons-outlined material_custum_green check_ok">check_circle</span>
                                <span class="material-icons-outlined material_custum_red check_no">cancel</span>
                            </div>
                        </div>
                    </div>
                    <%--문의하기 , 취소 버튼 영역--%>
                    <div class="btn_Area">                    
                        <div class="request_Cansle_Btn middle-font">취소</div>
                        <div class="request_Btn middle-font" id="request_add_btn">문의하기</div>
                    </div>
                    <%} %>

                    <%--문의글 수정 modify--%>
                    <%if (request_flag == "modify")
                      { %>
                    <%--문의 작성폼 영역--%>
                    <div class="hd_Request_Area">
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info"></div>
                            <div class="hd_Reques_Guide m_lower_font">해당글은 비밀글로만 작성이 됩니다.</div>
                        </div>
                        <div class="data_info">
                            <%--문의유형--%>
                            <div class="hd_Request_Filed">
                                <div class="hd_Reques_Info lowerst-font">문의유형</div>
                                <div class="help_Type_Area">
                                    <select name="I_CATEGORY" id="I_CATEGORY" class="drkid-select m_lower_font" style="data-font-class="lowerst-font" data-styles='{"padding": "12px 10px"}'>
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
                                <div class="hd_Reques_Data m_lower_font">
                                    <input type="text" class="drkid-input m_lower_font" id="I_TITLE" name="I_TITLE" value="<%=CS_DETAIL.Rows[0]["BOARD_TITLE"] %>" autocomplete="off" placeholder="제목을 입력해 주세요." />
                                </div>
                            </div>
                            <%if (CS_DETAIL.Rows[0]["BOARD_USER_TYPE"].ToString() == "01")
                              {%>
                            <%--작성자 전화번호 비회원--%>
                            <div class="hd_Request_Filed NON_User_Field">
                                <div class="hd_Reques_Info lowerst-font">작성자</div>
                                <div class="hd_Reques_Double_Data m_lower_font">
                                    <input type="text" class="drkid-input m_lower_font" id="I_BOARD_WRITE_NM" name="I_BOARD_WRITE_NM" value="<%=CS_DETAIL.Rows[0]["BOARD_WRITE_NM"] %>" autocomplete="off" placeholder="이름을 입력해 주세요." />
                                </div>
                                <%--<div class="hd_Reques_Info lowerst-font left-padding">전화번호</div>
                                <div class="hd_Reques_Double_Data lowerst-font">
                                    <input type="hidden" name="PHONE_NUM" id="PHONE_NUM" value="<%=CS_DETAIL.Rows[0]["BOARD_WRITE_SID"] %>" />
                                    <input type="text" class="drkid-input lowerst-font" id="I_BOARD_WRITE_SID" name="I_BOARD_WRITE_SID" value="<%=CS_DETAIL.Rows[0]["NON_USER_PHONE_NUM"] %>" maxlength="13" autocomplete="off" placeholder="전화번호를 입력해 주세요." />
                                </div>--%>
                            </div>
                            <%} %>
                            <%else
                              { %>
                            <%--작성자 회원--%>
                            <div class="hd_Request_Filed User_Field">
                                <div class="hd_Reques_Info m_middle_font">작성자</div>
                                <div class="hd_Reques_Data m_lower_font"><%=baseUser.userName %>(<%=baseUser.userId %>)</div>
                            </div>
                            <%} %>
                        </div>
                        <%--첨부파일--%>
                        <div class="hd_Request_Filed">
                            <div class="hd_Reques_Info lowerst-font">첨부파일</div>
                           <%--첨부파일 인풋, 찾아보기, + 버튼 영역--%>
                            <div class="img_pluse_button"onclick="clickHideFileInput('uploader1_TextBox0_Input')">
                                <span class="material-icons">add</span>
                            </div>
                                
                            <div class="img_pluse_button_txt">
                                <span class="m_lower_font txt_header_color">
                                    jpg, png, gif / 최대 5MB 이하 파일만 등록 가능<br />
                                    이미지는 최대 5개까지 등록 가능
                                </span>
                            </div>
                        </div>
                      
                        <%--문의내용--%>
                        <div class="hd_Request_Filed_Detail">
                            <div class="hd_Reques_Info m_middle_font">문의내용</div>
                            <div class="hd_Reques_Data m_lower_font">
                                <textarea name="I_DETAIL" id="I_DETAIL" class="m_lower_font" style="width: 100%; height: 256px; padding: 10px; box-sizing: border-box; border: 1px solid var(--mono_line); resize: none;" placeholder="문의내용을 입력해 주세요."><%=CS_DETAIL.Rows[0]["BOARD_MESSAGE"].ToString().Replace("<br/>","\r\n") %></textarea>
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
                        <div class="request_Cansle_Btn">취소</div>
                        <div class="request_Btn" id="request_modi_btn">수정완료</div>
                    </div>
                    <%} %>
                </div>
        </div>

     <div style="width:90%;display:none;">
        <%--상품상세 관련 이미지 등록--%>
        <%--<dx:ASPxUploadControl ClientIDMode="Static" ID="uploader1" runat="server" ClientInstanceName="uploader1" ShowProgressPanel="true" NullText="Click here to browse files..." Size="50"
            OnFileUploadComplete="UploadControl_FilesUploadComplete1" CssClass="input">
            <ClientSideEvents 
                FileUploadComplete="function(s, e) { Uploader_OnFileUploadComplete1(e); }"
                FilesUploadComplete="function(s, e) { Uploader_OnFilesUploadComplete1(e); }"
                TextChanged="function(s, e) { UpdateUploadButton1(); }" />
            <ValidationSettings MaxFileSize="5242880" AllowedFileExtensions=".jpg,.jpeg,.jpe,.gif,.png"></ValidationSettings>                                
        </dx:ASPxUploadControl>
        <dx:ASPxButton ID="btnUpload1" runat="server" AutoPostBack="false" Text="Upload" ClientInstanceName="btnUpload1" Height="23" ClientEnabled="false">
            <ClientSideEvents Click="function(s, e) { uploader2.Upload(); }" />
        </dx:ASPxButton>  --%>
    </div>
</asp:Content>
