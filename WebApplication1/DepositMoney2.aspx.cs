using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DepositMoney2 : System.Web.UI.Page
{
       
       
     Double balance = 400.00;                           
    protected void Page_Load(object sender, EventArgs e)
    {
        
            TextBox1.Text = balance.ToString();
            
        
    }

        protected void Done_Click(object sender, EventArgs e)
        {
            Double curr = balance + Double.Parse(TextBox2.Text);
            TextBox3.Text = curr.ToString();
            Session["balance"] = curr.ToString();
        }

}
