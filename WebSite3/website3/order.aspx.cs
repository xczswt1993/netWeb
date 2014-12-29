using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
            this.DataBind();
    }
    private void DataBind()
    {
        string sql = "select * from t_Menu";
        DataSet ds = SqlHelp.Query(sql);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
    }


    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName.Equals("caiID"))
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect(string.Format("pay.aspx?caiID={0}",id));
        }
    }
}