using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class listviewfunc
{
    private static string query;
    public static string ifcustomeractive(string userid)
    {
        query = "update userinfo set AccountStatusID = 5 where userinfoID ='" + userid + "'";
         return query;
    }

    public static string ifcustomerpending(string userid)
    {
        query = "update userinfo set AccountStatusID = 1 where AccountStatusID = 2 and userinfoID ='" + userid + "'";
        return query;
    }

   

    public static string ifcustomersuspended(string userid)
    {
        query = "update userinfo set AccountStatusID = 3 where userinfoID ='" + userid + "'";
        return query;
    }

    public static string ifcustomerdeactve(string userid)
    {
        query = "update userinfo set AccountStatusID = 4 where userinfoID ='" + userid + "'";
        return query;
    }
    

    public static string ifcustomerdeleted(string userid)
    {
        query = "update userinfo set AccountStatusID = 4 where userinfoID ='" + userid + "'";
        return query;
    }

    public static string ifemployeeactive(string userid)
    {
        query = "update  employee set AccountStatusID = 5 where AccountStatusID = 1 and employeeID ='" + userid + "'";
        return query;
    }

    public static string ifemployeerpending(string userid)
    {
        query = "update  employee set AccountStatusID = 1 where AccountStatusID = 2 and employeeID ='" + userid + "'";
        return query;
    }

    public static string ifemoloyeesuspended(string userid)
    {
        query = "update  employee set AccountStatusID = 3 where AccountStatusID = 5 and employeeID ='" + userid + "'";
        return query;
    }

    public static string ifemployeedeactve(string userid)
    {
        query = "update  employee set AccountStatusID = 4 where AccountStatusID = 3 and employeeID ='" + userid + "'";
        return query;
    }


    public static string ifemployeedeleted(string userid)
    {
        query = "update  employee set AccountStatusID = 4 where userinfoID ='" + userid + "'";
        return query;
    }

    public static string ifinventeryavailable(string userid)
    {
        query = "update inventory set AccountStatusID = 7 where AccountStatusID ='" + userid + "'";
        return query;
    }

    public static string ifappointmentpending(string userid)
    {
        query = "update appoimentschedule set AccountStatusID = 1 where AccountStatusID =2 and appoimentID ='" + userid + "'";
        return query;
    }

    public static string ifappointmentactive(string userid)
    {
        query = "update appoimentschedule set AccountStatusID = 1 where AccountStatusID =1 and appoimentID ='" + userid + "'";
        return query;
    }
}