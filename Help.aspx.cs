using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Help : System.Web.UI.Page
{
    string javasrpt = "<script>mywindow=window.open('helpchild.aspx','_blank','location=no,resizable=no,width=600px,height=500px',true)</script>";
    SqlConnection conn = new SqlConnection((@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=z1747241;User ID=OMIS675FA;Password=omis675 "));
    SqlCommand cmd = new SqlCommand();
    StringBuilder help = new StringBuilder();
    string uid = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["imageURL"] != null)
        {
            string img = (string)Session["ImageURL"];
            StringBuilder sc = new StringBuilder();
            sc.Append("document.body.style.background = \"url('" + img + "') center fixed no-repeat\";");
            sc.Append("document.body.style.backgroundSize =\"cover\";");
            Page.ClientScript.RegisterStartupScript(GetType(), "bg", sc.ToString(), true);
        }
        uid = (string)Session["uid"];
    }
    protected void reghelp_Click(object sender, EventArgs e)
    {
        help.Clear();
        help.Append("<h3>Registration Help!</h3>  <br/><br/><ul> <li>Go To home page - <a href= 'http://omisapps.niu.edu/z1747241/homepage'> Homepage</a> </li> <li> Navigate to Regestration tab </li> <li> Enter your first name </li><li> Enter your last name </li><li> Enter your email id </li> <li> Enter your Phone number </li><li> Enter your username and password </li> <li> Re-enter your password </li><li> Click on submit </li> ");
        Session["help"] = help.ToString();
        Response.Write(javasrpt);
    }
    protected void loghelp_Click(object sender, EventArgs e)
    {
        help.Clear();
        help.Append("<h3>Login Help!</h3>  <br/><br/><ul> <li>Go To home page - <a href= 'http://omisapps.niu.edu/z1747241/homepage'> Homepage</a> </li> <li> Navigate to Login tab </li> <li> Enter your username </li><li> Enter your password </li><li> Click on Submit </li><li> If you forgot your password, then click on forgot password? link </li>");
        Session["help"] = help.ToString();
        Response.Write(javasrpt);
    }
    protected void otherhelp_Click(object sender, EventArgs e)
    {
        help.Clear();
        help.Append("<h3>Other Help!</h3>  <br/><br/> Contact the customer service center at <a>8157645570</a> or email to <a>help@omisapps.com</a> for more help.");
        Session["help"] = help.ToString();
        Response.Write(javasrpt);
    }
    protected void contactus_Click(object sender, EventArgs e)
    {
        help.Clear();
        help.Append("<h3>Contact Us</h3>  <br/> Feel free to contact the customer service center at <a>8157645570</a> or email to <a>help@omisapps.com</a> for any queries or suggestions.<br/> Fill out the support form below to submit a request.");
        Session["help"] = help.ToString();
        Response.Write(javasrpt);
    }
    protected void changebg_Click(object sender, EventArgs e)
    {
        help.Clear();
        help.Append("<h3> Change Background Help!</h3> <br/> <ul><li>Navigate to the Left Pane</li><li> click on Settings option</li><li> Under the Backgrounf theme, seletct the required background and the background will be applied");
        Session["help"] = help.ToString();
        Response.Write(javasrpt);
    }
    protected void addemail_Click(object sender, EventArgs e)
    {
        help.Clear();
        help.Append("");
        Session["help"] = help.ToString();
        Response.Write(javasrpt);
    }
    protected void activlog_Click(object sender, EventArgs e)
    {
        help.Clear();
        help.Append("");
        Session["help"] = help.ToString();
        Response.Write(javasrpt);
    }
    protected void fbtag_Click(object sender, EventArgs e)
    {
        help.Clear();
        help.Append("");
        Session["help"] = help.ToString();
        Response.Write(javasrpt);
    }
    protected void twittertag_Click(object sender, EventArgs e)
    {
        help.Clear();
        help.Append("");
        Session["help"] = help.ToString();
        Response.Write(javasrpt);
    }

    protected void supportbtn_Click(object sender, EventArgs e)
    {
        if(sname.Text!=""&&semail.Text!=""&&sphone.Text!=""&&sproblem.Text!="")
        {
            string support = "insert into supportForm(UserID,Name,Email,Phone,PreferredContact,AvailableTime,ProblemDescription,Priority,Status) values ('" + uid + "','" + sname.Text + "','" + semail.Text + "','" + sphone.Text + "','" + spreferedcontact.Text + "','" + stimeavaliable.Text + "','" + sproblem.Text + "','" + priority.SelectedValue + "','New');";
            sname.Text = "";
            semail.Text = "";
            sphone.Text = "";
            sproblem.Text = "";
            stimeavaliable.Text = "";
            spreferedcontact.SelectedIndex = 0;
            priority.SelectedIndex = 0;
            cmd = new SqlCommand(support, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            conf.Visible = true;
            

        }
    }
}