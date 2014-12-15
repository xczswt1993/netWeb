<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 356px;
        }
        .style3
        {
            text-align: center;
            font-weight: 700;
            font-size: large;
        }
        .style5
        {
            text-align: right;
            font-weight: 700;
            font-size: x-large;
            width: 461px;
        }
        .style6
        {
            color: #FF3300;
        }
        .style7
        {
            color: #FF0000;
        }
        .style8
        {
            text-align: left;
        }
        .style9
        {
            width: 461px;
        }
        .style10
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table align="center" class="style1">
        <tr>
            <td colspan="2" class="style10">
                用户登录<br />
                <asp:Label ID="lbmessage" runat="server" BorderStyle="Double" 
                    ForeColor="#0000CC"></asp:Label>
                <br />
                带*为必填</td>
        </tr>
        <tr>
            <td class="style5">
                用户名</td>
            <td class="style8">
                <asp:TextBox ID="txtUserName" runat="server" CssClass="style3"></asp:TextBox>
            &nbsp;<span class="style6"> *</span></td>
        </tr>
        <tr>
            <td class="style5" scope="col">
                密码</td>
            <td class="style8">
                <asp:TextBox ID="txtUserPwd" runat="server" CssClass="style3"></asp:TextBox>
            &nbsp; <span class="style7">*</span></td>
        </tr>
        <tr>
            <td class="style9" style="text-align: center">
                <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" Text="登录" 
                    BackColor="#3366FF" BorderColor="#CCFFFF" BorderStyle="Double" 
                    ForeColor="#003300" Height="79px" style="text-align: center" Width="246px" />
            </td>
            <td style="text-align: center">
                <asp:Button ID="btnCreate" runat="server" Text="注册" BackColor="#3366FF" 
                    BorderColor="#CCFFFF" BorderStyle="Double" ForeColor="Black" Height="79px" 
                    onclick="btnCreate_Click" Width="246px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
