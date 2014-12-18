﻿using System;
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
        
        string sql = string.Format("insert into t_User (username,userpass,age) values( '{0}','{1}','{2}')", txtUserName.Text, txtUserPwd.Text, txtUserAge.Text);

        try
        {
            int result;
            result = SqlHelp.ExecuteNonQuery(sql);

            if (result > 0)
            {
                MsgBoxOK("注册成功！");
            }
            else
            {
                MsgBoxError("注册失败！");
            }
        }
        catch (Exception ex)
        {

            MsgBoxError("注册失败！");
        }
       }
    private void MsgBoxOK(string msg)
    {
        string msgg2 = @"  $.Zebra_Dialog('<strong>正确</strong>" + msg + "', {"
                + @"'type':     'confirmation', 'title':    '这里是标题' });";

        string strScript = "<script language='Javascript'>" + msgg2 + "</script>";
        Page.RegisterStartupScript("alert", strScript);
    }
    private void MsgBoxError(string msg)
    {
        string msgg2 = @"  $.Zebra_Dialog('<strong>错误</strong>" + msg + "', {"
                + @"'type':     'error', 'title':    '这里是标题' });";

        string strScript = "<script language='Javascript'>" + msgg2 + "</script>";
        Page.RegisterStartupScript("alert", strScript);
    }
 

    
}