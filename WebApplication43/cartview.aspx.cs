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
    public partial class cartview : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid_bind();
            }
            Label8.Text = DateTime.Now.ToShortDateString();
        }
        public void grid_bind()
        {
            string s = "select cart_table.cart_id,product_table.pro_name,product_table.pro_image ,cart_table.cart_quantity,cart_table.cart_item_total_price from product_table join cart_table on product_table.pro_id=cart_table.pro_id";
            DataSet ds = ob.fn_dataset(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from cart_table where cart_id=" + id + "";
            int g = ob.fn_nonquery(del);
            grid_bind();
                
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid_bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid_bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {



            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);

            string a = "select cart_quantity from cart_table where cart_id=" + id + "";
            string cq = ob.fn_scalar(a);
            string b = "select cart_item_total_price from cart_table where cart_id=" + id + "";
            string ip = ob.fn_scalar(b);
            int iv = Convert.ToInt32(ip) / Convert.ToInt32(cq);

            TextBox txtqty = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];


            int s = Convert.ToInt32(txtqty.Text) * iv;
            string v = "update cart_table set cart_quantity=" + txtqty.Text + ",cart_item_total_price=" + s + " where cart_id=" + id + "";
            int y = ob.fn_nonquery(v);
            GridView1.EditIndex = -1;
            grid_bind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int sum = 0;
            string mid = "select max(cart_id) from cart_table";
            string gid = ob.fn_scalar(mid);
            int geid = Convert.ToInt32(gid);
            for (int i = 1; i <= geid; i++)
            {
                int curid = i;
                string wi = "select * from cart_table where cart_id=" + curid + "";
                SqlDataReader dr = ob.fn_reader(wi);
                while (dr.Read())
                {
                    Label2.Text = dr["pro_id"].ToString();
                    Label3.Text = dr["reg_id"].ToString();
                    Label4.Text = dr["cart_quantity"].ToString();
                    Label5.Text = dr["cart_item_total_price"].ToString();
                }
                int pid = Convert.ToInt32(Label2.Text);
                int rid = Convert.ToInt32(Label3.Text);
                int cq = Convert.ToInt32(Label4.Text);
                int tp = Convert.ToInt32(Label5.Text);

                sum = sum + tp;


                string s = "select max(order_id) from order_table";
                string b = ob.fn_scalar(s);
                int ord_id = 0;
                if (b == "")
                {
                    ord_id = 1;
                }
                else
                {
                    int newregid = Convert.ToInt32(b);
                    ord_id = newregid + 1;
                }
                string oi = "insert into order_table values(" + ord_id + "," + curid + "," + pid + "," + rid + "," + cq + "," + tp + ",'active')";
                  int ins = ob.fn_nonquery(oi);



                if (ins != 0)
                {
                    string del = "delete from cart_table where cart_id=" + curid + "";
                    int de = ob.fn_nonquery(del);


                }

            }
            string se = "select max(bill_id) from bill_tab";
            string bi = ob.fn_scalar(se);
            int bills_id = 0;
            if (bi == "")
            {
                bills_id = 1000;
            }
            else
            {
                int newregid = Convert.ToInt32(bi);
                bills_id = newregid + 1;
            }
            Session["billid"] = bills_id;
            string newdt = Convert.ToDateTime(Label8.Text).ToString("yyyy-MM-dd");
           string hi = "insert into bill_tab values(" + bills_id + "," + Session["uid"] + "," + sum + ",'"+newdt +"','processing')";
           int z = ob.fn_nonquery(hi);

            Response.Redirect("bill.aspx");
        }



           
        }
    }