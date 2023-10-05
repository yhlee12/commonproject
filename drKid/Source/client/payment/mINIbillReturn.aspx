<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mINIbillReturn.aspx.cs" Inherits="mINIbillReturn" %>

<!DOCTYPE html>

<html lang="ko">
<head>
    <%--<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>KG이니시스 결제샘플</title>
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        .bill_auth { 
            width:100px;
            height:50px;
            cursor:pointer;
            border: black 1px solid;
            display: flex;
            align-items: center;
            justify-content: center;
            background: aquamarine;
        }
    </style>
</head>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(function () {
        $(".bill_auth").on("click", function () {

            let billkey = $(".BillKey").children()[0].textContent;
            console.log(billkey);
            $.ajax({
                type: "POST"
                , url: "BillApp.aspx"
                , data: {
                    billkey: billkey
                }
                , contentType: 'application/x-www-form-urlencoded;charset=utf-8'
                , dataType: 'json'
                , success: function (response) {
                    console.log(response);
                    console.log(JSON.stringify(response));

                }
                , error: function (jqXHR, error) {

                }
            });

        });

    })

</script>
<body class="wrap">
    <%foreach (string key in Request.Params)
            { var a = Request.Params[key];
            %>키
                <%=a %><br/>
            <%} %>
        <!-- 본문 -->
        <div class="col-8 cont" id="bill-01">
            <!-- 페이지타이틀 -->
            <section class="mb-5">
                <div class="tit">
                    <h2>빌링(정기과금)</h2>
                    <p>KG이니시스 결제창을 호출하여 정기결제를 위한 billkey 발급 서비스</p>
                </div>
            </section>
            <!-- //페이지타이틀 -->


            <!-- 카드CONTENTS -->
            <section class="menu_cont mb-5">
                <div class="card">
                    <div class="card_tit">
                        <h3>모바일 빌링키발급</h3>
                    </div>
                    <!-- 유의사항 -->
                    <div class="card_desc">
                        <h4>※ 유의사항</h4>
                        <ul>
                            <li>테스트MID 결제시 실 승인되며, 당일 자정(24:00) 이전에 자동으로 취소처리 됩니다.</li>
							<li>가상계좌 채번 후 입금할 경우 자동환불되지 않사오니, 가맹점관리자 내 "입금통보테스트" 메뉴를 이용부탁드립니다.<br>(실 입금하신 경우 별도로 환불요청해주셔야 합니다.)</li>
							<li>국민카드 정책상 테스트 결제가 불가하여 오류가 발생될 수 있습니다. 국민, 카카오뱅크 외 다른 카드로 테스트결제 부탁드립니다.</li>
                        </ul>
                    </div>
                    <div class="bill_auth">
                    <div>bill승인 버튼</div>
                </div>
				<button onclick="location.href='INImobile_mo_req.asp'" class="btn_solid_pri col-6 mx-auto btn_lg" style="margin-top:50px">돌아가기</button>
					
                </div>
            </section>
			
        </div>
		
    </body>
</html>
