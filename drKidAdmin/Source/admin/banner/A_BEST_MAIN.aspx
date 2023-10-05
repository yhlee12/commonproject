﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_BEST_MAIN.aspx.cs" Inherits="drKidAdmin.Source.admin.banner.A_BEST_MAIN" %>
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
        //템플릿 관련 함수 시작
        //////////////////////// 

        //화살표 Move 기능
        function moveTr(gbn, targetSid, type) {
            //let _targetTr = $(`[${type}="${targetSid}"]`);
            let _targetTr = type;
            console.log(_targetTr)
            if (gbn == "UP") {
                _targetTr.prev().before(_targetTr);
            } else {
                _targetTr.next().after(_targetTr);
            }
            //seqBigMenuReSetting(type);
        }

        function down_arrow(move_dataValue) {
            let select_element = $("#top_Banner_Info_Area_" + move_dataValue);
            let all_element = $(".top_Banner_Info_Area").length;
            console.log("전체 템플릿 수: ", all_element)

            if (all_element < 2) {
                _popModal.Alert('', '이동할 순서가 없습니다.');
                return;
            }
            else {
                moveTr('DOWN', '', select_element);
                seq_optimization();
            }
        }
        function up_arrow(move_dataValue) {
            let select_element = $("#top_Banner_Info_Area_" + move_dataValue);
            let all_element = $(".top_Banner_Info_Area").length;
            console.log("전체 템플릿 수: ", all_element)

            if (all_element < 2) {
                _popModal.Alert('', '이동할 순서가 없습니다.');
                return;
            }
            else {
                moveTr('UP', '', select_element);
                seq_optimization();
            }
        }
        //SEQ 최적화 
        function seq_optimization() {
            //db에 저장되게 될 ORDER_SEQ 컬럼관련 최적화
            var inputs = $("input[name='MAIN_SEQ']");
            inputs.each(function (index, element) {
                element.value = index + 1;
            });
            //사용자에게 보여지는 템플릿 번호 최적화
            var divs = $(".column_1_Info2");
            divs.each(function (index) {
                $(this).text(index + 1);
            });
        }
        //선택삭제 후 RELATION_ORDER_SEQ 최적화 
        function relation_order_seq_optimization(target) {
            console.log("탐")
            var relation_order_seq = $("#bigM_"+ target+' input[type="hidden"][name="RELATION_ORDER_SEQ"]');
            console.log(relation_order_seq)
            relation_order_seq.each(function(index,item) {
                $(item).val(index);
                console.log($(item).val())
            });
        }
        //삭제하기 버튼
        function del_template(del_dataValue) {
            _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                   function () {
                       $("#top_Banner_Info_Area_" + del_dataValue).remove();
                       seq_optimization();
                   }, function (error) { _popModal.Alert('', error); });
        }

        //템플릿 추가 시 시퀀스 순서
        function getNextSeq() {
            let _Seq = 1;
            $('.top_Banner_Info_Area').each(function (index, item) {
                let _trSeq = $(item).find('input[name="MAIN_SEQ"]').val() * 1;
                console.log("_trSeq :", _trSeq)
                if (_Seq <= _trSeq) {
                    _Seq = _trSeq + 1;
                }
            });
            return _Seq;
        }
        //템플릿 추가 시 시퀀스 순서
        function getNewSid() {
            let _SID = -1;
            $('.top_Banner_Info_Area').each(function (index, item) {
                let _trSID = $(item).find('input[name="MAIN_SID"]').val() * 1;
                if (_SID >= _trSID) {
                    _SID = _trSID - 1;
                }
            });
            return _SID;
        }
        //템플릿 삭제 후 에러 (템플릿 삭제하기,위아래 버튼 문제생김)관련 
        //템플릿 추가 시 {MAXSEQ} 로 관리
        function getNext_MAX_Seq() {
            let largestId = 0;
            $('div[id^="top_Banner_Info_Area_"]').each(function () {
                var currentIdNumber = parseInt($(this).attr('id').split('_').pop(), 10);
                if (currentIdNumber > largestId) {
                    largestId = currentIdNumber;
                }
            });
            return largestId;
        }
        //상품조회 버튼 함수
        function openModalButton(index,event) {
            //$("#pop-modal-btn-wraper").empty(); //모달버튼 영역 비우기
            //$("#pop-product-tbody").empty(); //모달 리스트 영역 비우기
            //$("#all-select-big").prop('checked', false);
            //var _maxseq = getNext_MAX_Seq();
            //var _template = $('#TAB_TAB_AREATEMPLATE').html();
            //_template = _template.replace(/{SEARCH_NUM}/g, index);
            //$('#pop-modal-btn-wraper').append(_template);
            //$("#modal").show();
            //정현 수정
            openPopPromise(event.currentTarget, 1).then((data) => {
                console.log(data);
            var total_count = data.length;
            console.log("total_count: ",total_count)
            let html,html1;
            if(total_count <= 4){
                $("#bigM_"+index).empty();
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
                    let PARENT_SID_VAL = $("#top_Banner_Info_Area_" + index).find('input[type="hidden"][name="MAIN_SID"]').val();
                    console.log("PARENT_SID_VAL",PARENT_SID_VAL)
                    html = html.replace(/{PARENT_SID_VAL}/g, PARENT_SID_VAL); //
                    html = html.replace(/{ORDER_SEQ_VAL}/g, i);
                    $("#bigM_"+index).append(html);

                }
                $("#content_product_count_"+index).text(total_count+" 개");
            }
            else{
                _popModal.Alert('알림', '최대 4개 까지 등록가능합니다.');
        }               
        }).catch((err) => {
            console.log(err);
        });
        }
        //상품 리스트 선택삭제 버튼 함수
        function delRowButton(num) { 
            //let _checkBoxChecker = $('input:checkbox[name="SUB_CHECK_BOX2"]:checked');
            let _checkBoxChecker = $("#bigM_" + num + ' input:checkbox[name="SUB_CHECK_BOX"]:checked');
            let _checkBoxcount = _checkBoxChecker.length;
            console.log("_checkBoxcount:",_checkBoxcount)
            if (_checkBoxChecker.length == 0) {
                _popModal.Alert('알림', '하나의 메뉴를 선택해주세요.');
                return;
            }
            _popModal.Promt('알림', '정말로 삭제하시겠습니까?',
                function () {
                    _checkBoxChecker.each(function (index, item) {
                        let _Sid = $(item).val();
                        //$(`[data-sub-tr="${_Sid}"]`).remove();
                        $('#bigM_'+num).find($(`[data-sub-tr="${_Sid}"]`)).remove();
                        //let _checkBoxTotal = $('#bigM_'+num).children().length;
                        let _checkBoxTotal = $("#bigM_"+num).find("tr").length;
                        console.log("_checkBoxTotal:",_checkBoxTotal)
                        $("#content_product_count_"+num).text(_checkBoxTotal+" 개");
                        relation_order_seq_optimization(num);// 릴레이션 seq 최적화
                    });
                }, 
                function (error) { _popModal.Alert('알림', error); });
        }
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
        //모달 저장버튼 
        function insert_Data(element_num) {
            $("#bigM_" + element_num).empty();
            let _checkBoxChecker = $('input:checkbox[name="SUB_CHECK_BOX"]:checked');
            let check_flag = false;
            if (_checkBoxChecker.length == 0) {
                _popModal.Alert('알림', '상품을 선택해주세요.');
                return;
            }
            let _checkline = null;
            _checkBoxChecker.each(function (index, item) {
                if (_checkBoxChecker.length <= 4) {
                    $(item).prop('checked', false);
                    let _Sid = $(item).val();
                    //_checkline = $(`[data-sub-tr="${_Sid}"]`).clone();
                    _checkline = $('.tem_ajax_data[data-sub-tr=' + _Sid+']');
                    _checkline.removeClass('tem_ajax_data');
                    _checkline.find('input[type="checkbox"][name="SUB_CHECK_BOX"]').attr('name', 'SUB_CHECK_BOX2');
                    console.log("_checkline: ",_checkline)
                    $("#bigM_" + element_num).append(_checkline);
                    //PARENT SID 세팅
                    let PARENT_SID_VAL = $("#top_Banner_Info_Area_" + element_num).find('input[type="hidden"][name="MAIN_SID"]').val();
                    var PARENT_SID_ELEMENT = `<input type='hidden' name='PARENT_SID' value= '${PARENT_SID_VAL}'/> `;
                    //$("#bigM_" + element_num).append(PARENT_SID_ELEMENT);
                    $(_checkline).append(PARENT_SID_ELEMENT);
                    var RELATION_ORDER_SEQ = `<input type='hidden' name='RELATION_ORDER_SEQ' value='${index}' /> `;
                    //$("#bigM_" + element_num).append(RELATION_ORDER_SEQ);
                    $(_checkline).append(RELATION_ORDER_SEQ);
                }
                else {
                    _popModal.Alert('알림', '최대 4개까지 연결가능합니다.');
                    check_flag = true;
                }
            });
            if (!check_flag) {
                $("#modal").css("display","none");
                $("#content_product_count_"+element_num).text(_checkBoxChecker.length+" 개");
            }
        }
        function formatPay(input) {
            var Number = input.replace(/[^0-9%]/g, ''); // 숫자 이외의 문자 제거
            var formattedNumber = '';
            formattedNumber = Number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            console.log(formattedNumber);
            return formattedNumber;
        }
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
        function hideModal(){
            $("#modal").hide();
        }
        var save_flag = '<%=save_flag%>';

        $(document).ready(function () {
            $(".product_search_radio").on("click", function () {
                var selectedValue = $("input[name='product']:checked").val();
                console.log("Selected value:", selectedValue);
                if(selectedValue == "name"){
                    $("input[name='search_input']").remove();
                    var search_input = '<input type="text" autocomplete="off" id="product_search_name" name="search_input" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="상품명을 입력해주세요." maxlength="50" />';
                    $(".search_input_area").append(search_input);
                    $("#product_search_word").val(selectedValue);
                }
                else if(selectedValue == "number"){
                    $("input[name='search_input']").remove();
                    var search_input = '<input type="text" autocomplete="off" id="product_search_number" name="search_input" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="상품번호로 검색해주세요." maxlength="50" />';
                    $(".search_input_area").append(search_input);
                    $("#product_search_word").val(selectedValue);
                }
                else{
                    $("input[name='search_input']").remove();
                    var search_input = '<input type="hidden" autocomplete="off" id="" name="search_input" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="상품번호로 검색해주세요." maxlength="50" />';
                    $(".search_input_area").append(search_input);
                    $("#product_search_word").val(selectedValue);
                }
                console.log($("#product_search_word").val());
            });

            // + 탭 추가하기
            $('.banner_Add_Btn').on('click', function () {
                var _template = $('#TAB_TEMPLATE').html();
                var count = $('.top_Banner_Info_Area').length;
                if (count <= 6) {
                    let _sid = getNewSid();
                    let _seq = getNextSeq();
                    let _maxseq = getNext_MAX_Seq();
                    _template = _template.replace(/{SID}/g, _sid);
                    _template = _template.replace(/{SEQ}/g, _seq);
                    _template = _template.replace(/{MAXSEQ}/g, (_maxseq + 1));
                    $('.custom-table-wraper').append(_template);
                }
                else {
                    _popModal.Alert('', '최대 7개까지 생성가능합니다.');
                }
            });
            //모달 닫기버튼
            $('.closeBtn').on('click', function () {
                $("#modal").hide();
            });
            //모달 전체 선택 기능
            $('#all-select-big').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            //상품검색 버튼
            $(".pop_search_btn").on("click", function () {
                showSubMenu();
            })
            //적용하기 버튼
            $('.banner_Save_Btn').on('click', function () {
                var save_check = true;
                //탭 명 체크
                $('input[type="text"][name="I_TAB_NAME"]').each(function() {
                    if ($(this).val() === '') {
                        _popModal.Alert('알림', '탭 명을 모두 입력해주세요.');
                        save_check = false;
                        return false;
                    } 
                });
                //상품 바인드 체크
                $("[id^='bigM_']").each(function(item) {
                    if($(this).find('*').length == 0){
                        _popModal.Alert('알림', '상품을 연결해주세요');
                        save_check = false;
                        return false;
                    }
                });
                if(save_check){
                    $('input:checkbox[name="SUB_CHECK_BOX"]').prop("checked", true);
                    showProgress();
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
            <div class=" lowerst-font mono_sub_color">- 메인 BEST상품은 탭형식으로 적용됩니다.</div>
            <div class=" lowerst-font mono_sub_color">- 탭은 최대 7개 / 각 글자수 10으로 제한됩니다.</div>
            <div class=" lowerst-font mono_sub_color">- 각 탭당 상품은 4개까지 등록됩니다. (홈페이지의 품질을 위하여 4개 전체를 등록하여주십시오.)</div>
            <div class="guide_txt lowerst-font mono_sub_color">- BEST 상품 사용을 하지 않을경우 기존 탭을 모두 삭제 후 적용하기 버튼을 눌러주세요.</div>
            <div class="custom-table-wraper">
            <%if (mainTable.Rows.Count > 0)
              {%>
                <%for (int i = 0; i < mainTable.Rows.Count; i++)
                  {%>
                    <%--개별 폼--%>
                    <div class="top_Banner_Info_Area" id="top_Banner_Info_Area_<%=i+1%>">
                        <input type="hidden" name="MAIN_SID" value="<%=mainTable.Rows[i]["MAIN_SID"] %>" />
                        <input type="hidden" name="MAIN_SEQ" value="<%=mainTable.Rows[i]["MAIN_ORDER_SEQ"] %>" />
                        <%--순서--%>
                        <div class="column_1_Area">
                            <div class="column_1_Info1 lower-font">순서</div>
                            <div class="column_1_Info2 lowerst-font"><%=i+1%></div>
                        </div>
                        <%--탭, 상품 바인딩--%>
                        <div class="column_2_Area">
                            <%--탭 영역--%>
                            <div class="tab_Area">
                                <div class="tab_Ui">
                                    <div class="lowerst-font tab_Name_Info">탭 명</div>
                                    <div class="url_Input_Area">
                                        <input type="text" class="drkid-input lowerst-font I_TAB_NAME" name="I_TAB_NAME" value="<%=mainTable.Rows[i]["TAB_TITLE"] %>" maxlength="10" />
                                    </div>
                                </div>
                            </div>
                            <%--상품 UI 영역--%>
                            <div class="prod_Ui_Area">
                                <div class="inner_wrap">
                                    <div class="label">
                                        <span class="drkid_Negative_color">&nbsp&nbsp</span>
                                        <span>연결할 상품 선택</span>
                                    </div>
                                    <div class="drkid-btn-sub2 drkid-btn-active"  data-class-code="POP_PRODUCT" data-title="상품 조회" data-target="COMMON_POPUP_2" onclick="openModalButton(<%=i+1%>,event);">
                                        <span class="lowerst-font">상품조회</span>
                                    </div>
                                    <span>&nbsp&nbsp</span>
                                    <div class="drkid-btn-sub2 " id="product-delete-btn" onclick="delRowButton(<%=i+1%>);">
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
                                            <span class="lower-font count_sapn" id="content_product_count_<%=i+1%>"><%=mainTable.Rows[i]["BIND_COUNT"] %> 개</span>
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
                                                                <input type="checkbox" value="Y" onclick="allCheck(this)"; />
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
                                                <tbody id="bigM_<%=i+1%>">
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
                        </div>
                        <%--순서ui, 삭제버튼--%>
                        <div class="column_3_Area">
                            <div class="column_3_Area_Layout">
                                <div class="liner-icon-wraper custom-liner-icon-wraper">
                                    <span class="drkid-icon arrow-big up-arrow" id="big-up-arrow" data-value="1" onclick="up_arrow(<%=i+1%>);"></span>
                                    <span class="drkid-icon arrow-big down-arrow" id="big-down-arrow" data-value="1" onclick="down_arrow(<%=i+1%>);"></span>
                                </div>
                                <div class="banner_Del_Btn_Area">
                                    <div class="banner_Del_Btn" id="banner_Del_Btn_<%=i+1%>" data-value="1" onclick="del_template(<%=i+1%>);">삭제하기</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}%>
                <%}%>


                <%else
                  {%>
                    <%--개별 폼--%>
                    <div class="top_Banner_Info_Area df" id="top_Banner_Info_Area_1" data-value="1">
                        <input type="hidden" name="MAIN_SID" value="-1" />
                        <input type="hidden" name="MAIN_SEQ" value="1" />
                        <%--순서--%>
                        <div class="column_1_Area">
                            <div class="column_1_Info1 lower-font">순서</div>
                            <div class="column_1_Info2 lowerst-font" data-value="1">1</div>
                        </div>
                        <%--탭, 상품 바인딩--%>
                        <div class="column_2_Area">
                            <%--탭 영역--%>
                            <div class="tab_Area">
                                <div class="tab_Ui">
                                    <div class="lowerst-font tab_Name_Info">탭 명</div>
                                    <div class="url_Input_Area">
                                        <input type="text" class="drkid-input lowerst-font I_TAB_NAME" name="I_TAB_NAME" value="" maxlength="10" />
                                    </div>
                                </div>
                            </div>
                            <%--상품 UI 영역--%>
                            <div class="prod_Ui_Area">
                                <div class="inner_wrap">
                                    <div class="label">
                                        <span class="drkid_Negative_color">&nbsp&nbsp</span>
                                        <span>연결할 상품 선택</span>
                                    </div>
                                    <div class="drkid-btn-sub2 drkid-btn-active" data-class-code="POP_PRODUCT" data-title="상품 조회" data-target="COMMON_POPUP_2" onclick="openModalButton(1,event);">
                                        <span class="lowerst-font">상품조회</span>
                                    </div>
                                    <span>&nbsp&nbsp</span>
                                    <div class="drkid-btn-sub2 " id="product-delete-btn" onclick="delRowButton(1);">
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
                                                <tbody id="bigM_1">
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--순서ui, 삭제버튼--%>
                        <div class="column_3_Area">
                            <div class="column_3_Area_Layout">
                                <div class="liner-icon-wraper custom-liner-icon-wraper">
                                    <span class="drkid-icon arrow-big up-arrow" id="big-up-arrow" data-value="1" onclick="up_arrow(1);"></span>
                                    <span class="drkid-icon arrow-big down-arrow" id="big-down-arrow" data-value="1" onclick="down_arrow(1);"></span>
                                </div>
                                <div class="banner_Del_Btn_Area">
                                    <div class="banner_Del_Btn" id="banner_Del_Btn_1" data-value="1" onclick="del_template(1);">삭제하기</div>
                                </div>
                            </div>
                        </div>
                    </div>
                <%}%>

            </div>

             <%--탭 추가하기 버튼--%>
            <div class="banner_Add_Btn_Area">
                <div class="banner_Add_Btn middle-font main_color">+ 탭 추가하기</div>
            </div>
        </div>
        <%--적용하기 버튼--%>
        <div class="banner_Save_Btn_Area">
            <div class="banner_Save_Btn middle-font">적용하기</div>
        </div>
    </div>

    <div id="modal" class="modal">
        <div class="modal-content">
            <div>
                <span class="pop-modal-title">상품찾기</span>
                <span class="clear-icon drkid-icon close closeBtn"></span>
            </div>
            <div id="pop-modal-wraper">
                <div class="product_search_wrap">
                    <div class="search_area">
                        <div class="search_radio_area">
                            <label class="drkid-radio">
                                <input type="radio" class="product_search_radio" name="product" value="*" checked="checked" />
                                <span class="lower-font">전체</span>
                            </label>
                            <label class="drkid-radio">
                                <input type="radio" class="product_search_radio" name="product" value="name" />
                                <span class="lower-font">상품명으로 검색</span>
                            </label>
                            <label class="drkid-radio">
                                <input type="radio" class="product_search_radio" name="product" value="number" />
                                <span class="lower-font">상품번호로 검색</span>
                            </label>
                        </div>
                        <div class="search_input_area">
                            <%--<input type="text" autocomplete="off" id="" name="" class="drkid-input lowerst-font input-lowheight modal-input" value="" placeholder="" maxlength="50" />--%>
                        </div>
                    </div>

                    <div class="search_btn_wrap">
                        <div class="drkid-btn-sub2 drkid-btn-active pop_search_btn pop_small_btn">
                            <span class="middle-font modal-btn-font">검색</span>
                        </div>
                        <div class="drkid-btn-sub2 admin_save_Btn pop_reset_btn pop_small_btn">
                            <span class="middle-font modal-btn-font">초기화</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="">
                <%--                                    <div class="label">
                                    <span class="drkid_Negative_color">&nbsp&nbsp</span>
                                </div>--%>
                <div class="modal_search_field">
                    <div class="search_title">
                        <span class="lower-font fcolor_dea">연결된 상품&nbsp</span>
                        <span class="lower-font count_sapn" id="modal_product_count">0 개</span>
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
                                            <input type="checkbox" value="" id="all-select-big" />
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
                            <%--팝업 상품 리스트 테이블--%>
                            <tbody id="pop-product-tbody">
                            </tbody>
                        </table>
                        <div class="pageNavigationStr" style="padding: 50px 0px;">
                            <%--<%=pageNavigationStr%>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div id="pop-modal-btn-wraper">
                <%--<div class="drkid-btn-sub2 admin_save_Btn findEnterkey" id="product_enter_btn">
                    <span class="middle-font modal-btn-font">저장</span>
                </div>
                <div class="drkid-btn-sub2 drkid-btn-active closeBtn">
                    <span class="middle-font modal-btn-font">취소</span>
                </div>--%>
            </div>
        </div>
    </div>

    <script type="text/html" id="TAB_TAB_AREATEMPLATE">
        <div class="drkid-btn-sub2 admin_save_Btn findEnterkey" id="product_enter_btn" onclick="insert_Data({SEARCH_NUM});">
            <span class="middle-font modal-btn-font">저장</span>
        </div>
        <div class="drkid-btn-sub2 drkid-btn-active closeBtn" onclick="hideModal();">
            <span class="middle-font modal-btn-font">취소</span>
        </div>
    </script>


    <script type="text/html" id="TAB_TEMPLATE">
        <div class="top_Banner_Info_Area" id="top_Banner_Info_Area_{MAXSEQ}">
            <input type="hidden" name="MAIN_SID" value="{SID}" />
            <input type="hidden" name="MAIN_SEQ" value="{SEQ}" />
            <%--순서--%>
            <div class="column_1_Area">
                <div class="column_1_Info1 lower-font">순서</div>
                <div class="column_1_Info2 lowerst-font">{SEQ}</div>
            </div>
            <%--탭, 상품 바인딩--%>
            <div class="column_2_Area">
                <%--탭 영역--%>
                <div class="tab_Area">
                    <div class="tab_Ui">
                        <div class="lowerst-font tab_Name_Info">탭 명</div>
                        <div class="url_Input_Area">
                            <input type="text" class="drkid-input lowerst-font I_TAB_NAME" name="I_TAB_NAME" value="" maxlength="10" />
                        </div>
                    </div>
                </div>
                <div class="prod_Ui_Area">
                    <div class="inner_wrap">
                        <div class="label">
                            <span class="drkid_Negative_color">&nbsp&nbsp</span>
                            <span>연결할 상품 선택</span>
                        </div>
                        <div class="drkid-btn-sub2 drkid-btn-active" data-class-code="POP_PRODUCT" data-title="상품 조회" data-target="COMMON_POPUP_2"  onclick="openModalButton({MAXSEQ},event);">
                            <span class="lowerst-font">상품조회</span>
                        </div>
                        <span>&nbsp&nbsp</span>
                        <div class="drkid-btn-sub2 " id="product-delete-btn" onclick="delRowButton({MAXSEQ});">
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
                                <span class="lower-font count_sapn" id="content_product_count_{MAXSEQ}">0 개</span>
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
                                                    <input type="checkbox" value="Y"  onclick="allCheck(this);"/>
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
                                    <tbody id="bigM_{MAXSEQ}">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                
            </div>
            <%--순서ui, 삭제버튼--%>
            <div class="column_3_Area">
                <div class="column_3_Area_Layout">
                    <div class="liner-icon-wraper custom-liner-icon-wraper">
                        <span class="drkid-icon arrow-big up-arrow" id="big-up-arrow" onclick="up_arrow({MAXSEQ});"></span>
                        <span class="drkid-icon arrow-big down-arrow" id="big-down-arrow" onclick="down_arrow({MAXSEQ});"></span>
                    </div>
                    <div class="banner_Del_Btn_Area">
                        <div class="banner_Del_Btn" data-value="1" onclick="del_template({MAXSEQ});">삭제하기</div>
                    </div>
                </div>
            </div>
        </div>
    </script>

     <%--팝업 상품 리스트 테이블--%>
    <script type="text/html" id="PRODUCT_TABLE_TEMPLATE">
        <tr data-sub-tr="{PRODUCT_SID}" class="tem_ajax_data">
            <%--체크박스--%>
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{PRODUCT_SID}" name="SUB_CHECK_BOX" />
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <%--넘버--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font ">{PRODUCT_COUNT}</div>
                <input type="hidden" name="PRODUCT_COUNT" value="{PRODUCT_COUNT}" />
            </td>
            <%--상품번호--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font ">{PRODUCT_CD}</div>
                <input type="hidden" name="PRODUCT_CD" value="{PRODUCT_CD}" />
            </td>
            <%--상품명--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font ">{PRODUCT_NM}</div>
                <input type="hidden" name="PRODUCT_NM" value="{PRODUCT_NM}" />
            </td>
            <%--카테고리--%>
            <td id="CATEGORY_NAME" class="lower-font cate_td">
                {CATEGORY_NAME}
                <%--<div class="drkid-input lowerst-font input-lowheight">{CATEGORY_NAME}</div>
                <input type="hidden" name="CATEGORY_NAME" value="{CATEGORY_NAME}" />--%>
            </td>
            <%--판매가--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font ">{VIEW_SALE_RATE}</div>
                <input type="hidden" name="VIEW_SALE_RATE" value="{VIEW_SALE_RATE}" />
            </td>
            <%--전시상태--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font ">{VIEW_FLAG}</div>
                <input type="hidden" name="VIEW_FLAG" value="{VIEW_FLAG}" />
            </td>
            <%--잔여수량--%>
            <td class="lower-font">
                <div class="drkid-input lowerst-font ">{VIEW_FLAG}</div>
                <input type="hidden" name="VIEW_FLAG" value="{VIEW_FLAG}" />
            </td>
            <input type='hidden' name='PARENT_SID' value= "{PARENT_SID_VAL}"/>
            <input type='hidden' name='RELATION_ORDER_SEQ' value="{ORDER_SEQ_VAL}" />
        </tr>
    </script>

    
    
</asp:Content>
