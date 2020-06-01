using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customerallcarinhouse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {
            Response.Redirect("Submit.aspx");
        }

        else
        {

            string user = (Session["UserID"]).ToString();

            username.Value = user.ToString();

            //SqlDataSource1.SelectParameters.Add("asp:Parameter", 2.ToString());
        }

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
           

        }

    }
}