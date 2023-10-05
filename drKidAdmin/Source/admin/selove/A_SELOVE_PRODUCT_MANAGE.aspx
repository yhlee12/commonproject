<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_SELOVE_PRODUCT_MANAGE.aspx.cs" Inherits="drKidAdmin.Source.admin.selove.A_SELOVE_PRODUCT_MANAGE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        .BackGround_Container{
            margin : 10px;
            background-color : white;
        }
        .sub-wrap{
            background-color: white;
            margin: 12px 12px 0 12px;
            border-bottom: 1px solid rgb(219, 221, 226);
        }
        .Main_wrap{
            background-color : white;
            margin: 0 12px;
            padding : 28px 0 ;
            border-bottom: 1px solid rgb(219, 221, 226);
            overflow-x: auto;
        }
        .sub-wrap{
            font-weight : bold;
        }
        .Main_wrap{
            padding : 20px 30px;
        }
        .Today_Detail_BTN, .Today_Delete_BTN{
            background-color : #115C5E;
            color : white;
            height: 35px;
            align-items: center;
            display: flex;
            justify-content: center;
            cursor : pointer;
        }
        /*테이블 높이조절*/
         .table-common tbody tr td {
             height: 50px;
             padding : 5px;
         }
        .table-common{
            width: 1800px;
        }
        .table-common th {
            background:#f9f9f9;
        }

        .table-common th, .table-common td {
            border: 1px solid var(--mono_line);
            padding: 8px; 
            text-align: center;
        }

        .table-common th:first-child,
        .table-common td:first-child {
            width: 7%; 
        }
        .table-wraper {
            
        }
        .table_img {
            min-height: 120px;
        }
        .table_img > img {
            object-fit:cover;
            min-height: 120px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="sub-wrap">
    <div class="sub-warp-title custom-sub-warp-title">
        <span class="middle-font custom-sub-warp-txt ">셀럽샵 상품 관리</span>
    </div>
</div>
<div class="Main_wrap">
    <div class="table-wraper custom-table-wraper">
        <div class="table-wraper custom-table-wraper">
            <table class="table-common">
                <colgroup>
                    <col style="width:7%;"/>
                    <col style="width:5%;"/>
                    <col style="width:20%;"/>
                    <col style="width:29%;"/>
                    <col style="width:9%;"/>
                    <col style="width:9%;"/>
                    <col style="width:15%;"/>
                    <col style="width:10%;"/>
                    <col style="width:7%;"/>
                    <col style="width:15%;"/>
                    <col style="width:10%;"/>
                </colgroup>
                <thead>
                    <tr>
                        <th class="lowerst-font">상세</th>
                        <th class="lowerst-font">NO.</th>
                        <th class="lowerst-font">상품 대표 이미지</th>
                        <th class="lowerst-font">선택된 상품</th>
                        <th class="lowerst-font">상품가</th>
                        <th class="lowerst-font">할인가</th>
                        <th class="lowerst-font">커뮤니티 광고 노출</th>
                        <th class="lowerst-font">미니홈 노출</th>
                        <th class="lowerst-font">삭제</th>
                        <th class="lowerst-font">상품등록 셀러브리티</th>
                        <th class="lowerst-font">상품등록일</th>
                    </tr>
                </thead>
                <tbody id="big-tbody">
                    <%--한줄--%> 
                    <tr> 
                        <td>
                            <div class="Today_Detail_BTN">
                                <span>상세</span>
                            </div>
                        </td>
                        <td>1</td>
                        <td>
                            <div class="table_img">
                                <img src="/Source/admin/image/best_img.png" />
                            </div>
                        </td>
                        <td style=" text-align : left">
                            <div>
                                    <span class="lowerst-font">상품 1</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                            <div>
                                    <span class="lowerst-font">상품2-옵션2</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                        </td>
                        <td class="lowerst-font">255,000</td>
                        <td class="lowerst-font">200,000</td>
                        <td class="lowerst-font">Y</td>
                        <td class="lowerst-font">Y</td>
                        <td>
                            <div class="Today_Delete_BTN">
                                <span class="">삭제</span>
                            </div>
                        </td>
                        <td class="lowerst-font">Drkid.OWOEKE</td>
                        <td class="lowerst-font">2023-09-09 12:34:21</td>
                    </tr>
                    <%--한줄--%> 
                    <tr> 
                        <td>
                            <div class="Today_Detail_BTN">
                                <span>상세</span>
                            </div>
                        </td>
                        <td>1</td>
                        <td>
                            <div class="table_img">
                                <img src="/Source/admin/image/best_img.png" />
                            </div>
                        </td>
                        <td style=" text-align : left">
                            <div>
                                    <span class="lowerst-font">상품 1</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                            <div>
                                    <span class="lowerst-font">상품2-옵션2</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                        </td>
                        <td class="lowerst-font">255,000</td>
                        <td class="lowerst-font">200,000</td>
                        <td class="lowerst-font">Y</td>
                        <td class="lowerst-font">Y</td>
                        <td>
                            <div class="Today_Delete_BTN">
                                <span class="">삭제</span>
                            </div>
                        </td>
                        <td class="lowerst-font">Drkid.OWOEKE</td>
                        <td class="lowerst-font">2023-09-09 12:34:21</td>
                    </tr>
                    <%--한줄--%> 
                    <tr> 
                        <td>
                            <div class="Today_Detail_BTN">
                                <span>상세</span>
                            </div>
                        </td>
                        <td>1</td>
                        <td>
                            <div class="table_img">
                                <img src="/Source/admin/image/best_img.png" />
                            </div>
                        </td>
                        <td style=" text-align : left">
                            <div>
                                    <span class="lowerst-font">상품 1</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                            <div>
                                    <span class="lowerst-font">상품2-옵션2</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                        </td>
                        <td class="lowerst-font">255,000</td>
                        <td class="lowerst-font">200,000</td>
                        <td class="lowerst-font">Y</td>
                        <td class="lowerst-font">Y</td>
                        <td>
                            <div class="Today_Delete_BTN">
                                <span class="">삭제</span>
                            </div>
                        </td>
                        <td class="lowerst-font">Drkid.OWOEKE</td>
                        <td class="lowerst-font">2023-09-09 12:34:21</td>
                    </tr>
                    <%--한줄--%> 
                    <tr> 
                        <td>
                            <div class="Today_Detail_BTN">
                                <span>상세</span>
                            </div>
                        </td>
                        <td>1</td>
                        <td>
                            <div class="table_img">
                                <img src="/Source/admin/image/best_img.png" />
                            </div>
                        </td>
                        <td style=" text-align : left">
                            <div>
                                    <span class="lowerst-font">상품 1</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                            <div>
                                    <span class="lowerst-font">상품2-옵션2</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                        </td>
                        <td class="lowerst-font">255,000</td>
                        <td class="lowerst-font">200,000</td>
                        <td class="lowerst-font">Y</td>
                        <td class="lowerst-font">Y</td>
                        <td>
                            <div class="Today_Delete_BTN">
                                <span class="">삭제</span>
                            </div>
                        </td>
                        <td class="lowerst-font">Drkid.OWOEKE</td>
                        <td class="lowerst-font">2023-09-09 12:34:21</td>
                    </tr>
                    <%--한줄--%> 
                    <tr> 
                        <td>
                            <div class="Today_Detail_BTN">
                                <span>상세</span>
                            </div>
                        </td>
                        <td>1</td>
                        <td>
                            <div class="table_img">
                                <img src="/Source/admin/image/best_img.png" />
                            </div>
                        </td>
                        <td style=" text-align : left">
                            <div>
                                    <span class="lowerst-font">상품 1</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                            <div>
                                    <span class="lowerst-font">상품2-옵션2</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                        </td>
                        <td class="lowerst-font">255,000</td>
                        <td class="lowerst-font">200,000</td>
                        <td class="lowerst-font">Y</td>
                        <td class="lowerst-font">Y</td>
                        <td>
                            <div class="Today_Delete_BTN">
                                <span class="">삭제</span>
                            </div>
                        </td>
                        <td class="lowerst-font">Drkid.OWOEKE</td>
                        <td class="lowerst-font">2023-09-09 12:34:21</td>
                    </tr>
                    <%--한줄--%> 
                    <tr> 
                        <td>
                            <div class="Today_Detail_BTN">
                                <span>상세</span>
                            </div>
                        </td>
                        <td>1</td>
                        <td>
                            <div class="table_img">
                                <img src="/Source/admin/image/best_img.png" />
                            </div>
                        </td>
                        <td style=" text-align : left">
                            <div>
                                    <span class="lowerst-font">상품 1</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                            <div>
                                    <span class="lowerst-font">상품2-옵션2</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                        </td>
                        <td class="lowerst-font">255,000</td>
                        <td class="lowerst-font">200,000</td>
                        <td class="lowerst-font">Y</td>
                        <td class="lowerst-font">Y</td>
                        <td>
                            <div class="Today_Delete_BTN">
                                <span class="">삭제</span>
                            </div>
                        </td>
                        <td class="lowerst-font">Drkid.OWOEKE</td>
                        <td class="lowerst-font">2023-09-09 12:34:21</td>
                    </tr>
                    <%--한줄--%> 
                    <tr> 
                        <td>
                            <div class="Today_Detail_BTN">
                                <span>상세</span>
                            </div>
                        </td>
                        <td>1</td>
                        <td>
                            <div class="table_img">
                                <img src="/Source/admin/image/best_img.png" />
                            </div>
                        </td>
                        <td style=" text-align : left">
                            <div>
                                    <span class="lowerst-font">상품 1</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                            <div>
                                    <span class="lowerst-font">상품2-옵션2</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                        </td>
                        <td class="lowerst-font">255,000</td>
                        <td class="lowerst-font">200,000</td>
                        <td class="lowerst-font">Y</td>
                        <td class="lowerst-font">Y</td>
                        <td>
                            <div class="Today_Delete_BTN">
                                <span class="">삭제</span>
                            </div>
                        </td>
                        <td class="lowerst-font">Drkid.OWOEKE</td>
                        <td class="lowerst-font">2023-09-09 12:34:21</td>
                    </tr>
                    <%--한줄--%> 
                    <tr> 
                        <td>
                            <div class="Today_Detail_BTN">
                                <span>상세</span>
                            </div>
                        </td>
                        <td>1</td>
                        <td>
                            <div class="table_img">
                                <img src="/Source/admin/image/best_img.png" />
                            </div>
                        </td>
                        <td style=" text-align : left">
                            <div>
                                    <span class="lowerst-font">상품 1</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                            <div>
                                    <span class="lowerst-font">상품2-옵션2</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                        </td>
                        <td class="lowerst-font">255,000</td>
                        <td class="lowerst-font">200,000</td>
                        <td class="lowerst-font">Y</td>
                        <td class="lowerst-font">Y</td>
                        <td>
                            <div class="Today_Delete_BTN">
                                <span class="">삭제</span>
                            </div>
                        </td>
                        <td class="lowerst-font">Drkid.OWOEKE</td>
                        <td class="lowerst-font">2023-09-09 12:34:21</td>
                    </tr>
                    <%--한줄--%> 
                    <tr> 
                        <td>
                            <div class="Today_Detail_BTN">
                                <span>상세</span>
                            </div>
                        </td>
                        <td>1</td>
                        <td>
                            <div class="table_img">
                                <img src="/Source/admin/image/best_img.png" />
                            </div>
                        </td>
                        <td style=" text-align : left">
                            <div>
                                    <span class="lowerst-font">상품 1</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                            <div>
                                    <span class="lowerst-font">상품2-옵션2</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                        </td>
                        <td class="lowerst-font">255,000</td>
                        <td class="lowerst-font">200,000</td>
                        <td class="lowerst-font">Y</td>
                        <td class="lowerst-font">Y</td>
                        <td>
                            <div class="Today_Delete_BTN">
                                <span class="">삭제</span>
                            </div>
                        </td>
                        <td class="lowerst-font">Drkid.OWOEKE</td>
                        <td class="lowerst-font">2023-09-09 12:34:21</td>
                    </tr>
                    <%--한줄--%> 
                    <tr> 
                        <td>
                            <div class="Today_Detail_BTN">
                                <span>상세</span>
                            </div>
                        </td>
                        <td>1</td>
                        <td>
                            <div class="table_img">
                                <img src="/Source/admin/image/best_img.png" />
                            </div>
                        </td>
                        <td style=" text-align : left">
                            <div>
                                    <span class="lowerst-font">상품 1</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                            <div>
                                    <span class="lowerst-font">상품2-옵션2</span>
                            </div>
                            <div>
                                <span class="lowerst-font">상품1-옵션1</span>
                            </div>
                        </td>
                        <td class="lowerst-font">255,000</td>
                        <td class="lowerst-font">200,000</td>
                        <td class="lowerst-font">Y</td>
                        <td class="lowerst-font">Y</td>
                        <td>
                            <div class="Today_Delete_BTN">
                                <span class="">삭제</span>
                            </div>
                        </td>
                        <td class="lowerst-font">Drkid.OWOEKE</td>
                        <td class="lowerst-font">2023-09-09 12:34:21</td>
                    </tr>

                </tbody>  
            </table>
        </div>
    </div>
</div>
</asp:Content>
