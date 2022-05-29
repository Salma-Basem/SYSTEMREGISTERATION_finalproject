using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Regestration
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = "";
            if (Request.Cookies["userInfo"] != null)
                username = Request.Cookies["userInfo"].Values["usern"];

            ViewState["U"] = username;

            imgUserPic.ImageUrl = "~/userPic/" + username + ".jpg";

            // 1- Create Connection Object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database1.mdf";


            string strSelect = "SELECT * FROM [PERSON] "
                + " WHERE Username = '" + username + "'";

            SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            SqlDataReader reader;

            conn.Open();
            reader = cmdSelect.ExecuteReader();

            if (reader.Read())
            {
                txtFname.Text = (string)reader.GetValue(0);
                txtLname.Text = (string)reader.GetValue(1);
                rblg.SelectedValue = (string)reader.GetValue(2);
                txtEmail.Text = (string)reader.GetValue(4);
                txtPhone.Text = (string)reader.GetValue(6);
                ddlCountry.SelectedValue = (string)reader.GetValue(7);
                txtUsername.Text = (string)reader.GetValue(8);

            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            txtFname.Enabled = true;
            txtLname.Enabled = true;
            rblg.Enabled = true;
            txtEmail.Enabled = true;
            txtPhone.Enabled = true;
            ddlCountry.Enabled = true;
            fupPic.Enabled = true;

            btnSave.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // 1- Create Connection Object
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database1.mdf";



            string username = "";
            username = (string)ViewState["U"];

            string strUpdate = "Update  [PERSON]  "
                + " SET Fname = '" + txtFname.Text + "', "
                + " Lname = '" + txtLname.Text + "', "
                + " Gender= '" + rblg.SelectedValue + "', "
                + " Email = '" + txtEmail.Text + "', "
                + " Phone = '" + txtPhone.Text + "', "
                + " Country = '" + ddlCountry.SelectedValue + "' "
                + " WHERE Username = '" + username + "'";

            SqlCommand cmdUpdate = new SqlCommand(strUpdate, conn);

            conn.Open();
            cmdUpdate.ExecuteNonQuery();

            if (fupPic.HasFile)
                fupPic.SaveAs(Server.MapPath("userPic") + "\\" + txtUsername.Text + ".jpg");

            conn.Close();

            lblMsg.Text = "Your Account Has Been Successfully Updated!!";


        }
    }
}