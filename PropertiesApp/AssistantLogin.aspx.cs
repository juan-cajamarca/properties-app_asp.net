using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PropertiesApp
{
    public partial class AssistantLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                String password = GetAssistantPassword();

                if (password == "")
                {
                    Label3.Text = "There is not users with this email.";
                }
                else
                {
                    ValidatePassword(password);
                }
            }
            else
            {
                Label3.Text = "Please, type email and password.";
            }
        }

        private String GetAssistantPassword()
        {
            String realPassword;

            SqlConnection vcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PropertiesConnection"].ToString());
            vcon.Open();
            SqlCommand cmd = new SqlCommand("SELECT password FROM [dbo].[Administrator] WHERE email = '" + TextBox1.Text + "' AND superAdmin = 'N';", vcon);
            realPassword = Convert.ToString(cmd.ExecuteScalar());
            vcon.Close();

            return realPassword;
        }

        private void ValidatePassword(String password)
        {
            if (TextBox2.Text == password)
            {
                Response.Redirect("AssitantPanel");
            }
            else
            {
                Label3.Text = "Wrong password";
            }
        }
    }
}