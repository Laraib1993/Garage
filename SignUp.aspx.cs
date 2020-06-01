using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SignUp : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string username = customer.checkusername(txtUserName.Text);
        string password = customer.checkpassword(txtPassword.Text);
        string email = customer.checkemail(txtEmail.Text);
        string cnic = customer.checkcnic(txtCNIC.Text);
        string mobile = customer.checkmobile(txtMobile.Text);
        if (txtUserName.Text == username)
        {
            lblMessage.Text = "User Name is already in use";
        }

        else if (txtEmail.Text == email)
        {
            lblMessage.Text = "Email is already in use";
        }

        else if (txtPassword.Text == password)
        {
            lblMessage.Text = "This password is not allowed";
        }

        else if (txtCNIC.Text == cnic)
        {
            lblMessage.Text = "CNIC is already in use";
        }

        else if (txtMobile.Text == mobile)
        {
            lblMessage.Text = "This number is already in use";
        }

        else
        {
            insert.insertcustomer(txtUserName.Text, txtFullName.Text, txtPassword.Text, txtMobile.Text, txtEmail.Text, txtCNIC.Text, txtAddress.Text);
            insert.insertpasswordhistory(txtUserName.Text, txtPassword.Text);
            if (IsPostBack)
            {
                lblMessage.Text = "Request has been send please wait for responce";
            }
        }
       
    }

    protected void listview_design(object sender, EventArgs e)
    {
    }

}