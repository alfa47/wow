using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace RZASolution
{
    public partial class SqlEditBookings : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["RZAData"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load data on initial page load
                LoadData();
            }
        }

        protected void LoadData()
        {
            using (OleDbConnection conn = new OleDbConnection(connectionString))
            {
                string query = "SELECT * FROM BookedDates";
                OleDbCommand cmd = new OleDbCommand(query, conn);

                conn.Open();
                OleDbDataReader reader = cmd.ExecuteReader();

                // Build the HTML for data rows
                string dataRowsHtml = "";
                while (reader.Read())
                {
                    DateTime date = (DateTime)reader["Date"];
                    string formattedDate = date.ToString("dd-MM-yyyy"); // Adjust the format as needed

                    string dataRow = $"<tr><td>{reader["BookingID"]}</td><td>{reader["UserID"]}</td><td>{formattedDate}</td></tr>";
                    dataRowsHtml += dataRow;
                }

                reader.Close();

                // Assign the HTML to the Literal control
                litDataRows.Text = dataRowsHtml;
            }
        }
        protected void DeleteData()
        {
            Int32.TryParse(txtBookingID.Text.Trim(), out int BookingID);

            using (OleDbConnection con = new OleDbConnection(connectionString))
            {
                OleDbCommand cmd = new OleDbCommand("DELETE FROM BookedDates WHERE BookingID=@BookingID", con);
                cmd.Parameters.AddWithValue("@BookingID", BookingID);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            LoadData();

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            // Retrieve values from TextBoxes
            DateTime date;
            if (!DateTime.TryParseExact(txtDate.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out date))
            {
                // Display error message or handle invalid date input
                //lblErrorMessage.Text = "Invalid date format. Please enter date in the format YYYY-MM-DD.";
                lblErrorMessage.Text = txtDate.Text;
                return;
            }

            string userID = txtUserID.Text.Trim(); // Trim to remove leading and trailing spaces
            if (string.IsNullOrEmpty(userID))
            {
                // Display error message or handle empty user ID
                lblErrorMessage.Text = "User ID cannot be empty.";
                return;
            }


            using (OleDbConnection conn = new OleDbConnection(connectionString))
            {
                string query = "INSERT INTO BookedDates ([Date], [UserID]) VALUES (@Date, @UserID)";
                OleDbCommand cmd = new OleDbCommand(query, conn);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@UserID", userID);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
            lblErrorMessage.Text = "";

            // Refresh data after insert
            LoadData();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            DeleteData();
        }

        protected void InsertEdit_Click(object sender, EventArgs e)
        {
            // Retrieve values from TextBoxes
            DateTime date;
            if (!DateTime.TryParseExact(txtDateEdit.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out date))
            {
                // Display error message or handle invalid date input
                lblErrorMessage.Text = "Invalid date format. Please enter date in the format YYYY-MM-DD.";
                return;
            }

            string userID = txtUserIDEdit.Text.Trim(); // Trim to remove leading and trailing spaces
            if (string.IsNullOrEmpty(userID))
            {
                // Display error message or handle empty user ID
                lblErrorMessage.Text = "User ID cannot be empty.";
                return;
            }
            string BookingID = txtBookingIDEdit.Text.Trim();
            if (string.IsNullOrEmpty(userID))
            {
                // Display error message or handle empty user ID
                lblErrorMessage.Text = "BookingID cannot be empty.";
                return;
            }


            using (OleDbConnection conn = new OleDbConnection(connectionString))
            {
                string query = "UPDATE BookedDates SET [Date]=@Date, [UserID]=@UserID WHERE BookingID=@BookingID";
                OleDbCommand cmd = new OleDbCommand(query, conn);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@UserID", userID);
                cmd.Parameters.AddWithValue("@BookingID", BookingID);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            lblErrorMessage.Text = "";

            // Refresh data after insert
            LoadData();

        }
    }
}