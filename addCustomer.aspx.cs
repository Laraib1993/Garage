using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class addcustomer : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void listview_design(object sender, EventArgs e)
    {
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string username = customer.checkusername(txtusername.Text);
        string password = customer.checkpassword(txtpass.Text);
        string email = customer.checkemail(txtemail.Text);
        string cnic = customer.checkcnic(txtcnic.Text);
        string mobile = customer.checkmobile(txtcnic.Text);
        if (txtusername.Text == username)
        {
            lblMessage.Text = "User Name is already in use";
        }

        else if (txtemail.Text == email)
        {
            lblMessage.Text = "Email is already in use";
        }

        else if (txtpass.Text == password)
        {
            lblMessage.Text = "This password is not allowed";
        }

        else if (txtcnic.Text == cnic)
        {
            lblMessage.Text = "CNIC is already in use";
        }

        else if (txtmobile.Text == mobile)
        {
            lblMessage.Text = "This number is already in use";
        }

        else
        {
            lblMessage.Text = "";
            insert.insertcustomer(txtusername.Text, txtfullname.Text, txtpass.Text, txtmobile.Text, txtemail.Text, txtcnic.Text, txtadd.Text);
            insert.insertpasswordhistory(txtusername.Text, txtpass.Text);
            if(IsPostBack)
            {
                //lblMessage.Attributes["ForeColor"] = "#87B87F";
                lblMessage.Text = "Request Send";
            }
        }
        
    }
}