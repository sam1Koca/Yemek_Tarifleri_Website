using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Yemek_Tarifleri_Sitem
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kategoriid"]; // Diğer formdan taşınan değer(query string - formlar arası geçiş gibi)

            if (Page.IsPostBack == false) // sayfayı bir kere yükle, başka yapma; o halinin üzerine birşey ekleme-yapma
            {
                SqlCommand komut = new SqlCommand("Select * from tbl_kategoriler where kategoriid=@p1", sqlClasses.Baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id)); //p1 bilmem ne hatası verince string değeri int32 değere convert'le :)
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                }
                sqlClasses.Baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriid=@p3", sqlClasses.Baglanti());

            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3",Convert.ToInt32(id));
            komut.ExecuteNonQuery(); // sorgumuzu çalıştır
            sqlClasses.Baglanti().Close(); // bağlantıyı kapat
            
        }
    }
}