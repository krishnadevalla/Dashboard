<%@ Page Title="Huskie helpdesk" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HD.aspx.cs" Inherits="HD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <table style="width: 100%; background-color: #FFFF99;">
        <tr>
            <td colspan="3" style="height: 165px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <asp:Label ID="Label1" runat="server" Text="Huskies Helpdesk System" CssClass="h1"></asp:Label>
                <asp:Image ID="Image1" runat="server" Height="79px" ImageUrl="~/IMG/help.png" Width="86px" />
                <asp:SqlDataSource ID="SqlOS" runat="server" ConnectionString="<%$ ConnectionStrings:z1747241ConnectionString %>" SelectCommand="SELECT [Name] FROM [OS]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlFF" runat="server" ConnectionString="<%$ ConnectionStrings:z1747241ConnectionString %>" SelectCommand="SELECT [Name] FROM [FormFactor]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" CssClass="h3" Text="User Information"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" CssClass="h3" Text="System Information"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" CssClass="h3" Text="Problem Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%; background-color: #FFFF99;">
                    <tr>
                        <td style="height: 23px">First Name</td>
                        <td style="height: 23px">
                            <asp:TextBox ID="tbUserFirst" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUserFirst" ErrorMessage="First name required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td>
                            <asp:TextBox ID="tbUserLast" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbUserLast" ErrorMessage="Last name required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 23px">Phone</td>
                        <td style="height: 23px">
                            <asp:TextBox ID="tbUserPhone" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbUserPhone" ErrorMessage="Phone required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:TextBox ID="tbUserEmail" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbUserEmail" ErrorMessage="Vaild Email required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbUserEmail" ErrorMessage="Not a valid email ID " ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width: 100%; background-color: #FFFF99;border-left:1px dotted #000;">
                    <tr>
                        <td>System Name</td>
                        <td>
                            <asp:TextBox ID="tbSysName" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbSysName" ErrorMessage="System name required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>IP Address</td>
                        <td>
                            <asp:TextBox ID="tbIP" runat="server"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbIP" ErrorMessage="IP address required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Operating System</td>
                        <td>
                            <asp:DropDownList ID="ddOS" runat="server" DataSourceID="SqlOS" DataTextField="Name" DataValueField="Name">
                                <asp:ListItem>Windows XP</asp:ListItem>
                                <asp:ListItem>Windows 7</asp:ListItem>
                                <asp:ListItem>Windows 8</asp:ListItem>
                                <asp:ListItem>Mac OSX Snow Leopard</asp:ListItem>
                                <asp:ListItem>Mac OSX Mavericks</asp:ListItem>
                                <asp:ListItem>Linux Ubuntu</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Form Factor</td>
                        <td>
                            <asp:RadioButtonList ID="rbFF" runat="server" RepeatDirection="Horizontal" BackColor="#FFFF99" DataSourceID="SqlFF" DataTextField="Name" DataValueField="Name">
                                <asp:ListItem Selected="True">Desktop</asp:ListItem>
                                <asp:ListItem>Laptop</asp:ListItem>
                                <asp:ListItem>Tablet</asp:ListItem>
                            </asp:RadioButtonList>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="rbFF" ErrorMessage="Form factor required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table style="width: 100%; background-color: #FFFF99;border-left:1px dotted #000 ;"">
                    <tr>
                        <td>Problem Description</td>
                        <td>
                            <asp:TextBox ID="tbProblem" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbUserLast" ErrorMessage="Problem description required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Priority</td>
                        <td>
                            <asp:RadioButtonList ID="rbPriority" runat="server" Height="100px" RepeatDirection="Horizontal" Width="300px" BackColor="#FFFF99">
                                <asp:ListItem>4 hr</asp:ListItem>
                                <asp:ListItem>8 hr</asp:ListItem>
                                <asp:ListItem>24 hr</asp:ListItem>
                                <asp:ListItem Selected="True">Select</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="3">
                <asp:Button ID="btnCreate" runat="server" CssClass="btn-warning active" OnClick="btnCreate_Click" Text="Create Ticket" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:TextBox ID="tbTicket" runat="server" Height="300px" TextMode="MultiLine" Visible="False" Width="95%"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

