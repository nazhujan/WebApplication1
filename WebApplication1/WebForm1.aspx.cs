using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            labelGreeting.Text = "Good Morning " + TextBox1.Text  ;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int age = DateTime.Now.Year - int.Parse(DropDownList1.Text); 
            labelYear.Text = age.ToString();
            double BMI = double.Parse(TextBox3.Text) / (double.Parse(TextBox4.Text) * double.Parse(TextBox4.Text));
            labelBMI.Text = BMI.ToString();
            labelRace.Text = RadioButtonList1.Text;
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["name"] = TextBox1.Text;
            Response.Redirect("WebForm2.aspx");
        }
    }
}