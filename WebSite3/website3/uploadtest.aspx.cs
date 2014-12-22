using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uploadtest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string strfile = FileUpload1.FileName;
        string pathname = System.Web.HttpContext.Current.Server.MapPath("img");
        FileUpload1.SaveAs(pathname + "\\" + strfile);
        string sql = string.Format("insert into t_Menu (menuname,money) values ('{0}',11) ",strfile);
        SqlHelp.ExecuteNonQuery(sql);
    }
}