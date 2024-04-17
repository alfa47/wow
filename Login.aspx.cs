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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string connectionString = ConfigurationManager.ConnectionStrings["RZAData"].ConnectionString;
            string query = "SELECT COUNT(*) FROM Users WHERE Username = @Username AND Password = @Password";
 
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);
                    connection.Open();
                    int count = (int)command.ExecuteScalar();
                    if (count > 0)
                    {
                        Session["LoggedIn"] = true;
                        Response.Redirect("Test.aspx");

                    }
                    else
                    {
                        lb1Message.Text = "Invalid username or password";
                    }
                }
            }

        }
    }
    
}