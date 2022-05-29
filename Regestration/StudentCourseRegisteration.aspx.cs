using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
//using AjaxControlToolkit;

//namespace { AjaxControlToolkit }
namespace  Regestration  
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private object gdvFlight;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    string chkboxselect = "";
        //    for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        //    {

        //        if (CheckBoxList1.Items[i].Selected)
        //        {

        //            if (chkboxselect == "")
        //            {
        //                chkboxselect = CheckBoxList1.Items[i].Text;
        //            }
        //            else
        //            {
        //                chkboxselect += "," + CheckBoxList1.Items[i].Text;
        //            }
        //        }

        //    }
        //    //string mainconn = configurationManager.Conn
        //    SqlConnection conn = new SqlConnection();
        //    conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database1.mdf";

        //    string sqlquery = " INSERT INTO [dbo].[RegisterCourse] (CourseName) values(' " + chkboxselect + "')";
        //    SqlCommand str = new SqlCommand(sqlquery, conn);
        //    conn.Open();
        //    //SqlDataReader reader;
        //    //reader = str.ExecuteReader();
        //    str.ExecuteNonQuery();
        //    Label1.Text = " values" + chkboxselect + " saved successfully";
        //    conn.Close();


        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            string chkboxselect = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {

                if (CheckBoxList1.Items[i].Selected)
                {

                    if (chkboxselect == "")
                    {
                        chkboxselect = CheckBoxList1.Items[i].Text;
                    }
                    else
                    {
                        chkboxselect += "," + CheckBoxList1.Items[i].Text;
                    }
                }

            }
            //string mainconn = configurationManager.Conn
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database1.mdf";

            string sqlquery = " INSERT INTO [dbo].[RegisterCourse] (CourseName) values('" + chkboxselect + "')";
            SqlCommand str = new SqlCommand(sqlquery, conn);
            conn.Open();
            //SqlDataReader reader;
            //reader = str.ExecuteReader();
            str.ExecuteNonQuery();
            Label1.Text = " The courses You selected are " + chkboxselect + " has saved successfully";
            conn.Close();

        }
    }
}