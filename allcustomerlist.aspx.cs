using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class allcustomerlist : System.Web.UI.Page
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
            Label txtId = (Label)e.Item.FindControl("userinfoIDLabel1");
            Label txtLname = (Label)e.Item.FindControl("AccountStatusTextBox");
            

            if (txtLname.Text == "Active")
            {

                SqlDataSource1.UpdateCommand = listviewfunc.ifcustomeractive(txtId.Text);

            }
            
            else if (txtLname.Text == "Pending")
            {
                SqlDataSource1.UpdateCommand = listviewfunc.ifcustomerpending(txtId.Text);
            }

            else if (txtLname.Text == "Suspended")
            {
                SqlDataSource1.UpdateCommand = listviewfunc.ifcustomersuspended(txtId.Text);
            }

            else if (txtLname.Text == "De-Active")
            {
                SqlDataSource1.UpdateCommand = listviewfunc.ifcustomerdeactve(txtId.Text);
            }

            else if (txtLname.Text == "Deleted")
            {
                SqlDataSource1.UpdateCommand = listviewfunc.ifcustomerdeleted(txtId.Text);
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