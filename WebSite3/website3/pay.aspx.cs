using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class pay :BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
           this.Data();

          


       
    }
    public void Data()
    {
        if (Page.IsPostBack == false)
        {
            int caiID = Int32.Parse(Request.QueryString["caiID"]);
            string sql = string.Format("select * from t_Menu where id={0}", caiID);
            DataSet ds = SqlHelp.Query(sql);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count > 0)
            {
                this.lbcainame.Text = dt.Rows[0]["menuname"].ToString();
                this.lbmoney.Text = dt.Rows[0]["money"].ToString();

            }
            txtname.Text = Session["username"].ToString();
           
           
        }
    }
    protected void btnorder_Click(object sender, EventArgs e)
    {
       string  username = Session["username"].ToString();
       string sql_money = string.Format("select money from t_User where username='{0}'", username);
       Object  obj= SqlHelp.ExecuteScalar(sql_money);
      string  result =obj.ToString();
       int money =Int32.Parse( result);
        int txtmoney=Int32.Parse(lmcount.Text);
       if (money >=txtmoney)
       {
           money = money - txtmoney;
           string sql = string.Format("INSERT INTO t_Order (cainame,number,count,ordername,ordertel,orderaddress,ordertime,status) values ('{0}',{1},{2},'{3}','{4}','{5}','{6}','未签收')", lbcainame.Text, txtnumber.Text, lmcount.Text, txtname.Text, txttel.Text, txtaddress.Text, DateTime.Now.ToString());
           string sql_change = string.Format("update t_User set money={0} where username='{1}'", money, username);
           if (SqlHelp.ExecuteNonQuery(sql) > 0&&SqlHelp.ExecuteNonQuery(sql_change)>0)
           {
               MsgBoxOK("下单成功！");
              
               
           }
           else
           {
               MsgBoxError("下单失败！");
           }
       }
       else
       {
           MsgBoxError("下单失败，余额不足！");
       }

        
            
       
 
    }

    protected void btnreturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("order.aspx");
    }



    protected void txtnumber_TextChanged(object sender, EventArgs e)
    {
        int num = Int32.Parse(txtnumber.Text);
        float price = float.Parse(lbmoney.Text);
        float count = 0;
        count = price * (float)num;
        this.lmcount.Text = count.ToString();
    }

}