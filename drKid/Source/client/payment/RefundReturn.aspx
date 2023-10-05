<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RefundReturn.aspx.cs" Inherits="drKid.Source.client.payment.RefundReturn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%foreach (string key in Request.Params)
              {
                  var a = Request.Params[key];
            %>키
                <%=a %><br />
            <%} %>
        </div>
    </form>
</body>
</html>
