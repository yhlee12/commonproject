﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_CUPOINT_COUPON_EDIT.aspx.cs" Inherits="drKidAdmin.Source.admin.cupoint.A_CUPOINT_COUPON_EDIT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .content_Block {
            min-width: 545px;
            width: 100%;
            min-height: 10vh;
            background: #ffffff;
            border: 1px solid #DBDDE2;
            padding: 20px 30px;
            display:flex;
        }
        .btn_Block{
            justify-content: center;
        }
        .content_Title{
            width: 20%;
        }
        .content_Body{
            width:100%;
        }
        .content_inner{
            width:100%;
            padding-bottom: 30px;
        }
        .partion{
            border-top:1px solid #dbdde2;
            padding-top: 20px;
        }
        .label{
            width: 15%;
        }
        .label-btn{
            margin-left: 4px;
        }
        .coupon_input{
            display:flex;
            align-items: center;
            margin-bottom:20px;
        }
        .coupon_date{
            display:flex;
            align-items: center;
        }
        .top_margin{
            margin-top:25px;
        }
        .inner_wrap{
            display:flex;
            align-items: center;
        }
        .search_field{
            width:88%;
        }
        .search_title{
            margin-bottom: 10px;
            position: relative;
            display: flex;
            justify-items: flex-start;
            justify-content: flex-start;
            align-items: center;
        }
        .max-height-overflow{
            height: 200px;
        }
        .table-wraper {
                border-bottom: 1px solid #e2e2e2;
                border-right: 1px solid #e2e2e2;
                border-left: 1px solid #e2e2e2;
        }
        th > .drkid-checkbox{
            position: relative;
            min-height: var(--drkid-big-font);
            padding-left: var(--drkid-big-font);
            line-height: var(--drkid-big-font);
            cursor: pointer;
        }
        .coupon_detail_label{
            margin-right:32px;
        }

        .fcolor_dea{
            color:var(--mono_dea);
        }
        .count_sapn{
            min-width: 30px;
            max-width: 100px;
            text-align: end;
        }
        
        .coupon_ex_wrap{
            display: flex;
            justify-content: space-around;
            padding: 30px 0 0 0;
        }
        .coupon_make{
            width:50%;
        }
        .flex_layer{
            display:flex;
        }
        .COUPON_TEMPLATE{
            text-align: center;
        }
        .count_input_box > input{
            border:none;
        }
        .count_input_box > input:focus{
            border:none;
        }
        .count_input_box{
            display:flex;
            align-items: center;
            box-sizing: border-box;
            height: 42px;
            line-height: 40px;
            border: 1px solid var(--mono_line);
            outline: none;
            vertical-align: middle;
            outline: none;
            line-height: var(--drkid-lower-height);
            width: 260px;
        }
        .count_size{

        }
        .input_subT_TCount,.input_mainT_TCount,.input_coupon_title_TCount{
            font-size: var(--drkid-lower-font);
            color: #D8D8D8;
        }
        .input_subT_Count,.input_mainT_Count,.input_coupon_title_Count{
            font-size: var(--drkid-lower-font);
            color: var(--main_color);
        }
        .del_btn, .save_btn,  {
            margin : 0 10px;
            min-width: 170px;
        }
        .coupon_plus{
            display: flex;
            width: 200px;
            margin: 0 auto;
        }
        #COST_LIMIT{
            text-align: end;
        }
        .user-type-check-box{
            display: flex;
            flex-wrap: wrap;
            width: 80%;
        }
        .user-type-check-box >.drkid-checkbox{
            padding: 5px 20px 5px 20px;
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
        .disnone{
            display:none;
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

        .status_W{
            color : var(--main_color);
            font-weight: normal;
        }
        .status_L{
            color : var(--drkid_Negative);
            font-weight: normal;
        }
        .coupon_code_font{
            letter-spacing: 3px;
            font-weight: 500;
        }
    </style>
    <script>
        var coupon_flag = "";
        var auth_all_flag = true;
        $(function () {
            if ("<%=cp_ret_status%>" == "N") {
                _popModal.Alert('쿠폰 저장완료', '쿠폰이 저장되었습니다.');
                var queryString = "?SAVE_FLAG=Y";
                openMenuPath("/Source/admin/cupoint/A_CUPOINT_COUPON_LIST.aspx", queryString, true);
                return false;
                
                //closeTab(1000157);//쿠폰 생성화면 닫기
            }

            $(".save_btn").on("click",function(){
                countChecked(); //유저타입 체크

                //사용가능 일자
                let _checkBoxChecker = $('input:checkbox[name="DATE_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 1) {
                    document.querySelector("#DATE_LIMIT_FLAG").value = 'Y'
                }
                if (_checkBoxChecker.length == 0) {
                    document.querySelector("#DATE_LIMIT_FLAG").value = 'N'
                }
                console.log(document.querySelector("#DATE_LIMIT_FLAG").value);
                var coupontemp = document.getElementById("TEMPLATE_3");
                var htmlContent = coupontemp.innerHTML;
                $("#I_COUPON_TEMPLATE").val(htmlContent);
                if ($("#COST_LIMIT").val().length > 0) {
                    let _sid = getNewSid();
                    var html = "<input type='text' name='AUTH_SID' id='AUTH_SID" + _sid + "' value=" + _sid + " />";
                    $(".hidden_input_field").append(html);
                };
                //ALL auth_sid 생성
                if (auth_all_flag) {
                    let _sid = getNewSid();
                    var html = "<input type='text' name='AUTH_SID' id='AUTH_SID" + _sid + "' value=" + _sid + " />";
                    $(".hidden_input_field").append(html);
                }
                getSelectedRadioButton(); //쿠폰타입 체크 (일반/중복)
                product_sid();  //상품 연결체크
                
                if(Validation()){ //밸리데이션
                    //저장 promt
                    var OkCallBack = function () {
                        
                        $("#form1").submit();
                    }

                    var esrrorCallBack = function () {

                    }

                    var _optionData = new modalOption();
                    _optionData.top = '200px';
                    _optionData.left = '550px';
                    _optionData.titleClass = 'big-font testClassAdd';
                    _optionData.bodyClass = 'lowerst-font testClassAdd2';
                    _optionData.okbtnTitle = '확인';
                    _optionData.cancelTitle = '취소';
                    _popModal.Promt('저장하시겠습니까?', '저장하시겠습니까?', OkCallBack, esrrorCallBack);
                }
            });


            $(".coupon_count_check_box").on("click", function () {
                //COUPON_COUNT_CHECK_BOX
                let _checkBoxChecker = $('input:checkbox[name="COUPON_COUNT_CHECK_BOX"]:checked');
                if (_checkBoxChecker.length == 1) {
                    document.querySelector("#COUPON_LIMIT_FLAG").value = 'Y'
                    document.querySelector("#coupon_count_input").value = "MAX"
                    document.querySelector("#coupon_count_input").readOnly = true;
                    document.querySelector("#coupon_count_input").style.backgroundColor = ("var(--mono_line)");
                }
                if (_checkBoxChecker.length == 0) {
                    document.querySelector("#COUPON_LIMIT_FLAG").value = 'N'
                    document.querySelector("#coupon_count_input").value = ""
                    document.querySelector("#coupon_count_input").readOnly = false;
                    document.querySelector("#coupon_count_input").style.backgroundColor = "";
                }
                console.log(document.querySelector("#COUPON_LIMIT_FLAG").value);
            });
            
            $("#user_type_all,.user_type").on("click", function () {   //.user_type
                //COUPON_COUNT_CHECK_BOX
                let _checkBoxChecker = $(this).val();
                console.log(_checkBoxChecker);
                if (_checkBoxChecker == "ALL" ) {
                    $(".user_type_check").prop("checked", true);
                    console.log($("#user_type_all").prop("checked"));
                    if($("#user_type_all").prop("checked") == false){
                        //전체선택 해제시 다른 체크박스 모두해제
                        $(".user_type_check").prop("checked", false);
                    }
                }
                else {
                    $(".user_type_all_check").prop("checked", false);
                }
            });

            //handleSelectChange();
            //쿠폰 템플릿 호출
            handleSelectChange();

            var input_title_text = "";
            var input_sub_text = "";
            var input_text = "";

            $("#input_coupon_title").on("input", function () {
                input_title_text = $("#input_coupon_title").val();
                var inputTitle = document.querySelector("#TEMPLATE_3 #ex_coupon_title");
                inputTitle.innerHTML = input_title_text;
                //글자수 
                var count = input_title_text.length;
                var inputCount = document.querySelector(".input_coupon_title_Count");
                inputCount.innerHTML = count;

            });

            $("#input_subT").on("input", function () {
                input_sub_text = $(this).val();
                var formatedInput = formatPay(input_sub_text);
                $(this).val(formatedInput);
                var inputSubT = document.querySelector("#TEMPLATE_3 #bot_subT");
                inputSubT.innerHTML = formatedInput;

                //글자수 
                var count = input_sub_text.length;
                var inputCount = document.querySelector(".input_subT_Count");
                if (count > 4) {
                    count -= 1
                };
                inputCount.innerHTML = count;
            });

            $("#input_mainT").on("input", function () {
                input_text = $("#input_mainT").val();
                var inputMainT = document.querySelector("#TEMPLATE_3 #bot_mainT");
                inputMainT.innerHTML = input_text;

                //글자수 
                var count = input_text.length;
                var inputCount = document.querySelector(".input_mainT_Count");
                inputCount.innerHTML = count;
            });

            $("#COST_LIMIT").on("input", function () {
                var input = $(this).val();
                var formatedInput = formatPay(input);
                $(this).val(formatedInput);
            })

            //상품검색 버튼
            $(".pop_search_btn").on("click",function(){
                showSubMenu();
            })
            //전체 선택 기능
            $('#all-select-big').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            $('#all-select-class').on('change', function (e) {
                allCheck(e.currentTarget);
            });

            //상품 저장 버튼
            $("#product_enter_btn").on('click',function(){
                $("#bigM").empty();
                let _checkBoxChecker = $('input:checkbox[name="SUB_CHECK_BOX"]:checked');
                let flag = false;
                if (_checkBoxChecker.length == 0) {
                    _popModal.Alert('알림', '상품을 선택해주세요.');
                    return;
                }
                _checkBoxChecker.each(function (index, item) {
                    $(item).prop('checked', false);
                    console.log(index);
                    console.log(item);
                    let _Sid = $(item).val();
                    let _checkline = $(`[data-sub-tr="${_Sid}"]`).clone();
                    $("#bigM").append(_checkline);
                    $("#modal").css("display","none");
                    $(".count_sapn").text(_checkBoxChecker.length+" 개");
                    console.log($(item).parents());
                    let itemtr =$(item).parents()[2];
                    console.log(itemtr);
                    //$(item).parents()[2].find('.rows_count').text(_checkBoxChecker.length - index);
                    //$(".rows_count").text(_checkBoxChecker.length - index)
                });
                //_popModal.Promt('알림', '이전에 선택되었던 상품은 삭제됩니다. 저장하시겠습니까?',
                //    function () {
                //    }, function (error) { _popModal.Alert('알림', error); });
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
                        });
                    }, function (error) { _popModal.Alert('알림', error); });
            });


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

            //쿠폰발급버튼
            //$("#coupon_issue_btn").on("click",function(){
            //    let html;
            //    //COUPON_TABLE_TEMPLATE
            //    var coupon_type= $("input[name='coupon_type']:checked").val();//coupon_type
            //    var coupon_count = $("#coupon_count_input").val(); //MAX=>2147483647	
            //    var endDate = $("#I_TO_DATE").val().replace(/-/g, ''); 
            //    var dateLimit = $("input[name='DATE_CHECK_BOX']:checked").val();//DATE_CHECK_BOX 기간제약없음 체크 'Y'
            //    if(coupon_count == "MAX"){
            //        coupon_count = "2147483647";
            //    }
            //    if(dateLimit == 'Y'){
            //        endDate = "99991231";
            //    }


            //    console.log("coupon_type : "+coupon_type);
            //    console.log("coupon_count : "+coupon_count);
            //    console.log("endDate : "+endDate);
            //    console.log("dateLimit : "+dateLimit);
            //})

            //수정시 값 세팅
            <%if (flag == "modify") {%>
                //----------COUPON_DATA----------
                //COUPON_DATA.Rows[i][""]
                //FROM_DATE
                //TO_DATE
                //COUPON_TYPE
                //COUPON_COUNT
                //COUPON_TEMPLATE
                //COUPON_TITLE
                //COUPON_SUB_TITLE
                //COUPON_BODY
            //------------------------------
            var coupontemplate = "<%=COUPON_DATA.Rows[0]["COUPON_TEMPLATENAME"].ToString()%>";
            //템플릿
            console.log(coupontemplate);
            if (coupontemplate =="coupon_11") {
                $("#MODITEMPLATENAME").val("coupon_11");
            }
            if (coupontemplate =="coupon_12") {

                $("#MODITEMPLATENAME").val("coupon_12");
            }
            if (coupontemplate =="coupon_21") {

                $("#MODITEMPLATENAME").val("coupon_21");
            }
            if (coupontemplate =="coupon_22") {

                $("#MODITEMPLATENAME").val("coupon_22");
            }
            
            //쿠폰 제목
            $("#input_coupon_title").val("<%=COUPON_DATA.Rows[0]["COUPON_TITLE"]%>");
            //쿠폰 내용
            $("#input_mainT").val("<%=COUPON_DATA.Rows[0]["COUPON_SUB_TITLE"]%>");
            //쿠폰 혜택
            $("#input_subT").val("<%=COUPON_DATA.Rows[0]["COUPON_BODY"]%>");
            //시작일
            $("#I_FROM_DATE").val(formatDate("<%=COUPON_DATA.Rows[0]["FROM_DATE"]%>"));
            //종료일
            if ("<%=COUPON_DATA.Rows[0]["TO_DATE"]%>" == "99991231") {
                $("#I_TO_DATE").val(null);
                $("#date_checkbox_flag").prop("checked", true);
            }
            else {
                $("#I_TO_DATE").val(formatDate("<%=COUPON_DATA.Rows[0]["TO_DATE"]%>"));
            }
            
            //쿠폰타입
            $("#COUPON_TYPE").val("<%=COUPON_DATA.Rows[0]["COUPON_TYPE"]%>");
            //발급가능개수
            if ("<%=COUPON_DATA.Rows[0]["COUPON_COUNT"]%>" == "2147483647") {
                $("#COUPON_COUNT_CHECK_BOX").prop("checked", true);
                document.querySelector("#COUPON_LIMIT_FLAG").value = 'Y'
                document.querySelector("#coupon_count_input").value = "MAX"
                document.querySelector("#coupon_count_input").readOnly = true;
                document.querySelector("#coupon_count_input").style.backgroundColor = ("var(--mono_line)");
            }
            else {
                $("#coupon_count_input").val("<%=COUPON_DATA.Rows[0]["COUPON_COUNT"]%>");
            }
            
            //----------COUPON_AUTH----------
            //COUPON_AUTH.Rows[i][""]
            //COUPON_SID
            //AUTH_SID 
            //AUTH_TYPE
            //PRODUCT_SID
            //TARGET_CODE
            //TARGET_NUM
            //------------------------------
            //COUPON_AUTH.Rows.Count
            var modi_product_count = 0;
            let modi_html,modi_html1;
            let _Sid = "";
            var modi_user_type_count=0;
            <%for (int i = 0; i < COUPON_AUTH.Rows.Count; i++)
                  { %>
                    <%if ((COUPON_AUTH.Rows[i]["AUTH_TYPE"]).ToString() == "PRODUCT"){ %>
                        //PRODUCT_SID
                        var product_total_count ="<%=product_total%>"
                        var product_auth = "<%= COUPON_AUTH.Rows[i]["PRODUCT_SID"].ToString()%>"
                        
                        
                        _Sid = "<%= product_listTable.Rows[i]["CODE_SID"].ToString()%>" ;
                        var _useProduct = $(`[data-sub-tr="${_Sid}"]`);
                        if(_useProduct.length == 0){
                            modi_product_count++
                            modi_html = $("#PRODUCT_TABLE_TEMPLATE").html();
                            var category_count=("<%= product_listTable.Rows[i]["CATEGORY_NAME"].ToString()%>").split(',').length;
                            modi_html = modi_html.replace(/{PRODUCT_COUNT}/g, "<%=product_total-i%>");
                            modi_html = modi_html.replace(/{PRODUCT_SID}/g, "<%= product_listTable.Rows[i]["CODE_SID"].ToString()%>");
                            modi_html = modi_html.replace(/{PRODUCT_CD}/g, "<%= product_listTable.Rows[i]["CODE_CODE"].ToString()%>");
                            modi_html = modi_html.replace(/{PRODUCT_NM}/g, "<%= product_listTable.Rows[i]["CODE_NAME"].ToString()%>");
                            for (var j = 0; j < category_count; j++) {
                                // 카테고리 개수만큼 카운트가 0일때마다 초기화 
                                if(j==0){
                                    modi_html1 = ""; 
                                }
                                var temp = ('<div class="drkid-input lowerst-font ">{category_name'+j+'}</div><input type="hidden" name="category_name" value="{category_name'+j+'}" />');
                                modi_html1 += (temp.replace("{category_name"+j+"}",("<%= product_listTable.Rows[i]["CATEGORY_NAME"].ToString()%>").split(',')[j]).replace("{category_name"+j+"}",("<%= product_listTable.Rows[i]["CATEGORY_NAME"].ToString()%>").split(',')[j]));
                            }
                            modi_html = modi_html.replace(/{CATEGORY_NAME}/g,modi_html1);
                            // 가격 천단위 콤마(,)표시
                            var sale_rate = formatPay("<%= product_listTable.Rows[i]["VIEW_SALE_RATE"].ToString()%>")
                            modi_html = modi_html.replace(/{VIEW_SALE_RATE}/g, sale_rate);
                            modi_html = modi_html.replace(/{VIEW_FLAG}/g, "<%= product_listTable.Rows[i]["VIEW_FLAG"].ToString()%>" == 'Y' ? "전시중" : "전시중단" );
                            $("#bigM").append(modi_html);
                        }
            
                    <%} %>
                    <%if ((COUPON_AUTH.Rows[i]["AUTH_TYPE"]).ToString() == "USER_TYPE"){ %>
                        modi_user_type_count++
                        //TARGET_CODE
                        var TARGET_CODE = "<%=COUPON_AUTH.Rows[i]["TARGET_CODE"]%>";
                        var $result = document.querySelector(`[data-value="${TARGET_CODE}"]`);
                        console.log($result);
                        ($result).setAttribute("checked", true);
                    <%} %>
                    <%if ((COUPON_AUTH.Rows[i]["AUTH_TYPE"]).ToString() == "COST")
                      { %>
                        //TARGET_NUM   
                        $("#COST_LIMIT").val(formatPay("<%=COUPON_AUTH.Rows[i]["TARGET_NUM"]%>"))
                    <%} %>
                    <%if ((COUPON_AUTH.Rows[i]["AUTH_TYPE"]).ToString() == "ALL"){ %>
                        $(".user_type").click();
                        $(".user_type_all").click();
                    <%} %>
            <%} %>
            if(modi_user_type_count == 0){
                $(".user_type").click();
                $(".user_type_all").click();
            }
            $("#content_product_count").text(modi_product_count+" 개");
            <%}%>
            


            //상품 팝업 추가 김태근
            //popup Open
            $('#find-pop').on('click', function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    console.log(data);
                let total_count = data.length;
                let html,html1;
                for (var i = 0; i < total_count; i++) {
                    let _Sid = data[i].JsonData.CODE_SID; 
                    let _useProduct = $(`[data-sub-tr="${_Sid}"]`);
                    if(_useProduct.length == 0){
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
                        $("#bigM").append(html);
                    }
                    $("#content_product_count").text(total_count+" 개");
                }
                product_add();
                    }).catch((err) => {
                        console.log(err);
                    });
                });
            //COUPON_TABLE_TEMPLATE 쿠폰 디테일 호출
            //COUPON_SID
            $(".detail_call_btn").on("click",function(){
                var modi_coupon_sid = $("#COUPON_SID").val();
                coupon_detail_call(modi_coupon_sid);
            })
        });


        // 상품 sid 가져오기
        function product_sid(){
            let product_class = $('.product_tr');
            let product_length = product_class.length;
            var product_sid_list = "";
            for(var i=0; i< product_length; i++ ){
                var product_sid = $('.product_tr')[i].dataset.subTr;
                
                if(i == 0){
                    product_sid_list += product_sid;
                }
                else{
                    product_sid_list += ("," + product_sid);
                }
                console.log("product_sid"+product_sid_list);
            }
            $("#PRODUCT_SID").val(product_sid_list);
            for (var i = 1; i < product_length; i++) {
                var _sid = getNewSid();
                var html = "<input type='text' name='TARGET_CODE' id='TARGET_CODE"+_sid+"' value=" + product_sid_list.split(",")[i] + " />";
                html += "<input type='text' name='AUTH_SID' id='AUTH_SID"+ _sid + "' value=" + _sid + " />";
                $(".hidden_input_field").append(html);
            }
        }


        // 상품 넘버링
        function product_add(){
            let product_tr = $(".product_tr");
            
            let tr_cout = product_tr.length;
            
            product_tr.each(function(index,item){
                let tr_input=item.children[1].children[1];
                let tr_num = item.children[1].children[0];
                tr_input.value = tr_cout - index;
                tr_num.textContent = tr_cout - index;
                
                console.log(tr_cout);
                console.log(item.children[1].children);
                console.log(item.children[1].children[0]);
                console.log(item.children[1].children[1]);
                console.log("item");
                console.log("index"+index);
            });
            $("#content_product_count").text(tr_cout+" 개");
        }


        function detectInputValue() {
            // input_coupon_title 처리
            var input_title_text = $("#input_coupon_title").val();
            var inputTitle = document.querySelector("#TEMPLATE_3 #ex_coupon_title");
            inputTitle.innerHTML = input_title_text;

            // 글자수
            var titleCount = input_title_text.length;
            var inputTitleCount = document.querySelector(".input_coupon_title_Count");
            inputTitleCount.innerHTML = titleCount;

            const input_text = $("#input_mainT").val();
            const inputMainT = document.querySelector("#TEMPLATE_3 #bot_mainT");
            inputMainT.innerHTML = input_text;

            // 글자수
            const count = input_text.length;
            const inputCount = document.querySelector(".input_mainT_Count");
            inputCount.innerHTML = count;

            // input_subT 처리
            var input_sub_text = $("#input_subT").val();
            var formatedInput = formatPay(input_sub_text);
            $("#input_subT").val(formatedInput);

            var coupon_count = $("#coupon_count_input").val();
            var formated_coupon_count = formatPay(coupon_count);
            $("#coupon_count_input").val(formated_coupon_count);

            var inputSubT = document.querySelector("#TEMPLATE_3 #bot_subT");
            inputSubT.innerHTML = formatedInput;

            // 글자수
            var subTitleCount = input_sub_text.length;
            var inputSubTitleCount = document.querySelector(".input_subT_Count");
            inputSubTitleCount.innerHTML = subTitleCount > 4 ? subTitleCount - 1 : subTitleCount;
        }
        
        // 일정 시간마다 detectInputValue 함수 호출 (예: 500ms마다)
        var intervalId = setInterval(detectInputValue, 1000);

        function getNewSid() {
            let _SID = -1;
            //전체 권한 카운트
            auth_all_flag = false;

            $('.hidden_input_field > input[name="AUTH_SID"]').each(function (index, item) {
                let _trSID = $(item).val() * 1;
                if (_SID >= _trSID) {
                    _SID = _trSID - 1;
                }
            });
                
            return _SID;
        }

        function getSelectedRadioButton() {
            var selectedValue = null;
            var radioButtons = document.getElementsByName("coupon_type");

            for (var i = 0; i < radioButtons.length; i++) {
                if (radioButtons[i].checked) {
                    selectedValue = radioButtons[i].value;
                    break;
                }
            }

            $("#I_COUPON_TYPE").val(selectedValue);
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

        function countChecked() {
            $("input[name='TARGET_CODE']").remove();
            $("input[name='AUTH_SID']").remove();

            var checkboxes = document.getElementsByClassName("user_check_box");
            var checkedCount = 0;
            let _sid;

            for (var i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i].checked &&checkboxes[i].value != "ALL") {
                        checkedCount++;
                        _sid = getNewSid();
                        var html = "<input type='text' name='TARGET_CODE' id='TARGET_CODE"+_sid+"' value=" + checkboxes[i].value + " />";
                        html += "<input type='text' name='AUTH_SID' id='AUTH_SID"+ _sid+"'value=" + _sid + " />";
                        $(".hidden_input_field").append(html);
                 }
                 else{
                     
                 }
            }
            var checkedboxlength=$("input[name='AUTH_SID']").length;
            $("#checkedCount").val(checkedboxlength);
            console.log(checkedCount);
        }

        function formatDate(dateString) {
            // 날짜 문자열을 연도, 월, 일로 분리
            var year = dateString.substr(0, 4);
            var month = dateString.substr(4, 2);
            var day = dateString.substr(6, 2);

            // "-"를 사용하여 연도, 월, 일을 합쳐 새로운 날짜 문자열 생성
            var formattedDate = year + "-" + month + "-" + day;

            return formattedDate;
        }

        function formatPay(input) {
            var Number = input.replace(/[^0-9%MAX]/g, ''); // 숫자 이외의 문자 제거
            var formattedNumber = '';
            formattedNumber = Number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            return formattedNumber;
        }
        var first_temp = 'Y';

        function handleSelectChange() {
            
            var selectBox = document.getElementById("coupon_temp_select");
            var selectedValue = selectBox.value;

            <%if (flag == "modify") {%>
                $("#COUPON_SID").val(<%=modify_sid%>);
                var coupontemplate = $("#MODITEMPLATENAME").val();

                //템플릿
                if (coupontemplate.includes("coupon_11")) {
                    $("#MODITEMPLATENAME").val("coupon_11");
                }
                if (coupontemplate.includes("coupon_12")) {
                    $("#MODITEMPLATENAME").val("coupon_12");
                }
                if (coupontemplate.includes("coupon_21")) {
                    $("#MODITEMPLATENAME").val("coupon_21");
                }
                if (coupontemplate.includes("coupon_22")) {
                    $("#MODITEMPLATENAME").val("coupon_22");
                }
            <%}%>
            var modify_temp= $("#MODITEMPLATENAME").val();
            templateForm = modify_temp;
            console.log("쿠폰 수정 "+ modify_temp)
            if (selectedValue == null) {
                templateForm = "coupon_11";
            }
            //if (modify_temp != null && modify_temp != "") {
            //    templateForm = modify_temp;
            //}
            else {
                templateForm = selectedValue;
            }
            $("#TEMPLATENAME").val(templateForm);

            if (first_temp == 'N' || modify_temp != "") {
                var OkCallBack = function () {
                    templat_change();
                }

                var esrrorCallBack = function () {
                }

                var _optionData = new modalOption();
                _optionData.top = '200px';
                _optionData.left = '550px';
                _optionData.titleClass = 'big-font testClassAdd';
                _optionData.bodyClass = 'lowerst-font testClassAdd2';
                _optionData.okbtnTitle = '확인';
                _optionData.cancelTitle = '취소';
                _popModal.Promt('쿠폰 템플릿을 변경하시겠습니까?', '변경시 입력하신 쿠폰정보가 초기화됩니다.', OkCallBack, esrrorCallBack);
            }
            if (first_temp == 'Y') {
                templat_change();
            }
            first_temp = 'N';
        }

        function Validation(){
            var vali_flag = true;
            /// 밸리데이션 
            if ($("#input_coupon_title").val() == null || $("#input_coupon_title").val() == "") {
               
                _popModal.Alert('쿠폰제목을 입력해주세요', '쿠폰제목이 입력되지 않았습니다.<br/>다시 입력 후 시도해주세요.');
                vali_flag =false;
                return false;
            };
            if ($("#input_subT").val() == null || $("#input_subT").val() == "") {
                _popModal.Alert('쿠폰혜택을 입력해주세요', '쿠폰혜택이 입력되지 않았습니다.<br/>다시 입력 후 시도해주세요.');
                vali_flag =false;
                return false;
            };
            if ($(".I_FROM_DATE").val() == null || $(".I_FROM_DATE").val() == "") {
                _popModal.Alert('사용가능일자를 선택해주세요', '시작 일자가 선택되지 않았습니다.<br/>다시 입력 후 시도해주세요.');
                vali_flag =false;
                return false;
            };
            if ($("#DATE_LIMIT_FLAG").val() == "N" && $(".I_TO_DATE").val() == "") {
                _popModal.Alert('사용가능일자를 선택해주세요', '종료 일자가 선택되지 않았습니다.<br/>다시 입력 후 시도해주세요.');
                vali_flag =false;
                return false;
            };
            if ($("input[name='AUTH_SID']").length == 0) {
                _popModal.Alert('유저타입을 선택해주세요', '하나 이상의 유저타입이 선택되어야합니다.<br/>다시 입력 후 시도해주세요.');
                vali_flag =false;
                return false;
            };
            if ($("#coupon_count_input").val() == null || $("#coupon_count_input").val() == "") {
                _popModal.Alert('쿠폰 발급가능 개수을 입력해주세요', '쿠폰 발급가능 개수이 입력되지 않았습니다.<br/>다시 입력 후 시도해주세요.');
                vali_flag =false;
                return false;
            };
            return vali_flag;
        };

        function templat_change() {
            showProgress();
            $.ajax({
                type: "POST",
                url: "/Source/admin/cupoint/AJAX_COUPON_TEMPLATE.aspx",
                dataType: "html",
                data: { templateForm: templateForm },
                success: function (data) {
                    $(".COUPON_TEMPLATE").empty();
                    $(".COUPON_TEMPLATE").append(data);
                    if (templateForm == "coupon_11" || templateForm == "coupon_12") {
                        if (templateForm == "coupon_12") {
                            document.querySelector("#TEMPLATE_1 .top").setAttribute("style", "background-color: var(--main_color);");
                            document.querySelector("#TEMPLATE_2 .top").setAttribute("style", "background-color: var(--main_color);");
                            document.querySelector("#TEMPLATE_3 .top").setAttribute("style", "background-color: var(--main_color);");
                        }
                        var textElement1 = document.querySelector("#TEMPLATE_1 .ex_coupon_title1");
                        textElement1.innerHTML = "쿠폰제목";
                        var textElement1 = document.querySelector("#TEMPLATE_2 .ex_coupon_title1");
                        textElement1.innerHTML = "쿠폰제목";
                        var textElement1 = document.querySelector("#TEMPLATE_1 .bot_subT1");
                        textElement1.innerHTML = "20%";
                        var textElement1 = document.querySelector("#TEMPLATE_2 .bot_subT1");
                        textElement1.innerHTML = "25,000";
                        var textElement1 = document.querySelector("#TEMPLATE_1 .bot_mainT1");
                        textElement1.innerHTML = "쿠폰내용 들어가는 자리";
                        var textElement1 = document.querySelector("#TEMPLATE_2 .bot_mainT1");
                        textElement1.innerHTML = "쿠폰내용 들어가는 자리";
                    }
                    if (templateForm == "coupon_21" || templateForm == "coupon_22") {
                        if (templateForm == "coupon_22") {
                            document.querySelector("#TEMPLATE_1 .left").setAttribute("style", "background-color: var(--main_color);");
                            document.querySelector("#TEMPLATE_2 .left").setAttribute("style", "background-color: var(--main_color);");
                            document.querySelector("#TEMPLATE_3 .left").setAttribute("style", "background-color: var(--main_color);");
                            document.querySelector("#TEMPLATE_1 .bot_mainT2").setAttribute("style", "color: var(--main_color);");
                            document.querySelector("#TEMPLATE_2 .bot_mainT2").setAttribute("style", "color: var(--main_color);");
                            document.querySelector("#TEMPLATE_3 .bot_mainT2").setAttribute("style", "color: var(--main_color);");
                            document.querySelector("#TEMPLATE_1 .ex_coupon_title2").setAttribute("style", "color: var(--main_color);");
                            document.querySelector("#TEMPLATE_2 .ex_coupon_title2").setAttribute("style", "color: var(--main_color);");
                            document.querySelector("#TEMPLATE_3 .ex_coupon_title2").setAttribute("style", "color: var(--main_color);");
                        }
                        var textElement2 = document.querySelector("#TEMPLATE_1 .bot_mainT2");
                        textElement2.innerHTML = "쿠폰내용 들어가는 자리";
                        var textElement2 = document.querySelector("#TEMPLATE_2 .bot_mainT2");
                        textElement2.innerHTML = "쿠폰내용 들어가는 자리";
                        var textElement2 = document.querySelector("#TEMPLATE_1 .bot_subT2");
                        textElement2.innerHTML = "20%";
                        var textElement2 = document.querySelector("#TEMPLATE_2 .bot_subT2");
                        textElement2.innerHTML = "25,000";
                        var textElement2 = document.querySelector("#TEMPLATE_1 .ex_coupon_title2");
                        textElement2.innerHTML = "쿠폰제목";
                        var textElement2 = document.querySelector("#TEMPLATE_2 .ex_coupon_title2");
                        textElement2.innerHTML = "쿠폰제목";
                    }
                    document.querySelector("#TEMPLATE_1").append("예시1")
                    document.querySelector("#TEMPLATE_2").append("예시2")

                },
                error: function (result) {
                    _popModal.Alert('알림', result);
                },
                complete: function () {
                    <%if(modify_sid == "modify"){%>
                    $("#input_coupon_title").val("");
                    $(".input_coupon_title_Count").html(0)
                    $("#input_mainT").val("");
                    $(".input_mainT_Count").html(0)
                    $("#input_subT").val("");
                    $(".input_subT_Count").html(0)

                    <%}%>
                    hideProgress();
                    coupon_flag = "Y";
                }
            });
        }

        function coupon_detail_call(coupon_sid) {
            showProgress();
            let html ;
            var used_count = 0;
            $.ajax({
                type: "POST",
                url: "/Source/admin/cupoint/AJAX_COUPON_DETAIL.aspx",
                dataType: "json",
                data: { coupon_sid: coupon_sid },
                success: function (data) {
                    $("#subM").empty();
                    console.log(data);
                    if(data.Table.length > 0 ){
                        for(var i =0 ; i < data.Table.length; i++){
                            html = $("#COUPON_TABLE_TEMPLATE").html();
                            //COUPON_COUNT/COUPON_CD/USED_STATUS
                            html = html.replace(/{COUPON_COUNT}/g, data.Table.length - i);
                            html = html.replace(/{COUPON_CD}/g, data.Table[i]["COUPON_CODE"].toString());
                            if(data.Table[i]["COUPON_USED_FLAG"].toString() == 'Y'){
                                used_count ++;
                                html = html.replace(/{STATUS_COLOR}/g, "status_W");
                                html = html.replace(/{{USED_STATUS}}/g, "사용");
                                html = html.replace(/{{USED_FLAG}}/g, data.Table[i]["COUPON_USED_FLAG"].toString());
                            }
                            if(data.Table[i]["COUPON_USED_FLAG"].toString() == 'N'){
                                html = html.replace(/{STATUS_COLOR}/g, "status_L");
                                html = html.replace(/{USED_STATUS}/g, "미사용");
                                html = html.replace(/{{USED_FLAG}}/g, data.Table[i]["COUPON_USED_FLAG"].toString());
                            }
                        }
                        //used_coupon_count
                        
                        $(".used_coupon_count").text(used_count+"개");
                        $(".issue_coupon_count").text(data.Table.length+"개");
                        $(".detail_count").text(data.Table.length);
                        $("#subM").append(html);
                    }
                },
                error: function (result) {
                    _popModal.Alert('알림', result);
                },
                complete: function () {
                    hideProgress();
                }
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hidden_input_field" style="display:none;">
        <input type="hidden" name="flag" value="" id="flag" />
        <input type="hidden" name="I_COUPON_TEMPLATE" value="" id="I_COUPON_TEMPLATE" />
        <input type="hidden" name="DATE_LIMIT_FLAG" id="DATE_LIMIT_FLAG" value="" />
        <input type="hidden" name="COUPON_LIMIT_FLAG" id="COUPON_LIMIT_FLAG" value="" />
        <input type="hidden" name="checkedCount" id="checkedCount" value="" />
        <input type="hidden" name="I_COUPON_TYPE" id="I_COUPON_TYPE" value="" />
        <input type="hidden" name="COUPON_SID" id="COUPON_SID" value="" />
        <input type="hidden" name="template_id" id="template_id" value="" /> 
        <input type="hidden" name="product_search_word" id="product_search_word" value="" />
        <input type="hidden" name="PRODUCT_SID" id="PRODUCT_SID" value="" />
        <input type="hidden" name="TEMPLATENAME" id="TEMPLATENAME" value="" />
        <input type="hidden" name="MODITEMPLATENAME" id="MODITEMPLATENAME" value="" />
        <%if (flag=="modify")
              { %>
            <div class="template" id="template"><%=COUPON_DATA.Rows[0]["COUPON_TEMPLATE"]%></div>
            <%} %>
        
    </div>
    <%--<div id="modal" class="modal">
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
                
                <div class="modal_search_field">
                    <div class="search_title">
                        <span class="lower-font fcolor_dea">연결된 상품&nbsp</span>
                        <span class="lower-font count_sapn" id ="modal_product_count" >0 개</span>
                    </div>
                    <div class="table-wraper max-height-overflow">
                        <table class="table-common">
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
                                            <input type="checkbox" value="Y" id="all-select-big" />
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
                            <tbody id="pop-product-tbody">
                            </tbody>
                        </table>
                        <div class="pageNavigationStr" style="padding: 50px 0px;">
                        </div>
                    </div>
                </div>
            </div>
            <div id="pop-modal-btn-wraper">
                <div class="drkid-btn-sub2 admin_save_Btn findEnterkey" id="product_enter_btn">
                    <span class="middle-font modal-btn-font">저장</span>
                </div>
                <div class="drkid-btn-sub2 drkid-btn-active closeBtn">
                    <span class="middle-font modal-btn-font">취소</span>
                </div>
            </div>
        </div>
    </div>--%>

    <div class="sub-warp">
        <div class="sub-warp-title">
            <%if (flag=="modify")
              { %>
            <span class="middle-font">쿠폰수정</span>
            <%} %>
            <%else{ %>
            <span class="middle-font"><%=pageAuth.nowtitle %></span>
            <%} %>
        </div>

        <div class="content_Block">
            <div class="content_Title">
                <div class="manager_Count_text">쿠폰 템플릿</div>
            </div>

            <div class="content_Body">
                <div class="content_inner">
                    <div class="inner_first">
                        <select name="" id="coupon_temp_select" class="drkid-select" onchange="handleSelectChange()" style="width: 190px;" data-font-class="lower-font" data-styles='{"width":"190px","height":"34px"}'>
                            <option value="coupon_11">가로쿠폰_노랑</option>
                            <option value="coupon_12">가로쿠폰_초록</option>
                            <option value="coupon_21">세로쿠폰_노랑</option>
                            <option value="coupon_22">세로쿠폰_초록</option>
                        </select>
                    </div>

                    <div class="inner_second">
                        <div class="coupon_ex_wrap">
                            <div class="COUPON_TEMPLATE" id="TEMPLATE_1"></div>
                            <div class="COUPON_TEMPLATE" id="TEMPLATE_2"></div>
                        </div>
                    </div>
                </div>

                <div class="content_inner partion flex_layer">
                    <div class="coupon_make">
                        <div class="coupon_input_title coupon_input">
                            <div class="label">
                                <span class="drkid_Negative_color">*</span>
                                <span>쿠폰제목</span>
                            </div>
                            <div class="count_input_box">
                                <input id="input_coupon_title" name="I_COUPON_TITLE" maxlength="10" autocomplete="off"/>
                                <div class="input_coupon_title_Count count_size">0</div>
                                <div class="input_coupon_title_TCount count_size">/10</div>
                            </div>
                        </div>
                        <div class="coupon_input_detail coupon_input">
                            <div class="label">
                                <span class="drkid_Negative_color">&nbsp&nbsp</span>
                                <span>쿠폰내용</span>
                            </div>
                            <div class="count_input_box">
                                <input id="input_mainT" name="I_COUPON_SUB_TITLE" maxlength="14" autocomplete="off"/>
                                <div class="input_mainT_Count count_size">0</div>
                                <div class="input_mainT_TCount count_size">/14</div>
                            </div>
                        </div>
                        <div class="coupon_input_body coupon_input">
                            <div class="label">
                                <span class="drkid_Negative_color">* </span>
                                <span>쿠폰혜택</span>
                            </div>
                            <div class="count_input_box">
                                <input id="input_subT" name="I_COUPON_BODY" maxlength="7" autocomplete="off"/>
                                <div class="input_subT_Count count_size">0</div>
                                <div class="input_subT_TCount count_size">/6</div>
                            </div>
                        </div>
                    </div>
                    <div class="coupon_make ">
                        <div class="COUPON_TEMPLATE" id="TEMPLATE_3"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_Block">
            <div class="content_Title">
                <div class="manager_Count_text">쿠폰 제약 조건</div>
            </div>
            <div class="content_Body">
                <div class="content_inner">
                    <div class="coupon_date">
                        <div class="label">
                            <span class="drkid_Negative_color">* </span>
                            <span>사용가능일자</span>
                        </div>
                        <div class="datePicker_wrap">
                            <div class="datePicker lower-font" style="width: 250px;">
                                <input type="text" value="" autocomplete="off" class="datePicker-input I_FROM_DATE" name="I_FROM_DATE" placeholder="시작일" id="I_FROM_DATE" />
                                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                            </div>
                            <span>&nbsp~&nbsp</span>
                            <div class="datePicker lower-font" style="width: 250px;">
                                <input type="text" value="" autocomplete="off" class="datePicker-input I_TO_DATE" name="I_TO_DATE" placeholder="종료일" id="I_TO_DATE" />
                                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="coupon_date top_margin">
                        <div class="label">
                        </div>
                        <div class="check_box_wrap">
                            <label class="drkid-checkbox date_check_box">
                                <input id="date_checkbox_flag" type="checkbox" name="DATE_CHECK_BOX" value="Y" />
                                <span class="fake-check-box"></span>
                                <span class="lower-font">&nbsp 기간 제약 없음</span>
                            </label>
                        </div>

                    </div>
                </div>
                <div class="content_inner partion">
                    <div class="inner_wrap">
                        <div class="label">
                            <span class="drkid_Negative_color">&nbsp&nbsp</span>
                            <span>상품</span>
                        </div>
                        <%--상품조회--%>
                        <%--<div class="drkid-btn-sub2 drkid-btn-active" id="openModalButton">
                            <span class="lowerst-font">상품조회</span>
                        </div>--%>
                        <div class="drkid-btn-sub2 drkid-btn-active" id="find-pop" data-class-code="POP_PRODUCT" data-title="상품 조회"  data-target="COMMON_POPUP_2">
                            <span class="lower-font">상품조회</span>
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
                                <span class="lower-font count_sapn" id="content_product_count">0 개</span>
                            </div>
                            <div class="table-wraper max-height-overflow">
                                <table class="table-common">
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
                                                    <input type="checkbox" value="Y" id="all-select-class" />
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

                                        <%--<%for (int i = 0; i < ListTable.Rows.Count; i++)
                                              { %>
                                            <tr class="CLASS_TR" id="<%=ListTable.Rows[i]["CLASS_SID"] %>_TR_CLASS">
                                                <td class="lower-font">
                                                    <label class="drkid-checkbox">
                                                        <input type="checkbox" value="<%=ListTable.Rows[i]["CLASS_SID"] %>" name="CLASS_SID" />
                                                        <span class="fake-check-box"></span>
                                                    </label>
                                                </td>
                                                <td class="lower-font">
                                                    <input type="text" name="CLASS_CODE" class="drkid-input lowerst-font input-lowheight" placeholder="10자리 이하" maxlength="10" value="<%=ListTable.Rows[i]["CLASS_CODE"] %>" />
                                                </td>
                                                <td class="lower-font">
                                                    <input type="text" name="CLASS_NAME" class="drkid-input lowerst-font input-lowheight" id="<%=ListTable.Rows[i]["CLASS_SID"] %>_NAME" value="<%=ListTable.Rows[i]["CLASS_NAME"] %>" />
                                                </td>
                                                <td class="lower-font">
                                                    <input type="text" name="TITLE1_CHAR" class="drkid-input lowerst-font input-lowheight" value="<%=ListTable.Rows[i]["TITLE1_CHAR"] %>" />
                                                </td>
                                                <td class="lower-font">
                                                    <input type="text" name="TITLE2_CHAR" class="drkid-input lowerst-font input-lowheight" value="<%=ListTable.Rows[i]["TITLE2_CHAR"] %>" />
                                                </td>
                                                <td class="lower-font">
                                                    <div class="drkid-btn td-btn drkid-btn-active big-target-btn">
                                                        <span class="lower-font" onclick="ShowCode('<%=ListTable.Rows[i]["CLASS_SID"] %>')">하위메뉴</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <%} %>--%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="content_inner partion" style="padding-bottom: 0px;">
                        <div class="inner_wrap">
                            <div class="label">
                                <span class="drkid_Negative_color">&nbsp&nbsp</span>
                                <span>쿠폰타입 </span>
                            </div>
                            <%for (int i = 0; i < CP_TYPE_CODE.Rows.Count; i++)
                              { %>
                            <label class="drkid-radio">
                                <input type="radio" name="coupon_type" value="<%=CP_TYPE_CODE.Rows[i]["CODE_CODE"] %>"
                                    <%if (i == 0)
                                      { %>
                                        <%if (flag != "modify")
                                          { %>
                                        checked="checked"
                                        <%} %>
                                        <%else{ %>
                                        checked="checked"
                                        <%} %>
                                    <%} %> />
                                <span class="lower-font"><%=CP_TYPE_CODE.Rows[i]["CODE_NAME"] %></span>
                            </label>
                            <%} %>
                        </div>
                    </div>

                    <div class="inner_wrap top_margin">
                        <div class="label">
                            <span class="drkid_Negative_color">*</span>
                            <span>유저타입</span>
                        </div>
                        
                        <div class="check_box_wrap user-type-check-box">
                            <label class="drkid-checkbox user_type_all">
                                <input type="checkbox" data-value="ALL" value="ALL" id="user_type_all" name="user_type_all" class="user_type_all_check user_check_box" />
                                <span class="fake-check-box"></span>
                                <span class="lower-font">&nbsp 전체</span>
                            </label>
                            <%for (int j = 0; j < USER_TYPE_CODE.Rows.Count; j++)
                              { %>
                            <label class="drkid-checkbox user_type">
                                <input type="checkbox" data-value="<%=USER_TYPE_CODE.Rows[j]["CODE_CODE"] %>" value="<%=USER_TYPE_CODE.Rows[j]["CODE_CODE"] %>" id="" class="user_type_check user_check_box" name="" />
                                <span class="fake-check-box"></span>
                                <span class="lower-font">&nbsp <%=USER_TYPE_CODE.Rows[j]["CODE_NAME"] %></span>
                            </label>
                            <%} %>
                        </div>
                    </div>
                    <div class="inner_wrap top_margin">
                        <div class="label">
                            <span class="drkid_Negative_color">&nbsp&nbsp</span>
                            <span>가격</span>
                        </div>
                        <input type="text" name="TARGET_NUM" id="COST_LIMIT" class="drkid-input lower-font" value="" placeholder="" autocomplete="off"/>
                        <span>&nbsp 이상 결제시 쿠폰 사용가능</span>
                    </div>
                </div>
                <div class="content_inner partion">
                    <div class="coupon_date">
                        <div class="label">
                            <span class="drkid_Negative_color">*</span>
                            <span>발급 가능 개수</span>
                        </div>
                        <input type="text" id="coupon_count_input" class="drkid-input lower-font" name="I_COUPON_COUNT" value="" placeholder="" maxlength="11" autocomplete="off"/>
                        <span>&nbsp&nbsp</span>
                        <%--쿠폰발급 버튼--%>
                        <%--<div class="drkid-btn-sub2 drkid-btn-active" id="coupon_issue_btn">
                            <span class="lowerst-font">발급</span>
                        </div>--%>
                    </div>
                    <div class="coupon_date top_margin">
                        <div class="label">
                        </div>
                        <div class="check_box_wrap">
                            <label class="drkid-checkbox coupon_count_check_box">
                                <input type="checkbox" value="Y" id="COUPON_COUNT_CHECK_BOX" name="COUPON_COUNT_CHECK_BOX" />
                                <span class="fake-check-box"></span>
                                <span class="lower-font">&nbsp 발급 가능 개수 제약 없음</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="content_inner partion">
                    <div class="inner_wrap">
                        <div class="label">
                            <span class="drkid_Negative_color">&nbsp&nbsp</span>
                            <span>쿠폰 상세 내역</span>
                        </div>
                        <span class="coupon_detail_label">발급된 쿠폰 개수</span>
                        <span class="main_color issue_coupon_count">0개</span>
                    </div>
                    <div class="inner_wrap top_margin">
                        <div class="label">
                            <span class="drkid_Negative_color">&nbsp&nbsp</span>
                            <div class="label-btn drkid-btn-sub2 drkid-btn-active detail_call_btn" >
                                <span class="lowerst-font">새로고침</span>
                            </div>
                        </div>
                        <span class="coupon_detail_label">사용된 쿠폰 개수</span>
                        <span class="drkid_Negative_color used_coupon_count">0개</span>
                    </div>
                </div>
                <div class="content_inner partion">
                    <div class="inner_wrap">
                        <div class="label">
                        </div>
                        <label class="drkid-radio">
                            <input type="radio" name="radio" value="" checked="checked" />
                            <span class="lower-font">전체</span>
                        </label>
                        <label class="drkid-radio">
                            <input type="radio" name="radio" value="" />
                            <span class="lower-font">사용된 쿠폰</span>
                        </label>
                        <label class="drkid-radio">
                            <input type="radio" name="radio" value="" />
                            <span class="lower-font">미사용 쿠폰</span>
                        </label>
                    </div>
                    <div class="inner_wrap top_margin">
                        <div class="label">
                        </div>
                    </div>
                </div>
                <div class="inner_wrap">
                    <div class="label">
                        <span class="drkid_Negative_color">&nbsp&nbsp</span>
                    </div>
                    <div class="search_field">
                        <div class="search_title">
                            <span class="lower-font fcolor_dea">쿠폰 검색 결과&nbsp</span>
                            <span class="lower-font count_sapn "><span class="detail_count"></span> 개</span>
                        </div>
                        <div class="table-wraper max-height-overflow">
                            <table class="table-common">
                                <%--<table class="list-table" id="bigM">--%>
                                <colgroup>
                                    <col style="width: 10%;" />
                                    <col style="width: 60%;" />
                                    <col style="width: 30%;" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="lower-font">No.</th>
                                        <th class="lower-font">쿠폰코드</th>
                                        <th class="lower-font">사용 유무</th>
                                    </tr>
                                </thead>
                                <tbody id="subM">
                                    
                                </tbody>

                            </table>
                            <div class="drkid-btn drkid-btn-active coupon_plus disnone">
                                <span class="middle-font">더보기</span>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="content_Block btn_Block">
            <div class="inner_wrap">
                <div class="drkid-btn del_btn">
                    <span class="middle-font ">삭제</span>
                </div>
                <div class="drkid-btn drkid-btn-active save_btn">
                    <span class="middle-font">저장</span>
                </div>
            </div>
            
        </div>
    </div>
    <%--팝업 상품 리스트 테이블--%>
    <script type="text/html" id="PRODUCT_TABLE_TEMPLATE">
        <tr class="product_tr" data-sub-tr="{PRODUCT_SID}">
            <%--체크박스--%>
            <td class="lower-font">
                <label class="drkid-checkbox">
                    <input type="checkbox" value="{PRODUCT_SID}" name="SUB_CHECK_BOX" />
                    <span class="fake-check-box"></span>
                </label>
            </td>
            <%--넘버--%>
            <td class="lower-font rows_count">
                <div class="drkid-input input-lowheight">{PRODUCT_COUNT}</div>
                <input type="hidden" name="PRODUCT_COUNT" value="{PRODUCT_COUNT}" />
            </td>
            <%--상품번호--%>
            <td class="lower-font">
                <div class="drkid-input input-lowheight">{PRODUCT_CD}</div>
                <input type="hidden" name="PRODUCT_CD" value="{PRODUCT_CD}" />
            </td>
            <%--상품명--%>
            <td class="lower-font">
                <div class="drkid-input  input-lowheight">{PRODUCT_NM}</div>
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
                <div class="drkid-input  input-lowheight">{VIEW_SALE_RATE}</div>
                <input type="hidden" name="VIEW_SALE_RATE" value="{VIEW_SALE_RATE}" />
            </td>
            <%--전시상태--%>
            <td class="lower-font">
                <div class="drkid-input  input-lowheight">{VIEW_FLAG}</div>
                <input type="hidden" name="VIEW_FLAG" value="{VIEW_FLAG}" />
            </td>
            <%--잔여수량--%>
            <td class="lower-font">
                <div class="drkid-input  input-lowheight">{VIEW_FLAG}</div>
                <input type="hidden" name="VIEW_FLAG" value="{VIEW_FLAG}" />
            </td>
        </tr>
    </script>
    <%--쿠폰 리스트 테이블--%>
    <script type="text/html" id="COUPON_TABLE_TEMPLATE">
        <tr>
            <%--넘버--%>
            <td class="lower-font rows_count">
                <div class="drkid-input input-lowheight">{COUPON_COUNT}</div>
                <input type="hidden" name="COUPON_COUNT" value="{COUPON_COUNT}" />
            </td>
            <%--쿠폰코드--%>
            <td class="lower-font">
                <div class="drkid-input input-lowheight coupon_code_font">{COUPON_CD}</div>
                <input type="hidden" name="COUPON_CD" value="{COUPON_CD}" />
            </td>
            <%--사용유무--%>
            <td class="lower-font">
                <div class="drkid-input input-lowheight {STATUS_COLOR}">{USED_STATUS}</div>
                <input type="hidden" name="USED_FLAG" value="{USED_FLAG}" />
            </td>
        </tr>
    </script>
</asp:Content>
