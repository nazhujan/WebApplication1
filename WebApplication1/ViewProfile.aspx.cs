using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cook = Request.Cookies["Detailinfo"];
        TextBox1.Text = cook["name"];
        TextBox2.Text = cook["age"];
        TextBox3.Text = cook["phoneNo"];
        TextBox4.Text = cook["address"];

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie newCook = Request.Cookies["viewProfile"];
        newCook["name"] = TextBox1.Text;
        newCook["age"] = TextBox2.Text;
        newCook["phoneNo"] = TextBox3.Text;
        newCook["address"] = TextBox4.Text;
    }
}