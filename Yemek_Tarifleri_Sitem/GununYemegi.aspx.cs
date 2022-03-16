using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem  // Yemeğin durumu false ise o günün yemeği değil, true ise o günün yemeğidir
{
    public partial class GununYemegi : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler where Durum=1", sqlClasses.Baglanti());  // Durumu true olan yemek günün yemeği

            SqlDataReader oku = komut.ExecuteReader();

            DataList2.DataSource = oku;
            DataList2.DataBind();

        }
    }
}