using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class customer
{
    private static SqlCommand cmd;
    private static SqlDataReader sdr;
    private static ArrayList list;
    private static string up;

    public static string carregistered(long id)
    {
        using (cmd = new SqlCommand())
        {
           
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_carregistered";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@userinfoID", id);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        up = sdr[0].ToString();
                    }
                }
                return up;
            }

        }
    }


    public static string carrhave(long id)
    {
        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_carhave";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@userinfoID", id);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        up = sdr[0].ToString();
                    }
                }
                return up;
            }

        }
    }


    public static string paidbill(long id)
    {

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT count(I.retailID) FROM inhouseservice as i,userinfo as u,car as c,retail AS R WHERE i.carID = c.carID AND C.userinfoID = U.userinfoID AND I.retailID = R.retailID AND C.userinfoID = '"+id+"' AND R.AccountStatusID = 8";
            cmd.Connection = getconnected.getconnection();
            

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        up = sdr[0].ToString();
                    }
                    return up;
                }


            }

        }


    public static string unpaidbill(long id)
    {
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT count(I.retailID) FROM inhouseservice as i,userinfo as u,car as c,retail AS R WHERE i.carID = c.carID AND C.userinfoID = U.userinfoID AND I.retailID = R.retailID AND C.userinfoID = '" + id + "' AND R.AccountStatusID = 9";
        cmd.Connection = getconnected.getconnection();

        using (sdr = null)
        {
            using (sdr = cmd.ExecuteReader())
            {
                while (sdr.Read())
                {
                    up = sdr[0].ToString();
                }
            }
            return up;

        }

    }


    public static string employeworking(long id)
    {
        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_empworkingincar";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@userinfoID", id);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        up = sdr[0].ToString();
                    }
                }
                return up;
            }

        }
    }

    public static string inventeryused(long id)
    {
        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_inventeryused";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@userinfoID", id);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        up = sdr[0].ToString();
                    }
                }
                return up;
            }

        }
    }

    public static string paidbillamount(long id)
    {
        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_paidbillamount";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@userinfoID", id);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        up = sdr[0].ToString();
                    }
                }
                return up;
            }

        }
    }

    public static string unpaidbillamount(long id)
    {
        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT sum(r.payment)FROM inhouseservice as i,userinfo as u,car as c,retail AS R WHERE i.carID = c.carID AND C.userinfoID = U.userinfoID AND I.retailID = R.retailID AND C.userinfoID = '" + id + "' AND R.AccountStatusID = 9";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@userinfoID", id);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        up = sdr[0].ToString();
                    }
                }
                return up;
            }

        }
    }


    public static string timeleft(long id)
    {
        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_daysleft";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@userinfoID", id);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        up = sdr[0].ToString();
                    }
                }
                return up;
            }

        }
    }

    public static string fetchprofile(long id)
    {

        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchprofile";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@userinfoID", id);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    while (sdr.Read())
                    {
                        up = sdr[0].ToString();

                    }
                }
                return up;
            }

        }
    }

    private static DateTime dt;

    public static DateTime checkprofile(DateTime id)
    {

        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_checkapointment";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@appoimentdate", id);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    
                    while (sdr.Read())
                    {
                        dt = Convert.ToDateTime(sdr[0]);

                    }
                }
                return dt;
            }

        }
    }

    public static string checkusername(string username)
    {

        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_checksignup";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    while (sdr.Read())
                    {
                        up = sdr[1].ToString();

                    }
                }
                return up;
            }

        }
    }


    public static string checkpassword(string pass)
    {

        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_checkpassword";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@Password", pass);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    while (sdr.Read())
                    {
                        up = sdr[1].ToString();

                    }
                }
                return up;
            }

        }
    }

    public static string checkemail(string email)
    {

        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_checkemail";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    while (sdr.Read())
                    {
                        up = sdr[1].ToString();

                    }
                }
                return up;
            }

        }
    }

    public static string checkcnic(string CNIC)
    {

        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_checkCNIC";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@CNIC", CNIC);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    while (sdr.Read())
                    {
                        up = sdr[1].ToString();

                    }
                }
                return up;
            }

        }
    }

    public static string checkmobile(string Mobile)
    {

        using (cmd = new SqlCommand())
        {

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_checkmobile";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@Mobile", Mobile);
            cmd.ExecuteNonQuery();

            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    while (sdr.Read())
                    {
                        up = sdr[1].ToString();

                    }
                }
                return up;
            }

        }
    }
}