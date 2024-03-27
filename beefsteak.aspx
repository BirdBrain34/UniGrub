<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="beefsteak.aspx.cs" Inherits="UniGrub.beefsteak" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />

    <link rel="stylesheet" href="./css/beefsteak.css" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap"
    />
  </head>
  <body>
          <form id="form1" runat="server">
    <div class="recipe-1">
      <div class="recipe-1-child"></div>
      <img class="image-27-icon" alt="" src="./assets/public/image-27@2x.png" />

      <div class="beef-steak">Beef Steak</div>
      <div class="a-beefsteak-often-called-just-wrapper">
        <div class="a-beefsteak-often-called">
          A beefsteak, often called just steak, is a flat cut of beef with
          parallel faces, usually cut perpendicular to the muscle fibers. Beef
          steaks are usually grilled, pan-fried, or broiled. The more tender
          cuts from the loin and rib are cooked quickly, using dry heat, and
          served whole. Less tender cuts from the chuck or round are cooked with
          moist heat or are mechanically tenderized
        </div>
      </div>
      <div class="ingredients-parent">
        <div class="ingredients">Ingredients</div>
        <div class="pounds-new-york-strip-container">
          <ul class="pounds-new-york-strip-steak-s">
    <li class="pounds-new-york-strip" id="liIngredient1" runat="server"><span>4 pounds New York strip steak, sliced thin</span></li>
    <li class="pounds-new-york-strip" id="liIngredient2" runat="server"><span>1 lemon, juiced</span></li>
    <li class="pounds-new-york-strip" id="liIngredient3" runat="server"><span>3 tablespoons soy sauce</span></li>
    <li class="pounds-new-york-strip" id="liIngredient4" runat="server"><span>1 teaspoon white sugar</span></li>
    <li class="pounds-new-york-strip" id="liIngredient5" runat="server"><span>salt and pepper to taste</span></li>
    <li class="pounds-new-york-strip" id="liIngredient6" runat="server"><span>1 tablespoon cornstarch</span></li>
    <li class="pounds-new-york-strip" id="liIngredient7" runat="server"><span>¼ cup vegetable oil</span></li>
    <li class="pounds-new-york-strip" id="liIngredient8" runat="server"><span>3 tablespoons olive oil</span></li>
    <li class="pounds-new-york-strip" id="liIngredient9" runat="server"><span>1 onion, chopped</span></li>
    <li id="liIngredient10" runat="server"><span>2 cloves garlic, chopped</span></li>
  </ul>
        </div>
      </div>
      <div class="procedure-parent">
        <div class="procedure">Procedure</div>
        <div class="step-1">Step 1:</div>
        <div class="step-2">Step 2:</div>
        <div class="place-sliced-beef-container">
          <p class="place-sliced-beef">
            Place sliced beef in a large bowl. Whisk together lemon juice, soy
            sauce, sugar, salt, and pepper in a small bowl; pour over beef and
            toss to coat. Stir in cornstarch. Cover and refrigerate for 1 hour
            to overnight.
          </p>
        </div>
        <div class="heat-vegetable-oil-container">
          <p class="place-sliced-beef">
            Heat vegetable oil in a large skillet over medium heat.
          </p>
        </div>
        <div class="step-3">Step 3:</div>
        <div class="remove-beef-slices-container">
          <p class="place-sliced-beef">
            Remove beef slices from marinade, shaking to remove any excess
            liquid. Discard marinade.
          </p>
        </div>
        <div class="step-4">Step 4:</div>
        <div class="working-in-batches-container">
          <p class="place-sliced-beef">
            Working in batches, fry beef slices in hot oil until they start to
            firm and are reddish-pink and juicy in the center, 2 to 4 minutes
            per side. Transfer beef slices to a serving platter.
          </p>
        </div>
        <div class="step-5">Step 5:</div>
        <div class="heat-olive-oil">
          Heat olive oil in a small skillet over medium heat. Cook and stir
          onion and garlic in hot oil until onion is golden brown, 5 to 7
          minutes; spoon over beef slices.
        </div>
      </div>
      <div class="rectangle-parent">
        <div class="group-child"></div>
        <div class="prep-time-15-container">
          <ul class="prep-time-15-minutes-cook-tim">
            <li class="pounds-new-york-strip">Prep Time: 15 minutes</li>
            <li class="pounds-new-york-strip">Cook TIme: 5 minutes</li>
          </ul>
        </div>
      </div>
      <img class="image-28-icon" alt="" src="./assets/public/image-28@2x.png" />

      <img class="unigrub-1-icon" alt="" src="./assets/public/unigrub-1@2x.png" />
    </div>
                        <div> Select your price of budget:      
  </div>
<asp:RadioButton ID="RadioButton1" runat="server" Text="Cheap" GroupName="BeefSteakBudget" AutoPostBack="true" OnCheckedChanged="RadioButton_CheckedChanged" />
<asp:RadioButton ID="RadioButton2" runat="server" Text="Regular" GroupName="BeefSteakBudget" AutoPostBack="true" OnCheckedChanged="RadioButton_CheckedChanged" />
<asp:RadioButton ID="RadioButton3" runat="server" Text="Expensive" GroupName="BeefSteakBudget" AutoPostBack="true" OnCheckedChanged="RadioButton_CheckedChanged"/>

    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Selected Budget" />
    </p>
          </form>
      <!-- Embedding YouTube Video at the bottom of the page -->
<div class="video-container">
  <iframe width="1580" height="975" src="https://www.youtube.com/embed/BWo6MmW91Z0?autoplay=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
  </body>
</html>

