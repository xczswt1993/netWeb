/*
 * 
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

/// <summary>
///ConfigUtil 的摘要说明
/// </summary>
public class ConfigUtil
{
	public ConfigUtil()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    private string configfileName = System.Web.HttpContext.Current.Server.MapPath("address.txt");
    public void Save(string strAddress)
    {
        FileStream fs = new FileStream(configfileName,FileMode.Create);
        StreamWriter sw = new StreamWriter(fs);

        sw.WriteLine(strAddress);

        sw.Close();
        fs.Close();
        
    }
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