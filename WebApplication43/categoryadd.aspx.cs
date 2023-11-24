using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication43
{
    public partial class categoryadd : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/php/" + fuphoto.FileName;
            fuphoto.SaveAs(MapPath(p));
            string a = "insert into category_table values('" + txtname.Text + "','" + p + "','" + txtdescrpition.Text + "','" + txtstatus.Text + "')";
            int b = ob.fn_nonquery(a);
            if (b == 1)
            {
                Label5.Visible = true;
                Label5.Text = "successfully category added";
            }
        }
    }
}