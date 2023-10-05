<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="commonExamplePage1.aspx.cs" Inherits="drKid.Source.common.devExample.commonExamplePage1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Security-Policy" content="default-src * 'self' 'unsafe-inline' 'unsafe-eval' data: content:"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, viewport-fit=cover"/>
    <meta name="theme-color" content="#fff"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="msapplication-tap-highlight" content="no"/>
    <title>DrKid::원인터네셔널</title>
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <script src="/js/common.js"></script>
    <style>
        .underline_block_example{
            text-decoration:underline;
        }
        .block-example{
            padding:5px 15px;
            margin-bottom:10px;
            border-bottom:1px solid #eaeaea;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="block-example">
            <div class="middle-font underline_block_example">common</div>
            <div>12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">lowerst-font</div>
            <div class="lowerst-font">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">lower-font</div>
            <div class="lower-font">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">middle-font</div>
            <div class="middle-font">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">big-font</div>
            <div class="big-font">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_point_color</div>
            <div class="lower-font mono_point_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_main_color</div>
            <div class="lower-font mono_main_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_sub_color</div>
            <div class="lower-font mono_sub_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_dea_color</div>
            <div class="lower-font mono_dea_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_line_color</div>
            <div class="lower-font mono_line_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_back_color</div>
            <div class="lower-font mono_back_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">main_color</div>
            <div class="lower-font main_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_back_color</div>
            <div class="lower-font mono_back_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">sub_color</div>
            <div class="lower-font sub_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">sub_se_color</div>
            <div class="lower-font sub_se_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">drkid_postive_color</div>
            <div class="lower-font drkid_postive_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">drkid_Negative_color</div>
            <div class="lower-font drkid_Negative_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">drkid_alert_postive_color</div>
            <div class="lower-font drkid_alert_postive_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">drkid_alert_negative_color</div>
            <div class="lower-font drkid_alert_negative_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_point_bg_color</div>
            <div class="lower-font mono_point_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_main_bg_color</div>
            <div class="lower-font mono_main_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_sub_bg_color</div>
            <div class="lower-font mono_sub_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_dea_bg_color</div>
            <div class="lower-font mono_dea_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_line_bg_color</div>
            <div class="lower-font mono_line_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_back_bg_color</div>
            <div class="lower-font mono_back_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">main_bg_color</div>
            <div class="lower-font main_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">mono_back_bg_color</div>
            <div class="lower-font mono_back_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">sub_bg_color</div>
            <div class="lower-font sub_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">sub_se_bg_color</div>
            <div class="lower-font sub_se_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">drkid_postive_bg_color</div>
            <div class="lower-font drkid_postive_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">drkid_Negative_bg_color</div>
            <div class="lower-font drkid_Negative_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">drkid_alert_postive_bg_color</div>
            <div class="lower-font drkid_alert_postive_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">drkid_alert_negative_bg_color</div>
            <div class="lower-font drkid_alert_negative_bg_color">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">h1</div>
            <h1>123456asdfg김상목</h1>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">h2</div>
            <h2>123456asdfg김상목</h2>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">table</div>
            <table>
                <colgroup>
                    <col style="width:100px;"/>
                    <col style="width:100px;"/>
                </colgroup>
                <thead>
                    <tr>
                        <th class="lower-font" style="border:1px solid #eaeaea">thead in th</th>
                        <th class="lower-font" style="border:1px solid #eaeaea">12345 asdf <br />테스트</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="lower-font" style="border:1px solid #eaeaea">tbody in td</td>
                        <td class="lower-font" style="border:1px solid #eaeaea">12345 asdf <br />테스트</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">title</div>
            <div class="title">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">title_sub</div>
            <div class="title_sub">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">body</div>
            <div class="body">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">body2</div>
            <div class="body2">12345 asdf <br />테스트</div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">body3</div>
            <div class="body3">12345 asdf <br />테스트</div>
        </div>
    </form>
</body>
</html>
