using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EditProfile : System.Web.UI.Page
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
            //long username = Convert.ToInt64(Session["UserID"]);
            string username = Session["UserName"].ToString();
            using (conn = new SqlConnection(connstr))
            {
                conn.Open();

                strqry = "select UserName,FullName,Mobile,Email,CNIC,Address from userinfo where UserName = '" + username + "'";
                using (cmd = new SqlCommand(strqry, conn))
                {
                    SqlDataReader sdr = null;
                    sdr = cmd.ExecuteReader();

                    while (sdr.Read())
                    {
                        lblFullName.Text = sdr[1].ToString();
                        lblUserName.Text = sdr[0].ToString();
                        
                    }

                }

            }





        }
    }

    protected void listview_design(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string username = Session["UserName"].ToString();
        
        insert.editprofile(txtPassword.Text, txtMobile.Text,txtEmail.Text, txtCNIC.Text, txtAddress.Text,username);

        

        
    }
}