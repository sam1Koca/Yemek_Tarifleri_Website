using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //Onaylı Yorumlar Listesi
            SqlCommand sqlCommand = new SqlCommand("Select * From Tbl_Yorumlar where YorumOnay=1", sqlClasses.Baglanti());
            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            DataList1.DataSource = dataReader;
            DataList1.DataBind();

            //Onaysız Yorumlar Listesi
            SqlCommand sqlCommand1 = new SqlCommand("Select * From Tbl_Yorumlar where YorumOnay=0",sqlClasses.Baglanti());
            SqlDataReader dataReader1 = sqlCommand1.ExecuteReader();
            DataList2.DataSource = dataReader1;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}