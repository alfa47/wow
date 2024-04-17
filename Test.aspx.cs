using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
using System.Data;
using System.Web.DynamicData;
using System.ComponentModel;

namespace RZASolution
{
    public partial class Test : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["RZAData"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                GridGeneration();
            }

        }
        protected void UsernameDelete(object sender, EventArgs e)
        {
            DeleteUsingUsername();
        }
        protected void DeleteIDbtn_Click(object sender, EventArgs e)
        {
            DeleteUsingID();
        }
        protected void Updatebtn_Click(object sender, EventArgs e)
        {
            GridGeneration();


        }

        private void DeleteUsingUsername()
        {
            string username = txtUsername.Text;
            using(OleDbConnection conn = new OleDbConnection(connectionString))
            {
                using (OleDbCommand command = new OleDbCommand("DELETE FROM Users WHERE Username = @Username", conn))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    conn.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Successlbl.Text = "Deleted";
                    }
                    else
                    {
                        Errorlbl.Text = "Failed";
                    }
                }
            }
            GridGeneration();
        }
        private void DeleteUsingID()
        {
            string ID = txtUsername.Text;
            using (OleDbConnection conn = new OleDbConnection(connectionString))
            {
                using (OleDbCommand command = new OleDbCommand("DELETE FROM Users WHERE ID = @ID", conn))
                {
                    command.Parameters.AddWithValue("@ID", ID);
                    conn.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Successlbl.Text = "Deleted";
                        Errorlbl.Visible = false;
                
                    }
                    else
                    {
                        Errorlbl.Text = "Failed";
                        Successlbl.Visible = false;
                    }
                }
            }
            GridGeneration();
        }
        private void GridGeneration()
        {
            using (OleDbConnection conn = new OleDbConnection(connectionString))
            {
                using (OleDbCommand command = new OleDbCommand("SELECT * FROM Users", conn)) 
                {
                    conn.Open();
                    OleDbDataAdapter adapter = new OleDbDataAdapter(); 
                    DataTable dataTable = new DataTable();
                    adapter.SelectCommand = command;
                    adapter.Fill(dataTable);
                    GridView1.DataSource = dataTable;
                    GridView1.DataBind();
                    Successlbl.Text = "Updated!";
                }
            }
        }


    }
}