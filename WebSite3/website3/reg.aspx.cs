﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class reg : BasePage
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


    
}