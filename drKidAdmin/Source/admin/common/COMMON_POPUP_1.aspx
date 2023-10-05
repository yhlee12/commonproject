﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="COMMON_POPUP_1.aspx.cs" Inherits="drKidAdmin.Source.admin.common.COMMON_POPUP_1" %>
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
    <link rel="stylesheet" href="/Source/admin/css/web.css"/>
    <%-- 팝업을 사용하기 위한 셋업으로, 만약 COMMON_POPUP이 다른 형태가 필요할경우 COMMON_POPUP_2...이런식으로 만들어서 처리 필요. --%>
    <style>
        #pop-wraper{
            width:100%;
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
            padding:20px;
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
        .table-common > tbody tr td {
            height: 40px;
            border: 1px solid var(--mono_line);
            text-align: center;
            color: var(--mono_main);
            padding: 0 5px;
            overflow: hidden;
            text-overflow: ellipsis;
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
        });

        function sendMessageToParent() {
            let _checkData = $('input:radio[name="radio"]:checked');
            if (_checkData.length == 0) {
                parent._popModal.Alert('알림', "하나이상을 선택해주세요.");
                return;
            }
            let JsonData = _checkData.data('json');
            console.log(JsonData);
            window.parent.postMessage(JsonData, '*');
        }
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
                    <input type="text" class="drkid-input lower-font" name="SEARCH_TEXT" value="<%=SEARCH_TEXT %>" placeholder="검색어를 입력해주세요." />
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
                            <col style="width:150px;"/>
                            <col />
                        </colgroup>
                        <thead>
                            <tr>
                                <th class="lower-font">선택</th>
                                <th class="lower-font">코드</th>
                                <th class="lower-font">네임</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%for(int i = 0; i < listTable.Rows.Count;i++){ %>
                                <tr>
                                    <td class="lower-font">
                                        <label class="drkid-radio">
                                        <input type="radio" name="radio" value="" data-json='{"CODE_CODE":"<%=listTable.Rows[i]["CODE_CODE"] %>","CODE_NAME":"<%=listTable.Rows[i]["CODE_NAME"] %>","CODE_SID":"<%=listTable.Rows[i]["CODE_SID"] %>"
                                            <%for(int j = 0; j < listTable.Columns.Count;j++){ %>
                                                <%if (listTable.Columns[j].ToString() == "CODE_CODE" && listTable.Columns[j].ToString() == "CODE_NAME" && listTable.Columns[j].ToString() == "CODE_SID") { continue; }%>
                                                ,"<%=listTable.Columns[j].ToString() %>" : "<%=listTable.Rows[i][listTable.Columns[j].ToString()] %>"
                                            <%} %>
                                            }'/>
                                    </label>
                                    </td>
                                    <td class="lowerst-font"><%=listTable.Rows[i]["CODE_CODE"] %></td>
                                    <td class="lowerst-font"><%=listTable.Rows[i]["CODE_NAME"] %></td>
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
