using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TransferMoney : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["balance2"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        Label2.Text = "Succesfully transfer to " + TextBox2.Text;
        Label3.Text = "Balance : ";
        Double curr2 = Double.Parse(Label1.Text) - Double.Parse(TextBox3.Text);
        Label4.Text = curr2.ToString();
        Session["balance3"] = curr2.ToString();
    }
}