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
    public partial class categoryview : System.Web.UI.Page
    {
        Class1 ob = new Class1();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if(!IsPostBack )
            {
                datalist_bind();
            }
           
            
        }
        public void datalist_bind()
        {
            string a = "select * from category_table";
            DataSet dr = ob.fn_dataset(a);
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {

            int id = Convert.ToInt32(e.CommandArgument);
            Session["catid"] = id;
            Response.Redirect("productview.aspx");
        }

       
       

        
    }
}