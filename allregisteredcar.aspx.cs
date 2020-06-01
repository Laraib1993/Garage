using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class allregisteredcar : System.Web.UI.Page
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
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Insert")
        {
        }
        else if (e.CommandName == "Update")
        {
            Label txtId = (Label)e.Item.FindControl("userinfoIDLabel");
            Label txtLname = (Label)e.Item.FindControl("AccountStatusLabel");
            SqlDataSource1.UpdateCommand = listviewfunc.ifemployeerpending(txtId.Text);
            if (txtLname.Text == "Pending")
            {
                SqlDataSource1.UpdateCommand = listviewfunc.ifemployeerpending(txtId.Text);
            }


        }

    }
}