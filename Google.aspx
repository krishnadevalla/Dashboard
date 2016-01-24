<%@ Page Title="Google Analytics" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Google.aspx.cs" Inherits="Google" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Chewy' rel='stylesheet' type='text/css'>
    <div><br />
    <asp:Label runat="server" ID="vis" Text="Visitors" style="font-family: 'Quicksand', sans-serif;font-size:100px;font-weight:bolder;color:orangered"></asp:Label><br />
    <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1RCUsIO7edmCS93g4N1IrwBz0lyQGAKUn_rbOhaINpuo/pubchart?oid=462327230&amp;format=interactive"></iframe><br />
    <asp:Label runat="server" ID="top" Text="Top pages" style="font-family: 'Orbitron', sans-serif;font-size:100px;color:blue"></asp:Label><br />
    <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1RCUsIO7edmCS93g4N1IrwBz0lyQGAKUn_rbOhaINpuo/pubchart?oid=128048482&amp;format=interactive"></iframe><br />
    <asp:Label runat="server" ID="pagetime" Text="Time spent on pages" style="font-family: 'Chewy', cursive;, sans-serif;font-size:100px;color:darkgreen"></asp:Label><br />
    <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/1RCUsIO7edmCS93g4N1IrwBz0lyQGAKUn_rbOhaINpuo/pubchart?oid=1349957206&amp;format=interactive"></iframe>
    </div>
</asp:Content>

