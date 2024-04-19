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
    public partial class SqlEditBookings : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["RZAData"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null || Session["UserID"] == null)
            {
                Response.Redirect("Homepage.aspx");
            }
            if (!IsPostBack)
            {
                BindGridView();
            }

        }
        protected void BindGridView()
        {
            using (OleDbConnection con = new OleDbConnection(connectionString))
            {
                OleDbCommand cmd = new OleDbCommand("SELECT BookingID, [Date], [UserID] FROM BookedDates", con);
                con.Open();
                OleDbDataAdapter da = new OleDbDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Set GridView edit index
            GridView1.EditIndex = e.NewEditIndex;
            BindGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Cancel editing
            GridView1.EditIndex = -1;
            BindGridView();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Update row
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int BookingID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string date = ((TextBox)row.Cells[1].Controls[0]).Text;
            string UserID = ((TextBox)row.Cells[2].Controls[0]).Text;


            using (OleDbConnection con = new OleDbConnection(connectionString))
            {
                OleDbCommand cmd = new OleDbCommand("UPDATE BookedDates SET [Date]=@Date, [UserID]=@UserID WHERE BookingID=@BookingID", con);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@UserID", UserID);
                cmd.Parameters.AddWithValue("@BookingID", BookingID);
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", $"alert('{cmd.CommandText}');", true);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            // Exit edit mode
            GridView1.EditIndex = -1;
            BindGridView();

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Insert")
            {
                TextBox txtNewName = GridView1.FooterRow.FindControl("txtNewName") as TextBox;
                TextBox txtUserID = GridView1.FooterRow.FindControl("txtUserID") as TextBox;

                if (txtNewName != null && txtUserID != null)
                {
                    string name = txtNewName.Text;
                    string userid = txtUserID.Text;
                    //change name to date
                    InsertData(name, userid);

                    // Rebind the GridView to show the newly inserted data
                    BindGridView();
                }
            }
        }
        protected void InsertData(string date, string userid)
        {
            using (OleDbConnection con = new OleDbConnection(connectionString))
            {
                OleDbCommand cmd = new OleDbCommand("INSERT INTO BookingDates ([Date], [UserID]) VALUES (@Date, @UserID)", con);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@Password", userid);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int bookingID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            using (OleDbConnection con = new OleDbConnection(connectionString))
            {
                OleDbCommand cmd = new OleDbCommand("DELETE FROM BookingDates WHERE BookingID=@BookingID", con);
                cmd.Parameters.AddWithValue("@BookingID", bookingID);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            BindGridView();
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                TableCell cell = new TableCell();
                cell.ColumnSpan = GridView1.Columns.Count;

                TextBox txtNewUsername = new TextBox();
                txtNewUsername.ID = "txtNewUsername";
                txtNewUsername.CssClass = "form-control";
                txtNewUsername.Attributes["placeholder"] = "New Username";
                cell.Controls.Add(txtNewUsername);

                TextBox txtNewPassword = new TextBox();
                txtNewPassword.ID = "txtNewPassword";
                txtNewPassword.CssClass = "form-control";
                txtNewPassword.Attributes["placeholder"] = "New Password";
                cell.Controls.Add(txtNewPassword);

                LinkButton lnkInsert = new LinkButton();
                lnkInsert.ID = "lnkInsert";
                lnkInsert.CausesValidation = true;
                lnkInsert.CommandName = "Insert";
                lnkInsert.Text = "Add";
                lnkInsert.CssClass = "btn btn-primary";
                cell.Controls.Add(lnkInsert);

                e.Row.Cells.Add(cell);
            }
        }

        protected void Addrowbtn_Click(object sender, EventArgs e)
        {
            string txtNewName = txtDate.Text;
            string txtNewPassword = txtUserID.Text;

            if (txtNewName != null && txtNewPassword != null)
            {
                string name = txtNewName.ToString();
                string password = txtNewPassword.ToString();

                InsertData(name, password);

                // Rebind the GridView to show the newly inserted data
                BindGridView();
            }
        }
    }
}