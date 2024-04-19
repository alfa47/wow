using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RZATest
{
    public partial class caldender : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["RZAData"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
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
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text;

            // Authenticate the user
            int userId = AuthenticateUser(username, password);

            if (userId != -1)
            {
                // Set the user ID in Session
                Session["UserID"] = userId;
                lblMessage.Text = "Logged in";
                // Redirect to the homepage or any other page
            }
            else
            {
                // Authentication failed, show error message
                lblMessage.Text = "Invalid username or password.";
            }
        }

        private int AuthenticateUser(string username, string password)
        {
            // Your connection string to the database
            // SQL query to retrieve user ID based on username and password
            string query = "SELECT UserID FROM Users WHERE [Username] = ? AND [Password] = ?";

            int userId = -1;

            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    connection.Open();

                    object result = command.ExecuteScalar();

                    if (result != null)
                    {
                        userId = Convert.ToInt32(result);
                    }
                }
            }

            return userId;
        }
    }
}
