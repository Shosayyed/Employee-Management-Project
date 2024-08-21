using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Runtime.Remoting.Lifetime;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace LoginPage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Button1_Click(object sender, EventArgs e)
        {
            

            if (IsValidateForm())
            {
                SqlConnection conn = new SqlConnection("Data Source=(local);Initial Catalog=Roles;Persist Security Info=True;User ID=sa;Password=123;TrustServerCertificate=True") ;
                conn.Open();
                string query = "select * from UserData where Username=@user and Password=@pass";
                
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@user", TxtUserName.Text);
                cmd.Parameters.AddWithValue("@pass", TxtPassword.Text);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Response.Write("<script>alert('lOGIN SUCCESSFUL...')</script>");
                    Response.Redirect("~\\Site1.master");
                }
                else
                {
                    Response.Write("<script>alert(' LOGIN ERROR...')</script>");
                }
                conn.Close();
            }
            else
            {
                Response.Write("<script>alert('Validation Error...')</script>");
                
            }


            


        }
        private bool IsValidateForm()

        {
            string User = TxtUserName.Text;
            string pass = TxtPassword.Text;
            if (User == "" && pass == "")
            {
                Response.Write("<script>alert('User Name and password are Naccessory ! Please Enter...')</script>");
                Response.Redirect("~\\site1.Master");
                return false;
            }
            else if (User == "")
            {
                Response.Write("<script>alert('User Name are Naccessory ! Please Enter UserName...')</script>");

                return false;

            }
            else if (pass == "")
            {
                Response.Write("<script>alert('Password are Naccessory ! Please Enter Password...')</script>");

                return false;
            }
            else if (User.Length < 4)
            {
                Response.Write("<script>alert('UserName Invalid !! UserName character upto 4.....')</script>");

                return false;
            }
            else if (pass.Length < 6 || pass.Length > 12)
            {
                Response.Write("<script>alert(Password Invalid !! Password character upto 6 and less then 12.')</script>");

                return false;
            }

            return true;
        }
    }
    }
