using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Regestration
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //            lblMsg.Text = "";

            //            if (GridView1.SelectedIndex != -1)
            //            {
            //                SqlConnection conn = new SqlConnection();
            //                conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database1.mdf";



            //                string username = "";
            //                string email = "";
            //                if (Request.Cookies["userInfo"] != null)
            //                {
            //                    username = Request.Cookies["userInfo"].Values["usern"];
            //                    email = Request.Cookies["userInfo"].Values["email"];
            //                }
            //                ViewState["U"] = username;


            //                // getting Flight key
            //                string startDate = GridView1.SelectedRow.Cells[1].Text;
            //                string endDate = GridView1.SelectedRow.Cells[2].Text;
            //                string Ftime = GridView1.SelectedRow.Cells[3].Text;
            //                string Ttime = GridView1.SelectedRow.Cells[4].Text;
            //                string ID = GridView1.SelectedRow.Cells[6].Text;


            //                // Getting RefNo
            //                string strSelect = "SELECT MAX(RefNo) FROM Booking";

            //                SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            //                SqlDataReader reader;

            //                conn.Open();
            //                reader = cmdSelect.ExecuteReader();

            //                int RefNo = 0;
            //                if (reader.Read())
            //                    RefNo = (int)reader.GetValue(0);
            //                reader.Close();
            //                conn.Close();

            //                Random rnd = new Random();
            //                //int incr = rnd.Next(100, 10000); // creates a number between 1 and 100

            //               // RefNo = RefNo + incr;


            //                string strInsert = String.Format("Insert Into Booking Values({0},'{1}','{2}', '{3}', '{4}', '{5}')", RefNo, username, FlightNo, FlightDate, null, txtPassengerName.Text);

            //                SqlCommand cmdInsert = new SqlCommand(strInsert, conn);


            //                conn.Open();
            //                cmdInsert.ExecuteNonQuery();
            //                conn.Close();


            //                // display current booking
            //                //gdvBooking.Visible = true;
            //                //lblCurrent.Visible = true;

            //                //// Getting bookings
            //                //string strSelectB = "SELECT B.RefNo, B.FlightNo, B.FlightDate, F.Dairport, F.Dtime, F.Aairport, F.Atime, B.PassengerName, B.SeatNo "
            //                //    + " FROM Booking B, Flight F "
            //                //    + " WHERE B.FlightNo   = F.FlightNo "
            //                //    + " AND   B.FlightDate = F.FlightDate "
            //                //    + " AND   B.Username = '" + username + "'"
            //                //    + " AND   B.FlightDate >= '" + txtStartDate.Text + "'"
            //                //    + " AND   B.FlightDate <= '" + txtEndDate.Text + "'";


            //              //  SqlCommand cmdSelectB = new SqlCommand(strSelectB, conn);

            //                //DataTable tbl = new DataTable();

            //                conn.Open();
            ////                tbl.Load(cmdSelectB.ExecuteReader());

            //  //              gdvBooking.DataSource = tbl;
            //    //            gdvBooking.DataBind();

            //                conn.Close();


            //                string strBook = "Thanks for using Egypt Airlines. This is to confirm your booking of a seat for ";
            //                //+ txtPassengerName.Text + " in our Flight " + FlightNo + " on " + FlightDate + "'\n'"
            //                //+ " Departure from  " + ddlDairport.SelectedValue + " at " + Dtime + "'\n'"
            //                //+ " Arrival to " + ddlAairport.SelectedValue + " at " + Atime + "'\n'"
            //                //+ "Your Reference No: " + RefNo;

            //                sendEmail(email, strBook);

            //                // Updating seats of selected Flight

            //                //string strUpdate = "UPDATE Flight "
            //                //    + " SET Seats = Seats - 1 "
            //                //    + " WHERE FlightNo = '" + FlightNo + "'"
            //                //    + " AND   FlightDate = '" + FlightDate + "'";

            //                ////SqlCommand cmdUpdate = new SqlCommand(strUpdate, conn);


            //                conn.Open();
            //               // cmdUpdate.ExecuteNonQuery();
            //                conn.Close();

            //                //+++++++++++++++++++++++++++++++++++
            //                // updating Flights
            //                // Getting Flights
            //                //string strSelectF2 = "SELECT * FROM  [dbo].[SCHEDULE]  "
            //                //   + " WHERE FlightDate >= '" + txtStartDate.Text + "'"
            //                //   + " AND   FlightDate <= '" + txtEndDate.Text + "'"
            //                //   + " AND   Dairport  = '" + ddlDairport.SelectedValue + "'"
            //                //   + " AND   Aairport  = '" + ddlAairport.SelectedValue + "'"
            //                //   + " AND   Seats > 0";

            //                //SqlCommand cmdSelectF2 = new SqlCommand(strSelectF2, conn);

            //                DataTable tbl2 = new DataTable();

            //                conn.Open();
            //              //  tbl2.Load(cmdSelectF2.ExecuteReader());
            //                GridView1.DataSource = tbl2;
            //                GridView1.DataBind();

            //                //++++++++++++++++++++++++++++++++++

            //              //  btnConfirm.Visible = true;

            //            }
            //            else
            //            {
            //                lblMsg.Text = "No Flight Selected!! Select a Flight, then Click the Button Book!!";
            //                lblMsg.Visible = true;
            //            }

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

            string sqlquery = " INSERT INTO [dbo].[TableSELECT] (Id) values('" + chkboxselect + "')";
            SqlCommand str = new SqlCommand(sqlquery, conn);
            conn.Open();
            //SqlDataReader reader;
            //reader = str.ExecuteReader();
            str.ExecuteNonQuery();
            lblMsg.Text = " The courses You selected are " + chkboxselect + " has saved successfully";
            conn.Close();
        }

            protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string chkboxselect = "";
            //for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            //{

            //    if (CheckBoxList1.Items[i].Selected)
            //    {

            //        if (chkboxselect == "")
            //        {
            //            chkboxselect = CheckBoxList1.Items[i].Text;
            //        }
            //        else
            //        {
            //            chkboxselect += "," + CheckBoxList1.Items[i].Text;
                   // }
              //  }
           // }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}