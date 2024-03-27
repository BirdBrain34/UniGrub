using System;
using System.Collections.Generic;
using System.IO; // Add this line to include the System.IO namespace
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniGrub
{
    public partial class AddRecipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnEnterRecipe_Click(object sender, EventArgs e)
        {
            // Create a new recipe object and populate it with data from the form
            var newRecipe = new
            {
                Name = txtRecipeName.Text,
                Ingredients = txtIngredients.Text,
                Steps = txtSteps.Text,
                Servings = Convert.ToInt32(txtServings.Text)
            };

            // Add the new recipe to the list
            var recipes = (List<object>)Application["Recipes"];
            if (recipes == null)
            {
                recipes = new List<object>();
                Application["Recipes"] = recipes;
            }
            recipes.Add(newRecipe);

            // Generate content for the new ASPX page
            string pageContent = $@"
            <!DOCTYPE html>
            <html xmlns='http://www.w3.org/1999/xhtml'>
            <head runat='server'>
                <title>{newRecipe.Name}</title>
            </head>
            <body>
                <h2>{newRecipe.Name}</h2>
                <p>Ingredients: {newRecipe.Ingredients}</p>
                <p>Steps: {newRecipe.Steps}</p>
                <p>Servings: {newRecipe.Servings}</p>
            </body>
            </html>";

            // Write content to the Response stream
            Response.Clear();
            Response.Write(pageContent);
            Response.Flush();
            Response.End();
        }
    }
}