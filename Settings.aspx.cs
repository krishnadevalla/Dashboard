using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Settings : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection((@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=z1747241;User ID=OMIS675FA;Password=omis675 "));
    SqlCommand cmd = new SqlCommand();
    string uid = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["imageURL"]!=null)
        { 
            string img = (string)Session["ImageURL"];
            StringBuilder sc = new StringBuilder();
            sc.Append("document.body.style.background = \"url('" + img + "') center fixed no-repeat\";");
            sc.Append("document.body.style.backgroundSize =\"cover\";");
            Page.ClientScript.RegisterStartupScript(GetType(), "bg", sc.ToString(), true);
        }
        uid = (string)Session["uid"];
        string st = "select * from userAccount where UserID='" + uid+"'";
        cmd = new SqlCommand(st, conn);
        conn.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        editfname.Text = (string)reader["FirstName"];
        editlname.Text = (string)reader["LastName"];
        editemail.Text = (string)reader["Email"];
        conn.Close();
    }
    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"]= "img/1.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Image2_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/2.jpg";
        Response.Redirect("Dashboard");

    }

    protected void Image3_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/3.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Image4_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/4.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Image5_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/5.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Image6_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/6.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Image7_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/7.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Image8_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/8.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Image9_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/9.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Image10_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/11.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Image11_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/left.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Image12_Click(object sender, ImageClickEventArgs e)
    {
        Session["imageURL"] = "img/10.jpg";
        Response.Redirect("Dashboard");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        editfname.Enabled = true;
        editlname.Enabled = true;
        editemail.Enabled = true;
        editpassword.Enabled = true;
        Button3.Enabled = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
   
        string sc = null;
        if (editpassword.Text == "")
            sc="update userAccount set FirstName='" +editfname.Text+"',LastName='"+editlname.Text+"',Email='"+editemail.Text+"' where UserID='"+uid+"';";
        else
            sc="update userAccount set FirstName='" + editfname.Text + "',LastName='" + editlname.Text + "',Email='" + editemail.Text + "',Password='"+editpassword.Text+"' where UserID='" + uid + "';";
        cmd = new SqlCommand(sc, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}