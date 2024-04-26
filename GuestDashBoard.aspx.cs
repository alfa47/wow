using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RZATest
{
    public partial class GuestDashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            int userId = Convert.ToInt32(Session["UserID"] ?? Request.QueryString["UserID"]);
            DisplayPoints(userId);
        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Homepage.aspx");
        }

        protected void BookingsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookings.aspx");
        }
        private void DisplayPoints(int userId)
        {
            string connString = ConfigurationManager.ConnectionStrings["RZAData"].ConnectionString;
            string query = "SELECT Points FROM Users WHERE UserID = @UserId";

            using (OleDbConnection conn = new OleDbConnection(connString))
            {
                conn.Open();
                using (OleDbCommand cmd = new OleDbCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    using (OleDbDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
             
                            lblPoints.Text = "Your Points: " + reader["Points"].ToString();
                        }
                        else
                        {
                            lblPoints.Text = "User not found or no points available.";
                        }
                    }
                }

            }
        }
    }
}