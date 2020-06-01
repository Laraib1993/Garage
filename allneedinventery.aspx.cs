using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class allneedinventery : System.Web.UI.Page
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

        if (e.CommandName == "Update")
        {
            Label txtLname = (Label)e.Item.FindControl("inventoryIDLabel");

            SqlDataSource1.UpdateCommand = "update inventory set AccountStatusID =6  where AccountStatusID = 7 and inventoryID = '" + txtLname.Text + "' ";


        }


    }
}