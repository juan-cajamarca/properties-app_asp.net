using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PropertiesApp
{
    public partial class TenantPayments : System.Web.UI.Page
    {
        int tenantId;
        protected void Page_Load(object sender, EventArgs e)
        {
            tenantId = Request["tenantId"] != null ? int.Parse(Request["tenantId"]) : 0;

            if (tenantId != 0)
            {
                BillsToPayDataSource.SelectCommand = "SELECT * FROM [Bill] WHERE isPaid = 'N' AND tenantId = " + tenantId;
                PaidBillsDataSource.SelectCommand = "SELECT * FROM [Bill] WHERE isPaid = 'Y' AND tenantId = " + tenantId;
                BankAccountsDataSource.SelectCommand = "SELECT * FROM [BankAccount] WHERE tenantId = " + tenantId;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (tenantId != 0)
            {
                Response.Redirect("/ManageTenantBankAccounts?tenantId=" + tenantId);
            }
        }
    }
}