<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_INFOCHANGE_DETAIL.aspx.cs" Inherits="drKid.Source.m.my.M_M_INFOCHANGE_DETAIL" %>
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
            padding: 0 0px 5px;
        }

        .infoChange_wrap_inner {
            padding-bottom: 1rem;
            border-bottom: 2px solid var(--mono_line);
        }

        .infoChange_top {
            padding-top: 1rem;
            font-weight: 700;
        }

        .shippingList_wrap {
            padding: 0.5rem 0;
            /*border-bottom: 1px solid var(--mono_line);*/
        }

        .shipping_title {
            padding-bottom: 5px;
        }

        .title_input > input {
            width: 100%;
            border-radius: 4px;
        }

        .pw_top_padding {
            padding-top: 10px;
        }

        .phone_number_wrap {
            display:flex;
            align-items:center;
            justify-content:space-between;
        }

         .number_title_input {
            width:30%;
        }

        .number_title_input > input {
            width:100%;
            border-radius:4px;
        }

          .put_address {
            display:flex;
            align-items:center;
            justify-content: space-between;
            gap: 1rem;       
        }

        .put_address_button {
            height: 2rem;
            background:#000;
            color:#fff;
            padding:0 1rem;
            border-radius:4px;
        }

        .put_address_button > span {
            line-height: 2rem;
        }

        .put_address_title_input {
            width: 65%;
        }

        .put_address_title_input > input {
            width: 100%;
            border-radius:4px;
        }
        .input_background {
            background: #F3F3F3;
        }
        .input_bottom_padding {
            padding-bottom: 0.4rem;
        }

        .title_select_area {
            display: flex;
            align-items: center;
            gap: 10px;
            justify-content: space-between;
        }

        .title_select_input {
            width: 65%;
        }

        .title_select_input > input {
            width: 100%;
            border-radius:4px;
        }

        .drkid-select {
            width: 100%;
            display: block;
            border: 1px solid var(--mono_line);
            height: 40px;
            border-radius:4px;
            padding: 0 0.2rem;
        }

        .block-example {
            width: 30%;
        }

        .block-example > select {
            width: 100%;
        }

        .shipping_button {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding-top: 2rem;
        }

        .shipping_button > .button {
            border: 1px solid var(--main_color);
            padding: 0.3rem 2rem;
            min-width: 43%;
            text-align: center;
        }

        .shipping_button > .button:first-child {
            font-weight:600;
        }

        .shipping_button > .button:last-child {
            color:#fff;
        }

                .hide_wrap2 {
            display:none;       
            position: fixed;
            width:100%;
            z-index:998;
            top: 0;
            padding: 15px;
            overflow: scroll;
            background: #23232333 0% 0% no-repeat padding-box;;
        }


        .hide_wrap_inner {
             width: 100%;
             height:100vh;
             margin: auto;
        }

        .alter {
           padding: 0.8rem 1rem;
            position: relative;
            background: #fff;
            z-index: 999;
            top: 20%;
        }

        .alter_txt {
            text-align:center;
        }

        .alter_button2 {
            display:flex;
            align-items:center;
            justify-content:center;
            padding-top: 1rem;
        }

         .alter_button2 > .alter_button_fist {
            border: 1px solid #115c5e;
            background-color: #115c5e;
            color: #fff;
            cursor:pointer;   
            padding: 0.3rem 2rem;
         }

         #id > input::placeholder {
            color:#000;
         }

         #pw > input::placeholder,
         #pw1 > input::placeholder,
         #pw2 > input::placeholder {
             color:#D8D8D8;
         }

         #name > input::placeholder,
         #email > input::placeholder,
         #re_name > input::placeholder {
             color:#111111;
         }
         .accountCertification {
            padding: 0.5rem 0;
            border-bottom: 2px solid var(--mono_line);
         }
         .accountContent {
             padding-bottom: 0.5rem;
         }
         .accountCertification_title {
            font-weight: 700;
            padding-bottom: 0.5rem;
         }
         .accountContent {
             display: flex;
             align-items: center;
         }
         .accountTilte {
             width: 30%;
         }
         .accountBox {
             width: 70%;
         }
         .accountBox > input { 
             width: 100%;
             border-radius:6px;
         }
         .accountCertification_bottom_title {
             color: var(--drkid_Negative);
             font-weight: 400;
         }    
         /*.shipping_title {
            padding: 0.4rem 0;
        }*/
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
        .img_pluse_button_txt {
            color:#8F8F8F;
        }
        /*추가*/ 
        .border-bottom {
            border-bottom: 2px solid var(--mono_line);
        } 
        .font-weight400 {
            font-weight:400;
        }  
        .accountBox > input::placeholder  {
            color:var(--m_mono_color);
        }

        /*이미지 업로딩 추가*/
        .uploaded-image {
            position: relative;
        }
        .uploaded-image > img {
            object-fit:cover;
             min-height: 90px;
        }
        .delete-button > span {
            position: absolute;
            top: 0;
            right: 0;
            color: black;
            z-index: 999;
            font-size: 20px;
            background: #ccc;
        }
    </style>

    <script>
        function clickHideFileInput(id) {
            $('#' + id).click();
        }

        function UpdateUploadButton1() {
            uploader1.Upload();
        }

        function Uploader_OnFilesUploadComplete1(args) {
            UpdateUploadButton1();
        }

        function deleteImage(imageElement) {
            $(imageElement).remove();
        }

        function Uploader_OnFileUploadComplete1(args) {
            if (args.isValid) {
                var ret = args.callbackData + "";
                let JsonData = JSON.parse(ret);
                if ((JsonData['status'] + "") == 'Y') {
                    let imageSrc = JsonData["imgSrc"];
                    let imageElement = $('<div class="uploaded-image">' + imageSrc + '<div class="delete-button"><span class="material-icons">close</span></div></div>');

                    imageElement.find('.delete-button').click(function () {
                        deleteImage(imageElement);
                    });

                    $(".pluse_img").append(imageElement);
                } else {
                    alert(JsonData['message']);
                }
            }
        }

        $(document).ready(function () {
            //prev 버튼
            $(".prev_button").click(function () {
                location.href = "/Source/m/my/M_M_INFOCHANGE.aspx";
            });
            $("#remove_button").click(function () {
                location.href = "/Source/m/my/M_M_INFOCHANGE.aspx";
            });

            //주문 처리 확인 버튼
            $("#save_button").click(function () {
                $(".hide_wrap2").css("display", "block");
            });

            //주문 처리 확인 버튼
            $("#open_button2").click(function () {
                $(".hide_wrap2").css("display", "none");
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <%--hide wrap2--%>
    <div class="hide_wrap2">
        <div class="hide_wrap_inner">
            <div class="alter">
                <div class="alter_txt">
                    <span class="m_middle_font">회원정보 수정이 성공하였습니다.</span>
                </div>
                <div class="alter_button2">
                    <div class="alter_button_fist" id="open_button2">
                        <span>확인</span>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <%--hide wrap2--%>


    <div class="myPage">
        <div class="myPageHeader">
            <%--배송지 관리 헤더 top--%>
            <div class="myPageHeader_top">
                <%--<a href="/Source/m/my/M_M_MYPAGE.aspx">--%>
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
                <%--</a>--%>
                <div class="myPage_txt">
                    <span>회원정보 수정</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>

       <%--회원 기본정보--%>
        <div class="infoChange">
            <div class="infoChange_wrap">
                <div class="infoChange_wrap_inner">
                     <%--회원 기본정보 top--%>
                    <div class="infoChange_top">
                        <span>기본정보</span>
                    </div>
                    
                    <%--아이디--%>
                    <div class="shippingList_wrap">
                        <div class="shipping_title">
                            <span class="m_middle_font">아이디</span>
                        </div>
                        <div class="title_input" id="id">
                            <input class="m_lower_font input_background " type="text" name="name" value="" placeholder="drkeydni"/>
                        </div>
                    </div>

                    <%--비밀번호--%>
                    <div class="shippingList_wrap">
                        <div class="shipping_title">
                            <span class="m_middle_font">비밀번호</span>
                        </div>
                        <div class="title_input" id="pw">
                            <input class="m_lower_font" type="text" name="name" value="" placeholder="현재 비밀번호"/>
                        </div>
                        <div class="title_input pw_top_padding" id="pw1">
                            <input class="m_lower_font" type="text" name="name" value="" placeholder="새 비밀번호"/>
                        </div>
                        <div class="title_input pw_top_padding" id="pw2">
                            <input class="m_lower_font" type="text" name="name" value="" placeholder="새 비밀번호 확인"/>
                        </div>
                    </div>

                     <%--이름--%>
                    <div class="shippingList_wrap">
                        <div class="shipping_title">
                            <span class="m_middle_font">이름</span>
                        </div>
                        <div class="title_input" id="name">
                            <input class="m_lower_font" type="text" name="name" value="" placeholder="000"/>
                        </div>
                    </div>

                    <%--이메일--%>
                    <div class="shippingList_wrap">
                        <div class="shipping_title">
                            <span class="m_middle_font">이메일</span>
                        </div>

                        <div class="title_select_area">
                             <div class="title_select_input" id="email">
                                <input class="m_lower_font" type="text" name="name" value="" placeholder="smpyo@t2l.co.kr"/>
                            </div>
                            <div class="block-example">                                      
                                <select class="drkid-select m_lower_font" style="width:100%;" data-font-class="m_lower_font">
                                    <option>직접입력</option>
                                </select>
                            </div>               
                        </div>                  
                    </div>


                    <%--휴대폰 번호--%>
                    <div class="shippingList_wrap">
                        <div class="shipping_title">
                            <span class="m_middle_font">휴대폰 번호</span>
                        </div>
                        <div class="phone_number_wrap">
                            <div class="number_title_input">
                                <input class="m_lower_font" type="text" name="name" value=""/>
                            </div>
                            <div class="number_title_input">
                                <input class="m_lower_font" type="text" name="name" value=""/>
                            </div>
                            <div class="number_title_input">
                                <input class="m_lower_font" type="text" name="name" value=""/>
                            </div>
                        </div>                           
                    </div>

                    <%--주소--%>
                    <div class="shippingList_wrap">
                        <div class="shipping_title">
                            <span class="m_middle_font">주소</span>
                        </div>
                        <div class="put_address input_bottom_padding">
                            <div class="put_address_title_input">
                                <input class="m_lower_font input_background" type="text" name="name" value=""/>
                            </div>
                            <div class="put_address_button"> 
                                <span class="m_lower_font">주소검색</span>
                            </div>
                        </div>
                            <div class="title_input input_bottom_padding">
                            <input class="m_lower_font input_background" type="text" name="name" value=""/>
                        </div>
                            <div class="title_input">
                            <input class="m_lower_font" type="text" name="name" value=""/>
                        </div>                       
                    </div>

                    <%--생일--%>
                    <div class="shippingList_wrap">
                        <div class="shipping_title">
                            <span class="m_middle_font">생일</span>
                        </div>

                        <div class="title_select_area">
                            <div class="block-example">                                      
                                <select class="drkid-select m_lower_font" style="width:100%;" data-font-class="m_lower_font">
                                    <option>1993</option>
                                </select>
                            </div>     
                             <div class="block-example">                                      
                                <select class="drkid-select m_lower_font" style="width:100%;" data-font-class="m_lower_font">
                                    <option>01</option>
                                </select>
                            </div>     
                            <div class="block-example">                                      
                                <select class="drkid-select m_lower_font" style="width:100%;" data-font-class="m_lower_font">
                                    <option>01</option>
                                </select>
                            </div>               
                        </div>                  
                    </div>

                     <%--추천인 아이디--%>
                    <div class="shippingList_wrap">
                        <div class="shipping_title" id="re_name">
                            <span class="m_middle_font">추천인 아이디</span>
                        </div>
                        <div class="title_input">
                            <input class="m_lower_font input_background" type="text" name="name" value="" placeholder="drkeydni"/>
                        </div>
                    </div>
                </div>

                <%--리워드 신청 계좌인증--%>
                <div class="accountCertification">
                    <%--리워드 신청 계좌인증 타이틀--%>
                    <div class="accountCertification_title">
                        <span>리워드 신청 계좌인증</span>
                    </div>
                    <%--리워드 신청 계좌인증 컨텐츠--%>
                    <div class="accountCertification_content">
                        <%--은행--%>
                        <div class="accountBank">
                            <div class="accountContent">
                                <div class="accountTilte">
                                    <span class="m_middle_font">은행</span>
                                </div>
                                <div class="accountBox">
                                    <select class="drkid-select m_lower_font">
                                        <option>은행선택</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <%--계좌번호--%>
                        <div class="accountNumber">
                            <div class="accountContent">
                                <div class="accountTilte">
                                    <span class="m_middle_font">계좌번호</span>
                                </div>
                                <div class="accountBox">
                                    <input class="m_lower_font" type="text" name="accountNumber" value="" placeholder="계좌번호 입력"/>
                                </div>
                            </div>
                        </div>
                        <%--예금주--%>
                        <div class="accountHolder">
                            <div class="accountContent">
                                <div class="accountTilte">
                                    <span class="m_middle_font">예금주</span>
                                </div>
                                <div class="accountBox">
                                    <input class="m_lower_font" type="text" name="accountHolder" value="" placeholder="예금주 입력"/>
                                </div>
                            </div>                    
                        </div>
                        <%--최하단 타이틀--%>
                        <div class="accountCertification_bottom_title">
                            <span class="m_lowerst_font">* 리워드 신청을 위한 정확한 계좌정보를 입력하여주십시오.</span>
                        </div>
                    </div>
                </div>

                <%--첩부파일--%>
                <div class="shippingList_wrap border-bottom">
                    <div class="shipping_title">
                        <span class="m_middle_font font-weight400">사업자등록증</span>
                    </div>

                    <%--첨부파일 이미지--%>
                    <div class="pluse_img_wrap">
                        <div class="pluse_img_wrap_inner">
                            <div class="pluse_img">
                                <%-- <img src="" alt="Alternate Text" />--%>
                            </div>
                        </div>
                    </div>

                    <div class="img_pluse_button"onclick="clickHideFileInput('uploader1_TextBox0_Input')">
                        <span class="material-icons">add</span>
                    </div>
                                 
                    <div class="img_pluse_button_txt">
                        <span class="m_lower_font txt_header_color">
                            jpg, png, gif / 최대 5MB 이하 파일만 등록 가능<br />
                            이미지는 최대 1개까지 등록 가능
                        </span>
                    </div>
                </div>


                 <%--최하단 버튼--%>
                <div class="shipping_button">
                    <div class="button" id="remove_button">
                        <span class="main_color">취소</span>
                    </div>
                    <div class="button main_bg_color" id="save_button">
                        <span>정보수정</span>
                    </div>
                </div>
            </div>
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
