using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient; // client ekledim

namespace Yemek_Tarifleri_Sitem
{
    public class SqlClasses
    {
        public SqlConnection Baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Dbo_yemektarifi;Integrated Security=True");
            // sql connection tipinde tanımladım - bağlan isminde nesne tanımladım bunun içerisine adresle komutları yolladım

            baglan.Open();  // Bağlan'ı aç

            return baglan;

        }

    }
}