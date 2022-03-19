using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // sql kütüphanesini add

namespace Yemek_Tarifleri_Sitem
{
    public partial class Tarifler : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            // Onaysız Yorum Listesi
            SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where TarifDurum=0", sqlClasses.Baglanti());
            SqlDataReader reader = komut.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();

            // Onaylı Yorum Listesi
            SqlCommand komut1 = new SqlCommand("Select * From Tbl_Tarifler where TarifDurum=1", sqlClasses.Baglanti());
            SqlDataReader reader1 = komut1.ExecuteReader();
            DataList2.DataSource = reader1;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e) // + button
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)// - button
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