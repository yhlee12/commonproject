<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_PRODUCT_PURCHASE_FAIL.aspx.cs" Inherits="drKid.Source.client.member.C_PRODUCT_PURCHASE_FAIL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
        body {
            background-color: #efefef;
        }

        body, tr, td {
            font-size: 11pt;
            font-family: 굴림,verdana;
            color: #433F37;
            line-height: 19px;
        }

        table, img {
            border: none;
        }

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
        #content {
            max-width: 1300px;
            margin: auto;
        }
        .content_wrap{
            padding: 5rem 0;
            text-align : center;
        }
        .Purchase_fail_wrep{
            display: flex;
            justify-content: center;
            margin-bottom : 42px;
        }
        .Purchase_fail_Icon{
            width : 170px;
            height : 170px;
            border-radius: 50%;
            background-color : #E6B37A;
        }
        .Purchase_fail_Title{
            font-size: 24px;
            font-weight : bold;
            margin-bottom : 10px;
        }
        .Purchase_Loading_Subtitle{
            font-size: 18px;
            color:#A8A8A8;
            padding-bottom : 28px;
            border-bottom : 1px solid #A8A8A8;
        }
        .Purchase_Fail_reason{
            font-size: 18px;
            color:#A8A8A8;
            padding : 28px 0;
        }
        .fail_priority_icon{
            line-height: 170px;
            color: white;
            font-size: 100px;
        }
    </style>
    <script>

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content">
        <div class="sub_layout">
            <div id="content">
                <div class="content_wrap">
                    <div class="Purchase_fail_wrep">
                        <div class="Purchase_fail_Icon">
                            <span class="material-icons fail_priority_icon">priority_high</span>
                        </div>
                    </div>
                    <div class="Purchase_fail_Title">
                        <span>잠시만 기다려주세요.</span>
                    </div>
                    <div class="Purchase_Loading_Subtitle">
                        <span>아래와 같은 이유로 결제가 취소되었습니다.<br />
                        </span>
                        <span>쇼핑몰에서 다시 결제를 진행하시기 바랍니다.</span>
                    </div>
                    <div class="Purchase_Fail_reason">
                        <span>사유 : </span>
                        <span><%=resultMsg %></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>