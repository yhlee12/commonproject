﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_SALE_REVOKE.aspx.cs" Inherits="drKidAdmin.Source.admin.sale.A_SALE_REVOKE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .check_top_wrap_inner {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px 0;
            gap: 80px;
        }

        .top_icon {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .icon {
            width: 50px;
            height: 50px;
            text-align: center;
            border-radius: 50%;
            background: #767A83;
            color: #fff;
        }

        .icon > span {
            line-height: 50px;
        }

        .icon_title_font {
            font-size: 12px;
        }

         .icon_title_big_font {
            font-size: 22px;
        }

         .title  {
            padding: 20px 30px;
            border-bottom: 1px solid #dbdde2;
         }

         .content {
            padding: 20px 30px;
            background:#F8F9FD;
         }

         .padding-bottom {
             padding-bottom: 10px;
         }

         /*title input*/
         .content_wrap_inner_one {
         }

         .contentArea {
             display: flex;
             align-items: center;
         }

         .contentArea_title {
             min-width: 8%;
             font-weight: 400;
         }

         .contentArea_input {
             width: 250px;
         }

         .contentArea_input > input {
             width: 100%;
         }

         /*체크 박스*/
         .content_wrap_inner_two {
            /*padding: 20px 0;
            border-bottom: 1px solid #dbdde2;*/
         }

         .contentArea_check {
            display: flex;
            align-items: center;
            gap: 30px;
         }

         /*date*/
         .product_date_all_list {
             display: flex;
             align-items: center;
             gap: 10px;
         }

         .product_date_list {
             display: flex;
             align-items: center;
             gap: 10px;
         }

         .product_date {
             border: 1px solid var(--mono_line);
             padding: 5px 12px;
             cursor:pointer;
             background:#fff;
         }

         .date_picker {
             display: flex;
             align-items: center;
             gap: 20px;
         }

         .datePicker > input {
             height: 34px;
         }

         .datePicker-icon {
             border-left: none;
             background: #fff;
         }

         /*radio*/
         .content_wrap_inner_three {
             padding-top: 20px;
         }

         .radio_all_list {
             display: flex;
             align-items: center;
             gap: 30px;
        }

        .drkid-radio > input {
            margin: 0;
            background: #fff;
        }

        /*최하단 버튼*/
        .bottom_button_wrwp {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 20px;
            padding: 20px 0;
        }

        /*상품목록*/
        .content2_scroll {
             margin-top: 20px;
             overflow-x: scroll;
             min-height: 150px;
        }

        .table-wraper {
            min-width: 1900px;
        }

        .product {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 10px 0;
        }

        .product > .product_img {
            width: 55px;
            height:55px;
        }

        .product > .product_img > img {
            object-fit: cover;
        }

        .product > .product_img_txt {
            text-align:start;
        }

        .product > .product_img_txt > span:first-child {
            color: #9F9F9F;
        }



        .titl2 {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .title_font {
            font-weight: 700;
            font-size: var(--drkid-middle-font);
            line-height: var(--drkid-middle-height);
        }

        .content2 {
            padding: 20px 30px;
        }

        .content2_button_wrap_inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .front_button {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .drkid-btn-active {
            min-width: 100px;
            padding: 0 10px;
            min-height: 40px;
        }

        .drkid-btn-active {
            min-width: 80px;
        }

        .drkid-btn-sub2 {
            min-height: 40px;
        }

        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .number-button-Area {
            padding: 300px 0 50px;
        }

        .number-button-wrap {
            align-items: center;
            justify-content: center;
        } 

        #first_number-button {
            border-color: var(--main_color);
            color: var(--main_color);
        }

        .number-button {
            border: 1px solid var(--mono_line);
            color:var(--mono_line);
        }
        /*HJH 0824*/
        .active {
            border: 1px solid var(--main_color);
            color:  var(--main_color);
        }
        .product-category-wraper {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 10px;
            height: 40px;
            border: 1px solid var(--main_color);
            padding-left: 8px;
        }
        .xbtnx-cate {
            width: 30px;
            text-align: center;
            cursor: pointer;
            height: 100%;
            display: flex;
            align-items: center;
        }
        .edit_Btn {
            font-size: 14px;
            width: 40%;
            min-width: 60px;
            height: 29px;
            text-align: center;
            margin: 0 auto;
            line-height: 40px;
            cursor: pointer;
        }
        .product-category-show-block {
            display: flex;
            min-width: 0px;
            max-width: 220px;
            flex-wrap: wrap;
            gap: 10px 0px;
        }
        .no_img {
            width:55px ;
            height:55px;     
            margin: 0 auto;
        }

        /*주문조회 안내 텍스트*/
        .title_txt {
            padding: 20px 30px;
        }
        .title_txt > p {
            /*margin-bottom: 5px;*/
        }
        .title_txt_span > span:first-child {
            font-weight:500;
        } 
        .title_txt > p,
        .title_txt_span {
             color: var(--mono_sub);
        }

        /*조회종류*/
        .content1_button_select,
        .content2_button_select{
            width: 190px;
            height: 34px;
        }

        .content1_button_select > .drkid-select-div {
            background: #fff;
        }

        /*상세조건*/
        .contentArea_Wrap {
            display: flex;
            gap: 10px;
        }

        .content3_input {
            width: 250px;
            height: 34px;
        }
        .content3_input > input {
            width:100%;
            height: 100%;
            /*background: var(--mono_back);*/
        }
        /*회원구분*/
        .content2_button_select > .drkid-select-div {
            background: var(--mono_back);
        }
        /*scroll*/
        .content2_button_wrap_inner > .drkid-btn-sub2,
        .front_button > .drkid-btn-sub2 {
            min-height: 20px;
        }
        /*select-li-span*/
        .drkid-select-ul > li {
            padding: 2px 15px;
        }
        .drkid-select-ul > li > span {
            font-size: 12px;
        }
        .Date_content {
            display: flex;
            gap: 30px;
        }

        /*테이블 정보*/ 
        .table-common > tbody tr td {
            text-overflow: ellipsis;
            cursor:pointer;
        }
        .table-wraper {
            overflow-x: clip;
        }
        .underline_txt  > span {
            color: var(--drkid_alert_positive)!important;
            text-decoration: underline;
        }
        .input_wrap > input { 
            width: 100%;
            height: 30px;
        }
        .text_start {
            text-align:start;
        }

        /*팝업 창*/
        .t2l-alert-modal-wraper {
            display:none;
        }
        .t2l-alert-inner-wraper {
            padding: 0px;
            min-width: 750px;
            overflow-y: auto;
        }
        .product_code_popup_header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px;
            border-bottom: 2px solid var(--mono_line);
        }
        .title_header {
            font-weight:700;
        }
        /*.title {
            padding: 0;
            border: none;
        }*/
        .product_code_popup_close {
            display: flex;
            cursor: pointer;
        }
        .order_number {
            color: var(--drkid_alert_positive);
        }
        .order_number_wrap_inner {
            padding: 10px;
        }
        .order_top {
            display: flex;
            align-items: center;
            gap: 20px;
            background: #F3F3F3;
            padding: 10px;
        }
        .order_body_area {
            margin-top: 20px;
        }
        .order_body_area_content {
            display: flex;
            align-items: center;
        }
        .title_wrap {
            height: 77px;
            display: flex;
            align-items: center;
            padding: 10px;
            min-width: 20%;
            background: #F3F3F3;
            border-bottom: 1px solid var(--mono_dea);
        }

        .title_txt_inner_wrap {
            min-width: 20%;
            font-weight: 400;
        }
        .order_body_area_img {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 10px;
            border-bottom: 1px solid var(--mono_dea);
            min-width: 80%;
        }
        .img_wrap {
            width: 55px;
        }
        .img_txt {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }
        .img_txt > span {
            display:block;
        }
        .img_txt > span:first-child {
            color: #9f9f9f;
        }
        .product_title_wrap {
            min-width: 20%;
            /* padding: 10px; */
            background: #F3F3F3;
            border-bottom: 1px solid var(--mono_dea);
        }
        .product_title_wrap_inner  {
            padding: 10px;
        }
        .product_title_wrap_inner  {
            padding-left: 10px;
        }
        .product_sub_title_wrap {
            min-width: 80%;
            border-bottom: 1px solid var(--mono_dea);
        }
        .modal_height {
            height: 108px;
        }
        .product_sub_title_wrap > .product_title_wrap_inner > span {
            color: #8F8F8F;
        }

        .delivery_title {
            padding: 10px;
            font-weight: bold;
        }
        .border-top {
            border-top: 1px solid;
        }
        .modal_button_wrap_inner {
            display: flex;
            justify-content: center;
            padding: 30px 0;
        }
        .modal_button_wrap_inner > .drkid-btn-sub2 {
            width: 120px;
        }
    </style>
    <script>
        var $matches = `<%=matches%>`;
        $(document).ready(function () {
            //관리자 a태그 href 페이징 시 검색조건 날아가는 문제 관련 
            $('.paging').on('click', 'a', function (event) {
                event.preventDefault(); 
                var paging_Value = $(this).text(); 
                var _offset;
                if(paging_Value != "" && paging_Value != null)
                {
                    paging_Value = paging_Value*1;
                    _offset = (paging_Value*$matches)-$matches;
                    $("#custom_Paging").val(_offset);
                    $('#flag').val('search');
                    $('#form1').submit();
                }
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <%--value값 설정 해줘야 함--%>
        <input type="text" name="" id="" value="" />
        <input type="text" name="custom_Paging" id="custom_Paging" value="" />
    </div>
    <div id="wrap">
        <div class="sub-warp">
            <%--주문조회 타이틀--%>
            <div class="title">
                <span>취소 조회</span>
            </div>
            <%--주문조회 안내 텍스트--%>
            <div class="title_txt">
                <p class="lowerst-font">구매자가 요청한 취소 주문건에 대해 완료/거부처리를 진행하실 수 있습니다.</p>
                <%--<div class="title_txt_span lowerst-font">
                    <span>주문상태의 경우, 관리자에서 보여지는 주문상태가 고객 화면에 동일하게 노출됩니다. </span><br />
                    <span>고객이 결제완료하여 주문조회로 들어오는 초기 주문건의 주문상태는 결제완료로 해당화면에 보여집니다. </span><br />
                    <span>결제완료된 주문을 발주확인시 관리자와 고객화면 배송상태에 '배송준비중' 으로 노출됩니다</span><br />
                    <span>발주확인후 배송준비중으로 주문상태가 바뀐 주문건은 배송관리에서 진행하실 수 있습니다.</span>
                </div>--%>
            </div>
           <%--주문조회 조회 조건--%>
            <div class="content">
                <div class="content_wrap">
                    <div class="content_wrap_inner">
                        <div class="content_wrap_inner_one">
                            <%--조회종류--%>
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>조회종류</span>
                                </div>
                                <div class="content1_button_select">
                                    <select class="drkid-select lowerst-font" data-font-class="lower-font">
                                        <option value="">전체</option>
                                        <option value="">취소요청</option>
                                        <option value="">취소승인</option>
                                        <option value="">취소거부</option>
                                     
                                    </select>
                                </div>  
                            </div>                    
                        </div>

                        <div class="content_wrap_inner_one">               
                            <%--상품등록일자--%>
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>조회기간</span>
                                </div>
                                 
                                <div class="Date_content">
                                    <%--상품등록일자 일자 및 캘린더--%>   
                                    <div class="product_date_all_list">
                                        <%--상품등록일자 -> 일자--%>
                                        <div class="product_date lowerst-font <%= DATEUI == "today" ? "active" : "" %>"data-value="today">
                                                <span>오늘</span>
                                            </div>
                                            <div class="product_date lowerst-font <%= DATEUI == "7" ? "active" : "" %>"data-value="7">
                                                <span>7일</span>
                                            </div>
                                            <div class="product_date lowerst-font <%= DATEUI == "15" ? "active" : "" %>"data-value="15">
                                                <span>15일</span>
                                            </div>
                                            <div class="product_date lowerst-font <%= DATEUI == "30" ? "active" : "" %>"data-value="30">
                                                <span>1개월</span>
                                            </div>
                                            <div class="product_date lowerst-font <%= DATEUI == "90" ? "active" : "" %>"data-value="90">
                                                <span>3개월</span>
                                            </div>
                                            <div class="product_date lowerst-font <%= DATEUI == "365" ? "active" : "" %>"data-value="365">
                                                <span>1년</span>
                                            </div>
                                        </div>
                                        <%--상품등록일자 -> 캘린더--%>
                                        <div class="date_picker">
                                            <div class="datePicker lower-font" style="width:250px;">
                                                <input type="text" value="<%=SALE_EST %>" class="datePicker-input lowerst-font important-input" data-title="조회 기간" placeholder="조회기간" name="SALE_EST" />
                                                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                            </div>

                                            <div class="date_picker_center">
                                                <span>~</span>
                                            </div>

                                            <div class="datePicker lower-font" style="width:250px;">
                                                <input type="text" value="<%=SALE_EST_TO %>" class="datePicker-input lowerst-font important-input" data-title="조회 기간" placeholder="조회기간" name="SALE_EST_TO" />
                                                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="content_wrap_inner_one">
                            <%--조회종류--%>
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>상세조건</span>
                                </div>
                                <div class="contentArea_Wrap">
                                    <div class="content1_button_select">
                                        <select class="drkid-select lowerst-font" data-font-class="lower-font">
                                            <option value="">전체</option>
                                            <option value="">주문번호</option>
                                            <option value="">상품번호</option>
                                            <option value="">상품명</option>
                                            <option value="">구매자명</option>
                                            <option value="">구매자ID</option>
                                            <option value="">수취인명</option>
                                            <option value="">송장번호</option>
                                        </select>
                                    </div> 
                                    <div class="content3_input">
                                        <input type="text" name="" value=" " />
                                    </div>
                                </div> 
                            </div>                    
                        </div>                    
                    </div>
                </div>
                <%--최하단 버튼--%>
                <div class="bottom_button">
                     <div class="bottom_button_wrwp">
                        <div class="drkid-btn-sub2 drkid-btn-active" id="search-btns">
                            <span class="lowerst-font">검색</span>
                        </div>
                         <div class="drkid-btn-sub2">
                            <span class="lowerst-font">초기화</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--상품목록--%>
        <div class="sub-warp">
            <%--상품목록 타이틀--%>
            <div class="title">
                <div class="titl2">
                    <div class="titl2_wrap title_font">
                        <span>취소 목록</span>
                    </div>
                    <div class="titl2_wrap lowerst-font mono_sub_color">
                        <span>전체 <%--<%=totalCount%>--%>0개</span>
                    </div>
                </div>
            </div>
            <%--상품목록 컨텐츠--%>
            <div class="content2">
                <div class="content_wrap2">
                    <div class="content_wrap_inner2">
                        <%--상품목록 버튼--%>
                        <div class="content2_button">
                            <div class="content2_button_wrap">
                                <div class="content2_button_wrap_inner">
                                    <div class="front_button">
                                        <%--<div class="drkid-btn-sub">
                                            <span class="lowerst-font">선택 삭제</span>
                                        </div>--%>
                                        <div class="drkid-divider">
                                            <span class="lowerst-font">취소</span>
                                        </div>
                                        <div class="drkid-btn-sub2">
                                            <span class="lowerst-font">취소승인</span>
                                        </div>
                                         <div class="drkid-btn-sub2">
                                            <span class="lowerst-font">취소거부</span>
                                        </div>
                                    </div> 
                                    <div class="drkid-btn-sub2">
                                        <span class="lowerst-font">엑셀다운</span>
                                    </div>                           
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--상품목록 스크롤 컨텐츠--%>
                    <div class="content2_scroll">
                        <div class="table-wraper">
                            <table class="table-common">
                                <colgroup>
                                    <col style="width: 4%;" /> 
                                    <col style="width: 10%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 8%;" />
                                    <col style="width: 8%;" />
                                    <col style="width: 8%;" />
                                    <col style="width: 15%;" />
                                    <col style="width: 8%;" />
                                    <col style="width: 15%;" />
                                    <col style="width: 15%;" />
                                    <col style="width: 6%;" />
                                    <col style="width: 6%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 6%;" />
                                    <col style="width: 6%;" />
                                    <col style="width: 15%;" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="lower-font">
                                            <label class="drkid-checkbox">
                                                <input type="checkbox" name="all-select" value="Y" />
                                                <span class="fake-check-box"></span>
                                            </label>
                                        </th>
                                        <th class="lowerst-font">주문번호</th>
                                        <th class="lowerst-font">주문일시</th>
                                        <th class="lowerst-font">주문상태</th>
                                        <th class="lowerst-font">배송상태</th>
                                        <th class="lowerst-font">클레임상태</th>
                                        <th class="lowerst-font">취소요청일</th>
                                        <th class="lowerst-font">상품번호</th>
                                        <th class="lowerst-font">상품명</th>
                                        <th class="lowerst-font">옵션정보</th>
                                        <th class="lowerst-font">수량</th>
                                        <th class="lowerst-font">구매자명</th>
                                        <th class="lowerst-font">구매자ID</th>
                                        <th class="lowerst-font">수취인명</th>
                                        <th class="lowerst-font">택배사</th>
                                        <th class="lowerst-font">송장번호</th>
                                    </tr>
                                </thead>

                                <tbody>
                                        <tr>
                                        <td class="lowerst-font">
                                            <label class="drkid-checkbox">
                                                <input type="checkbox" name="PROD_LIST_CHECKBOX" value="<%--<%=PROD_TABLE.Rows[i]["PRODUCT_SID"]%>--%>" />
                                                <span class="fake-check-box"></span>
                                            </label>
                                        </td>
                                        <%--주문번호--%>
                                        <td class="lower-font">
                                            <div class="underline_txt lowerst-font" id="find_up">
                                                <span>202319492959</span>
                                            </div>
                                        </td>
                                        <%--주문일시--%>
                                        <td>
                                            <div class="lowerst-font">
                                                <span>20230809132637</span>
                                            </div>
                                        </td>
                                        <%--주문상태--%>
                                        <td>
                                            <div class="lowerst-font">
                                                <span>결제완료</span>
                                            </div>
                                        </td>
                                        <%--배송상태--%>
                                        <td>
                                            <div class="lowerst-font">
                                                <span>배송준비중</span>
                                            </div>
                                        </td>
                                        <%--클레임 상태--%>
                                        <td>
                                            <div class="lowerst-font">
                                                <span>-</span>
                                            </div>                                                 
                                        </td>
                                        <%--클레임 상태--%>
                                        <td>
                                            <div class="lowerst-font">
                                                <span>2023-08-09 12:13</span>
                                            </div>                                                 
                                        </td>
                                        <%--상품번호--%>
                                        <td>
                                            <div class="underline_txt lowerst-font">
                                                <span>P1290893841</span>
                                            </div>
                                        </td>
                                        <%--상품명--%>
                                        <td>
                                            <div class="lowerst-font text_start">
                                                <span>비건오메가3 (30일분)</span>
                                            </div>
                                        </td>
                                        <%--옵션정보--%>
                                        <td>
                                            <div class="lowerst-font">
                                                <span>11%할인 [3개월분] 신당케어</span>
                                            </div>
                                        </td>
                                        <%--수량--%>
                                        <td>
                                            <div class="lowerst-font">
                                                <span>1</span>
                                            </div>
                                        </td>
                                         <%--구매자명--%>
                                        <td>
                                            <div class="lowerst-font">
                                                <span>표수민</span>
                                            </div>
                                        </td>
                                        <%--구매자id--%>
                                        <td> 
                                            <div class="lowerst-font">
                                                <span>smpyo</span>
                                            </div>
                                        </td>
                                        <%--수취인명--%>
                                        <td>
                                            <div class="lowerst-font">
                                                <span>표수민</span>
                                            </div>
                                        </td>
                                        <%--택배사--%>
                                        <td>
                                            <div class="lowerst-font">
                                                <span>롯데택배</span>
                                            </div>
                                        </td>
                                        <%--송장번호--%>
                                        <td>
                                            <div class="input_wrap">
                                                <input type="text" name="name" value=" " />
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>                         
                        </div>                  
                    </div>
                </div>                
                <div class="pageNavigationStr" style="padding: 50px 0px;">
                    <%=pageNavigationStr%>
                </div>
            </div>
        </div>
</asp:Content>
