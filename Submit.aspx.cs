using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Submit : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    string connstr = "Data Source=LARAIB;Initial Catalog=workshop;Integrated Security=true";
    string strqry;
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        using (conn = new SqlConnection(connstr))
        {
            conn.Open();
            strqry = "select  Username,RoleID,AccountStatusID,userinfoID from userinfo Where Username ='" + txtUserName.Text + "' and Password='" + txtPassword.Text + "'";
            using (cmd = new SqlCommand(strqry, conn))
            {
                SqlDataReader sdr = null;
                sdr = cmd.ExecuteReader();

                while (sdr.Read())
                {


                    if (sdr[1].ToString() == "1")
                    {
                        if (sdr[2].ToString() == "1")
                        {
                            if (sdr[0].ToString() == txtUserName.Text && sdr[0].ToString() == txtPassword.Text)
                            {
                                Session["UserID"] = sdr[3];
                                Session["UserName"] = txtUserName.Text;
                                Response.Redirect("Dashboard.aspx");

                            }

                            else
                            {
                                lblMessage.Text = "Access Denied";
                            }
                        }
                    }
                    
                      else if (sdr[1].ToString() == "2")
                        {
                            if (sdr[2].ToString() == "1")
                            {
                                Session["UserID"] = sdr[3];
                                Session["UserName"] = txtUserName.Text;
                                Response.Redirect("CustomerDashboard.aspx");


                            }
                            else
                            {
                                lblMessage.Text = "You Don't have permission to access this account";
                            }
                        }

                }

            }

        }


    }

    protected void listview_design(object sender, EventArgs e)
    {
    }

}