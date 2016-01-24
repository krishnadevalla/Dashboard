<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DataEntry.aspx.cs" Inherits="DataEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="309px">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Architecture" HeaderText="Architecture" SortExpression="Architecture" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
</asp:DetailsView>
    <hr />
    <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:z1747241ConnectionString %>" DeleteCommand="DELETE FROM [FormFactor] WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))" InsertCommand="INSERT INTO [FormFactor] ([Name]) VALUES (@Name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FormFactor]" UpdateCommand="UPDATE [FormFactor] SET [Name] = @Name WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:z1747241ConnectionString %>" DeleteCommand="DELETE FROM [OS] WHERE [ID] = @original_ID AND [Name] = @original_Name AND (([Architecture] = @original_Architecture) OR ([Architecture] IS NULL AND @original_Architecture IS NULL))" InsertCommand="INSERT INTO [OS] ([Name], [Architecture]) VALUES (@Name, @Architecture)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [OS]" UpdateCommand="UPDATE [OS] SET [Name] = @Name, [Architecture] = @Architecture WHERE [ID] = @original_ID AND [Name] = @original_Name AND (([Architecture] = @original_Architecture) OR ([Architecture] IS NULL AND @original_Architecture IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Architecture" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Architecture" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Architecture" Type="String" />
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter Name="original_Architecture" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
</p>
</asp:Content>

