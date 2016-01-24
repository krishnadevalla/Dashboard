<%@ Page Language="C#" AutoEventWireup="true" CodeFile="helpchild.aspx.cs" Inherits="helpchild" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Help window</title>
    <script type="text/javascript">
        function closewindow()
        {
            open(location, '_self').close();
        }
    </script>
        <LINK href="Content/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body style="background:rgba(150, 150, 150,0.5);">
    <form id="form1" runat="server">
    <div style="color:white;padding:4px">
    <asp:Label ID="helpcontent" style="font-size:medium;font-weight:bold" runat="server">null</asp:Label>
        <br />
        <br />
        <button id="close" onclick="closewindow();" >Close</button> 
    </div>
    </form>
</body>
</html>
