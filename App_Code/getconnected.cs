using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public class getconnected
{
    private static SqlConnection conn;
    public static SqlConnection getconnection()
    {
        if (conn == null)
        {
            conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["conected"].ToString();
            conn.Open();
        }
        return conn;
    }

}