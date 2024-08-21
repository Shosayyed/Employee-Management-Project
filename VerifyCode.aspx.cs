using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;


namespace LoginPage
{
    public partial class VerifyCode_ : System.Web.UI.Page
    {
        string Otp;
        public static string to;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSendOtp_Click(object sender, EventArgs e)
        {
            string form, pass, Bodymassege;
            Random rand = new Random();
            Otp = (rand.Next(99999)).ToString();

            MailMessage massege = new MailMessage();
            form = "Shoaibbagwan619@gmail.com";
            to=(TxtEmial.Text).ToString();
            pass = "zgjlfnjfibrfjyla";
            Bodymassege = "Send You otp :- " + Otp;

            massege.From = new MailAddress(form);
            massege.Body= Bodymassege;
            massege.To.Add(to);
            massege.Subject = "Forget password Coode";

            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl=true;
            smtp.Port = 587;
            smtp.UseDefaultCredentials=false;
            smtp.DeliveryMethod=SmtpDeliveryMethod.Network;
            smtp.Credentials= new NetworkCredential(form, pass);

            try{
                smtp.Send(massege);
               
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void BtnOtpSmt_Click(object sender, EventArgs e)
        {
            if(TxtVerify.Text !=null){

                Response.Redirect("~//ChangePassword.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wronge Otp')</script>");
            }
        }
    }
}