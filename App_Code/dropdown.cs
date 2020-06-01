using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Collections;


public class dropdown
{

    private static SqlCommand cmd;
    private static SqlDataReader sdr;
    private static ArrayList list;

    public static ArrayList fetchingcompanydropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchcompany";
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Company");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }


        }

    }


    public static ArrayList fetchingcarmodeldropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchcarmodel";
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Car Model");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }

                    return list;
                }
            }


        }

    }


    public static ArrayList fetchingcartypedropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchcartype";
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Car Type");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }

        }

    }




    public static ArrayList fetchinguserinfodropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchuserinfo";
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select User Name");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }
        }

    }


    public static ArrayList fetchingchargedropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchcharge";
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Charge");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }

        }

    }


   

    public static ArrayList fetchingdesignationdropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchdesignation";
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Designation");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }

        }

    }


    public static ArrayList fetchingaccountstatusdropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchaccountstatus";
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Status");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }

        }

    }

    public static ArrayList fetchingroledropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchrole";
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Role");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }
        }

    }

    public static ArrayList fetchingenginedropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetch";
            //cmd.Parameters.AddWithValue("@userinfoID", userid);
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Nameplate");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }
        }

    }


    public static ArrayList fetchinginventerydropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchinventery";
            //cmd.Parameters.AddWithValue("@userinfoID", userid);
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Product");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }
        }

    }

    public static ArrayList fetchingemployeedropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchemployee";
            //cmd.Parameters.AddWithValue("@userinfoID", userid);
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Employee");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }
        }

    }

    public static ArrayList fetchingcardropdown(long userid)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchcar";
            cmd.Parameters.AddWithValue("@userinfoID", userid);
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Car");
                    while (sdr.Read())
                    {
                        
                        list.IndexOf(Convert.ToInt64(sdr[0]));
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }
        }

    }

    public static ArrayList fetchingproblemdropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchproblem";
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Problem");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }
        }

    }

    public static ArrayList fetchingallcardropdown()
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_fetchallcar";
            cmd.Connection = getconnected.getconnection();
            using (sdr = null)
            {
                using (sdr = cmd.ExecuteReader())
                {
                    list = new ArrayList();
                    list.Add("Select Car");
                    while (sdr.Read())
                    {
                        list.IndexOf(sdr[0].ToString());
                        list.Add(sdr[1].ToString());
                    }
                    return list;
                }
            }
        }

    }
}