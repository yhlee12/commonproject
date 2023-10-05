<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="COMMON_POPUP_3.aspx.cs" Inherits="drKidAdmin.Source.admin.common.COMMON_POPUP_3" %>
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
        
    </script>
</head>
    <%--팝업 불러오는 jquery--%>
    <%--$('#find-pop').on('click', function (e) {
            openPopPromise(e.currentTarget, 1).then((data) => {
                //data object
                console.log(data);
                //$('#I_USER_NAME').val(data.CODE_NAME);
                //$('#I_USER_ID').val(data.CODE_CODE);
                //$('#I_USER_SID').val(data.CODE_SID);
                //$('#I_USER_TYPE').val(data.USER_TYPE);
                ////팝업 유저 적용
                //$(".user-tr").removeClass("click_tr");
                //var _user_id = $("#I_USER_ID").val();
                //var _user_name = $("#I_USER_NAME").val();
                //$(".add_user_field").html('<span class="add-user-name">' + _user_id + '(' + _user_name + ')</span><span class="clear-icon drkid-icon user-close" onClick="user_close_click(event)" ></span>')
                
            }).catch((err) => {
                console.log(err);
        });
    });--%>
    <%--<div class="lowerst-font drkid-btn drkid-btn-active user-find-btn" id="find-pop" data-title="회원 검색"  data-target="COMMON_POPUP_1">
            <span class="lower-font">회원 검색</span>
        </div>--%>
<body>
    <form id="form1" runat="server">
        <%--<input type="hidden" name="flag" value="" id="flag" />
        <input type="hidden" name="CLASS_CODE" value="<%=CLASS_CODE %>" />
        <input type="hidden" name="PARAM1" value="<%=PARAM1 %>" />
        <input type="hidden" name="PARAM2" value="<%=PARAM2 %>" />--%>
        <div id="pop-wraper">
            <div class="search-order-wraper">
                <div class="search-wraper-div">
                    <input type="text" class="drkid-input lower-font" name="SEARCH_TEXT" value="<%--<%=SEARCH_TEXT %>--%>" placeholder="상품명 또는 상품번호로 검색해주세요." />
                    <span class="drkid-icon search-icon" id="search-flag"></span>
                </div>
            </div>
            <div class="search-complate-wraper">
                <div class="search-count-wraper">
                    <span class="big-font">검색결과 </span><span class="search-count big-font"><%--<%=TOTAL_CNT %>--%></span><span class="big-font"> 건</span>
                </div>
                <div class="table-wraper">
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
