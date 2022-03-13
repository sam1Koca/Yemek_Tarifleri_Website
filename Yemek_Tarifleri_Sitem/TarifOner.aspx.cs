using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOner : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,Tarifyapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", sqlClasses.Baglanti());

            komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@t3", TxtYapilisi.Text);
            komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5", TxtTarifOneren.Text);
            komut.Parameters.AddWithValue("@t6", TxtMailAdresi.Text);

            komut.ExecuteNonQuery(); // Bu sorguyu gerçekleştirmesi için yazıyoruz bu komutu.
            sqlClasses.Baglanti().Close(); // Bağlantıyı kapat

            Response.Write("Tarifiniz Alınmıştır");
        }
    }
}