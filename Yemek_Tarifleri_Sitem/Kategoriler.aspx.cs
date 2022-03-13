using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["Kategoriid"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler", sqlClasses.Baglanti());
            SqlDataReader dr = komut.ExecuteReader(); // komuttaki sorguyu okut
            DataList1.DataSource = dr;
            DataList1.DataBind();

            // Silme işlemi
            if (islem == "sil")
            {
                SqlCommand komutSil = new SqlCommand("DELETE from Tbl_Kategoriler where Kategoriİd = @p1", sqlClasses.Baglanti());
                komutSil.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                komutSil.ExecuteNonQuery();
                sqlClasses.Baglanti().Close();
            }



            Panel2.Visible = false; // Panel2 başlangıçta bize gözükmesin, biz +'ya basınca gözüksün. (def value false :) )
            Panel4.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)  // + butonu *basınca Kategori listesi açılacak
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)  // - butonu *Basınca Kategori listesi kapanacak
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

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)",sqlClasses.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            sqlClasses.Baglanti().Close();
        }
    }
}