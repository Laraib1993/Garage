using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class CTimeline : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    string connstr = "Data Source=LARAIB;Initial Catalog=workshop;Integrated Security=true";
    string strqry;
    protected void Page_Load(object sender, EventArgs e)
    {

         if (Session["UserName"] == null)
        {
            Response.Redirect("Submit.aspx");
        }
        else
        {
            string username = Session["UserName"].ToString();
            conn = new SqlConnection(connstr);
            conn.Open();

            strqry = "select Username,FullName,Mobile,Email,CNIC,Address from userinfo where Username = '" + username + "'";
            cmd = new SqlCommand(strqry, conn);

            SqlDataReader sdr = null;
            sdr = cmd.ExecuteReader();

            while (sdr.Read())
            {
                lblFullName.Text = sdr[1].ToString();
                lblUserName.Text = sdr[0].ToString();
                lblMobile.Text = sdr[2].ToString();
                lblEmail.Text = sdr[3].ToString();
                lblCNIC.Text= sdr[4].ToString();
                lblAddress.Text = sdr[5].ToString();
                
            }
            sdr.Close();
            sdr.Dispose();
            cmd.Dispose();
            conn.Close();
            conn.Dispose();

        }

    }

    protected void listview_design(object sender, EventArgs e)
    {
    }

}