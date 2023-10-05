<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_SALE_REFUND.aspx.cs" Inherits="drKidAdmin.Source.admin.sale.A_SALE_REFUND" %>
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
            margin-bottom: 5px;
        }
        /*.title_txt_span > span:first-child {
            font-weight:500;
        }*/ 
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
            background: var(--mono_back);
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
        .RefundBtn {
            background-color: aqua;
            border: 1px solid;
            width: 50%;
            margin-top: 20px;
            cursor: pointer;
            text-align: center;
        }
        .PartialRefundBtn {
            background-color: aqua;
            border: 1px solid;
            width: 50%;
            margin-top: 20px;
            cursor: pointer;
            text-align: center;
        }
    </style>

    <script>
        $(document).ready(function () {
            $(".RefundBtn").on("click", function () {
                console.log("전체취소");
                //var form = $("#form1");
                //console.log(form);
                //form.attr('method', 'post'); //get,post 가능
                //form.attr('target', '_self');
                //form.attr('action', "https://iniapi.inicis.com/api/v1/refund"); //보내는 url
                $("#type").val("Refund");
                $("#form1").submit();
            })
            $(".PartialRefundBtn").on("click", function () {
                console.log("부분취소");
                //var form = $("#form1");
                //console.log(form);
                //form.attr('method', 'post'); //get,post 가능
                //form.attr('target', '_self');
                //form.attr('action', "https://iniapi.inicis.com/api/v1/refund"); //보내는 url
                $("#type").val("PartialRefund");
                $("#form1").submit();
            })
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
        <%--value값 설정 해줘야 함--%>
        <input type="text" name="" id="" value="" />
    </div>
    <div id="wrap">
        <div class="sub-warp">
            <%--주문조회 타이틀--%>
            <div class="title">
                <span>배송 조회</span>
            </div>
            <%--주문조회 안내 텍스트--%>
            <div class="title_txt">
                <div style="padding: 10px; background-color: #f3f3f3; width: 100%; font-size: 13px; color: #ffffff; background-color: #000000; text-align: center">
                    이니시스 전체 쉬소 요청 샘플
                </div>
                <table width="650" cellspacing="0" cellpadding="0" border="0" align="center">
                    <tr>
                        <td style="padding: 10px; background-color: #6095BC; text-align: center;" align="center">
                            <table style="background-color: White">
                                <tr>
                                    <td>
                                        <table>
                                            <tr>
                                                <td>
                                                    <div style="border: 2px #dddddd double; padding: 10px; background-color: #f3f3f3; text-align: left">
                                                        <br />

                                                        <label for="paytype">common/bill</label>
                                                        <br />
                                                        <input type="text" name="paytype" id="paytype" value="" />
                                                        <br />
                                                        <%--전체 취소 요청서비스값은 "Refund" 고정임--%>
                                                        <label for="">요청서비스</label>
                                                        <br />
                                                        <input type="text" name="type" id="type" value="" placeholder="자동입력" />
                                                        <br />
                                                        <label for="">지불수단 코드</label>
                                                        <br />
                                                        <input type="text" name="paymethod" id="paymethod" value="" />
                                                        <br />
                                                        <label for="">전문생성시간 [YYYYMMDDhhmmss]</label>
                                                        <br />
                                                        <input type="text" name="timestamp" id="timestamp" value="" />
                                                        <br />
                                                        <label for="">가맹점 요청 서버IP (추후 거래 확인 등에 사용됨)</label>
                                                        <br />
                                                        <input type="text" name="clientIp" id="clientIp" value="localhost:57079" />
                                                        <br />
                                                        <label for="">상점아이디</label>
                                                        <br />
                                                        <input type="text" name="mid" id="mid" value="" placeholder="자동입력" />
                                                        <br />
                                                        <label for="">취소요청할 승인TID</label>
                                                        <br />
                                                        <input type="text" name="tid" id="tid" value="" />
                                                        <br />
                                                        <label for="">취소요청 사유</label>
                                                        <br />
                                                        <input type="text" name="msg" id="msg" value="" />
                                                        <br />
                                                        <%--<label for="">SHA512 HASH 한 값</label>
                                                <br />
                                                <input type="text" name="hashData" id="hashData" value="" />--%>
                                                        <br />
                                                        <div class="RefundBtn">취소버튼</div>
                                                        <div class="PartialRefundBtn">부분취소(반품)</div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <%--주문조회 조회 조건--%>
            <div class="content">
                <div class="content_wrap">
                    <div class="content_wrap_inner">
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
