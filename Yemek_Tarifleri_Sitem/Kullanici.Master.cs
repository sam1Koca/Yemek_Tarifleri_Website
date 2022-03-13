using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        SqlClasses connection = new SqlClasses();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kategoriler", connection.Baglanti()); 
            // Yukarıda sql sorgumuz için komut oluşturduk - ensondaki connection nesnenesinin bağlantı methodu

            SqlDataReader oku = komut.ExecuteReader();
            // SqlDataReader ile okuttuk

            DataList1.DataSource = oku;
            // DataList'in veri kaynağı okuduğu değerler olsun

            DataList1.DataBind();
            // Bu metodla işlemleri DataList1'e aktar

        }
    }
}