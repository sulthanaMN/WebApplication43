using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication43
{
    public partial class particularproductview : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = "select pro_name,pro_image,pro_price,pro_description from product_table where pro_id=" + Session["proid"] + "";
            SqlDataReader da = ob.fn_reader(a);
            while(da.Read ())
            {
                Image1.ImageUrl = da["pro_image"].ToString();
                lblname.Text = da["pro_name"].ToString();
                lblprice.Text = da["pro_price"].ToString();
                lbldescription.Text = da["pro_description"].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("categoryview.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string b = "select max(cart_id) from cart_table ";
            string n = ob.fn_scalar(b);
            int car_id = 0;
            if(n=="")
            {
                car_id = 1;
            }
            else
            {
                int newcarid = Convert.ToInt32(n);
                car_id = newcarid + 1;
            }
            int t = Convert.ToInt32 (txtquantity.Text)* Convert.ToInt32(lblprice.Text);
            int r = Convert.ToInt32(Session["uid"]);
            int g = Convert.ToInt32(Session["proid"]);
            
            string a = "insert into cart_table values("+car_id +","+g+","+r+","+txtquantity .Text +","+t+")";
            int f = ob.fn_nonquery(a);
            if(f==1)
            {
                Label3.Visible = true;
                Label3.Text = "cart is added";
            }
        }
    }
}