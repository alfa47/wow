﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RZASolution
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Loginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void ZooMap_Click(object sender, EventArgs e)
        {
            Response.Redirect("Map.aspx");
        }

        protected void Educationvisit_Click(object sender, EventArgs e)
        {

        }
    }
}