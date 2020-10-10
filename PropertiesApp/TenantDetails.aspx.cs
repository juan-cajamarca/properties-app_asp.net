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
    public partial class TenantDetails : System.Web.UI.Page
    {
        int tenantId;
        protected void Page_Load(object sender, EventArgs e)
        {
            tenantId = Request["tenantId"] != null ? int.Parse(Request["tenantId"]) : 0;

            MultiView1.SetActiveView(View2);
            
            if (tenantId != 0)
            {
                TenantDataSource.SelectCommand = "SELECT * FROM [Tenant] WHERE Id = " + tenantId;
                PropertiesDataSource.SelectCommand = "SELECT * FROM [Property] WHERE tenantId = " + tenantId;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                VerifyTenant();
            }
            else
            {
                Label2.Text = "Type the tenant identification.";
            }
        }

        private void VerifyTenant()
        {
            if (tenantId == 0)
            {
                Label2.Text = "Server error";
            }
            else
            {
                if (TextBox1.Text == GetTenantIdentification())
                {
                    TextBox1.Text = "";
                    MultiView1.SetActiveView(View1);
                }
                else
                {
                    Label2.Text = "The tenant identification does not match.";
                }
            }
        }

        private String GetTenantIdentification()
        {
            String identification;

            SqlConnection vcon = new SqlConnection(ConfigurationManager.ConnectionStrings["PropertiesConnection"].ToString());
            vcon.Open();
            SqlCommand cmd = new SqlCommand("SELECT dni FROM [Tenant] WHERE Id = " + tenantId, vcon);
            identification = Convert.ToString(cmd.ExecuteScalar());
            vcon.Close();

            return identification;
        }
    }
}