using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;



public class maintnancess
{
    private static SqlCommand cmd;
    private static string invest;
    private static SqlDataReader sdr;
    private static long investt;
    

    public static string daywiseinvestment()
    {
        using(cmd = new SqlCommand())
        {
            
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_investmentdays";
            cmd.Connection = getconnected.getconnection();   
            using(sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while(sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                }
                return invest;
            }
        }
    }

    public static string daywisepayments()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_paymentsdays";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                }
                return invest;
            }
        }
    }

    public static string daywiseprofit()
    {
      
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_profitdays";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest =  sdr[0].ToString();
                    }
                }
                return invest;
            }
        }
    }


    public static string weeklywiseprofit()
    {

        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_profitweekly";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                }
                return invest;
            }
        }
    }

    public static string monthwiseprofit()
    {

        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_profitmonths";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                }
                return invest;
            }
        }
    }

    public static DateTime administrator()
    {
        session = Convert.ToDateTime(due).AddMonths(3);
        return session;
        

    }

    
    public static string yearlywiseprofit()
    {

        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_profityearly";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                }
                return invest;
            }
        }
    }


    public static string profitpercentage()
    {
        using(cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_profitpercentage";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }

        }
    }

    private static DateTime due = Convert.ToDateTime("2017-01-19");
    public static string monthlyprofitpercentage()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_monthlyprofitpercentage";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }

        }
    }

    public static string weeklyprofitpercentage()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_weeklyprofitpercentage";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }

        }
    }

    private static DateTime session;
    public static string yearlyprofitpercentage()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_yearlyprofitpercentage";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }

        }
    }
    public static string todaycarcompleted()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_totalcarcompleted";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }

        }
    }


    public static string weeklycarcompleted()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_weeklyordercompleted";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }

        }
    }


    public static string monthlycarcompleted()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_monthlyordercompleted ";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }

        }
    }


    public static string yearlycarcompleted()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_yearlyordercompleted ";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }

        }
    }


    public static string customerrequest()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchcustomerpendin";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }
        }
    }


    public static string employeerequest()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchemployeepending";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }
        }
    }


    public static string inventeryavailable()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchinventeryavailable";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }
        }
    }

    public static string inventeryneed()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchinventeryneed";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }
        }
    }

    public static string todaysalary()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_todaysalary";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }
        }
    }

    public static string pendingappointment()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_countpendingappointment";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }
        }
    }


    public static string fetchretailid()
    {
        using (cmd = new SqlCommand())
        {
            cmd.Connection = getconnected.getconnection();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchretailID";
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        invest = sdr[0].ToString();
                    }
                    return invest;
                }
            }
        }
    }



}