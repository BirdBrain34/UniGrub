<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditRecipe.aspx.cs" Inherits="UniGrub.EditRecipe" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Recipes</title>
    <!-- Add your CSS and JavaScript links here -->
</head>
<body>
    <div id="searchResults" class="recipes-list">
        <!-- Radio buttons to select recipe -->
        <input type="radio" id="pancit" name="recipe" value="pancit" onclick="populateTextbox('pancit')"> 
        <label for="pancit" class="recipe-link">Pancit Canton</label><br>
        <input type="radio" id="beefsteak" name="recipe" value="beefsteak" onclick="populateTextbox('beefsteak')"> 
        <label for="beefsteak" class="recipe-link">Beef Steak</label><br>
        <input type="radio" id="porksinigang" name="recipe" value="porksinigang" onclick="populateTextbox('porksinigang')"> 
        <label for="porksinigang" class="recipe-link">Pork Sinigang</label><br>
        <input type="radio" id="adobo" name="recipe" value="adobo" onclick="populateTextbox('adobo')"> 
        <label for="adobo" class="recipe-link">Chicken Adobo</label><br>
    </div>
    
    <!-- Textboxes for editing -->
    <div class="recipe-form">
        <div>
            <label for="description">Description:</label>
            <textarea id="description" rows="4" cols="50"></textarea>
        </div>
        <div>
            <label for="ingredients">Ingredients:</label>
            <textarea id="ingredients" rows="4" cols="50"></textarea>
        </div>
        <div>
            <label for="steps">Steps:</label>
            <textarea id="steps" rows="4" cols="50"></textarea>
        </div>
        <button onclick="saveRecipe()">Save</button>
    </div>
    <button onclick="window.location.href='Home.aspx'" class="btn">Go back to Home</button>

    <!-- Label for edit success -->
    <div id="editSuccessLabel" style="display:none; color:green;">Edit successful!</div>

    <!-- Add your script here -->
    <script>
        // Function to populate textbox based on selected recipe
        function populateTextbox(recipe) {
            switch (recipe) {
                case 'pancit':
                    document.getElementById('description').value = "Description of Pancit Canton"; // Replace with actual description
                    break;
                case 'beefsteak':
                    document.getElementById('description').value = "Description of Beef Steak"; // Replace with actual description
                    break;
                case 'porksinigang':
                    document.getElementById('description').value = "Description of Pork Sinigang"; // Replace with actual description
                    break;
                case 'adobo':
                    document.getElementById('description').value = "Description of Chicken Adobo"; // Replace with actual description
                    break;
                default:
                    document.getElementById('description').value = ""; // Clear textbox if no recipe is selected
            }
        }

        function saveRecipe() {
            // Get the selected recipe
            const selectedRecipe = document.querySelector('input[name="recipe"]:checked').value;

            // Get the description, ingredients, and steps from textboxes
            const description = document.getElementById('description').value;
            const ingredients = document.getElementById('ingredients').value;
            const steps = document.getElementById('steps').value;

            // Update the description of the selected recipe
            switch (selectedRecipe) {
                case 'pancit':
                    document.querySelector('.pancit-canton-it').textContent = description; // Replace with actual selector
                    break;
                case 'beefsteak':
                    // Update description of Beef Steak
                    break;
                case 'porksinigang':
                    // Update description of Pork Sinigang
                    break;
                case 'adobo':
                    // Update description of Chicken Adobo
                    break;
                default:
                // Handle other recipes
            }

            // You can similarly update the ingredients and steps as needed

            // Display edit success label
            document.getElementById('editSuccessLabel').style.display = 'block';

            // Hide edit success label after 3 seconds
            setTimeout(function () {
                document.getElementById('editSuccessLabel').style.display = 'none';
            }, 3000);

            // Here you can make an AJAX request to save the modified recipe data to your database
        }
    </script>
</body>
</html>
