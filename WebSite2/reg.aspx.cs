using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /*
     * btnReg动作执行
     * 实现注册功能
     * 调用SqlHelp类方法executeNonQuery()
     */
    protected void btnReg_Click(object sender, EventArgs e)
    {
        
        string sql = string.Format("insert into t_user (username,userpwd,useremail) values('{0}','{1}','{2}')", txtUserName.Text, txtUserPwd.Text, txtUserEmail.Text);

            int result;
            result=SqlHelp.ExecuteNonQuery(sql);

            if (result > 0)
            {
                lbmessage.Text = "注册成功！";
            }
            else
            {
                lbmessage.Text = "注册失败！";
            }
        }
 

    
}