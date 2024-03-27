using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; // Import this namespace for accessing WebControls

namespace UniGrub
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the list of recipes from the Application state
                List<Recipe> recipes = Application["Recipes"] as List<Recipe>;
                if (recipes != null)
                {
                    // Dynamically generate HTML markup for each recipe and add it to the page content
                    foreach (Recipe recipe in recipes)
                    {
                        string recipeLink = $"<a href='RecipeDetails.aspx?name={HttpUtility.UrlEncode(recipe.Name)}' class='recipe'>" +
                                            $"<img src='./assets/recipes/{GenerateRecipeImageFilename(recipe.Name)}' class='img recipe-img' alt='' />" +
                                            $"<h5>{recipe.Name}</h5>" +
                                            $"<p>Prep: {CalculatePrepTime(recipe)} | Cook: {CalculateCookTime(recipe)}</p>" +
                                            $"</a>";

                        recipesList.InnerHtml += recipeLink;
                    }
                }
            }
        }

        // Example methods for generating image filenames and calculating prep/cook times
        private string GenerateRecipeImageFilename(string recipeName)
        {
            // Implement your logic to generate the image filename based on the recipe name
            return "recipe-image.jpg";
        }

        private string CalculatePrepTime(Recipe recipe)
        {
            // Implement your logic to calculate the prep time based on the recipe's ingredients or steps
            return "15 min";
        }

        private string CalculateCookTime(Recipe recipe)
        {
            // Implement your logic to calculate the cook time based on the recipe's ingredients or steps
            return "5 min";
        }
    }
}
