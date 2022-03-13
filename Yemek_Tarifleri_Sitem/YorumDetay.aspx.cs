using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yorumid"];

            if (Page.IsPostBack == false)
            {

                SqlCommand sqlCommand = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd From " +
                "Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid = Tbl_Yemekler.Yemekİd where Yorumid=@p1",sqlClasses.Baglanti());

                sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
                SqlDataReader dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read())
                {
                TxtAd.Text = dataReader[0].ToString();
                TxtMail.Text = dataReader[1].ToString();
                Txtİcerik.Text = dataReader[2].ToString();
                TxtYemek.Text = dataReader[3].ToString();
                }

                sqlClasses.Baglanti().Close();
            
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Update Tbl_Yorumlar set Yorumicerik=@p1, yorumonay=@p2 where yorumid=@p3 ",sqlClasses.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", Txtİcerik.Text);
            sqlCommand.Parameters.AddWithValue("@p2", "True");
            sqlCommand.Parameters.AddWithValue("@p3", id);
            sqlCommand.ExecuteNonQuery();
            sqlClasses.Baglanti().Close();
        }
    }
}