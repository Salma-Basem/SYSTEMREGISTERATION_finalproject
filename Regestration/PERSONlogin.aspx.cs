using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Regestration
{
    public partial class PERSONloginaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 1- create connection object
            SqlConnection conn = new SqlConnection();
            //conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database1.mdf" ;
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\SYSTEMREGISTERATION_finalproject\\Regestration\\App_Data\\Database1.mdf;Integrated Security=True";
        
            //2- create sql seelect statement
            
            string strSelect = "SELECT * FROM [PERSON]  "
            + " WHERE Username = '" + txt_UN.Text + "' AND "
            + " Password = '" + txt_PASS.Text + "'";

            //3- create select command
            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            //4- create data reader object
            SqlDataReader reader;

            //5- open the database
            conn.Open();

            //6- execute select command
            reader = cmdSelect.ExecuteReader();

            if (reader.Read())
            {
                if (txt_UN.Text == "ahmed2021")
                    Response.Redirect("~/StudentHome.aspx");
                else
                     if (txt_UN.Text == "ahmed12341")
                    Response.Redirect("~/DoctorHome.aspx");

                else
                     if (txt_UN.Text == "heba11")
                    Response.Redirect("~/AssisstantHome.aspx");
            }

            else
                lblMsg.Text = "Incorrect username /password";

            //7-close database
            conn.Close();






        }
    }
}