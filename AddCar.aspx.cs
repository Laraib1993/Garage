using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddCar : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Username"] == null)
        {
            Response.Redirect("Submit.aspx");
        }

        else
        {
           

            if (!IsPostBack)
            {

                ddlCompany.DataSource = dropdown.fetchingcompanydropdown();
                ddlCompany.DataBind();
                ddlModel.DataSource = dropdown.fetchingcarmodeldropdown();
                ddlModel.DataBind();
                ddlType.DataSource = dropdown.fetchingcartypedropdown();
                ddlType.DataBind();
                //ddluserid.DataSource = dropdown.fetchinguserinfodropdown();
                //ddluserid.DataBind();

            }
        }

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string user = (Session["UserID"]).ToString();

        insert.insertcar(txtCarName.Text, 
                         txtEngineNo.Text, 
                         txtnameplate.Text, user.ToString(), 
                         (ddlCompany.SelectedIndex.ToString()), 
                         (ddlModel.SelectedIndex.ToString()), 
                         (ddlType.SelectedIndex.ToString()));
    }

    protected void btnsubmit_keyup(object sender, EventArgs e)
    {

        
    }

    protected void listview_design(object sender, EventArgs e)
    {
      
    }

}