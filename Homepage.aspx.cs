using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    string javasrpt = "<script>mywindow=window.open('about.htm','_blank','location=no,resizable=no,width=600px,height=500px',true)</script>";
    string javasrpt1 = "<script>mywindow=window.open('faq.htm','_blank','location=no,resizable=no,width=600px,height=500px',true)</script>";
    string javasrpt2 = "<script>mywindow=window.open('http://1drv.ms/1O958HY','_blank','location=no,resizable=no,width=600px,height=500px',true)</script>";
    string javasrpt3 = "<script>mywindow=window.open('Midterm.htm','_blank','location=no,resizable=no,width=600px,height=500px',true)</script>";
    StringBuilder help = new StringBuilder();
    string un = null, pw = null, uid = null;
    SqlConnection conn = new SqlConnection((@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=z1747241;User ID=OMIS675FA;Password=omis675 "));
    SqlCommand cmd = new SqlCommand();
    string temp = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        if (uname.Text != "" && pword.Text != "")
        {
            un = uname.Text;
            pw = pword.Text;
            temp = "Select * from userAccount where UserName='" + un + "' and Password='" + pw + "'";
            cmd = new SqlCommand(temp, conn);
            conn.Open();
            SqlDataReader sqr = cmd.ExecuteReader();
            sqr.Read();
            if (sqr.HasRows)
            {
                Session.Timeout = 30;
                Session["uid"] = sqr["UserID"];
                conn.Close();
                temp = "Select IsNewUser from userAccount where UserName='" + un + "'";
                cmd = new SqlCommand(temp, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                if (reader["IsNewUser"].ToString() == "Y")
                {
                    conn.Close();
                    temp = "Update UserAccount set IsNewUser='N' where UserName='" + un + "'";
                    cmd = new SqlCommand(temp, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("Settings");
                }
                else
                {
                    conn.Close();
                    Response.Redirect("Dashboard");
                }
            }
            conn.Close();
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "ALERT", "alert('Alert invalid credentials')", true);
            uname.Text = "";
            pword.Text = "";
        }
    }

    protected void signup_Click(object sender, EventArgs e)
    {
        if (fname.Text != "" && lname.Text != "" && email.Text != "" && username.Text != "" && password.Text != "")
        {
            if (password.Text != rpassword.Text)
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "ALERT", "alert('Password does not match')", true);
                password.Text = "";
                rpassword.Text = "";
                return;
            }
            else
            {
                un = username.Text.ToString();
                pw = password.Text.ToString();
                uid = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString();
                temp = "Select * from userAccount where UserName='" + un + "'";
                cmd = new SqlCommand(temp, conn);
                conn.Open();
                if (cmd.ExecuteReader().HasRows)
                {
                    Page.ClientScript.RegisterStartupScript(GetType(), "Already exist", "alert('User already exist')", true);
                    conn.Close();
                    return;
                }
                conn.Close();
                // Insert command - Deepthi
                temp = " Insert into userAccount (UserID,FirstName,LastName,Email,UserName,Password,IsNewUser)  Values ('" + uid + "', '" + fname.Text + "', '" + lname.Text + "', '" + email.Text + "','" + un + "', '" + pw + "','Y')";
                cmd = new SqlCommand(temp, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Page.ClientScript.RegisterStartupScript(GetType(), "User Created", "alert('Sucessfully registered')", true);
                //Response.Redirect("/z1747241/Homepage.aspx", true);
                fname.Text = "";
                lname.Text = "";
                email.Text = "";
                username.Text = "";
                password.Text = "";
                rpassword.Text = "";
                return;
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "Error", "alert('All fields required')", true);
            return;
        }
    }

    protected void about_Click(object sender, EventArgs e)
    {
        Response.Write(javasrpt);
    }

    protected void faq_Click(object sender, EventArgs e)
    {
        Response.Write(javasrpt1);
    }

    protected void demo_Click(object sender, EventArgs e)
    {
        Response.Write(javasrpt2);
    }
    protected void doc_Click(object sender, EventArgs e)
    {
        Response.Write(javasrpt3);
    }
}
