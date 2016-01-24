<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>My Dashboard</title>
<link rel="stylesheet" type="text/css" href="style.css" />
    <style type="text/css">
        .auto-style2 {
            width: 689px;
        }
        .auto-style3 {
            position: relative;
            left: 0%;
            top: 6px;
            width: 26%;
            height: 95px;
        }
        .auto-style5 {
            height: 631px;
            width: 577px;
            margin-top: 32;
        }
    </style>
</head>
<body>
    <div>
        <br /><br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="img/logo.png" class="auto-style3"/>
        <br /><br /><br /><br /><br /><br />
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="auto-style2">
                <section id="content">
                    
                     <form id="form1" runat="server">
                        <h1>Login</h1>
                        <asp:TextBox ID="uname" type="text" runat="server" placeholder="Username"/>
                        <asp:TextBox ID="pword" type="password" runat="server" placeholder="Password"/>
                        <asp:Button ID="login" runat="server" Text="Login" OnClick="login_Click" />
                        <br />
                        <a href="#">Forgot your password?</a>
                <br /><br /><br /><br /><br />
                        <h1>Register</h1>
                        <asp:TextBox runat="server" type="text" placeholder="First Name" ID="fname" />
                        <asp:TextBox runat="server" type="text" placeholder="Last Name" id="lname" />
                        <asp:TextBox runat="server" type="text" placeholder="Email" id="email" />
                        <asp:TextBox runat="server" type="text" placeholder="Username" id="username" />
                        <asp:TextBox runat="server" type="password" placeholder="Password" id="password" />
                        <asp:TextBox runat="server" type="password" placeholder="Re-Password" id="rpassword" />
                        <asp:Button runat="server" Text="Signup" id="signup" OnClick="signup_Click" />
         <div style="position:absolute;left:300%;top:-50%;">
             <table><tr>
                 <td>
                     <asp:LinkButton ID="about" runat="server" ForeColor="White" OnClick="about_Click">About</asp:LinkButton>
                 </td>
                 <td>
                     <asp:LinkButton ID="demo" runat="server" ForeColor="White" OnClick="demo_Click">Demo</asp:LinkButton>
                 </td>
                 <td>
                     <asp:LinkButton ID="faq" runat="server" ForeColor="White" OnClick="faq_Click">FAQ</asp:LinkButton>
                 </td>
                 <td>
                     <asp:LinkButton ID="doc" runat="server" ForeColor="White" OnClick="doc_Click">Documentation</asp:LinkButton>
                 </td>
                    </tr>
             
             
             
             </table>
        </div>
                      </form>
                </section>
        </div>            
        <div style="position:absolute;top:40px;left:50%">
            <br /><br /><br /><br /><br /><br />
            <img src="img/side.png" class="auto-style5"/>
            
        </div>
  </div>
</body>
</html>