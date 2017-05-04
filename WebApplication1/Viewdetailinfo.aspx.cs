using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Viewdetailinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //HttpCookie cook = Request.Cookies["Detailinfo"];

            if (Session["name"] != null)
            {
                TextBox1.Text = Session["name"].ToString();
                TextBox2.Text = Session["gender"].ToString();
                TextBox3.Text = Session["age"].ToString();
            }
            else
                Response.Redirect("Create Bank Account.aspx");
        }
    }
}