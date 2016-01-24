<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div>
        <h1>Leela Krishna Devalla- OMIS 675</h1></div>
        <div><p class="text-success">This is my first assignment using ASP.NET</p> </div>
        <div><a href="About.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a></div><br />
        <div><asp:Image ID="Image1" runat="server" Height="255px" ImageUrl="~/IMG/my.jpg" Width="259px" /></div>
        <br />
        <div><p><asp:Button ID="Button1" class="btn btn-info btn-small" runat="server" Text="Get Geo" PostBackUrl="~/Geo.aspx" />&nbsp;
            <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Video" PostBackUrl="~/Video.aspx" />
            </p></div>
    </div>

    </asp:Content>
