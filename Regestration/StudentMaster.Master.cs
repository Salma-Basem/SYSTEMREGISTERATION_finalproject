using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Regestration
{
    public partial class StudentMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = "";
            string FirstName = "";
            string LastName = "";

            if (Request.Cookies["userInfo"] != null)
                username = Request.Cookies["userInfo"].Values["usern"];
                FirstName = Request.Cookies["userInfo"].Values["Fn"];
                LastName = Request.Cookies["userInfo"].Values["Ln"];


            lblgMsg.Text = "welcome  " + username + " to FUE";
        }
    }
}