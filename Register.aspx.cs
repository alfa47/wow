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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string connectionString = ConfigurationManager.ConnectionStrings["RZAData"].ConnectionString;
            string Add_to_database = "INSERT INTO Users ([Username], [Password]) VALUES (?, ?)";
            string Check_exist = "SELECT COUNT(*) FROM Users WHERE Username = @Username";
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                using (OleDbCommand command = new OleDbCommand(Check_exist, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    connection.Open();
                    int count = (int)command.ExecuteScalar();
                    if (count == 0)
                    {
                        using (OleDbCommand command2 = new OleDbCommand(Add_to_database, connection))
                        {
                            command2.Parameters.AddWithValue("@Username", username);
                            command2.Parameters.AddWithValue("@Password", password);

                            int rowsAffected = command2.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                lblMessage.Text = "Registered!";
                                Response.Redirect("Login.aspx");
                            }
                            else
                            {
                                lblMessage.Text = "User name is used!";
                            }

                        }
                    }
                    else
                    {
                        lblMessage.Text = "Failed";
                    }

                }
            }

        }
    }
}   