using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PropertiesApp
{
    public partial class TenantBankAccountDetails : System.Web.UI.Page
    {
        int bankAccountId;
        protected void Page_Load(object sender, EventArgs e)
        {
            bankAccountId = Request["bankAccountId"] != null ? int.Parse(Request["bankAccountId"]) : 0;

            if (bankAccountId != 0)
            {
                BankAccountDataSource.SelectCommand = "SELECT * FROM [BankAccount] WHERE Id = " + bankAccountId;
                BankingMovementsDataSource.SelectCommand = "SELECT * FROM [BankingMovement] WHERE bankAccountId = " + bankAccountId;
            }
        }
    }
}