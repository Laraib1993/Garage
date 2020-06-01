using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddEmployee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ddlSalary.DataSource = dropdown.fetchingchargedropdown();
            ddlSalary.DataBind();
            ddlDesignation.DataSource = dropdown.fetchingdesignationdropdown();
            ddlDesignation.DataBind();
            //ddlacc.DataSource = dropdown.fetchingaccountstatusdropdown();
            //ddlacc.DataBind();
        }

    }

    protected void listview_design(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string date = txtDatetime.Text;
        DateTime dt = Convert.ToDateTime(date);

        insert.insertemployee(txtFullName.Text, 
                              dt, 
                              txtEmail.Text, 
                              txtCNIC.Text, 
                              txtMobile.Text, 
                              txtaddress.Text, 
                              Convert.ToInt64(ddlDesignation.SelectedIndex), 
                              2, 
                              Convert.ToInt64(ddlSalary.SelectedIndex));
       
    }
}
