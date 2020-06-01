using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class allavailableinventery : System.Web.UI.Page
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
            Label txtLname = (Label)e.Item.FindControl("inventoryIDLabel");

            SqlDataSource1.UpdateCommand = "update inventory set AccountStatusID =7  where AccountStatusID = 6 and inventoryID = '"+txtLname.Text+"' ";

            //if (txtLname.Text == "De-Active")
            //{
            //    SqlDataSource1.UpdateCommand = listviewfunc.ifcustomerdeactve(txtId.Text);
            //}


        }



    }
}