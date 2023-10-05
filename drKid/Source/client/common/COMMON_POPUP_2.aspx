﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="COMMON_POPUP_2.aspx.cs" Inherits="drKid.Source.client.common.COMMON_POPUP_2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Security-Policy" content="default-src * 'self' 'unsafe-inline' 'unsafe-eval' data: content:"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, viewport-fit=cover"/>
    <meta name="theme-color" content="#fff"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="msapplication-tap-highlight" content="no"/>
    <title>DrKid::원인터네셔널 아이프레임 팝업</title>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <!-- datePicker -->
    <!-- custom이 적용되기 위해서는 Datepicker를 먼저 적용 후 default css를 적용 -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css"/>
    <link rel="stylesheet" href="/Source/css/default.css"/>
    <link rel="stylesheet" href="/Source/css/root.css"/>
    <link rel="stylesheet" href="/Source/css/font.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined" />
    <link rel="stylesheet" href="/Source/client/css/main.css"/>
    <%-- 팝업을 사용하기 위한 셋업으로, 만약 COMMON_POPUP이 다른 형태가 필요할경우 COMMON_POPUP_2...이런식으로 만들어서 처리 필요. --%>
    <style>
        body, html{
            width:100%;
            min-width:initial;
        }
        #pop-wraper{
            width:100%;
        }
        .line{
            border-bottom: 1px solid #828282;
            height: 10px;
        }
        .non-line{
            height: 10px;
        }
        .search-wraper-div{
            border:1px solid var(--mono_line);
            padding:20px;
            position:relative;
            width:100%;
        }
        .search-wraper-div > .drkid-input{
            width:100%;
            padding-right:45px;
            height:40px;
        }
        .search-wraper-div > .search-icon{
            width:30px;
            height:30px;
            margin-top:5px;
            position:absolute;
            top:50%;
            right:30px;
            transform:translate(0,-50%);
            z-index:1;
            cursor:pointer;
        }
        .search-wraper-div > .search-icon:after{
            color:var(--mono_line);
        }
        .search-complate-wraper{
            margin-top:30px;
            width:100%;
            border:1px solid var(--mono_line);
            padding:10px;
        }
        .search-count{
            color:var(--main_color);
        }
        .search-count-wraper{
            padding:12px 0;
            font-weight:500;
        }
        .center-field{
            justify-content:center;
            padding:20px 0;
            margin:0;
        }
    </style>
    <script>
        var $result_code = `<%=cp_ret_status%>`;
        var $result_message = `<%=cp_ret_message%>`;
        document.addEventListener('DOMContentLoaded', function () {
            if ($result_code == `Y`) {
                parent._popModal.Alert('알림', $result_message);
                $result_code = '';
                $result_message = '';
            }
        });

        $(function () {
            //적용 버튼을 선택시
            $('#complate-pop').on('click', function () {
                sendMessageToParent();
            });
            //검색 버튼 클릭시
            $('#search-flag').on('click', function () {
                $('#flag').val('search');
                $('#form1').submit();
            });
            //전체 선택 기능
            $('#all-select-big').on('change', function (e) {
                allCheck(e.currentTarget);
            });
        });

        //체크버튼 체크된 row들  json값 넘겨줌. 
        function sendMessageToParent() {
            let _checkData = $('input:checkbox[name="checkbox"]:checked');
            if (_checkData.length == 0) {
                parent._popModal.Alert('알림', "하나이상을 선택해주세요.");
                return;
            }

            let dataArray = [];
            let masterProductSid = "";
            let falseflag = 0;

            _checkData.each(function (index, item) {
                let JsonData = $(item).data('json');
                dataArray.push({ JsonData });
            });

            console.log(dataArray);
            window.parent.postMessage(dataArray, '*');
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
        //금액 천의자리 콤마
        function formatPay(input) {
            var Number = input.replace(/[^0-9%]/g, ''); // 숫자 이외의 문자 제거
            var formattedNumber = '';
            formattedNumber = Number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            console.log(formattedNumber); 
            return formattedNumber;
        }
        //// 가격 천단위 콤마(,)표시
        //var sale_rate = formatPay(data[i].JsonData.VIEW_SALE_RATE.toString())
        //html = html.replace(/{VIEW_SALE_RATE}/g, sale_rate);
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <input type="hidden" name="flag" value="" id="flag" />
        <input type="hidden" name="CLASS_CODE" value="<%=CLASS_CODE %>" />
        <input type="hidden" name="PARAM1" value="<%=PARAM1 %>" />
        <input type="hidden" name="PARAM2" value="<%=PARAM2 %>" />
        <div id="pop-wraper">
            <div class="search-order-wraper">
                <div class="search-wraper-div">
                    <input type="text" class="drkid-input lower-font" name="SEARCH_TEXT" value="<%=SEARCH_TEXT %>" placeholder="상품명 또는 상품번호로 검색해주세요." />
                    <span class="drkid-icon search-icon" id="search-flag"></span>
                </div>
            </div>
            <div class="search-complate-wraper">
                <div class="search-count-wraper">
                    <span class="big-font">검색결과 </span><span class="search-count big-font"><%=TOTAL_CNT %></span><span class="big-font"> 건</span>
                </div>
                <div class="table-wraper">
                    <table class="table-common">
                        <colgroup>
                            <col style="width:40px;"/>
                            <col style="width:40px;"/>
                            <col style="width:40px;"/>
                            <col style="width:40px;"/>
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="lower-font">
                                    <label class="drkid-checkbox">
                                        <input type="checkbox" value="Y" id="all-select-big" />
                                        <span class="fake-check-box"></span>
                                    </label>
                                </th>
                                <th class="lower-font"></th>
                                <th class="lower-font">상품명</th>
                                <th class="lower-font">상품가</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for(int i = 0; i < listTable.Rows.Count;i++){ %>
                            <%if (listTable.Rows[i]["PRODUCT_TYPE"].ToString() == "MASTER") {%>
                            <tr class="line"></tr>
                            <tr class="non-line"></tr>
                            <% master_sid_check = listTable.Rows[i]["PRODUCT_SID"].ToString(); %>
                            <%} %>
                            
                            <tr>
                                <%--옵션 유무--%>
                                <%if (listTable.Rows[i]["OPTION_USED_FLAG"].ToString() == "Y" )
                                  {%>
                                 <%if (master_sid_check == listTable.Rows[i]["PARENT_SID"].ToString() || listTable.Rows[i]["PARENT_SID"].ToString() == "0")
                                  {%>
                                    
                                    <%if (listTable.Rows[i]["PRODUCT_TYPE"].ToString() == "OPTION") {%>
                                        <td class="lowerst-font">옵션<%=listTable.Rows[i]["OPTION_SEQ"] %></td>
                                    <%} %>
                                    
                                    <%--체크박스--%>
                                    <td class="lower-font">
                                        <label class="drkid-checkbox">
                                            <input type="checkbox" id="<%=i %>" value="<%=listTable.Rows[i]["PRODUCT_SID"] %>" name="checkbox" 
                                                data-json='{
                                                "PRODUCT_CD":"<%=listTable.Rows[i]["PRODUCT_CD"] %>",
                                                "PRODUCT_NM":"<%=listTable.Rows[i]["PRODUCT_NM"] %>",
                                                "PRODUCT_SID":"<%=listTable.Rows[i]["PRODUCT_SID"] %>"
                                                <%for(int j = 0; j < listTable.Columns.Count;j++){ %>
                                                    <%if (listTable.Columns[j].ToString() == "PRODUCT_CD" && listTable.Columns[j].ToString() == "PRODUCT_NM" && listTable.Columns[j].ToString() == "PRODUCT_SID") { continue; }%>
                                                    ,"<%=listTable.Columns[j].ToString() %>" : "<%=listTable.Rows[i][listTable.Columns[j].ToString()] %>"
                                                <%} %>
                                                }'/>
                                            <span class="fake-check-box"></span>
                                        </label>
                                    </td>
                                    <%if (listTable.Rows[i]["PRODUCT_TYPE"].ToString() == "MASTER") {%>
                                        <td class="lowerst-font"></td>
                                    <%} %>
                                    <%--상품명--%>
                                    <td class="lowerst-font"><%=listTable.Rows[i]["PRODUCT_NM"] %></td>

                                    <%--판매가 사용 유무--%>
                                    <%if (listTable.Rows[i]["VIEW_SALE_FLAG"].ToString() == "Y") {%>
                                        <%--판매가--%>
                                        <td class="lowerst-font"><%=listTable.Rows[i]["VIEW_SALE_RATE"] %></td>
                                    <%} %>
                                    <%if (listTable.Rows[i]["VIEW_SALE_FLAG"].ToString() == "N") {%>
                                        <%--상품가--%>
                                        <td class="lowerst-font"><%=listTable.Rows[i]["SALE_RATE"] %></td>
                                    <%} %>
                                <%} %>
                                <%} %>
                                <%--옵션 플레그가 N면 상품타입 MASTER만 보여줌--%>
                                <%if (listTable.Rows[i]["OPTION_USED_FLAG"].ToString() == "N") {%>
                                    <%--체크박스--%>
                                    <td class="lower-font">
                                        <label class="drkid-checkbox">
                                            <input type="checkbox" id="<%=i %>" value="<%=listTable.Rows[i]["PRODUCT_SID"] %>" name="checkbox" data-json='{
                                                "PRODUCT_CD":"<%=listTable.Rows[i]["PRODUCT_CD"] %>",
                                                "PRODUCT_NM":"<%=listTable.Rows[i]["PRODUCT_NM"] %>",
                                                "PRODUCT_SID":"<%=listTable.Rows[i]["PRODUCT_SID"] %>"
                                                <%for(int j = 0; j < listTable.Columns.Count;j++){ %>
                                                    <%if (listTable.Columns[j].ToString() == "PRODUCT_CD" && listTable.Columns[j].ToString() == "PRODUCT_NM" && listTable.Columns[j].ToString() == "PRODUCT_SID") { continue; }%>
                                                    ,"<%=listTable.Columns[j].ToString() %>" : "<%=listTable.Rows[i][listTable.Columns[j].ToString()] %>"
                                                <%} %>
                                                }'/>
                                            <span class="fake-check-box"></span>
                                        </label>
                                    </td>
                                    <%if (listTable.Rows[i]["PRODUCT_TYPE"].ToString() == "MASTER") {%>
                                        <td class="lowerst-font"></td>
                                    <%} %>
                                    <%--상품명--%>
                                    <td class="lowerst-font"><%=listTable.Rows[i]["PRODUCT_NM"] %></td>

                                    <%--판매가 사용 유무--%>
                                    <%if (listTable.Rows[i]["VIEW_SALE_FLAG"].ToString() == "Y") {%>
                                        <%--판매가--%>
                                        <td class="lowerst-font"><%=listTable.Rows[i]["VIEW_SALE_RATE"] %></td>
                                    <%} %>
                                    <%if (listTable.Rows[i]["VIEW_SALE_FLAG"].ToString() == "N") {%>
                                        <%--상품가--%>
                                        <td class="lowerst-font"><%=listTable.Rows[i]["SALE_RATE"] %></td>
                                    <%} %>
                                <%} %>
                            </tr>
                            
                            <%} %>
                        </tbody>
                    </table>
                </div>
                <div class="btn-field clears center-field">
                    <div class="flex-center-child">
                        <div class="drkid-btn search-btn drkid-btn-active" id="complate-pop">
                            <span class="lower-font">적용</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
