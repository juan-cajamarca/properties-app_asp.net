using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PropertiesApp
{
    public partial class ManageTenantBankAccounts : System.Web.UI.Page
    {
        int tenantId;
        protected void Page_Load(object sender, EventArgs e)
        {
            tenantId = Request["tenantId"] != null ? int.Parse(Request["tenantId"]) : 0;

            if (tenantId != 0)
            {
                BankAccountsDataSource.SelectCommand = "SELECT * FROM [BankAccount] WHERE tenantId = " + tenantId;
            }
        }
    }
}