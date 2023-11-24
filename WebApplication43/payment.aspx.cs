using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication43
{
    public partial class payment : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        public int ta;
        public string ok;
        protected void Page_Load(object sender, EventArgs e)
        {

            string b = "select total_amount from bill_tab where bill_id=" + Session["billid"] + "";
            string on = ob.fn_scalar(b);
            lblamount.Text = on;
            ta = Convert.ToInt32(on);

            string a = "select * from details_table where reg_id=" + Session["uid"] + "";
            SqlDataReader dr = ob.fn_reader(a);
            while(dr.Read ())
            {
                lblname.Text = dr["full_name"].ToString();
                lbladdress.Text = dr["mobile_num"].ToString();
                lblphone.Text = dr["address"].ToString();
                lblmail.Text = dr["email"].ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            balanceService.ServiceClient ob1 = new balanceService.ServiceClient();
            string bal = ob1.bal_check(txtacno.Text,ddl.SelectedItem .Text );
            int bl = Convert.ToInt32(bal);
            if(bl>=ta)
            {
                int uk = bl - ta;
                string u = Convert.ToString(uk);
                balanceService.ServiceClient ob2 = new balanceService.ServiceClient();
                int upda = ob2.bal_update(txtacno.Text, ddl.SelectedItem.Text, u);
                Label5.Visible = true;
                    Label5.Text = "payment successfull!";
                ok = Label5.Text;
            }
            else
            {
                Label5.Visible = true;
                Label5.Text = "payment insufficient";
            }
            if (ok!="")
            {

                string orup = "update order_table set order_status='paid' where reg_id=" + Session["uid"] + " and order_status='active'";
                ob.fn_nonquery(orup);

                string cou = "select count(pro_id) from order_table where reg_id=" + Session["uid"] + " and order_status='paid'";
                string vs = ob.fn_scalar(cou);
                int s = Convert.ToInt32(vs);

                for(int i=1;i<=s;i++)
                {
                    string h = "select pro_id from order_table where reg_id=" + Session["uid"] + " and order_status='paid'";
                    string get = ob.fn_scalar(h);
                    int v = Convert.ToInt32(get);
                    if (get != null)
                    {
                        string val = "select pro_stock from product_table where pro_id=" + v + "";
                        string b = ob.fn_scalar(val);
                        int ed = Convert.ToInt32(b);
                        string qu = "select cart_quantity from order_table where pro_id=" + v + " and order_status='paid'";
                        string a = ob.fn_scalar(qu);
                        int de = Convert.ToInt32(a);
                        if(ed>0)
                        {
                            int c = ed - de;
                            if(c>0)
                            {
                                string prostock = "update product_table set pro_stock=" + c + " where pro_id=" + v + "";
                                ob.fn_nonquery(prostock);
                            }
                            else
                            {
                                string unavaila = "update product_table set pro_status='unavailable' where pro_id=" + v + "'";
                                ob.fn_nonquery(unavaila);
                            }
                        }
                        else
                        {
                            string unavail = "update product_table set pro_status='unavailable' where pro_id=" + v + "'";
                            ob.fn_nonquery(unavail);
                        }

                        string pa = "update order_table set order_status='admin processing' where pro_id=" + v + " and order_status='paid'";
                        ob.fn_nonquery(pa);

                       
                    }




                }



             }

        }
    }
}