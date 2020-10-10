using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PropertiesApp
{
    public partial class PropertyDetails : System.Web.UI.Page
    {
        int propertyId;
        protected void Page_Load(object sender, EventArgs e)
        {
            propertyId = Request["propertyId"] != null ? int.Parse(Request["propertyId"]) : 0;
            if (propertyId != 0)
            {
                PropertyDataSource.SelectCommand = "SELECT * FROM [Property] WHERE Id = " + propertyId;
                BillDataSource.SelectCommand = "SELECT * FROM [Bill] WHERE propertyId = " + propertyId;
            }
        }
    }
}