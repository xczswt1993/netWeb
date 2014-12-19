using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///BasePage 的摘要说明
/// </summary>
public class BasePage : System.Web.UI.Page
{
	public BasePage()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public void MsgBoxOK(string msg)
    {
        string msgg2 = @"  $.Zebra_Dialog('<strong>正确</strong>" + msg + "', {"
                + @"'type':     'confirmation', 'title':    '这里是标题' });";

        string strScript = "<script language='Javascript'>" + msgg2 + "</script>";
        Page.RegisterStartupScript("alert", strScript);
    }
    public void MsgBoxOK(string msg,string url)
    {
        string msgg2 = @"  $.Zebra_Dialog('<strong>正确</strong>" + msg + "', {"
                + @"'type':     'confirmation', 'title':    '这里是标题' });";

        string strScript = "<script language='Javascript'>" + msgg2 +"window.location.href='"+url+ "'</script>";
        Page.RegisterStartupScript("alert", strScript);
    }
    public void MsgBoxError(string msg)
    {
        string msgg2 = @"  $.Zebra_Dialog('<strong>错误</strong>" + msg + "', {"
                + @"'type':     'error', 'title':    '这里是标题' });";

        string strScript = "<script language='Javascript'>" + msgg2 + "</script>";
        Page.RegisterStartupScript("alert", strScript);
    }
 
}