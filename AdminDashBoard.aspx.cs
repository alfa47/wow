using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RZASolution
{
    public partial class AdminDashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null || Session["Admin"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void AccountControlBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SqlAdmin.aspx");
        }

        protected void BookingControlBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SqlEditBookings.aspx");
        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Homepage.aspx");
        }
    }
}