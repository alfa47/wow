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
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                Calendar1.SelectedDate = DateTime.Today;
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            // Fetch booked dates and their corresponding booking counts from the database
            Dictionary<DateTime, int> bookedDatesWithCounts = GetBookedDatesWithCountsFromDatabase();

            // Check if the current date being rendered is in the booked dates dictionary
            if (bookedDatesWithCounts.ContainsKey(e.Day.Date))
            {
                int bookingCount = bookedDatesWithCounts[e.Day.Date];

                // Check if the booking count exceeds 5
                if (bookingCount > 5)
                {
                    // Apply custom styling to indicate that the date is booked
                    e.Cell.BackColor = System.Drawing.Color.Red;
                    e.Cell.ForeColor = System.Drawing.Color.White;
                }
            }
        }

        private Dictionary<DateTime, int> GetBookedDatesWithCountsFromDatabase()
        {
            Dictionary<DateTime, int> bookedDatesWithCounts = new Dictionary<DateTime, int>();

            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                string query = "SELECT [Date], COUNT(*) AS BookingCount FROM BookedDates GROUP BY [Date]";
                OleDbCommand command = new OleDbCommand(query, connection);

                connection.Open();
                OleDbDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    DateTime bookedDate = reader.GetDateTime(0);
                    int bookingCount = reader.GetInt32(1);
                    bookedDatesWithCounts.Add(bookedDate, bookingCount);
                }
            }

            return bookedDatesWithCounts;
        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDate = Calendar1.SelectedDate;
            if (selectedDate <= DateTime.Today)
            {
                lblMessage.Text = "Date unavailable. Please select a future date.";
            }
            else
            {
                Response.Redirect($"HotelAvailability.aspx?date={selectedDate.ToString("yyyy-MM-dd")}");
            }
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