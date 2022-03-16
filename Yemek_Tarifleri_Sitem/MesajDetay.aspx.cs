using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Mesajid"]; // Bana diğer formdan Mesajid'yi taşı
            SqlCommand sqlCommand = new SqlCommand("Select * From Tbl_Mesajlar where Mesajid=@p1",sqlClasses.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", Convert.ToInt32(id)); // id değerinden gelen değer
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            
            while (sqlDataReader.Read())
            {
                TextBox2.Text = sqlDataReader[1].ToString();
                TextBox3.Text = sqlDataReader[2].ToString();
                TextBox4.Text = sqlDataReader[3].ToString();
                TextBox5.Text = sqlDataReader[4].ToString();
            }
            sqlClasses.Baglanti().Close(); // disconnect
        }
    }
}