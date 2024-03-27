<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="UniGrub.Home" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>UniGrub</title>   
  <!-- main css -->
  <link rel="stylesheet" href="./css/main.css" />
</head>
<body>
  <!-- nav  -->
  <nav class="navbar">
    <div class="nav-center">
      <div class="nav-header">
        <a href="Home.aspx" class="nav-logo">
            <img src="./assets/public/unigrub-3@2x.png" alt="UniGrub Logo">
        </a>
      </div>
      <div class="nav-links">
        <a href="Home.aspx" class="nav-link">home</a>
        <a href="Admin.aspx" class="nav-link">admin</a>
        <a href="about.html" class="nav-link">about</a>
        <a href="tags.html" class="nav-link">tags</a>
        <a href="recipes.html" class="nav-link">recipes</a>
      </div>
    </div>
  </nav>
  <!-- end of nav -->
  <!-- main -->
  <main class="page">
    <!-- header -->
    <header class="hero">
      <div class="hero-container">
        <div class="hero-text">
          <h1>UniGrub</h1>
          <h4>For Students on a budget</h4>
        </div>
      </div>
    </header>
    <!-- end of header -->
    <section class="recipes-container">
      <!-- tag container -->
      <div class="tags-container">
        <h4>recipes</h4>
        <div class="tags-list">
          <button onclick="filterByCategory('all')">All Recipes</button>
          <button onclick="filterByCategory('snack')">Snack</button>
          <button onclick="filterByCategory('beef')">Beef</button>
          <button onclick="filterByCategory('chicken')">Chicken</button>
          <button onclick="filterByCategory('pork')">Pork</button>
        </div>
      </div>
      <!-- end of tag container -->
      <!-- recipes list -->
      <div class="recipes-list">
        <!-- single recipe -->
        <a href="pancit.aspx" class="recipe">
          <img src="./assets/recipes/recipe-1.jpeg" class="img recipe-img" alt="" />
          <h5>Pancit Canton</h5>
          <p>Prep : 15min | Cook : 5min</p>
        </a>
        <!-- end of single recipe -->
        <!-- single recipe -->
        <a href="beefsteak.aspx" class="recipe">
          <img src="./assets/recipes/recipe-2.jpeg" class="img recipe-img" alt="" />
          <h5>Beef Steak</h5>
          <p>Prep : 15min | Cook : 5min</p>
        </a>
        <!-- end of single recipe -->
        <!-- single recipe -->
        <a href="porksinigang.aspx" class="recipe">
          <img src="./assets/recipes/recipe-3.jpeg" class="img recipe-img" alt="" />
          <h5>Pork Sinigang</h5>
          <p>Prep : 15min | Cook : 5min</p>
        </a>
        <!-- end of single recipe -->
        <!-- single recipe -->
        <a href="adobo.aspx" class="recipe">
          <img src="./assets/recipes/recipe-4.jpeg" class="img recipe-img" alt="" />
          <h5>Chicken Adobo</h5>
          <p>Prep : 15min | Cook : 5min</p>
        </a>
        <!-- end of single recipe -->
            <div id="recipesList" class="recipes-list">
            <!-- Recipe links will be dynamically generated here -->
        </div>
      </div>
      <!-- end of recipes list -->
    </section>
  </main>   
  <!-- search bar -->
  <div class="search-bar" style="position: absolute; top: 41px; left: 1068px; width: 400px; height: 57px; background-color: #f2f2f2;">
    <input type="text" placeholder="Search..." style="width: 100%; height: 100%; border: none; padding: 0 10px; box-sizing: border-box;" oninput="filterRecipes(this.value)">
  </div>    
  <!-- end of search bar -->

  <!-- Function for search bar -->
  <script>
    function filterRecipes(searchText) {
      const recipes = document.querySelectorAll('.recipe');
      searchText = searchText.toLowerCase();
      
      recipes.forEach(recipe => {
        const recipeName = recipe.querySelector('h5').textContent.toLowerCase();
        if (recipeName.includes(searchText)) {
          recipe.style.display = 'block';
        } else {
          recipe.style.display = 'none';
        }
      });
    }

    /*Function for recipe tags categories*/
    function filterByCategory(category) {
      const recipes = document.querySelectorAll('.recipe');
      
      recipes.forEach(recipe => {
        const recipeName = recipe.querySelector('h5').textContent.toLowerCase();
        if (category === 'all' || 
            (category === 'snack' && recipeName.includes('pancit canton')) ||
            (category === 'beef' && recipeName.includes('beef steak')) ||
            (category === 'chicken' && recipeName.includes('chicken adobo')) ||
            (category === 'pork' && recipeName.includes('pork sinigang'))) {
          recipe.style.display = 'block';
        } else {
          recipe.style.display = 'none';
        }
      });
    }
  </script>

  <script src="./js/app.js"></script>
</body>
</html>