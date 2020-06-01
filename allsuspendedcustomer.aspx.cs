using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class allsuspendedcustomer : System.Web.UI.Page
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
            Label txtId = (Label)e.Item.FindControl("Label1");
            Label txtLname = (Label)e.Item.FindControl("Label14");

            SqlDataSource1.UpdateCommand = listviewfunc.ifcustomersuspended(txtId.Text);

            if (txtLname.Text == "Suspended")
            {
                SqlDataSource1.UpdateCommand = listviewfunc.ifcustomersuspended(txtId.Text);
            }


        }
        //else if (e.CommandName == "Delete")
        //{
        //    Label lbluserId = (Label)e.Item.FindControl("userinfoIDLabel1");
        //    string deleteCommand = "delete from userinfo where Id=" +Convert.ToInt32(lbluserId.Text)+ "";
        //    SqlDataSource1.DeleteCommand = deleteCommand;
        //}
    }
}