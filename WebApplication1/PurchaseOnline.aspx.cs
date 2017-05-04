using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PurchaseOnline : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Double price = Double.Parse(TextBox2.Text);
        int qtty = Int32.Parse(TextBox3.Text);
        Double total = price * qtty;
        Label1.Text = total.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Text = Session["balance3"].ToString();
        Label3.Text = Label1.Text;
        Double bal = Double.Parse(Label2.Text) - Double.Parse(Label3.Text);
        Label4.Text = bal.ToString();
    }
}