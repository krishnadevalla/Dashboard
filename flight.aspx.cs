using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flight : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection((@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=z1747241;User ID=OMIS675FA;Password=omis675 "));
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        string get = "select * from flightTrackingInfo where FlightNumber='" + number.Text + "'";
        cmd = new SqlCommand(get, conn);
        conn.Open();
        SqlDataReader reader= cmd.ExecuteReader();
        reader.Read();
        error.Visible = false;
        if (reader.HasRows)
        {
            flightstatus.Visible = true;
            flightno.Text = "&nbsp; &nbsp; &nbsp; &nbsp;"+(string)reader["FlightNumber"]+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
            source.Text = (string)reader["Source"]+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
            destination.Text = (string)reader["Destination"]+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
            status.Text = (string)reader["Status"];
        }
        else
        {
            error.Visible = true;
            flightstatus.Visible = false;
        }
    }
}