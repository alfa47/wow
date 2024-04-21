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
    public partial class test123 : System.Web.UI.Page
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
                    string formattedDate = date.ToString("yyyy-MM-dd"); // Adjust the format as needed

                    string dataRow = $"<tr><td>{formattedDate}</td><td>{reader["UserID"]}</td><td>{reader["BookingID"]}</td></tr>";
                    dataRowsHtml += dataRow;
                }

                reader.Close();

                // Assign the HTML to the Literal control
                litDataRows.Text = dataRowsHtml;
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            // Retrieve values from TextBoxes
            DateTime date;
            if (!DateTime.TryParseExact(txtDate.Text, "yyyy/MM/dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out date))
            { 
                // Display error message or handle invalid date input
                lblErrorMessage.Text = "Invalid date format. Please enter date in the format YYYY-MM-DD.";
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
    }
}