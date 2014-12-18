using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.DataBind();
    }
    private void DataBind()
    {
        string sql = "select * from t_User";
        DataSet ds = SqlHelp.Query(sql);
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
    }
}