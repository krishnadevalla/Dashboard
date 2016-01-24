<%@ Page Title="Settings" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <br /><br />
    <div id="section" style="color:black">
        
        <table id="table-design" class="nav-justified" style="font-size:large;padding:30px;border: 1px solid rgba(0,0,0,.2);-moz-border-radius: 5px;-webkit-border-radius: 5px;border-radius: 5px;-moz-background-clip: padding;-webkit-background-clip: padding-box;background-clip: padding-box;
   background: rgba(255, 255, 255,0.5); -moz-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);-webkit-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);box-shadow: 0 0 13px 3px rgba(0,0,0,.5);overflow: hidden;width: 60%;">
            <tr>
                <td class="auto-style5" style="width: 535px">
                    <table class="auto-style4">
                        <tr>
                            <td style="height: 22px; width: 57px;">
                                 &nbsp;</td>
                            <td style="height: 22px; width: 141px;" colspan="2">
                                 <h3 style="font-weight:bold">General settings</h3>
                             </td>
                        </tr>
                        <tr>
                            <td style="height: 22px; width: 57px">&nbsp;</td>
                            <td style="height: 22px; width: 141px">Choose features</td>
                            <td class="auto-style3">
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                    <asp:ListItem>Email</asp:ListItem>
                                    <asp:ListItem>Flight tracker</asp:ListItem>
                                    <asp:ListItem>Parcel tracking</asp:ListItem>
                                    <asp:ListItem>Activity log</asp:ListItem>
                                    <asp:ListItem>Social plugins</asp:ListItem>
                                    <asp:ListItem>Browser</asp:ListItem>
                                    <asp:ListItem>Phonebook</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 57px">&nbsp;</td>
                            <td style="width: 141px">Facebook tag</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 57px">&nbsp;</td>
                            <td style="width: 141px">Twitter tag</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 57px">&nbsp;</td>
                            <td style="width: 141px">&nbsp;</td>
                            <td class="auto-style2">
                                <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Save" BorderColor="#006600" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="height: 112px">
                    <table class="nav-justified" style="width: 101%">
                        <tr>
                            <td>
                                <table class="nav-justified">
                                    <tr>
                                        <td style="width: auto; height: auto;">
                                             <h4 style="font-weight:bold">Background Theme</h4>
                                            <asp:ImageButton ID="Image1" ImageUrl="~/img/1.jpg" runat="server" Height="30px" ImageAlign="Middle" Width="30px" OnClick="Image1_Click" />
                                            <asp:ImageButton ID="Image2" runat="server" Height="30px" ImageAlign="Middle" Width="30px" ImageUrl="~/img/2.jpg" OnClick="Image2_Click" />
                                            <asp:ImageButton ID="Image3" runat="server" Height="30px" ImageAlign="Middle" Width="30px" ImageUrl="~/img/3.jpg" OnClick="Image3_Click" />
                                            <asp:ImageButton ID="Image4" runat="server" Height="30px" ImageAlign="Middle" Width="30px" ImageUrl="~/img/4.jpg" OnClick="Image4_Click" />
                                            <asp:ImageButton ID="Image5" runat="server" Height="30px" ImageAlign="Middle" Width="30px" ImageUrl="~/img/5.jpg" OnClick="Image5_Click"/>
                                            <asp:ImageButton ID="Image6" runat="server" Height="30px" ImageAlign="Middle" Width="30px" ImageUrl="~/img/6.jpg" OnClick="Image6_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="Image7" runat="server" Height="30px" ImageUrl="~/img/7.jpg" ImageAlign="Middle" Width="30px" OnClick="Image7_Click" />
                                <asp:ImageButton ID="Image8" runat="server" Height="30px" ImageUrl="~/img/8.jpg" ImageAlign="Middle" Width="30px" OnClick="Image8_Click" />
                                <asp:ImageButton ID="Image9" runat="server" Height="30px" ImageUrl="~/img/9.jpg" ImageAlign="Middle" Width="30px" OnClick="Image9_Click" />
                                <asp:ImageButton ID="Image10" runat="server" Height="30px" ImageUrl="~/img/11.jpg" ImageAlign="Middle" Width="30px" OnClick="Image10_Click" />
                                <asp:ImageButton ID="Image11" runat="server" Height="30px" ImageUrl="~/img/left.jpg" ImageAlign="Middle" Width="30px" OnClick="Image11_Click" />
                                <asp:ImageButton ID="Image12" runat="server" Height="30px" ImageUrl="~/img/10.jpg" ImageAlign="Middle" Width="30px" OnClick="Image12_Click" />
                            </td>
                        </tr>
                    </table>
        <table class="nav-justified" style="width: 99%">
            <tr>
                <td style="width: 277px">
     <h3 style="font-weight:bold; width: 178px;">Profile settings
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 277px; height: 42px;"></td>
                <td style="height: 42px"></td>
                <td style="height: 42px"></td>
            </tr>
            <tr>
                <td style="width: 277px">First Name</td>
                <td>
                    <asp:TextBox ID="editfname" runat="server" Enabled="false"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 24px; width: 277px;">Last Name</td>
                <td style="height: 24px">
                    <asp:TextBox ID="editlname" runat="server" Enabled="false"></asp:TextBox>
                </td>
                <td style="height: 24px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 277px">Email</td>
                <td>
                    <asp:TextBox ID="editemail" runat="server" Enabled="false"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td style="width: 277px">Password</td>
                <td>
                    <asp:TextBox ID="editpassword" runat="server" Enabled="false" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 277px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" CssClass="btn" Text="Edit" BorderColor="#006600" />
                </td>
                <td>
                    <asp:Button ID="Button3" OnClick="Button3_Click" Enabled="false"  runat="server" CssClass="btn" Text="Save" BorderColor="#006600" />
               </td>
            </tr>
        </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="width: 535px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    </div>
    <div id="section">
    </div>
</asp:Content>

