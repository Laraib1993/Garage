using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateInventary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ddlLabourCharge.DataSource = dropdown.fetchingchargedropdown();
            ddlLabourCharge.DataBind();
        }
        

    }

    protected void listview_design(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string date = txtPurchaseDate.Text;
        DateTime dt = Convert.ToDateTime(date);
        long labour = ddlLabourCharge.SelectedIndex;
        insert.insertinventry(txtProductName.Text, dt, txtPurchasePrize.Text, labour, ddlstatus.SelectedValue.ToString());
        if(IsPostBack)
        {
            lblMessage.Text = "Product Entered Successfully";
        }
    }
}