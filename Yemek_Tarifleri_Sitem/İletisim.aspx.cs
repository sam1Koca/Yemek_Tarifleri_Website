using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class İletisim : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void İletisimButton_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_mesajlar (mesajgonderen,mesajbaslik,mesajmail,mesajicerik) values (@p1,@p2,@p3,@p4)", sqlClasses.Baglanti());
            komut.Parameters.AddWithValue("p1", TxtGonderen.Text);
            komut.Parameters.AddWithValue("p2", TxtBaslik.Text);
            komut.Parameters.AddWithValue("p3", TxtMail.Text);
            komut.Parameters.AddWithValue("p4", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            sqlClasses.Baglanti().Close();
        }
    }
}