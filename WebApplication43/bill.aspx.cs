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
    public partial class bill : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string a = "select product_table.pro_name,product_table.pro_image,product_table.pro_price,order_table.cart_quantity from  order_table join product_table  on order_table.pro_id=product_table.pro_id join log_table on order_table.reg_id=log_table.reg_id where order_status='active'";
            DataSet ds = ob.fn_dataset(a);
            DataList1.DataSource = ds;
            DataList1.DataBind();

            string b = "select total_amount from bill_tab where bill_id=" + Session["billid"] + "";
            string on = ob.fn_scalar(b);
            lbltotalprice.Text = on;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string ins = "insert into details_table values(" + Session["uid"] + ",'" + txtname.Text + "'," + txtphone.Text + ",'" + txtaddress.Text + "','" + txtmail.Text + "')";
            int ok = ob.fn_nonquery(ins);
            if(ok==1)
            {
                Response.Redirect("payment.aspx");
            }
        }
    }
}