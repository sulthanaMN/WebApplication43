using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication43
{
    public partial class admin_reg : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "select max(ad_id) from admin_table";
            string b = ob.fn_scalar(s);
            int reg_id = 0;
            if (b == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(b);
                reg_id = newregid + 1;
            }
            string q = "insert into admin_table values(" + reg_id + ",'"+txtadname .Text +"','"+txtadmail .Text +"',"+txtadphone .Text +")";
            int f = ob.fn_nonquery(q);
            string g = "insert into log_table values(" + reg_id + ",'" + txtaduna.Text + "','" + txtadpw .Text  + "','Admin','Active')";
            int d = ob.fn_nonquery(g);
            if(f==1)
            {
                Label2.Visible = true;
                Label2.Text = "Registration successfully completed";
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "insufficient to register";
            }
        }
    }
}