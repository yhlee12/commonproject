<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_CELEBSHOP_DETAIL_PAGE.aspx.cs" Inherits="drKid.Source.client.celebshop.C_CELEBSHOP_DETAIL_PAGE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/Source/client/js/zoomsl.min.js"></script>
    <%-- 카카오톡 공유기능 추가. --%>
    <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.3.0/kakao.min.js"integrity="sha384-70k0rrouSYPWJt7q9rSTKpiTfX6USlMYjZUtr1Du+9o4cGvhPAWxngdtVZDdErlh" crossorigin="anonymous"></script>
    <script>
        Kakao.init('9badfd8a30a824628adde27f35917642'); // 사용하려는 앱의 JavaScript 키 입력
    </script>
    <style>
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
        #content {
            width: 1300px;
            margin: auto;
        }
         #hidden-field {
            display:none;
        }
         .Main_Content_Container{
            
         }
         .Celeb_Recomand_Product_Detail{
             width : 100%;
             display : flex;
             gap: 50px;
         }
         .Image_Box, .Product_Detail_Text{
            width: 620px;
            height: 620px;
         }
         .Product_Detail_Text{
             border-bottom : 1px solid black ;
         }
         .slideshow-container{
            display: flex;
            position: relative;
            max-width: 100%;
            margin: auto;
            padding-top: 20px;
         }
         .slide_box {
            display: flex;
            max-width: 250px;
            margin: auto;
            justify-content: space-around;
            gap: 10px;
        }
         .mySlides {
            width: 71px;
            height: 70px;
        }
         .prev {
            left: 0;
        }
         .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }
         .prev, .next {
            position: absolute;
            top: 50%;
            width: auto;
            margin-top: -22px;
            padding: 16px;
            color: #CDCDCD;
            font-size: 50px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            cursor: pointer;
        }
        .Product_Info_Container{
            width: 630px;
            min-height: 630px;
        }
        .relation_Item_Price_Info_Area {
            display: flex;
            gap: 10px;
        }
        .ballon_txt {
            position: relative;
        }
        .main_txt {
            display: flex;
            align-items: center;
            justify-content: space-between;
            font-size: 30px;
            font-weight: 700;
            padding: 20px 0;
        }
        .ballon {
            position: absolute;
            top: -50px;
            right: -25px;
            padding: 10px 15px;
            border: 1px solid #115c5e;
            border-radius: 25px;
            line-height: 1.1;
        }
        .share {
            display: none;
            position: absolute;
            right: 0;
        }
        .share_wrap_inner {
            padding: 5px;
            box-shadow: 0px 0px 10px #0000001A;
            border: 1px solid #E1E1E1;
        }
        .share_top {
            display: flex;
            gap: 10px;
            align-items: center;
        }
        .share_top_sns {
            display: flex;
            align-items: center;
            gap: 5px;
            border: 1px solid #F2F2F2;
            padding: 10px 20px;
            cursor : pointer;
        }
        .share_top_sns_img {
            width: 25px;
            height: 25px;
        }
        .share_top_sns_txt {
            font-size: 12px;
            font-weight: 400;
        }
        .share_bottom_wrap {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 7px;
            background: #cacaca;
            margin-top: 5px;
        }
        .url_click_box {
            color: #fff;
            font-size: 12px;
            height: 40px;
            padding: 0 30px;
            cursor: pointer;
        }
        .star_wrap {
            display: flex;
            gap: 10px;
            margin-bottom: 40px;
        }
        .content_star {
            display: flex;
        }
        .star_img {
            width: 15px;
        }
        .review {
            font-size: 14px;
            color: #9F9F9F;
        }
        .list_price {
            display: flex;
        }
        .price_content_gap {
            margin: 42px 0;
        }
        .price_content2_width {
            width: 80%;
            display: flex;
            align-items: center;
        }
        .price_Area_wrap_inner {
            display: flex;
        }
        .priceArea_content_discount {
            padding-left: 20px;
            font-weight : bold;
            color : var(--main_color);
        }
        .purchase {
            display: flex;
        }
        .price_content_font {
            font-size: 16px;
            font-weight: 300;
        }
        .price_content_width {
            width: 20%;
        }
        .purchase > .block-example {
            display: flex;
            align-items: center;
            gap: 20px;
        }
        .drkid-radio {
            display: inline-block;
            vertical-align: middle;
            margin-right: 2px;
        }
        .option {
            display: flex;
            align-items: center;
        }
        .all_option_box {
            width: 80%;
        }
        .option > .all_option_box > .first_option_box {
            width: 100%;
        }
        .option > .all_option_box > .first_option_box > .block-example {
            height: 50px;
        }
        .option > .all_option_box > .second_option_box {
            width: 100%;
        }
        .option > .all_option_box > .second_option_box > .block-example {
            height: 50px;
            margin-bottom: 20px;
        }
        .option_product, .option_product2 {
            display: none;
            border-top: 1px solid;
            border-bottom: 1px solid;
        }
        .option_product_wrap_inner, .option_product_wrap_inner2 {
            width: 100%;
            padding: 10px 0;
        }
        .option_product_top, .option_product_top2 {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .title {
            font-weight: 700;
            font-size: var(--drkid-middle-font);
            line-height: var(--drkid-middle-height);
        }
        .option_product_top > .delete1, .option_product_top2 > .delete2 {
            border: 1px solid #D8D8D8;
            color: #D8D8D8;
            cursor: pointer;
        }
        .option_product_bottom, .option_product_bottom2 {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 10px;
            /* padding-bottom: 5px; */
            /* border-bottom: 1px solid #E8E8E8; */
        }
        .option_pm, .option_pm2 {
            display: flex;
            align-items: center;
            justify-content: space-around;
            border: 1px solid #D8D8D8;
            border-radius: 5px;
            width: 100px;
        }
        .option_pm > .p, .option_pm > .m {
            cursor: pointer;
        }
        .delivery {
            display: flex;
            padding: 15px 0;
        }
        .padding-left {
            padding-left: 20px;
        }
        .delivery_condition {
            color: #9f9f9f;
        }
        .delivery_condition {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 5px;
        }
        .Celeb_Choice_Option_List{
            margin : 10px 0;
        }
        .main_txt > span:last-child {
            /* position: relative; */
            border-radius: 50%;
            border: 1px solid #9F9F9F;
            color: #9F9F9F;
            font-size: 1.5rem;
            padding: 0.5rem;
            cursor: pointer;
        }
        .ballon > span:first-child {
            color: #FFC609;
        }
                .ballon > span:nth-child(2), .ballon > span:last-child {
            color: #fff;
        }
        .Product_Price_Line{
            text-decoration: line-through;
        }
        .Product_Final_Price{
            font-size: var(--drkid-big-font);
            font-weight: bold;
        }
        .priceArea_content1{
            width : 20%;
        }
        .for_base_line{
            align-items: baseline;
        }
        .price {
            display: flex;
            align-items: center;
            justify-content: end;
            padding-bottom: 25px;
            gap: 50px;
        }
        .price_txt {
            font-weight: 400;
        }
        .price_one_text {
            font-size: 34px;
            font-weight: 700;
        }
        .Purchase_BTN_Wrep{
            display: flex;
            justify-content: end;
            gap: 50px;
        }
        .Shop_Basket_Btn, .purchase_Btn{
            width: 290px;
            border: 1px solid #115c5e;
            padding: 15px 30px;
            text-align: center;
            border-radius: 8px;
        }
        .Shop_Basket_Btn{
            color : #115c5e;
        }
        .purchase_Btn{
            background-color : #115c5e;
        }
        .Product_Detail_Info_Choice1, .Product_Detail_Info_Choice2 , .Product_Detail_Info_Choice3{
            display: flex;
            border: 1px solid #E1E1E1;
            padding: 15px 0;
            width: 34%;
            justify-content: center;
            cursor : pointer;
        }
        .Product_Detail_Info_Choice1{
            background-color : #115c5e;
            color : white;
        }
        .Product_Detail_Choice_Wrep{
            display: flex;
            justify-content: center;
            margin: 30px 0;
            width: 100%;
        }
        .Detail_Image_Container{
            background-color : grey;
            width : 100%;
            min-height : 400px;
        }
        .deli {
            margin-top: 30px;
            padding: 22px;
            border: 1px solid #E1E1E1;
            display : none;
        }
        .Chage_Recall{
            margin-top: 30px;
            padding: 22px;
            border: 1px solid #E1E1E1;
            display : none;
        }
        .deli_info {       
            border-top: 1px solid #bbb;
        }
        .deli_info:last-child {
            border-bottom: 1px solid #bbb;
        }
        .del_weight {
            font-weight:400;
        }
        .del_padding {
            padding-top: 10px;
        }

        .deli_info_flex_box {
            display: flex;
        }

        .deli_main_txt {
            font-weight:700;
            padding-bottom: 15px;
        }

        .deli_info_main_txt {
            width: 20%;
            min-width: 230px;
            background-color:#F9F9F9;
        }

        .deli_info_main_txt_font {
            font-size: 14px;
            color:#828282;
            padding: 10px 19px;
        }
        .deli_info_main_sub_font {
            font-size: 14px;
        } 
        .deli_info_sub_txt {
            width: 80%;
            min-width: 1000px;
            padding: 10px 15px;
        }
        .share {
            display:none;
            position: absolute;
            right: 0;
        }

        .share_wrap_inner {
            padding: 5px;
            box-shadow: 0px 0px 10px #0000001A;
            border: 1px solid #E1E1E1;
        }

        .share_top_sns {
            display:flex;
            align-items:center;
            gap: 5px;
            border:1px solid #F2F2F2;
            padding: 10px 20px;
        }

        .share_top {
            display: flex;
            gap: 10px;
            align-items: center;
        }

        .share_top_sns_img {
            width:25px;
            height:25px;
        }

        .share_bottom_wrap {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 7px;
            background: #cacaca;
            margin-top: 5px;
        }

        .share_top_sns_txt {
            font-size: 12px;
            font-weight: 400;
        }

        .url_click_box  {
            color:#fff;
            font-size:12px;
            height: 40px;
            padding: 0 30px;
            cursor: pointer;
        }

        .url_click_box > span {
            line-height: 40px;
        }

        .url_box > input {
            width: 290px;
            font-size:12px;
        }
         /*네이버 블로그 이미지 아이콘 크기 이동규 .url_box > input의 width 도 290으로 변경*/
        .naver_blog_icon{
            width:25px;
            height:25px;
        }
    </style>
    <script>
        <%--이미지 교체--%>
        $(document).ready(function () {
            $('#img_change1 > img, #img_change2 > img , #img_change3 > img').click(function () {
                var imgSrc = $(this).attr('src');
                $('#img_change_content img').attr('src', imgSrc);
            });
            //이동규 img zoom on hover 작업 옮김 : 220803 허정현
            $('#zoom').imagezoomsl({
                zoomrange: [2, 2], //가로 세로 분할 수
                zoomspeedanimate: 10,
            });
            $("#share_button").click(function () {
                $(".share").css("display", "block");
            });
            //카카오톡 공유하기
            $(document).on('click', '#share_btn_kakao', function () {
                Kakao.Share.sendDefault({
                    objectType: 'feed',
                    content: {
                        title: '딸기 치즈 케익',
                        description: '#케익 #딸기 #삼평동 #카페 #분위기 #소개팅',
                        imageUrl:
                          'http://k.kakaocdn.net/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
                        link: {
                            // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
                            mobileWebUrl: 'https://developers.kakao.com',
                            webUrl: 'https://developers.kakao.com',
                        },
                    },
                    social: {
                        likeCount: 286,
                        commentCount: 45,
                        sharedCount: 845,
                    },
                    buttons: [
                      {
                          title: '웹으로 보기',
                          link: {
                              mobileWebUrl: 'https://developers.kakao.com',
                              webUrl: 'https://developers.kakao.com',
                          },
                      },
                      {
                          title: '앱으로 보기',
                          link: {
                              mobileWebUrl: 'https://developers.kakao.com',
                              webUrl: 'https://developers.kakao.com',
                          },
                      },
                    ],
                });
            })
            //라인 공유하기
        });
    </script>
    <script>
            $(document).on('click', '#share_btn_line', function () {

                var gotoUrl = encodeURIComponent($(location).attr('href')), <%--공유했을때 보낼 링크 주소를 저장 gotoUrl--%>
            line = 'https://social-plugins.line.me/lineit/share?url=',
            link = line + gotoUrl;
            window.open(link, "_blank", "width=500, height=500"); <%--새창의 크기와 주소--%>
            return false;

        })

        function naver_blog_share() {
            var url = encodeURI(encodeURIComponent('https://www.youtube.com/'));        <%--블로그 공유했을 때 주소--%>
            var title = encodeURI('유튜브 바로가기');        <%--블로그 공유했을 때 제목--%>
            var shareURL = "https://share.naver.com/web/shareView?url=" + url + "&title=" + title;
            window.open(shareURL, "_blank", "width=500, height=500"); <%--새창의 크기와 주소--%>
        }

    </script>
    <script>
        $(document).ready(function () {
            const $urlBox = $('.url_box');
            const $inputField = $urlBox.find('input');
            const $copyButton = $('.url_click_box');

            function getCurrentURL() {
                $inputField.val(window.location.href);
            }

            function copyURL() {
                $inputField.select();
                document.execCommand('copy');
            }

            getCurrentURL();

            $copyButton.on('click', function () {
                copyURL();
                alert('URL이 복사되었습니다.');
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            const $shareButton = $('#share_button');
            const $shareArea = $('.share');

            $shareButton.click(function () {
                $shareArea.css('display', 'block');
            });

            $(document).on('click', function (event) {
                if (!$shareArea.is(event.target) && !$shareButton.is(event.target) && $shareArea.has(event.target).length === 0) {
                    $shareArea.css('display', 'none');
                }
            });
        });
    </script>
    <%-- 상품상세, 배송안내, 교환 및 반품 안내 Wrep 클릭 이벤트 --%>
    <script>
        $(document).ready(function () {
            $(".Product_Detail_Info_Choice1").on("click", function () {
                $(this).css({
                    "background-color": "#115c5e",
                    "color": "white"
                });
                $(".Product_Detail_Info_Choice2, .Product_Detail_Info_Choice3").css({
                    "background-color": "white",
                    "color": "black"
                });
                $(".Product_Detail_Background").css({ "display": "block" });
                $(".deli").css({ "display": "none" });
                $(".Chage_Recall").css({ "display": "none" });
            });

            $(".Product_Detail_Info_Choice2").on("click", function () {
                $(this).css({
                    "background-color": "#115c5e",
                    "color": "white"
                });
                $(".Product_Detail_Info_Choice1, .Product_Detail_Info_Choice3").css({
                    "background-color": "white",
                    "color": "black"
                });
                $(".Product_Detail_Background").css({ "display": "none" });
                $(".deli").css({ "display": "block" });
                $(".Chage_Recall").css({ "display": "none" });
            });

            $(".Product_Detail_Info_Choice3").on("click", function () {
                $(this).css({
                    "background-color": "#115c5e",
                    "color": "white"
                });
                $(".Product_Detail_Info_Choice1, .Product_Detail_Info_Choice2").css({
                    "background-color": "white",
                    "color": "black"
                });
                $(".Product_Detail_Background").css({ "display": "none" });
                $(".deli").css({ "display": "none" });
                $(".Chage_Recall").css({ "display": "block" });
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('#img_change1 > img, #img_change2 > img , #img_change3 > img').click(function () {
                var imgSrc = $(this).attr('src');

                $('#img_change_content img').attr('src', imgSrc);
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
    </div>
     <div id="sub_content">
        <div class="sub_layout">
            <div id="content">
                <div class="Main_Content_Container">
                    <div class="Main_Content_Container_Inner">
                        <%-- 닥터키드니 셀러브리티 추천상품 --%>
                        <div class="Celeb_Recomand_Product_Detail">
                            <%-- 추천상품 이미지 컨테이너 --%>
                            <div class="Product_Image_Container">
                                <div class="Image_Box">
                                    <img src="/Source/client/image/product_img1.jpg" alt="detail_bg" id="zoom"/>
                                </div>
                                <div class="slideshow-container">
                                    <div class="slide_box">
                                    <!-- Slide 1 -->
                                    <div class="mySlides" id="img_change1">
                                        <img src="/Source/client/image/best_img.png" alt="Image 1">
                                    </div>
                                    <!-- Slide 2 -->
                                    <div class="mySlides" id="img_change2">
                                        <img src="/Source/client/image/detail_bg_img.png" alt="Image 2">                            
                                    </div>
                                    <!-- Slide 3 -->
                                    <div class="mySlides" id="img_change3">
                                        <img src="/Source/client/image/best_img.png" alt="Image 3">
                                    </div>
                                    <!-- Slide Navigation -->
                                    <a class="prev" onclick="plusSlides(-1)">❮</a>
                                    <a class="next" onclick="plusSlides(1)">❯</a>
                                    </div>   
                                </div>
                            </div>
                            <%-- 추천상품 디테일 --%>
                            <div class="Product_Info_Container">
                                <div class="Product_Detail_Text">
                                   <div class="ballon_txt">
                                         <div class="main_txt">
                                             <span>키드니키드니 셀러브리티 추천상품!</span>
                                             <span class="material-icons" id="share_button">share</span>
                                         </div>

                             
                                         <div class="ballon main_bg_color">
                                             <span class="ballon_font">추천인코드</span>
                                             <span class="ballon_font">를</span><br>
                                             <span class="ballon_font">공유해보세요!</span>
                                         </div>

                             
                                         <div class="share" style="display: none;">
                                             <div class="share_wrap">
                                                 <div class="share_wrap_inner">
                                                     <div class="share_top">            
                                                         <div class="share_top_sns" id="share_btn_line">
                                                             <div class="share_top_sns_img">
                                                                 <img src="/Source/client/image/ballline.png" alt="line" />
                                                             </div>
                                                             <div class="share_top_sns_txt">
                                                                 <span class="main_color">LINE 공유</span>
                                                             </div>
                                                         </div>
                                             
                                                         <div class="share_top_sns" id="share_btn_kakao">
                                                             <div class="share_top_sns_img">
                                                                 <img src="/Source/client/image/kakao_img.svg" alt="kakao">
                                                             </div>
                                                             <div class="share_top_sns_txt">
                                                                 <span class="main_color">카카오톡 공유</span>
                                                             </div>                                              
                                                         </div>
                                             
                                                         <div class="share_top_sns" onclick="naver_blog_share()">
                                                                <img src="/Source/client/image/Naber_blog_img.png" alt="naver_blog" class="naver_blog_icon">
                                                             <div class="share_top_sns_txt">
                                                                 <span class="main_color" style="width:25px; height:25px ">네이버 블로그</span>
                                                             </div>
                                                         </div>
                                                     </div>
                                         
                                                     <div class="share_bottom">
                                                         <div class="share_bottom_wrap">
                                                             <div class="url_box">
                                                                 <input type="text" name="name" value="" readonly=""/>
                                                             </div>
                                                             <div class="url_click_box main_bg_color">
                                                                 <span>URL 복사</span>
                                                             </div>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </div> 
                                         </div>
                                     </div>
                                   <div class="list_price price_content_gap">
                                        <div class="list_price_txt price_content_width price_content_font">
                                            <span>정가</span>
                                        </div>
                                        <div class="list_price_one price_content2_width">
                                            <span class="Product_Price_Line">156,000</span>
                                            <span>원</span>
                                        </div>
                                   </div>
                                   <div class="price_Area price_content_gap">
                                       <div class="price_Area_wrap">
                                            <div class="price_Area_wrap_inner">
                                                <div class="price_content_width  price_content_font">
                                                    <span>판매가</span>
                                                </div>
                                                <div class="priceArea_content price_content2_width">
                                                    <div class="priceArea_content1">
                                                        <span class="Product_Price_Line">156,500</span>
                                                        <span>원</span>
                                                    </div>
                                                    <div class="priceArea_content_discount">
                                                        <span>35%</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                   </div>
                                   <div class="price_Area price_content_gap">
                                       <div class="price_Area_wrap">
                                            <div class="price_Area_wrap_inner">
                                                <div class="price_content_width  price_content_font">
                                                    <span>셀럽 할인가</span>
                                                </div>
                                                <div class="priceArea_content price_content2_width">
                                                    <div class="priceArea_content1">
                                                        <span class="Product_Final_Price">136,400</span>
                                                        <span>원</span>
                                                    </div>
                                                    <div class="priceArea_content_discount">
                                                        <span>35%</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                   </div>
                                   <div class="option price_content_gap for_base_line" id="selectBoxContainer price_content_gap">
                                         <div class="option_wrap price_content_width price_content_font">
                                             <span>옵션선택</span>
                                         </div>
                                         <div class="all_option_box ">
                                             <div class="Celeb_Choice_Option_List">
                                                 <input type="text" style="width : 100%;" placeholder="35% 할인 [3개월분] 신당케어 (3,500원 할인)" />
                                             </div>
                                             <div class="Celeb_Choice_Option_List">
                                                 <input type="text" style="width : 100%;" placeholder="35% 할인 [3개월분] 신당케어 (3,500원 할인)" />
                                             </div>
                                             <div class="Celeb_Choice_Option_List">
                                                 <input type="text" style="width : 100%;" placeholder="35% 할인 [3개월분] 신당케어 (3,500원 할인)" />
                                             </div>
                                         </div>
                                     </div>
                                   <div class="delivery price_content_gap">
                                     <div class="delivery_wrap price_content_width price_content_font">
                                         <span>배송비</span>
                                     </div>
                                     <div class="delivery_price">
                                         <span>0</span>
                                         <span>원</span>
                                     </div>
                                     <div class="delivery_condition padding-left">
                                         <span class="material-icons">info</span>
                                         <span>조건별배송</span>
                                     </div>
                                 </div>
                                </div>
                            </div>
                        </div>
                        <%-- 총 금액 Wrep --%>
                        <div class="price">
                            <div class="price_txt">
                                <span>총 금액</span>
                            </div>
                            <div class="price_one">
                                <span class="price_one_text">136,440</span>
                                <span>원</span>
                            </div>
                        </div>
                        <%-- 구매하기 결제하기 Wrep --%>
                        <div class="Purchase_BTN_Wrep">
                            <div class="Shop_Basket_Btn">
                                <div>
                                    <span>장바구니</span>
                                </div>
                            </div>
                            <div class="purchase_Btn">
                                <div>
                                    <span style="color : white">구매하기</span>
                                </div>
                            </div>
                        </div>
                        <%-- 상품상세, 배송안내, 교환 및 반품 안내 Wrep --%>
                        <div class="Product_Detail_Choice_Wrep">
                            <div class="Product_Detail_Info_Choice1">
                                <span>
                                    상품상세정보
                                </span>
                            </div>
                            <div class="Product_Detail_Info_Choice2">
                                <span>
                                    배송안내
                                </span>
                            </div>
                            <div class="Product_Detail_Info_Choice3">
                                <span>
                                    교환 및 반품안내
                                </span>
                            </div>
                        </div>
                        <%-- 상품 상세 정보 --%>
                        <div class="Product_Detail_Background">
                            <div class="Detail_Image_Container">
                                <%-- 사진을 넣어주세용 --%>
                            </div>
                        </div>
                        <%-- 배송안내 --%>
                        <div class="deli">
                             <div class="deli_wrap">
                                 <div class="deli_wrap_inner">
                                     <div class="deli_main_txt lower-font">
                                         <span>배송안내</span>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>배송방법</span>
                                             </div>
                                             <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                                 <span>닥터키드니 택배 (1234-1234)</span>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>배송방법</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font main_color del_weight">
                                                     배송비 : 3,000원
                                                 </p>
                                                 <p class="deli_info_main_sub_font mono_sub_color">                                                   
                                                     (총 구매금액 40,000원 이상 시 무료배송)
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>배송 기간 안내</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font mono_sub_color">
                                                    평균 배송기간은 출고일 기준으로 2~3일(주말, 공휴일 제외) 소요되나 배달지역의 물량에 따라 추가 소요일 발생 될 수 있는 점 참고 부탁드립니다.
                                                    
                                                 </p>
                                                 <p class="deli_info_main_sub_font mono_dea_color del_padding">                                 
                                                    연말연시, 설, 추석 등 특수 시즌에는 택배사 사정으로 인해 부득이 배송 시일이 다소 길어질 수 있으며, 일부 군부대 특수지역은 배송이 불가능 할 수도 있습니다.
                                                    주문 및 배송에 관한 자세한 상담이 필요하시거나 문의사항은 고객센터 (1234-1234) 를 통해 문의 바랍니다.
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>배송 확인 방법</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font mono_sub_color">
                                                    주문하신 상품의 배송정보는 마이페이지의 주문목록/배송조회에서 송장번호 확인 가능합니다.<br>
                                                    배송에 관한 상담이 필요하시거나 문의사항은 고객센터 (1234-1234) 문의 바랍니다.
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                        <%-- 교환 및 반품안내 --%>
                        <div class="Chage_Recall">
                             <div class="deli_wrap">
                                 <div class="deli_wrap_inner">
                                     <div class="deli_main_txt lower-font">
                                         <span>교환 및 반품 안내</span>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>주문취소 안내</span>
                                             </div>
                                             <div class="deli_info_sub_txt deli_info_main_sub_font mono_sub_color">
                                                 <p class="deli_info_main_sub_font mono_sub_color">                                                   
                                                     주문완료 후 결제대금은 기한(48시간) 내 입금 가능하며, 입금되지 않은 주문은 자동취소 됩니다.
                                                 </p>
                                                 <p class="deli_info_main_sub_font mono_sub_color del_padding">                                                   
                                                     주문 상품이 여러가지 품목으로 부분 주문취소 원하실 경우, 아래와 같이 진행 가능합니다. <br>
                                                     - 결제완료 : 부분 주문취소 직접 가능  <br>
                                                     - 상품준비중 : 당일 오전까지 부분 주문취소 불가하나 전체 주문취소 가능 / 당일 오후 12시 이후에는 부분· 전체 주문취소 불가
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>교환 및 반품 택배비</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font main_color del_weight">
                                                     반품택배비 : 6,000원
                                                 </p>
                                                 <p class="deli_info_main_sub_font mono_sub_color del_padding">                                                   
                                                    - 상품 불량 및 오배송 등의 이유로 교환/반품 진행하는 경우, 왕복배송비는 무상으로 진행됩니다. <br>
                                                    - 고객님의 단순 변심으로 인한 교환/반품 진행하는 경우, 반품배송비 유상으로 진행됩니다.
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>교환 및 반품 주소</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font main_color del_weight">
                                                     - [46747] 부산광역시 강서구 미음국제3로 77 (미음동) (주)위킵부산
                                                 </p>
                 
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>교환 및 반품이 가능한 경우</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font mono_sub_color">
                                                    - 계약내용에 관한 서면을 받은 날부터 7일. 단, 그 서면을 받은 때보다 재화등의 공급이 늦게 이루어진 경우에는 재화등을 공급받거나 재화등의 공급이 시작된 날부터 7일 이내<br>
                                                    - 공급받으신 상품 및 용역의 내용이 표시.광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날 부터 3월이내, 그사실을 알게 된 날 또는 알 수 있었던 날부터 30일이내                             
                                                 </p>
                                                 
                                             </div>
                                         </div>
                                     </div>
                                     <div class="deli_info">
                                         <div class="deli_info_first deli_info_flex_box">
                                             <div class="deli_info_main_txt deli_info_main_txt_font">
                                                 <span>교환 및 반품이 불가능한 경우</span>
                                             </div>
                                             <div class="deli_info_sub_txt">
                                                 <p class="deli_info_main_sub_font mono_sub_color">
                                                    - 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)<br>
                                                    - 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br>
                                                    - 시간의 경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br>
                                                    - 복제가 가능한 재화등의 포장을 훼손한 경우<br>  
                                                    - 개별 주문 생산되는 재화 등 청약철회시 판매자에게 회복할 수 없는 피해가 예상되어 소비자의 사전 동의를 얻은 경우<br>
                                                    - 디지털 콘텐츠의 제공이 개시된 경우, (다만, 가분적 용역 또는 가분적 디지털콘텐츠로 구성된 계약의 경우 제공이 개시되지 아니한 부분은 청약철회를 할 수 있습니다.)<br>               
                                                 </p>
                                                 <p class="deli_info_main_sub_font mono_sub_color del_padding">                                                   
                                                    ※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다. <br>
                                                     (색상 교환, 사이즈 교환 등 포함)
                                                 </p>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                        <%-- 끝 !!!!!!!!!!!!!!! --%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
