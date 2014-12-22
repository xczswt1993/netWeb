using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class menuadd : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string strfile = FileUpload1.FileName;
        string pathname = System.Web.HttpContext.Current.Server.MapPath("img");
        FileUpload1.SaveAs(pathname + "\\" + strfile);

        string sql = string.Format("insert into t_Menu (menuname,money,picturename) values( '{0}','{1}','{2}')", txtCai.Text, txtMoney.Text,strfile); 

        try
        {
            int result;
            result = SqlHelp.ExecuteNonQuery(sql);

            if (result > 0)
            {
                MsgBoxOK("添加成功");
                Response.Redirect("menu.aspx");
            }
            else
            {
                MsgBoxError("添加失败！");
            }
        }
        catch (Exception ex)
        {

            MsgBoxError("添加");
        }
    }
   

}