<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courier.aspx.cs" Inherits="courier" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <LINK href="Content/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body style="background-image:url('img/courier.jpg');-webkit-background-size: cover;-moz-background-size: cover;-o-background-size: cover;">
    <div style="padding: 4px;height:70px;width:inherit;background: rgba(255, 255, 255,0.5);">
    <center><h3 style="color:Black;">Mail Status</h3></center>
    <form id="form1" runat="server"  >
    <div style="padding: 2px;color:Black;height:70px;width:inherit;background: rgba(255, 255, 255,0.5);">
            <label style="color:Black;font-weight:bolder">Enter tracking number</label><br />
            <asp:TextBox ID="number" runat="server" ForeColor="Black"></asp:TextBox>
            <asp:Button ID="submit" CssClass="btn-default" runat="server" Text="Submit" onClick="submit_Click" />

    </div>
        <asp:Label ID="error" runat="server" Text="No tracking number found" Font-Bold="True" Font-Size="Large" ForeColor="Red" Visible="false"></asp:Label>
    <br />
    <asp:Table BorderWidth="3px" ID="mailstatus" style="background: rgba(255, 255, 255,0.8);color:Black;position:relative;left:1%" Visible="false" runat="server">
        
        <asp:TableHeaderRow runat="server">
            <asp:TableHeaderCell runat="server">
                <p style="font-weight:bold">&nbsp;&nbsp;&nbsp;&nbsp;Track #&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </asp:TableHeaderCell>
            <asp:TableHeaderCell runat="server">
                 <p style="font-weight:bold">Service&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </asp:TableHeaderCell>
            <asp:TableHeaderCell runat="server">
               <p style="font-weight:bold">Source&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </asp:TableHeaderCell>
             <asp:TableHeaderCell runat="server">
                <p style="font-weight:bold">Destination&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </asp:TableHeaderCell>
             <asp:TableHeaderCell runat="server">
                <p style="font-weight:bold">Status&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell runat="server" ID="trackingno"></asp:TableCell>
            <asp:TableCell runat="server" ID="mailservice"></asp:TableCell>
            <asp:TableCell runat="server" ID="source"></asp:TableCell>
            <asp:TableCell runat="server" ID="destination"></asp:TableCell>
            <asp:TableCell style="font-weight:bolder" runat="server" ID="status"></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
        </div>
</body>
</html>