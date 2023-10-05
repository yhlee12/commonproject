<%@ Page Title="" Language="C#" MasterPageFile="~/Source/m/master/drkid_m.Master" AutoEventWireup="true" CodeBehind="M_PURCHASE_TEST.aspx.cs" Inherits="drKid.Source.m.my.M_PURCHASE_TEST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myPage {
           background-color:#FFFFFF;
        }

        .m_bottom {
            display:none;
        }

        .m_header {
            display:none;
        }

        #m_moblie_wrap {
            padding: 1rem 0 2rem 0;
        }

        /*마이페이지 헤더*/
        .myPageHeader {
            background-color:#fff;
            border-bottom: 1px solid var(--mono_line);
        }

        .prev_button {
            text-align: center;
            display: flex;
            justify-content: center;
        }

        .prev_button > span {
            font-size: 14px;
            font-weight: 700;
        }

        .myPage_txt {
            font-weight: bold;
        }

        .myPage_product_icon {
            text-align: center;
            display: flex;
            justify-content: center;
            /*visibility: hidden*/
        }

        .myPageHeader_top {
            display:flex;
            align-items:center;
            justify-content:space-between;
            padding: 0 15px 5px;
        }

        .purchase_wrap_inner {
            background:#F8F8F8;
        }

        .purchase_content {
            padding-bottom: 0.5rem;
        }

        .purchase_content_inner {
            padding: 0.7rem 15px;
            background:#fff;
        }

        .purchase_title {
            padding-bottom: 1rem;
        }

        .purchase_title > span {
            font-weight:500;
        }

        .purchase_product {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .purchase_img {
            width:2.5rem;
            height:2.5rem;
        }

        .purchase_txt {
            display: flex;
            /* align-items: center; */
            flex-direction: column;
            line-height: 1.4;
        }

        .purchase_txt > span:first-child {
            color:#9F9F9F;
        }

        .purchase_product_title {
            min-width:30%;
        }

        .red {
            color: red;
        }

        .star_hidden {
            visibility:hidden;
        }

        .purchase_product_input {
            width: 70%;
        }

        .purchase_product_input > input {
            width: 100%;
            border-radius:4px;
        }

        .baseline {
            align-items:baseline;
        }

        .purchase_product_option {
            width: 70%;
        }

        .purchase_product_option > .purchase_product_input {
            width: 100%;
        }

        .drkid-select {
            display:block;
            border: 1px solid var(--mono_line);
            height: 2rem;
            border-radius: 4px;
            padding-left: 0.5rem;
        }

        .input_padding_bottom {
            padding-bottom: 0.5rem
        }

        /*배송정보 버튼*/
        .purchase_top_button {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .purchase_top_button > .button {
            border: 1px solid var(--mono_line);
            padding: 0.3rem 0.9rem;
            font-weight: 500;
            border-radius: 4px;
        }


        /*버튼클릭시*/
        #purchase_one {
            padding-top:0.5rem;
        }

        /*배송정보 버튼에 따라 올라오는 컨텐츠*/
        .title_input > input {
            width: 100%;
            border-radius:4px;
        }

        .shipping_title {
            padding: 0.4rem 0;
        }

        .put_address {
            display:flex;
            align-items:center;
            justify-content: space-between;
            gap: 1rem;       
        }

        .put_address_button {
            height: 2rem;
            background:#000;
            color:#fff;
            padding:0 1rem;
            border-radius:4px;
        }

        .put_address_button > span {
            line-height: 2rem;
        }

        .put_address_title_input {
            width: 65%;
        }

        .put_address_title_input > input {
            width: 100%;
            border-radius:4px;
        }

        .input_bottom_padding {
            padding-bottom: 0.4rem;
        }

        .phone_number_wrap {
            display:flex;
            align-items:center;
            justify-content:space-between;
        }

        .number_title_input {
            width:30%;
        }

        .number_title_input > input {
            width:100%;
            border-radius:4px;
        }

        .shippingList {
            padding-bottom: 1rem;
            border-bottom: 1px solid #cacaca;
        }

        .check {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            padding: 1rem 0;
        }

        .shipping_button {
            display:flex;
            align-items:center;
            justify-content:space-between;
        }

        .shipping_button > .button {
            border: 1px solid #115c5e;
            padding: 0.3rem 2.6rem;
            min-width: 43%;
            text-align: center;
        }

        .shipping_button > .button:first-child {
            font-weight:600;
        }

        .shipping_button > .button:last-child {
            color:#fff;
        }

        .input_background {
            background: #F3F3F3;
        }

        /*배송정보 btn*/
        .purchaseBtn_wrap {
            display: grid;
            grid-template-columns: repeat(3,1fr);
            padding-top: 0.5rem;
            gap: 0.2rem;
        }

        .btnContent {
            text-align: center;
            border: 1px solid var(--mono_line);
            border-radius: 4px;
        }


        /*배송정보 라디오 버튼*/
        .normalRadio_wrap {
            display: flex;
            align-items: center;
            gap: 0.2rem;
            padding-top: 0.6rem;
        }

        /*결제 정보*/
        .price_button {
            border: 1px solid var(--main_color);
            padding: 0.2rem 1rem;
            border-radius: 4px;
            color: #fff;
            text-align: center;
            max-width: 5rem;
        }

        .price_wrap {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-bottom: 0.5rem;
        }

        .price_input {
            width: 60%;
        }

        .price_input > input {
            width: 100%;
            border-radius: 4px;
        }
        .price_input_reco{
            width: 100%;
        }
        
        .price_input_reco > input {
            width: 100%;
            border-radius: 4px;
        }

        .Mileage_button {
            padding: 0.35rem 0.7rem;
            border-radius: 4px;
            color: #fff;
        }

        .font-weight400 {
            font-weight:400;
        }

        .font-weight700 {
            font-weight: 700;
        }

        .Mileage_last_price {
            text-align: end;
            padding-top: 0.5rem;
            /* border: 1px solid; */
            border-top: 1px solid var(--mono_line);
        }

        .cupon_txt {
            padding-bottom: 0.5rem;
            font-weight: 500;
        }

        /*결제 수단*/
        .pay {
            display: flex;
            gap: 0.2rem;
            justify-content: flex-start;
            padding-top: 0.4rem;
        }

        .pay_wrap {       
            padding: 0.4rem 0 0.4rem;
            border-bottom: 1px solid;
        }

        .pay_content {
            width: 24%;
            padding: 0.5rem 0;
            /* padding: 20px 0; */
            text-align: center;
            border: 1px solid #E2E2E2;
            border-radius: 8px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .pay_content_txt {
            line-height: 1;
        }

        .pay_txt > p {
            padding-top: 0.3rem;
            line-height: 1.4;
        }

         .kakao_img {
            width: 1.4rem;
            margin: 0 auto;
        }
        .method_contnet_inner > .content {
          width: 100%;
        }

        .drkid-radio {
                vertical-align: baseline;
        }

        [type="radio"] {
            margin: 0;
        }

        .none2 {
            display:none;
        } 

        /*최종결제 금액*/
        .last_price_txt {
            text-align:end;
        }

        .last_price_button {
            border-radius: 4px;
            text-align: center;
            padding: 0.5rem 0;
            color:#fff;
            margin-top: 0.5rem;
        }

        #purchaseBtnArea {
            display:none;
        }

        #General_Payment_Radio_wrap {
            display:block;
        }

        .content-wrap  {
            display:none;
        }

        .normalRadio_wrap {
            display:none;
        }

        .purchase_top_button > .button:first-child {
            color:#fff;
        }

        .purchaseBtn_wrap > .btnContent:first-child,
        .purchaseBtn_wrap > .btnContent:nth-child(2) {
            background:black;
            color:#fff;
        }
        /*.pay > .pay_content:first-child > .pay_content_wrap,
        .pay > .pay_content:first-child > .pay_content_txt {
            color:#fff;
        }*/

        .pay_content_wrap,
        .pay_content_txt {
            color:#8F8F8F;
        }

        .click_payment{
            color:var(--mono_back);
        }

        .font-weight400 {
            font-weight:400;
        }

        /*.cupon_txt {
            display:none;
        }*/
    </style>

    <%--이니시스--%>
    <script language="javascript" type="text/javascript" src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>

    <script>
        $(document).ready(function () {
            $('.prev_button').click(function () {
                location.href = "/Source/m/my/M_M_MYPAGE.aspx";
            });

            ////이니시스 연결

            $("#go_paymnet").on("click", function () {
                //console.log("이니시스");
                console.log("이니시스");
                var form = document.createElement('form');
                var createdElements = [
                    objs1, objs2, objs3, objs4, objs5,
                    objs6, objs7, objs8, objs9, objs10, objs11
                ];
                var objs1 = document.createElement('input'); // 값이 들어있는 녀석의 형식
                objs1.setAttribute('type', 'text'); // 값이 들어있는 녀석의 type
                objs1.setAttribute('name', 'P_INI_PAYMENT'); // 객체이름
                objs1.setAttribute('value', "CARD"); //객체값

                var objs2 = document.createElement('input');
                objs2.setAttribute('type', 'text');
                objs2.setAttribute('name', 'P_MID');
                objs2.setAttribute('value', "INIpayTest");

                var objs3 = document.createElement('input');
                objs3.setAttribute('type', 'text');
                objs3.setAttribute('name', 'P_OID');
                objs3.setAttribute('value', "mobile_test1234");

                var objs4 = document.createElement('input');
                objs4.setAttribute('type', 'text');
                objs4.setAttribute('name', 'P_AMT');
                objs4.setAttribute('value', "1000");

                var objs5 = document.createElement('input');
                objs5.setAttribute('type', 'text');
                objs5.setAttribute('name', 'P_GOODS');
                objs5.setAttribute('value', "테스트상품");

                var objs6 = document.createElement('input');
                objs6.setAttribute('type', 'text');
                objs6.setAttribute('name', 'P_UNAME');
                objs6.setAttribute('value', "테스터");

                var objs7 = document.createElement('input');
                objs7.setAttribute('type', 'text');
                objs7.setAttribute('name', 'P_MOBILE');
                objs7.setAttribute('value', "01012345678");

                var objs8 = document.createElement('input');
                objs8.setAttribute('type', 'text');
                objs8.setAttribute('name', 'P_EMAIL');
                objs8.setAttribute('value', "test@test.com");

                var objs9 = document.createElement('input');
                objs9.setAttribute('type', 'text');
                objs9.setAttribute('name', 'P_NEXT_URL');
                objs9.setAttribute('value', "http://211.43.207.2/Source/client/payment/mINIStdPayReturn.aspx");
                //objs9.setAttribute('value', "http://localhost:18848/Source/client/payment/mINIStdPayReturn.aspx");

                var objs10 = document.createElement('input');
                objs10.setAttribute('type', 'text');
                objs10.setAttribute('name', 'P_CHARSET');
                objs10.setAttribute('value', "");

                var objs11 = document.createElement('input');
                objs11.setAttribute('type', 'text');
                objs11.setAttribute('name', 'P_RESERVED');
                objs11.setAttribute('value', "below1000=Y&vbank_receipt=Y&centerCd=Y");



                //form.appendChild(objs1, objs2, objs3, objs4, objs5, objs6, objs7, objs8, objs9, objs10, objs11);
                form.appendChild(objs1);
                form.appendChild(objs2);
                form.appendChild(objs3);
                form.appendChild(objs4);
                form.appendChild(objs5);
                form.appendChild(objs6);
                form.appendChild(objs7);
                form.appendChild(objs8);
                form.appendChild(objs9);
                form.appendChild(objs10);
                form.appendChild(objs11);

                form.setAttribute('method', 'post'); //get,post 가능
                form.setAttribute('target', '_self');
                form.setAttribute('action', "https://mobile.inicis.com/smart/payment/"); //보내는 url
                document.body.appendChild(form);
                //on_pay();
                form.submit();
            });

            $('.purchase_top_button > .button:first-child').click(function () {
                $('#purchaseBtnArea').css("display", "none");
                $('.normalRadio_wrap').css("display", "none");
                $('.input_background').css('background', '#F3F3F3');
                $('.purchase_top_button > .button:first-child').css('background', '#115c5e');
                $('.purchase_top_button > .button:first-child').css('color', '#fff');
                $('.purchase_top_button > .button:nth-child(2)').css('background', '#fff');
                $('.purchase_top_button > .button:nth-child(2)').css('color', 'black');
                $('.purchase_top_button > .button:last-child').css('background', '#fff');
                $('.purchase_top_button > .button:last-child').css('color', 'black');
            });

            $('.purchase_top_button > .button:last-child').click(function () {
                $('#purchaseBtnArea').css("display", "none");
                $('.normalRadio_wrap').css("display", "none");
                $('.input_background').css('background', '#F3F3F3');
                $('.purchase_top_button > .button:first-child').css('background', '#fff');
                $('.purchase_top_button > .button:first-child').css('color', 'black');
                $('.purchase_top_button > .button:nth-child(2)').css('background', '#fff');
                $('.purchase_top_button > .button:nth-child(2)').css('color', 'black');
                $('.purchase_top_button > .button:last-child').css('background', '#115c5e');
                $('.purchase_top_button > .button:last-child').css('color', '#fff');
            });

            //배송지 목록 버튼 클릭시에
            //배송지 목록 wrap display block
            $('#purchaseBtn').click(function () {
                $('#purchaseBtnArea').css("display", "block");
                $('.normalRadio_wrap').css("display", "block");
                $('.input_background').css('background', '#fff');
                $('.purchase_top_button > .button:first-child').css('background', '#fff');
                $('.purchase_top_button > .button:first-child').css('color', 'black');
                $('.purchase_top_button > .button:nth-child(2)').css('background', '#115c5e');
                $('.purchase_top_button > .button:nth-child(2)').css('color', '#fff');
                $('.purchase_top_button > .button:last-child').css('background', '#fff');
                $('.purchase_top_button > .button:last-child').css('color', 'black');
            });

            $(".purchaseBtn_wrap > .btnContent:nth-child(3)").on("click", function () {
                $('.purchaseBtn_wrap > .btnContent:nth-child(2)').css('background', '#fff');
                $('.purchaseBtn_wrap > .btnContent:nth-child(2)').css('color', 'black');
                $('.purchaseBtn_wrap > .btnContent:nth-child(3)').css('background', 'black');
                $('.purchaseBtn_wrap > .btnContent:nth-child(3)').css('color', '#fff');
                $(".normalRadio_wrap input[name='normalAddressRadio']").prop("checked", false);
            });

            $(".purchaseBtn_wrap > .btnContent:nth-child(2)").on("click", function () {
                $('.purchaseBtn_wrap > .btnContent:nth-child(3)').css('background', '#fff');
                $('.purchaseBtn_wrap > .btnContent:nth-child(3)').css('color', 'black');
                $('.purchaseBtn_wrap > .btnContent:nth-child(2)').css('background', 'black');
                $('.purchaseBtn_wrap > .btnContent:nth-child(2)').css('color', '#fff');
                $(".normalRadio_wrap input[name='normalAddressRadio']").prop("checked", true);
            });

            //배송지 목록 버튼 클릭 후 
            //배송지 추가를 클릭했을 떄 배송지 등록 페이지로 넘어감 
            $('#purchaseAddBtn').click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_DETAIL_DELIVERY.aspx";
            });
            //쿠폰 조회 클릭시에
            //쿠폰 적용 페이지로 넘어감
            $('#cuponInquiry').click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_DETAIL_CUPON.aspx";
            });
            //최하단 결제하기 버튼 클릭시에
            //주문 완료 페이지로 넘어감
            $('#purchaseCompleteBtn').click(function () {
                location.href = "/Source/m/my/M_M_PRODUCT_DETAIL_ORDER_COMPLETE.aspx";
            });

            //결제 라디오 버튼은 payment_Radio으로 통일 되어 있음
            //결제 라디오 아이디 값은 일반결제 Common_Payment_Radio, 에스크로 Escrow_Payment_Radio, 다른결제 Different_Payment_Radio로 되어 있음
            //라디오 버튼에 따라 show,hide 되는 영역은 ex) 일반결제 id = Common_Payment_Radio값 뒤에 _wrap이 붙어 있음

            //라디오 버튼 클릭
            $('input[type="radio"]').click(function () {
                //라디오 id값 + _wrap선택
                var wrapId = '#' + this.id + '_Payment_Radio_wrap';
                //content-wrap 클래스로 이미 display:none이되어있음
                $('.content-wrap').hide();
                //id값 + _wrap에 선택된 영역만 show
                $(wrapId).show();

                //모든버튼 리셋
                $(".pay_content").each(function () {
                    $(this).removeClass('main_bg_color');
                    $(this).children('.pay_content_wrap').removeClass("click_payment");
                    $(this).children('.pay_content_txt').removeClass("click_payment");
                });
                if (this.id == "General") {
                    $("#General_Payment_Radio_wrap > div > div:nth-child(1)").addClass("main_bg_color");
                    $("#General_Payment_Radio_wrap > div > div:nth-child(1) > div.pay_content_wrap").addClass("click_payment");
                    $("#General_Payment_Radio_wrap > div > div:nth-child(1) > div.pay_content_txt").addClass("click_payment");
                    $("#gopaymethod").val("Card");
                    $("#acceptmethod").val("HPP(1):no_receipt:va_receipt:below1000:centerCd(Y)");
                }
                if (this.id == "Easy") {
                    $("#Easy_Payment_Radio_wrap > div > div:nth-child(1)").addClass("main_bg_color");
                    $("#Easy_Payment_Radio_wrap > div > div:nth-child(1) > div.pay_content_wrap").addClass("click_payment");
                    $("#Easy_Payment_Radio_wrap > div > div:nth-child(1) > div.pay_content_txt").addClass("click_payment");
                    $("#gopaymethod").val("onlykakaopay");
                    $("#acceptmethod").val("HPP(1):below1000:cardonly");
                }
            });

            //결제수단 버튼
            $(".pay_content").click(function () {
                //모든버튼 리셋
                $(".pay_content").each(function () {
                    $(this).removeClass('main_bg_color');
                    $(this).children('.pay_content_wrap').removeClass("click_payment");
                    $(this).children('.pay_content_txt').removeClass("click_payment");
                });
                //선태한 버튼 변경
                $(this).each(function () {
                    var payment_flag = $(this).children('.pay_type').val();
                    $("#gopaymethod").val(payment_flag);
                    $(this).addClass('main_bg_color');
                    $(this).children('.pay_content_wrap').addClass("click_payment");
                    $(this).children('.pay_content_txt').addClass("click_payment");
                });
            });


        });
        function on_pay() {

            //form.setAttribute('method', 'post'); //get,post 가능
            //form.setAttribute('target', '_self');
            //form.setAttribute('action', "https://mobile.inicis.com/smart/payment/"); //보내는 url
            //var params = {
            //    P_INI_PAYMENT: $('input[name="P_INI_PAYMENT"]').val()
            //    , P_MID: $('input[name="P_MID"]').val()
            //    , P_OID: $('input[name="P_OID"]').val()
            //    , P_AMT: $('input[name="P_AMT"]').val()
            //    , P_GOODS: $('input[name="P_GOODS"]').val()
            //    , P_UNAME: $('input[name="P_UNAME"]').val()
            //    , P_MOBILE: $('input[name="P_MOBILE"]').val()
            //    , P_EMAIL: $('input[name="P_EMAIL"]').val()
            //    , P_NEXT_URL: $('input[name="P_NEXT_URL"]').val()
            //    , P_CHARSET: $('input[name="P_CHARSET"]').val()
            //    , P_RESERVED: $('input[name="P_RESERVED"]').val()
            //}

            //$.ajax({
            //    type: "post",
            //    url: "https://mobile.inicis.com/smart/payment/",
            //    data: params,
            //    success: function (response) { //컨트롤러에서 넘어온 cnt값을 받는다 
            //        console.log(response);


            //    },
            //    error: function () {

            //    }
            //});

        }
    </script>

     <script>
         // 이동규 로그인 유무 추천인 코드 텍스트박스 
         var userId = '<%=baseUser.userId%>';
         $(function () {
             if (userId != "" && userId != null && userId != undefined) {
                 // 로그인 되어있을 경우
                 $('#Recommander_Space').css('display', 'none');
             }
             else {
                 // 로그인 안되어있을 경우 
                 $('#Recommander_Space').css('display', 'flex');
             }
         })
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myPage">
        <div class="myPageHeader">
            <%--배송지 관리 헤더 top--%>
            <div class="myPageHeader_top">
                <div class="prev_button">
                    <span class="material-icons">arrow_back_ios</span>
                </div>
                <div class="myPage_txt">
                    <span>주문서 작성</span>
                </div>
                <div class="myPage_product_icon">
                    <span class="material-icons m_icon">redeem</span>
                </div>
            </div>
        </div>

        <%--상품 구매 정보--%>
        <div class="purchase">
            <div class="purchase_wrap">
                <div class="purchase_wrap_inner">
                    <%--상품정보--%>
                    <%--백그라운드 #fff설정되있음--%>
                    <div class="purchase_content">
                        <%--백그라운드 여벡에서 패딩값으로 밀여있음--%>
                        <div class="purchase_content_inner">
                            <%--상품정보 텍스트--%>
                            <div class="purchase_title">
                                <span class="m_ma_font">상품정보</span>
                            </div>
                            <%--상품정보 상품 이미지 컨텐츠--%>
                            <div class="purchase_product">
                                <div class="purchase_img">
                                    <img src="/Source/client/image/best_img.png" alt="product_img" />
                                </div>
                                <div class="purchase_txt">
                                    <span class="m_lower_font">신당케어</span>
                                    <span class="m_middle_font font-weight400">비건오메가3 (30일분)</span>
                                    <span class="m_lower_font font-weight400">36,400 / 1개</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--주문자정보--%>
                    <%--백그라운드 #fff설정되있음--%>
                    <div class="purchase_content">
                        <%--백그라운드 여벡에서 패딩값으로 밀여있음--%>
                        <div class="purchase_content_inner">
                            <%--주문자정보 텍스트--%>
                            <div class="purchase_title">
                                <span class="m_ma_font">주문자 정보</span>
                            </div>
                            <%--주문자 텍스트, input--%>
                            <div class="purchase_product input_padding_bottom">
                                <div class="purchase_product_title">
                                    <span class="red">*</span>
                                    <span class="m_middle_font">주문자</span>
                                </div>
                                <div class="purchase_product_input">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                            <%--휴대폰 번호 텍스트, input--%>
                            <div class="purchase_product input_padding_bottom">
                                <div class="purchase_product_title">
                                    <span class="red">*</span>
                                    <span class="m_middle_font">휴대폰 번호</span>
                                </div>
                                <div class="purchase_product_input">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                            <%--추가 연락처 텍스트, input--%>
                            <div class="purchase_product input_padding_bottom">
                                <div class="purchase_product_title">
                                    <span class="red star_hidden">*</span>
                                    <span class="m_middle_font">추가 연락처</span>
                                </div>
                                <div class="purchase_product_input">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                            <%--이메일 텍스트, input / select--%>
                            <div class="purchase_product baseline">
                                <div class="purchase_product_title">
                                    <span class="red">*</span>
                                    <span class="m_middle_font">이메일</span>
                                </div>
                                <div class="purchase_product_option">
                                    <div class="purchase_product_input input_padding_bottom">
                                        <input type="text" name="name" value="" />
                                    </div>
                                    <div class="purchase_product_select">
                                        <div class="block-example">
                                            <select class="drkid-select m_lower_font" style="width: 100%;">
                                                <option>직접입력</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--배송정보--%>
                    <%--백그라운드 #fff설정되있음--%>
                    <div class="purchase_content">
                        <%--백그라운드 여벡에서 패딩값으로 밀여있음--%>
                        <div class="purchase_content_inner">
                            <%--상품정보 텍스트--%>
                            <div class="purchase_title">
                                <span class="m_ma_font">배송정보</span>
                            </div>
                            <%--배송정보 버튼--%>
                            <div class="purchase_top_button">
                                <div class="button main_bg_color">
                                    <span class="m_lower_font">기본배송지</span>
                                </div>
                                <%--purchaseBtn 클릭시에 purchase_top_button 밑으로 배송지 추가 버튼 나옴--%>
                                <div class="button" id="purchaseBtn">
                                    <span class="m_lower_font">배송지 목록</span>
                                </div>
                                <div class="button">
                                    <span class="m_lower_font">직접 입력</span>
                                </div>
                            </div>

                            <%--purchaseBtn클릭시 display block 되는 부분--%>
                            <div id="purchaseBtnArea">
                                <div class="purchaseBtn_wrap">
                                    <%--배송지 추가--%>
                                    <div class="btnContent" id="purchaseAddBtn">
                                        <span class="m_lower_font">배송지 추가</span>
                                    </div>
                                    <div class="btnContent">
                                        <span class="m_lower_font">배송지1</span>
                                    </div>
                                    <div class="btnContent">
                                        <span class="m_lower_font">배송지2</span>
                                    </div>
                                    <div class="btnContent">
                                        <span class="m_lower_font">지정된 배송지3</span>
                                    </div>
                                    <div class="btnContent">
                                        <span class="m_lower_font">배송지4</span>
                                    </div>
                                </div>
                            </div>
                            <%--기본 배송지--%>
                            <div id="purchase_one">
                                <%--이름--%>
                                <div class="shippingList_wrap">
                                    <div class="shipping_title">
                                        <span class="red">*</span>
                                        <span class="m_middle_font">이름</span>
                                    </div>
                                    <div class="title_input">
                                        <input class="m_lower_font" type="text" name="name" value="" placeholder="받는분을 입력해 주세요." />
                                    </div>
                                </div>
                                <%--받는 주소--%>
                                <div class="shippingList_wrap">
                                    <div class="shipping_title">
                                        <span class="red">*</span>
                                        <span class="m_middle_font">받는 주소</span>
                                    </div>
                                    <div class="put_address input_bottom_padding">
                                        <div class="put_address_title_input">
                                            <input class="m_lower_font input_background" type="text" name="name" value="" />
                                        </div>
                                        <div class="put_address_button">
                                            <span class="m_lower_font">우편번호</span>
                                        </div>
                                    </div>
                                    <div class="title_input input_bottom_padding">
                                        <input class="m_lower_font input_background" type="text" name="name" value="" />
                                    </div>
                                    <div class="title_input">
                                        <input class="m_lower_font" type="text" name="name" value="" />
                                    </div>
                                </div>
                                <%--휴대폰 번호--%>
                                <div class="shippingList_wrap">
                                    <div class="shipping_title">
                                        <span class="red">*</span>
                                        <span class="m_middle_font">휴대폰 번호</span>
                                    </div>
                                    <div class="phone_number_wrap">
                                        <div class="number_title_input">
                                            <input class="m_lower_font" type="text" name="name" value="" />
                                        </div>
                                        <div class="number_title_input">
                                            <input class="m_lower_font" type="text" name="name" value="" />
                                        </div>
                                        <div class="number_title_input">
                                            <input class="m_lower_font" type="text" name="name" value="" />
                                        </div>
                                    </div>
                                </div>
                                <%--추가 연락처--%>
                                <div class="shippingList_wrap">
                                    <div class="shipping_title">
                                        <span class="red star_hidden">*</span>
                                        <span class="m_middle_font">추가 연락처</span>
                                    </div>
                                    <div class="phone_number_wrap">
                                        <div class="number_title_input">
                                            <input class="m_lower_font" type="text" name="name" value="" />
                                        </div>
                                        <div class="number_title_input">
                                            <input class="m_lower_font" type="text" name="name" value="" />
                                        </div>
                                        <div class="number_title_input">
                                            <input class="m_lower_font" type="text" name="name" value="" />
                                        </div>
                                    </div>
                                </div>

                                <%--기본 배송지 라디오 버튼--%>
                                <div class="normalRadio">
                                    <div class="normalRadio_wrap">
                                        <input type="radio" name="normalAddressRadio" value="" checked="checked" />
                                        <span class="m_middle_font">기본 배송지</span>
                                    </div>
                                </div>

                                <%--남기실 말씀--%>
                                <div class="shippingList_wrap">
                                    <div class="shipping_title">
                                        <span class="red star_hidden">*</span>
                                        <span class="m_middle_font">남기실 말씀</span>
                                    </div>
                                    <div class="title_input">
                                        <input class="m_lower_font" type="text" name="name" value="" />
                                    </div>
                                </div>
                            </div>

                            <%--배송지 목록--%>
                            <div id="purchase_two"></div>

                            <%--직접 입력--%>
                            <div id="purchase_three"></div>
                        </div>
                    </div>

                    <%--결제 정보--%>
                    <%--백그라운드 #fff설정되있음--%>
                    <div class="purchase_content">

                        <%--백그라운드 여벡에서 패딩값으로 밀여있음--%>
                        <div class="purchase_content_inner">
                            <%--상품정보 텍스트--%>
                            <div class="purchase_title">
                                <span class="m_ma_font">결제 정보</span>
                            </div>
                            <%--상품 합계 금액--%>
                            <div class="purchase_product input_padding_bottom">
                                <div class="purchase_product_title">
                                    <span class="m_middle_font font-weight400">상품 합계 금액</span>
                                </div>
                                <div class="price">
                                    <span class="m_middle_font font-weight700">128,400원</span>
                                </div>
                            </div>
                            <%--배송비--%>
                            <div class="purchase_product input_padding_bottom">
                                <div class="purchase_product_title">
                                    <span class="m_middle_font font-weight400">배송비</span>
                                </div>
                                <div class="price">
                                    <span class="m_middle_font mono_sub_color">0원</span>
                                </div>
                            </div>
                            <%--할인 및 적립--%>
                            <div class="purchase_product input_padding_bottom baseline">
                                <div class="purchase_product_title">
                                    <span class="m_middle_font font-weight400">할인 및 적립</span>
                                </div>
                                <div class="price">
                                    <span class="m_middle_font mono_sub_color">등급할인 -1,200원 </span>
                                    <br />
                                    <span class="m_middle_font mono_sub_color">마일리지 +588원</span>
                                </div>
                            </div>
                            <%--쿠폰사용--%>
                            <div class="purchase_product input_padding_bottom">
                                <div class="purchase_product_title">
                                    <span class="m_middle_font font-weight400">쿠폰사용</span>
                                </div>
                                <div class="price">

                                    <%--쿠폰 할인 혜택 적용--%>
                                    <div class="cupon_txt">
                                        <span class="m_middle_font drkid_Negative_color">-3,600원 할인 적용 중</span>
                                    </div>
                                    <%--쿠폰 조회 버튼--%>
                                    <div class="price_button main_bg_color" id="cuponInquiry">
                                        <span class="m_lower_font font-weight400">쿠폰 조회</span>
                                    </div>
                                </div>
                            </div>
                            <%--마일리지--%>
                            <div class="purchase_product input_padding_bottom">
                                <div class="purchase_product_title ">
                                    <span class="m_middle_font font-weight400">마일리지</span>
                                </div>
                                <div class="price">
                                    <div class="price_wrap">
                                        <div class="price_input">
                                            <input type="text" name="name" value=" " />
                                        </div>
                                        <div class="Mileage_button main_bg_color">
                                            <span class="m_lower_font">최대사용</span>
                                        </div>
                                    </div>
                                    <div class="price_wrap_under_txt">
                                        <span class="m_middle_font mono_sub_color">보유 마일리지 : 1,200원</span>
                                    </div>
                                </div>
                            </div>
                            <%--추천인 코드 이동규 작성--%>
                            <div class="purchase_product input_padding_bottom baseline" id="Recommander_Space">

                                <div class="purchase_product_title">
                                    <span class="m_middle_font font-weight400">추천인 코드</span>
                                </div>
                                <div class="price_input_reco" style="background-color: black;">
                                    <input type="text" name="Reco_name" value=" " />
                                </div>

                            </div>


                            <%--마일리지 최종 가격--%>
                            <div class="Mileage_last_price">
                                <span class="main_color font-weight400 m_middle_font">최종 결제 금액</span>
                                <br />
                                <span class="main_color font-weight700 m_ma_font">128,400원</span>
                            </div>
                        </div>
                    </div>

                    <%--결제수단--%>
                    <%--백그라운드 #fff설정되있음--%>
                    <div class="purchase_content">
                        <%--백그라운드 여벡에서 패딩값으로 밀여있음--%>
                        <div class="purchase_content_inner">
                            <%--상품정보 텍스트--%>
                            <div class="purchase_title">
                                <span class="m_ma_font">결제수단</span>
                            </div>
                            <%--상품정보 상품 이미지 컨텐츠--%>
                            <div class="method_content">
                                <div class="method_contnet_wrap">
                                    <div class="method_contnet_inner">
                                        <div class="content">
                                            <%--일반결제 WRAP--%>
                                            <div class="pay_wrap">
                                                <div class="radio">
                                                    <label class="drkid-radio">
                                                        <input type="radio" name="payment_Radio" value="" checked="checked" id="General" />
                                                        <span class="m_middle_font">일반결제</span>
                                                    </label>
                                                </div>
                                                <%--일반결제 라디오 버튼 클릭시 hide, show 되는 wrap--%>
                                                <div class="content-wrap" id="General_Payment_Radio_wrap">
                                                    <div class="general-pay pay">
                                                        <!--신용카드-->
                                                        <div class="pay_content main_bg_color">
                                                            <input type="hidden" class="pay_type" value="Card" />
                                                            <div class="pay_content_wrap click_payment">
                                                                <span class="material-icons">credit_card</span>
                                                            </div>
                                                            <div class="pay_content_txt click_payment">
                                                                <span class="m_lowerst_font">신용카드</span>
                                                            </div>
                                                        </div>
                                                        <!--계좌이체-->
                                                        <div class="pay_content">
                                                            <input type="hidden" class="pay_type" value="DirectBank" />
                                                            <div class="pay_content_wrap">
                                                                <span class="material-icons">paid</span>
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span class="m_lowerst_font">계좌이체</span>
                                                            </div>
                                                        </div>
                                                        <!--가상계좌-->
                                                        <div class="pay_content">
                                                            <input type="hidden" class="pay_type" value="VBank" />
                                                            <div class="pay_content_wrap">
                                                                <span class="material-icons">account_balance</span>
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span class="m_lowerst_font">가상계좌<br />
                                                                    (무통장)
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <!--핸드폰결제-->
                                                        <div class="pay_content">
                                                            <input type="hidden" class="pay_type" value="HPP" />
                                                            <div class="pay_content_wrap">
                                                                <span class="material-icons">phone_android</span>
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span class="m_lowerst_font">핸드폰결제</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--간편결제 결제 WRAP--%>
                                            <div class="pay_wrap">
                                                <div class="radio">
                                                    <label class="drkid-radio">
                                                        <input type="radio" name="payment_Radio" value="" id="Easy" />
                                                        <span class="m_middle_font">간편결제</span>
                                                    </label>
                                                </div>
                                                <%--간편결제 라디오 버튼 클릭시 hide, show 되는 wrap--%>
                                                <div class="content-wrap" id="Easy_Payment_Radio_wrap">
                                                    <div class="easy-pay pay">
                                                        <!--카카오페이-->
                                                        <div class="pay_content">
                                                            <input type="hidden" class="pay_type" value="onlykakaopay" />
                                                            <div class="pay_content_wrap kakao_img">
                                                                <img src="/Source/client/image/kakao_img.svg" alt="kakao_img">
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span class="m_lowerst_font">카카오페이</span>
                                                            </div>
                                                        </div>
                                                        <!--네이버페이-->
                                                        <div class="pay_content">
                                                            <input type="hidden" class="pay_type" value="onlynaverpay" />
                                                            <div class="pay_content_wrap kakao_img">
                                                                <img src="/Source/client/image/naver_logo2.png" alt="naver_img">
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span class="m_lowerst_font">네이버페이</span>
                                                            </div>
                                                        </div>
                                                        <%--<!--가상계좌-->
                                                        <div class="pay_content">
                                                            <div class="pay_content_wrap">
                                                                <span class="material-icons">account_balance</span>                  
                                                            </div>
                                                            <div class="pay_content_txt">
                                                                <span class="m_lowerst_font">
                                                                    가상계좌<br>
                                                                    (무통장)
                                                                </span>
                                                            </div>                              
                                                        </div>--%>
                                                    </div>
                                                    <%--<div class="pay_txt none2">
                                                        <p class="m_lower_font main_color">
                                                            * 고객님은 안전거래를 위해 현금으로 결제시 저희 쇼핑몰에서 가입한 구매안전서비스인<br>
                                                            KG이니시스의 구매안전(에스크로)서비스를 이용하실 수 있습니다.
                                                        </p>
                                                    </div>--%>
                                                </div>
                                            </div>
                                            <%--다른결제--%>
                                            <div class="pay_wrap">
                                                <div class="radio">
                                                    <label class="drkid-radio">
                                                        <input type="radio" name="payment_Radio" value="" id="Different_Payment_Radio" />
                                                        <span class="m_middle_font">다른결제</span>
                                                    </label>
                                                </div>
                                                <%--다른결제 라디오 버튼 클릭시 hide, show 되는 wrap--%>
                                                <div class="content-wrap" id="Different_Payment_Radio_wrap">
                                                    <div class="pay content-wrap"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--최종 결제 금액--%>
                    <%--백그라운드 #fff설정되있음--%>
                    <div class="purchase_content_inner">
                        <%--최종 결제 금액--%>
                        <div class="last_price">
                            <div class="last_price_wrap">
                                <div class="last_price_wrap_inner">
                                    <div class="last_price_txt">
                                        <span class="main_color font-weight400 m_middle_font">최종 결제 금액</span>
                                        <br />
                                        <span class="main_color font-weight700 m_ma_font">128,400원</span>
                                    </div>
                                    <div class="last_price_button main_bg_color" id="go_paymnet">
                                        <span class="m_ma_font">결제하기</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--이니시스--%>

                    <!-- 필수 -->
                    <%--<br />
                    <b>***** 필 수 *****</b>
                    <div style="border: 2px #dddddd double; padding: 10px; background-color: #f3f3f3; text-align: left">
                        <input type="hidden" name="version" id="version" value="<%=strVersion %>" />

                        <br />
                        <b>P_MID</b> :
                                               <br />
                        <input type="text" name="P_MID" id="P_MID" value="<%=strMid %>" />

                        <br />
                        <b>P_GOODS</b> :
                                               <br />
                        <input type="text" name="P_GOODS" id="P_GOODS" value="<%=strGoodName %>" />


                        <br />
                        <b>P_OID</b> :
                                               <br />
                        <input type="text" name="P_OID" id="P_OID" value="<%=oid %>" />

                        <br />
                        <b>P_AMT</b> :
                                               <br />
                        <input type="text" name="P_AMT" id="P_AMT" value="<%=strPrice %>" />

                        <br />
                        <b>currency</b> :
                                               <br />
                        [WON|USD]
                                               <br />
                        <input type="text" name="currency" id="currency" value="<%=strCurrency %>" />

                        <br />
                        <b>P_UNAME</b> :
                                               <br />
                        <input type="text" name="P_UNAME" id="P_UNAME" value="<%=strBuyerName %>" />

                        <br />
                        <b>buyertel</b> :
                                               <br />
                        <input type="text" name="buyertel" id="buyertel" value="<%=strBuyerTel %>" />

                        <br />
                        <b>buyeremail</b> :
                                               <br />
                        <input type="text" name="buyeremail" id="buyeremail" value="<%=strBuyerEmail %>" />

                        <br />
                        <b>timestamp</b> :
                                               <br />
                        <input type="text" name="timestamp" id="timestamp" value="<%=timestamp %>" />


                        <br />
                        <b>signature</b> :
                                               <br />
                        <input type="text" name="signature" id="signature" value="<%=signature %>" />

                        <br />
                        <b>use_chkfake</b> :
                                               <br />
                        <input type="text" name="use_chkfake" id="use_chkfake" value="<%=use_chkfake %>" />

                        <br />
                        <b>verification</b> :
                                               <br />
                        <input type="text" name="verification" id="verification" value="<%=verification %>" />

                        <br />
                        <b>returnUrl</b> :
                                               <br />
                        <input type="text" name="returnUrl" id="returnUrl" value="<%=returnUrl %>" />
                        <br />
                        <b>MKEY(가맹점키)</b> :
                                               <br />
                        <input type="text" name="mKey" id="mKey" value="<%=mKey %>" />
                    </div>

                    <br />
                    <br />
                    <b>***** 기본 옵션 *****</b>
                    <div style="border: 2px #dddddd double; padding: 10px; background-color: #f3f3f3; text-align: left">
                        <b>gopaymethod</b> : 결제 수단 선택
                                               <br />
                        ex) Card (계약 결제 수단이 존재하지 않을 경우 에러로 리턴)
                                               <br />
                        사용 가능한 입력 값
                                               <br />
                        Card,DirectBank,HPP,Vbank,kpay,Swallet,Paypin,EasyPay,PhoneBill,GiftCard,EWallet
                                               <br />
                        onlypoint,onlyocb,onyocbplus,onlygspt,onlygsptplus,onlyupnt,onlyupntplus
                                               <br />
                        <input type="text" name="gopaymethod" id="gopaymethod" value="<%=gopaymethod %>" />
                        <br />
                        <br />

                        <br />
                        <b>offerPeriod</b> : 제공기간
                                               <br />
                        ex)20150101-20150331, [Y2:년단위결제, M2:월단위결제, yyyyMMdd-yyyyMMdd : 시작일-종료일]
                                               <br />
                        <asp:TextBox ID="offerPeriod" Text="2015010120150331" runat="server" />
                        <br />
                        <br />

                        <br />
                        <b>acceptmethod</b> : acceptmethod
                                               <br />
                        acceptmethod  ex) CARDPOINT:SLIMQUOTA(코드-개월:개월):no_receipt:va_receipt:vbank(20150425):va_ckprice: 
                                               <br />
                        KWPY_TYPE(0):KWPY_VAT(10|0) 기타 옵션 정보 및 설명은 연동정의보 참조 구분자 ":"
                                               <br />
                        <input type="text" name="acceptmethod" id="acceptmethod" value="HPP(1):no_receipt:va_receipt:below1000:centerCd(Y)" />
                    </div>

                    <br />
                    <br />
                    <b>***** 표시 옵션 *****</b>
                    <div style="border: 2px #dddddd double; padding: 10px; background-color: #f3f3f3; text-align: left">
                        <br />
                        <b>languageView</b> : 초기 표시 언어
                                               <br />
                        [ko|en] (default:ko)
                                               <br />
                        <asp:TextBox ID="languageView" Text="" runat="server" />

                        <br />
                        <b>charset</b> : 리턴 인코딩
                                               <br />
                        [UTF-8|EUC-KR] (default:UTF-8)
                                               <br />
                        <asp:TextBox ID="charset" Text="" runat="server" />

                        <br />
                        <b>payViewType</b> : 결제창 표시방법
                                               <br />
                        [overlay] (default:overlay)
                                               <br />
                        <asp:TextBox ID="payViewType" Text="" runat="server" Width="210px" />

                        <br />
                        <b>closeUrl</b> : payViewType='overlay','popup'시 취소버튼 클릭시 창닫기 처리 URL(가맹점에 맞게 설정)
                                               <br />
                        close.jsp 샘플사용(생략가능, 미설정시 사용자에 의해 취소 버튼 클릭시 인증결과 페이지로 취소 결과를 보냅니다.)
                                               <br />
                        <input type="text" name="closeUrl" id="closeUrl" value="<%=closeUrl %>" />

                    </div>

                    <b>***** 결제 수단별 옵션 *****</b>
                    <br />
                    <b>-- 카드(간편결제도 사용) --</b>
                    <div style="border: 2px #cccccc solid; padding: 10px; background-color: #f3f3f3; text-align: left">
                        <br />
                        <b>nointerest</b> : 무이자 할부 개월
                                               <br />
                        ex) 11-2:3:4,04-2:3:4
                                               <br />
                        <asp:TextBox ID="nointerest" Text="11-2:3:,34-5:12,14-6:12:24,12-12:36,06-9:12,01-3:4" runat="server" Width="400px" />

                        <br />
                        <b>quotabase</b> : 할부 개월
                                               <br />
                        ex) 2:3:4
                                               <br />
                        <asp:TextBox ID="quotabase" Text="2:3:4:5:6:11:12:24:36" runat="server" Width="400px" />

                    </div>

                    <b>-- 가상계좌 --</b>
                    <div style="border: 2px #cccccc solid; padding: 10px; background-color: #f3f3f3; text-align: left">
                        <br />
                        <b>INIregno</b> : 주민번호 설정 기능
                                               <br />
                        13자리(주민번호),10자리(사업자번호),미입력시(화면에서입력가능)
                                               <br />
                        <asp:TextBox ID="INIregno" Text="" runat="server" Width="400px" />
                    </div>

                    <br />
                    <br />
                    <b>***** 추가 옵션 *****</b>
                    <div style="border: 2px #dddddd double; padding: 10px; background-color: #f3f3f3; text-align: left">
                        <br />
                        <b>merchantData</b> : 가맹점 관리데이터(1000byte)
                                               <br />
                        **인증결과 리턴시 함께 전달됨(한글 지원 안됨, 개인정보 암호화(권장))
                                               <br />
                        <asp:TextBox ID="merchantData" Text="" runat="server" Width="400px" />
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
