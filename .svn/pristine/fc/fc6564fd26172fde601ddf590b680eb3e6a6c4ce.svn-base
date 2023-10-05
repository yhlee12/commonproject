<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_RECOMMEND_MAIN.aspx.cs" Inherits="drKidAdmin.Source.admin.banner.A_RECOMMEND_MAIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .custom-table-wraper {
             height: auto;
             width: 100%;
             display: grid;
             gap: 40px 0px;
        }
        .custom-sub-warp-title {
            display: flex;
            align-items: center;
            gap: 0px 10px;
            width: 100%;
            border-bottom: 1px solid #dbdde2;
            padding: 15px 30px;
        }
        .custom-sub-warp-txt {
             font-weight: 500;
        }
        .info_Icon_Area {
            color: #FF441D;
            position: relative;
            top: 3px;
        }
        .info_Icon {
            font-size:18px
        }
        .guide_txt {
            padding: 0px 0px 10px 0px;
        }
        .top_Banner_Info_Area {
            display: flex;
            width: 1100px;
            min-height: 385px;
            border: 1px solid #E2E2E2;
        }
        .column_1_Area {
            width: 78px;
            text-align: center;
            height: 100%;
        }
        .column_1_Info1 {
            width: 100%;
            height: 45px;
            line-height: 45px;
            border-bottom: 1px solid #E2E2E2;
            border-right: 1px solid #E2E2E2;
            background: #F9F9F9;
        }
        .column_1_Info2 {
            height: calc(100% - 45px);
            display: flex;
            justify-content: center;
            align-items: center;
            line-height: calc(100% - 45px);
            background: #FFFFFF;
            border-right: 1px solid #E2E2E2;
        }
        .column_2_Area {
            height: 100%;
            width: 85%;
            /*padding: 45px 20px 10px 20px;*/
            padding: 10px 20px;
        }
        .column_2_Area_2 {
            height: 505px;
            width: 280px;
        }
        .no_img {
            width: 60px;
            height: 60px;
        }
        .img_wrap {
             align-items: center;
        }
        .column_2_Area_1 {
            width: 470px;
            height: 505px;
        }
        .column_2_Area_1_txt1 {
            padding: 5px 0px;
        }
        .column_2_Area_1_txt2 {
            padding: 10px 0px 20px 0px
        }
        .column_2_Area_1_txt3 {
            padding: 0px 0px 10px 0px
        }
        .img_Btn_Area {
            display: flex;
            gap: 0px 15px;
        }
        .img_Btn {
            width: 105px;
            height: 32px;
            line-height: 32px;
            text-align: center;
            border: 1px solid #E2E2E2;
            cursor:pointer;
        }
        .column_pc_mobile_area {
            display: flex;
            width: 100%;
            gap: 0px 40px;
        }
        .url_Area {
            display: flex;
            align-items: center;
            gap: 0px 10px;
            width: 100%;
            padding: 20px 0px 10px 0px;
        }
        .url_txt {
            width: 10%;
        }
        .url_Input_Area {
            width: 200px;
            height: 35px;
        }
        .I_URL {
            width:100%;
            height:100%;
        }
        .column_3_Area {
            width: 15%;
            height: 100%;
            border-left: 1px solid #E2E2E2;
             position: relative;
        }
        .column_3_Area_Layout {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            height: 55%;
            width: 100%;
            position: absolute;
            bottom: 0;
        }
        .banner_Add_Btn_Area {
            padding: 20px 0px;
            width: 1050px;
        }
        .banner_Add_Btn {
            width: 315px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            font-weight: 600;
            background: #F9F9F9;
            margin: 0 auto;
            border: 1px solid #DDDDDD;
            cursor: pointer;
        }
        .banner_Save_Btn_Area {
            border-top: 1px solid #E2E2E2;
            padding: 20px 30px;
            width: 100%;
            min-height: 100px;
        }
        .banner_Save_Btn {
            width: 170px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            background: var(--drkid_positive);
            color: #ffffff;
            cursor: pointer;
            font-weight: 500;
        }
        .inactive {
            color:#E2E2E2;
            cursor:inherit;
        }
        .custom-liner-icon-wraper {
            padding-left: 0px;
            border-left:none;
            display: grid;
            gap: 10px 0px;
        }
        .banner_Del_Btn_Area {
            padding: 28px 0px;
        }
        .banner_Del_Btn {
            cursor: pointer;
            width: 91px;
            height: 35px;
            text-align: center;
            line-height: 35px;
            color: #4E4E4E;
            border: 1px solid #E2E2E2;
        }
        .image_for_class {
            object-fit: cover;
        }
        .img_Btn_Active {
            cursor:pointer;
            color:black;
        }
        input {
            width:100%;
        }
        /*탭*/
        .tab_Area {
            padding: 20px 0px;
            border-bottom: 1px solid #e2e2e2;
        }
        .tab_Ui {
            display: flex;
            align-items: center;
            gap: 0px 10px;
        }
        .tab_Name_Info {
            width: 100px;
        }
        .prod_Ui_Area {
            padding: 20px 10px;
        }
        .table-wraper {
            border-bottom: 1px solid #e2e2e2;
            border-right: 1px solid #e2e2e2;
            border-left: 1px solid #e2e2e2;
        }
        .C_max-height-overflow {
            height:315px;
        }
        .cate_td {
            word-break: keep-all;
        }
          /*모달 팝업창 css*/

        #pop-modal-wraper{
            border-block: 2px solid var(--mono_line);
            padding:15px 0;
            margin : 15px 0 ;
        }

        .product_search_wrap{
            border: 1px solid var(--mono_line);
        }
        .search_area{
            background: #F8F9FD;
            padding: 15px 30px;
        }
        .search_radio_area{
            padding: 15px 0px;
        }

        .search_btn_wrap{
            text-align: center;
            padding: 10px 0px;
        }
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal_list > tr > th, .modal_list > tr > td{
            text-align:left !important;
            height: 40px ;
            border: none !important;
            padding: 4px 0px !important;
        }
        .pop-modal-title{
            font: normal normal 600 20px/24px Pretendard;
            color: #262626;
        }

        .modal-content {
            display: flex;
            flex-direction: column;
            background-color: #fefefe;
            margin: 10% auto;
            padding: 15px 27px;
            border: 1px solid #888;
            width: 80%;
            max-width: 915px;
        }
        .modal-input{
            padding: 20px 10px;
            border-radius: 4px;
            width:100%;
        }
        .modal-btn-font{
            font-weight :400;
        }
        .pop_search_btn {
        }
        .pop_reset_btn{

        }
        .pop_small_btn{

        }
        .modal_search_field{
            width:100%;
        }
        #pop-modal-btn-wraper{
            display:flex;
            justify-content: center;
        }
        #pop-modal-btn-wraper >.drkid-btn-sub2{
            min-width: 120px;
            min-height: 50px;
            margin: 0 5px;
        }
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }
        
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
         /*common_popup_2 전용 css 추가해줘야함*/
        .pop-modal-inner {
            position: absolute;
            top: 50%;
            left: 50%;
            max-height: none;
            width: 1030px;
            background-color: white;
            box-shadow: var(--mono_line) 0px 0px 2px 1px;
            transform: translate(-50%,-50%);
            overflow:hidden;
        }
        .pop-modal-inner-content{
            height : 70vh !important;
        }
        /*모달 팝업창 css 끝*/
    </style>
    <script>
        //상품 리스트 호출
        function showSubMenu() {
            let _choiceSid = $('#choice-sid').val();
            let I_PRODUCT_NM = $("#product_search_name").val();
            let I_PRODUCT_CD = $("#product_search_number").val();
            console.log(I_PRODUCT_NM);
            if (I_PRODUCT_CD == null) {
                I_PRODUCT_CD = ""
            }
            if (I_PRODUCT_NM == null) {
                I_PRODUCT_NM = "";
            }
            //Ajax
            showProgress();
            $("#pop-product-tbody").empty();
            $.ajax({
                type: "POST",
                url: "/Source/admin/cupoint/AJAX_PRODUCT_LIST.aspx",
                dataType: 'json',
                data: { I_PRODUCT_CD: I_PRODUCT_CD, I_PRODUCT_NM: I_PRODUCT_NM },
                success: function (data) {
                    console.log(data);
                    var total_count = data.O_RESULT_CURSOR_TOTAL.lngth;
                    let html, html1;
                    console.log("토탈카운트" + total_count);
                    if (data.O_ERROR_FLAG[0]["O_ERROR_FLAG"] + "" == "N") {
                        for (var i = 0; i < data.O_RESULT_CURSOR.length; i++) {

                            console.log((data.O_RESULT_CURSOR[i]["CATEGORY_NAME"]).split(',').length);
                            var category_count = (data.O_RESULT_CURSOR[i]["CATEGORY_NAME"]).split(',').length;
                            html = $("#PRODUCT_TABLE_TEMPLATE").html();
                            //totalCount - offset - i 
                            html = html.replace(/{PRODUCT_COUNT}/g, data.O_RESULT_CURSOR.length - i);
                            html = html.replace(/{PRODUCT_SID}/g, data.O_RESULT_CURSOR[i]["PRODUCT_SID"]);
                            html = html.replace(/{PRODUCT_CD}/g, data.O_RESULT_CURSOR[i]["PRODUCT_CD"]);
                            html = html.replace(/{PRODUCT_NM}/g, data.O_RESULT_CURSOR[i]["PRODUCT_NM"]);
                            for (var j = 0; j < category_count; j++) {
                                // 카테고리 개수만큼 카운트가 0일때마다 초기화 
                                if (j == 0) {
                                    html1 = "";
                                }
                                var temp = ('<div class="drkid-input lowerst-font ">{CATEGORY_NAME' + j + '}</div><input type="hidden" name="CATEGORY_NAME" value="{CATEGORY_NAME' + j + '}" />');
                                html1 += (temp.replace("{CATEGORY_NAME" + j + "}", (data.O_RESULT_CURSOR[j]["CATEGORY_NAME"]).split(',')[j]).replace("{CATEGORY_NAME" + j + "}", (data.O_RESULT_CURSOR[j]["CATEGORY_NAME"]).split(',')[j]));
                            }
                            html = html.replace(/{CATEGORY_NAME}/g, html1);
                            // 가격 천단위 콤마(,)표시
                            var sale_rate = formatPay(data.O_RESULT_CURSOR[i]["VIEW_SALE_RATE"].toString())
                            html = html.replace(/{VIEW_SALE_RATE}/g, sale_rate);
                            html = html.replace(/{VIEW_FLAG}/g, data.O_RESULT_CURSOR[i]["VIEW_FLAG"].toString() == 'Y' ? "전시중" : "전시중단");
                            $("#pop-product-tbody").append(html);

                        }
                        $("#modal_product_count").text(data.O_RESULT_CURSOR.length + " 개");
                    }
                },
                error: function (err) {
                    _popModal.Alert('알림', err);
                },
                complete: function () {
                    hideProgress();
                }
            });
        }

        //All Check 기능 같은 Table상 나누어져있을때 사용
        function allCheck(target) {
            let targetTableBody = $(target).parents('table').find('tbody');
            let boolChecker = $(target).is(":checked");
            if (boolChecker) {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', true);
                });
            } else {
                targetTableBody.find('tr td input:checkbox').each(function (index, item) {
                    $(item).prop('checked', false);
                });
            }
        }
        function formatPay(input) {
            var Number = input.replace(/[^0-9%]/g, ''); // 숫자 이외의 문자 제거
            var formattedNumber = '';
            formattedNumber = Number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            console.log(formattedNumber);
            return formattedNumber;
        }
        //선택삭제 후 RELATION_ORDER_SEQ 최적화 
        function relation_order_seq_optimization() {
            var relation_order_seq = $("#bigM"+' input[type="hidden"][name="RELATION_ORDER_SEQ"]');
            relation_order_seq.each(function(index,item) {
                $(item).val(index);
                console.log($(item).val())
            });
        }
        var save_flag = '<%=save_flag%>';
        var limit = 8;
        $(document).ready(function () {
            //상품 조회 버튼
            $("#openModalButton").on("click", function (e) {
                //$("#pop-product-tbody").empty();
                //$("#all-select-big").prop('checked', false);
                //$("#modal").show();

                //수정버전
                openPopPromise(e.currentTarget, 1).then((data) => {
                console.log(data);
                var total_count = data.length;
                console.log("total_count: ",total_count)
                let html,html1;
                if(total_count <= limit){
                    $("#bigM").empty();
                    for (var i = 0; i < total_count; i++) {
                        html = $("#PRODUCT_TABLE_TEMPLATE").html();
                        var category_count=(data[i].JsonData.CATEGORY_NAME).split(',').length;
                        console.log(category_count);
                        html = html.replace(/{PRODUCT_COUNT}/g, total_count - i);
                        html = html.replace(/{PRODUCT_SID}/g, data[i].JsonData.CODE_SID);
                        html = html.replace(/{PRODUCT_CD}/g, data[i].JsonData.CODE_CODE);
                        html = html.replace(/{PRODUCT_NM}/g, data[i].JsonData.CODE_NAME);
                        
                        for (var j = 0; j < category_count; j++) {
                            // 카테고리 개수만큼 카운트가 0일때마다 초기화 
                            if(j==0){
                                html1 = ""; 
                            }
                            var temp = ('<div class="drkid-input lowerst-font ">{category_name'+j+'}</div><input type="hidden" name="category_name" value="{category_name'+j+'}" />');
                            html1 += (temp.replace("{category_name"+j+"}",(data[i].JsonData.CATEGORY_NAME).split(',')[j]).replace("{category_name"+j+"}",(data[i].JsonData.CATEGORY_NAME).split(',')[j]));
                        }
                        html = html.replace(/{CATEGORY_NAME}/g,html1);
                        // 가격 천단위 콤마(,)표시
                        var sale_rate = formatPay(data[i].JsonData.VIEW_SALE_RATE.toString())
                        html = html.replace(/{VIEW_SALE_RATE}/g, sale_rate);
                        html = html.replace(/{VIEW_FLAG}/g, data[i].JsonData.VIEW_FLAG == 'Y' ? "전시중" : "전시중단" );
                        //정현  추가
                        let PARENT_SID_VAL = $(".prod_Ui_Area").find('input[type="hidden"][name="MAIN_SID"]').val();
                        html = html.replace(/{PARENT_SID_VAL}/g, PARENT_SID_VAL); //
                        html = html.replace(/{ORDER_SEQ_VAL}/g, i);
                        $("#bigM").append(html);

                    }
                    $("#content_product_count").text(total_count+" 개");
                }
                else{
                    _popModal.Alert('알림', `최대 ${limit}개 까지 등록가능합니다.`);
                }
                
                        
            }).catch((err) => {
                console.log(err);
         });
        });
            
            //상품검색 버튼
            $(".pop_search_btn").on("click", function () {
                showSubMenu();
            })
           
            //전체 선택 기능
            $('#all-select-big').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            $('#all-select-class').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            //모달 닫기
            $(".closeBtn").on("click", function() {
                $("#modal").hide();
            });
            //상품 선택 삭제 기능 
            $('#product-delete-btn').on('click', function () {
                let _checkBoxChecker = $('input:checkbox[name="SUB_CHECK_BOX"]:checked');
                let _checkBoxcount = _checkBoxChecker.length;
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                    return;
                }
                _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                    function () {
                        _checkBoxChecker.each(function (index, item) {
                            let _Sid = $(item).val();
                            $(`[data-sub-tr="${_Sid}"]`).remove();
                            let _checkBoxTotal = $('#bigM').children().length;
                            $(".count_sapn").text(_checkBoxTotal+" 개");
                            relation_order_seq_optimization();// 릴레이션 seq 최적화
                        });
                    }, function (error) { _popModal.Alert('알림', error); });
            });
            //적용하기 버튼
            $('.banner_Save_Btn').on('click', function () {
                var save_check = true;
                //상품 바인드 체크
                $("[id^='bigM']").each(function(item) {
                    if($(this).find('*').length == 0){
                        _popModal.Alert('알림', '상품을 연결해주세요');
                        save_check = false;
                        return false;
                    }
                });
                if(save_check){
                    $('input:checkbox[name="SUB_CHECK_BOX"]').prop("checked", true);
                    //showProgress();
                    console.log("저장")
                    $('#flag').val('save');
                    $('#form1').submit();
                }
            });

            if(save_flag == "Y"){
                hideProgress();
                _popModal.Alert('', '저장되었습니다.');
            }
            

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title custom-sub-warp-title">
            <div><span class="middle-font custom-sub-warp-txt "><%=pageAuth.nowtitle %></span></div>
          <%--  <div class="info_Icon_Area"><span class="material-icons-outlined info_Icon">info</span></div>--%>
        </div>
        <div class="sub-content-wrap">
            <div class=" lowerst-font mono_sub_color">- 이달의 추천상품의 상품등록은 4상품당 1set입니다. (홈페이지의 품질을 위하여 4개 전체를 등록하여주십시오.)</div>
            <div class="guide_txt lowerst-font mono_sub_color">- 한줄에 4개의 상품씩 총 2줄 8개의 상품이 등록됩니다.</div>
            <div class="custom-table-wraper">
            <%if (mainTable.Rows.Count > 0)
              {%>
                <%for (int i = 0; i < mainTable.Rows.Count; i++)
                  {%>
                    <%--상품 UI 영역--%>
                    <div class="prod_Ui_Area">
                    <input type="hidden" name="MAIN_SID" value="<%=mainTable.Rows[i]["MAIN_SID"] %>" />
                    <input type="hidden" name="MAIN_SEQ" value="<%=mainTable.Rows[i]["MAIN_ORDER_SEQ"] %>" />
                        <div class="inner_wrap">
                            <div class="label">
                                <span class="drkid_Negative_color">&nbsp&nbsp</span>
                                <span>연결할 상품 선택</span>
                            </div>
                            <div class="drkid-btn-sub2 drkid-btn-active" id="openModalButton"data-class-code="POP_PRODUCT" data-title="상품 조회" data-target="COMMON_POPUP_2">
                                <span class="lowerst-font">상품조회</span>
                            </div>
                            <span>&nbsp&nbsp</span>
                            <div class="drkid-btn-sub2 " id="product-delete-btn">
                                <span class="lowerst-font">선택삭제</span>
                            </div>
                        </div>
                        <div class="inner_wrap top_margin">
                            <div class="label">
                                <span class="drkid_Negative_color">&nbsp&nbsp</span>
                            </div>
                            <div class="search_field">
                                <div class="search_title">
                                    <span class="lower-font fcolor_dea">연결된 상품&nbsp</span>
                                    <span class="lower-font count_sapn"><%=mainTable.Rows[i]["BIND_COUNT"] %> 개</span>
                                </div>
                                <div class="table-wraper max-height-overflow C_max-height-overflow">
                                    <table class="table-common">
                                        <%--<table class="list-table" id="bigM">--%>
                                        <colgroup>
                                            <col style="width: 4%;" />
                                            <col style="width: 4%;" />
                                            <col style="width: 15%;" />
                                            <col style="width: 31%;" />
                                            <col style="width: 14%;" />
                                            <col style="width: 10%;" />
                                            <col style="width: 10%;" />
                                            <col style="width: 12%;" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th class="lower-font">
                                                    <label class="drkid-checkbox">
                                                        <input type="checkbox" value="Y" onclick="allCheck(this);"/>
                                                        <span class="fake-check-box"></span>
                                                    </label>
                                                </th>
                                                <th class="lower-font">No.</th>
                                                <th class="lower-font">상품번호</th>
                                                <th class="lower-font">상품명</th>
                                                <th class="lower-font">카테고리</th>
                                                <th class="lower-font">판매가</th>
                                                <th class="lower-font">전시상태</th>
                                                <th class="lower-font">잔여수량</th>
                                            </tr>
                                        </thead>
                                        <tbody id="bigM">
                                             <%if (prodTable.Rows.Count > 0)
                                                      {%>
                                                        <%for (int j = 0; j < prodTable.Rows.Count; j++)
                                                          {%>
                                                            <%if (mainTable.Rows[i]["MAIN_SID"].ToString() == prodTable.Rows[j]["PARENT_OBJECT_SID"].ToString())
                                                              { %>      
                                                                <tr data-sub-tr="<%=prodTable.Rows[j]["CHILD_OBJECT_SID"] %>">
                                                                    <%--체크박스--%>
                                                                    <td class="lower-font">
                                                                        <label class="drkid-checkbox">
                                                                            <input type="checkbox" value="<%=prodTable.Rows[j]["CHILD_OBJECT_SID"] %>" name="SUB_CHECK_BOX" />
                                                                            <span class="fake-check-box"></span>
                                                                        </label>
                                                                    </td>
                                                                    <%--넘버--%>
                                                                    <td class="lower-font">
                                                                        <div class="drkid-input lowerst-font"><%= Convert.ToInt32(prodTable.Rows[j]["RELATION_ORDER_SEQ"]) + 1 %></div>
                                                                        <input type="hidden" name="PRODUCT_COUNT" value="<%=prodTable.Rows.Count - j%>" />
                                                                    </td>
                                                                    <%--상품번호--%>
                                                                    <td class="lower-font">
                                                                        <div class="drkid-input lowerst-font"><%=prodTable.Rows[j]["PRODUCT_CD"] %></div>
                                                                        <input type="hidden" name="PRODUCT_CD" value="<%=prodTable.Rows[j]["PRODUCT_CD"] %>" />
                                                                    </td>
                                                                    <%--상품명--%>
                                                                    <td class="lower-font">
                                                                        <div class="drkid-input lowerst-font"><%=prodTable.Rows[j]["PRODUCT_NM"] %></div>
                                                                        <input type="hidden" name="PRODUCT_NM" value="<%=prodTable.Rows[j]["PRODUCT_NM"] %>" />
                                                                    </td>
                                                                    <%--카테고리--%>
                                                                    <td id="CATEGORY_NAME" class="lower-font cate_td"><%=prodTable.Rows[j]["CATEGORY_NAME"] %>
                                                                    </td>
                                                                    <%--판매가--%>
                                                                    <td class="lower-font"> 
                                                                        <div class="drkid-input lowerst-font "><%=prodTable.Rows[j]["VIEW_SALE_RATE"] %></div>
                                                                        <input type="hidden" name="VIEW_SALE_RATE" value="<%=prodTable.Rows[j]["VIEW_SALE_RATE"] %>" />
                                                                    </td>
                                                                    <%--전시상태--%>
                                                                    <td class="lower-font">
                                                                        <div class="drkid-input lowerst-font"><%=prodTable.Rows[j]["VIEW_FLAG"].ToString() == "Y" ? "전시중" : "전시중단" %></div>
                                                                        <input type="hidden" name="VIEW_FLAG" value="<%=prodTable.Rows[j]["VIEW_FLAG"].ToString() == "Y" ? "전시중" : "전시중단" %>" />
                                                                    </td>
                                                                    <%--잔여수량--%> 
                                                                    <td class="lower-font">
                                                                        <div class="drkid-input lowerst-font"><%=prodTable.Rows[j]["VIEW_FLAG"].ToString() == "Y" ? "전시중" : "전시중단" %></div>
                                                                        <input type="hidden" name="VIEW_FLAG" value="<%=prodTable.Rows[j]["VIEW_FLAG"].ToString() == "Y" ? "전시중" : "전시중단" %>" />
                                                                    </td>
                                                                    <input type='hidden' name='PARENT_SID' value= "<%=prodTable.Rows[j]["PARENT_OBJECT_SID"] %>"/>
                                                                    <input type="hidden" name="RELATION_ORDER_SEQ" value="<%=prodTable.Rows[j]["RELATION_ORDER_SEQ"] %>" />
                                                                </tr>
                                                         <%}%>
                                                    <%}%>
                                                 <%}%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                <%}%>
             <%}%>

            <%else
            {%>
                <%--상품 UI 영역--%>
                <div class="prod_Ui_Area df">
                <input type="hidden" name="MAIN_SID" value="-1" />
                <input type="hidden" name="MAIN_SEQ" value="1" />
                    <div class="inner_wrap">
                        <div class="label">
                            <span class="drkid_Negative_color">&nbsp&nbsp</span>
                            <span>연결할 상품 선택</span>
                        </div>
                        <div class="drkid-btn-sub2 drkid-btn-active" id="openModalButton"data-class-code="POP_PRODUCT" data-title="상품 조회" data-target="COMMON_POPUP_2">
                            <span class="lowerst-font">상품조회</span>
                        </div>
                        <span>&nbsp&nbsp</span>
                        <div class="drkid-btn-sub2 " id="product-delete-btn">
                            <span class="lowerst-font">선택삭제</span>
                        </div>
                    </div>
                    <div class="inner_wrap top_margin">
                        <div class="label">
                            <span class="drkid_Negative_color">&nbsp&nbsp</span>
                        </div>
                        <div class="search_field">
                            <div class="search_title">
                                <span class="lower-font fcolor_dea">연결된 상품&nbsp</span>
                                <span class="lower-font count_sapn" id="content_product_count_1">0 개</span>
                            </div>
                            <div class="table-wraper max-height-overflow C_max-height-overflow">
                                <table class="table-common">
                                    <%--<table class="list-table" id="bigM">--%>
                                    <colgroup>
                                        <col style="width: 4%;" />
                                        <col style="width: 4%;" />
                                        <col style="width: 15%;" />
                                        <col style="width: 31%;" />
                                        <col style="width: 14%;" />
                                        <col style="width: 10%;" />
                                        <col style="width: 10%;" />
                                        <col style="width: 12%;" />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th class="lower-font">
                                                <label class="drkid-checkbox">
                                                    <input type="checkbox" value="Y" onclick="allCheck(this);"/>
                                                    <span class="fake-check-box"></span>
                                                </label>
                                            </th>
                                            <th class="lower-font">No.</th>
                                            <th class="lower-font">상품번호</th>
                                            <th class="lower-font">상품명</th>
                                            <th class="lower-font">카테고리</th>
                                            <th class="lower-font">판매가</th>
                                            <th class="lower-font">전시상태</th>
                                            <th class="lower-font">잔여수량</th>
                                        </tr>
                                    </thead>
                                    <tbody id="bigM">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            <%}%>


            </div>

        </div>
        <%--적용하기 버튼--%>
        <div class="banner_Save_Btn_Area">
            <div class="banner_Save_Btn middle-font">적용하기</div>
        </div>
    </div>

     <%--팝업 상품 리스트 테이블--%>
    <script type="text/html" id="PRODUCT_TABLE_TEMPLATE">
        <tr data-sub-tr="{PRODUCT_SID}">
            <%--체크박스--%>
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{PRODUCT_SID}" name="SUB_CHECK_BOX" />
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <%--넘버--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{PRODUCT_COUNT}</div>
                <input type="hidden" name="PRODUCT_COUNT" value="{PRODUCT_COUNT}" />
            </td>
            <%--상품번호--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{PRODUCT_CD}</div>
                <input type="hidden" name="PRODUCT_CD" value="{PRODUCT_CD}" />
            </td>
            <%--상품명--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{PRODUCT_NM}</div>
                <input type="hidden" name="PRODUCT_NM" value="{PRODUCT_NM}" />
            </td>
            <%--카테고리--%>
            <td id="CATEGORY_NAME" class="lower-font">
                {CATEGORY_NAME}
                <%--<div class="drkid-input lowerst-font input-lowheight">{CATEGORY_NAME}</div>
                <input type="hidden" name="CATEGORY_NAME" value="{CATEGORY_NAME}" />--%>
            </td>
            <%--판매가--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{VIEW_SALE_RATE}</div>
                <input type="hidden" name="VIEW_SALE_RATE" value="{VIEW_SALE_RATE}" />
            </td>
            <%--전시상태--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{VIEW_FLAG}</div>
                <input type="hidden" name="VIEW_FLAG" value="{VIEW_FLAG}" />
            </td>
            <%--잔여수량--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font">{VIEW_FLAG}</div>
                <input type="hidden" name="VIEW_FLAG" value="{VIEW_FLAG}" />
            </td>
            <input type='hidden' name='PARENT_SID' value= "{PARENT_SID_VAL}"/>
            <input type='hidden' name='RELATION_ORDER_SEQ' value="{ORDER_SEQ_VAL}" />
        </tr>
    </script>
</asp:Content>
