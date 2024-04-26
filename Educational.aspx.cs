using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RZASolution
{
    public partial class Educational : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string animal = Request.QueryString["animal"];
                if (!string.IsNullOrEmpty(animal))
                {
                    DisplayAnimalInfo(animal);
                }
            }
        }
        protected void AnimalButton_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string animal = button.CommandArgument;
            DisplayAnimalInfo(animal);
        }

        private void DisplayAnimalInfo(string animal)
        {
            switch (animal)
            {
                case "lion":
                    AnimalNameLiteral.Text = "Lion";
                    AnimalImage.ImageUrl = "~/Assets/lion.jpg";
                    AnimalFactsLiteral.Text = "Lions are majestic creatures known as the king of the jungle.";
                    break;
                case "elephant":
                    AnimalNameLiteral.Text = "Elephant";
                    AnimalImage.ImageUrl = "~/Assets/elephant.jpg";
                    AnimalFactsLiteral.Text = "Elephants are the largest land animals.";
                    break;
                // Add more cases for other animals
                default:
                    Response.Redirect("Zoo.aspx");
                    break;
            }
        }
    }
}
   