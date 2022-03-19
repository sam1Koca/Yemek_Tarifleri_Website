using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false; // Panel2 açıldığında / default kapalı olsun

            if (Page.IsPostBack == false) 
            {


                SqlCommand sqlCommand = new SqlCommand("Select * From Tbl_Hakkimizda", sqlClasses.Baglanti());
                SqlDataReader dataReader = sqlCommand.ExecuteReader();

                while (dataReader.Read()) // okuduğu sürece
                {
                    TextBox1.Text = dataReader[0].ToString();
                }
                sqlClasses.Baglanti().Close();
            }
        }


        protected void Button1_Click(object sender, EventArgs e) // Artı Button
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e) // Eksi Button
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("Update Tbl_Hakkimizda set Metin=@p1", sqlClasses.Baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand.ExecuteNonQuery();
            sqlClasses.Baglanti().Close();
        }
    }
}