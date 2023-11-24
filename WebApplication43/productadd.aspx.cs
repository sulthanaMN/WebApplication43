using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication43
{
    public partial class productadd : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }



       


        protected void Button1_Click(object sender, EventArgs e)
        {
            string b = "select cat_id from category_table";
            DataSet id = ob.fn_dataset(b);
            DropDownList1.DataTextField = "cat_name";
            DropDownList1.DataValueField = "cat_id";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select Category--");

            string p = "~/php/" + FileUpload1 .FileName;
            FileUpload1 .SaveAs(MapPath(p));
            string a = "insert into product_table values("+DropDownList1 .SelectedItem .Value +",'" + txtname.Text + "','" + p + "'," + txtprice.Text + ",'" + txtdescription.Text + "','available', 10)";
            int c = ob.fn_nonquery(a);
            if(c==1)
            {
                Label9.Visible = true;
                Label9.Text = "successfully added product";
            }
        }
    }
}