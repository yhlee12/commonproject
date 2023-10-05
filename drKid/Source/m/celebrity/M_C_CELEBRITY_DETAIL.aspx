<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_C_CELEBRITY_DETAIL.aspx.cs" Inherits="drKid.Source.m.celebrity.M_C_CELEBRITY_DETAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #m_moblie_wrap {
            padding: 0 0 2rem;
        }
        .cele_detail {
            padding: 1rem 15px;
        }
        .main_txt {
            font-weight: bold;
        }
        .share_txt {
            display: flex;
            align-items: center;
            justify-content: flex-end;
            gap: 0.2rem;
            padding: 0.2rem 0;
        }
        .share_txt > span {
            border: 1px solid var(--main_color);
            border-radius: 50%;
            font-size: 14px;
            padding: 0.3rem;
            color: var(--main_color);
            cursor : pointer;
        }
        .price_title {
            width: 30%;
        }
        .price_wrap_inner {
            display: flex;
            align-items: center;
            padding-bottom: 0.4rem;
        }
        .price_content {
            display: flex;
            gap: 0.3rem;
        }
        .price_content > span {
            display:block;
        }
        .price_deco {
            text-decoration: line-through;
        }
        .celebirty_price_color {
            color: var(--mono_dea);
        }
        .percent {
            font-weight:600;
        }
        .baseline {
            align-items: baseline;
        }
        input {
            width: 100%;
            height: 34px;
            border-radius: 4px;
        }
        .option_box {
            width: 70%;
        }
        .option_input {
            padding-bottom: 0.2rem;
        }
        .delivery_price {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .delivery_price_txt {
            display: flex;
            align-items: center;
            gap: 0.2rem;
        }
        .delivery_price_txt > span {
            display: block;
            font-size:12px!important
        }
        .total_price {
            display: flex;
            align-items: center;
            justify-content: end;
            padding: 0.5rem;
            border-top: 1px solid var(--mono_line);
            border-bottom: 1px solid var(--mono_line);
            gap: 1rem;
        }
        .celebrity_menu {
            padding: 0 15px 1rem;
            display: grid;
            grid-template-columns: repeat(2,1fr);
            text-align: center;
        }
        .menu {
            color: #828282;
        }
        .celebrity_menu > .menu:first-child {
            border-bottom: 2px solid var(--main_color);
        }
        .detail_info {
            min-height: 22rem;
            background: var(--m_mono_color);
        }
        .bottom_button {
            position: fixed;
            bottom: 0;
            z-index: 999;
            width: 100%;
            background: #fff;
            padding: 0.5rem 0;
        }
        .button {
            display: flex;
            justify-content: center;
            gap: 1rem;
        }
        .button_content:first-child {
            width: 10rem;
            color: #fff;
            background: var(--main_color);
            border: 1px solid var(--main_color);
            padding: 0.5rem 1rem;
            font-weight: 500;
            text-align: center;
            border-radius: 8px;
        }
        .button_content:nth-child(2) {
            display: flex;
            align-items: center;
            padding: 0 30px;
            border: 1px solid var(--main_color);
            border-radius: 8px;
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
            /*display:flex;
            align-items:center;
            gap: 5px;
            border:1px solid #F2F2F2;
            padding: 10px 20px;*/
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
    /*<%-- 네이버 블로그 이미지 아이콘 크기 이동규 .url_box > input의 width 도 290으로 변경--%>*/         
        .naver_blog_icon{
            width:25px;
            height:25px;
        }
        /*공유 모달*/
        .more_Btn {
            width: 120px;
            text-align: center;
            padding: 10px;
            color: #ffffff;
            border-radius: 8px;
            cursor: pointer;
            margin: 0 auto;
        }
        .de2_content,
        .de3_content,
        .de4_content {
            display: none;
        }

        .de_active {
            color:var(--main_color);
            border-bottom: 2px solid var(--main_color);
        }

        .container > .btn {
          margin: 60px;
          padding: 20px 40px;
          font-size: 30px;
          border-radius: 40px;
        }

        .Modal_background{
          width: 100%;
          height: 100%;
          display: none;
          z-index: 500;
          position: fixed;
          top: 0;
          left: 0;
          background-color: rgba(0,0,0,0.5);
        }

        .modal {
            background: #fff;
            width: 100%;
            margin: 0;
            padding: 0;
            transition: all 600ms cubic-bezier(0.86, 0, 0.07, 1);
            top: 100%;
            left: 0;
            position: fixed;
            z-index: 999;
            opacity: 0;
        }

        .header {
            padding:0 215x;
            font: 300 24px Lato;
            position: relative;
            display: flex;
            justify-content: space-between;
            margin: 0 20px;
            }


        .body {
            /*padding: 0 20px 20px 20px;*/
            font: 300 16px Lato;
            position: relative;
            display: flex;
            justify-content: space-between;
        }

        .container.modal-open .modal {
            position: fixed;
            top: auto;
            bottom: 0%;
            opacity :1;
            transition: opacity 1s;

        }

        .Title_Share{
          font-size: 16px;
          font-weight: bold;
          line-height: 48px;
        }

        .icon_wrep{
          /*margin: 0 20px;*/
          width: 100%;
          position: relative;
          display: flex;
          justify-content:space-around;
          align-items: center;
        }

        .Sns_BTN{
          width: 50px;
          height: 50px;
        }

        .Sns_Share_container{
          width: 80px;
          height: 80px;
          display: flex;
          justify-content: center;
          align-items: center;
        }

        .share_guide{
          font-size: 8px;
          text-align: center;
        }   
        .naver_blog_icon{
           width:50px;
           height:50px;
        }

        @media screen and (max-width:390px) {
            .delivery_price_Wrap {
                gap: 0px 0.4rem;
            }
            .padding-left {
                padding-left: 0.5rem;
            }
        }
        @media screen and (max-width:375px) {
            .delivery_price_Wrap {
                gap: 0px 0.2rem;
            }
            .padding-left {
                padding-left: 0.2rem;
            }
        }
        @media screen and (max-width:320px) {
            .delivery_price_Wrap {
                gap: 0px 0.2rem;
            }
            .padding-left {
                padding-left: 0.2rem;
            }
        }
    </style>

    <script>
        <%--모달 열고 닫기--%>
        $(document).ready(function () {
            $('#open_modal').click(function () {
                $('.container').addClass('modal-open');
                $('#Modal_background').css('display', 'block');
                $('.detail_bottom_button').css('display', 'none')
            });

            $('.close_btn').click(function () {
                $('.container').removeClass('modal-open');
                $('#Modal_background').css('display', 'none');
                $('.detail_bottom_button').css('display', 'block')
            });

            $('#Modal_background').click(function () {
                $('.container').removeClass('modal-open');
                $('#Modal_background').css('display', 'none');
                $('.detail_bottom_button').css('display', 'block')
            });

            <%--주소 복사--%>
            $('#Copy_Current_URL').click(function () {
                var currentURL = window.location.href;
                var tempInput = $('<input>');
                $('body').append(tempInput);

                tempInput.val(currentURL).select();

                document.execCommand('copy');

                tempInput.remove();
                alert('URL이 복사되었습니다.');
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="selebrity_detail">
        <%--모바일 슬라이드--%>
        <div class="slide slide_wrap">
            <div class="slide_item item1">
                <img src="/Source/client/image/drkid_main_slide1.jpg" alt="Image 1">
            </div>
            <div class="slide_item item2">
                <img src="/Source/client/image/drkid_main_slide2.jpg" alt="Image 2">
            </div>
            <div class="slide_item item3">
                <img src="/Source/client/image/drkid_main_slide3.jpg" alt="Image 3">
            </div>
            <ul class="slide_pagination"></ul>            
        </div>

        <div class="bottom_button">
            <div class="bottom_button_wrap">
                <div class="bottom_button_wrap_inner">
                    <div class="button">
                        <div class="button_content" id="PurchaseClick">
                            <span>구매하기</span>
                        </div>
                                 
                        <!--<a href="/Source/client/member/C_PRODUCT_PURCHASE.aspx"> 이동규-->
                        <div class="button_content">
                            <span class="material-icons m_icon">redeem</span>
                        </div>
                        <!--</a>-->
                                 
                    </div>
                </div>
            </div>
        </div>

        <div class="cele_detail">
            <div class="ballon_txt">
                <div class="main_txt">
                    <span class="m_ma_font">키드니 키드니 셀러브리티 추천상품!</span>
                </div>                                
                <div class="share_txt">
                    <span class="material-icons">content_copy</span>
                    <span class="material-icons" id="open_modal">share</span>
                </div>
            </div>

            <%--상품가 --%>
            <div class="price_wrap">
                <%--정가--%>
                <div class="price_wrap_inner">
                    <div class="price_title">
                        <span class="m_middle_font">정가</span>
                    </div>
                    <div class="price_content">
                        <span class="m_lower_font price_deco celebirty_price_color">156,000</span>
                        <span class="m_lower_font">원</span>
                    </div>
                </div>
                <%--판매가--%>
                <div class="price_wrap_inner">
                    <div class="price_title">
                        <span class="m_middle_font">판매가</span>
                    </div>
                    <div class="price_content">
                        <span class="m_lower_font price_deco celebirty_price_color">156,000</span>
                        <span class="m_lower_font">원</span>
                        <span class="m_lower_font main_color percent">35%</span>
                    </div>
                </div>
                <%--셀럽 할인가--%>
                <div class="price_wrap_inner">
                    <div class="price_title">
                        <span class="m_middle_font">셀럽 할인가</span>
                    </div>
                    <div class="price_content">
                        <span class="percent">136,400</span>
                        <span>원</span>
                        <span class="m_middle_font main_color percent">35%</span>
                    </div>
                </div>
                <%--상품--%>
                <div class="price_wrap_inner baseline">
                    <div class="price_title">
                        <span class="m_middle_font">상품</span>
                    </div>
                    <div class="option_box">
                        <div class="option_input">
                            <input type="text" class="m_lower_font" name="name" value="" placeholder="신당케어 1Box 120g" readonly/>
                        </div>
                        <div class="option_input">
                            <input type="text" class="m_lower_font" name="name" value="" placeholder="11% 할인[3개월] 신당케어(12,400)" readonly/>
                        </div>
                        <div class="option_input">
                            <input type="text" class="m_lower_font" name="name" value="" placeholder="신당케어 1Box 120g" readonly/>
                        </div>
                        <div class="option_input">
                            <input type="text" class="m_lower_font" name="name" value="" placeholder="신당케어 1Box 120g" readonly/>
                        </div>
                    </div>
                </div>
                <%--배송비--%>
                <div class="price_wrap_inner">
                    <div class="price_title">
                        <span class="m_middle_font">배송비</span>
                    </div>
                    <div class="delivery_price">
                        <div class="delivery_price_txt">
                            <span class="celebirty_price_color">0</span>
                            <span>원</span>
                        </div>
                        <div class="delivery_price_txt">
                            <span class="material-icons celebirty_price_color">error_outline</span>
                            <span class="celebirty_price_color">조건별배송</span>
                        </div>
                    </div>
                </div>
                <%--총 금액--%>
                <div class="total_price">
                    <div class="total_price_txt">
                        <span class="m_lower_font">총 금액</span>
                    </div>
                    <div class="total_price_txt">
                        <span class="m_main_font percent">116,400</span>
                        <span class="m_lower_font">원</span>
                    </div>
                </div>
            </div>
        </div>

        <%--상세정보, 구매정보--%> 
        <div class="celebrity_menu">
            <div class="menu">
                <span class="m_middle_font">상세정보</span>
            </div>
            <div class="menu">
                <span class="m_middle_font">구매정보</span>
            </div>
        </div>

        <%--스마트에디터 들어올 자리--%>
        <div class="detail_info"></div>

    </div>
        <%--공유 모달화면 추가 이동규--%>
        <div class="container">
        <div class="Modal_background" id="Modal_background"></div>
        <div class="modal">
          <!-- 헤더 부분. -->
          <div class="header"> 
            <span class="material-icons close_btn" style="font-size: 30px; line-height: 48px; visibility:hidden">close</span>
            <div class="Title_Share">공유하기</div>
            <span class="material-icons close_btn" style="font-size: 30px; line-height: 48px;">close</span>
          </div>
          <!-- 본내용 부분 -->
          <div class="body">
            <div class="icon_wrep">
              <!-- 1번 아이콘 -->
              <div class="Sns_Share_container">
                <div class="Sns_Share_Icon" id="share_btn_kakao">
                    <img src="/Source/m/image/m_KakaoTalk_img.png" class="Sns_BTN" alt="kakao공유하기" />
                    <div class="share_guide">카카오톡 공유</div>
                </div>           
              </div>
              <!-- 2번 아이콘 -->
              <div class="Sns_Share_container">
                <div class="Sns_Share_Icon" id="LINE_share">
                    <img src="/Source/m/image/m_Line_img.png" class="Sns_BTN" alt="라인 공유하기 입니다."/>  
                  <div class="share_guide">라인</div>
                </div>
              </div>
            <!-- 3번 아이콘 -->
             <div class="Sns_Share_container">
                <div class="share_top_sns" onclick="naver_blog_share()">
                    <img src="/Source/m/image/Naber_blog_img.png" alt="naver_blog" class="naver_blog_icon"/>
                        <div class="share_top_sns_txt">
                            <span class="share_guide"  style="width:50px; height:50px ">네이버 블로그</span>
                     </div>
                 </div>
             </div>
              <!-- 4번아이콘 -->
              <div class="Sns_Share_container">
                <div class="Sns_Share_Icon">
                    <span class="material-icons" id="Copy_Current_URL" style="font-size: 50px;">
                       content_copy
                    </span>
                  <div class="share_guide">URL복사</div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
</asp:Content>
