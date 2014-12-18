using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /*
     * 登录按钮的执行动作
     * 实现查询数据库
     * 调用SqlHelp类executeScalar方法
     */
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        string sql = string.Format("select userpwd from t_user where username='{0}'", txtUserName.Text);



        string result = SqlHelp.ExecuteScalar(sql);



        if (result == txtUserPwd.Text)
        {

            Response.Redirect("default.aspx");
        }
        else
        {
            lbmessage.Text = "登录失败！";
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("reg.aspx");
    }
   
}