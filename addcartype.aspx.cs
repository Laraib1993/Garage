using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addcartype : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Panel1.Visible = true;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        insert.insertcartype(txtcartypename.Text);
    }
    protected void listview_design(object sender, EventArgs e)
    {
    }
}
