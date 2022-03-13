using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlClasses sqlClasses = new SqlClasses();
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sql sorgumu yazabilmek için oluşturuyorum bunu
            SqlCommand komut = new SqlCommand("SELECT * FROM tbl_Yemekler",sqlClasses.Baglanti());
            SqlDataReader dataReader = komut.ExecuteReader(); //Bir tane veri okuyucu nesnesi oluşturdum
            DataList2.DataSource = dataReader; 
            DataList2.DataBind(); // databind ile veri bağlantısı gerçekleştiriyoruz
        }
    }
}