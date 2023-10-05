<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_M_PRODUCT_INQUERY.aspx.cs" Inherits="drKid.Source.m.my.M_M_PRODUCT_INQUERY" %>
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

        .add_button_wrap_button {
            color:#fff;
            padding:0.3rem;
            text-align:center;
            border-radius:8px;
            margin-top: 0.5rem;
            cursor:pointer;
        }

        .dateBox {
            padding: 0.5rem 0;
            border-bottom: 2px solid #e2e2e2;ㄴ
        }

        .drkid-select {
            display:block;
            border: 1px solid #E2E2E2;
            height: 2rem;
            border-radius: 6px;
            padding-left: 0.5rem;
        }

        .inquery_list_content_top {
            display: flex;
            align-items: center;
            gap: 0.2rem;
            font-weight: 500;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            word-break: break-all;
        }

        .inquery_list_content_bottom {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 0.2rem;
        }

        .inquery_list_content_bottom_id {
            font-weight: 500;
        }

        .inquery_list_content_bottom_date {
            display: flex;
            gap: 0.4rem;
            font-weight: 500;
        }

        .inquery_list_content {
            padding: 0.4rem 0;
            border-bottom: 2px solid #e2e2e2;
        }

        /*뉴 페이징*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }  

        .number-button-wrap {
            padding-top:40px;
            justify-content: center;
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

        /*폰트. color*/
        .icon_font
        {
            font-size:0.75rem;
        }

        .text_black_color {
            color:#262626;
        }
    </style>

    <script>
        $(document).ready(function () {
            //1:1문의 디테일 페이지로 넘어감
            $(".add_button").click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_INQUERY_WRITE.aspx";
            });

            $(".prev_button").click(function () {
                location.href = "/Source/m/my/M_M_MYPAGE.aspx";
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
            <%--배송지 관리 헤더 top--%>
            <div class="myPageHeader_top">
                <a href="/Source/m/my/M_M_MYPAGE.aspx">
                    <div class="prev_button">
                        <span class="material-icons">arrow_back_ios</span>
                    </div>
                </a>
                <div class="myPage_txt">
                    <span>나의 상품문의</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
            <%--1:1문의 추가 버튼--%>
            <div class="add_button">
                <div class="add_button_wrap">
                    <div class="add_button_wrap_button main_bg_color" id="address_add_button">
                        <span class="m_middle_font">상품 문의하기</span>
                    </div>
                </div>
            </div>
            <%--1:1문의 selectbox--%> 
            <div class="dateBox">
                <div class="block-example">
                   <%-- <div class="middle-font underline_block_example">fake select box</div>--%>
                    <select class="drkid-select m_lower_font" style="width:100%;" data-font-class="lower-font" data-styles='{"width":"500px","height":"40px"}'>
                        <option>최근 7일</option>
                    </select>
                </div>
            </div>
            <%--1:1문의 리스트--%>
            <div class="inquery_list">
                <div class="inquery_list_wrap">
                    <div class="inquery_list_wrap_inner">
                        <%--1:1문의--%>
                        <div class="inquery_list_content">
                            <div class="inquery_list_content_top">
                                <span class="material-icons icon_font text_black_color">lock</span>
                                <span class="m_middle_font text_black_color">[주문/결제]</span>
                                <span class="m_middle_font text_black_color">문의드립니다.</span>
                            </div>
                            <div class="inquery_list_content_bottom">
                                <div class="inquery_list_content_bottom_id">
                                    <span class="m_lower_font text_black_color">drk**</span>
                                </div>
                                <div class="inquery_list_content_bottom_date">
                                    <span class="m_lower_font">답변대기</span>
                                    <span class="m_lower_font mono_dea_color">2023.06.01</span>
                                </div>
                            </div>
                        </div>
                        <%--1:1문의 끝--%>
                        <%--1:1문의--%>
                        <div class="inquery_list_content">
                            <div class="inquery_list_content_top">
                                <span class="material-icons icon_font text_black_color">lock</span>
                                <span class="m_middle_font text_black_color">[주문/결제]</span>
                                <span class="m_middle_font text_black_color">문의드립니다.</span>
                            </div>
                            <div class="inquery_list_content_bottom">
                                <div class="inquery_list_content_bottom_id">
                                    <span class="m_lower_font text_black_color">drk**</span>
                                </div>
                                <div class="inquery_list_content_bottom_date">
                                    <span class="m_lower_font">답변대기</span>
                                    <span class="m_lower_font mono_dea_color">2023.06.01</span>
                                </div>
                            </div>
                        </div>
                        <%--1:1문의 끝--%>
                        <%--1:1문의--%>
                        <div class="inquery_list_content">
                            <div class="inquery_list_content_top">
                                <span class="material-icons icon_font text_black_color">lock</span>
                                <span class="m_middle_font text_black_color">[주문/결제]</span>
                                <span class="m_middle_font text_black_color">문의드립니다.</span>
                            </div>
                            <div class="inquery_list_content_bottom">
                                <div class="inquery_list_content_bottom_id">
                                    <span class="m_lower_font text_black_color">drk**</span>
                                </div>
                                <div class="inquery_list_content_bottom_date">
                                    <span class="m_lower_font">답변대기</span>
                                    <span class="m_lower_font mono_dea_color">2023.06.01</span>
                                </div>
                            </div>
                        </div>
                        <%--1:1문의 끝--%>
                        <%--1:1문의 카드 문의--%>
                        <div class="inquery_list_content">
                            <div class="inquery_list_content_top">
                                <span class="material-icons icon_font text_black_color">lock</span>
                                <span class="m_middle_font text_black_color">[주문/결제]</span>
                                <span class="m_middle_font text_black_color">결제시 카드결제가 안돼서 문의드..</span>
                            </div>
                            <div class="inquery_list_content_bottom">
                                <div class="inquery_list_content_bottom_id">
                                    <span class="m_lower_font text_black_color">drk**</span>
                                </div>
                                <div class="inquery_list_content_bottom_date">
                                    <span class="m_lower_font main_color">답변왼료</span>
                                    <span class="m_lower_font mono_dea_color">2023.06.01</span>
                                </div>
                            </div>
                        </div>
                        <%--1:1문의 카드 문의 끝--%>
                        <%--1:1문의 카드 문의--%>
                        <div class="inquery_list_content">
                            <div class="inquery_list_content_top">
                                <span class="material-icons icon_font text_black_color">lock</span>
                                <span class="m_middle_font text_black_color">[주문/결제]</span>
                                <span class="m_middle_font text_black_color">결제시 카드결제가 안돼서 문의드..</span>
                            </div>
                            <div class="inquery_list_content_bottom">
                                <div class="inquery_list_content_bottom_id">
                                    <span class="m_lower_font text_black_color">drk**</span>
                                </div>
                                <div class="inquery_list_content_bottom_date">
                                    <span class="m_lower_font main_color">답변왼료</span>
                                    <span class="m_lower_font mono_dea_color">2023.06.01</span>
                                </div>
                            </div>
                        </div>
                        <%--1:1문의 카드 문의 끝--%>
                        <%--1:1문의 카드 문의--%>
                        <div class="inquery_list_content">
                            <div class="inquery_list_content_top">
                                <span class="material-icons icon_font text_black_color">lock</span>
                                <span class="m_middle_font text_black_color">[주문/결제]</span>
                                <span class="m_middle_font text_black_color">결제시 카드결제가 안돼서 문의드..</span>
                            </div>
                            <div class="inquery_list_content_bottom">
                                <div class="inquery_list_content_bottom_id">
                                    <span class="m_lower_font text_black_color">drk**</span>
                                </div>
                                <div class="inquery_list_content_bottom_date">
                                    <span class="m_lower_font main_color">답변왼료</span>
                                    <span class="m_lower_font mono_dea_color">2023.06.01</span>
                                </div>
                            </div>
                        </div>
                        <%--1:1문의 카드 문의 끝--%>
                        <%--1:1문의--%>
                        <div class="inquery_list_content">
                            <div class="inquery_list_content_top">
                                <span class="material-icons icon_font text_black_color">lock</span>
                                <span class="m_middle_font text_black_color">[주문/결제]</span>
                                <span class="m_middle_font text_black_color">문의드립니다.</span>
                            </div>
                            <div class="inquery_list_content_bottom">
                                <div class="inquery_list_content_bottom_id">
                                    <span class="m_lower_font text_black_color">drk**</span>
                                </div>
                                <div class="inquery_list_content_bottom_date">
                                    <span class="m_lower_font main_color">답변왼료</span>
                                    <span class="m_lower_font mono_dea_color">2023.06.01</span>
                                </div>
                            </div>
                        </div>
                        <%--1:1문의 끝--%>
                         <%--1:1문의--%>
                        <div class="inquery_list_content">
                            <div class="inquery_list_content_top">
                                <span class="material-icons icon_font text_black_color">lock</span>
                                <span class="m_middle_font text_black_color">[주문/결제]</span>
                                <span class="m_middle_font text_black_color">문의드립니다.</span>
                            </div>
                            <div class="inquery_list_content_bottom">
                                <div class="inquery_list_content_bottom_id">
                                    <span class="m_lower_font text_black_color">drk**</span>
                                </div>
                                <div class="inquery_list_content_bottom_date">
                                    <span class="m_lower_font main_color">답변왼료</span>
                                    <span class="m_lower_font mono_dea_color">2023.06.01</span>
                                </div>
                            </div>
                        </div>
                        <%--1:1문의 끝--%>
                        <%--1:1문의--%>
                        <div class="inquery_list_content">
                            <div class="inquery_list_content_top">
                                <span class="material-icons icon_font text_black_color">lock</span>
                                <span class="m_middle_font text_black_color">[주문/결제]</span>
                                <span class="m_middle_font text_black_color">문의드립니다.</span>
                            </div>
                            <div class="inquery_list_content_bottom">
                                <div class="inquery_list_content_bottom_id">
                                    <span class="m_lower_font text_black_color">drk**</span>
                                </div>
                                <div class="inquery_list_content_bottom_date">
                                    <span class="m_lower_font main_color">답변왼료</span>
                                    <span class="m_lower_font mono_dea_color">2023.06.01</span>
                                </div>
                            </div>
                        </div>
                        <%--1:1문의 끝--%>
                        <%--1:1문의--%>
                        <div class="inquery_list_content">
                            <div class="inquery_list_content_top">
                                <span class="material-icons icon_font text_black_color">lock</span>
                                <span class="m_middle_font text_black_color">[주문/결제]</span>
                                <span class="m_middle_font text_black_color">문의드립니다.</span>
                            </div>
                            <div class="inquery_list_content_bottom">
                                <div class="inquery_list_content_bottom_id">
                                    <span class="m_lower_font text_black_color">drk**</span>
                                </div>
                                <div class="inquery_list_content_bottom_date">
                                    <span class="m_lower_font main_color">답변왼료</span>
                                    <span class="m_lower_font mono_dea_color">2023.06.01</span>
                                </div>
                            </div>
                        </div>
                        <%--1:1문의 끝--%>
                    </div>
                </div>
            </div>
             <%--1:1문의 리스트 끝--%>
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
