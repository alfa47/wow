using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RZASolution
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["RZAData"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            // Authenticate the user
            int userId = AuthenticateUser(username, password);

            if (userId != -1)
            {
                // Set the user ID in Session
                Session["UserID"] = userId;
                lb1Message.Text = "Logged in";
                AuthenticateUser(username, password);
                // Redirect to the homepage or any other page
                if (AdminCheck(username, password))
                {
                    Session["Admin"] = true;
                    Response.Redirect("AdminDashBoard.aspx");

                }
                else
                {
                    Session["Admin"] = null;
                    Response.Redirect("GuestDashBoard.aspx");
                }
            }
            else
            {
                // Authentication failed, show error message
                lb1Message.Text = "Invalid username or password.";
            }
        }
        private int AuthenticateUser(string username, string password)
        {
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
        private bool AdminCheck(string username, string password)
        {
            string query = "SELECT Admin FROM Users WHERE [Username] = ? AND [Password] = ?";
            bool isAdmin = false;

            using (OleDbConnection con = new OleDbConnection(connectionString))
            {
                using (OleDbCommand command = new OleDbCommand(query, con))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    con.Open();
                    object result = command.ExecuteScalar();
                    isAdmin = Convert.ToBoolean(result);
                }
            }
            return isAdmin;
        }
    }
}