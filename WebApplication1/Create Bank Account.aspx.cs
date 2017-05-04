using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class Create_Bank_Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //save all into table customer
                ////1. create connection
                string myConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(myConString);

                //// 2. prepare a sql command for that connection
                string stmt = "insert into custAccount (name,gender,age,accountType)";
                stmt += "values (@name,@gender,@age,@accounttype)";

                //// 3. Prepare sql insert statement
                SqlCommand cmd = new SqlCommand("uspInsertCustomer", conn);

                //// 4. execute the sql statement 


                try
                {
                    conn.Open();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@name", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@age", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@accountType", DropDownList2.SelectedValue);
                    int result = cmd.ExecuteNonQuery();
                    Label7.Text = "Successfully open a connection. Server version is : " + conn.ServerVersion.ToString();

                }
                catch (Exception ex)
                {

                }
                finally
                {
                    conn.Close();
                }



                /*session state implimentation*/

                //Session["name"] = Tex
                //    Session["gender"] = DropDownList1.SelectedValue;
                //    Session["age"] = TextBox3.Text;

                //    Response.Redirect("Viewdetailinfo.aspx");

                //Cookies

                //HttpCookie cookie = new HttpCookie("Detailinfo");
                //cookie["name"] = TextBox2.Text;
                //cookie["gender"] = DropDownList1.SelectedValue;
                //cookie["age"] = TextBox3.Text;

                //Response.Cookies.Add(cookie);
                //Response.Redirect("Viewdetailinfo.aspx");

                //Response.Redirect("Viewdetailinfo.aspx?name="+ TextBox2.Text +"&gender=" + DropDownList1.SelectedValue+"&age="+TextBox3.Text);
            }

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //bool flag;
            //flag = (args.Value.Length > 10);
            //args.IsValid =System;
        }
    }
}