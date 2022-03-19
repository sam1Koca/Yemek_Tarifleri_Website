using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {


                SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where Tarifid=@p1", sqlClasses.Baglanti());
                komut.Parameters.AddWithValue("@p1", id);

                SqlDataReader reader = komut.ExecuteReader();

                while (reader.Read()) // okuma işlemi yapıldığı müddetçe
                {
                    TextBox1.Text = reader[1].ToString();
                    TextBox2.Text = reader[2].ToString();
                    TextBox3.Text = reader[3].ToString();
                    TextBox4.Text = reader[5].ToString();
                    TextBox5.Text = reader[6].ToString();
                }
                sqlClasses.Baglanti().Close();

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", sqlClasses.Baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd"; // Burada Dropdown'ın içinde ne gözükecek onu söyledik.
                DropDownList1.DataValueField = "Kategoriid"; // Kategorinin arka planında çalışacak olan değer. O kategori adı id'sinin çekecek

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Durum Update Yapalım Önce
            SqlCommand sqlCommand = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", sqlClasses.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", id);
            sqlCommand.ExecuteNonQuery();
            sqlClasses.Baglanti().Close();

            // Yemeği Ana Sayfaya Ekleme
            SqlCommand sqlCommand1 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriİd) values (@p1,@p2,@p3,@p4)", sqlClasses.Baglanti());
            sqlCommand1.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand1.Parameters.AddWithValue("@p2", TextBox2.Text);
            sqlCommand1.Parameters.AddWithValue("@p3", TextBox3.Text);
            sqlCommand1.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            sqlCommand1.ExecuteNonQuery();
            sqlClasses.Baglanti().Close();
        }
    }
}