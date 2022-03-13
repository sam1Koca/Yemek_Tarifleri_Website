using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekİd"]; 

            if (Page.IsPostBack == false) 
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where Yemekİd=@p1", sqlClasses.Baglanti());
                komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id)); 
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }

                sqlClasses.Baglanti().Close();

                if (Page.IsPostBack == false)

                {
                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", sqlClasses.Baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd"; // Burada Dropdown'ın içinde ne gözükecek onu söyledik.
                    DropDownList1.DataValueField = "Kategoriid"; // Kategorinin arka planında çalışacak olan değer. O kategori adı id'sinin çekecek

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set YemekAd=@p1 ,YemekMalzeme=@p2 ,YemekTarif=@p3,Kategoriİd=@p4 where Yemekİd=@p5",sqlClasses.Baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", Convert.ToInt32(id));
            komut.ExecuteNonQuery();
            sqlClasses.Baglanti().Close();
        }
    }
}