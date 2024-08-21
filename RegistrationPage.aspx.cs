using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LoginPage
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(local);Initial Catalog=Empproject;Persist Security Info=True;User ID=sa; Password=123; TrustServerCertificate=True");
            con.Open();
            string query = "INSERT INTO [dbo].[Registration] ([FirstName]  ,[LastName]    ,[Addres] ,[EmailID]  ,[Mobile]  ,[UserName]   ,[Password],[Gander],[State],[City])  VALUES('"+TxtFirstName.Text+"','"+TxtLastName.Text+"','"+TxtAddress.Text+"','"+TxtEmail.Text+"','"+TxtMobile.Text+"','"+TxtUserName.Text+"','"+TxtPassword.Text+ "','"+gender+"','"+DropDownList1.SelectedItem.Value+ "','"+DropDownList2.SelectedItem.Value+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            //-------------------
            string abcd = "insert into UserData (Username,password,roles,CreatedDate,Createdby ,Email) values('" + TxtUserName.Text+"','"+TxtPassword.Text+"',0,'"+DateTime.Now.ToString()+"','"+TxtFirstName.Text+"','"+TxtEmail.Text+"')";
            SqlCommand cmd1 = new SqlCommand(abcd, con);

            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('registration successfullly...')</script>");

            Response.Redirect("~//Login.aspx");

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female"; 
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "male";
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "other";
        }
    }
}