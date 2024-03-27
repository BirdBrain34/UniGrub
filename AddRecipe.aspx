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
            <asp:Button ID="btnEnterRecipe" runat="server" Text="Add Recipe" OnClick="btnEnterRecipe_Click" ValidationGroup="AddRecipe" />
        </div>
    </form>
</body>
</html>
