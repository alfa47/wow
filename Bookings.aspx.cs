using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RZASolution
{
    public partial class Bookings : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["RZAData"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Session["UserID"] = 23;
            }
            if (!IsPostBack)
            {
                // Initialize the calendar to show current date
                Calendar1.SelectedDate = DateTime.Today;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            // Update the selected date label if needed
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            // Get the selected date
            DateTime selectedDate = Calendar1.SelectedDate;
            if (selectedDate <= DateTime.Today) 
            {
                lblMessage.Text = "Date unavalible";
            }
            else
            {
                // Insert the date into the database
                string insertQuery = "INSERT INTO BookedDates ([Date], [UserID]) VALUES (?, ?)";

                using (OleDbConnection connection = new OleDbConnection(connectionString))
                {
                    using (OleDbCommand command = new OleDbCommand(insertQuery, connection))
                    {
                        command.Parameters.AddWithValue("@Date", selectedDate);
                        command.Parameters.AddWithValue("@UserID", Session["UserID"]);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                lblMessage.Text = "Date booked successfully!";
            }
        }
    }
}