<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CasinoSlots.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 533px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 540px">
            <asp:Image ID="Img1" runat="server" BorderStyle="Solid" Height="122px" ImageUrl="images/blank.jpg" Width="122px" />
            <asp:Image ID="Img2" runat="server" BorderStyle="Solid" Height="122px" ImageUrl="images/blank.jpg" Width="122px" />
            <asp:Image ID="Img3" runat="server" BorderColor="Black" BorderStyle="Solid" Height="122px" ImageUrl="images/blank.jpg" Width="122px" />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Your Bet: "></asp:Label>
            <asp:TextBox ID="TxtBet" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pull The Lever!" />
            <br />
            <br />
            <asp:Label ID="LblResult" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="LblMoney" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            1 Cherry -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X2 Your Bet<br />
            2 Cherries -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X3 Your Bet<br />
            3&nbsp; Cherries -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X4 Your Bet<br />
            <asp:Label ID="Label3" runat="server" Text="3 HorseShoes - Jackpot - X100 Your Bet"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
