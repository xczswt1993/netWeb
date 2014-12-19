using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class menu : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.DataBind();
    }
    private void DataBind()
    {
        string sql = "select * from t_Menu";
        DataSet ds = SqlHelp.Query(sql);
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        Response.Redirect("menuadd.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("upd"))
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect(string.Format("menuEdit.aspx?id={0}", id));
        }
        if (e.CommandName.Equals("del"))
        {
            int id = Int32.Parse(e.CommandArgument.ToString());

            string sql = string.Format("delete from t_Menu where id={0}", id);
            if (SqlHelp.ExecuteNonQuery(sql) > 0)
            {
                MsgBoxOK("删除成功！");
                this.DataBind();
            }
        }
    }
}