using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.Adapters;

public partial class DashBoard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        



            if (maintnancess.customerrequest() == null && maintnancess.employeerequest() == null && maintnancess.inventeryavailable()==null && maintnancess.inventeryneed()==null && maintnancess.todaysalary()==null && maintnancess.pendingappointment()==null)
            {

                customerrequest.InnerText = "Null";
                employeerequest.InnerText = "Null";
                inventeryleft.InnerText = "Null";
                employeesalary.InnerText = "Null";
            appointmentrequest.InnerText = "Null";
            }

            else if (maintnancess.customerrequest() != null && maintnancess.employeerequest() != null)
            {
                customerrequest.InnerText = maintnancess.customerrequest();
                employeerequest.InnerText = maintnancess.employeerequest();
                inventeryleft.InnerText = maintnancess.inventeryavailable();
                inventeryneed.InnerText = maintnancess.inventeryneed();
                employeesalary.InnerText = maintnancess.todaysalary();
            appointmentrequest.InnerText = maintnancess.pendingappointment();
            }

            profittoday.InnerHtml = maintnancess.profitpercentage().ToString() + "%";
            profittoday.Attributes["data-percent"] = maintnancess.profitpercentage().ToString();
            profitweekly.InnerText = maintnancess.weeklyprofitpercentage().ToString() + "%";
            profitweekly.Attributes["data-percent"] = maintnancess.weeklyprofitpercentage().ToString();
            profitmonthly.InnerText = maintnancess.monthlyprofitpercentage().ToString() + "%";
            profitmonthly.Attributes["data-percent"] = maintnancess.monthlyprofitpercentage().ToString();
            profityearly.InnerText = maintnancess.yearlyprofitpercentage().ToString() + "%";
            profityearly.Attributes["data-percent"] = maintnancess.yearlyprofitpercentage().ToString();
            losstoday.InnerText = maintnancess.daywiseprofit().ToString() + " Rs";
            lossweekly.InnerText = maintnancess.weeklywiseprofit().ToString() + " Rs";
            lossmonthly.InnerText = maintnancess.monthwiseprofit().ToString() + " Rs";
            lossyearly.InnerText = maintnancess.yearlywiseprofit().ToString() + " Rs";
            cartoday.InnerText = maintnancess.todaycarcompleted().ToString();
            carweekly.InnerText = maintnancess.weeklycarcompleted().ToString();
            carmonthly.InnerText = maintnancess.monthlycarcompleted().ToString();
            caryearly.InnerText = maintnancess.yearlycarcompleted().ToString();
            invest.InnerText = maintnancess.daywiseinvestment().ToString() + " Rs.";
            payment.InnerText = maintnancess.daywisepayments().ToString() + " Rs.";
            todayname.InnerText = "Profit";
            profit.InnerText = maintnancess.daywiseprofit().ToString() + " Rs";
            date.InnerText = DateTime.Now.ToShortDateString();

    }

    protected void listview_design(object sender, EventArgs e)
    {
    }



}
