using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["Yemekİd"];

            SqlCommand komut = new SqlCommand("Select YemekAd From Tbl_Yemekler where Yemekİd=@p1",sqlClasses.Baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekid));
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                Label3.Text = dr[0].ToString();
            }
            sqlClasses.Baglanti().Close();

            // Yorumları Listeleme

            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where yemekid=@p2",sqlClasses.Baglanti());
            komut2.Parameters.AddWithValue("@p2", Convert.ToInt32(yemekid));
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            

        }

    

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (yorumadsoyad,yorummail,yorumicerik,yemekid) values " +
                "(@p1,@p2,@p3,@p4)", sqlClasses.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            sqlClasses.Baglanti().Close();


        }

        
    }
}

/*  NOTES !
 *  
 *  ( KOD SATIRI 17 Açıklamaları)
 * Sayfa yüklendiği zaman o id'yi bu değişkenin içine at 
 * Request: istek - querystring: string sorgu  -- Burada diyorum ki ben string olarak sorgumu istiyorum.
 * Sorguladığım değer , soru işaretinden sonra taşımış olduğum değer.
 * Ordaki string sorguyu buna taşıdım.
 * Taşımış olduğum ıd değerine göre o id'deki yemeği listeleyeceğim
 * 
 * 
 * ( KOD SATIRI 21-22 Açıklamaları )
 * Baglanti metodumdaki adresimle ilişkilendirdim.
 * SqlCommand sınıfından komut isimli bir nesne türetip, bu nesnemede sql sorgumu yazdım.
 * 
 * 
 * ( KOD SATIRI 28 Açıklamaları )
 * Sonra bitane Sql veri okuyucu sınıfından nesne türetip - komuttan gelen sorgumla ilişkilendirdim.
 * datareader nesnem okuma işlemi yaptığı müddetçe, label3'e sorgudan gelecek 3. paremetre değerini bas (Yemek adı)
 * 
 * 
 * ( KOD SATIRI 35 Açıklamaları )
 * bağlantıyı kapat
 */