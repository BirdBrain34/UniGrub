<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pancit.aspx.cs" Inherits="UniGrub.pancit" %> 

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./css/pancit.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap"/>
  </head>
  <body>
        <form id="form1" runat="server">
    <div class="recipe-4">
      <div class="recipe-4-child"></div>
      <div class="pancit-canton-it">
        Pancit Canton it is a type of Lo Mein or tossed noodles known as flour
        sticks. This dish is often served during birthdays and special occasions
        to symbolize long life. It is prepared using a variety of ingredients,
        which makes it look festive. There is also a combination of different
        flavors that make it delicious.
      </div>
      <img class="image-22-icon" alt="" src="./assets/public/image-22@2x.png" />

      <div class="canton">Canton</div>
      <div class="pancit">Pancit</div>
      <div class="ingredients-250-grams-flour-s-container">
        <p class="ingredients3">
          <span class="span">Ingredients</span>
        </p>
        <ul class="grams-flour-stick-noodles-4-ou">
    <li id="liIngredient1" runat="server"><span>250 grams flour stick noodles </span></li>
    <li id="liIngredient2" runat="server"><span>4 ounces pork thinly sliced </span></li>
    <li id="liIngredient3" runat="server"><span>1 piece Chinese sausage sliced </span></li>
    <li id="liIngredient4" runat="server"><span>1 piece onion sliced </span></li>
    <li id="liIngredient5" runat="server"><span>1 teaspoon garlic minced </span></li>
    <li id="liIngredient6" runat="server"><span>1 8 to 10 pieces shrimp shell removed</span></li>
    <li id="liIngredient7" runat="server"><span>10 to 12 pieces snap peas </span></li>
    <li id="liIngredient8" runat="server"><span>3/4 cup carrot julienne </span></li>
    <li id="liIngredient9" runat="server"><span>1 piece cabbage small, chopped </span></li>
    <li id="liIngredient10" runat="server"><span>1 1/2 cups chicken broth </span></li>
    <li id="liIngredient11" runat="server"><span>1 tablespoon oyster sauce optional </span></li>
    <li id="liIngredient12" runat="server"><span>3 tablespoons soy sauce </span></li>
    <li id="liIngredient13" runat="server"><span>3/4 cup water </span></li>
    <li id="liIngredient14" runat="server"><span>1/2 cup flat leaf parsley chopped </span></li>
    <li id="liIngredient15" runat="server"><span>3 tablespoons cooking oil </span></li>
    <li><span>Salt and pepper to taste </span></li>
</ul>

      </div>
      <div class="instructions-place-2-container">
        <p class="instructions2">Instructions</p>
        <ul class="grams-flour-stick-noodles-4-ou">
          <li class="grams-flour-stick-noodles">
            <span
              >Place 2 cups of ice and 3 cups water in a large bowl. Set
              aside.</span
            >
          </li>
          <li class="grams-flour-stick-noodles">
            <span>Boil 6 cups of water in a cooking pot.</span>
          </li>
          <li class="grams-flour-stick-noodles">
            <span
              >Once the water starts to boil, blanch the snap peas, carrots, and
              cabbage for 35 to 50 seconds. Quickly remove the vegetables and
              immerse in bowl with ice cold water. Drain the water after 2
              minutes and set aside.</span
            >
          </li>
          <li class="grams-flour-stick-noodles">
            <span
              >Heat a large wok or cooking pot and pour-in the cooking
              oil.</span
            >
          </li>
          <li class="grams-flour-stick-noodles">
            <span>Saute the onion and garlic.</span>
          </li>
          <li class="grams-flour-stick-noodles">
            <span
              >Add the pork and sausage slices and continue to cook for 2
              minutes.</span
            >
          </li>
          <li class="grams-flour-stick-noodles">
            <span>Add-in soy sauce and oyster sauce. Stir.</span>
          </li>
          <li class="grams-flour-stick-noodles">
            <span
              >Pour-in chicken broth and water. Add salt and pepper. Let boil.
              continue to cook for 5 to 10 minutes.</span
            >
          </li>
          <li class="grams-flour-stick-noodles">
            <span
              >Put-in the shrimp and parsley. Cook for 3 minutes. Add more water
              if needed.</span
            >
          </li>
          <li class="grams-flour-stick-noodles">
            <span
              >Put-in the flour noodles. Gently toss until the noodles absorb
              the liquid.</span
            >
          </li>
          <li class="grams-flour-stick-noodles">
            <span
              >Add-in the blanched vegetables. Toss and cook for 1 to 2
              minutes.</span
            >
          </li>
          <li class="grams-flour-stick-noodles">
            <span>Transfer to a serving plate. Serve.</span>
          </li>
          <li>
            <span>Share and enjoy!</span>
          </li>
        </ul>
      </div>
      <img class="image-23-icon" alt="" src="./assets/public/image-23@2x.png" />

      <img class="image-25-icon" alt="" src="./assets/public/image-25@2x.png" />

      <img class="image-24-icon" alt="" src="./assets/public/image-24@2x.png" />

      <img class="image-26-icon" alt="" src="./assets/public/image-26@2x.png" />

      <img class="unigrub-4-icon" alt="" src="./assets/public/unigrub-3@2x.png" />
    </div>
        <div> Select your price of budget:      
      </div>
    <asp:RadioButton ID="RadioButton1" runat="server" Text="Cheap" GroupName="PancitBudget" AutoPostBack="true" OnCheckedChanged="RadioButton_CheckedChanged" />
    <asp:RadioButton ID="RadioButton2" runat="server" Text="Regular" GroupName="PancitBudget" AutoPostBack="true" OnCheckedChanged="RadioButton_CheckedChanged" />
    <asp:RadioButton ID="RadioButton3" runat="server" Text="Expensive" GroupName="PancitBudget" AutoPostBack="true" OnCheckedChanged="RadioButton_CheckedChanged"/>

        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Selected Budget" />
        </p>
        </form>
      <!-- Embedding YouTube Video at the bottom of the page -->
<div class="video-container">
  <iframe width="1580" height="975" src="https://www.youtube.com/embed/7oUYagLDNx0?autoplay=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
  </body>
</html>

