using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class edit : BasePage
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            int id =Int32.Parse(Request.QueryString["id"]);
            
            if (!string.IsNullOrEmpty(id.ToString()))
            {
                string sql = string.Format("select * from t_User where id={0}", id);
                DataSet ds = SqlHelp.Query(sql);
                DataTable dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {
                    this.txtUserName.Text = dt.Rows[0]["username"].ToString();
                    this.txtUserPwd.Text = dt.Rows[0]["userpass"].ToString();
                    this.txtUserAge.Text = dt.Rows[0]["age"].ToString();
                }
            }

        }
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        int id =Int32.Parse(Request.QueryString["id"]);
        string sql = string.Format("update t_User set username='{0}',userpass='{1}',age={2} where id={3}", txtUserName.Text,                                         txtUserPwd.Text,txtUserAge.Text,id);
        if (SqlHelp.ExecuteNonQuery(sql) > 0)
        {
            MsgBoxOK("修改成功！", "userlist.aspx");
        }
        else
        {
            MsgBoxError("修改失败！");
           
        }
    }
}