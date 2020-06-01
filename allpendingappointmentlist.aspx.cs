using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class allpendingappointmentlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ListView1_Sorting(object sender, ListViewSortEventArgs e)
    {

    }
    protected void listview_design(object sender, EventArgs e)
    {
        DateTime dt = maintnancess.administrator();
        DateTime dt_curr = Convert.ToDateTime(DateTime.Now.ToShortDateString());
        TimeSpan ts = dt - dt_curr;
        lbllisting.Text = Convert.ToString(ts.TotalDays);


        if (ts.TotalDays == 0)
        {
            listviewtable.Enabled = false;
            lbllisting.Text = DateTime.Now.ToShortDateString();
            Response.Redirect("Default.aspx");
        }

        else if (ts.TotalDays < 0)
        {
            listviewtable.Enabled = false;
            lbllisting.Text = DateTime.Now.ToShortDateString();
            Response.Redirect("Default.aspx");
        }

    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {

        if (e.CommandName == "Update")
        {

            Label txtId = (Label)e.Item.FindControl("Label1");
            Label txtLname = (Label)e.Item.FindControl("AccountStatusTextBox");

            if (txtLname.Text == "Pending")
            {
                SqlDataSource1.UpdateCommand = listviewfunc.ifappointmentpending(txtId.Text);
            }

            else
            {
                SqlDataSource1.UpdateCommand = listviewfunc.ifappointmentactive(txtId.Text);
            }

        }

    }
}