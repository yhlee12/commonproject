﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_PRODUCT_INQUERY_WRITE.aspx.cs" Inherits="drKid.Source.m.my.M_M_PRODUCT_INQUERY_WRITE" %>
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

        .title_input > input {
            width: 100%;
            border-radius:4px;
        }

        .shipping_title {
            padding: 0.4rem 0;
        }

        .title_input > textarea {
            display:block;
            min-width: 100%;
            min-height: 15rem;
            border-radius: 4px;
            border: 1px solid var(--mono_line);
            box-sizing: border-box;
            resize: none;
            padding: 0.5rem;
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

         .shipping_button {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding-top: 1rem;
        }

        .shipping_button > .button {
            border: 1px solid #115c5e;
            padding: 0.3rem 2rem;
            min-width: 48%;
            text-align: center;
        }

        .shipping_button > .button:first-child {
            font-weight:600;
        }

        .shipping_button > .button:last-child {
            color:#fff;
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

        /*폰트. color*/
        .icon_font
        {
            font-size:0.75rem;
        }

        .txt_header_color {
            color:#8F8F8F;
        }

        .text_black_color {
            color:#262626;
        }

        @media screen and (min-width:768px) {
            .pluse_img {
                grid-template-columns: repeat(5,1fr);
            }

            .pluse_img > img {
                height: 6rem;
            }
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
            color: white;
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
            $(".prev_button, #remove_button").click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_INQUERY.aspx";
            });

            //1:1문의 디테일 페이지로 넘어감
            $(".add_button").click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_INQUERY_WRITE.aspx";
            });

            $("#save_button").on("click", function () {
                window.location.href = "/Source/m/my/M_M_PRODUCT_INQUERY_WRITE_DETAIL.aspx";
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
            <%--배송지 관리 헤더 top--%>
            <div class="myPageHeader_top">
               <%-- <a href="/Source/m/my/M_M_MYPAGE.aspx">--%>
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
               <%-- </a>--%>
                <div class="myPage_txt">
                    <span>나의 상품문의 글쓰기</span>
                </div> 
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>

        <%--1:1문의 글쓰기--%>
        <div class="inquery_write">
            <div class="inquery_write_wrap">
                <div class="inquery_write_wrap_inner">
                    <%--inquery_write 텍스트--%>
                    <div class="inquery_write_top_txt m_lower_font txt_header_color">
                        <span>해당글은 비밀글로만 작성이 됩니다.</span>
                    </div>
                    <%--1:1문의 글쓰기 컨텐츠--%>
                    <div class="inquery_write_content">
                        <div class="inquery_write_content_wrap">
                            <div class="inquery_write_content_wrap_inner">
                                <%--문의유형--%>
                                <div class="content">
                                    <div class="content_txt">
                                        <span class="m_middle_font">문의유형</span>
                                    </div>
                                    <div class="dateBox">
                                        <div class="block-example">
                                            <select class="drkid-select m_lower_font" style="width:100%;" data-font-class="lower-font" data-styles='{"width":"500px","height":"40px"}'>
                                                <option>주문/결제</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <%--제목--%>
                                <div class="shippingList_wrap">
                                    <div class="shipping_title">
                                        <span class="m_middle_font">제목</span>
                                    </div>
                                    <div class="title_input">
                                        <input class="m_lower_font" type="text" name="name" value="" placeholder="제목을 입력해 주세요."/>
                                    </div>
                                </div>
                                 <%--작성자--%>
                                <div class="shippingList_wrap">
                                    <div class="shipping_title">
                                        <span class="m_middle_font">작성자</span>
                                    </div>
                                    <div class="title_input">
                                        <input class="m_lower_font" type="text" name="name" value="" placeholder="000"/>
                                    </div>
                                </div>
                                <%--내용--%>
                                <div class="shippingList_wrap">
                                    <div class="shipping_title">
                                        <span class="m_middle_font">내용</span>
                                    </div>
                                    <div class="title_input">
                                        <textarea class="m_lower_font" placeholder="문의내용을 입력해 주세요." style="width:100%;"></textarea>
                                    </div>
                                </div>
                                <%--첩부파일--%>
                                <div class="shippingList_wrap">
                                    <div class="shipping_title">
                                        <span class="m_middle_font">첨부파일</span>
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
                                            이미지는 최대 5개까지 등록 가능
                                        </span>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--1:1문의 글쓰기 끝--%>
        <%--최하단 버튼--%>
        <div class="shipping_button">
            <div class="button" id="remove_button">
                <span class="main_color">취소</span>
            </div>
            <div class="button main_bg_color" id="save_button">
                <span>문의하기</span>
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
