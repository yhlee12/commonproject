﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="commonExamplePage4.aspx.cs" Inherits="drKid.Source.common.devExample.commonExamplePage4" %>
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
        //admin 페이징 js
        var totalpage = 10; // 여기에 전체 페이지 수를 넣으면됨.
        var viewpage = 5;
        document.addEventListener('DOMContentLoaded', function () {
            // 숫자 버튼 요소들에 클릭 이벤트 핸들러 등록
            $("#slot1").css("color", "var(--main_color)");
            $("#slot1").css("border", "1px solid var(--main_color)");
            $(".nowpageid").val("slot1");
            $(".nowpage").val(1);
            if (totalpage < 5) { // 전체 페이지수가 5페이지(기본 페이징수)보다 작을경우 보여지는 페이징 칸 안보이게.
                viewpage = totalpage;
                $("#slot" + (viewpage + 1)).css("display", "none");
                $("#slot" + (viewpage + 2)).css("display", "none");
                $("#slot" + (viewpage + 3)).css("display", "none");
                $("#slot" + (viewpage + 4)).css("display", "none");

                var numberButtons = document.querySelectorAll('.nvnum');
                numberButtons.forEach(function (button) {
                    button.addEventListener('click', handleClick1);
                });

                var naviButtons = document.querySelectorAll('.nvbtn');
                naviButtons.forEach(function (button) {
                    button.addEventListener('click', naviClick1);
                });
            }
            else { 
                var numberButtons = document.querySelectorAll('.nvnum');
                numberButtons.forEach(function (button) {
                    button.addEventListener('click', handleClick2);
                });

                var naviButtons = document.querySelectorAll('.nvbtn');
                naviButtons.forEach(function (button) {
                    button.addEventListener('click', naviClick2);
                });
            }
            

        });

        // totalpage 5미만
        // 숫자 버튼 클릭 이벤트 핸들러
        function handleClick1(event) {
            $(".nvnum").css("color", "var(--mono_line)");
            $(".nvnum").css("border", "1px solid var(--mono_line)");

            var id = event.target.id;
            var pagetext = event.target.textContent;
            var pagenum = Number(pagetext);
            var slotnum = Number(id.replace("slot", ""));


            $("#slot" + slotnum).css("color", "var(--main_color)");
            $("#slot" + slotnum).css("border", "1px solid var(--main_color)");
            
            console.log('ID:', id);
            console.log('Text:', pagetext);

            $(".nowpage").val(pagenum);
            $(".nowpageid").val(id);

            console.log('nowpage', $(".nowpage").val())
        }

        //네비 버튼 클릭 이벤트 핸들러
        function naviClick1(event) {
            $(".nvnum").css("color", "var(--mono_line)");
            $(".nvnum").css("border", "1px solid var(--mono_line)");
            var btnName = event.target.className;
            var nowpage = Number($(".nowpage").val());
            var id = $(".nowpageid").val();
            var slotnum = Number(id.replace("slot", ""));


            console.log("슬롯번호 : " + slotnum);
            console.log("지금페이지 : " + nowpage);
            console.log("네비" + btnName);

            //처음으로
            if (btnName.indexOf("allprev") > 0) {
                $("#slot1").css("color", "var(--main_color)");
                $("#slot1").css("border", "1px solid var(--main_color)");
                $(".nowpageid").val("slot1");
                $(".nowpage").val(1);

                $("#slot1").text(1);
                $("#slot2").text(2);
                $("#slot3").text(3);
                $("#slot4").text(4);
                $("#slot5").text(5);
            }

            //이전페이지
            if (btnName.indexOf("oneprev") > 0) {
                

                if (nowpage != 1 ) {
                    $("#slot" + (slotnum - 1)).css("color", "var(--main_color)");
                    $("#slot" + (slotnum - 1)).css("border", "1px solid var(--main_color)");

                    $(".nowpage").val((slotnum - 1));
                    $(".nowpageid").val("slot" + (slotnum - 1));
                }
                if (nowpage == 1) {
                    $("#slot1").css("color", "var(--main_color)");
                    $("#slot1").css("border", "1px solid var(--main_color)");
                    $(".nowpageid").val("slot1");
                    $(".nowpage").val(1);
                }
            }

            //다음페이지
            if (btnName.indexOf("onenext") > 0) {

                if (nowpage != totalpage) {
                    $("#slot" + (slotnum + 1)).css("color", "var(--main_color)");
                    $("#slot" + (slotnum + 1)).css("border", "1px solid var(--main_color)");

                    $(".nowpage").val((slotnum + 1));
                    $(".nowpageid").val("slot" + (slotnum + 1));
                }
                if (nowpage == totalpage) {
                    $("#slot" + totalpage).css("color", "var(--main_color)");
                    $("#slot" + totalpage).css("border", "1px solid var(--main_color)");
                    $(".nowpageid").val("slot" + totalpage);
                    $(".nowpage").val(totalpage);
                }
            }

            //마지막페이지
            if (btnName.indexOf("allnext") > 0) {
                $("#slot" + totalpage).css("color", "var(--main_color)");
                $("#slot" + totalpage).css("border", "1px solid var(--main_color)");
                $(".nowpageid").val("slot" + totalpage);
                $(".nowpage").val(totalpage);
                
            }

        }

        // totalpage 5이상
        // 숫자 버튼 클릭 이벤트 핸들러
        function handleClick2(event) {
            $(".nvnum").css("color", "var(--mono_line)");
            $(".nvnum").css("border", "1px solid var(--mono_line)");

            var id = event.target.id;
            var pagetext = event.target.textContent;
            var pagenum = Number(pagetext);
            var slotnum = Number(id.replace("slot", ""));

            if (pagenum != 1 && pagenum != 2 && pagenum != totalpage - 1 && pagenum != totalpage) {
                $("#slot3").css("color", "var(--main_color)");
                $("#slot3").css("border", "1px solid var(--main_color)");
                $("#slot1").text(pagenum-2);
                $("#slot2").text(pagenum-1);
                $("#slot3").text(pagenum);
                $("#slot4").text(pagenum+1);
                $("#slot5").text(pagenum+2);
            }
            if (pagenum == 2 ) {
                $("#slot2").css("color", "var(--main_color)");
                $("#slot2").css("border", "1px solid var(--main_color)");
                $("#slot1").text(pagenum - 1);
                $("#slot2").text(pagenum);
                $("#slot3").text(pagenum + 1);
                $("#slot4").text(pagenum + 2);
                $("#slot5").text(pagenum + 3);
            }
            if (pagenum == totalpage-1) {
                $("#slot4").css("color", "var(--main_color)");
                $("#slot4").css("border", "1px solid var(--main_color)");
                $("#slot1").text(pagenum - 3);
                $("#slot2").text(pagenum - 2);
                $("#slot3").text(pagenum - 1);
                $("#slot4").text(pagenum);
                $("#slot5").text(pagenum + 1);
            }
            if (pagenum == 1 || pagenum == totalpage) {
                $("#" + id).css("color", "var(--main_color)");
                $("#" + id).css("border", "1px solid var(--main_color)");
            }
            console.log('ID:', id);
            console.log('Text:', pagetext);

            $(".nowpage").val(pagenum);
            $(".nowpageid").val(id);

            console.log('nowpage', $(".nowpage").val())
        }

        //네비 버튼 클릭 이벤트 핸들러
        function naviClick2(event) {
            $(".nvnum").css("color", "var(--mono_line)");
            $(".nvnum").css("border", "1px solid var(--mono_line)");
            var btnName = event.target.className;
            var nowpage = Number($(".nowpage").val());
            var id = $(".nowpageid").val();
            var slotnum = Number(id.replace("slot", ""));
            

            console.log("슬롯번호 : "+slotnum);
            console.log("지금페이지 : " + nowpage);
            console.log("네비" + btnName);

            //처음으로
            if (btnName.indexOf("allprev") > 0) {
                $("#slot1").css("color", "var(--main_color)");
                $("#slot1").css("border", "1px solid var(--main_color)");
                $(".nowpageid").val("slot1");
                $(".nowpage").val(1);

                $("#slot1").text(1);
                $("#slot2").text(2);
                $("#slot3").text(3);
                $("#slot4").text(4);
                $("#slot5").text(5);
            }

            //이전페이지
            if (btnName.indexOf("oneprev") > 0) {
                if (nowpage == 1 || nowpage == 2) {
                    $("#slot1").text(1);
                    $("#slot2").text(2);
                    $("#slot3").text(3);
                    $("#slot4").text(4);
                    $("#slot5").text(5);
                    $("#slot1").css("color", "var(--main_color)");
                    $("#slot1").css("border", "1px solid var(--main_color)");
                    $(".nowpageid").val("slot1");
                    $(".nowpage").val(1);
                }
                else if (nowpage == 3) {
                    $("#slot1").text(1);
                    $("#slot2").text(2);
                    $("#slot3").text(3);
                    $("#slot4").text(4);
                    $("#slot5").text(5);
                    $("#slot2").css("color", "var(--main_color)");
                    $("#slot2").css("border", "1px solid var(--main_color)");
                    $(".nowpageid").val("slot2");
                    $(".nowpage").val(2);
                }
                else if (nowpage == totalpage) {
                    $("#slot1").text(totalpage - 4);
                    $("#slot2").text(totalpage - 3);
                    $("#slot3").text(totalpage - 2);
                    $("#slot4").text(totalpage - 1);
                    $("#slot5").text(totalpage);
                    $("#slot4").css("color", "var(--main_color)");
                    $("#slot4").css("border", "1px solid var(--main_color)");
                    $(".nowpageid").val("slot4");
                    $(".nowpage").val(nowpage - 1);
                }
                else {
                    $("#slot1").text(nowpage - 3);
                    $("#slot2").text(nowpage - 2);
                    $("#slot3").text(nowpage - 1);
                    $("#slot4").text(nowpage);
                    $("#slot5").text(nowpage + 1);
                    $("#slot3").css("color", "var(--main_color)");
                    $("#slot3").css("border", "1px solid var(--main_color)");
                    $(".nowpageid").val("slot3");
                    $(".nowpage").val(nowpage - 1);
                }
            }

            //다음페이지
            if (btnName.indexOf("onenext") > 0) {
                if (nowpage == totalpage || nowpage == totalpage-1) {
                    $("#slot1").text(totalpage-4);
                    $("#slot2").text(totalpage-3);
                    $("#slot3").text(totalpage-2);
                    $("#slot4").text(totalpage-1);
                    $("#slot5").text(totalpage);
                    $("#slot5").css("color", "var(--main_color)");
                    $("#slot5").css("border", "1px solid var(--main_color)");
                    $(".nowpageid").val("slot5");
                    $(".nowpage").val(totalpage);
                }
                else if (nowpage == totalpage - 2) {
                    $("#slot1").text(totalpage - 4);
                    $("#slot2").text(totalpage - 3);
                    $("#slot3").text(totalpage - 2);
                    $("#slot4").text(totalpage - 1);
                    $("#slot5").text(totalpage);
                    $("#slot4").css("color", "var(--main_color)");
                    $("#slot4").css("border", "1px solid var(--main_color)");
                    $(".nowpageid").val("slot4");
                    $(".nowpage").val(totalpage - 1);
                }
                else if (nowpage == 1) {
                    $("#slot1").text(1);
                    $("#slot2").text(2);
                    $("#slot3").text(3);
                    $("#slot4").text(4);
                    $("#slot5").text(5);
                    $("#slot2").css("color", "var(--main_color)");
                    $("#slot2").css("border", "1px solid var(--main_color)");
                    $(".nowpageid").val("slot2");
                    $(".nowpage").val(2);
                }
                else {
                    $("#slot1").text(nowpage - 1);
                    $("#slot2").text(nowpage);
                    $("#slot3").text(nowpage + 1);
                    $("#slot4").text(nowpage + 2);
                    $("#slot5").text(nowpage + 3);
                    $("#slot3").css("color", "var(--main_color)");
                    $("#slot3").css("border", "1px solid var(--main_color)");
                    $(".nowpageid").val("slot3");
                    $(".nowpage").val(nowpage + 1);
                }
            }

            //마지막페이지
            if (btnName.indexOf("allnext") > 0) {
                $("#slot5").css("color", "var(--main_color)");
                $("#slot5").css("border", "1px solid var(--main_color)");
                $(".nowpageid").val("slot5");
                $(".nowpage").val(totalpage);

                $("#slot1").text(totalpage-4);
                $("#slot2").text(totalpage-3);
                $("#slot3").text(totalpage-2);
                $("#slot4").text(totalpage-1);
                $("#slot5").text(totalpage);
            }
        }

        //user 쇼핑몰 페이징 js
        var shoptotalpage = 3; // 여기에 전체 페이지 수를 넣으면됨.
        document.addEventListener('DOMContentLoaded', function () {
            // 숫자 버튼 요소들에 클릭 이벤트 핸들러 등록
            $(".shopPageNum").css("color", "var(--main_color)");
            $(".shopPageNum").css("border", "1px solid var(--main_color)");
            $(".shopnowpage").val(1);

            var naviButtons = document.querySelectorAll('.shopnvbtn');
            naviButtons.forEach(function (button) {
                button.addEventListener('click', naviClick3);

            });
        });
        //네비 버튼 클릭 이벤트 핸들러
        function naviClick3(event) {
            $(".shopPageNum").css("color", "var(--main_color)");
            $(".shopPageNum").css("border", "1px solid var(--main_color)");
            var btnName = event.target.className;
            var shopnowpage = Number($(".shopnowpage").val());

            console.log("지금페이지 : " + shopnowpage);
            console.log("네비" + btnName);

            //처음으로
            if (btnName.indexOf("allprev") > 0) {
                $(".shopPageNum").text(1);
                $(".shopnowpage").val(1);
            }

            //이전페이지
            if (btnName.indexOf("oneprev") > 0) {
                if (shopnowpage == 1) {
                    $(".shopPageNum").text(1);
                    $(".shopnowpage").val(1);
                }
                else {
                    $(".shopPageNum").text(shopnowpage - 1);
                    $(".shopnowpage").val(shopnowpage - 1);
                }
            }

            //다음페이지
            if (btnName.indexOf("onenext") > 0) {
                if (shopnowpage == shoptotalpage) {
                    $(".shopPageNum").text(shoptotalpage);
                    $(".shopnowpage").val(shoptotalpage);
                }
                else {
                    $(".shopPageNum").text(shopnowpage + 1);
                    $(".shopnowpage").val(shopnowpage + 1);
                }
            }

            //마지막페이지
            if (btnName.indexOf("allnext") > 0) {
                $(".shopPageNum").text(shoptotalpage);
                $(".shopnowpage").val(shoptotalpage);
            }

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="block-example">
                <div class="middle-font underline_block_example">empty image</div>
                <%--
                    img_wrap 크기만 지정해서 쓰시면 됩니다.
                <div class="img_wrap">
                    <div class="empty-image">
                        <img src="/Source/image/no_img.svg" />
                    </div>
                </div>
                --%>
                <div class="img_wrap_80 img_wrap" style="width: 80px; height: 80px;">
                    <div class="empty-image">
                        <img src="/Source/image/no_img.svg" />
                    </div>
                </div>
                <div class="img_wrap_120 img_wrap" style="width: 120px; height: 120px;">
                    <div class="empty-image">
                        <img src="/Source/image/no_img.svg" />
                    </div>
                </div>
                <div class="img_wrap_160 img_wrap" style="width: 160px; height: 160px;">
                    <div class="empty-image">
                        <img src="/Source/image/no_img.svg" />
                    </div>
                </div>
                <div class="img_wrap_200 img_wrap" style="width: 200px; height: 200px;">
                    <div class="empty-image">
                        <img src="/Source/image/no_img.svg" />
                    </div>
                </div>
            </div>
            <div class="block-example">
                <div class="middle-font underline_block_example">empty image2</div>
                <div class="img_wrap_80 img_wrap2" style="width: 80px; height: 80px;">
                    <div class="empty-image2">
                        <span class="material-icons">error_outline</span>
                        <span class="empty-image2-txt lowerst-font">준비중입니다</span>
                    </div>
                </div>
                <div class="img_wrap_120 img_wrap2" style="width: 120px; height: 120px;">
                    <div class="empty-image2">
                        <span class="material-icons">error_outline</span>
                        <span class="empty-image2-txt lowerst-font">준비중입니다</span>
                    </div>
                </div>
                <div class="img_wrap_160 img_wrap2" style="width: 160px; height: 160px;">
                    <div class="empty-image2">
                        <span class="material-icons">error_outline</span>
                        <span class="empty-image2-txt lowerst-font">준비중입니다</span>
                    </div>
                </div>
                <div class="img_wrap_200 img_wrap2" style="width: 200px; height: 200px;">
                    <div class="empty-image2">
                        <span class="material-icons ">error_outline</span>
                        <span class="empty-image2-txt lowerst-font">준비중입니다</span>
                    </div>
                </div>

            </div>

            <div class="block-example">
                <div class="middle-font underline_block_example">page numbering > admin </div>
                <div class="number-button-wrap">
                    <div class="number-button nvbtn all_prev">
                        <span class="drkid-icon arrow-navi double-left-arrow allprev"></span>
                    </div>
                    <div class="number-button nvbtn one_prev">
                        <span class="drkid-icon arrow-navi left-arrow oneprev"></span>
                    </div>
                    <div class="number-button nvnum" id="slot1">1</div>
                    <div class="number-button nvnum" id="slot2">2</div>
                    <div class="number-button nvnum" id="slot3">3</div>
                    <div class="number-button nvnum" id="slot4">4</div>
                    <div class="number-button nvnum" id="slot5">5</div>
                    <div class="number-button nvbtn one_next">
                        <span class="drkid-icon arrow-navi right-arrow onenext"></span>
                    </div>
                    <div class="number-button nvbtn all_next">
                        <span class="drkid-icon arrow-navi double-right-arrow allnext"></span>
                    </div>
                    <input type="hidden" class="nowpage" />
                    <input type="hidden" class="nowpageid" />
                </div>
            </div>

            <div class="block-example">
                <div class="middle-font underline_block_example">page numbering > user</div>
                <div class="number-button-wrap">
                    <div class="number-button shopnvbtn all_prev">
                        <span class="drkid-icon arrow-navi double-left-arrow allprev"></span>
                    </div>
                    <div class="number-button shopnvbtn one_prev">
                        <span class="drkid-icon arrow-navi left-arrow oneprev"></span>
                    </div>
                    <div class="number-button nvnum shopPageNum">1</div>
                    <div class="number-button shopnvbtn one_next">
                        <span class="drkid-icon arrow-navi right-arrow onenext"></span>
                    </div>
                    <div class="number-button shopnvbtn all_next">
                        <span class="drkid-icon arrow-navi double-right-arrow allnext"></span>
                    </div>
                    <input type="hidden" class="shopnowpage" />
                </div>
            </div>
        </div>
            
        
    </form>
</body>
</html>
