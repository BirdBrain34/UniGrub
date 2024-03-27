using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UniGrub
{
    public partial class beefsteak : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                liIngredient1.Visible = true;
                liIngredient2.Visible = true;
                liIngredient3.Visible = true;
                liIngredient4.Visible = false;
                liIngredient5.Visible = false;
                liIngredient6.Visible = false;
                liIngredient7.Visible = false;
                liIngredient8.Visible = false;
                liIngredient9.Visible = false;
                liIngredient10.Visible = false;


            }

            else if (RadioButton2.Checked)
            {
                liIngredient1.Visible = true;
                liIngredient2.Visible = true;
                liIngredient3.Visible = true;
                liIngredient4.Visible = true;
                liIngredient5.Visible = true;
                liIngredient6.Visible = false;
                liIngredient7.Visible = false;
                liIngredient8.Visible = false;
                liIngredient9.Visible = false;
                liIngredient10.Visible = false;


            }
            else if (RadioButton3.Checked)
            {
                liIngredient1.Visible = true;
                liIngredient2.Visible = true;
                liIngredient3.Visible = true;
                liIngredient4.Visible = true;
                liIngredient5.Visible = true;
                liIngredient6.Visible = true;
                liIngredient7.Visible = true;
                liIngredient8.Visible = true;
                liIngredient9.Visible = true;
                liIngredient10.Visible = true;

            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (RadioButton1.Checked == true)
            {
                Response.Write(RadioButton1.Text);
            }
        }

    }
}

