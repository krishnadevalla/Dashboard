<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Tickets.aspx.cs" Inherits="Admin_Tickets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            left: 30%;
            top: 164px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="UserID" DataSourceID="OpenTickets">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="User ID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ProblemDescription" HeaderText="Problem Description" SortExpression="ProblemDescription" />
            <asp:BoundField DataField="Priority" HeaderText="Priority" SortExpression="Priority" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="OpenTickets" runat="server" ConnectionString="<%$ ConnectionStrings:z1747241ConnectionString %>" SelectCommand="SELECT [UserID], [Name], [ProblemDescription], [Priority], [Status] FROM [supportForm]">
        
    </asp:SqlDataSource>


    <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="UserID" DataSourceID="SqlDataSource1" GridLines="Both">
        <EditItemTemplate>
            UserID:
            <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            PreferredContact:
            <asp:TextBox ID="PreferredContactTextBox" runat="server" Text='<%# Bind("PreferredContact") %>' />
            <br />
            AvailableTime:
            <asp:TextBox ID="AvailableTimeTextBox" runat="server" Text='<%# Bind("AvailableTime") %>' />
            <br />
            ProblemDescription:
            <asp:TextBox ID="ProblemDescriptionTextBox" runat="server" Text='<%# Bind("ProblemDescription") %>' />
            <br />
            Priority:
            <asp:TextBox ID="PriorityTextBox" runat="server" Text='<%# Bind("Priority") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            UserID:
            <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            PreferredContact:
            <asp:TextBox ID="PreferredContactTextBox" runat="server" Text='<%# Bind("PreferredContact") %>' />
            <br />
            AvailableTime:
            <asp:TextBox ID="AvailableTimeTextBox" runat="server" Text='<%# Bind("AvailableTime") %>' />
            <br />
            ProblemDescription:
            <asp:TextBox ID="ProblemDescriptionTextBox" runat="server" Text='<%# Bind("ProblemDescription") %>' />
            <br />
            Priority:
            <asp:TextBox ID="PriorityTextBox" runat="server" Text='<%# Bind("Priority") %>' />
            <br />
            Status:
            <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            PreferredContact:
            <asp:Label ID="PreferredContactLabel" runat="server" Text='<%# Bind("PreferredContact") %>' />
            <br />
            AvailableTime:
            <asp:Label ID="AvailableTimeLabel" runat="server" Text='<%# Bind("AvailableTime") %>' />
            <br />
            ProblemDescription:
            <asp:Label ID="ProblemDescriptionLabel" runat="server" Text='<%# Bind("ProblemDescription") %>' />
            <br />
            Priority:
            <asp:Label ID="PriorityLabel" runat="server" Text='<%# Bind("Priority") %>' />
            <br />
            Status:
            <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:z1747241ConnectionString %>" DeleteCommand="DELETE FROM [supportForm] WHERE [UserID] = @original_UserID AND [Name] = @original_Name AND [Email] = @original_Email AND [Phone] = @original_Phone AND [PreferredContact] = @original_PreferredContact AND [AvailableTime] = @original_AvailableTime AND [ProblemDescription] = @original_ProblemDescription AND (([Priority] = @original_Priority) OR ([Priority] IS NULL AND @original_Priority IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [supportForm] ([UserID], [Name], [Email], [Phone], [PreferredContact], [AvailableTime], [ProblemDescription], [Priority], [Status]) VALUES (@UserID, @Name, @Email, @Phone, @PreferredContact, @AvailableTime, @ProblemDescription, @Priority, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [supportForm] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [supportForm] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone, [PreferredContact] = @PreferredContact, [AvailableTime] = @AvailableTime, [ProblemDescription] = @ProblemDescription, [Priority] = @Priority, [Status] = @Status WHERE [UserID] = @original_UserID AND [Name] = @original_Name AND [Email] = @original_Email AND [Phone] = @original_Phone AND [PreferredContact] = @original_PreferredContact AND [AvailableTime] = @original_AvailableTime AND [ProblemDescription] = @original_ProblemDescription AND (([Priority] = @original_Priority) OR ([Priority] IS NULL AND @original_Priority IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_UserID" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_PreferredContact" Type="String" />
            <asp:Parameter Name="original_AvailableTime" Type="String" />
            <asp:Parameter Name="original_ProblemDescription" Type="String" />
            <asp:Parameter Name="original_Priority" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="PreferredContact" Type="String" />
            <asp:Parameter Name="AvailableTime" Type="String" />
            <asp:Parameter Name="ProblemDescription" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="UserID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="PreferredContact" Type="String" />
            <asp:Parameter Name="AvailableTime" Type="String" />
            <asp:Parameter Name="ProblemDescription" Type="String" />
            <asp:Parameter Name="Priority" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="original_UserID" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_PreferredContact" Type="String" />
            <asp:Parameter Name="original_AvailableTime" Type="String" />
            <asp:Parameter Name="original_ProblemDescription" Type="String" />
            <asp:Parameter Name="original_Priority" Type="String" />
            <asp:Parameter Name="original_Status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
