using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class inhouse : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    string connstr = "Data Source=LARAIB;Initial Catalog=workshop;Integrated Security=true";
    string strqry; int sum;
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime d = DateTime.Now;
        txtRecevingDate.Text = d.ToString() ;
        SqlDataReader sdr;

        if (!IsPostBack)
        {
            long user = Convert.ToInt64(Session["UserID"]);
            txtuserName.DataSource = dropdown.fetchingallcardropdown();
            txtuserName.DataBind();

            using (conn = new SqlConnection(connstr))
            {
                conn.Open();
                strqry = "select inventoryID,name,purchasingdate,purchasingprize,chargeID from inventory";
                cmd = new SqlCommand(strqry, conn);

                sdr = null;
                using (sdr = cmd.ExecuteReader())
                {
                    ddlInventary.Items.Add("Select Product");
                    while (sdr.Read())
                    {
                       
                        ddlInventary.Items.Add(sdr[1].ToString());
                    }
                }

            }
                
           

            conn = new SqlConnection(connstr);
            conn.Open();
            strqry = "select employeename from employee";
            cmd = new SqlCommand(strqry, conn);

            
            sdr = cmd.ExecuteReader();
            ddlEmployee.Items.Add("Select Employee");
            while (sdr.Read())
            {
                
                ddlEmployee.Items.Add(sdr[0].ToString());
            }
            sdr.Close();
            sdr.Dispose();
            cmd.Dispose();
            conn.Close();
            conn.Dispose();

        }

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        float profit = Convert.ToUInt64(txtPayment.Text) - Convert.ToUInt64(lbllabour.Text);

        insert.insertretailid(Convert.ToInt64(lbllabour.Text), Convert.ToInt64(txtPayment.Text), profit, ddlInventary.SelectedIndex, 9);

        long retailid = Convert.ToInt64(maintnancess.fetchretailid());

        string recievingdate = txtRecevingDate.Text;

        string handoverdate = txtdatetime.Text;

        DateTime recdate = Convert.ToDateTime(recievingdate);

        DateTime handate = Convert.ToDateTime(txtdatetime.Text);

        insert.insertinhouse(recdate, handate,2, retailid, txtuserName.SelectedIndex, ddlEmployee.SelectedIndex);

    }

    protected void timecalculate(object sender, EventArgs e)
    {
        //conn = new SqlConnection(connstr);
        //conn.Open();
        //strqry = "select DATEDIFF ( day,'"+ txtRecevingDate.Text +"','"+ txtdatetime.Text +"')"+"Days";
        //cmd = new SqlCommand(strqry, conn);
        //SqlDataReader sdr = null;
        //sdr = cmd.ExecuteReader();

        //while (sdr.Read())
        //{

        //    //txtTotalPeriod.Text = sdr[0].ToString();
        //}
       


    }
    protected void listview_design(object sender, EventArgs e)
    {
    }


    protected void OnSelectedIndexChanged(object sender, EventArgs e)
    {
        conn = new SqlConnection(connstr);
        conn.Open();
        strqry = "select i.purchasingprize,c.chargename from inventory as i, charge as c where i.name = '" + ddlInventary.SelectedItem.Value + "' and i.chargeID = c.chargeID";
        cmd = new SqlCommand(strqry, conn);

        SqlDataReader sdr = null;
        sdr = cmd.ExecuteReader();

          while (sdr.Read())
          {
             
              lblcost.Text = sdr[0].ToString();
          }
            
       
        
    }

    protected void ovais(object sender, EventArgs e)
    {
        conn = new SqlConnection(connstr);
        conn.Open();
        strqry = "select c.chargename from employee as e, charge as c where e.employeename =  '" + ddlEmployee.SelectedItem.Value + "' and e.chargeID = c.chargeID";
        cmd = new SqlCommand(strqry, conn);

        SqlDataReader sdr = null;
        sdr = cmd.ExecuteReader();

        while (sdr.Read())
        {
            sum = Convert.ToInt32(sdr[0].ToString()) + Convert.ToInt32(lblcost.Text);
            lbllabour.Text = sum.ToString() ;
        }

        float sell = ((100f + 10f) / 100f) * sum;
        txtPayment.Text = sell.ToString();

        float profit = Convert.ToUInt64(txtPayment.Text) - Convert.ToUInt64(lbllabour.Text);
       // txtTotalPeriod.Text = profit.ToString();
    }
}