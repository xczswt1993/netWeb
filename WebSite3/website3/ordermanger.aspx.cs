using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ordermanger :BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.DataBind();
    }
    private void DataBind()
    {
        string sql = "select * from t_Order";
        DataSet ds = SqlHelp.Query(sql);
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
    }
  


    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("yes"))
        {
            string id = e.CommandArgument.ToString();
            string sql = string.Format("update t_Order set status='已签收' where id={0}", Int32.Parse(id));
            SqlHelp.ExecuteNonQuery(sql);
            this.Page_Load(sender,e);
        }
    }
}