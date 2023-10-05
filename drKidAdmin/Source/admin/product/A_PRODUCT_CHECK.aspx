﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_PRODUCT_CHECK.aspx.cs" Inherits="drKidAdmin.Source.admin.product.A_PRODUCT_CHECK" %>
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
            padding-bottom: 20px;
            /* border: 1px solid; */
            /* border-bottom: 1px solid; */
            border-bottom: 1px solid #dbdde2;
         }

         .contentArea {
             display: flex;
             align-items: center;
         }

         .contentArea_title {
             min-width: 8%;
         }

         .contentArea_input {
             width: 250px;
         }

         .contentArea_input > input {
             width: 100%;
         }

         /*체크 박스*/
         .content_wrap_inner_two {
            padding: 20px 0;
            border-bottom: 1px solid #dbdde2;
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
             gap: 30px;
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
             min-height: 200px;
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

        .drkid-select-div {
            min-width: 100px;
            padding: 8px 15px;
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
        .right_Btns {
            display: flex;
            gap: 0px 20px;
        }
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
    </style>
    <script>
        <%-- var $result_code = `<%=cp_ret_status%>`;
        var $result_message = `<%=cp_ret_message%>`;
        var $flag = `<%=flag%>`;
        //Image Upload에 사용
        let _NowTarget;
        document.addEventListener('DOMContentLoaded', function () {
            if ($result_code == `Y`) {
                _popModal.Alert('알림', $result_message);
                $result_code = '';
                $result_message = '';
            }
        });--%>
        var $CREATED_PROD_FROM = `<%=CREATED_PROD_FROM%>`;
        var $CREATED_PROD_TO = `<%=CREATED_PROD_TO%>`;
        var $search_flag = `<%=search_flag%>`;
        var $change_flag = `<%=change_flag%>`;
        var change_sid_list = [];//전시상태 변경할 sid를 담는 배열
        var $matches = `<%=matches%>`;
        //Category Delete
        function delCategory(target) {
            let _targetSid = $(target).data('targetdel');
            $(`[data-targetsid="${_targetSid}"]`).remove();
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
        $(function () {
            //New 신규 버튼 선택
            $('#new-btn').on('click', function () {
                openMenuPath('/Source/admin/product/A_PRODUCT_EDIT.aspx', '', true);
            });
            //Refresh
            $('#refresh').on('click', function () {
                $('#STOCK_COD').val('');
            })
            $('#search-btns').on('click', function () {
                showProgress();
                $('#flag').val('search');
                $('#form1').submit();
            });
            $("input[name='PRODUCT_NM'], input[name='PRODUCT_CD']").keydown(function (event) {
                if (event.keyCode === 13) {
                    showProgress();
                    $('#flag').val('search');
                    $('#form1').submit();
                }
            });
            $('.target-auth-btn').on('click', function (e) {
                let _PRODUCT_SID = $(e.currentTarget).data('id');
                openMenuPath('/Source/admin/stock/A_PRODUCT_EDIT.aspx', `?PRODUCT_SID=${_PRODUCT_SID}`, true);
            });
            //상품 리스트 수정 버튼 HJH 0825
            $(".edit_Btn").click(function () {
                var sid = $(this).attr('id');
                var queryString = "?edit_flag=Y" + "&request_sid=" + sid;
                openMenuPath("/Source/admin/product/A_PRODUCT_EDIT.aspx", queryString, true);
            });
            //전시변경 이벤트 HJH 0825
            $('#status_Change').change(function (e) {
                var select_value = $(e.currentTarget).val();
                var _checkBoxChecker = $("input:checkbox[name=PROD_LIST_CHECKBOX]:checked");
                console.log("select_value:",select_value)
                console.log("_checkBoxChecker length:",_checkBoxChecker.length)
                if(select_value != ""){
                    if(_checkBoxChecker.length == 0){
                        _popModal.Alert('알림', '하나 이상의 메뉴를 선택해주세요.');
                        return;
                    }
                    else{
                        _popModal.Promt('', '전시상태를 변경하시겠습니까?',
                        function () {
                            _checkBoxChecker.each(function (index, item) {
                                var addValue = $(item).val();
                                change_sid_list.push(addValue);
                                //체크되어 있는 sid값들을 , 로 구분해 #delete-sid 인풋요소에 저장
                                var valueString = change_sid_list.join(',');
                                $("#CHANGE_SID_LIST").val(valueString);
                            });
                            console.log("CHANGE_SID_LIST 값", $("#CHANGE_SID_LIST").val())
                            $('#CHANGE_VALUE').val(select_value);
                            $('#flag').val('change');
                            showProgress();
                            $('#form1').submit();
                        }, function (error) { _popModal.Alert('알림', error); });
                    }
                }
                else{
                }
            });
            //상품등록일자 시작일 세팅 HJH 0825
            var today = new Date();
            if($CREATED_PROD_FROM == "" || $CREATED_PROD_FROM == null){
                //시작일 디폴트 세팅
                var startDate = new Date(today);
                startDate.setDate(startDate.getDate() - 7);
                var formatted_start_date = startDate.toISOString().split('T')[0];
                $('input[name="CREATED_PROD_FROM"]').val(formatted_start_date);
            }
            else{
                //시작일 조회 후 검색조건 세팅
                $CREATED_PROD_FROM = $CREATED_PROD_FROM.replace(/(\d{4})(\d{2})(\d{2})/, "$1-$2-$3");
                $('input[name="CREATED_PROD_FROM"]').val($CREATED_PROD_FROM);
            }
            //상품등록일자 종료일 세팅 HJH 0824
            if($CREATED_PROD_TO == "" || $CREATED_PROD_TO == null){
                //종료일 디폴트 세팅
                var formatted_today = today.toISOString().split('T')[0];
                $('input[name="CREATED_PROD_TO"]').val(formatted_today);
            }
            else{
                //종료일 조회 후 검색조건 세팅
                $CREATED_PROD_TO = $CREATED_PROD_TO.replace(/(\d{4})(\d{2})(\d{2})/, "$1-$2-$3");
                $('input[name="CREATED_PROD_TO"]').val($CREATED_PROD_TO);
            }
            //상품등록일자 ui 오늘,7일 ... 등 클릭 이벤트 HJH 0824
            $(".product_date").click(function (e) {
                var Today = new Date();
                //클릭된 css적용
                $(".product_date").removeClass("active");
                $(e.currentTarget).addClass("active");
                var format_data_value = $(e.currentTarget).data('value');// today,7,15 등등
                $("#DATEUI").val(format_data_value);
                if (format_data_value == "today") {
                    //오늘 클릭 시 오늘 날짜 설정
                    var today_date = new Date(Today);
                    var format_today = today_date.toISOString().split('T')[0];
                    $('input[name="CREATED_PROD_FROM"]').val(format_today);
                }
                else {
                    //누른 일수만큼 시작일 값 설정
                    var StartDate = new Date(Today);
                    StartDate.setDate(StartDate.getDate() - format_data_value);
                    var formattedDate = StartDate.toISOString().split('T')[0];//'YYYY-MM-DD'
                    $('input[name="CREATED_PROD_FROM"]').val(formattedDate);
                }
            });
            //전체 선택 기능
            $('#all-select').on('change', function (e) {
                allCheck(e.currentTarget);
            });
            //HJH 엑셀다운 
            $('#excel_Btn').on('click', function (e) {
                var count =$('input[name="PROD_SID_LIST"]').length; 
                if(count > 0){
                    $('#flag').val('excel');
                    $('#form1').submit();
                }
                else{
                    _popModal.Alert('알림', '리스트에 하나 이상의 상품이 있어야 다운로드 가능합니다');
                }
            });
            
            //카테고리
            //수정 2023 08 08 KSM
            $(".catagory_button").click(function (e) {
                openPopPromise(e.currentTarget, 1).then((data) => {
                    let usedSid = String(data.CODE_SID);
                let _bools = true;
                $('.product-category-show-block').find('.product-category-wraper').each(function (index, item) {
                    if (($(item).data('targetsid') + '') == usedSid) {
                        _bools = false;
                    }
                });
                if (_bools == false) {
                    _popModal.Alert('알림', '이미 추가된 카테고리입니다.');
                    return;
                }
                let _template = `<div class="product-category-wraper" data-targetsid="{SID}">
                                    <div class="lower-font category-name">{NAME}</div>
                                    <div class="lowerst-font xbtnx-cate" data-targetdel="{SID}">
                                        <span class="material-icons lowerst-font">close</span>
                                    </div>
                                    <input type="hidden" name="CATEGORY_SID" value="{SID}" />
                                    <input type="hidden" name="CATEGORY_NAME" value="{NAME}" />
                                </div>`;
                _template = _template.replace(/{SID}/g, data.CODE_SID);
                _template = _template.replace(/{NAME}/g, data.CODE_NAME);
                let _appendTemp = $(_template);
                _appendTemp.find('.xbtnx-cate').on('click', function (e) {
                    delCategory(e.currentTarget);
                })

                $('.product-category-show-block').append(_appendTemp);
            }).catch((err) => {
                console.log(err);
        });
        });
        //카테고리 최초 바인딩
        $('.xbtnx-cate').on('click', function (e) {
            delCategory(e.currentTarget);
        });
        if($search_flag == "Y"){
            hideProgress();
        }
        if($change_flag == "Y"){
            hideProgress();
            _popModal.Alert('알림', '전시상태가 변경되었습니다.');
        }

        });
        
        $(document).ready(function() {
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
        <input type="text" name="DATEUI" id="DATEUI" value="<%=DATEUI%>" />
        <input type="text" name="CHANGE_SID_LIST" id="CHANGE_SID_LIST" value="" />
        <input type="text" name="CHANGE_VALUE" id="CHANGE_VALUE" value="" />
        <input type="text" name="custom_Paging" id="custom_Paging" value="" />
    </div>
    <div id="wrap">
        <%--상품 조회/수정 최상단 아이콘--%>
        <div class="sub-warp">
            <div class="check_top">
                <div class="check_top_wrap">
                    <div class="check_top_wrap_inner">
                        <div class="top_icon">
                            <div class="icon">
                                <span class="material-icons">apps</span>
                            </div>
                            <div class="icon_txt">
                                <div class="icon_txt_wrap">
                                    <div class="icon_txt_wrap_top">
                                        <span class="icon_title_font">전체</span>
                                    </div>
                                    <div class="icon_txt_wrap_bottom">
                                        <span class="icon_title_big_font"><%=ALL_COUNT %></span>
                                        <span class="lowerst-font">건</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="top_icon">
                            <div class="icon">
                                <span class="material-icons">shopping_cart</span>
                            </div>
                            <div class="icon_txt">
                                <div class="icon_txt_wrap">
                                    <div class="icon_txt_wrap_top">
                                        <span class="icon_title_font">전시중</span>
                                    </div>
                                    <div class="icon_txt_wrap_bottom">
                                        <span class="icon_title_big_font"><%=VIEW_COUNT %></span>
                                        <span class="lowerst-font">건</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="top_icon">
                            <div class="icon">
                                <span class="material-icons">cancel</span>
                            </div>
                            <div class="icon_txt">
                                <div class="icon_txt_wrap">
                                    <div class="icon_txt_wrap_top">
                                        <span class="icon_title_font">전시중지</span>
                                    </div>
                                    <div class="icon_txt_wrap_bottom">
                                        <span class="icon_title_big_font"><%=NOVIEW_COUNT %></span>
                                        <span class="lowerst-font">건</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--상품조회--%>
        <div class="sub-warp">
            <div class="title">
                <span>상품조회</span>
            </div>
            <div class="content">
                <div class="content_wrap">
                    <div class="content_wrap_inner">
                        <%--상품명, 상품코드--%>
                        <div class="content_wrap_inner_one">
                            <%--상품명--%>
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>상품명</span>
                                </div>
                                <div class="contentArea_input">
                                    <input class="lowerst-font" type="text" name="PRODUCT_NM" value="<%=PRODUCT_NM%>" placeholder="입력해 주세요." />
                                </div>
                            </div>
                            <%--상품코드--%>
                            <div class="contentArea">
                                <div class="contentArea_title lowerst-font">
                                    <span>상품코드</span>
                                </div>
                                <div class="contentArea_input">
                                    <input class="lowerst-font" type="text" name="PRODUCT_CD" value="<%=PRODUCT_CD%>" placeholder="입력해 주세요." />
                                </div>
                            </div>
                        </div>

                        <%--전시상태, 상품등록일자--%>
                        <div class="content_wrap_inner_two">
                            <%--전시상태--%>
                            <div class="contentArea padding-bottom">
                                <div class="contentArea_title lowerst-font">
                                    <span>전시상태</span>
                                </div>
                                <div class="contentArea_check">
                                    <div class="category">
                                        <label class="drkid-radio">
                                            <input type="radio" name="VIEW_FLAG" value="*" checked="checked" <%=VIEW_FLAG == "*" || VIEW_FLAG == "" ? "checked=\"checked\"" : "" %> />
                                            <span class="radio-txt lowerst-font">전체</span>
                                        </label>
                                    </div>
                                    <div class="category">
                                        <label class="drkid-radio">
                                            <input type="radio" name="VIEW_FLAG" value="Y" <%=VIEW_FLAG == "Y" ? "checked=\"checked\"" : "" %> />
                                            <span class="radio-txt lowerst-font">전시중</span>
                                        </label>
                                    </div>
                                    <div class="category">
                                        <label class="drkid-radio">
                                            <input type="radio" name="VIEW_FLAG" value="N" <%=VIEW_FLAG == "N" ? "checked=\"checked\"" : "" %> />
                                            <span class="radio-txt lowerst-font">전시중지</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <%--상품등록일자--%>
                            <div class="contentArea">
                                <div class="contentArea_title lowerst-font">
                                    <span>상품등록일자</span>
                                </div>

                                <%--상품등록일자 일자 및 캘린더--%>
                                <div class="product_date_all_list">
                                    <%--상품등록일자 -> 일자--%>
                                    <div class="product_date_list">
                                        <div class="product_date lowerst-font <%= DATEUI == "today" ? "active" : "" %>" data-value="today">
                                            <span>오늘</span>
                                        </div>
                                        <div class="product_date lowerst-font <%= DATEUI == "7" ? "active" : "" %>" data-value="7">
                                            <span>7일</span>
                                        </div>
                                        <div class="product_date lowerst-font <%= DATEUI == "15" ? "active" : "" %>" data-value="15">
                                            <span>15일</span>
                                        </div>
                                        <div class="product_date lowerst-font <%= DATEUI == "30" ? "active" : "" %>" data-value="30">
                                            <span>1개월</span>
                                        </div>
                                        <div class="product_date lowerst-font <%= DATEUI == "90" ? "active" : "" %>" data-value="90">
                                            <span>3개월</span>
                                        </div>
                                        <div class="product_date lowerst-font <%= DATEUI == "365" ? "active" : "" %>" data-value="365">
                                            <span>1년</span>
                                        </div>
                                    </div>
                                    <%--상품등록일자 -> 캘린더--%>
                                    <div class="date_picker">
                                        <div class="datePicker lower-font" style="width: 250px;">
                                            <input type="text" class="datePicker-input" placeholder="PlaceHolder입니다." data-picker-count="2" name="CREATED_PROD_FROM" />
                                            <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                        </div>

                                        <div class="date_picker_center">
                                            <span>~</span>
                                        </div>

                                        <div class="datePicker lower-font" style="width: 250px;">
                                            <input type="text" class="datePicker-input" placeholder="PlaceHolder입니다." data-picker-count="2" name="CREATED_PROD_TO" />
                                            <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--상품 카테고리--%>
                        <div class="content_wrap_inner_two">
                            <%--카테고리--%>
                            <div class="contentArea">
                                <div class="contentArea_title lowerst-font">
                                    <span>카테고리</span>
                                </div>
                                <div class="product-category-show-block">
                                    <%if (CATEGORY_SID != null)
                                      {%>
                                    <%for (int i = 0; i < CATEGORY_SID.Length; i++)
                                      {%>
                                    <div class="product-category-wraper" data-targetsid="<%=CATEGORY_SID[i]%>">
                                        <div class="lower-font category-name"><%=CATEGORY_NAME_ARRY[i]%></div>
                                        <div class="lowerst-font xbtnx-cate" data-targetdel="<%=CATEGORY_SID[i]%>">
                                            <span class="material-icons lowerst-font">close</span>
                                        </div>
                                        <input type="hidden" name="CATEGORY_SID" value="<%=CATEGORY_SID[i]%>" />
                                        <input type="hidden" name="CATEGORY_NAME" value="<%=CATEGORY_NAME_ARRY[i]%>" />
                                    </div>
                                    <%}%>
                                    <%}%>
                                </div>
                                <div class="category_button">
                                    <div class="drkid-btn-sub2 drkid-btn-active catagory_button" data-class-code="PRODUCT_CATEGORY" data-title="카테고리 선택" data-search-target-id="CATEGORY" data-target="COMMON_POPUP_1">
                                        <span class="lowerst-font">카테고리 선택</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--정기배송--%>
                        <div class="content_wrap_inner_three">
                            <%--정기배송--%>
                            <div class="contentArea">
                                <div class="contentArea_title lowerst-font">
                                    <span>정기배송</span>
                                </div>
                                <div class="content_radio">
                                    <div class="radio_all_list">
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="AUTO_FLAG" value="*" <%=AUTO_FLAG == "*" || AUTO_FLAG == "" ? "checked=\"checked\"" : "" %> />
                                                <span class="lowerst-font">전체</span>
                                            </label>
                                        </div>
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="AUTO_FLAG" value="Y" <%=AUTO_FLAG == "Y" ? "checked=\"checked\"" : "" %> />
                                                <span class="lowerst-font">정기배송 유</span>
                                            </label>
                                        </div>
                                        <div class="radio_list">
                                            <label class="drkid-radio">
                                                <input type="radio" name="AUTO_FLAG" value="N" <%=AUTO_FLAG == "N" ? "checked=\"checked\"" : "" %> />
                                                <span class="lowerst-font">정기배송 무</span>
                                            </label>
                                        </div>
                                    </div>
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

        <%--상품목록--%>
        <div class="sub-warp">
            <%--상품목록 타이틀--%>
            <div class="title">
                <div class="titl2">
                    <div class="titl2_wrap title_font">
                        <span>상품목록</span>
                    </div>
                    <div class="titl2_wrap lowerst-font mono_sub_color">
                        <span>전체 <%=totalCount%>개</span>
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
                                        <div class="drkid-divider"></div>
                                        <div class="content2_button_select">
                                            <select class="drkid-select lowerst-font" id="status_Change" style="width: 200px;" data-font-class="lower-font">
                                                <option value="">[전시변경]</option>
                                                <option value="Y">전시</option>
                                                <option value="N">전시안함</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="right_Btns">
                                        <div class="drkid-btn drkid-btn-active" id="excel_Btn">
                                            <span class="lowerst-font">엑셀다운</span>
                                        </div>
                                        <div class="back_button">
                                            <div class="drkid-btn drkid-btn-active" id="new-btn">
                                                <span class="lowerst-font">신규</span>
                                            </div>
                                        </div>
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
                                    <col style="width: 8%;" />
                                    <col style="width: 4%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 15%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 7%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 6%;" />
                                    <col style="width: 6%;" />
                                    <col style="width: 10%;" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="lower-font">
                                            <label class="drkid-checkbox">
                                                <input type="checkbox" name="all-select" id="all-select" value="Y" />
                                                <span class="fake-check-box"></span>
                                            </label>
                                        </th>
                                        <th class="lowerst-font">수정</th>
                                        <th class="lowerst-font">No.</th>
                                        <th class="lowerst-font">상품코드</th>
                                        <th class="lowerst-font">상품명</th>
                                        <th class="lowerst-font">연결제품</th>
                                        <th class="lowerst-font">전시상태</th>
                                        <th class="lowerst-font">상품가</th>
                                        <th class="lowerst-font">판매가</th>
                                        <th class="lowerst-font">PV</th>
                                        <th class="lowerst-font">BV</th>
                                        <th class="lowerst-font">배송비</th>
                                        <th class="lowerst-font">정기배송</th>
                                        <th class="lowerst-font">옵션</th>
                                        <th class="lowerst-font">할인</th>
                                    </tr>
                                </thead>

                                <tbody class="prod_Tbody">
                                    <% if (PROD_TABLE != null)
                                       { %>
                                        <%for (int i = 0; i < PROD_TABLE.Rows.Count; i++)
                                          { %>
                                            
                                            <input type="hidden" name="PROD_SID_LIST" value="<%=PROD_TABLE.Rows[i]["PRODUCT_SID"]%>" />
                                            <tr>
                                                <td class="lowerst-font">
                                                    <label class="drkid-checkbox">
                                                        <input type="checkbox" name="PROD_LIST_CHECKBOX" value="<%=PROD_TABLE.Rows[i]["PRODUCT_SID"]%>" />
                                                        <span class="fake-check-box"></span>
                                                    </label>
                                                </td>
                                                <td class="lower-font">
                                                    <div class="drkid-btn-active edit_Btn" id="<%=PROD_TABLE.Rows[i]["PRODUCT_SID"]%>">수정</div>
                                                </td>
                                                <td>
                                                    <div class="lowerst-font"><%=totalCount - offset - i %></div>
                                                </td>
                                                <td>
                                                    <div class="lowerst-font"><%=PROD_TABLE.Rows[i]["PRODUCT_CD"]%></div>
                                                </td>
                                                <td>
                                                    <div class="product">
                                                        <div class="product_img">
                                                            <%if (!string.IsNullOrEmpty(Convert.ToString(PROD_TABLE.Rows[i]["MAIN_IMAGE_PATH"])))
                                                              { %>
                                                            <img class='prodImg_List' src='<%=ConfigurationManager.AppSettings["EDMS_VIEW"] %><%=PROD_TABLE.Rows[i]["MAIN_IMAGE_PATH"] %>' />
                                                            <%}%>
                                                            <%else
                                                              {%>
                                                            <img src="/Source/image/no_img.svg" class="no_img" />
                                                            <%}%>
                                                        </div>
                                                        <div class="product_img_txt">
                                                            <span class="lowerst-font"><%=PROD_TABLE.Rows[i]["GROUP_CATEGORY_NAME"]%></span><br />
                                                            <span><%=PROD_TABLE.Rows[i]["PRODUCT_NM"]%></span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td> 
                                                    <div class="lowerst-font"><%=PROD_TABLE.Rows[i]["RELATION_PROD_NM"]%></div>
                                                </td>
                                                <td>
                                                    <div class="lowerst-font"><%=PROD_TABLE.Rows[i]["VIEW_FLAG"].ToString() == "Y" ? "전시중" : "전시중단" %></div>
                                                </td>
                                                <td>
                                                    <div class="lowerst-font"><%=PROD_TABLE.Rows[i]["SALE_RATE"]%></div>
                                                </td>
                                                <td>
                                                    <div class="lowerst-font"><%=PROD_TABLE.Rows[i]["VIEW_SALE_RATE"]%></div>
                                                </td>
                                                <td>
                                                    <div class="lowerst-font"><%=PROD_TABLE.Rows[i]["PV_RATE"]%></div>
                                                </td>
                                                <td>
                                                    <div class="lowerst-font"><%=PROD_TABLE.Rows[i]["BV_RATE"]%></div>
                                                </td>
                                                <%--배송비--%>
                                                <td>
                                                    <div class="lowerst-font">
                                                            <% if (PROD_TABLE.Rows[i]["DELIVERY_CD"].ToString() == "FREE")
                                                           {%>
                                                                무료
                                                            <%}
                                                            else if (PROD_TABLE.Rows[i]["DELIVERY_CD"].ToString() == "HFREE")
                                                            {%>
                                                                조건부 무료
                                                            <%}
                                                            else if (PROD_TABLE.Rows[i]["DELIVERY_CD"].ToString() == "COST")
                                                            {%>
                                                                유료
                                                            <%}%>
                                                    </div>
                                                </td>
                                                <%--정기배송 유무--%>
                                                <td>
                                                    <div class="lowerst-font"><%=PROD_TABLE.Rows[i]["AUTO_FLAG"]%></div>
                                                </td>
                                                <%--옵션 유무--%>
                                                <td>
                                                    <div class="lowerst-font"><%=PROD_TABLE.Rows[i]["OPTION_USED_FLAG"]%></div>
                                                </td>
                                                <%--할인--%>
                                                <td>
                                                    <%if (PROD_TABLE.Rows[i]["REBUY_FLAG"].ToString() == "Y")
                                                      { %>
                                                    <div class="lowerst-font">재구매할인</div>
                                                    <%}%>
                                                    <%if (PROD_TABLE.Rows[i]["USER_SALE_FLAG"].ToString() == "Y")
                                                      { %>
                                                    <div class="lowerst-font">회원할인</div>
                                                    <%}%> 
                                                    
                                                </td>
                                            </tr>
                                        <%}%>
                                    <%}%>
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
    </div>
</asp:Content>
