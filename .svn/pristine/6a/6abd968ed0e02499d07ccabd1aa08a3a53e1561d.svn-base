<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_CATEGORY_firstPage.aspx.cs" Inherits="drKid.Source.client.member.category.C_CATEGORY_firstPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--06.15 이용호 main css 추가-->
    <link rel="stylesheet" href="/Source/client/css/main.css"/>
    <style>
        .best_txt {
            background: #115C5E;
            border-radius: 6px;
            color: #ffffff;
            width: 48px;
            padding: 2px 0px;
            text-align: center;
            position: absolute;
            top: 10px;
            left: 10px;
        }

        .slide_item  {
            height: 450px;
        }

        .affiliateMall_menu_main {
            font-size: 30px;
            color: #000;
            font-weight: 600;
            text-align: center;
            padding: 80px 0 20px;
        }
        .affiliateMall_menu_sub {
            padding: 40px 0 50px;
        }
        .affiliateMall_menu_sub > ul {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: auto;
            text-align: center;
        }
        .affiliateMall_menu_sub > ul > li {
            margin: 0 10px;
            padding: 5px 20px;
            border: 1px solid #d8d8d8;
            cursor: pointer;
        }
        .affiliateMall_menu_sub > ul > li:nth-child(2) {
            border-color:#115C5E;
            color:#115C5E;           
        }

        .affiliateMall_menu_sub > ul > li:hover {
            color: white;
            background-color:#115C5E;
            border-color:#115C5E;
        }
        .main_slider {
            max-width: 1300px;
            margin: auto;
        }
        .filter {
            padding: 80px 0 30px;
        }
        .filter_menu {
            display:flex;
            max-width: 1300px;
            height: 25px;
            margin: auto;
        }
        .filter_menu_front {
            display: flex;
        }
        .filter_menu_front > span {
            display: block;
            font-size: 18px;
            font-weight: 700;
        }
        .filter_menu_front > span:first-child {
            margin-right: 10px;
        }
        .filter_menu > ul {
            display: flex;
        }
        .filter_menu > ul > li {
            margin: 0 15px;
            font-size: 14px;
        }

        .affiliateMall_menu_sub > ul > li:first-child {
            background-color:#115C5E;
            color: white;
        }

        .filter_menu > ul > li:hover {
            font-weight: 600;
            color:#115C5E;
            border-bottom:1px solid #115C5E  ;
            overflow: hidden;
            cursor: pointer;
        }
        .best {
            padding-bottom: 50px;
        }
        .best_wrap_inner {
            padding: 0;
        }
        /*페이징관련*/
        .number-button-Area {
            padding: 40px 0px 80px;
        }
        .number-button-wrap {
            display: flex;
            justify-content: center;
        }

        .first_txt {
            color:#115C5E;
            border-bottom:1px solid #115C5E;
            font-weight: 700;
        }

        .second_txt {
            color:#9f9f9f;
        }

        .slide_prev_button {
            left: 10px;
        }

        .slide_next_button {
            right: 10px;
        }
        .slide_pagination {
            margin-bottom: 10px;
        }
        .slide_pagination > li {
          color: #4a8b8d;
          cursor: pointer;
          font-size: 40px;
        }
        .slide_pagination > li.active {
          color: #115c5e;
        }
        .header_inner {
            border-bottom: 1px solid
        }
    </style>

    <script>
        $(document).ready(function () {
            $('#hover11').click(function () {
                $('#hover11').css('background-color', '#115C5E');
                $('#hover11').css('border', '1px solid #115C5E');
                $('#hover11').css('font-weight', '400');
                $('#hover11').css('color', 'white');
                $('#hover12, #hover13, #hover14, #hover15, #hover16').css('background-color', '#fff');
                $('#hover12, #hover13, #hover14, #hover15, #hover16').css('border-color', '#d8d8d8');
                $('#hover12, #hover13, #hover14, #hover15, #hover16').css('color', '#111111');
            });

            $('#hover12').click(function () {
                $('#hover12').css('background-color', '#115C5E');
                $('#hover12').css('border', '1px solid #115C5E');
                $('#hover12').css('font-weight', '400');
                $('#hover12').css('color', 'white');
                $('#hover11, #hover13, #hover14, #hover15, #hover16').css('background-color', '#fff');
                $('#hover11, #hover13, #hover14, #hover15, #hover16').css('border-color', '#d8d8d8');
                $('#hover11, #hover13, #hover14, #hover15, #hover16').css('color', '#111111');
            });

            $('#hover13').click(function () {
                $('#hover13').css('background-color', '#115C5E');
                $('#hover13').css('border', '1px solid #115C5E');
                $('#hover13').css('font-weight', '400');
                $('#hover13').css('color', 'white');
                $('#hover11, #hover12, #hover14, #hover15, #hover16').css('background-color', '#fff');
                $('#hover11, #hover12, #hover14, #hover15, #hover16').css('border-color', '#d8d8d8');
                $('#hover11, #hover12, #hover14, #hover15, #hover16').css('color', '#111111');
            });

            $('#hover14').click(function () {
                $('#hover14').css('background-color', '#115C5E');
                $('#hover14').css('border-bottom', '1px solid #115C5E');
                $('#hover14').css('font-weight', '400');
                $('#hover14').css('color', 'white');
                $('#hover11, #hover13, #hover12, #hover15, #hover16').css('background-color', '#fff');
                $('#hover11, #hover13, #hover12, #hover15, #hover16').css('border-color', '#d8d8d8');
                $('#hover11, #hover13, #hover12, #hover15, #hover16').css('color', '#111111');
            });

            $('#hover15').click(function () {
                $('#hover15').css('background-color', '#115C5E');
                $('#hover15').css('border-bottom', '1px solid #115C5E');
                $('#hover15').css('font-weight', '400');
                $('#hover15').css('color', 'white');
                $('#hover11, #hover13, #hover14, #hover12, #hover16').css('background-color', '#fff');
                $('#hover11, #hover13, #hover14, #hover12, #hover16').css('border-color', '#d8d8d8');
                $('#hover11, #hover13, #hover14, #hover12, #hover16').css('color', '#111111');
            });

            $('#hover16').click(function () {
                $('#hover16').css('background-color', '#115C5E');
                $('#hover16').css('border-bottom', '1px solid #115C5E');
                $('#hover16').css('font-weight', '400');
                $('#hover16').css('color', 'white');
                $('#hover11, #hover13, #hover14, #hover15, #hover12').css('background-color', '#fff');
                $('#hover11, #hover13, #hover14, #hover15, #hover12').css('border-color', '#d8d8d8');
                $('#hover11, #hover13, #hover14, #hover15, #hover12').css('color', '#111111');
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('#hover5').click(function () {
                $('#hover5').css('color', '#115C5E');
                $('#hover5').css('border-bottom', '1px solid #115C5E');
                $('#hover5').css('font-weight', '700');
                $('#hover6, #hover7, #hover8, #hover9, #hover10').css('color', '#9f9f9f');
                $('#hover6, #hover7, #hover8, #hover9, #hover10').css('border-bottom-color', '#fff');
                $('#hover6, #hover7, #hover8, #hover9, #hover10').css('font-weight', '300');
            });

            $('#hover6').click(function () {
                $('#hover6').css('color', '#115C5E');
                $('#hover6').css('border-bottom', '1px solid #115C5E');
                $('#hover6').css('font-weight', '700');
                $('#hover5, #hover7, #hover8, #hover9, #hover10').css('color', '#9f9f9f');
                $('#hover5, #hover7, #hover8, #hover9, #hover10').css('border-bottom-color', '#fff');
                $('#hover5, #hover7, #hover8, #hover9, #hover10').css('font-weight', '300');
            });

            $('#hover7').click(function () {
                $('#hover7').css('color', '#115C5E');
                $('#hover7').css('border-bottom', '1px solid #115C5E');
                $('#hover7').css('font-weight', '700');
                $('#hover6, #hover5, #hover8, #hover9, #hover10').css('color', '#9f9f9f');
                $('#hover6, #hover5, #hover8, #hover9, #hover10').css('border-bottom-color', '#fff');
                $('#hover6, #hover5, #hover8, #hover9, #hover10').css('font-weight', '300');
            });

            $('#hover8').click(function () {
                $('#hover8').css('color', '#115C5E');
                $('#hover8').css('border-bottom', '1px solid #115C5E');
                $('#hover8').css('font-weight', '700');
                $('#hover6, #hover7, #hover5, #hover9, #hover10').css('color', '#9f9f9f');
                $('#hover6, #hover7, #hover5, #hover9, #hover10').css('border-bottom-color', '#fff');
                $('#hover6, #hover7, #hover5, #hover9, #hover10').css('font-weight', '300');
            });

            $('#hover9').click(function () {
                $('#hover9').css('color', '#115C5E');
                $('#hover9').css('border-bottom', '1px solid #115C5E');
                $('#hover9').css('font-weight', '700');
                $('#hover6, #hover7, #hover8, #hover5, #hover10').css('color', '#9f9f9f');
                $('#hover6, #hover7, #hover8, #hover5, #hover10').css('border-bottom-color', '#fff');
                $('#hover6, #hover7, #hover8, #hover5, #hover10').css('font-weight', '300');
            });

            $('#hover10').click(function () {
                $('#hover10').css('color', '#115C5E');
                $('#hover10').css('border-bottom', '1px solid #115C5E');
                $('#hover10').css('font-weight', '700');
                $('#hover6, #hover7, #hover8, #hover5, #hover9').css('color', '#9f9f9f');
                $('#hover6, #hover7, #hover8, #hover5, #hover9').css('border-bottom-color', '#fff');
                $('#hover6, #hover7, #hover8, #hover5, #hover9').css('font-weight', '300');
            });
        });
    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--카테고리 메뉴-->
    <div class="affiliateMall">  
        <div class="affiliateMall_wrap">
            <div class="affiliateMall_wrap_inner">
                <div class="affiliateMall_menu">
                    <div class="affiliateMall_menu_main">
                        <span>제휴몰</span>
                    </div>
                    <div class="affiliateMall_menu_sub">
                        <ul>
                            <li id="hover11">전체보기</li>
                            <li id="hover12">BEST</l>
                            <li id="hover13">신당케어</li>
                            <li id="hover14">비알화강</li>
                            <li id="hover15">영물오리진</li>
                            <li id="hover16">패키지</li>
                        </ul>
                    </div>                  
                </div>
            </div> 
        </div>
    </div >
    <!--카테고리 슬라이드-->
    <div class="main_slider">
        <div class="slide slide_wrap">
            <div class="slide_item item1">
                <img src="/Source/client/image/drkid_main_slide1.jpg" alt="Image 1">
            </div>
            <div class="slide_item item2">
                <img src="/Source/client/image/drkid_main_slide2.jpg" alt="Image 2">
            </div>
            <div class="slide_item item3">
                <img src="/Source/client/image/drkid_main_slide3.jpg" alt="Image 3">
            </div>
            <div class="slide_prev_button slide_button">
                <span class="material-icons">chevron_left</span>
            </div>
            <div class="slide_next_button slide_button">
                <span class="material-icons">chevron_right</span>
            </div>
            <ul class="slide_pagination"></ul>
        </div>
    </div>
    <!--필터-->
    <div class="filter">
        <div class="filter_wrap">
            <div class="filter_wrap_inner">
                <div class="filter_menu">
                    <div class="filter_menu_front">
                        <span>FILTER</span>
                        <span>|</span>
                    </div>
                    <ul>

                        <li id="hover5" class="first_txt">신상품순</li>
                        <li id="hover6" class="second_txt">추천순</li>
                        <li id="hover7" class="second_txt">판매인기순</li>
                        <li id="hover8" class="second_txt">상품평순</li>
                        <li id="hover9" class="second_txt">낮은가격순</li>
                        <li id="hover10" class="second_txt">높은가격순</li>
                    </ul>
                </div>          
            </div>
        </div>
    </div>
     <!--best first-->
    <div class="best">
        <div class="best_wrap">
            <div class="best_wrap_inner">
                <div class="best_content">
                    <div class="best_content_wrap">
                        <div class="best_content_wrap_inner">
                            <div class="content">
                                <div class="content_wrap">
                                    <img src="/Source/client/image/product_img1.jpg" alt="best_content" />
                                    <div class="best_txt lowerst-font">
                                        <span>BEST</span>
                                    </div>
                                </div>
                                <div class="relation_Item_All_Info_Area">
                                        
                                    <div class="relation_Company_Info mono_dea_color">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="relation_Item_Name_Info">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="relation_Item_Price_Area">
                                        <div class="relation_Item_Discount_Price big-font">
                                            <span>36400</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Before lower-font">
                                            <span>56000</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                            <span>35%</span>
                                        </div>
                                    </div>
                                    <div class="relation_Item_Price_Info_Area">
                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                                    </div>                                                                                            
                                </div>
                                   
                            </div>
                            <div class="content">
                                <div class="content_wrap">
                                    <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                    <div class="best_txt lowerst-font">
                                        <span>BEST</span>
                                    </div>
                                </div>
                                <div class="relation_Item_All_Info_Area">
                                        
                                    <div class="relation_Company_Info mono_dea_color">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="relation_Item_Name_Info">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="relation_Item_Price_Area">
                                        <div class="relation_Item_Discount_Price big-font">
                                            <span>36400</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Before lower-font">
                                            <span>56000</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                            <span>35%</span>
                                        </div>
                                    </div>
                                    <div class="relation_Item_Price_Info_Area">
                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                    </div>                                                                                       
                                </div>
                            </div>
                            <div class="content">
                                <div class="content_wrap">
                                    <img src="/Source/client/image/product_img3.jpg" alt="best_content" />
                                    <div class="best_txt lowerst-font">
                                        <span>BEST</span>
                                    </div>
                                </div>
                                <div class="relation_Item_All_Info_Area">
                                        
                                    <div class="relation_Company_Info mono_dea_color">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="relation_Item_Name_Info">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="relation_Item_Price_Area">
                                        <div class="relation_Item_Discount_Price big-font">
                                            <span>36400</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Before lower-font">
                                            <span>56000</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                            <span>35%</span>
                                        </div>
                                    </div>                                                                                       
                                </div>
                            </div>
                            <div class="content">
                                <div class="content_wrap">
                                    <img src="/Source/client/image/product_img4.jpg" alt="best_content" />
                                    <div class="best_txt lowerst-font">
                                        <span>BEST</span>
                                    </div>
                                </div>
                                <div class="relation_Item_All_Info_Area">
                                        
                                    <div class="relation_Company_Info mono_dea_color">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="relation_Item_Name_Info">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="relation_Item_Price_Area">
                                        <div class="relation_Item_Discount_Price big-font">
                                            <span>36400</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Before lower-font">
                                            <span>56000</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                            <span>35%</span>
                                        </div>
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
    <!--best second-->
    <div class="best">
        <div class="best_wrap">
            <div class="best_wrap_inner">
                <div class="best_content">
                    <div class="best_content_wrap">
                        <div class="best_content_wrap_inner">
                            <div class="content">
                                <div class="content_wrap">
                                    <img src="/Source/client/image/product_img1.jpg" alt="best_content" />
                                    <div class="best_txt lowerst-font">
                                        <span>BEST</span>
                                    </div>
                                </div>
                                <div class="relation_Item_All_Info_Area">
                                        
                                    <div class="relation_Company_Info mono_dea_color">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="relation_Item_Name_Info">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="relation_Item_Price_Area">
                                        <div class="relation_Item_Discount_Price big-font">
                                            <span>36400</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Before lower-font">
                                            <span>56000</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                            <span>35%</span>
                                        </div>
                                    </div>
                                    <div class="relation_Item_Price_Info_Area">
                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                        <div class="relation_Item_Price_Info lowerst-font">재구매 추가 할인 5%</div>
                                    </div>                                                                                            
                                </div>
                                   
                            </div>
                            <div class="content">
                                <div class="content_wrap">
                                    <img src="/Source/client/image/product_img2.jpg" alt="best_content" />
                                    <div class="best_txt lowerst-font">
                                        <span>BEST</span>
                                    </div>
                                </div>
                                <div class="relation_Item_All_Info_Area">
                                        
                                    <div class="relation_Company_Info mono_dea_color">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="relation_Item_Name_Info">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="relation_Item_Price_Area">
                                        <div class="relation_Item_Discount_Price big-font">
                                            <span>36400</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Before lower-font">
                                            <span>56000</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                            <span>35%</span>
                                        </div>
                                    </div>
                                    <div class="relation_Item_Price_Info_Area">
                                        <div class="relation_Item_Price_Info lowerst-font">회원 할인 10%</div>
                                    </div>                                                                                       
                                </div>
                            </div>
                            <div class="content">
                                <div class="content_wrap">
                                    <img src="/Source/client/image/product_img3.jpg" alt="best_content" />
                                    <div class="best_txt lowerst-font">
                                        <span>BEST</span>
                                    </div>
                                </div>
                                <div class="relation_Item_All_Info_Area">
                                        
                                    <div class="relation_Company_Info mono_dea_color">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="relation_Item_Name_Info">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="relation_Item_Price_Area">
                                        <div class="relation_Item_Discount_Price big-font">
                                            <span>36400</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Before lower-font">
                                            <span>56000</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                            <span>35%</span>
                                        </div>
                                    </div>                                                                                       
                                </div>
                            </div>
                            <div class="content">
                                <div class="content_wrap">
                                    <img src="/Source/client/image/product_img4.jpg" alt="best_content" />
                                    <div class="best_txt lowerst-font">
                                        <span>BEST</span>
                                    </div>
                                </div>
                                <div class="relation_Item_All_Info_Area">
                                        
                                    <div class="relation_Company_Info mono_dea_color">
                                        <span>신당케어</span>
                                    </div>
                                    <div class="relation_Item_Name_Info">
                                        <span>비건오메가3 (30일분)</span>
                                    </div>
                                    <div class="relation_Item_Price_Area">
                                        <div class="relation_Item_Discount_Price big-font">
                                            <span>36400</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Before lower-font">
                                            <span>56000</span>
                                        </div>
                                        <div class="relation_Item_Discount_Price_Percent lower-font main_color">
                                            <span>35%</span>
                                        </div>
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
   <%--페이징--%>
    <div class="number-button-Area">
        <div class="number-button-wrap">
            <div class="number-button shopnvbtn all_prev">
                <span class="drkid-icon arrow-navi double-left-arrow allprev"></span>
            </div>
            <div class="number-button shopnvbtn 
                one_prev">
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
</asp:Content>
