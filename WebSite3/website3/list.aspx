<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="list" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 241px;
        }
        .style2
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td colspan="2">
                <table class="style2">
                    <tr>
                        <td>
                            首页</td>
                        <td>
                            人员管理</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="username">
                <Columns>
                <asp:BoundField DataField="username" HeaderText="用户名"/>
                <asp:BoundField DataField="userpass" HeaderText="密码" />
                <asp:BoundField DataField="regDate" HeaderText="日期"  />
                <asp:BoundField DataField="money" HeaderText="钱"  />
                <asp:BoundField DataField="age" HeaderText="年龄"  />
                </Columns>
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
