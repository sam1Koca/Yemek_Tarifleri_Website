using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class GununYemegiAdmin : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false; // Panel2 default off

            SqlCommand sqlCommand = new SqlCommand("Select * From Tbl_Yemekler",sqlClasses.Baglanti());
            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            DataList1.DataSource = dataReader;
            DataList1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e) // Artı button
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e) // eksi button
        {
            Panel2.Visible = false;
        }
    }
}