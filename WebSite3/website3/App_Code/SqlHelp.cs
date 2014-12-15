/*
 * 作者：石文涛
 * 内容：SqlHelp类
 * 功能：executeScalar方法实现查询数据库返回string值
 *       excutenonQuery方法实现查询数据库返回int值
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
///SqlHelp 的摘要说明
///
/// </summary>
public class SqlHelp
{
    /*
     * excuteScalar返回为string类型的数据库查询
     * SqlConnection对象，SqlCommand对象
     */
    public static  string ExecuteScalar(string sql)
    {
        try 
	    {	        
		    string strAddress = new ConfigUtil().GetAddrss();
            
            SqlConnection conn=new SqlConnection(strAddress);
            conn.Open();
            SqlCommand sqlcmd=new SqlCommand(sql,conn);
            
            string  result=(string)sqlcmd.ExecuteScalar();
            
            conn.Close();
            return result;
        
	    }
	    catch (Exception ex)
	    {

            return null;
	    }
    }
     /*
     * executeNonQuery返回为int类型的数据库查询
     * SqlConnection对象，SqlCommand对象
     */
    public static  int ExecuteNonQuery(string sql)
    {
        try
        {
            string strAddress = new ConfigUtil().GetAddrss();

            SqlConnection conn = new SqlConnection(strAddress);
            conn.Open();
            SqlCommand sqlcmd = new SqlCommand(sql, conn);

            int result = sqlcmd.ExecuteNonQuery();

            conn.Close();
            return result;

        }
        catch
        {
            return 0;
        }
    }
}