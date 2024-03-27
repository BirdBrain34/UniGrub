<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRecipe.aspx.cs" Inherits="UniGrub.AddRecipe" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Recipe</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Add Recipe</h2>
            <asp:FileUpload ID="fileUploadRecipePic" runat="server" />
            <br />
            <asp:TextBox ID="txtRecipeName" runat="server" placeholder="Recipe Name"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtIngredients" runat="server" TextMode="MultiLine" Rows="4" placeholder="Ingredients"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtSteps" runat="server" TextMode="MultiLine" Rows="4" placeholder="Steps"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="regexValidator" runat="server" ControlToValidate="txtServings" ErrorMessage="Enter a number between 100 and 500" ValidationExpression="^[1-9]\d{2,3}$"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtServings" runat="server" placeholder="Servings" ValidationGroup="AddRecipe"></asp:TextBox>
            <br />
            <asp:Button ID="btnEnterRecipe" runat="server" Text="Enter Recipe" OnClick="btnEnterRecipe_Click" ValidationGroup="AddRecipe" />
        </div>
    </form>

    <script runat="server">
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
                <button onclick=""location.href='Home.aspx'"">Home Page</button>
            </body>
            </html>";
            string recipeLink = $@"<a href='RecipeDetails.aspx?name={HttpUtility.UrlEncode(newRecipe.Name)}' class='recipe'>
                              <img src='./assets/recipes/recipe-1.jpeg' class='img recipe-img' alt='' />
                              <h5>{newRecipe.Name}</h5>
                              <p>Prep: 15min | Cook: 5min</p>
                            </a>";

            // Write content to the Response stream
            Response.Clear();
            Response.Write(pageContent);
            Response.Flush();
            Response.End();
        }

        protected void btnBackToHome_Click(object sender, EventArgs e)
        {
            // Redirect to the Home page
            Response.Redirect("Home.aspx");
        }
    </script>
</body>
</html>
