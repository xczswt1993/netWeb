/*
 * 作者：石文涛
 * 内容 ConfigUtil()类
 *      Save()方法 
 *      getAddress()方法
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

/// <summary>
///ConfigUtil 的摘要说明
///
/// Save()方法
/// getAddress()方法
/// </summary>
public class ConfigUtil
{
	public ConfigUtil()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    /*
     * 获取address.txt内容
     * FileStream对象 用于创建文件流
     * StreamWriter对象  用于写入文件
     */
    private string configfileName = System.Web.HttpContext.Current.Server.MapPath("address.txt");
    public void Save(string strAddress)
    {
        FileStream fs = new FileStream(configfileName,FileMode.Create);
        StreamWriter sw = new StreamWriter(fs);

        sw.WriteLine(strAddress);

        sw.Close();
        fs.Close();
        
    }
    /*GetAddress()方法
     * FileStream 用于打开文件流
     * StreamReader 用于读取文件流
     */
    public string GetAddrss()
    {
        FileStream fs = new FileStream(configfileName, FileMode.Open);
        StreamReader sr = new StreamReader(fs);
        string result;
        result = sr.ReadLine();
        sr.Close();
        fs.Close();
        return result;
    }

}