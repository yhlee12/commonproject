﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_COMMON_HOME.aspx.cs" Inherits="drKidAdmin.Source.admin.common.A_COMMON_HOME" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

        .all_Ds_Area {
            min-width: 1050px;
            width: 100%;
            padding:15px;
        }
        .ds_Block {
            display: flex;
            gap: 0px 10px;
            padding: 0px 0px 10px 0px;
        }
        .ds_Box_1 {
            min-width: 545px;
            width: 50%;
            height:235px;
            background:#ffffff;
            border:1px  solid #DBDDE2;
        }
        .ds_Box_Title_Area {
            height: 50px;
            border-bottom: 1px solid #DBDDE2;
            padding: 0px 20px;
        }
        .ds_Box_Title {
            font-weight:600;
            line-height:50px;
        }
        .ds_Box_1_Bottom_Area {
            padding: 20px;
            width: 100%;
             display: flex;
        }
        .ds_Box_1_Bottom_1 {
            display: flex;
            align-items: start;
            gap: 0px 20px;
            width: 50%;
            border-right: 1px solid #E2E2E2;
        }
        .ds_Box_1_Bottom_2 {
            display: flex;
            align-items: start;
            gap: 0px 20px;
            width: 50%;
            padding: 0px 0px 0px 30px;
        }
        .ds_Box_1_Bottom_1_Info {
            width: 100%;
            padding: 0px 30px 0px 0px;
        }
        .ds_Box_2_Bottom_1_Info {
            width: 100%;
        }
        #redeem_Icon,#local_shipping_Icon,#replay_Icon,#paid_Icon {
            font-size:31px;
        }
        .ds_Box_1_Bottom_1_Record {
            display: flex;
            align-items: center;
            /*width: 155px;*/
            justify-content: space-between;
        }
        .ds_Recorde_Count {
            cursor:pointer;
            font-weight: 500;
        }
        .ds_Box_1_Bottom_1_Record_Info {
            font-weight: 500;
        }
        /*2*/
        .ds_Box_2 {
            min-width: 545px;
            width: 50%;
            height:438px;
            background:#ffffff;
            border:1px  solid #DBDDE2;
        }
        .ds_Box_2_Btn_Area {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 15px 0px;
        }
        .ds_Box_2_Graph_Area {
            width:100%;
            height: 328px;
            padding: 20px;
        }
        .ds_Box_2_Graph {
            width:100%;
            height:100%;
            display:none;
        }
        #ds_Box_2_Graph_1 {

        }
        #ds_Box_2_Graph_2 {

        }
        #ds_Box_2_Graph_3 {

        }

        .pay_Btn {
            width: 110px;
            height: 30px;
            text-align: center;
            line-height: 30px;
            background: #FFFFFF;
            border: 1px solid #E2E2E2;
            color: #828282;
            cursor:pointer;
            font-weight: 400;
        }
        .ds_Box_2_1_Btn_Clicked {
            color:#ffffff;
            background:var(--main_color);
        }
        .ds_Box_2_2_Btn_Clicked {
            background:#FFFFFF !important;
            border-bottom:none !important;
            border-left:none !important;
            border-right:none !important;
        }
        .ds_Box_2_Top_Area {
            display: flex;
            height: 60px;
            align-items: center;
        }

        .ds_Box_2_Top_Wrap {
            /*width: 50%;
            height: 60px;
            background: #F9F9F9;
            border: 1px solid #DBDDE2;
            border-top: none;
            cursor:pointer;*/
        }
        #ds_Box_2_Top_Left {
            width: 50%;
            height: 60px;
            background: #F9F9F9;
            border: 1px solid #DBDDE2;
            border-top: none;
            border-left: none;
            cursor:pointer;
        }
        #ds_Box_2_Top_Right {
             width: 50%;
            height: 60px;
            background: #F9F9F9;
            border: 1px solid #DBDDE2;
            border-top: none;
            border-right: none;
            cursor:pointer;
        }
        .ds_Box_2_Top {
            width: 165px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 0 auto;
            height: 60px;
        }
        .ds_Box_2_Top_Icon_Area {
            color:#ABAEB8;
        }
        .ds_Box_2_Top_Txt {
            color:#828282;
            font-weight: 500;
        }
        .ds_Box_2_Top_Info_1 {
             color:#ABAEB8;
             font-weight: 600;
        }
        .ds_Box_2_Top_Info_2 {
             color:#ABAEB8;
             font-weight: 500;
        }
        #production_quantity_limits_Icon, #face_Icon {
            font-size:27px;
        }
        .ds_Box_2_Contents_Area {
            padding: 20px;
            width: 100%;
            height: 270px;
        }
        .inquiry_Management_Btn {
            text-align: center;
            width: 210px;
            height: 35px;
            line-height: 35px;
            border: 1px solid #E2E2E2;
            margin: 0 auto;
            color:#828282;
            font-weight: 500;
            cursor:pointer;
        }
        .ds_Box_2_Content {
            width:100%;
            height:100%;
            display:none;
        }
        .product_Inquiry_Content_Record {
            display: flex;
            gap: 0px 10px;
            width: fit-content;
            cursor: pointer;
        }
        .product_Inquiry_Content_Title {
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .product_Inquiry_Content_Flag {
            font-weight:500;
        }
        .product_Inquiry_Content_Title {
            font-weight:500;
        }
        /*3*/
        .ds_Box_3 {
            min-width: 545px;
            width: 50%;
            height: 165px;
            background: #ffffff;
            border: 1px solid #DBDDE2;
        }
        .ds_Box_3_Big {
            min-width: 545px;
            width: 100%;
            height: 165px;
            background: #ffffff;
            border: 1px solid #DBDDE2;
        }
        .ds_Box_3_Contents_Area {
            padding: 20px;
            height: 115px;
        }
        .ds_Box_3_Contents {
            display: flex;
            height: 100%;
            width: 100%;
            gap: 0px 20px;
            flex-wrap: wrap;
            justify-content: center;
        }
        .ds_Box_3_Contents_Info_Left {
            display: flex;
            gap: 0px 10px;
            align-items: center;
        }
        .ds_Box_3_Contents_Info_Right {
            display: flex;
            gap: 0px 5px;
            align-items: center;
            font-weight:500;
            cursor: pointer;
        }
        .ds_Box_3_Contents_Info_1 {
            font-weight:400;
        }
        .ds_Box_3_Contents_Info_2 {
            font-weight:500;
            cursor: pointer;
        }
        #ds_Box_3_Product_Area {
            display: flex;
            width: 100%;
            height: 115px;
        }
        .ds_Box_3_Contents_Left_Area {
            width: 50%;
            border-right: 1px solid #E2E2E2;
            padding: 0px 30px 0px 0px;
        }
        .ds_Box_3_Contents_Left {
            display: grid;
            height: 75px;
        }
        .ds_Box_3_Contents_Left_Record {
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .ds_Box_3_Contents_Right_Area {
            width: 50%;
            display: flex;
            justify-content: space-between;
            padding: 0px 0px 0px 30px;
            align-items: center;
        }
        .ds_Box_3_Contents_Record_Title {
             font-weight: 500;
        }
        /*4*/
        .ds_Box_4 {
            min-width: 545px;
            width: 50%;
            height: 255px;
            background: #ffffff;
            border: 1px solid #DBDDE2;
        }
        .ds_Box_4_Contents_Area {
            padding: 20px 20px;
            height: 205px;
            display: flex;
        }
        .ds_Box_4_Contents_Left {
            width: 30%;
            height: 100%;
            display: grid;
            text-align: center;
            gap: 15px 0px;
            /*border-right: 1px solid #E2E2E2;*/
        }
        .ds_Box_4_Contents_Left_Info {
            display: flex;
            width: 100%;
            justify-content: center;
            align-items: end;
            gap: 0px 5px;
        }
        .ds_Box_4_Contents_Left_Info_1 {
            font-weight:600;
        }
        .ds_Box_4_Contents_Left_Info_2 {
            font-weight:400;
        }
        .ds_Box_4_Contents_Left_Info_Count_1 {
            font-weight: 600;
        }
        .ds_Box_4_Contents_Left_Info_Count_Wrap {
            width: fit-content;
            margin: 0 auto;
            cursor: pointer;
        }

        .ds_Box_4_Contents_Right {
            width: 70%;
            height: 100%;
            border-left: 1px solid #E2E2E2;
            padding: 0px 0px 0px 15px;
        }
        .ds_Box_4_Contents_Right_Graph_Area {
            width: 100%;
            height: 100%;
        }
        .ds_Box_Sub_Title {
            font-weight:400;
        }
        .ds_Box_4_Contents_Area_2 {
            padding:20px;
            height: 205px;
        }
        .ds_Box_4_Contents_Record {
            display: flex;
            width: 100%;
            justify-content: space-between;
            padding: 12px 0px;
            align-items: center;
        }
        .ds_Box_4_Contents_Record_Info_1 {
            cursor:pointer;
            font-weight: 500;
        }
        .ds_Box_4_Contents_Record_Info_2 {
            cursor:pointer;
            font-weight: 500;
        }
        #ds_Box_4_Contents_Division_Record {
            border: 1px solid #DBDDE2;
            border-left: none;
            border-right: none;
        }
        /*그래프*/
        #myChart_line {
            max-width: 700px !important;
            max-height: 300px !important;
            margin: 0px auto !important;
        }
        #myChart_line_2 {
            height:175px !important;
        }
    </style>
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
    <script>
        $(function () {

            //상품관리 - 결제건수,결제자수,결제금액 버튼 클릭 이벤트
            $(".pay_Btn").click(function () {
                //클릭 시 클릭한 css 효과 클래스로 적용
                $(".pay_Btn").removeClass("ds_Box_2_1_Btn_Clicked");
                $(this).addClass("ds_Box_2_1_Btn_Clicked");
                //해당 그래프 영역만 표시
                var ds_Box_2_Graph_Control_Value = $(this).data('value');
                $(".ds_Box_2_Graph").css("display", "none");
                $("#" + ds_Box_2_Graph_Control_Value).css("display", "block");
            });
            //상품관리 그래프 영역 디폴트되는 영역 표시
            $("#ds_Box_2_Graph_1").css("display", "block");

            //미답변 문의 - 상품문의 , 고객문의 영역 클릭 이벤트 
            $(".ds_Box_2_Top_Wrap").click(function () {
                //클릭 시 클릭한 css 효과 클래스로 적용
                $(".ds_Box_2_Top_Wrap").removeClass("ds_Box_2_2_Btn_Clicked");
                $(this).addClass("ds_Box_2_2_Btn_Clicked");
                //클릭 시 해당 자식요소의 텍스트 컬러 변경 
                box_2_Change_Color_All_Disabled();
                var control_Element = $(this);
                box_2_Change_Color_Activate(control_Element);
                //각 영역에 해당하는 컨텐츠를 표시
                if ($(this).attr("id") == "ds_Box_2_Top_Left") {
                    //상품문의 컨텐츠 표시
                    $("#customer_Inquiry_Content").css("display", "none");
                    $("#product_Inquiry_Content").css("display", "grid");
                }
                else {
                    //고객문의 컨텐츠 표시
                    $("#product_Inquiry_Content").css("display", "none");
                    $("#customer_Inquiry_Content").css("display", "grid");
                }

            });
            //미답변 문의 -디폴트 css 처리
            box_2_Change_Color_Activate($("#ds_Box_2_Top_Left"));//상품문의 영역 
            $("#product_Inquiry_Content").css("display", "grid"); //상품문의 컨텐츠 내용 영역

            //그래프 관련 화면 사이즈 체크
            $(window).resize(function () {
                console.log("변경");
            });
        });

        //미답변 문의 클릭 이벤트 css효과 활성
        function box_2_Change_Color_Activate(element) {
            $(element).find(".ds_Box_2_Top_Icon_Area").css("color", "#115c5e");
            $(element).find(".ds_Box_2_Top_Txt").css("color", "#115c5e");
            $(element).find(".ds_Box_2_Top_Info_1").css("color", "#115c5e");
            $(element).find(".ds_Box_2_Top_Info_2").css("color", "#4E4E4E");

            product_Inquiry_Content
        }
        //미답변 문의 클릭 이벤트 css효과 비활성
        function box_2_Change_Color_All_Disabled() {
            $(".ds_Box_2_Top_Wrap").find(".ds_Box_2_Top_Icon_Area").css("color", "#ABAEB8");
            $(".ds_Box_2_Top_Wrap").find(".ds_Box_2_Top_Txt").css("color", "#828282");
            $(".ds_Box_2_Top_Wrap").find(".ds_Box_2_Top_Info_1").css("color", "#ABAEB8");
            $(".ds_Box_2_Top_Wrap").find(".ds_Box_2_Top_Info_2").css("color", "#ABAEB8");
        }
    </script>


    <%--그래프관련--%>
    <script>
        $(function () {
            var currentDate = new Date();
            currentDate.setDate(currentDate.getDate() - 1);
            // 포맷 "2023-??-??"
            var formattedDate = currentDate.toISOString().split('T')[0];


            //박스2그래프 시작
            var chartArea = document.getElementById('myChart_line').getContext('2d');
            var myChart = new Chart(chartArea, {
                // ①차트의 종류(String)
                type: 'line',
                // ②차트의 데이터(Object)
                //ㅈㅎ1
                data: {
                    // ③x축에 들어갈 이름들(Array)
                    labels: ['1월', '2월', '3월', '4월', '5월', '6월'],
                    // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
                    datasets: [{
                        // ⑤dataset의 이름(String)
                        label: '2023년 판매량',
                        // ⑥dataset값(Array)
                        data: [12, 23, 13, 45, 32, 33],
                        // ⑦dataset의 배경색(rgba값을 String으로 표현)
                        backgroundColor: 'rgba(17, 92, 94, 0.2)',
                        borderColor: 'rgba(17, 92, 94, 1)',
                        //spanGaps: true ,
                        borderWidth: 2
                    }]
                },
                // ⑩차트의 설정(Object)
                options: {
                    layout: {       //레이아웃
                        padding: 0
                    },
                    //title: {    //제목
                    //    display: true,
                    //    text: ['2023-2024', '판매량'],
                    //    fontSize: 15,
                    //    fontColor: 'black'
                    //},
                    legend: {
                        labels: {
                            fontColor: "gray",
                            fontSize: 18
                        }
                    },
                    scales: {
                        xAxes: [{           //x축
                            ticks: {
                                fontColor: 'rgba(17, 92, 94, 1)',
                                fontSize: 14
                            },
                            gridLines: {     //x축 선 
                                color: 'rgba(17, 92, 94, 1)',
                                lineWidth: 1
                            }
                        }],
                        yAxes: [{           //y축 
                            ticks: {
                                stepSize: 10,
                                beginAtZero: true, //0부터 데이터표시    
                                fontColor: 'rgba(17, 92, 94, 1)',
                                fontSize: 14
                            },
                            gridLines: {     //y축 선 
                                color: 'rgba(17, 92, 94, 1)',
                                lineWidth: 1
                            }
                        }],
                    },
                    legend: {   //범례
                        position: 'bottom',  //  범례위치 :'left', 'top', 'right'(default)
                        align: 'center',
                        labels: {      //범례 폰트
                            fontColor: 'gray',
                            fontSize: 14
                        }
                    },
                },
            });
            //박스2그래프 종료
            /////////////////////////
            /////////////////////////
            //박스4그래프 수정본 시작
            var chartArea_2 = document.getElementById('myChart_line_2').getContext('2d');

            // 화면 가로 사이즈 
            var screenWidth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;

            //화면 가로가 2000px 보다 커지면 00~ 03시까지의 그래프만 출력 
            var labels = screenWidth > 2000 ? ['00', '01', '02', '03'] : ['00', '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23'];

            //var currentDate = new Date();
            //currentDate.setDate(currentDate.getDate() - 1);
            //// 포맷 "2023-??-??"
            //var formattedDate = currentDate.toISOString().split('T')[0];
            var _label = formattedDate + " 방문자";
            var myChart_2 = new Chart(chartArea_2, {
                type: 'bar',
                data: {
                    labels: labels,
                    datasets: [{
                        label: _label,
                        data: [12, 23, 13, 45, 32, 43, 33, 73, 43, 13, 63, 33, 43, 13, 22, 101, 55, 77, 44, 41, 33, 22, 48, 55],
                        backgroundColor: 'rgba(17, 92, 94, 0.2)',
                        borderColor: 'rgba(17, 92, 94, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    layout: {
                        padding: 0
                    },
                    legend: {
                        labels: {
                            fontColor: "gray",
                            fontSize: 18
                        }
                    },
                    scales: {
                        xAxes: [{
                            ticks: {
                                fontColor: 'rgba(17, 92, 94, 1)',
                                fontSize: 14
                            },
                            gridLines: {
                                color: 'rgba(17, 92, 94, 1)',
                                lineWidth: 1
                            }
                        }],
                        yAxes: [{
                            ticks: {
                                stepSize: 60,
                                beginAtZero: true,
                                fontColor: 'rgba(17, 92, 94, 1)',
                                fontSize: 14

                            },
                            gridLines: {
                                color: 'rgba(17, 92, 94, 1)',
                                lineWidth: 1
                            }
                        }],

                    },
                    legend: {
                        position: 'bottom',
                        align: 'center',
                        labels: {
                            fontColor: 'gray',
                            fontSize: 14
                        }
                    },
                },
            });
            //박스4그래프 수정본 종료
        });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--대쉬보드 전체 영역--%>
    <div class="all_Ds_Area">
        <div class="ds_Block">
            <%--상품관리 영역--%>
            <div class="ds_Box_1">
                <%--타이틀영역--%>
                <div class="ds_Box_Title_Area">
                    <div class="ds_Box_Title middle-font">상품관리</div>
                </div>
                <%--상품관리 박스 내용 하단 영역--%>
                <div class="ds_Box_1_Bottom_Area">
                    <%--결제정보 관련영역--%>
                    <div class="ds_Box_1_Bottom_1">
                        <div class="redeem_Icon_Area main_color">
                            <span class="material-icons-outlined" id="redeem_Icon">redeem</span>
                        </div>
                        <div class="ds_Box_1_Bottom_1_Info">
                            <%--결제대기--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="ds_Box_1_Bottom_1_Record_Info lower-font">결제대기</div>
                                <div class="ds_Recorde_Count">
                                    <span class="big-font main_color">0</span>
                                    <span class="lowerst-font mono_main_color">건</span>
                                </div>
                            </div>
                            <%--신규주문--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="ds_Box_1_Bottom_1_Record_Info lower-font">신규주문</div>
                                <div class="ds_Recorde_Count">
                                    <span class="big-font main_color">0</span>
                                    <span class="lowerst-font mono_main_color">건</span>
                                </div>
                            </div>
                            <%--예약구매--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="lowerst-font mono_sub_color">예약구매</div>
                                <div class="ds_Recorde_Count">
                                    <span class="lowerst-font mono_sub_color">0</span>
                                    <span class="lowerst-font mono_sub_color">건</span>
                                </div>
                            </div>
                            <%--정기구독--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="lowerst-font mono_sub_color">정기구독</div>
                                <div class="ds_Recorde_Count">
                                    <span class="lowerst-font mono_sub_color">0</span>
                                    <span class="lowerst-font mono_sub_color">건</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--배송정보 관련영역--%>
                    <div class="ds_Box_1_Bottom_2">
                        <div class="sub_point_color">
                            <span class="material-icons-outlined" id="local_shipping_Icon">local_shipping</span>
                        </div>
                        <div class="ds_Box_2_Bottom_1_Info">
                            <%--배송준비--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="ds_Box_1_Bottom_1_Record_Info lower-font">배송준비</div>
                                <div class="ds_Recorde_Count">
                                    <span class="big-font sub_point_color">0</span>
                                    <span class="lowerst-font mono_main_color">건</span>
                                </div>
                            </div>
                            <%--배송중--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="ds_Box_1_Bottom_1_Record_Info lower-font">배송중</div>
                                <div class="ds_Recorde_Count">
                                    <span class="big-font sub_point_color">0</span>
                                    <span class="lowerst-font mono_main_color">건</span>
                                </div>
                            </div>
                            <%--배송완료--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="ds_Box_1_Bottom_1_Record_Info lower-font">배송완료</div>
                                <div class="ds_Recorde_Count">
                                    <span class="big-font sub_point_color">0</span>
                                    <span class="lowerst-font mono_main_color">건</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <%--클레임/정산 영역--%>
            <div class="ds_Box_1">
                <%--타이틀영역--%>
                <div class="ds_Box_Title_Area">
                    <div class="ds_Box_Title middle-font">클레임/정산</div>
                </div>
                <%--클레임/정산 박스 내용 하단 영역--%>
                <div class="ds_Box_1_Bottom_Area">
                    <%--취소,반품,교환 관련영역--%>
                    <div class="ds_Box_1_Bottom_1">
                        <div class="redeem_Icon_Area main_color">
                            <span class="material-icons-outlined" id="replay_Icon">replay</span>
                        </div>
                        <div class="ds_Box_1_Bottom_1_Info">
                            <%--취소요청--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="ds_Box_1_Bottom_1_Record_Info lower-font">취소요청</div>
                                <div class="ds_Recorde_Count">
                                    <span class="big-font main_color">0</span>
                                    <span class="lowerst-font mono_main_color">건</span>
                                </div>
                            </div>
                            <%--반품요청--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="ds_Box_1_Bottom_1_Record_Info lower-font">반품요청</div>
                                <div class="ds_Recorde_Count">
                                    <span class="big-font main_color">0</span>
                                    <span class="lowerst-font mono_main_color">건</span>
                                </div>
                            </div>
                            <%--반품수거완료--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="lowerst-font mono_sub_color">반품수거완료</div>
                                <div class="ds_Recorde_Count">
                                    <span class="lowerst-font mono_sub_color">0</span>
                                    <span class="lowerst-font mono_sub_color">건</span>
                                </div>
                            </div>
                            <%--교환요청--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="ds_Box_1_Bottom_1_Record_Info lower-font">교환요청</div>
                                <div class="ds_Recorde_Count">
                                    <span class="big-font main_color">0</span>
                                    <span class="lowerst-font mono_main_color">건</span>
                                </div>
                            </div>
                            <%--교환수거완료--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="lowerst-font mono_sub_color">교환수거완료</div>
                                <div class="ds_Recorde_Count">
                                    <span class="lowerst-font mono_sub_color">0</span>
                                    <span class="lowerst-font mono_sub_color">건</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--구매 관련영역--%>
                    <div class="ds_Box_1_Bottom_2">
                        <div class="sub_point_color">
                            <span class="material-icons-outlined" id="paid_Icon">paid</span>
                        </div>
                        <div class="ds_Box_2_Bottom_1_Info">
                            <%--구매확정--%>
                            <div class="ds_Box_1_Bottom_1_Record">
                                <div class="ds_Box_1_Bottom_1_Record_Info lower-font">구매확정</div>
                                <div class="ds_Recorde_Count">
                                    <span class="big-font sub_point_color">0</span>
                                    <span class="lowerst-font mono_main_color">건</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="ds_Block">
            <%--상품관리(그래프) 영역--%>
            <div class="ds_Box_2">
                <%--타이틀영역--%>
                <div class="ds_Box_Title_Area">
                    <div class="ds_Box_Title middle-font">상품관리</div>
                </div>
                <%--버튼(결제건수, 결제지수, 결제금액) 영역--%>
                <div class="ds_Box_2_Btn_Area">
                    <%--결제건수버튼 디폴트여서 ds_Box_2_1_Btn_Clicked 클래스 부여--%>
                    <div class="pay_Btn lowerst-font ds_Box_2_1_Btn_Clicked" id="payers_Num" data-value="ds_Box_2_Graph_1">결제건수</div>
                    <div class="pay_Btn lowerst-font" id="payments_Num" data-value="ds_Box_2_Graph_2">결제자수</div>
                    <div class="pay_Btn lowerst-font" id="payment_Amount" data-value="ds_Box_2_Graph_3">결제금액</div>
                </div>
                <%--전체 그래프 영역--%>
                <div class="ds_Box_2_Graph_Area">
                    <%--결제건수 그래프--%>
                    <div class="ds_Box_2_Graph"id="ds_Box_2_Graph_1">
                        <canvas id="myChart_line" ></canvas>
                    </div>
                    <%--결제지수 그래프--%>
                    <div class="ds_Box_2_Graph"id="ds_Box_2_Graph_2"></div>
                    <%--결제금액 그래프--%>
                    <div class="ds_Box_2_Graph"id="ds_Box_2_Graph_3"></div>
                </div>
            </div>
            <%--미답변 문의 영역--%>
            <div class="ds_Box_2">
                <%--타이틀영역--%>
                <div class="ds_Box_Title_Area">
                    <div class="ds_Box_Title middle-font">미답변 문의</div>
                </div>
                <%--상품문의, 고객문의 영역--%>
                <div class="ds_Box_2_Top_Area">
                    <%--상품문의--%>
                    <%--상품문의가 디폴트라 ds_Box_2_2_Btn_Clicked 클래스 부여--%>
                    <div class="ds_Box_2_Top_Wrap ds_Box_2_2_Btn_Clicked" id="ds_Box_2_Top_Left">
                        <div class="ds_Box_2_Top">
                            <div class="ds_Box_2_Top_Icon_Area">
                                <span class="material-icons-outlined" id="production_quantity_limits_Icon">production_quantity_limits</span>
                            </div>
                            <div class="ds_Box_2_Top_Txt lowerst-font">상품문의</div>
                            <div>
                                <span class="ds_Box_2_Top_Info_1 big-font">0</span>
                                <span class="ds_Box_2_Top_Info_2 lowerst-font">건</span>
                            </div>
                        </div>
                    </div>

                    <%--고객문의--%>
                    <div class="ds_Box_2_Top_Wrap" id="ds_Box_2_Top_Right">
                        <div class="ds_Box_2_Top">
                            <div class="ds_Box_2_Top_Icon_Area">
                                <span class="material-icons-outlined" id="face_Icon">face</span>
                            </div>
                            <div class="ds_Box_2_Top_Txt lowerst-font">고객문의</div>
                            <div>
                                <span class="ds_Box_2_Top_Info_1 big-font">0</span>
                                <span class="ds_Box_2_Top_Info_2 lowerst-font">건</span>
                            </div>
                        </div>
                    </div>
                </div>
                <%--미답변 문의 컨텐츠 영역--%>
                <div class="ds_Box_2_Contents_Area">
                    <%--상품문의 관련 컨텐츠 영역--%>
                    <div class="ds_Box_2_Content"id="product_Inquiry_Content">
                        <%--컨텐츠 개별 레코드 1--%>
                        <div class="product_Inquiry_Content_Record">
                            <div class="product_Inquiry_Content_Flag lower-font main_color">Q</div>
                            <div class="product_Inquiry_Content_Record_Info">
                                <div class="product_Inquiry_Content_Title lower-font">상품문의제목 입니다.</div>
                                <div class="lowerst-font mono_dea_color">2023.06.22 10:46</div>
                            </div>
                        </div>
                        <%--컨텐츠 개별 레코드 2--%>
                        <div class="product_Inquiry_Content_Record">
                            <div class="product_Inquiry_Content_Flag lower-font main_color">Q</div>
                            <div class="product_Inquiry_Content_Record_Info">
                                <div class="product_Inquiry_Content_Title lower-font">상품문의제목 입니다.</div>
                                <div class="lowerst-font mono_dea_color">2023.06.22 10:46</div>
                            </div>
                        </div>
                         <%--컨텐츠 개별 레코드 3--%>
                        <div class="product_Inquiry_Content_Record">
                            <div class="product_Inquiry_Content_Flag lower-font main_color">Q</div>
                            <div class="product_Inquiry_Content_Record_Info">
                                <div class="product_Inquiry_Content_Title lower-font">문의제목 입니다.문의제목 입니다.문의제목 입니다.문의제목 입니다.문의제목 입니다.문의제목 입니다.문의제목 입니다.</div>
                                <div class="lowerst-font mono_dea_color">2023.06.22 10:46</div>
                            </div>
                        </div>
                        <%--컨텐츠 개별 레코드 4--%>
                         <div class="product_Inquiry_Content_Record">
                            <div class="product_Inquiry_Content_Flag lower-font main_color">Q</div>
                            <div class="product_Inquiry_Content_Record_Info">
                                <div class="product_Inquiry_Content_Title lower-font">상품문의제목 입니다.</div>
                                <div class="lowerst-font mono_dea_color">2023.06.22 10:46</div>
                            </div>
                        </div>
                    </div>
                    <%--고객문의 관련 컨텐츠 영역--%>
                    <div class="ds_Box_2_Content"id="customer_Inquiry_Content">
                        <%--컨텐츠 개별 레코드 1--%>
                        <div class="product_Inquiry_Content_Record">
                            <div class="product_Inquiry_Content_Flag lower-font main_color">Q</div>
                            <div class="product_Inquiry_Content_Record_Info">
                                <div class="product_Inquiry_Content_Title lower-font">고객문의제목 입니다.</div>
                                <div class="lowerst-font mono_dea_color">2023.06.22 10:46</div>
                            </div>
                        </div>
                        <%--컨텐츠 개별 레코드 2--%>
                        <div class="product_Inquiry_Content_Record">
                            <div class="product_Inquiry_Content_Flag lower-font main_color">Q</div>
                            <div class="product_Inquiry_Content_Record_Info">
                                <div class="product_Inquiry_Content_Title lower-font">고객문의제목 입니다.</div>
                                <div class="lowerst-font mono_dea_color">2023.06.22 10:46</div>
                            </div>
                        </div>
                        <%--컨텐츠 개별 레코드 3--%>
                        <div class="product_Inquiry_Content_Record">
                            <div class="product_Inquiry_Content_Flag lower-font main_color">Q</div>
                            <div class="product_Inquiry_Content_Record_Info">
                                <div class="product_Inquiry_Content_Title lower-font">고객문의제목 입니다.</div>
                                <div class="lowerst-font mono_dea_color">2023.06.22 10:46</div>
                            </div>
                        </div>
                        <%--컨텐츠 개별 레코드 4--%>
                        <div class="product_Inquiry_Content_Record">
                            <div class="product_Inquiry_Content_Flag lower-font main_color">Q</div>
                            <div class="product_Inquiry_Content_Record_Info">
                                <div class="product_Inquiry_Content_Title lower-font">고객문의제목 입니다.</div>
                                <div class="lowerst-font mono_dea_color">2023.06.22 10:46</div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--미답변 문의 하단 문의관리버튼 영역--%>
                <div class="ds_Box_2_2_Btn_Area">
                    <div class="inquiry_Management_Btn lowerst-font">문의관리 ></div>
                </div>

            </div>
        </div>
        
        <div class="ds_Block" >
            <%--임시로 display none 처리--%>
            <%--판매지연 영역--%>
            <div class="ds_Box_3"style="display:none;">
                <%--타이틀영역--%>
                <div class="ds_Box_Title_Area">
                    <div class="ds_Box_Title middle-font">판매지연</div>
                </div>
                <%--판매지연 컨텐츠 영역--%>
                <div class="ds_Box_3_Contents_Area">
                    <div class="ds_Box_3_Contents">
                        <%--신규주문 지연--%>
                        <div class="ds_Box_3_Contents_Info_Left">
                            <div class="ds_Box_3_Contents_Info_1 lowerst-font mono_sub_color">신규주문 지연</div>
                            <div class="ds_Box_3_Contents_Info_2 middle-font main_color">0</div>
                        </div>
                        <%--오늘출발 지연--%>
                        <div class="ds_Box_3_Contents_Info_Left">
                            <div class="ds_Box_3_Contents_Info_1 lowerst-font mono_sub_color">오늘출발 지연</div>
                            <div class="ds_Box_3_Contents_Info_2 middle-font main_color">0</div>
                        </div>
                        <%--취소 지연--%>
                        <div class="ds_Box_3_Contents_Info_Left">
                            <div class="ds_Box_3_Contents_Info_1 lowerst-font mono_sub_color">취소 지연</div>
                            <div class="ds_Box_3_Contents_Info_2 middle-font main_color">0</div>
                        </div>
                        <%--반품 지연--%>
                        <div class="ds_Box_3_Contents_Info_Left">
                            <div class="ds_Box_3_Contents_Info_1 lowerst-font mono_sub_color">반품 지연</div>
                            <div class="ds_Box_3_Contents_Info_2 middle-font main_color">0</div>
                        </div>
                        <%--교환 지연--%>
                        <div class="ds_Box_3_Contents_Info_Left">
                            <div class="ds_Box_3_Contents_Info_1 lowerst-font mono_sub_color">교환 지연</div>
                            <div class="ds_Box_3_Contents_Info_2 middle-font main_color">0</div>
                        </div>
                    </div>
                </div>
            </div>
            <%--상품 영역--%>
            <div class="ds_Box_3 ds_Box_3_Big">
                <%--타이틀영역--%>
                <div class="ds_Box_Title_Area">
                    <div class="ds_Box_Title middle-font">상품</div>
                </div>
                <%--상품 컨텐츠 영역--%>
                <div class="ds_Box_3_Contents_Area"id="ds_Box_3_Product_Area">
                    <div class="ds_Box_3_Contents_Left_Area">
                        <div class="ds_Box_3_Contents_Left">
                            <div class="ds_Box_3_Contents_Left_Record">
                                <div class="ds_Box_3_Contents_Record_Title lower-font">판매중 상품</div>
                                <div class="ds_Box_3_Contents_Info_Right">
                                    <span class="big-font main_color">0</span>
                                    <span class="lowerst-font">건</span>
                                </div>
                            </div>
                            <div class="ds_Box_3_Contents_Left_Record">
                                <div class="ds_Box_3_Contents_Record_Title lower-font">판매중지 상품</div>
                                <div class="ds_Box_3_Contents_Info_Right">
                                    <span class="big-font main_color">0</span>
                                    <span class="lowerst-font">건</span>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <div class="ds_Box_3_Contents_Right_Area">
                        <div class="ds_Box_3_Contents_Record_Title lower-font">품절 상품</div>
                        <div class="ds_Box_3_Contents_Info_Right">
                            <span class="big-font main_color">0</span>
                            <span class="lowerst-font">건</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ds_Block">
            <%--스토어 고객 현황 영역--%>
            <div class="ds_Box_4">
                <%--타이틀영역--%>
                <div class="ds_Box_Title_Area">
                    <div class="ds_Box_Title middle-font">스토어 고객 현황</div>
                </div>
                <%--스토어 고객 현황 컨텐츠 영역--%>
                <div class="ds_Box_4_Contents_Area">
                    <div class="ds_Box_4_Contents_Left">
                        <div class="ds_Box_4_Contents_Left_Info">
                            <div class="ds_Box_4_Contents_Left_Info_1 lower-font">유입 수</div>
                            <div class="ds_Box_4_Contents_Left_Info_2 lowerst-font mono_sub_color">(어제 시간별)</div>
                        </div>
                        <div class="ds_Box_4_Contents_Left_Info_Count">
                            <div class="ds_Box_4_Contents_Left_Info_Count_Wrap">
                                <span class="ds_Box_4_Contents_Left_Info_Count_1 big-font main_color">997</span>
                                <span class="ds_Box_4_Contents_Left_Info_Count_2 lowerst-font mono_main_color">회</span>
                            </div>
                            
                        </div>

                    </div>
                    <%--그래프 영역--%>
                    <div class="ds_Box_4_Contents_Right">
                        <div class="ds_Box_4_Contents_Right_Graph_Area">
                            <canvas id="myChart_line_2"></canvas>
                        </div>
                    </div>
                </div>
                
            </div>
             <%--리뷰 영역--%>
            <div class="ds_Box_4">
                <%--타이틀영역--%>
                <div class="ds_Box_Title_Area">
                    <div class="ds_Box_Title middle-font">리뷰<span class="ds_Box_Sub_Title lowerst-font mono_sub_color">&nbsp;&nbsp;&nbsp;최근 1주일 기준</span></div>
                </div>
                <%--컨텐츠 영역--%>
                <div class="ds_Box_4_Contents_Area_2">
                    <div class="ds_Box_4_Contents_Record_Area">
                        <%--새로 작성된 리뷰--%>
                        <div class="ds_Box_4_Contents_Record">
                            <div class="ds_Box_4_Contents_Record_Info_1 lower-font sub_point_color">새로 작성된 리뷰</div>
                            <div class="ds_Box_4_Contents_Record_Info_2">
                                  <span class="big-font sub_point_color">0</span>
                                  <span class="lowerst-font sub_point_color">건</span>
                            </div>
                        </div>
                        <%--평점 낮은 리뷰--%>
                        <div class="ds_Box_4_Contents_Record" id="ds_Box_4_Contents_Division_Record">
                            <div class="ds_Box_4_Contents_Record_Info_1 lower-font mono_sub_color">평점 낮은 리뷰</div>
                            <div class="ds_Box_4_Contents_Record_Info_2">
                                  <span class="big-font mono_sub_color">0</span>
                                  <span class="lowerst-font mono_sub_color">건</span>
                            </div>
                        </div>
                        <%--리뷰 이벤트--%>
                        <div class="ds_Box_4_Contents_Record">
                            <div class="ds_Box_4_Contents_Record_Info_1 lower-font mono_sub_color">리뷰 이벤트</div>
                            <div class="ds_Box_4_Contents_Record_Info_2">
                                  <span class="big-font mono_sub_color">0</span>
                                  <span class="lowerst-font mono_sub_color">건</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

     </div>

</asp:Content>
