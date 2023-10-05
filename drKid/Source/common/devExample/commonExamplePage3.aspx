<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="commonExamplePage3.aspx.cs" Inherits="drKid.Source.common.devExample.commonExamplePage3" %>
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
    <script>
        //Jquery인 $(function을 써서 jquery 추기해도됩니다.);
        document.addEventListener("DOMContentLoaded", () => {
            document.querySelector('.test1').addEventListener('click', () => {
                _popModal.Alert('타이틀','바디바디<br/>바디바디');
            });
            document.querySelector('.test2').addEventListener('click', () => {
                //커스텀을 위한 Option Setting
                //top = 위쪽 위치에서 자기자신의 크기의 반을 뺀 위치
                //left = 왼쪽 위치에서 자기자신의 크기를 반을 뺀 위치
                //titleClass / BodyClass : Title과 Body에 들어갈 Class, 기존 Class처럼 넣도록 Text 입력
                //new로 modalOption을 만든 후 처리.
                var _optionData = new modalOption();
                _optionData.top = '200px';
                _optionData.left = '550px';
                _optionData.titleClass = 'big-font testClassAdd';
                _optionData.bodyClass = 'lowerst-font testClassAdd2';
                _popModal.Alert('타이틀 타이틀', '바디바디<br/>바디바디<br/>당근당근', _optionData);
            });
            document.querySelector('.test3').addEventListener('click', () => {
                var OkCallBack = function () {
                    alert("성공!");
                }

                var esrrorCallBack = function (ex) {
                    console.log(ex);
                }

                _popModal.Promt('타이틀 Yes Or No', '바디바디<br/>바디바디 Yes OR NO', OkCallBack, esrrorCallBack);
            });
            document.querySelector('.test4').addEventListener('click', () => {
                //promt는 ok callback과 Error callBack이 반드시 필요하므로 사용.
                var OkCallBack = function () {
                    alert("성공!");
                }

                var esrrorCallBack = function (ex) {
                    console.log(ex);
                }
                //커스텀을 위한 Option Setting
                //top = 위쪽 위치에서 자기자신의 크기의 반을 뺀 위치
                //left = 왼쪽 위치에서 자기자신의 크기를 반을 뺀 위치
                //titleClass / BodyClass : Title과 Body에 들어갈 Class, 기존 Class처럼 넣도록 Text 입력
                //okbtnTitle / CancelTitle : 버튼 확인 / 취소에 들어갈 Text 설정 가능.
                //new로 modalOption을 만든 후 처리.
                var _optionData = new modalOption();
                _optionData.top = '200px';
                _optionData.left = '550px';
                _optionData.titleClass = 'big-font testClassAdd';
                _optionData.bodyClass = 'lowerst-font testClassAdd2';
                _optionData.okbtnTitle = 'OK';
                _optionData.cancelTitle = 'NO';
                _popModal.Promt('타이틀 Yes Or No', '바디바디<br/>바디바디 Yes OR NO', OkCallBack, esrrorCallBack, _optionData);
            });
        });

        
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="block-example">
            <div class="middle-font underline_block_example">fake select box GSans</div>          
            <select class="drkid-select GSans" style="width:200px;" data-font-class="lower-font" id="test">
                <option>1</option>
                <option>asdf</option>
                <option>50505050</option>
            </select>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">GSan</div>
            <div style="display:flex;align-content:flex-start;justify-content:flex-start;">
                <div class="lowerst-font GSans">12345 asdf <br />테스트</div>
                <div class="lower-font GSans">12345 asdf <br />테스트</div>
                <div class="middle-font GSans">12345 asdf <br />테스트</div>
                <div class="big-font GSans">12345 asdf <br />테스트</div>
                <div class="lowerst-font GSans" style="font-weight:500;">12345 asdf <br />테스트</div>
                <div class="lower-font GSans" style="font-weight:500;">12345 asdf <br />테스트</div>
                <div class="middle-font GSans" style="font-weight:500;">12345 asdf <br />테스트</div>
                <div class="big-font GSans" style="font-weight:500;">12345 asdf <br />테스트</div>
                <div class="lowerst-font GSans" style="font-weight:700;">12345 asdf <br />테스트</div>
                <div class="lower-font GSans" style="font-weight:700;">12345 asdf <br />테스트</div>
                <div class="middle-font GSans" style="font-weight:700;">12345 asdf <br />테스트</div>
                <div class="big-font GSans" style="font-weight:700;">12345 asdf <br />테스트</div>
            </div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">btn main</div>
            <div class="drkid-btn">
                <span class="middle-font">클릭 전</span>
            </div>
            <div class="drkid-btn drkid-btn-active">
                <span class="middle-font">클릭 후</span>
            </div>
            <div class="drkid-btn drkid-btn-active2">
                <span class="middle-font">클릭 후2</span>
            </div>
            <div class="drkid-btn disable">
                <span class="middle-font">비활성</span>
            </div>
            <div class="drkid-btn drkid-btn-active2">
                <span class="middle-font">클릭 후2<br />클릭 후2</span>
            </div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">btn sub</div>
            <div class="drkid-btn-sub">
                <span class="lower-font">클릭 전</span>
            </div>
            <div class="drkid-btn-sub drkid-btn-active">
                <span class="lower-font">클릭 후</span>
            </div>
            <div class="drkid-btn-sub drkid-btn-active2">
                <span class="lower-font">클릭 후2</span>
            </div>
            <div class="drkid-btn-sub disable">
                <span class="lower-font">비활성</span>
            </div>
            <div class="drkid-btn-sub drkid-btn-active2">
                <span class="lower-font">클릭 후2<br />클릭 후2</span>
            </div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">btn sub 2</div>
            <div class="drkid-btn-sub2">
                <span class="lowerst-font">클릭 전</span>
            </div>
            <div class="drkid-btn-sub2 drkid-btn-active">
                <span class="lowerst-font">클릭 후</span>
            </div>
            <div class="drkid-btn-sub2 drkid-btn-active2">
                <span class="lowerst-font">클릭 후2</span>
            </div>
            <div class="drkid-btn-sub2 disable">
                <span class="lowerst-font">비활성</span>
            </div>
            <div class="drkid-btn-sub2 drkid-btn-active2">
                <span class="lowerst-font">클릭 후2<br />클릭 후2</span>
            </div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">Alert</div>
            <div class="drkid-btn test1">
                <span class="middle-font">기본</span>
            </div>
            <div class="drkid-btn test2">
                <span class="middle-font">커스텀 옵션</span>
            </div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">Promt</div>
            <div class="drkid-btn test3">
                <span class="middle-font">기본</span>
            </div>
            <div class="drkid-btn test4">
                <span class="middle-font">커스텀 옵션</span>
            </div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">Date Picker</div>
            <!--
                Picker 사용법
                <div class="datePicker lower-font" style="width:250px;">
                    <input type="text" value="" class="datePicker-input" placeholder="PlaceHolder입니다." />
                    <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
                </div>
                기본적으로 위 형태를 유지하며 Style의 Width는 각자 원하는 정도로 설정하거나 Css Class 를 추가하여 Width를 정함.
                Parent와 Child의 형태는 유지하여 적용이 필요.
                Picker의 Option은 다음과 같음
                data-picker-count : 한번에 보여질 달력의 수 Default 1
                추후 추가
            -->
            <div class="datePicker lower-font" style="width:250px;">
                <input type="text" value="" class="datePicker-input" placeholder="PlaceHolder입니다." />
                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
            </div>
            <div class="datePicker lower-font" style="width:250px;">
                <input type="text" value="2023-04-05" class="datePicker-input" placeholder="PlaceHolder입니다." data-picker-count="2" />
                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
            </div>
            <div class="datePicker lower-font" style="width:250px;">
                <input type="text" value="2023-04-06" class="datePicker-input" placeholder="PlaceHolder입니다." data-picker-count="3"  />
                <div class="datePicker-icon"><span class="material-icons">event_available</span></div>
            </div>
        </div>
        <div class="block-example">
            <div class="middle-font underline_block_example">input</div>
            <input type="text" class="drkid-input lower-font" value=""  placeholder="Put in Your Search Keyword!"/>
            <input type="text" class="drkid-input lowerst-font" value=""placeholder="Put in Your Search Keyword!" />
            <input type="text" class="drkid-input lower-font input-lowheight" value="" disabled="disabled" placeholder="Put in Your Search Keyword!" />
            <input type="text" class="drkid-input lowerst-font input-lowheight" value="" disabled="disabled" placeholder="Put in Your Search Keyword!" />
        </div>
    </form>
</body>
</html>