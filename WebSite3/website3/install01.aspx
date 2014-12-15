<%@ Page Language="C#" AutoEventWireup="true" CodeFile="install01.aspx.cs" Inherits="install01" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 351px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    服务器</td>
                <td>
                    <asp:TextBox ID="txtServer" runat="server"></asp:TextBox>
                </td>
                <td>
                    数据库名称</td>
                <td>
                    <asp:TextBox ID="txtDataBase" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    用户名</td>
                <td>
                    <asp:TextBox ID="userName" runat="server"></asp:TextBox>
                </td>
                <td>
                    密码</td>
                <td>
                    <asp:TextBox ID="userPwd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lbmessage" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnCreate" runat="server" onclick="btnCreate_Click" 
                        Text="创建数据库" />
                    <asp:Button ID="btnNext" runat="server" onclick="btnNext_Click" Text="下一步" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
