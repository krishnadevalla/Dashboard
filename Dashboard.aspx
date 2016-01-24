<%@ Page Title="My Dashboard" Language="C#" MasterPageFile="~/Site2.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:content id="Content1" contentplaceholderid="MainContent" runat="Server">
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
                <script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
                <script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
                <link href="calendar-blue.css" rel="stylesheet" type="text/css" />
                <script type="text/javascript">
                    $(document).ready(function () {
                        $("#<%=actdate.ClientID %>").dynDateTime({
                            showsTime: true,
                            ifFormat: "%Y/%m/%d %H:%M",
                            daFormat: "%l;%M %p, %e %m, %Y",
                            align: "BR",
                            electric: false,
                            singleClick: false,
                            displayArea: ".siblings('.dtcDisplayArea')",
                            button: ".next()"
                        });
                    });
                </script>
    <br /><br />
    
    <table border="0" style="position:absolute;top: 50px;">
    <tr>
        <td style="position:relative;top:auto; width: 459px;"> 
            <iframe style="border-radius: 25px;" src="http://niu.edu" width="360px" height="480px"></iframe>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td style="position:relative;left:-5%;top: 0px;height: 516px; width: 421px">
            <iframe style="border-radius: 25px;" src="https://en.m.wikipedia.org" width="360px" height="480px"></iframe> <br /><br/>
        </td>
        <td>
            <div style="position:relative;left:-10%">
             <iframe style="border-radius: 25px;position:relative;left:11%; top: 0px; width: 576px;" src="http://bing.com" height="480px"></iframe> 
             </div>
        </td>
    </tr>
    <tr>
        
        <td style="position:relative;border-radius: 25px;width:459px; height:300px;background-image:url('img/activity.jpg');">
            <div style="padding-right: 10px; padding-left: 10px">
                <h5>Activity log</h5>
            <asp:GridView runat="server" id="activitylog" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BorderStyle="None" CellSpacing="2" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="ActivityDate" HeaderText="Date" SortExpression="ActivityDate" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="ActivityDate" />
                <asp:BoundField DataField="ActivityContent" HeaderText="Description" SortExpression="ActivityDate" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
                </div>
                <br />
            <table style="border:solid; color:black;background: rgba(255, 255, 255,0.5)">
                <tr>
                    <td>Title: <asp:TextBox runat="server" id="acttitle"></asp:TextBox></td>
                    <td>Content: <asp:TextBox runat="server" id="actcontent" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                
                 <td>
                
                     Date: <asp:TextBox runat="server" id="actdate"></asp:TextBox>
                 </td>
                 <td>
                        <asp:button id="savelog" runat="server" text="Save" OnClick="savelog_Click" />
                </td>
                </tr>
            </table>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:z1747241ConnectionString %>" SelectCommand="SELECT [ActivityDate], [Title], [ActivityContent] FROM [activityInfo]"></asp:SqlDataSource> 
         </td>
        <td style="height: 300px; width: 421px"><div style="position:relative;left:13%; top: 0px; width: 335px;">
            <iframe style="position:relative; border-radius: 25px;" width="210" height="300" src="http://web2.0calc.com/widgets/minimal/?options=%7B%22angular%22%3A%22deg%22%2C%22options%22%3A%22hide%22%2C%22menu%22%3A%22show%22%7D" scrolling="no" style="border: 1px solid silver; "> </iframe>
        </div>
         </td>
        <td style="position:relative;left:-5%;height: 300px;background-image:url('img/email.jpg');border-radius: 25px; ">
            <center>
            <div style="width: 401px;">
        <asp:Menu id="menuTabs" CssClass="menuTabs" StaticMenuItemStyle-CssClass="tab" StaticSelectedStyle-CssClass="selectedTab" Orientation="Horizontal" OnMenuItemClick="menuTabs_MenuItemClick" Runat="server">
        <Items>
        <asp:MenuItem
            Text="Email 1"
            Value="0" 
            Selected="true" />
        <asp:MenuItem
            Text="Email 2" 
            Value="1"/>
        </Items>
    </asp:Menu>    

            <asp:MultiView id="emailtabs" runat="server" ActiveViewIndex="0">
                <asp:View ID="Email1" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="EmailDate" HeaderText="EmailDate" SortExpression="EmailDate" />
                            <asp:BoundField DataField="FromEmailID" HeaderText="FromEmailID" SortExpression="FromEmailID" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                            <asp:BoundField DataField="EmailContent" HeaderText="EmailContent" SortExpression="EmailContent" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:z1747241ConnectionString %>" SelectCommand="SELECT [EmailDate], [FromEmailID], [Subject], [EmailContent] FROM [emailInfo] WHERE ([UserID] = @UserID2)">
                        <SelectParameters>
                            <asp:SessionParameter Name="UserID2" SessionField="uid" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:View>
                <asp:View ID="Email2" runat="server">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <Columns>
                            <asp:BoundField DataField="EmailDate" HeaderText="EmailDate" SortExpression="EmailDate" />
                            <asp:BoundField DataField="FromEmailID" HeaderText="FromEmailID" SortExpression="FromEmailID" />
                            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                            <asp:BoundField DataField="EmailContent" HeaderText="EmailContent" SortExpression="EmailContent" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </asp:View>
            </asp:MultiView>
                </div></center>
        </td>
    </tr>
        <tr>
            <td style="width: 459px">
               <br />
                 
                <iframe src="flight.aspx"  width="400" height="400" style="border-radius: 25px;padding: 3px"></iframe>
                 
                
            </td>
            <td style="width: 421px"><br />
                
                <iframe src="courier.aspx" style="border-radius: 25px;padding: 3px;position:relative;left:5%; top: 14px; width: 429px; height: 386px;"></iframe>
                 
                </td>
            <td>&nbsp;</td>
        </tr>
</table>
</asp:content>

