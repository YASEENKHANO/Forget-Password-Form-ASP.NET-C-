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



namespace ForgetPasswordTest
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string password;
            string mycon = @"Data Source=DESKTOP-5K8P33J\YASEEN;Initial Catalog=Registereduser;Integrated Security=True";
            string myquery = "select * from Tbl_UserDetail where username='" + txtusername.Text + "' and email='" + txtemail.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                password = ds.Tables[0].Rows[0]["password"].ToString();
                sendpassword(password, txtemail.Text);
                
            }
            else
            {
                Label1.Text = "username or emali incorrect";
            }
            con.Close();


        }

        private void sendpassword(string password, string email)
        {
            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                Credentials = new System.Net.NetworkCredential("your email","Your Password from Gmail key pass"),
                EnableSsl = true
            };
//
            MailMessage msg = new MailMessage
            {
                Subject = "Forget password Reply",
                Body = "Dear " + txtusername.Text + ", your password is '" + password + "'\n\n\nThanks & Regards,\n M Yaseen",
                From = new MailAddress("your email", "Yaseen khan")
            };

            msg.To.Add(email);

            try
            {
                smtp.Send(msg);
                Label1.Text = "Password sent successfully";
            }
            catch (SmtpException ex)
            {
                Label1.Text = "Failed to send email: " + ex.Message;
                System.Diagnostics.Debug.WriteLine("Exception: " + ex.ToString());
            }
        }



        


    }
}