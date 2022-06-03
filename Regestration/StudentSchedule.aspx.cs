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

namespace Regestration
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

         //   SqlConnection conn = new SqlConnection();
         //   conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database1.mdf";




         //   // lblMsg.Visible = false;
         //   // gdvBooking.Visible = false;

         //   string username = "";
         //   if (Request.Cookies["userInfo"] != null)
         //       username = Request.Cookies["userInfo"].Values["usern"];
         //   ViewState["U"] = username;

         //   // Getting Flights
         //   string strSelect = "SELECT * FROM  [dbo].[SCHEDULE]  "
         //+ " WHERE Group = '" + DDL.SelectedValue+ "' AND "
         //+ " CourseName = '" + DropDownList2.SelectedValue+ "'";
         //  // string strSelect = " SELECT * FROM [dbo].[Groups]"

         //   SqlCommand cmdSelectF = new SqlCommand(strSelect, conn);

         //   //  Craeting Data Table

         //   DataTable tbl = new DataTable();

         //   conn.Open();

         //   tbl.Load(cmdSelectF.ExecuteReader());
         //   gdvSchedule.DataSource = tbl;
         //   gdvSchedule.DataBind();

         //   if (gdvSchedule.Rows.Count != 0)
         //   {
         //       gdvSchedule.Visible = true;
         //       btnRegister.Visible = true;
         //       //txtName.Visible = true;
         //       //lblPassengerName.Visible = true;
         //       lblMsg.Text = "Select your schedule then Click Book";


         //   }
         //   else
         //   {
         //       lblMsg.Text = "No Available schedule , You May Change Your Preferences!!";
         //       //    
         //       btnRegister.Visible = false;
         //       //txtPassengerName.Visible = false;
         //       //lblPassengerName.Visible = false;

         //   }

         //   string strBook = "Thanks for using Egypt Airlines. This is to confirm your booking of a seat for ";
         //   ////    //+ txt.Text + " in our Flight " + FlightNo + " on " + FlightDate + "'\n'"
         //   ////    //+ " Departure from  " + ddlDairport.SelectedValue + " at " + Dtime + "'\n'"
         //   ////    //+ " Arrival to " + ddlAairport.SelectedValue + " at " + Atime + "'\n'"
         //   ////    //+ "Your Reference No: " + RefNo;

            
         //   conn.Close();
         //  // sendEmail(strinmail, strBook);
        }

   

        protected void btnBook_Click(object sender, EventArgs e)
        {
            ////lblMsg.Text = "";

            ////if (gdvSchedule.SelectedIndex != -1)
            ////{

            ////    // create a connection object to the database
            ////    // 1- Create Connection Object
            ////    SqlConnection conn = new SqlConnection();
            ////    conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database1.mdf";



            ////    string username = "";
            ////    string email = "";
            ////    if (Request.Cookies["userInfo"] != null)
            ////    {
            ////        username = Request.Cookies["userInfo"].Values["usern"];
            ////        email = Request.Cookies["userInfo"].Values["email"];
            ////    }
            ////    ViewState["U"] = username;


            ////    // getting Flight key
            ////    //string FlightNo = gdvSchedule.SelectedRow.Cells[1].Text;
            ////    //string FlightDate = gdvSchedule.SelectedRow.Cells[2].Text;
            ////    //string Dtime = gdvSchedule.SelectedRow.Cells[4].Text;
            ////    //string Atime = gdvSchedule.SelectedRow.Cells[6].Text;
            ////    string StartDay = gdvSchedule.SelectedRow.Cells[1].Text;
            ////    string EndDay = gdvSchedule.SelectedRow.Cells[2].Text;
            ////    string fTime = gdvSchedule.SelectedRow.Cells[3].Text;
            ////    string tTime = gdvSchedule.SelectedRow.Cells[4].Text;
            ////    string Group = gdvSchedule.SelectedRow.Cells[5].Text;
            ////    string id = gdvSchedule.SelectedRow.Cells[6].Text;

            ////    // Getting RefNo
            ////    string strSelect = "SELECT MAX(ID) FROM  [dbo].[SCHEDULE] ";

            ////     SqlCommand cmdSelect = new SqlCommand(strSelect, conn);

            ////    SqlDataReader reader;

            ////    conn.Open();
            ////    reader = cmdSelect.ExecuteReader();

            ////    //int ID = 0;
            ////    //if (reader.Read())
            ////    //    ID = (int)reader.GetValue(0);
            ////    reader.Close();
            ////    conn.Close();

            ////    //Random rnd = new Random();
            ////    //int incr = rnd.Next(100, 10000); // creates a number between 1 and 100

            ////    //ID = ID + incr;


            ////    string strInsert = String.Format("Insert Into  [dbo].[SCHEDULE] Values('{0}','{1}','{2}', '{3}', '{4}')", StartDay, EndDay, fTime, tTime, Group, ID);

            ////    SqlCommand cmdInsert = new SqlCommand(strInsert, conn);


            ////    conn.Open();
            ////    cmdInsert.ExecuteNonQuery();
            ////    conn.Close();


            ////    //// display current booking
            ////    //gdvRegister.Visible = true;
            ////    //lblCurrent.Visible = true;

            ////    //// Getting bookings
            ////    //string strSelectB = "SELECT B.StartDay, B.EndDay, F.fTime, F.tTime, F.Group, F.ID, B.PassengerName, B.SeatNo "
            ////    //    + " FROM    StudentSchedule B, Person F "
            ////    //    + " WHERE B.FlightNo   = F.FlightNo "
            ////    //    + " AND   B.FlightDate = F.FlightDate ";


            ////    //SqlCommand cmdSelectB = new SqlCommand(strSelectB, conn);

            ////    //DataTable tbl = new DataTable();

            ////    //conn.Open();
            ////    //tbl.Load(cmdSelectB.ExecuteReader());

            ////    //gdvRegister.DataSource = tbl;
            ////    //gdvRegister.DataBind();

            ////    //conn.Close();


            ////    string strBook = "Thanks for using Egypt Airlines. This is to confirm your booking of a seat for ";
            ////    //+ txt.Text + " in our Flight " + FlightNo + " on " + FlightDate + "'\n'"
            ////    //+ " Departure from  " + ddlDairport.SelectedValue + " at " + Dtime + "'\n'"
            ////    //+ " Arrival to " + ddlAairport.SelectedValue + " at " + Atime + "'\n'"
            ////    //+ "Your Reference No: " + RefNo;

            ////    sendEmail(email, strBook);

            ////    // Updating seats of selected Flight

            ////    //string strUpdate = "UPDATE [dbo].[SCHEDULE] "
            ////    //    /*+ " SET Seats = Seats - 1 "*/
            ////    //    + " WHERE FlightNo = '" + FlightNo + "'"
            ////    //    + " AND   FlightDate = '" + FlightDate + "'";

            ////    //SqlCommand cmdUpdate = new SqlCommand(strUpdate, conn);


            ////    //conn.Open();
            ////    //cmdUpdate.ExecuteNonQuery();
            ////    //conn.Close();

            ////    ////+++++++++++++++++++++++++++++++++++
            ////    //// updating Flights
            ////    //// Getting Flights
            ////    //string strSelectF2 = "SELECT * FROM Flight ";
            ////    ////+ " WHERE FlightDate >= '" + txtStartDate.Text + "'"
            ////    ////+ " AND   FlightDate <= '" + txtEndDate.Text + "'"
            ////    ////+ " AND   Dairport  = '" + ddlDairport.SelectedValue + "'"
            ////    ////+ " AND   Aairport  = '" + ddlAairport.SelectedValue + "'"
            ////    ////+ " AND   Seats > 0";

            ////    //SqlCommand cmdSelectF2 = new SqlCommand(strSelectF2, conn);

            ////    //DataTable tbl2 = new DataTable();

            ////    //conn.Open();
            ////    //tbl2.Load(cmdSelectF2.ExecuteReader());
            ////    //gdvSchedule.DataSource = tbl2;
            ////    //gdvSchedule.DataBind();

            ////    ////++++++++++++++++++++++++++++++++++

            ////    btnConfirm.Visible = true;

            ////}
            ////else
            ////{
            ////    lblMsg.Text = "No Flight Selected!! Select a Flight, then Click the Button Book!!";
            ////    lblMsg.Visible = true;
            ////}
        }

        protected void sendEmail(string strEmail, string strMsg)
        {

            MailMessage msg = new MailMessage("CSCE4502@gmail.com", strEmail);
            msg.Subject = "Booking Confirmation";
            msg.Body = strMsg;

            SmtpClient Sclient = new SmtpClient("smtp.gmail.com", 587);
            NetworkCredential auth = new NetworkCredential("CSCE4502@gmail.com", "csce4502f16");

            Sclient.UseDefaultCredentials = false;
            Sclient.Credentials = auth;
            Sclient.EnableSsl = true;
            try
            {
                Sclient.Send(msg);
                lblMsg.Text = "A Message has been sent to your Email Address with details of your course registeration!!";
                lblMsg.Visible = true;
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //gdvRegister.Visible = false;
            //gdvSchedule.Visible = false;
            //lblMsg.Visible = false;


            //btnConfirm.Visible = false;
            //btnRegister.Visible = false;
            ////txtPassengerName.Visible = false;
            ////lblPassengerName.Visible = false;
            //lblCurrent.Visible = false;
            ////txtStartDate.Text = "";
            ////txtEndDate.Text = "";
        }

        protected void gdvSchedule_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|database1.mdf";




            // lblMsg.Visible = false;
            // gdvBooking.Visible = false;

            string username = "";
            if (Request.Cookies["userInfo"] != null)
                username = Request.Cookies["userInfo"].Values["usern"];
            ViewState["U"] = username;

            // Getting Flights
         //   string strSelect = "SELECT * FROM  [dbo].[SCHEDULE]  "
         //+ " WHERE Group = '" + DDL.SelectedValue + "' AND "
         //+ " CourseName = '" + DropDownList2.SelectedValue + "'";
         //   // string strSelect = " SELECT * FROM [dbo].[Groups]"

         //   SqlCommand cmdSelectF = new SqlCommand(strSelect, conn);

         //   //  Craeting Data Table

         //   DataTable tbl = new DataTable();

            conn.Open();

            //tbl.Load(cmdSelectF.ExecuteReader());
            //gdvSchedule.DataSource = tbl;
            //gdvSchedule.DataBind();

            if (gdvSchedule.Rows.Count != 0)
            {
                gdvSchedule.Visible = true;
                //btnRegister.Visible = true;
                //txtName.Visible = true;
                //lblPassengerName.Visible = true;
                lblMsg.Text = "The Schedule you selected will be approved by the instructor";


            }
            else
            {
                lblMsg.Text = "No Available schedule , You May Change Your selected schedule!!";
                //    
                //btnRegister.Visible = false;
                //txtPassengerName.Visible = false;
                //lblPassengerName.Visible = false;

            }

            string strBook = "Thanks for using Egypt Airlines. This is to confirm your booking of a seat for ";
            ////    //+ txt.Text + " in our Flight " + FlightNo + " on " + FlightDate + "'\n'"
            ////    //+ " Departure from  " + ddlDairport.SelectedValue + " at " + Dtime + "'\n'"
            ////    //+ " Arrival to " + ddlAairport.SelectedValue + " at " + Atime + "'\n'"
            ////    //+ "Your Reference No: " + RefNo;


            conn.Close();
            // sendEmail(strinmail, strBook);
        }
    }
}