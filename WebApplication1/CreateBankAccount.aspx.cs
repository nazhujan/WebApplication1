using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateBankAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Session["name"] = TextBox2.Text;
            Session["gender"] = DropDownList2.SelectedValue;
            Session["age"] = TextBox3.Text;

            HttpCookie cookie = new HttpCookie("Detailinfo");
            cookie["name"] = TextBox2.Text;
            cookie["gender"] = DropDownList1.SelectedValue;
            cookie["age"] = TextBox3.Text;
            cookie["phoneNo"] = TextBox5.Text;
            cookie["address"] = TextBox4.Text;

            Response.Cookies.Add(cookie);

            Response.Redirect("Viewdetailinfo.aspx");
        }
    }
}