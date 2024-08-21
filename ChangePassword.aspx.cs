using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        string UserName = VerifyCode_.to;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnChange_Click(object sender, EventArgs e)
        {
            if (TxtNewPass.Text == TxtConfromPass.Text)
            {
                SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=Empproject;Persist Security Info=True;User ID=sa; Password=123; TrustServerCertificate=True");
                con.Open();
                string query = "update [dbo].[UserData] set password='" + TxtNewPass.Text + "' where Email ='" + UserName + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int val=cmd.ExecuteNonQuery();
                
                if (val>0) {
                    Response.Redirect("~//Login.aspx");
                }
                
            }
        }
    }
}