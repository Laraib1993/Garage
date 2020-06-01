using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerDashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Username"] == null)
        {
            Response.Redirect("Submit.aspx");
        }

        else
        {
            long username = Convert.ToInt64(Session["UserID"]);

            carregister.InnerText = customer.carregistered(username);
            workshopcar.InnerText = customer.carrhave(username);
            billpaid.InnerText = customer.paidbill(username);
            billunpaid.InnerText = customer.unpaidbill(username);
            employeeworking.InnerText = customer.employeworking(username);
            inventeryused.InnerText = customer.inventeryused(username);
            paidamount.InnerText = customer.paidbillamount(username) + " Rs";
            unpaidamount.InnerText = customer.unpaidbillamount(username) + " Rs";
            timeleft.Attributes["data-percent"] = customer.timeleft(username);
            timetext.InnerText = customer.timeleft(username);
        }
    }

    protected void listview_design(object sender, EventArgs e)
    {
    }

}