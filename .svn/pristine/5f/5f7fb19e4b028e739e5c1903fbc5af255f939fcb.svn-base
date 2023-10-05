<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_STOCK_LIST.aspx.cs" Inherits="drKidAdmin.Source.admin.stock.A_STOCK_LIST" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        inner-sub-content-wraper{
            width:100%;
            display:flex;
            justify-content:space-between;
            align-items:flex-start;
        }
        .inner-flex-panel{
            width:calc(50% - 24px);
            border:1px solid var(--mono_line);
        }
        .center-field{
            justify-content:center;
            padding:20px 0;
        }
        .min-auto{
            min-height:auto;
            padding:0;
        }
        .sub-content-title{
            padding: 20px 30px;
            background-color:#F8F9FD;
            display:flex;
            justify-content:flex-start;
            align-items:center;
        }
        .sub-content-title-div{
            width:120px;
        }
        .sub-content-search-field{
            max-width: 380px;
            font-size: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-right:10px;
        }
        .input-searchheight{
            height:35px;
            line-height:35px !important;
            width:320px;
        }
        .search-input-btn{
             height:35px;
            line-height:35px !important;
            min-height: 35px;
            padding-top: 5px;
            padding-bottom: 5px;
            background-color:var(--mono_sub);
            color:white;
            width:60px;
            min-width:60px;
            font-size:var(--drkid-lowerst-font);
            padding:0;
            text-align:center;
        }
        .center-title{
            height:40px;
            line-height:40px;
            width:100%;
            padding-left:15px;
            background-color:var(--mono_line);
            color:var(--mono_main);
        }
        .auth-field{
            justify-content:flex-end;
            margin-top:7px;
            margin-bottom:7px;
            padding-right:7px;
        }
        .left-padding-left{
            padding-left:10px;
            padding-right:10px;
        }
        .no-margin-right{
            margin-right:0;
        }
        .auth-btn{
            min-width:80px;
            min-height:15px;
            margin-right:0;
        }
        .table-common tr td{
            word-break:break-all;
        }
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
    <script>
        $(function () {
            //New 신규 버튼 선택
            $('#new-btn').on('click', function () {
                openMenuPath('/Source/admin/stock/A_STOCK_INSERT.aspx','',true);
            });
            //Refresh
            $('#refresh').on('click', function () {
                $('#STOCK_COD').val('');
            })
            $('#search-btns').on('click', function () {
                $('#flag').val('inquery');
                $('#form1').submit();
            });
            $('.target-auth-btn').on('click', function (e) {
                let _STOCK_CODE = $(e.currentTarget).data('id');
                openMenuPath('/Source/admin/stock/A_STOCK_INSERT.aspx',`?STOCK_CD=${_STOCK_CODE}`,true);
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="hidden-field">
        <input type="text" name="flag" id="flag" value="" />
    </div>
    <div class="sub-warp">
        <div class="sub-content-wrap min-auto">
            <div class="sub-content-title">
                <div class="sub-content-title-div">
                    <span class="lower-font">제품검색</span>
                </div>
                <div class="sub-content-search-field">
                    <input type="text" class="drkid-input lowerst-font input-searchheight" name="STOCK_COD" id="STOCK_COD" value="" placeholder="제품코드" />
                </div>
                <div class="sub-content-title-div">
                    <span class="lower-font">사용여부</span>
                </div>
                <div class="sub-content-search-field">
                    <label class="drkid-radio">
                        <input type="radio" name="USABLE_FLAG" value="Y" <%=USABLE_FLAG == "Y" ? " checked=\"checked\"" : "" %> />
                        <span class="lower-font">사용</span>
                    </label>
                    <label class="drkid-radio">
                        <input type="radio" name="USABLE_FLAG" value="N" <%=USABLE_FLAG == "N" ? " checked=\"checked\"" : "" %>/>
                        <span class="lower-font">미사용</span>
                    </label>
                </div>
            </div>
            <div class="btn-field clears center-field">
                <div class="flex-center-child">
                    <div class="drkid-btn search-btn drkid-btn-active" id="search-btns">
                        <span class="lower-font">검색</span>
                    </div>
                    <div class="drkid-btn search-btn" id="refresh">
                        <span class="lower-font">초기화</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="sub-warp">
        <div class="sub-warp-title">
            <span class="middle-font">제품목록</span>
        </div>
        <div class="sub-content-wrap">
            <div class="btn-field clears">
                <div class="flex-right-child">
                    <div class="drkid-btn search-btn drkid-btn-active" id="new-btn">
                        <span class="lower-font">신규</span>
                    </div>
                </div>
            </div>
            <div class="table-wraper max-height-overflow custom-table-wraper">
                <table class="table-common">
                    <colgroup>
                        <col style="width:120px"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col style="width:10%;"/>
                        <col style="width:7%;"/>
                        <col style="width:7%;"/>
                        <col style="width:7%;"/>
                        <col style="width:7%;"/>
                        <col style="width:7%;"/>
                        <col/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="lower-font">수정</th>
                            <th class="lower-font">제품코드</th>
                            <th class="lower-font">제품명</th>
                            <th class="lower-font">위킵코드</th>
                            <th class="lower-font">현재고</th>
                            <th class="lower-font">가로</th>
                            <th class="lower-font">세로</th>
                            <th class="lower-font">높이</th>
                            <th class="lower-font">중량</th>
                            <th class="lower-font">적재방식</th>
                        </tr>
                    </thead>
                    <tbody id="big-tbody">
                        <%for(int i = 0; i < listTable.Rows.Count;i++){ %>
                            <tr>
                                <td class="lowerst-font">
                                    <div class="drkid-btn search-btn auth-btn drkid-btn-active target-auth-btn" data-id="<%=listTable.Rows[i]["STOCK_CD"] %>">
                                        <span class="lower-font">수정</span>
                                    </div>
                                </td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["STOCK_CD"] %></td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["STOCK_NM"] %></td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["WEKEEP_CODE"] %></td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["PCS_QTY"] %> PCS</td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["STOCK_WIDTH"] %> cm</td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["STOCK_HEIGHT"] %> cm</td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["STOCK_LENGTH"] %> cm</td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["STOCK_WEIGHT"] %> Kg</td>
                                <td class="lowerst-font"><%=listTable.Rows[i]["REMARK"] %></td>
                            </tr>
                        <%} %>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="pageNavigationStr" style="padding: 50px 0px;">
            <%=pageNavigationStr%>
        </div>
    </div>
</asp:Content>
