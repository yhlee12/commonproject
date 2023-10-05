<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Refund.aspx.cs" Inherits="drKid.Source.client.payment.Refund" %>
<!DOCTYPE html>

<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>INIS 전체취소</title>

    <style type="text/css">
        body {
            background-color: #efefef;
        }

        body, tr, td {
            font-size: 9pt;
            font-family: 굴림,verdana;
            color: #433F37;
            line-height: 19px;
        }

        table, img {
            border: none;
        }

        .RefundBtn {
            background-color: aqua;
            border: 1px solid;
            width: 50%;
            margin-top: 20px;
            cursor: pointer;
            text-align: center;
        }
        .PartialRefundBtn {
            background-color: aqua;
            border: 1px solid;
            width: 50%;
            margin-top: 20px;
            cursor: pointer;
            text-align: center;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   
    <script src="/Source/client/js/gsap.min.js"></script>
    <script src="/Source/client/js/jquery.serialscrolling.min.js"></script>
    <script src="/Source/client/js/ScrollTrigger.min.js"></script>
    <script src="/js/common.js"></script>
    <script src="/Source/client/js/main_option.js"></script>
    <!-- Lazy 관련 Set Up -->
    <script src="/js/lazyload.js"></script>
    <link rel="stylesheet" href="/Source/client/css/lazyCss.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".RefundBtn").on("click", function () {
                //var form = $("#form1");
                //console.log(form);
                //form.attr('method', 'post'); //get,post 가능
                //form.attr('target', '_self');
                //form.attr('action', "https://iniapi.inicis.com/api/v1/refund"); //보내는 url
                $("#type").val("Refund");
                $("#form1").submit();
            })
            $(".PartialRefundBtn").on("click", function () {
                //var form = $("#form1");
                //console.log(form);
                //form.attr('method', 'post'); //get,post 가능
                //form.attr('target', '_self');
                //form.attr('action', "https://iniapi.inicis.com/api/v1/refund"); //보내는 url
                $("#type").val("PartialRefund");
                $("#form1").submit();
            })
        })
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 10px; background-color: #f3f3f3; width: 100%; font-size: 13px; color: #ffffff; background-color: #000000; text-align: center">
            이니시스 전체 쉬소 요청 샘플
        </div>
        <table width="650" cellspacing="0" cellpadding="0" border="0" align="center">
            <tr>
                <td style="padding: 10px; background-color: #6095BC; text-align: center;" align="center">
                    <table style="background-color: White">
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <div style="border: 2px #dddddd double; padding: 10px; background-color: #f3f3f3; text-align: left">
                                                <br />
                                                
                                                <label for="paytype">common/bill</label>
                                                <br />
                                                <input type="text" name="paytype" id="paytype" value="" />
                                                <br />
                                                <%--전체 취소 요청서비스값은 "Refund" 고정임--%>
                                                <label for="">요청서비스</label>
                                                <br />
                                                <input type="text" name="type" id="type" value="" placeholder="자동입력"/>
                                                <br />
                                                <label for="">지불수단 코드</label>
                                                <br />
                                                <input type="text" name="paymethod" id="paymethod" value="" />
                                                <br />
                                                <label for="">전문생성시간 [YYYYMMDDhhmmss]</label>
                                                <br />
                                                <input type="text" name="timestamp" id="timestamp" value="" />
                                                <br />
                                                <label for="">가맹점 요청 서버IP (추후 거래 확인 등에 사용됨)</label>
                                                <br />
                                                <input type="text" name="clientIp" id="clientIp" value="localhost:18848" />
                                                <br />
                                                <label for="">상점아이디</label>
                                                <br />
                                                <input type="text" name="mid" id="mid" value="" placeholder="자동입력" />
                                                <br />
                                                <label for="">취소요청할 승인TID</label>
                                                <br />
                                                <input type="text" name="tid" id="tid" value="" />
                                                <br />
                                                <label for="">취소요청 사유</label>
                                                <br />
                                                <input type="text" name="msg" id="msg" value="" />
                                                <br />
                                                <%--<label for="">SHA512 HASH 한 값</label>
                                                <br />
                                                <input type="text" name="hashData" id="hashData" value="" />--%>
                                                <br />
                                                <div class="RefundBtn">취소버튼</div>
                                                <div class="PartialRefundBtn">부분취소(반품)</div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>