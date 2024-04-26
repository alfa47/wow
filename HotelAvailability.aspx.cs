using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.OleDb;

namespace RZASolution
{
    public partial class HotelAvailability : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["RZAData"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string date = Request.QueryString["date"];
                if (DateTime.TryParse(date, out DateTime selectedDate))
                {
                    lblDate.Text = $"Availability for: {selectedDate.ToString("D")}";
                    lblAvailability.Text = GetHotelAvailability(selectedDate).ToString() + " rooms available";
                }
                else
                {
                    lblDate.Text = "Invalid date format.";
                }
            }
        }

        private int GetHotelAvailability(DateTime date)
        {
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                string query = @"SELECT COUNT(*) FROM HotelRooms 
                             WHERE BookingDate = @BookingDate AND IsBooked = 0";

                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@BookingDate", date);

                    connection.Open();
                    return (int)command.ExecuteScalar();
                }
            }
        }
    }
}