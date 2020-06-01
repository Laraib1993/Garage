using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;
using System.Data.SqlClient;


public partial class appointment : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    string connstr = "Data Source=LARAIB;Initial Catalog=workshop;Integrated Security=true";
    string strqry;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataReader sdr;

        if (!IsPostBack)
        {

            lblmsg.Visible = false;
            long user = Convert.ToInt64(Session["UserID"]);
            //ddlCar.DataSource = dropdown.fetchingcardropdown(user);
            //ddlCar.DataBind();
            using (conn = new SqlConnection(connstr))
            {
                conn.Open();
                strqry = "SELECT carID, nameplate,enginenumber FROM car WHERE userinfoID = '" + user + "' ";
                cmd = new SqlCommand(strqry, conn);

                sdr = null;
                using (sdr = cmd.ExecuteReader())
                {

                    ddlCar.Items.Add("Select Car");
                    while (sdr.Read())
                    {
                        ddlCar.TabIndex = Convert.ToInt16(sdr[0]);  
                        ddlCar.Items.Add(sdr[1].ToString());
                    }
                }
                ddlProblem.DataSource = dropdown.fetchingproblemdropdown();
                ddlProblem.DataBind();
            }

        }
    }


    protected void listview_design(object sender, EventArgs e)
    {
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        string date = txtdatetime.Text;
        DateTime dt = Convert.ToDateTime(date);
        DateTime datecheck = Convert.ToDateTime(customer.checkprofile(dt));
        if (dt == datecheck)
        {
            lblmsg.Visible = true;
            lblmsg.Text = "This Date is already booked";
        }

        else if (DateTime.Now > dt)
        {
            lblmsg.Visible = true;
            lblmsg.Text = "Old date is not allowed";
        }

        else
        {
        //    long user = Convert.ToInt64(Session["UserID"]);
        //    ddlCar.DataSourceID = dropdown.fetchingcardropdown(user).ToString();
        //    ddlCar.DataBind();
            lblmsg.Visible = false;
            insert.insertappointment(dt, Convert.ToInt64(ddlProblem.SelectedIndex), Convert.ToInt64(ddlCar.TabIndex));
            if(IsPostBack)
            {
                lblmsg.Visible = true;
                lblmsg.Text = "Request Send Please wait for responce";
            }

        }

    }
}