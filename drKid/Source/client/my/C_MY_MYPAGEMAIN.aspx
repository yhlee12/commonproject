﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_MY_MYPAGEMAIN.aspx.cs" Inherits="drKid.Source.client.my.C_MY_MYPAGEMAIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style>
         #sub_content {
            padding: 7rem 0;
            position: relative;
            z-index: 1;
        }
        .sub_layout {
            width: 95rem;
            max-width: 100%;
            margin: 0 auto;
            position: relative;
            height: 100%;
        }
        .main_Box {
            padding: 0px 20px;
            max-width: 1340px;
            margin: 0 auto;
        }
        .title_Bar_Wrap {
            display: flex;
            align-items: center;
            gap: 0px 10px;
        }
        .title_Info_Bar_Area {
            display: flex;
            width: 100%;
            height: 220px;
            text-align: center;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
        }
        .title_Info_Bar_Section {
            width:calc(100% / 4);
        }
        .title_Info_Content_Area {
            width: 100%;
            height: 100%;
            padding: 25px 0px;
            cursor:pointer;
        }
        .title_Info_Content_border {
            border-right: 1px solid #CCCCCC;
            padding: 10px 0px;
            height: 100%;
            display: grid;
            align-items: center;
        }


        /*마이페이지 수정 0728*/

        /*공통*/
        .title_Info_Count_Area{
	        cursor:pointer;
        }
        .title_Bar { 
            width: 289px;
            height: 220px;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
            padding:10px;
        }
        .title_Bar_Top { 
            width: 100%;
            height: 70%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .title_Bar_Top_Profile_L {
            width: 90px;
            height: 90px;
        }
        #sentiment_Icon {
            font-size: 90px !important;
            color: #b5b5b5dd;
        }
        .Profile_R_Info1 {
           font-weight: 600;
        }
        .Profile_R_Info2 {
           font-weight: 400;
        }
        .title_Bar_Top_Profile_R {
            height: 90px;
            padding: 20px 14px;
        }

        .title_Bar_Bottom { 
            width: 100%;
            height: 30%;
            border-top: 1px solid #CCCCCC;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 25px 0px 15px 0px;
            gap: 0px 35px;
        }
        .title_Bar_Bottom_Info1 , .title_Bar_Bottom_Info3 {
            font-weight: 400;
        }
        .title_Bar_Bottom_Info2 , .title_Bar_Bottom_Info4{
            font-weight: 700;
        }
        .share_Btn {
            background: #343434;
            width: 250px;
            height: 70px;
            color: #FFC609;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0px 5px;
            line-height: 70px;
            text-align: center;
            border-radius: 12px;
            margin-bottom: 20px;
            font-weight:500;
            cursor:pointer;
        }
        #insert_emoticon {
           font-size: 22px !important;
        }
        /*공통*/
        .user_Point_Area {
            display: flex;
            padding: 0px 0px 40px 0px;
            width: 1000px;
            gap: 0px 20px;
        }

        .user_More_Point_Area {
            width: 330px;
            height: 385px;
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border-radius: 12px;
            border: 1px solid #CCCCCC;
        }
        .user_More_Point_Area_T {
            width: 100%;
            text-align: center;
            height: 150px;
            background: var(--main_color);
            padding: 32px;
            border-radius: 12px 12px 0px 0px;
        }
        .user_More_Point_Area_B {
             width: 100%;
             height: 235px;
        }
        .user_More_Point_Area_B_T ,.user_More_Point_Area_B_B {
             height:50%;
        }
        .point {
            font-size: 50px;
            font-weight: 600;
            text-align: center;
            height: 117px;
            line-height: 117px;
        }
        .point_info {
            font-size: 24px;
            font-weight:400;
        }
        .point_Txt {
            font-size: 16px;
            font-weight: 600;
            text-align: center;
            height: 117px;
            line-height: 117px;
        }
        .user_Name {
            color: #ffffff;
            font-weight: 600;
        }
        .user_Name_Info {
             font-weight: 400;
        }
        .user_More_Point_Txt {
            color:#ffffff;
        }
        .under_Line {
            text-decoration:underline;
        }
        .inline_flex {
            display: inline-flex;
        }
        .user_Grade_Graph_Area {
            width: 330px;
            height: 385px;
            background: #FFFFFF 0% 0% no-repeat padding-box;
            border-radius: 12px;
            border: 1px solid #CCCCCC;
        }
        .user_Grade_Graph_Area_T {
            height: 105px;
            width: 100%;
            text-align:center;
            padding:10px;
        }
        .user_Grade_Graph_Area_M {
            width: 100%;
            height: 175px;
        }
        .user_Grade_Graph_Area_B {
            height: 105px;
            width: 100%;
            text-align:center;
            padding:10px;
        }
        .percent {
            font-size: 28px;
            font-weight: 600;
        }
        .font_weight_500 {
            font-weight:500;
        }
        /*마이페이지 수정 0728*/




        .title_Info_Bar {
            width: 1000px;
            height: 220px;
            border: 1px solid #CCCCCC;
            border-radius: 12px;
        }
        .title_Info {
            font-weight:600;
        }
        .material-icons-outlined {
            font-size: 50px !important;
        }
        .title_Info_Count {
            font-size:22px;
            font-weight:600;
        }
        .KeyDni_Top_Title {
            font-size:28px;
            font-weight:600;
        }
        #mypage_Btn {
            cursor:pointer;
        }
        .KeyDni_Wrap {
            width: 290px;
        }
        .KeyDni_Area {
            width:100%;
        }
        .KeyDni_Top_Title_Area {
            padding: 0px 0px 20px 0px;
        }
        .KeyDni_Box {
            border-top: 1px solid #CCCCCC;
            padding: 0px 0px 10px 0px;
        }
        .KeyDni_Title_Info {
            padding: 20px 0px;
            font-weight: 600;
        }
        .KeyDni_Info {
             padding: 0px 0px 5px 0px;
             color:#8F8F8F;
             font-weight: 400;
             cursor:pointer;
        }
        .all_Bottom_Area {
            display: flex;
            gap:0px 50px;
            padding: 45px 0px 0px 0px;
        }
        .Bottom_Area {
            width:100%;
        }
        .progress_Order_Title_Area {
            padding: 0px 0px 20px 0px;
        }
        .order_Step_Top_Area {
            display: flex;
            align-items: center;
        }
        .order_Step_Area {
            width: 140px;
            height: 130px;
            text-align: center;
            display: grid;
            padding: 20px;
            align-items: center;
        }
        .order_Step_Count {
            font-weight:600;
            font-size:30px
        }
        .order_Step_Info {
            font-weight:500;
        }
        .arrow-sub:after {
            font-size: 70px;
            line-height: 70px;
        }
        .order_Step_All_Box ,.new_Order_All_Box {
            display:flex;
            border-top: 1px solid #262626;
            width:1000px;

        }
        .order_Step_Bottom_Info {
            color:#828282;
        }
        .order_Step_Bottom_Info_Count {
            font-weight:600;
        }
        .order_Step_Bottom_Area {
            display: flex;
            justify-content: center;
         
            width:1000px;
        }
        .order_Step_Bottom_Area_2 {
            display: flex;
            justify-content: center;
            gap: 0px 140px;
            border-top: 1px solid #CCCCCC;
            border-bottom: 1px solid #CCCCCC;
            padding: 10px;
            width:1000px;
        }
        .order_Step_Bottom_Info_Area {
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        .show_Order_List_Btn {
            color:#8F8F8F;
            cursor:pointer;
        }
        .new_Order_Title_Area {
            display: flex;
            justify-content: space-between;
            align-items: center;
             padding: 0px 0px 20px 0px;
                 border-bottom: 1px solid #262626;
        }
        .new_Order_Area {
            padding:40px 0px 0px 0px;
            width:1000px;
        }
        .new_Order_List_Column_Area {
            display: flex;
            padding: 15px 40px;
            background: #F9F9F9;
            text-align: center;
            width:100%;

        }
        .new_Order_List_Column_1_Area {
             width:15%;
             /*width: 179.69px;*/
        }
        .new_Order_List_Column_2_Area {
            width:48%;
            /*width: 484.64px;*/
        }
        .new_Order_List_Column_3_Area {
            width:15%;
            /*width: 146.68px;*/
        }
        .new_Order_List_Column_4_Area {
            width:10%;
            /*width: 99.8px;*/
        }
        .new_Order_List_Column_5_Area {
            width:12%;
            /*width: 119.75px;*/
        }
        .new_Order_List_Column {
            font-weight:500;
        }
        .new_Order_List_Row_Area {
                width: 100%;
        }
        .new_Order_List_Row {
            display: flex;
            padding: 10px 40px;
            align-items: center;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
        }

        .new_Order_List_Row_1_Area {
            width:15%;
            cursor:pointer;
             /*width: 179.69px;*/
        }
        /*.new_Order_List_Row_2_Area_Wrap {
            display: grid;
            gap: 5px 0px;
        }*/
        .new_Order_List_Row_2_Area{
            /*width:48%;*/
            width: 441px;
            text-align: start;
            padding: 0px 0px 0px 30px;
            display: flex;
            align-items: center;
            gap: 0px 15px;
        }
        .new_Order_List_Row_3_Area {
             /*width:15%;*/
             width: 138px;
        }
        .new_Order_List_Row_4_Area {
             /*width:10%;*/
             width: 92px;
        }
        .new_Order_List_Row_5_Area {
             /*width:12%;*/
            width: 110px;
             display: grid;
             gap: 5px 0px;
        }
        .new_Order_List_Row_1 {
             color:#828282;
        }
        .new_Order_List_Row_1_1 {
            font-weight: 400;
        }

        .new_Order_List_Row_img {
            width:55px;
            height:55px;
            object-fit: cover;
        }
        .new_Order_List_Row_2_1_1 {
            color:#9F9F9F;
            font-weight: 400;
        }
        .new_Order_List_Row_2_1_2 {
            font-weight:500;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            overflow: hidden;
            width:350px;
        }
        .new_Order_List_Row_3 ,.new_Order_List_Row_4,
        .new_Order_List_Row_4_1 
        
        {
            font-weight:400;
        }
        .new_Order_List_Row_5 {
            font-weight:500;
            width: 90px;
            /*color: #115C5E;*/
            border: 1px solid #115C5E;
            margin: auto;
            padding: 3px 0px;
            cursor:pointer;

        }
        .new_Order_List_Row_5_1 {
            font-weight:500;
            border: 1px solid #115C5E;
            background: var(--main_color); /*#115C5E*/
            color: #ffffff;
            width: 90px;
            margin: auto;
            padding: 3px 0px;
            cursor:pointer;
        }
        .multi_Order_Row_Area {
            display: grid;
             gap: 10px 0px;
        }
        .multi_Order_Row {
            display: flex;
            align-items: center;
        }
        .new_Order_List_Filed {
            width:1000px;
             
        }
        .new_Order_List_Empty {
            color:#828282;
            padding: 40px 40px;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
        }
        .recently_Viewed_Area {
            padding: 40px 0px 0px 0px;
            width:1000px;
        }
        .recently_Viewed_Title_Area {
             padding: 0px 0px 20px 0px;
                 border-bottom: 1px solid #262626;
        }
        .recently_Viewed_Filed {
      
        }
        .recently_Viewed_Empty {
            color: #828282;
            padding: 40px 40px;
            text-align: center;
            border-bottom: 1px solid #CCCCCC;
        }
    
        /*최근 본 상품*/
        /*////////////////////////////////////////////////////////////////////////*/
        img {
            object-fit: contain;
        }
        .img_Hover {
            object-fit: cover;
        }
         .img_Hover:hover {
            transform: scale(1.1);
            transition: .6s;
        }
         .relation_Item_List {
            padding: 20px 20px;
            display: grid;
            grid-template-columns: repeat(3,1fr);
            gap: 15px 0px;
        }
        .relation_Item {
            width: 295px;
            margin:0 auto;
        }
        .relation_Item_img {
            width: 295px;
            height: 295px;
            border: 1px solid #707070;
            position: relative;
            overflow: hidden;
        }
        .relation_Item_flag {
            background: var(--main_color);;
            border-radius: 6px;
            color: #ffffff;
            width: 48px;
            padding: 2px 0px;
            text-align: center;
            position: absolute;
            top: 10px;
            left: 10px;
            z-index: 99999;
        }
        .relation_Item_All_Info_Area {
            padding: 10px 10px;
             width: 247px;
        }
        .relation_Item_Price_Area {
            display: flex;
            align-items: center;
        }
        
        .relation_Item_Discount_Price {
            font-weight:700;
            margin-right: 10px;
        }
        .relation_Item_Discount_Price_Before {
            color:#9F9F9F;
            text-decoration: line-through;
            margin-left: 10px;
            margin-right: 10px;
            
        }
        .relation_Item_Discount_Price_Percent {
            font-weight:700;
            margin-left: 10px;
            margin-right: 10px;
        }

        .relation_Item_Price_Info {
            border: 1px solid #D8D8D8;
            border-radius: 6px;
            width: fit-content;
            padding: 2px 4px;
        }
        .relation_Item_Price_Info_Area {
            /*display: grid;
            grid-template-columns: repeat(2,1fr);
            width: 295px;
            gap: 5px 0px;*/
            display: flex;
            gap: 10px; 
        }
        .magazine_Content_Flag_Product {
            width: 126px;
            background:var(--main_color);
            color: #ffffff;
            text-align: center;
            padding: 4px 0px;
            margin: 0 auto;
            border-radius: 6px;
            font-weight: 500;
        }
        .magazine_Content_Flag_Issue {
            width: 106px;
            background: #FFC609 0% 0% no-repeat padding-box;
            color: #ffffff;
            text-align: center;
            padding: 4px 0px;
            margin: 0 auto;
            border-radius: 6px;
            font-weight:500;
        }
        .magazine_Flag_Area {
            width: fit-content;
            padding: 0px 10px 0px 0px;
        }
    </style>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>

    <script>
        $(document).ready(function () {
            // 공통 메뉴
            var product = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(1)");
            var coupon = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(2)");
            var review = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(3)");
            var help = document.querySelector("#content > div > div.title_Bar_Wrap > div.title_Info_Bar_Area > div:nth-child(4)");

            product.addEventListener("click", function () {
                location.href = "/Source/client/my/C_MY_ORDERLIST.aspx"
            });
            coupon.addEventListener("click", function () {
                location.href = "/Source/client/my/C_MY_CUPONLIST.aspx"
            });
            review.addEventListener("click", function () {
                location.href = "/Source/client/my/C_MY_REVIEWLIST.aspx"
            });
            help.addEventListener("click", function () {
                location.href = "/Source/client/my/C_MY_HELPDESKLIST.aspx"
            });

            //그래프
            var chartArea = document.getElementById('myChart_donut').getContext('2d');
            var myChart = new Chart(chartArea, {
                // ①차트의 종류(String)
                type: 'doughnut',
                // ②차트의 데이터(Object)
                data: {
                    // ③x축에 들어갈 이름들(Array)
                    //labels: ['January','February','March','April','May','June'],
                    labels: [],
                    // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
                    datasets: [{
                        // ⑤dataset의 이름(String)
                        label: 'value',
                        // ⑥dataset값(Array)
                        data: [80, 100],
                        // ⑦dataset의 배경색(rgba값을 String으로 표현)
                        backgroundColor: [
                            //색상
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            //경계선 색상
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        // ⑨dataset의 선 두께(Number)
                        borderWidth: 1
                    }]
                },
                // ⑩차트의 설정(Object)
                options: {
                    title: {
                        display: false,
                        text: ['2023-2024', '판매량'],
                        fontSize: 15,
                        fontColor: ['black', 'gray']

                    },
                    // ⑪축에 관한 설정(Object)
                    scales: {
                        // ⑫y축에 대한 설정(Object)
                        y: {
                            // ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
                            beginAtZero: true
                        }
                    }
                }
            });
            $("#mypage_Btn").click(function () {
                location.href = "/Source/client/my/C_MY_MYPAGEMAIN.aspx";
            });
            //주문내역 바로가기
            $(".show_Order_List_Btn").click(function () {
                location.href = "/Source/client/my/C_MY_ORDERLIST.aspx";
            });
            //레프트메뉴 클릭 시 해당하는 페이지 이동
            $(".KeyDni_Info,.KeyDni_Info_Clicked,.title_Info_Count_Area").click(function () {
                var page = $(this).attr("id");
                if (page != '' && page != null) {
                    var page_type = page.split("_")[1]; //폴더가 CS인지 MY인지 추출
                    location.href = "/Source/client/" + page_type + "/"+ page + ".aspx";
                }
                else {
                    _popModal.Alert('', '준비중입니다.');
                }
            });
            //주문내역 디테일 페이지 이동
            $(".new_Order_List_Row_1_Area").click(function () {
                location.href = "/Source/client/my/C_MY_ORDERDETAIL.aspx";
            });
            

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content">
        <div class="sub_layout">
            <div id="content">
                <div class="main_Box">
                    <div class="title_Bar_Wrap">
                        <%--공통0728--%>
                        <%--타이틀--%>
                        <div class="title_Bar_Area">
                            <div class="title_Bar">
                                <div class="title_Bar_Top">
                                    <div class="title_Bar_Top_Profile_L">
                                        <span class="material-icons-outlined" id="sentiment_Icon">sentiment_satisfied_alt</span>
                                    </div>
                                    <div class="title_Bar_Top_Profile_R">
                                        <div class="middle-font main_color Profile_R_Info1">DrKeyDni <span class="lowerst-font">님</span></div>
                                        <div class="lower-font mono_sub_color Profile_R_Info2">디렉터 인플루언서</div>
                                    </div>
                                </div>
                                <div class="title_Bar_Bottom">
                                    <div class="lower-font title_Bar_Bottom_Info1">직팔로워 <span class="lower-font title_Bar_Bottom_Info2">12</span></div>
                                    <div class="lower-font title_Bar_Bottom_Info3">연계팔로워 <span class="lower-font title_Bar_Bottom_Info4">53</span></div>
                                </div>
                            </div>
                        </div>

                        <div class="title_Info_Bar_Area">
                            <%--주문/배송--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">redeem</span>
                                        </div>
                                        <div class="title_Info lower-font">주문/배송</div>
                                        <div class="title_Info_Count_Area" id="">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           <%--MY쿠폰--%>  <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">confirmation_number</span>
                                        </div>
                                        <div class="title_Info lower-font">MY쿠폰</div>
                                        <div class="title_Info_Count_Area" id="C_MY_CUPONLIST">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--리뷰--%> <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">drive_file_rename_outline</span>
                                        </div>
                                        <div class="title_Info lower-font">리뷰</div>
                                        <div class="title_Info_Count_Area" id="C_MY_REVIEWLIST">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--진행중 문의--%> <%--공통 0728--%>
                            <div class="title_Info_Bar_Section">
                                <div class="title_Info_Content_Area">
                                    <div class="title_Info_Content_border">
                                        <div class="title_Info_Content_Icon drkid_postive_color">
                                            <span class="material-icons-outlined">support_agent</span>
                                        </div>
                                        <div class="title_Info lower-font">진행중 문의</div>
                                        <div class="title_Info_Count_Area" id="">
                                            <span class="title_Info_Count drkid_postive_color">0</span>
                                            <span class="lower-font">개</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--전체 하단 영역--%>
                    <div class="all_Bottom_Area">
                        <%--My KeyDni--%>
                        <div class="KeyDni_Wrap">
                            <%--공통 0728--%>
                            <div class="big-font share_Btn"><span class="material-icons-outlined" id="insert_emoticon">insert_emoticon</span>친구초대</div>
                            <div class="KeyDni_Area">
                                <div class="KeyDni_Top_Title_Area">
                                    <div class="KeyDni_Top_Title" id="mypage_Btn">My KeyDni</div>
                                </div>
                                <%--My 셀럽#--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">My 셀럽#</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_CELEBRITY_EDIT">셀럽# 상품등록</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_CELEBRITY_LIST">셀럽# 상품목록</div>
                                    </div>
                                </div>
                                <%--쇼핑정보--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">쇼핑정보</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_ORDERLIST">주문/배송조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_DELIVERY">배송지 관리</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_CANSLEPRODUCT">취소/반품/교환 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REFUNDPRODUCT">환불/입금 조회</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_REWARD">리워드 현황</div>
                                    </div>
                                </div>
                                <%--고객센터--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">고객센터</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_HELPDESKLIST">나의 1:1 문의</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_ITEMDESKLIST">나의 상품 문의</div>
                                        <div class="KeyDni_Info lower-font" id="C_CS_QUESTIONLIST">자주 하는 질문</div>
                                        <div class="KeyDni_Info lower-font" id="C_CS_NOTICELIST">공지사항</div>
                                    </div>
                                </div>
                                <%--회원정보--%>
                                <div class="KeyDni_Box">
                                    <div class="KeyDni_Title_Info middle-font">회원정보</div>
                                    <div class="KeyDni_Info_Area">
                                        <div class="KeyDni_Info lower-font" id="C_MY_MODIFYINFO">회원정보 수정</div>
                                        <div class="KeyDni_Info lower-font" id="C_MY_MEMBERDEPARTURE">회원 탈퇴</div>
                                        <div class="KeyDni_Info lower-font logout_Btn">로그아웃</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--진행 중인 주문, 최근 주문 내역, 최근 본 상품 전체 영역--%>
                        <div class="Bottom_Area">
                            <%--수정0728 .user_Point_Area 마이페이지 메인에만 적용--%>
                            <div class="user_Point_Area">
                                <%--등급 그래프--%>
                                <div class="user_Grade_Graph_Area">
                                    <div class="user_Grade_Graph_Area_T">
                                        <div class="inline_flex">
                                            <div class="middle-font main_color font_weight_500">DrKeyDni </div>
                                            <div class="middle-font mono_sub_color">님,</div>
                                        </div>
                                        <div class="middle-font mono_sub_color">마이크로 인플루언서까지</div>
                                        <div class="inline_flex">
                                            <div class="middle-font main_color under_Line font_weight_500">180,000원 </div>
                                            <div class="middle-font mono_sub_color">&nbsp;남았어요!</div>
                                        </div>
                                    </div>

                                    <div class="user_Grade_Graph_Area_M">
                                        <div class="user_Grade_Graph">
                                            <canvas id="myChart_donut"></canvas>
                                        </div>
                                    </div>

                                    <div class="user_Grade_Graph_Area_B">
                                        <div class="lower-font mono_sub_color">등급달성률</div>
                                        <div class="main_color percent">75%</div>
                                    </div>

                                </div>
                                <%--추가포인트--%>
                                <div class="user_More_Point_Area">
                                    <div class="user_More_Point_Area_T">
                                        <div>
                                            <div class="middle-font user_Name">DrKeyDni <span class="middle-font user_Name_Info">님,</span></div>
                                            <div class="inline_flex">
                                                <div class="middle-font user_More_Point_Txt under_Line">'제품'</div>
                                                <div class="middle-font user_More_Point_Txt">은 잘 받으셨나요?</div>
                                            </div>
                                            <div class="middle-font user_More_Point_Txt">지금 바로</div>
                                        </div>
                                    </div>
                                    <div class="user_More_Point_Area_B">
                                        <div class="user_More_Point_Area_B_T">
                                            <div class="main_color point">5,000<span class="main_color point_info"> 원</span></div>
                                        </div>
                                        <div class="user_More_Point_Area_B_B">
                                            <div class="lower-font mono_sub_color point_Txt">추가로 받아가세요!</div>
                                        </div>
                                    </div>
                                </div>
                                <%--total 할인금--%>
                                <div class="user_More_Point_Area">
                                    <div class="user_More_Point_Area_T">
                                        <div>
                                            <div class="middle-font user_Name">DrKeyDni <span class="middle-font user_Name_Info">님,</span></div>
                                            <div class="inline_flex">
                                                <div class="middle-font user_More_Point_Txt">지금까지 받아가신</div>
                                            </div>
                                            <div class="middle-font user_More_Point_Txt">할인 금</div>
                                        </div>
                                    </div>
                                    <div class="user_More_Point_Area_B">
                                        <div class="user_More_Point_Area_B_T">
                                            <div class="main_color point">125,000<span class="main_color point_info"> 원</span></div>
                                        </div>
                                        <div class="user_More_Point_Area_B_B">
                                            <div class="lower-font mono_sub_color point_Txt">큰 사랑에 감사드려요!</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--진행 중인 주문--%>
                            <div class="progress_Order_Area">
                                <div class="progress_Order_Title_Area">
                                    <div class="progress_Order_Title KeyDni_Top_Title">진행 중인 주문</div>
                                </div>
                                <%--진행 중인 주문 전체--%>
                                <div class="order_Step_All_Box">
                                    <%--입금대기 박스--%>
                                    <div class="order_Step_Top_Area">
                                        <div class="order_Step_Area">
                                            <div class="order_Step_Count drkid_postive_color">0</div>
                                            <div class="order_Step_Info lower-font">입금대기</div>
                                        </div>
                                        <div class="next_Step_Icon_Area">
                                            <span class="drkid-icon arrow-sub right-arrow"></span>
                                        </div>
                                    </div>
                                    <%--step 아이콘--%>
                                    <div class="order_Step_Bottom_Area">
                                    </div>
                                    <%--결제완료 박스--%>
                                    <div class="order_Step_Top_Area">
                                        <div class="order_Step_Area">
                                            <div class="order_Step_Count drkid_postive_color">0</div>
                                            <div class="order_Step_Info lower-font">결제완료</div>
                                        </div>
                                        <div class="next_Step_Icon_Area">
                                            <span class="drkid-icon arrow-sub right-arrow"></span>
                                        </div>
                                    </div>
                                    <%--step 아이콘--%>
                                    <div class="order_Step_Bottom_Area">
                                    </div>
                                    <%--상품준비중 박스--%>
                                    <div class="order_Step_Top_Area">
                                        <div class="order_Step_Area">
                                            <div class="order_Step_Count drkid_postive_color">0</div>
                                            <div class="order_Step_Info lower-font">상품준비중</div>
                                        </div>
                                        <div class="next_Step_Icon_Area">
                                            <span class="drkid-icon arrow-sub right-arrow"></span>
                                        </div>
                                    </div>
                                    <%--step 아이콘--%>
                                    <div class="order_Step_Bottom_Area">
                                    </div>
                                    <%--배송중 박스--%>
                                    <div class="order_Step_Top_Area">
                                        <div class="order_Step_Area">
                                            <div class="order_Step_Count drkid_postive_color">0</div>
                                            <div class="order_Step_Info lower-font">배송중</div>
                                        </div>
                                        <div class="next_Step_Icon_Area">
                                            <span class="drkid-icon arrow-sub right-arrow"></span>
                                        </div>
                                    </div>
                                    <%--step 아이콘--%>
                                    <div class="order_Step_Bottom_Area">
                                    </div>
                                    <%--배송완료 박스--%>
                                    <div class="order_Step_Top_Area">
                                        <div class="order_Step_Area">
                                            <div class="order_Step_Count drkid_postive_color">0</div>
                                            <div class="order_Step_Info lower-font">배송완료</div>
                                        </div>
                                    </div>
                                </div>
                                <%--진행 중인 주문 하단 (취소,교환,반품 내역)--%>
                                <div class="order_Step_Bottom_Area_2">
                                    <%--취소 내역--%>
                                    <div class="order_Step_Bottom_Info_Area">
                                        <div class="order_Step_Bottom_Info lower-font">취소 내역</div>
                                        <div class="order_Step_Bottom_Info_Count middle-font drkid_postive_color">0</div>
                                    </div>
                                    <%--교환 내역--%>
                                    <div class="order_Step_Bottom_Info_Area">
                                        <div class="order_Step_Bottom_Info lower-font">교환 내역</div>
                                        <div class="order_Step_Bottom_Info_Count middle-font drkid_postive_color">0</div>
                                    </div>
                                    <%--반품 내역--%>
                                    <div class="order_Step_Bottom_Info_Area">
                                        <div class="order_Step_Bottom_Info lower-font">반품 내역</div>
                                        <div class="order_Step_Bottom_Info_Count middle-font drkid_postive_color">0</div>
                                    </div>
                                </div>
                            </div>
                            <%--최근 주문 내역--%>
                            <div class="new_Order_Area">
                                <div class="new_Order_Title_Area">
                                    <div class="progress_Order_Title KeyDni_Top_Title">최근 주문 내역</div>
                                    <div class="show_Order_List_Btn lower-font">주문내역 바로가기></div>
                                </div>
                                <div class="new_Order_List_Area">
                                    <%--최근 주문 내역 리스트--%>
                                    <div class="new_Order_List">
                                        <%--주문 내역 리스트 컬럼 (날짜/주문번호, 상품명/옵션 등등)--%>
                                        <div class="new_Order_List_Column_Area">
                                            <div class="new_Order_List_Column_1_Area">
                                                <div class="new_Order_List_Column lowerst-font">날짜/주문번호</div>
                                            </div>
                                            <div class="new_Order_List_Column_2_Area">
                                                <div class="new_Order_List_Column lowerst-font">상품명/옵션</div>
                                            </div>

                                            <div class="new_Order_List_Column_3_Area">
                                                <div class="new_Order_List_Column lowerst-font">상품금액/수량</div>
                                            </div>
                                            <div class="new_Order_List_Column_4_Area">
                                                <div class="new_Order_List_Column lowerst-font">주문상태</div>
                                            </div>
                                            <div class="new_Order_List_Column_5_Area">
                                                <div class="new_Order_List_Column lowerst-font">확인/리뷰</div>
                                            </div>

                                        </div>
                                        <%--최근 주문 내역 리스트 내용--%>
                                        <div class="new_Order_List_Filed">
                                            <%--조회내역이 없을때--%>
                                            <%--<div class="new_Order_List_Empty lowerst-font">조회내역이 없습니다.</div>--%>

                                            <%--조회내역이 있을때 개별 레코드--%>
                                            <div class="new_Order_List_Row_Area">
                                                <div class="new_Order_List_Row">
                                                    <%--날짜,주문번호--%>
                                                    <div class="new_Order_List_Row_1_Area">
                                                        <div class="new_Order_List_Row_1 lowerst-font">2023/06/12</div>
                                                        <div class="new_Order_List_Row_1_1 drkid_postive_color lowerst-font">20230612123456789</div>
                                                    </div>
                                                    <%--상품명/옵션 1개일 경우--%>
                                                    <div class="new_Order_List_Row_2_Area">
                                                        <div class="new_Order_List_Row_2">
                                                            <%--이미지--%>
                                                            <img src="/Source/client/image/magazine_list_test1.png" class="new_Order_List_Row_img">
                                                        </div>
                                                        <div class="new_Order_List_Row_2_1">
                                                            <div class="new_Order_List_Row_2_1_1 lowerst-font">신당케어</div>
                                                            <div class="new_Order_List_Row_2_1_2 lower-font">비건오메가3 (30일분)</div>
                                                        </div>
                                                    </div>
                                                    <%--상품금액/수량--%>
                                                    <div class="new_Order_List_Row_3_Area">
                                                        <div class="new_Order_List_Row_3">36000 / 1개</div>
                                                    </div>
                                                    <%--주문상태--%>
                                                    <div class="new_Order_List_Row_4_Area">
                                                        <div class="new_Order_List_Row_4 lowerst-font">입금완료</div>
                                                        <div class="new_Order_List_Row_4_1 lowerst-font">(배송준비중)</div>
                                                    </div>
                                                    <%--확인/리뷰--%>
                                                    <div class="new_Order_List_Row_5_Area">
                                                        <div class="new_Order_List_Row_5 lower-font main_color">구매확정</div>
                                                        <div class="new_Order_List_Row_5_1 lower-font">리뷰작성</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%--상품명이 2개 이상일때--%>
                                            <div class="new_Order_List_Row">
                                                <div class="new_Order_List_Row_1_Area">
                                                    <div class="new_Order_List_Row_1 lowerst-font">2023/06/12</div>
                                                    <div class="new_Order_List_Row_1_1 drkid_postive_color lowerst-font">20230612123456789</div>
                                                </div>
                                                <div class="multi_Order_Row_Area">
                                                    <div class="multi_Order_Row">
                                                        <div class="new_Order_List_Row_2_Area">
                                                            <div class="new_Order_List_Row_2">

                                                                <img src="/Source/client/image/magazine_list_test1.png" class="new_Order_List_Row_img">
                                                            </div>
                                                            <div class="new_Order_List_Row_2_1">
                                                                <div class="new_Order_List_Row_2_1_1 lowerst-font">신당케어</div>
                                                                <div class="new_Order_List_Row_2_1_2 lower-font">비건오메가3 (30일분) 긴 텍스트 테스트 입니다 긴 텍스트 테스트 입니다 긴 텍스트 테스트 입니다</div>
                                                            </div>
                                                        </div>
                                                        <div class="new_Order_List_Row_3_Area">
                                                            <div class="new_Order_List_Row_3">36000 / 1개</div>
                                                        </div>
                                                        <div class="new_Order_List_Row_4_Area">
                                                            <div class="new_Order_List_Row_4 lowerst-font">입금완료</div>
                                                            <div class="new_Order_List_Row_4_1 lowerst-font">(택배)</div>
                                                        </div>
                                                        <div class="new_Order_List_Row_5_Area">
                                                        </div>
                                                    </div>
                                                    <div class="multi_Order_Row">
                                                        <div class="new_Order_List_Row_2_Area">
                                                            <div class="new_Order_List_Row_2">
                                                                <img src="/Source/client/image/magazine_list_test1.png" class="new_Order_List_Row_img">
                                                            </div>
                                                            <div class="new_Order_List_Row_2_1">
                                                                <div class="new_Order_List_Row_2_1_1 lowerst-font">신당케어</div>
                                                                <div class="new_Order_List_Row_2_1_2 lower-font">비건오메가3 (30일분)</div>
                                                            </div>
                                                        </div>
                                                        <div class="new_Order_List_Row_3_Area">
                                                            <div class="new_Order_List_Row_3">36000 / 1개</div>
                                                        </div>
                                                        <div class="new_Order_List_Row_4_Area">
                                                            <div class="new_Order_List_Row_4 lowerst-font">입금완료</div>
                                                            <div class="new_Order_List_Row_4_1 lowerst-font">(택배)</div>
                                                        </div>
                                                        <div class="new_Order_List_Row_5_Area">
                                                            <div class="new_Order_List_Row_5 lower-font">구매확정</div>
                                                            <div class="new_Order_List_Row_5_1 lower-font">리뷰작성</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--최근 본 상품--%>
                            <div class="recently_Viewed_Area">
                                <div class="recently_Viewed_Title_Area">
                                    <div class="recently_Viewedr_Title KeyDni_Top_Title">최근 본 상품</div>
                                </div>

                                <div class="recently_Viewed_Filed_Area">
                                    <div class="recently_Viewed_Filed">
                                        <%--최근 본 상품 리스트 내용 , 없을 때--%>
                                        <%--<div class="recently_Viewed_Empty lowerst-font">최근 본 상품이 없습니다.</div>--%>
                                        <%--최근 본 상품 리스트 내용 , 있을 때--%>

                                        <%--체크--%>
                                        <div class="relation_Item_List">
                                            <%--연관상품 영역--%>
                                            <div class="relation_Item">
                                                <%--연관상품 이미지--%>
                                                <div class="relation_Item_img">
                                                    <div class="relation_Item_flag lowerst-font">BEST</div>
                                                    <img src="/Source/client/image/best_img.png" alt="best_content" class="img_Hover" />
                                                </div>
                                                <%--연관상품 관련 정보(회사, 상품명,가격,할인정보)영역--%>
                                                <div class="relation_Item_All_Info_Area">
                                                    <div class="relation_Company_Info lowerst-font">신당케어</div>
                                                    <div class="relation_Item_Name_Info middle-font">비건오메가3 (30일분)</div>
                                                    <div class="relation_Item_Price_Area">
                                                        <div class="relation_Item_Discount_Price big-font">36400</div>
                                                        <div class="relation_Item_Discount_Price_Before lower-font">56000</div>
                                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">35%</div>
                                                    </div>
                                                    <div class="relation_Item_Price_Info_Area">
                                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="relation_Item">
                                                <%--연관상품 이미지--%>
                                                <div class="relation_Item_img">
                                                    <div class="relation_Item_flag lowerst-font">BEST</div>
                                                </div>
                                                <%--연관상품 관련 정보(회사, 상품명,가격,할인정보)영역--%>
                                                <div class="relation_Item_All_Info_Area">
                                                    <div class="relation_Company_Info lowerst-font">신당케어</div>
                                                    <div class="relation_Item_Name_Info middle-font">비건오메가3 (30일분)</div>
                                                    <div class="relation_Item_Price_Area">
                                                        <div class="relation_Item_Discount_Price big-font">36400</div>
                                                        <div class="relation_Item_Discount_Price_Before lower-font">56000</div>
                                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">35%</div>
                                                    </div>
                                                    <div class="relation_Item_Price_Info_Area">
                                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="relation_Item">
                                                <%--연관상품 이미지--%>
                                                <div class="relation_Item_img">
                                                    <div class="relation_Item_flag lowerst-font">BEST</div>
                                                </div>
                                                <%--연관상품 관련 정보(회사, 상품명,가격,할인정보)영역--%>
                                                <div class="relation_Item_All_Info_Area">
                                                    <div class="relation_Company_Info lowerst-font">신당케어</div>
                                                    <div class="relation_Item_Name_Info middle-font">비건오메가3 (30일분)</div>
                                                    <div class="relation_Item_Price_Area">
                                                        <div class="relation_Item_Discount_Price big-font">36400</div>
                                                        <div class="relation_Item_Discount_Price_Before lower-font">56000</div>
                                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">35%</div>
                                                    </div>
                                                    <div class="relation_Item_Price_Info_Area">
                                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="relation_Item">
                                                <%--연관상품 이미지--%>
                                                <div class="relation_Item_img">
                                                    <div class="relation_Item_flag lowerst-font">BEST</div>
                                                </div>
                                                <%--연관상품 관련 정보(회사, 상품명,가격,할인정보)영역--%>
                                                <div class="relation_Item_All_Info_Area">
                                                    <div class="relation_Company_Info lowerst-font">신당케어</div>
                                                    <div class="relation_Item_Name_Info middle-font">비건오메가3 (30일분)</div>
                                                    <div class="relation_Item_Price_Area">
                                                        <div class="relation_Item_Discount_Price big-font">36400</div>
                                                        <div class="relation_Item_Discount_Price_Before lower-font">56000</div>
                                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">35%</div>
                                                    </div>
                                                    <div class="relation_Item_Price_Info_Area">
                                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
