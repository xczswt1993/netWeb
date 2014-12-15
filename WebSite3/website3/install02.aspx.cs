using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

public partial class install02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   
        /*
         * 获取reatetable.txt物理路径，
         * 读取文件内容
         */
        string strAddress = System.Web.HttpContext.Current.Server.MapPath("createTable.txt");
        FileStream fs = new FileStream(strAddress,FileMode.Open);
        StreamReader sr = new StreamReader(fs);
        this.TextBox1.Text = sr.ReadToEnd();
        sr.Close();
        fs.Close();
    }
    protected void btnExcute_Click(object sender, EventArgs e)
    {
        /*
         * 建立数据库链接，并将txtbox的数据做为sql命令，执行。
         */
        string str = new ConfigUtil().GetAddrss();     //获取数据库源
        string sql = TextBox1.Text;
        try
        {

            SqlConnection conn = new SqlConnection(str);
            conn.Open();

            SqlCommand sqlcmd = new SqlCommand(sql, conn);

            sqlcmd.ExecuteNonQuery();
            conn.Close();
            Label1.Text = "success!";
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();
        }
    }
}