using System;

namespace UniGrub
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any additional code you want to include in the code-behind file.
        }
        protected void btnAddRecipe_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddRecipe.aspx"); // Redirect to the Add Recipe page
        }

        protected void btnEditRecipe_Click(object sender, EventArgs e)
        {
            // Edit recipe button logic
            Response.Redirect("~/EditRecipe.aspx"); // Redirect to the Edit Recipe page
        }

        protected void btnDeleteRecipe_Click(object sender, EventArgs e)
        {
            // Delete recipe button logic
            // Implement deletion logic here
        }
    }
}
