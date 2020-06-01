using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.Adapters;

public partial class daywise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        invest.InnerText = maintnancess.daywiseinvestment().ToString();
        payment.InnerText = maintnancess.daywisepayments().ToString();
        profittoday.InnerText = maintnancess.profitpercentage().ToString();
        todaycarcompleted.InnerText = maintnancess.todaycarcompleted().ToString();
        date.InnerText = DateTime.Today.ToString();
    }

    protected void listview_design(object sender, EventArgs e)
    {
    }

}