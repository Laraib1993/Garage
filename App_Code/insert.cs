using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public class insert
{

    private static SqlCommand cmd;
   

    public static void insertcar(string carname, string enginenumber, string nameplate, string userid, string companyid, string modelid, string cartypeid)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertcar";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@carname", carname);
            cmd.Parameters.AddWithValue("@enginenumber", enginenumber);
            cmd.Parameters.AddWithValue("@nameplate", nameplate);
            cmd.Parameters.AddWithValue("@userinfoID", userid);
            cmd.Parameters.AddWithValue("@compannyID", companyid);
            cmd.Parameters.AddWithValue("@modelID", modelid);
            cmd.Parameters.AddWithValue("@cartypeID", cartypeid);
            cmd.ExecuteNonQuery();

        }

    }



    public static void insertemployee(string employee, DateTime engineno, string email, string cnic, string mobile, string address, long designation, long AccountStatusID, long charge)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertemployee";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@employeename", employee);
            cmd.Parameters.AddWithValue("@joiningdate", engineno);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@cnic", cnic);
            cmd.Parameters.AddWithValue("@mobile", mobile);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@designationID", designation);
            cmd.Parameters.AddWithValue("@AccountStatusID", AccountStatusID);
            cmd.Parameters.AddWithValue("@chargeID", charge);
            cmd.ExecuteNonQuery();
        }
    }

    public static void insertcartype(string name)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertcartype";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@name", name);
            cmd.ExecuteNonQuery();
        }
    }

    public static void insertcharge(string chargename)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertcharge";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@chargename", chargename);
            cmd.ExecuteNonQuery();
        }
    }


    public static void insertdesignation(string name, int chargeid)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertdesignation";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@chargeID", chargeid);
            cmd.ExecuteNonQuery();
        }
    }

    public static void insertuserinfo(string username, string fullname, string password, string mobile, string email, string cnic, string add, string dp, int role, string quest, string Answer)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertuserinfo";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@FullName", fullname);
            cmd.Parameters.AddWithValue("@Password", password);
            cmd.Parameters.AddWithValue("@Mobile", mobile);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@CNIC", cnic);
            cmd.Parameters.AddWithValue("@Address", add);
            cmd.Parameters.AddWithValue("@DpUrl", dp);
            cmd.Parameters.AddWithValue("@RoleID", role);
            cmd.Parameters.AddWithValue("@AccountStatusID", 2);
            cmd.Parameters.AddWithValue("@SecurityQuestion", quest);
            cmd.Parameters.AddWithValue("@Answer", Answer);
            cmd.ExecuteNonQuery();
        }
    }

    public static void insertpasswordhistory(string userid, string password)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertpasswordhistory";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@UserID", userid);
            cmd.Parameters.AddWithValue("@Password", password);
            cmd.Parameters.AddWithValue("@SetDateTime", DateTime.Now);
            cmd.ExecuteNonQuery();
        }
    }


    public static void insertinventry(string name, DateTime date, string purchaseprize, long labour, string status)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertinventery";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@purchasingdate", date);
            cmd.Parameters.AddWithValue("@purchasingprize", purchaseprize);
            cmd.Parameters.AddWithValue("@chargeID", labour);
            cmd.Parameters.AddWithValue("@AccountStatusID", status);
            cmd.ExecuteNonQuery();
        }
    }


    public static void insertcustomer(string username, string fullname, string password, string mobile, string email, string cnic, string address)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertcustomers";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@FullName", fullname);
            cmd.Parameters.AddWithValue("@Password", password);
            cmd.Parameters.AddWithValue("@Mobile", mobile);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@CNIC", cnic);
            cmd.Parameters.AddWithValue("@Address", address);
            cmd.Parameters.AddWithValue("@RoleID", 2);
            cmd.Parameters.AddWithValue("@AccountStatusID", 2);
            cmd.ExecuteNonQuery();
            
        }
    }

    public static void editprofile(string password, string mobile, string email, string cnic, string address, string username)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_editprofile";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@Password", password);
            cmd.Parameters.AddWithValue("@Mobile", mobile);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@CNIC", cnic);
            cmd.Parameters.AddWithValue("@Address", address);
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.ExecuteNonQuery();

        }
    }


    public static void insertappointment(DateTime schedule, long problem, long car)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertappointment";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@appoimentdate", schedule);
            cmd.Parameters.AddWithValue("@problemID", problem);
            cmd.Parameters.AddWithValue("@carID", car);
            cmd.ExecuteNonQuery();

        }
    }

    public static void insertretailid(long investment, long payment, float profit, long inventery, long status)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertretail";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@investement", investment);
            cmd.Parameters.AddWithValue("@payment", payment);
            cmd.Parameters.AddWithValue("@profit", profit);
            cmd.Parameters.AddWithValue("@inventoryID", inventery);
            cmd.Parameters.AddWithValue("@AccountStatusID", status);
            cmd.ExecuteNonQuery();

        }
    }


    public static void insertinhouse(DateTime receivedate, DateTime handoverdate, long timeperiod, long retail, long car,long employee)
    {
        using (cmd = new SqlCommand())
        {
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insertinhouse";
            cmd.Connection = getconnected.getconnection();
            cmd.Parameters.AddWithValue("@receivingdate", receivedate);
            cmd.Parameters.AddWithValue("@handovedate", handoverdate);
            cmd.Parameters.AddWithValue("@timeperiod", timeperiod);
            cmd.Parameters.AddWithValue("@retailID", retail);
            cmd.Parameters.AddWithValue("@carID", car);
            cmd.Parameters.AddWithValue("@employeeID", employee);
            cmd.ExecuteNonQuery();

        }
    }



}