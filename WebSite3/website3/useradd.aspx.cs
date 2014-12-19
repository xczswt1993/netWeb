using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class useradd : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
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
                Response.Redirect("userlist.aspx");
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