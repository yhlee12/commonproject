<%@ Page Title="" Language="C#" MasterPageFile="~/Source/client/master/DRKID.Master" AutoEventWireup="true" CodeBehind="C_PRODUCT_PURCHASE_LODING.aspx.cs" Inherits="drKid.Source.client.member.C_PRODUCT_PURCHASE_LODING" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
       
       tr,th,td,p {
           display:none;
       }
       
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
           padding: 8rem 0;
           text-align : center;
       }
       .Purchase_Loading_Icon {
           width: 190px;
           height: 190px;
           border: 8px solid #115C5E;
           border-top: 8px solid transparent;
           border-radius: 50%;
           animation: spin 1s linear infinite;
           margin: 0 auto;
           margin-bottom : 50px;
       }

       /* 로딩 스피너 회전 애니메이션 */
       @keyframes spin {
           0% { transform: rotate(0deg); }
           100% { transform: rotate(360deg); }
       }
       .Purchase_Loading_Title{
           font-size: 24px;
           font-weight : bold;
           margin-bottom : 10px;
       }
       .Purchase_Loading_Subtitle{
           font-size: 18px;
           color:#A8A8A8;
       }

       .billing_key_return {

       }
       .billing_success_return {

       }
       .result{
           display:none;
       }
    </style>
    <script>
        $(function () {
            let billkey_count = $(".BillKey").length;
            
            if (billkey_count >= 1) {
                let billkey = $(".BillKey").children()[0].textContent;
                console.log(billkey);

                $.ajax({
                    type: "POST"
                    , url: "/Source/client/payment/BillApp.aspx"
                    , data: {
                        billkey: billkey
                    }
                    , contentType: 'application/x-www-form-urlencoded;charset=utf-8'
                    , dataType: 'json'
                    , success: function (data) {
                        console.log(data.length);
                        console.log(data);
                        var jsonData = JSON.parse(data);
                        console.log(jsonData);
                        //for (var i = 0; i < jsonData.length; i++) {
                        //    console.log(jsonData[i]);
                        //}

                        html = "<ul>";
                        for (var key in jsonData) {
                            html += "<li><strong>" + key + ":</strong> " + jsonData[key] + "</li>";
                        }
                        html += "</ul>";
                        $(".billing_success_return").append(html);
                    }
                    , error: function (jqXHR, error) {

                    }
                });
            }
            
            var resultCode = <%=_authResultString %>
            console.log(resultCode);
            console.log(resultCode.resultCode);
            console.log(resultCode.resultMsg);
            
            if(resultCode.resultCode == "00" || resultCode.resultCode == "0000" ){ //둘중에 하나라도 true면 true
                location.href = "/Source/client/member/C_PRODUCT_PURCHASE_RESULT.aspx";
            }
            else{
                location.href = "/Source/client/member/C_PRODUCT_PURCHASE_FAIL.aspx?resultMsg=" + resultCode.resultMsg;
            }


        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="sub_content">
        <div class="sub_layout">
            <div id="content">
                <div class="content_wrap">
                    <div class="Purchase_Loading_Icon"> 

                    </div>
                    <div class="Purchase_Loading_Title">
                        <span>잠시만 기다려주세요.</span>
                    </div>
                    <div class="Purchase_Loading_Subtitle">
                        <span>안전한 결제를 위해 로딩중입니다.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--<input class="BillKey" />--%>
    <div id ="result" class="result">
        <div>빌링키 발급 결과</div>
        <div class="billing_key_return"> 
            <%=_authResultString %>
        </div>
        <div>빌링결제 승인결과</div>
        <div class="billing_success_return"> 
        </div>
    </div>
</asp:Content>

