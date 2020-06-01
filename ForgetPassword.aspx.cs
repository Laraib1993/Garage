using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

public partial class ForgetPassword : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    string connstr = "Data Source=LARAIB;Initial Catalog=workshop;Integrated Security=true";
    string strqry;
    protected void Page_Load(object sender, EventArgs e)
    {
        GeneratePassword();
    }

    public string GeneratePassword()
    {
        string PasswordLength = "8";
        string NewPassword = "";

        string allowedChars = "";
        allowedChars = "1,2,3,4,5,6,7,8,9,0";
        allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
        allowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";


        char[] sep = {  
            ','  
        };
        string[] arr = allowedChars.Split(sep);


        string IDString = "";
        string temp = "";

        Random rand = new Random();

        for (int i = 0; i < Convert.ToInt32(PasswordLength); i++)
        {
            temp = arr[rand.Next(0, arr.Length)];
            IDString += temp;
            NewPassword = IDString;

        }
        return NewPassword;
    }

    protected void listview_design(object sender, EventArgs e)
    {
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        // to save the username and password in database  
        if (txtEmail.Text == null)
        {
            lblMessage.Text = "Please Enter Email";
        }

        else
        {
            conn = new SqlConnection(connstr);
            conn.Open();
            strqry = "select Username,Email from userinfo Where Email ='" + txtEmail.Text + "'";
            cmd = new SqlCommand(strqry, conn);

            SqlDataReader sdr = null;
            sdr = cmd.ExecuteReader();

            while (sdr.Read())
            {
                if (sdr[1].ToString() == txtEmail.Text)
                {
                    // to send the random password in email  

                    string strNewPassword = GeneratePassword().ToString();

                    conn = new SqlConnection(connstr);
                    conn.Open();
                    strqry = "Update userinfo Set Password ='" + strNewPassword + "' Where username = '" + txtUserName.Text + "'";
                    cmd = new SqlCommand(strqry, conn);
                    cmd.ExecuteNonQuery();

                    conn = new SqlConnection(connstr);

                    conn.Open();

                    strqry = "insert into passwordHistory (UserID,Password,SetDateTime) values('" + txtUserName.Text + "','" + strNewPassword + "','" + DateTime.Now + "')";
                    cmd = new SqlCommand(strqry, conn);
                    cmd.ExecuteNonQuery();



                    MailMessage MyMailMessage = new MailMessage("r2nmd.ssuet@gmail.com", txtEmail.Text);
                    MyMailMessage.Subject = "Random Password for your Account";
                    MyMailMessage.Body = "Your Random password is:" + strNewPassword;
                    MyMailMessage.IsBodyHtml = false;

                    SmtpClient smtpClient = new SmtpClient();
                    smtpClient.UseDefaultCredentials = false;
                    smtpClient.Host = "smtp.gmail.com";
                    smtpClient.Port = 587;
                    smtpClient.Credentials = new NetworkCredential("r2nmd.ssuet@gmail.com", "workshop");
                    smtpClient.EnableSsl = true;
                    smtpClient.Send(MyMailMessage);

                    lblMessage.Text = "Email Sent Successfully";
                    lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                    txtUserName.Text = "";
                    txtEmail.Text = "";
                }
            }
        }
    }
}