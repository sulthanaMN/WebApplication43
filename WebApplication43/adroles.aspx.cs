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
    public partial class adroles : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                grid_bind();
            }
        }

        public void grid_bind()
        {
            string a = "select * from order_table ";
            DataSet b = ob.fn_dataset(a);
            GridView1.DataSource = b;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //GridView1.EditIndex = e.NewEditIndex;
            //grid_bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //GridView1.EditIndex = -1;
            //grid_bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //int i = e.RowIndex;
            //int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            //TextBox txtstatus = (TextBox)GridView1.Rows[i].Cells[7].Controls[0];

            //string up = "update order_table set order_status='" + txtstatus.Text + "' where order_id=" + id + "";
            //int de = ob.fn_nonquery(up);
            //GridView1.EditIndex = -1;
            //grid_bind();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string del = "update order_table set order_status='delivered' where order_id=" + id + "";
            ob.fn_nonquery(del);
            grid_bind();
        }
    }
}