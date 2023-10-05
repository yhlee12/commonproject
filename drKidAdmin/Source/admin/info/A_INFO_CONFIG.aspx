<%@ Page Title="" Language="C#" MasterPageFile="~/Source/admin/master/Web.master" AutoEventWireup="true" CodeBehind="A_INFO_CONFIG.aspx.cs" Inherits="drKidAdmin.Source.admin.info.A_INFO_CONFIG" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .ifram_inner_Area {
            min-width: 1050px;
            width: 100%;
            padding:15px;
        }
        .block_Wrap {
            padding: 0px 0px 10px 0px;
        }
        .title_Block {
            height: 55px;
            border: 1px solid #DBDDE2;
            background: #ffffff;
            padding: 17px 30px;
        }
        .title_txt{
            font-weight: 600;
            font-size: var(--drkid-middle-font);
            line-height: initial;
        }
        .guide_Block{
            min-width: 545px;
            width: 100%;
            min-height: 77px;
            border-left: 1px solid #DBDDE2;
            border-right: 1px solid #DBDDE2;
            padding: 15px 30px;
        }
        .guide_txt{
            font-size: var(--drkid-lowerst-font);
            color : var(--mono_sub);
            font-weight: normal;
        }
        .content_Block {
            min-width: 545px;
            width: 100%;
            min-height: 85vh;
            background: #ffffff;
            border: 1px solid #DBDDE2;
            padding: 20px 30px;
        }
        .content_Head{
            display:flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom:11px;
        }
        .manager_Count{
            display: flex;
        }
        .manager_Count_text{

        }
        .manager_Count_num{
            padding-left:10px;
            min-width: 20px;
            display: flex;
            justify-content: flex-end;
            color: var(--main_color);
            font-weight: 500;
        }
        .manager_Add{

        }
        .content_Body{
            
        }
        table{
            width: 100%;
        }

        .list_table > tr > th{
            background-color: var(--mono_back);
        }

        .list_table > tr > th{
            text-align:center !important;
            height: 40px ;
        }
        .list_table > tr > td{
            text-align:left !important;
            height: 40px ;
            padding: 10px 0 10px 15px;
        }
        .drkid-btn-sub2{
            min-width: 80px;
            min-height: 28px;
        }
        td > .drkid-btn-active{
            min-width: 60px !important;
            padding: 0;
        }
        .td_input{
            width: 80%;
            text-align: right;
        }
        
        /*모달 팝업창 css*/

        #pop-modal-wraper{
            border-block: 2px solid var(--mono_line);
            padding:15px 0;
            margin : 15px 0 ;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        .modal_list > tr > th, .modal_list > tr > td{
            text-align:left !important;
            height: 40px ;
            border: none !important;
            padding: 4px 0px !important;
        }
        .pop-modal-title{
            font: normal normal 600 20px/24px Pretendard;
            color: #262626;
        }

        .modal-content {
            display: flex;
            flex-direction: column;
            background-color: #fefefe;
            margin: 10% auto;
            padding: 15px 27px;
            border: 1px solid #888;
            width: 80%;
            max-width: 475px;
        }
        .modal-input{
            padding: 20px 10px;
            border-radius: 4px;
            autocomplete : off; 
        }
        .modal-btn-font{
            font-weight :400;
        }
        #pop-modal-btn-wraper{
            display:flex;
            justify-content: center;
        }
        #pop-modal-btn-wraper >.drkid-btn-sub2{
            min-width: 120px;
            min-height: 50px;
            margin: 0 5px;
        }
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }
        
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        /*모달 팝업창 css 끝*/
        .paging {
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

    </style>
    <script>
        $(function () {
            var saveBtn = $("#save_Btn");
            var delBtn = $(".admin_del_Btn");
            var modal_input = $(".modal-input");
            var modal = document.getElementById("modal");
            var openModalButton = document.getElementById("openModalButton");
            var closeButtons = document.getElementsByClassName("closeBtn");



            $(".td_input").on("input", function () {
                var inputnumber = $(this).val();
                var inputformated = formatNumber(inputnumber);
                $(this).val(inputformated);
            });


            // 전환율 수정
            saveBtn.on("click", function () {

                $("#flag").val("save");
                $("#form1").submit();
            });
        });
            

        //퍼센트 숫자입력.
        function formatNumber(input) {
            var inputNumber = input.replace(/\D/g, ''); // 숫자 이외의 문자 제거
            var formatNumber = '';

            if (inputNumber > 100 || inputNumber.lenght > 3) {
                formatNumber = 100;
            }
            else{
                formatNumber += inputNumber;
                }
            return formatNumber;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ifram_inner_Area">
        <div class="block_Wrap">
            <input type="hidden" name="flag" id="flag"/>
            <input type="hidden" name="I_USER_SID" id="I_USER_SID"/>
            <div class="title_Block">
                <div class="title_txt"><%=pageAuth.nowtitle %></div>
            </div>
            <div class="guide_Block">
                <div class="guide_txt">
                    - 유저 등급별 전환율 및 할인율을 설정하실 수 있습니다.
                </div>
            </div>
            <div class="content_Block">
                <div class="content_Head">
                    <div class="manager_Count">
                        <div class="manager_Count_text"><%=pageAuth.nowtitle %></div>
                        <div class="manager_Count_text">목록</div>
                        <%--<div class="manager_Count_num"><%=totalCount%></div>--%>

                    </div>
                     <div id="save_Btn" class="drkid-btn-sub2 drkid-btn-active editAuth">
                        <span  class="manager_Add lowerst-font">저장</span>
                    </div>
                </div>

                <div class="content_Body">
                    <table>
                        <colgroup>
                            <col style="width: 25%;" />
                            <col style="width: 15%;" />
                            <col style="width: 15%;" />
                            <col style="width: 15%;" />
                            <col style="width: 15%;" />
                            <col style="width: 15%;" />
                        </colgroup>
                        <thead class="list_table">
                            <tr>
                                <th class="lower-font" style="border: 1px solid #eaeaea">유저타입</th>
                                <th class="lower-font" style="border: 1px solid #eaeaea">PV 전환율</th>
                                <th class="lower-font" style="border: 1px solid #eaeaea">리퍼럴 PV 전환율</th>
                                <th class="lower-font" style="border: 1px solid #eaeaea">연계 PV 전환율</th>
                                <th class="lower-font" style="border: 1px solid #eaeaea">독립(IGR) PV 전환율</th>
                                <th class="lower-font" style="border: 1px solid #eaeaea">BV 할인율</th>
                            </tr>
                        </thead>
                        <tbody class="common_font list_table">
                            <% for (int i = 0; i < USER_CONFIGS.Rows.Count; i++)
                               { %>
                            <tr>
                                <%--유저타입--%>
                                <td class="lower-font" style="border: 1px solid #eaeaea">
                                    <%if(USER_CONFIGS.Rows[i]["USER_TYPE"].ToString() =="42"){ %>
                                    메가인플루언서(인증완료)
                                    <%} %>
                                    <%else{ %>
                                    <%=USER_CONFIGS.Rows[i]["USER_TYPE_NAME"] %>
                                    <%} %>
                                    <input type="hidden" name="USER_TYPE" value="<%=USER_CONFIGS.Rows[i]["USER_TYPE"] %>"/>
                                    <input type="hidden" name="USER_TYPE_NAME" value="<%=USER_CONFIGS.Rows[i]["USER_TYPE_NAME"] %>"/>
                                </td>
                                <%--PV전환율--%>
                                <td class="lower-font" style="border: 1px solid #eaeaea">
                                    <input class="td_input" name="PV_CREATE_RATE" value="<%=USER_CONFIGS.Rows[i]["PV_CREATE_RATE"] %>"/>&nbsp%
                                </td>
                                <%--리퍼럴 PV 전환율 --%>
                                <td class="lower-font" style="border: 1px solid #eaeaea">
                                    <input class="td_input" name="REFERRAL_REWARD" value="<%=USER_CONFIGS.Rows[i]["REFERRAL_REWARD"] %>"/>&nbsp%
                                </td>
                                <%--연계 PV 전환율--%>
                                <td class="lower-font" style="border: 1px solid #eaeaea">
                                    <input class="td_input" name="LINK_REWARD" value="<%=USER_CONFIGS.Rows[i]["LINK_REWARD"] %>"/>&nbsp%
                                </td>
                                <%--독립(IGR) PV 전환율--%>
                                <td class="lower-font" style="border: 1px solid #eaeaea">
                                    <input class="td_input" name="IGR_REWARD" value="<%=USER_CONFIGS.Rows[i]["IGR_REWARD"] %>"/>&nbsp%
                                </td>
                                <%--BV 할인율--%>
                                <td class="lower-font" style="border: 1px solid #eaeaea">
                                    <input class="td_input" name="BV_DISCOUNT_RATE" value="<%=USER_CONFIGS.Rows[i]["BV_DISCOUNT_RATE"] %>"/>&nbsp%
                                </td>
                            </tr>
                            <%} %>
                        </tbody>
                    </table>
                </div>
                
            </div>
        </div>
    </div>
</asp:Content>
