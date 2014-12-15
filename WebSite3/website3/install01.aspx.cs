using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class install01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        btnNext.Visible = false;
    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        string strAdress = string.Format("Data Source={0};Initial Catalog=master;User ID=sa;Password=123456;Integrated Security=True", txtServer.Text);
        //1.sqlconnection对象
        try
        {
            SqlConnection conn = new SqlConnection(strAdress);
            conn.Open();
            string sql = string.Format("create database {0}", txtDataBase.Text);
            SqlCommand sqlcmd = new SqlCommand(sql, conn);
            sqlcmd.ExecuteNonQuery();
            conn.Close();
            lbmessage.Text = "数据库连接正常！";
        }
        catch (Exception  ex)
        {

            lbmessage.Text= ex.ToString();
        }
       // string saveAdress = string.Format("Data Source={0};Initial Catalog={1};Integrated Security=True", txtServer.Text,txtDataBase.Text);

       string saveAddress = string.Format("Data Source={0};Initial Catalog={1},User ID={2},password={3}Integrated Security=True", txtServer.Text,txtDataBase,userName.Text,userPwd.Text);
        new ConfigUtil().Save(saveAdress);
        btnNext.Visible = true;
        btnCreate.Visible = false;

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        Response.Redirect("install02.aspx");
    }
}