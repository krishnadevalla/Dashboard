<%@ Page Title="Help" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type = "text/javascript"> src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" </script>
    <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        $("#cb").live("click", function () {
            $("#popup").dialog({
                title: "Help",
                width: 600,
            });
            return false;
        });
    </script>   
    <div class="container" >
        <section style="position:relative;color:black"; id="content">
            <br /><br />
            <table style="font-size:large;padding:30px;border: 1px solid rgba(0,0,0,.2);-moz-border-radius: 5px;-webkit-border-radius: 5px;border-radius: 5px;-moz-background-clip: padding;-webkit-background-clip: padding-box;background-clip: padding-box;
   background: rgba(255, 255, 255,0.5); -moz-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);-webkit-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);box-shadow: 0 0 13px 3px rgba(0,0,0,.5);overflow: hidden;">
               <tr>
                  <td style="height: 186px">  
                    <table class="nav-justified">
                        <tr> <td>&nbsp;</td> <td><h3>General help</h3></td></tr>
                        <tr>
                            <td style="width: 49px">&nbsp;</td>
                            <td><asp:Button runat="server" Text="Registration help" BackColor="Transparent" ID="reghelp" BorderStyle="None" OnClick="reghelp_Click"></asp:Button>
                        </tr>
                        <tr>
                            <td style="width: 49px">&nbsp;</td>
                            <td><asp:Button runat="server" Text="Login help" BackColor="Transparent" ID="loghelp" BorderStyle="None" OnClick="loghelp_Click"></asp:Button></td>
                        </tr>
                        <tr>
                            <td style="width: 49px">&nbsp;</td>
                            <td><asp:Button runat="server" Text="Other help" BackColor="Transparent" ID="otherhelp" BorderStyle="None" OnClick="otherhelp_Click"></asp:Button></td>
                        </tr>
                        <tr>
                            <td style="width: 49px">&nbsp;</td>
                            <td><asp:Button runat="server" Text="Contact us" BackColor="Transparent" ID="contactus" BorderStyle="None" OnClick="contactus_Click"></asp:Button></td>
                        </tr>
                        <tr>
                            <td style="width: 49px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>                   
                  <td style="height: 186px">
                    <table class="nav-justified">
                        <tr> <td style="width: 111px">&nbsp;</td> <td style="width: 384px"><h3>Settings help</h3></td></tr>
                        <tr>
                            <td style="width: 111px">&nbsp;</td>
                            <td style="width: 384px"><asp:Button runat="server" Text="Change background" BackColor="Transparent" ID="changebg" BorderStyle="None" OnClick="changebg_Click"></asp:Button></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">&nbsp;</td>
                            <td style="width: 384px"><asp:Button runat="server" Text="Add emails" BackColor="Transparent" ID="addemail" BorderStyle="None" OnClick="addemail_Click"></asp:Button></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">&nbsp;</td>
                            <td style="width: 384px"><asp:Button runat="server" Text="Change or delete active logs" BackColor="Transparent" ID="activlog" BorderStyle="None" OnClick="activlog_Click"></asp:Button></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">&nbsp;</td>
                            <td style="width: 384px"><asp:Button runat="server" Text="Change facebook tags" BackColor="Transparent" ID="fbtag" BorderStyle="None" OnClick="fbtag_Click"></asp:Button></td>
                        </tr>
                        <tr>
                            <td style="width: 111px">&nbsp;</td>
                            <td style="width: 384px"><asp:Button runat="server" Text="Change twitter tags" BackColor="Transparent" ID="twittertag" BorderStyle="None" OnClick="twittertag_Click"></asp:Button></td>
                        </tr>
                    </table>
                   </td>
                </tr>
            </table>
            <br /><br /><br />
            <table class="contact" style="font-size:large;padding:30px;border: 1px solid rgba(0,0,0,.2);-moz-border-radius: 5px;-webkit-border-radius: 5px;border-radius: 5px;-moz-background-clip: padding;-webkit-background-clip: padding-box;background-clip: padding-box;
   background: rgba(255, 255, 255,0.5); -moz-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);-webkit-box-shadow: 0 0 13px 3px rgba(0,0,0,.5);box-shadow: 0 0 13px 3px rgba(0,0,0,.5);overflow: hidden;">
        <tr>
            <td style="height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td style="align-content:center" colspan="2">
                <table >
                    <tr>
                        <td colspan="3"><center><asp:Label ID="conf" runat="server" Text="Request submitted. Our representative will contact you soon" visible="false" style="color: white; background-color: green; height: 20px"/></center></td>
                    </tr>
                    <tr><td style="width: 120px">&nbsp;</td>
                        <td colspan="2"><h2>Support form</h2></td>
                        
                    </tr>
                     <tr>
                        <td style="padding: 10px;width: 120px">&nbsp;</td>
                        <td style="padding: 10px;width: 236px">Name</td>
                        <td style="width: 283px">
                            <asp:TextBox ID="sname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 10px;width: 120px">&nbsp;</td>
                        <td style="padding: 10px;width: 236px">Email</td>
                        <td style="width: 283px">
                            <asp:TextBox ID="semail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 10px;width: 120px">&nbsp;</td>
                        <td style="padding: 10px;width: 236px">Phone</td>
                        <td style="width: 283px">
                            <asp:TextBox ID="sphone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 10px;width: 120px">&nbsp;</td>
                        <td style="padding: 10px;width: 236px">Preffered contact</td>
                        <td style="width: 283px">
                            <asp:DropDownList ID="spreferedcontact" runat="server" Height="30px" Width="131px">
                                <asp:ListItem>Email</asp:ListItem>
                                <asp:ListItem>Phone</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 10px;height: 22px; width: 120px">&nbsp;</td>
                        <td style="padding: 10px;height: 22px; width: 236px">Time avaliable</td>
                        <td style="height: 22px; width: 283px;">
                            <asp:TextBox ID="stimeavaliable" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 10px;width: 120px; height: 30px">&nbsp;</td>
                        <td style="padding: 10px;width: 242px; height: 30px">Problem Description</td>
                        <td style="height: 22px; width: 283px;">
                            <asp:TextBox ID="sproblem" runat="server" TextMode="MultiLine" Width="231px" Rows="4"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 10px;width: 120px">&nbsp;</td>
                        <td style="padding: 10px;width: 236px">Priority</td>
                        <td class="auto-style2" style="width: 283px">
                            <asp:RadioButtonList ID="priority" runat="server" RepeatDirection="Horizontal" BorderStyle="None" CssClass="table-condensed">
                                <asp:ListItem>Low</asp:ListItem>
                                <asp:ListItem>Medium</asp:ListItem>
                                <asp:ListItem>High</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="width: 120px">&nbsp;</td>

                        <td></td>

                        <td style="width: 283px">
                            <asp:Button runat="server" Text="submit" id="supportbtn" CssClass="btn" BorderColor="#009933" OnClick="supportbtn_Click" />
                            <br /><br />
                            
                        </td>
                    </tr>
                    
                </table>
                
            </td>
        </tr>
    </table>
            </section>
        </div>
</asp:Content>

