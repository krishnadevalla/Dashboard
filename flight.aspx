<%@ Page Language="C#" AutoEventWireup="true" CodeFile="flight.aspx.cs" Inherits="flight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <LINK href="Content/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body style="background-image:url('img/flight.jpg')">
    <div style="padding: 4px;">
    <center><h3 style="color:white;">Flight Status</h3></center>
    <form id="form1" runat="server">
    <div style="padding: 2px;color:white;height:70px;width:inherit;background: rgba(255, 255, 255,0.5);">
            <label style="color:white;font-weight:bolder"l>Enter flight code number</label><br />
            <asp:TextBox ID="number" runat="server" ForeColor="Black"></asp:TextBox>
            <asp:Button ID="submit" CssClass="btn-default" runat="server" Text="Submit" onClick="submit_Click" />

    </div>
        <br />
        <asp:Label ID="error" runat="server" Text="No flights found" Font-Bold="True" Font-Size="Large" ForeColor="Red" Visible="false"></asp:Label>
    
    <asp:Table BorderWidth="2px" ID="flightstatus" style="padding:-15px;color:white;position:relative;left:4%;background: rgba(50, 50, 50,0.5);" Visible="false" runat="server">
        
        <asp:TableHeaderRow runat="server">
            <asp:TableHeaderCell runat="server">
                <p style="font-weight:bold">&nbsp;&nbsp;&nbsp;&nbsp;Flight number&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </asp:TableHeaderCell>
            <asp:TableHeaderCell runat="server">
                <p style="font-weight:bold">Source&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </asp:TableHeaderCell>
             <asp:TableHeaderCell runat="server">
                <p style="font-weight:bold">Destination&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </asp:TableHeaderCell>
             <asp:TableHeaderCell runat="server">
               <p style="font-weight:bold"> Status&nbsp;&nbsp;&nbsp;&nbsp;</p>
                </asp:TableHeaderCell>
            </asp:TableHeaderRow>
        
        <asp:TableRow>
            <asp:TableCell runat="server" ID="flightno"></asp:TableCell>
            <asp:TableCell runat="server" ID="source"></asp:TableCell>
            <asp:TableCell runat="server" ID="destination"></asp:TableCell>
            <asp:TableCell style="font-weight:bolder" runat="server" ID="status"></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
        </div>
    <img src="img/speed.png" height="70%" width="70%"/>
</body>
</html>
