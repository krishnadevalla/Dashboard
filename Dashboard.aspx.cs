using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection((@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=z1747241;User ID=OMIS675FA;Password=omis675 "));
    SqlCommand cmd = new SqlCommand();
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
        uid =(string)Session["uid"];
        //string emailquery="select * from "
        //Page.ClientScript.RegisterStartupScript(GetType(), "ALERT", "alert('"+uid+"')", true);

    }

    protected void savelog_Click(object sender, EventArgs e)
    {
        if(acttitle.Text!=""&&actcontent.Text!=""&&actdate.Text!="")
        {
            string st = "insert into activityInfo(UserID,ActivityDate,Title,ActivityContent,Reminder) values('" + uid+"','"+ actdate.Text+"','"+acttitle.Text+ "','" + actcontent.Text + "','N')";
            cmd = new SqlCommand(st, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            Session["uid"] = uid;
            actcontent.Text = "";
            acttitle.Text = "";
            actdate.Text = "";
            Response.Redirect("Dashboard");
        }
    }

    protected void menuTabs_MenuItemClick(object sender, MenuEventArgs e)
    {
        if(menuTabs.SelectedValue=="0")
        {
           
        }
        emailtabs.ActiveViewIndex = Int32.Parse(menuTabs.SelectedValue);   
    }
}