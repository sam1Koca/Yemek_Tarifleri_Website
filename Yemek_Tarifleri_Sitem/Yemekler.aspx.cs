using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        string islem = "";
        string id = "";

        

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)

            {
                id = Request.QueryString["Yemekİd"];
                islem = Request.QueryString["islem"];

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", sqlClasses.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd"; // Burada Dropdown'ın içinde ne gözükecek onu söyledik.
                DropDownList1.DataValueField = "Kategoriid"; // Kategorinin arka planında çalışacak olan değer. O kategori adı id'sinin çekecek

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }


            // Yemek Listesi
            SqlCommand sqlCommand = new SqlCommand("Select * from Tbl_Yemekler",sqlClasses.Baglanti());
            SqlDataReader dataReader = sqlCommand.ExecuteReader();
            DataList1.DataSource = dataReader;
            DataList1.DataBind();


            if (islem == "sil")
            {
                SqlCommand komut = new SqlCommand("Delete From Tbl_Yemekler where Yemekİd=@p1",sqlClasses.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                komut.ExecuteNonQuery();
                sqlClasses.Baglanti().Close();
            }


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

        // Yemek Ekleme
        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (yemekad,yemekmalzeme,yemektarif,Kategoriİd) values (@p1,@p2,@p3,@p4)",sqlClasses.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox4.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            sqlClasses.Baglanti().Close();


            // Kategori Sayısını Artırma
            SqlCommand komut2 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet = KategoriAdet + 1 where Kategoriid=@p1",sqlClasses.Baglanti());

            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            sqlClasses.Baglanti().Close();
        }
    }
}