using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RZASolution
{
    public partial class Accessibility : System.Web.UI.Page
    {
        protected CheckBox chkHighContrast;
        protected CheckBox chkLargeText;
        protected Button btnSave;

        protected void SavePreferences(object sender, EventArgs e)
        {
            Session["HighContrast"] = chkHighContrast.Checked;
            Session["LargeText"] = chkLargeText.Checked;

            Response.Redirect("HomePage.aspx"); // Redirect to the home page or another relevant page
        }
    }
}
