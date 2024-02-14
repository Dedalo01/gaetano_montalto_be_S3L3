using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace eserS3L3
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Choices_Btn_Click(object sender, EventArgs e)
        {
            Response.Write($"Nome:{firstName.Text}, Cognome:{lastName.Text}, Sala:{Sala.Text}, Tipo di biglietto:{TipoBiglietto.Text}");
            string connectionString = ConfigurationManager.ConnectionStrings["MSI\\SQLEXPRESS"].ToString();

            int TipoBigliettoId;
            switch (TipoBiglietto)
            {

            }

            SqlConnection conn = new SqlConnection(connectionString);

            try
            {
                conn.Open();
                Response.Write("La connessione è stata aperta correttamente");

                SqlCommand cmdInsert = new SqlCommand($"INSERT INTO DatiBiglietto VALUES('{firstName.Text}', '{lastName.Text}', 3, 2)");
            }

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }
    }
}