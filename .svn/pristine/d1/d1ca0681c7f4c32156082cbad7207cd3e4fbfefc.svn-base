<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_MYPAGE_ORDER.aspx.cs" Inherits="drKid.Source.m.my.M_M_MYPAGE_ORDER" %>
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

        .OrderTxtBox {
            padding: 0.5rem 0;
            border-bottom: 1px solid #E2E2E2;
            font-weight: 400;
        }

        .option_list {
            padding: 0.3rem 0;
            border-bottom: 2px solid #E2E2E2;
        }

        .orderNumber {
            display:flex;
            align-items:center;
            justify-content:space-between;
        }

        .orderNumber_first > span {
            font-weight: 500;
        }

        .orderNumber_button {
            border: 1px solid #e2e2e2;
            padding: 0 0.5rem;
            cursor: pointer;
        }

        .orderImg_wrap {
            display:flex;
            align-items:center;
            justify-content:flex-start;
            gap: 0.4rem;
        }

        .orderImg_wrap > .img {
            width:2.5rem;
            height: 2.5rem;
        }

        .option_date {
            color:#828282;
        }

        .img_txt {
            line-height: 1.4;
            font-weight:400;
        }

        .img_txt > span {
            display:block;
        }

        .img_txt > span:first-child {
            color:#9F9F9F;
        }

        .orderImg {
            padding: 0.5rem 0;
        }

        .orderList_bottomTxt {
            display:flex;
            align-items:center;
            justify-content:space-between;
            font-weight: 400;
        }

        .bottomTxt {
            font-weight: 400;
        }

        .orderList_bottom_button {
            display: flex;
            align-items: center;
            gap: 0.2rem;
        }

        .orderList_bottom_button_first,
        .orderList_bottom_button_second {
            border: 1px solid #115c5e;
            padding: 0 0.5rem;
            cursor: pointer;
        }

        .orderList_bottom_button_second {
            color: #fff;
            background-color: #115c5e;
        }

        /*뉴 페이징*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }  
        
        .number-button-wrap {
            display: flex;
            align-items: center;
            justify-content: center;
            /* padding: 2rem 0; */
            padding-top: 2rem;
        }  

        .OrderTxtBox,
        .optionList {
            display:none;
        }

        .hide_wrap {
            display:none;       
            position: fixed;
            width:100%;
            z-index:998;
            top: 0;
            padding: 15px;
            overflow: scroll;
            background: #23232333 0% 0% no-repeat padding-box;;
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

        .alter_button {
            display:flex;
            align-items:center;
            justify-content:space-around;
            padding-top: 2rem;
        }

         .alter_button > .alter_button_fist {
            border: 1px solid #115c5e;
            background-color: #115c5e;
            color: #fff;
         }

         .alter_button > .alter_button_second {
             border: 1px solid #E2E2E2;
          }

        .alter_button > .alter_button_fist,
        .alter_button > .alter_button_second {
            cursor:pointer;   
            padding: 0.3rem 2rem;
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

        .drkid-select-ul {
            position: absolute;
            top: calc(100% + 1px);
            left: 0;
            background-color: white;
            box-shadow: var(--mono_line) 0px 0px 2px 1px;
            width: 100%;
            z-index: 1;
            font-family: inherit;
        }

        .drkid-select-div {
            display:none;
        }
    </style>

    <script>
        $(document).ready(function () {
            //prev 버튼
            $(".prev_button").click(function () {
                location.href = "/Source/m/my/M_M_MYPAGE.aspx";
            });

            //상세 리스트 버튼
            $(".orderImg").click(function () {
                location.href = "/Source/m/my/M_M_MYPAGE_ORDER_DETAIL.aspx";
            });

            $(".block-example > .drkid-select").on("click", function () {
                $(".OrderTxtBox, .optionList").css("display", "block");
            });

            //주문취소 버튼
            $(".orderNumber_button").click(function () {
                $(".hide_wrap").css("display", "block");
            });

            //주문 처리 취소 버튼
            $("#out_button").click(function () {
                $(".hide_wrap").css("display", "none");
            });

            //주문 처리 확인 버튼
            $("#open_button").click(function () {
                $(".hide_wrap").css("display", "none");
                $(".hide_wrap2").css("display", "block");
            });

            //주문 처리 확인 버튼
            $("#open_button2").click(function () {
                $(".hide_wrap2").css("display", "none");
            });
            //리뷰 작성 버튼 클릭시 리뷰 작성으로 넘어감 
            $(".orderList_bottom_button_second").click(function () {
                location.href = "/Source/m/my/M_MY_REVIEW_WRITE.aspx";
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--hide wrap--%>
    <div class="hide_wrap">
        <div class="hide_wrap_inner">
            <div class="alter">
                <div class="alter_txt">
                    <span class="m_middle_font">주문취소 처리를 하시겠습니까?</span>
                </div>
                <div class="alter_button">
                    <div class="alter_button_fist" id="open_button">
                        <span>확인</span>
                    </div>
                    <div class="alter_button_second" id="out_button">
                        <span>취소</span>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <%--hide wrap--%>

     <%--hide wrap2--%>
    <div class="hide_wrap2">
        <div class="hide_wrap_inner">
            <div class="alter">
                <div class="alter_txt">
                    <span class="m_middle_font">주문이 정상취소 되었습니다.</span>
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
            <%--마이페이지 헤더 top--%>
            <div class="myPageHeader_top">
                <a href="/Source/m/my/M_M_MYPAGE.aspx">
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
                </a>
                <div class="myPage_txt">
                    <span>주문목록/배송조회</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>

            <div class="dateBox">
                <div class="block-example">
                   <%-- <div class="middle-font underline_block_example">fake select box</div>--%>
                    <select class="drkid-select" style="width:100%;" data-font-class="lower-font" data-styles='{"width":"500px","height":"40px"}'>
                        <option>오늘</option>
                        <option>최근 7일</option>
                        <option>최근 15일</option>
                        <option>최근 1개월</option>
                        <option>최근 3개월</option>
                        <option>최근 6개월</option>
                        <option>최근 1년</option>
                    </select>
                </div>
            </div>

            <div class="OrderTxtBox">
                <span class="m_lower_font">주문목록 / 배송조회 내역 총</span>
                <span class="m_lower_font main_color">5</span>
                <span class="m_lower_font">건</span>
            </div>

            <%--option클릭 했을때 나오는 상품 리스트--%>
            <div class="optionList">
                <div class="optionList_wrap">
                    <div class="optionList_wrap_inner">
                        <%--option list--%>
                        <div class="option_list">
                            <div class="option_date">
                                <span class="m_middle_font">2023/06/12</span>
                            </div>
                            <div class="orderNumber">
                                <div class="orderNumber_first">
                                    <span class="m_lower_font main_color">주문번호 20230612123456789</span>
                                </div>
                                <div class="orderNumber_button">
                                    <span class="m_middle_font">주문취소</span>
                                </div>
                            </div>
                            <div class="orderImg">
                                <div class="orderImg_wrap">
                                    <div class="img">
                                        <img src="/Source/client/image/best_img.png" alt="img" />
                                    </div>
                                    <div class="img_txt">
                                        <span class="m_lower_font">신당케어</span>
                                        <span class="m_middle_font">비건오메가3 (30일분)</span>
                                        <span class="m_lower_font">36,400 / 1개</span>
                                    </div>
                                </div>
                            </div>
                            <div class="orderList_bottomTxt">
                                <span class="m_middle_font">입금완료(배송준비중)</span>
                            </div>
                        </div>
                        <%--option list--%>
                        <%--option list--%>
                        <div class="option_list">
                            <div class="option_date">
                                <span class="m_middle_font">2023/06/12</span>
                            </div>
                            <div class="orderNumber">
                                <div class="orderNumber_first">
                                    <span class="m_lower_font main_color">주문번호 20230612123456789</span>
                                </div>
                                <div class="orderNumber_button">
                                    <span class="m_middle_font">주문취소</span>
                                </div>
                            </div>
                            <div class="orderImg">
                                <div class="orderImg_wrap">
                                    <div class="img">
                                        <img src="/Source/client/image/best_img.png" alt="img" />
                                    </div>
                                    <div class="img_txt">
                                        <span class="m_lower_font">신당케어</span>
                                        <span class="m_middle_font">비건오메가3 (30일분)</span>
                                        <span class="m_lower_font">36,400 / 1개</span>
                                    </div>
                                </div>
                            </div>
                            <div class="orderList_bottomTxt">
                                <span class="m_middle_font">입금완료(배송준비중)</span>
                            </div>
                        </div>
                        <%--option list--%>
                        <%--option list--%>
                        <div class="option_list">
                            <div class="option_date">
                                <span class="m_middle_font">2023/06/12</span>
                            </div>
                            <div class="orderNumber">
                                <div class="orderNumber_first">
                                    <span class="m_lower_font main_color">주문번호 20230612123456789</span>
                                </div>
                                <div class="orderNumber_button">
                                    <span class="m_middle_font">주문취소</span>
                                </div>
                            </div>
                            <div class="orderImg">
                                <div class="orderImg_wrap">
                                    <div class="img">
                                        <img src="/Source/client/image/best_img.png" alt="img" />
                                    </div>
                                    <div class="img_txt">
                                        <span class="m_lower_font">신당케어</span>
                                        <span class="m_middle_font">비건오메가3 (30일분)</span>
                                        <span class="m_lower_font">36,400 / 1개</span>
                                    </div>
                                </div>
                            </div>
                            <div class="orderList_bottomTxt">
                                <span class="m_middle_font">입금완료(배송준비중)</span>
                            </div>
                        </div>
                        <%--option list--%>
                        <%--option list--%>
                        <div class="option_list">
                            <div class="option_date">
                                <span class="m_middle_font">2023/06/12</span>
                            </div>
                            <div class="orderNumber">
                                <div class="orderNumber_first">
                                    <span class="m_lower_font main_color">주문번호 20230612123456789</span>
                                </div>
                                <div class="orderNumber_button">
                                    <span class="m_middle_font">주문취소</span>
                                </div>
                            </div>
                            <div class="orderImg">
                                <div class="orderImg_wrap">
                                    <div class="img">
                                        <img src="/Source/client/image/best_img.png" alt="img" />
                                    </div>
                                    <div class="img_txt">
                                        <span class="m_lower_font">신당케어</span>
                                        <span class="m_middle_font">비건오메가3 (30일분)</span>
                                        <span class="m_lower_font">36,400 / 1개</span>
                                    </div>
                                </div>
                            </div>
                            <div class="orderList_bottomTxt">
                                <div class="bottomTxt">
                                    <span class="m_middle_font">입금완료(배송준비중)</span>
                                </div>
                                <div class="orderList_bottom_button">
                                    <div class="orderList_bottom_button_first">
                                        <span class="main_color m_lower_font">구매확정</span>
                                    </div>
                                    <div class="orderList_bottom_button_second">
                                        <span class="m_lower_font">리뷰작성</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--option list--%>
                        <%--option list--%>
                        <div class="option_list">
                            <div class="option_date">
                                <span class="m_middle_font">2023/06/12</span>
                            </div>
                            <div class="orderNumber">
                                <div class="orderNumber_first">
                                    <span class="m_lower_font main_color">주문번호 20230612123456789</span>
                                </div>
                                <div class="orderNumber_button">
                                    <span class="m_middle_font">주문취소</span>
                                </div>
                            </div>
                            <div class="orderImg">
                                <div class="orderImg_wrap">
                                    <div class="img">
                                        <img src="/Source/client/image/best_img.png" alt="img" />
                                    </div>
                                    <div class="img_txt">
                                        <span class="m_lower_font">신당케어</span>
                                        <span class="m_middle_font">비건오메가3 (30일분)</span>
                                        <span class="m_lower_font">36,400 / 1개</span>
                                    </div>
                                </div>
                            </div>
                            <div class="orderList_bottomTxt">
                                <div class="bottomTxt">
                                    <span class="m_middle_font">입금완료(배송준비중)</span>
                                </div>
                                <div class="orderList_bottom_button">
                                    <div class="orderList_bottom_button_first">
                                        <span class="main_color m_lower_font">구매확정</span>
                                    </div>
                                    <div class="orderList_bottom_button_second">
                                        <span class="m_lower_font">리뷰작성</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--option list--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <%--페이징--%>
    <div class="number-button-Area">
        <div class="number-button-wrap">
            <div class="number-button shopnvbtn all_prev">
                <span class="drkid-icon arrow-navi double-left-arrow allprev"></span>
            </div>
            <div class="number-button shopnvbtn one_prev">
                <span class="drkid-icon arrow-navi left-arrow oneprev"></span>
            </div>
            <div class="number-button nvnum shopPageNum">1</div>
            <div class="number-button shopnvbtn one_next">
                <span class="drkid-icon arrow-navi right-arrow onenext"></span>
            </div>
            <div class="number-button shopnvbtn all_next">
                <span class="drkid-icon arrow-navi double-right-arrow allnext"></span>
            </div>
            <input type="hidden" class="shopnowpage" />
        </div>
    </div>
</asp:Content>
