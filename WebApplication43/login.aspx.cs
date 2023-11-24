using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication43
{
    public partial class login : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlog_Click(object sender, EventArgs e)
        {
            string h = "select count(reg_id) from log_table where username ='" + txtloguna.Text + "' and password='" + txtlogpw.Text + "'";
            string b = ob.fn_scalar(h);
            if (b == "1")
            {
                string c = "select reg_id from log_table where username ='" + txtloguna.Text + "' and password='" + txtlogpw.Text + "'";
                string d = ob.fn_scalar(c);
                Session["uid"] = d;
                string s = "select log_type from log_table where username ='" + txtloguna.Text + "' and password='" + txtlogpw.Text + "'";
                string n = ob.fn_scalar(s);
                if(n=="User")
                {
                    Response.Redirect("categoryview.aspx");
                }
                else
                {
                    Response.Redirect("adroles.aspx");
                }
            }
            else
                Label2.Visible = true;
                Label2.Text = "invalid username or password";
        }
    }
}