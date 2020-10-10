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
    public partial class TenantLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label2.Text = "Type your identification.";
            }
            else
            {
                String id = ValidateIdentification();
                if (id != "")
                {
                    Response.Redirect("/TenantPayments?tenantId=" + id);
                }
                else
                {
                    Label2.Text = "This DNI is not registered on this platform.";
                }
            }
        }

        private String ValidateIdentification()
        {
            String id;

            SqlConnection vcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PropertiesConnection"].ToString());
            vcon.Open();
            SqlCommand cmd = new SqlCommand("SELECT id FROM [Tenant] WHERE dni = " + TextBox1.Text, vcon);
            id = Convert.ToString(cmd.ExecuteScalar());
            vcon.Close();

            return id;
        }
    }
}