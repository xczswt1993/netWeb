using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class menuEdit : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            int id = Int32.Parse(Request.QueryString["id"]);

            if (!string.IsNullOrEmpty(id.ToString()))
            {
                string sql = string.Format("select * from t_Menu where id={0}", id);
                DataSet ds = SqlHelp.Query(sql);
                DataTable dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {
                    this.txtCai.Text = dt.Rows[0]["menuname"].ToString();
                    this.txtMoney.Text = dt.Rows[0]["money"].ToString();
                    
                }
            }

        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        int id = Int32.Parse(Request.QueryString["id"]);
        string sql = string.Format("update t_Menu set menuname='{0}',money={1} where id={2}", txtCai.Text, txtMoney.Text, id);
        if (SqlHelp.ExecuteNonQuery(sql) > 0)
        {
            MsgBoxOK("修改成功！", "menu.aspx");
        }
        else
        {
            MsgBoxError("修改失败！");

        }
    }
}