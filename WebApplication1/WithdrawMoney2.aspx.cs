using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;


public partial class WithdrawMoney2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["balance"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Double curr = Double.Parse(Label1.Text) - Double.Parse(TextBox1.Text);
        Label2.Text = curr.ToString();
        Session["balance2"] = curr.ToString();
    }
}